BOOL sub_1D89A02FC()
{
  sub_1D8B12F20();
  sub_1D87C12C0();
  v0 = sub_1D8B164F0();

  return (v0 & 1) == 0;
}

uint64_t sub_1D89A0380()
{
  v0 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D8B15930();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D8B158D0();
  sub_1D881F764(0, &qword_1EE0E36B0);
  if (!sub_1D8B163E0())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  result = sub_1D8B159D0();
  qword_1ECAA3680 = result;
  *algn_1ECAA3688 = v4;
  return result;
}

uint64_t EventLookupItem.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventLookupItem.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventLookupItem() + 20);
  v4 = sub_1D8B131D0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventLookupItem.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventLookupItem() + 24);
  v4 = sub_1D8B131D0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventLookupItem.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventLookupItem() + 32));

  return v1;
}

uint64_t EventLookupItem.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventLookupItem() + 36));

  return v1;
}

unint64_t sub_1D89A0718(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD00000000000001ALL;
    if (a1 != 8)
    {
      v5 = 0x4965746144646E65;
    }

    if (a1 != 7)
    {
      v6 = v5;
    }

    v7 = 0x7365746F6ELL;
    if (a1 != 5)
    {
      v7 = 7107189;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701667182;
    v2 = 0x65746144646E65;
    v3 = 0x7961446C6C61;
    if (a1 != 3)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7461447472617473;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D89A085C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D89A2AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D89A0884(uint64_t a1)
{
  v2 = sub_1D89A242C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89A08C0(uint64_t a1)
{
  v2 = sub_1D89A242C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventLookupItem.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v108 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v115 = &v86 - v5;
  v116 = sub_1D8B134B0();
  v128 = *(v116 - 8);
  v6 = MEMORY[0x1EEE9AC00](v116);
  v107 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v114 = (&v86 - v8);
  v117 = sub_1D8B130F0();
  v127 = *(v117 - 8);
  v9 = MEMORY[0x1EEE9AC00](v117);
  v106 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v86 - v11;
  v121 = sub_1D8B130C0();
  v126 = *(v121 - 8);
  v12 = MEMORY[0x1EEE9AC00](v121);
  v105 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v86 - v14;
  v118 = sub_1D8B130A0();
  v125 = *(v118 - 8);
  v15 = MEMORY[0x1EEE9AC00](v118);
  v104 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v86 - v17;
  v130 = sub_1D8B130B0();
  v123 = *(v130 - 8);
  v18 = MEMORY[0x1EEE9AC00](v130);
  v103 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v119 = &v86 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v86 - v22;
  v120 = sub_1D8B13100();
  v122 = *(v120 - 8);
  v23 = MEMORY[0x1EEE9AC00](v120);
  v101 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v102 = &v86 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v109 = &v86 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v86 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v86 - v31;
  v33 = sub_1D8B13000();
  v129 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66750);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v86 - v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89A242C();
  sub_1D8B16DD0();
  v40 = v131;
  LOBYTE(v133) = 0;
  sub_1D8B16A90();
  if (v40)
  {
    return (*(v37 + 8))(v39, v36);
  }

  v100 = v32;
  v98 = v35;
  v99 = v33;
  v131 = v37;
  v42 = v130;
  v43 = type metadata accessor for EventLookupItem();
  v44 = v43[5];
  LOBYTE(v133) = 1;
  sub_1D8B131D0();
  sub_1D89A2E50(&qword_1ECA66258, MEMORY[0x1E6969530]);
  sub_1D8B16AE0();
  v97 = v44;
  v45 = v43[6];
  LOBYTE(v133) = 2;
  sub_1D8B16AE0();
  LOBYTE(v133) = 3;
  sub_1D8B16AA0();
  v46 = v132;
  if (*(v132 + v43[8] + 8))
  {
    LOBYTE(v133) = 4;
    sub_1D8B16A90();
  }

  v95 = v45;
  v96 = v39;
  v47 = v36;
  if (*(v46 + v43[9] + 8))
  {
    LOBYTE(v133) = 5;
    sub_1D8B16A90();
  }

  v48 = v100;
  sub_1D87A0E38(v46 + v43[10], v100, &qword_1ECA630C0);
  v49 = v129;
  v50 = v99;
  if ((*(v129 + 48))(v48, 1, v99) == 1)
  {
    sub_1D87A14E4(v48, &qword_1ECA630C0);
  }

  else
  {
    v51 = v98;
    (*(v49 + 32))(v98, v48, v50);
    LOBYTE(v133) = 6;
    sub_1D89A2E50(&qword_1ECA66268, MEMORY[0x1E6968FB0]);
    sub_1D8B16AE0();
    (*(v49 + 8))(v51, v50);
  }

  LOBYTE(v133) = 7;
  sub_1D8B16AA0();
  v129 = 0;
  v94 = v47;
  v52 = v123;
  v53 = *(v123 + 104);
  LODWORD(v99) = *MEMORY[0x1E6969360];
  v100 = (v123 + 104);
  v98 = v53;
  v53(v124);
  v54 = *(v125 + 104);
  v134 = *MEMORY[0x1E6969358];
  v125 += 104;
  v93 = v54;
  (v54)(v111);
  v55 = *(v126 + 104);
  v92 = *MEMORY[0x1E6969370];
  v126 += 104;
  v91 = v55;
  v55(v112);
  v56 = *(v127 + 104);
  v90 = *MEMORY[0x1E6969380];
  v127 += 104;
  v89 = v56;
  v56(v113);
  v57 = v115;
  sub_1D8B13470();
  v58 = v128;
  v59 = *(v128 + 48);
  v60 = v116;
  v88 = v128 + 48;
  v87 = v59;
  result = v59(v57, 1, v116);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v61 = *(v58 + 32);
    v128 = v58 + 32;
    v115 = v61;
    (v61)(v114, v57, v60);
    v62 = v109;
    sub_1D8B130D0();
    v63 = v119;
    v98(v119, v99, v42);
    v64 = v110;
    sub_1D8B130E0();
    v66 = *(v52 + 8);
    v65 = v52 + 8;
    v124 = v66;
    (v66)(v63, v42);
    v67 = v122 + 8;
    v68 = *(v122 + 8);
    v69 = v120;
    v68(v62, v120);
    v70 = sub_1D89A2E50(&qword_1ECA66760, MEMORY[0x1E69693A0]);
    sub_1D8B131B0();
    v71 = v69;
    v72 = v67;
    v68(v64, v71);
    v135 = 8;
    v73 = v94;
    v74 = v96;
    v75 = v129;
    sub_1D8B16A90();
    if (v75)
    {
      (*(v131 + 8))(v74, v73);
    }

    v122 = v72;
    v113 = v70;
    v76 = v115;
    v114 = v68;
    v129 = 0;
    v123 = v65;

    v98(v103, v99, v42);
    v93();
    v91(v105, v92, v121);
    v89(v106, v90, v117);
    v77 = v108;
    sub_1D8B13470();
    v78 = v116;
    result = v87(v77, 1, v116);
    if (result != 1)
    {
      v76(v107, v77, v78);
      v79 = v101;
      sub_1D8B130D0();
      v80 = v119;
      v98(v119, v99, v42);
      v81 = v102;
      sub_1D8B130E0();
      (v124)(v80, v42);
      v82 = v120;
      v83 = v114;
      v114(v79, v120);
      sub_1D8B131B0();
      v83(v81, v82);
      v135 = 9;
      v84 = v94;
      v85 = v96;
      sub_1D8B16A90();
      (*(v131 + 8))(v85, v84);
    }
  }

  __break(1u);
  return result;
}

uint64_t EventLookupItem.hash(into:)()
{
  v1 = sub_1D8B13000();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D8B15A60();
  v8 = type metadata accessor for EventLookupItem();
  sub_1D8B131D0();
  sub_1D89A2E50(&qword_1ECA66768, MEMORY[0x1E6969530]);
  sub_1D8B157A0();
  sub_1D8B157A0();
  sub_1D8B16D40();
  if (*(v0 + v8[8] + 8))
  {
    sub_1D8B16D40();
    sub_1D8B15A60();
  }

  else
  {
    sub_1D8B16D40();
  }

  if (*(v0 + v8[9] + 8))
  {
    sub_1D8B16D40();
    sub_1D8B15A60();
  }

  else
  {
    sub_1D8B16D40();
  }

  sub_1D87A0E38(v0 + v8[10], v7, &qword_1ECA630C0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D8B16D40();
    sub_1D89A2E50(&qword_1ECA64C80, MEMORY[0x1E6968FB0]);
    sub_1D8B157A0();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D8B16D40();
}

uint64_t EventLookupItem.hashValue.getter()
{
  sub_1D8B16D20();
  EventLookupItem.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D89A1C98()
{
  sub_1D8B16D20();
  EventLookupItem.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D89A1CDC()
{
  sub_1D8B16D20();
  EventLookupItem.hash(into:)();
  return sub_1D8B16D80();
}

void *sub_1D89A1D1C(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_1D89A1D3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _s22VisualIntelligenceCore15EventLookupItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D8B13000();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63608);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = type metadata accessor for EventLookupItem();
  if ((sub_1D8B13170() & 1) == 0 || (sub_1D8B13170() & 1) == 0 || *(a1 + v14[7]) != *(a2 + v14[7]))
  {
    goto LABEL_7;
  }

  v17 = v14[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (!v21 || (*v18 != *v20 || v19 != v21) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v21)
  {
    goto LABEL_7;
  }

  v22 = v14[9];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v26)
  {
    goto LABEL_7;
  }

  v27 = v14[10];
  v28 = *(v11 + 48);
  sub_1D87A0E38(a1 + v27, v13, &qword_1ECA630C0);
  v33 = v28;
  sub_1D87A0E38(a2 + v27, &v13[v28], &qword_1ECA630C0);
  v29 = *(v5 + 48);
  if (v29(v13, 1, v4) == 1)
  {
    if (v29(&v13[v33], 1, v4) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA630C0);
LABEL_30:
      v15 = *(a1 + v14[11]) ^ *(a2 + v14[11]) ^ 1;
      return v15 & 1;
    }

    goto LABEL_28;
  }

  sub_1D87A0E38(v13, v10, &qword_1ECA630C0);
  if (v29(&v13[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_28:
    sub_1D87A14E4(v13, &qword_1ECA63608);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v13[v33], v4);
  sub_1D89A2E50(&qword_1ECA63610, MEMORY[0x1E6968FB0]);
  v30 = sub_1D8B158C0();
  v31 = *(v5 + 8);
  v31(v7, v4);
  v31(v10, v4);
  sub_1D87A14E4(v13, &qword_1ECA630C0);
  if (v30)
  {
    goto LABEL_30;
  }

LABEL_7:
  v15 = 0;
  return v15 & 1;
}

unint64_t sub_1D89A21C4()
{
  result = qword_1ECA66740;
  if (!qword_1ECA66740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66740);
  }

  return result;
}

uint64_t type metadata accessor for EventLookupItem()
{
  result = qword_1EE0E74E0;
  if (!qword_1EE0E74E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D89A2264(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D8B15AA0();

    return sub_1D8B15BB0();
  }

  return result;
}

uint64_t sub_1D89A2300(uint64_t a1)
{
  v2 = type metadata accessor for TextDetectorResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D89A235C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89A23C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D89A242C()
{
  result = qword_1ECA66758;
  if (!qword_1ECA66758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66758);
  }

  return result;
}

void sub_1D89A2520()
{
  sub_1D8B131D0();
  if (v0 <= 0x3F)
  {
    sub_1D8893374();
    if (v1 <= 0x3F)
    {
      sub_1D89A25DC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D89A25DC()
{
  if (!qword_1EE0E98B8)
  {
    sub_1D8B13000();
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E98B8);
    }
  }
}

unint64_t sub_1D89A2648()
{
  result = qword_1ECA66778;
  if (!qword_1ECA66778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66778);
  }

  return result;
}

unint64_t sub_1D89A26A0()
{
  result = qword_1ECA66780;
  if (!qword_1ECA66780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66780);
  }

  return result;
}

unint64_t sub_1D89A26F8()
{
  result = qword_1ECA66788;
  if (!qword_1ECA66788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66788);
  }

  return result;
}

uint64_t sub_1D89A274C()
{
  v0 = sub_1D8B131D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24[-v5];
  sub_1D8B131C0();
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 processIdentifier];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB80;
  sub_1D8B15400();
  sub_1D8B153F0();
  v10 = sub_1D8B15940();

  *(inited + 32) = v10;
  v11 = MEMORY[0x1E69E72F0];
  *(inited + 64) = MEMORY[0x1E69E72F0];
  *(inited + 40) = v8;
  sub_1D8B153E0();
  v12 = sub_1D8B15940();

  *(inited + 72) = v12;
  *(inited + 104) = v11;
  *(inited + 80) = v8;
  sub_1D893E930(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D30);
  swift_arrayDestroy();
  v13 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  v14 = *MEMORY[0x1E69D9408];
  type metadata accessor for TCTextCompositionAssistantOptionKey(0);
  sub_1D89A2E50(&qword_1ECA62610, type metadata accessor for TCTextCompositionAssistantOptionKey);
  v15 = sub_1D8B15710();

  [v13 requestPrewarmingForFeature:v14 options:v15];

  sub_1D8B131C0();
  sub_1D8B13090();
  v17 = v16;
  v18 = *(v1 + 8);
  v18(v4, v0);
  if (qword_1EE0E4390 != -1)
  {
    swift_once();
  }

  v19 = sub_1D8B151E0();
  __swift_project_value_buffer(v19, qword_1EE0E4398);
  v20 = sub_1D8B151C0();
  v21 = sub_1D8B16200();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v17;
    _os_log_impl(&dword_1D8783000, v20, v21, "EventLLMLookupUtility.preheat took %f seconds", v22, 0xCu);
    MEMORY[0x1DA721330](v22, -1, -1);
  }

  return (v18)(v6, v0);
}

uint64_t sub_1D89A2AE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7961446C6C61 && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D8B45640 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B45660 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4965746144646E65 && a2 == 0xEE00313036384F53)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D89A2E50(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D89A2E98()
{
  result = [objc_opt_self() defaultManager];
  qword_1ECAA3690 = result;
  return result;
}

uint64_t static FileUtility.createDirectory(for:)(uint64_t a1)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8B13000();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  sub_1D8B12F80();
  v34 = 1;
  if (qword_1ECA62110 != -1)
  {
    swift_once();
  }

  v9 = qword_1ECAA3690;
  sub_1D8B12FC0();
  v10 = sub_1D8B15940();

  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v34];

  if (v11)
  {
    return (*(v3 + 8))(v8, v2);
  }

  sub_1D8B12FC0();
  v13 = sub_1D8B15940();

  v35[0] = 0;
  v14 = [v9 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:v35];

  if (v14)
  {
    v15 = *(v3 + 8);
    v16 = v35[0];
    return v15(v8, v2);
  }

  else
  {
    v17 = v35[0];
    v18 = sub_1D8B12EB0();

    swift_willThrow();
    if (qword_1ECA62158 != -1)
    {
      swift_once();
    }

    v19 = sub_1D8B151E0();
    __swift_project_value_buffer(v19, qword_1ECA669F0);
    (*(v3 + 16))(v6, a1, v2);
    v20 = sub_1D8B151C0();
    v21 = sub_1D8B16210();
    v33 = v20;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v18;
      v24 = v23;
      v35[0] = v23;
      *v22 = 136315138;
      v25 = sub_1D8B12FC0();
      v27 = v26;
      v28 = *(v3 + 8);
      v28(v6, v2);
      v29 = sub_1D89AC714(v25, v27, v35);

      *(v22 + 4) = v29;
      v30 = v33;
      _os_log_impl(&dword_1D8783000, v33, v21, "Error creating directory at path %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1DA721330](v24, -1, -1);
      MEMORY[0x1DA721330](v22, -1, -1);

      return (v28)(v8, v2);
    }

    else
    {

      v31 = *(v3 + 8);
      v31(v6, v2);
      return (v31)(v8, v2);
    }
  }
}

id static FileUtility.createFile(url:contents:)()
{
  v0 = sub_1D8B159C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECA62110 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECAA3690;
  sub_1D8B12FC0();
  v5 = sub_1D8B15940();

  sub_1D8B159B0();
  v6 = sub_1D8B15980();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1D8B13030();
    sub_1D87C12A4(v6, v8);
  }

  v10 = [v4 createFileAtPath:v5 contents:v9 attributes:0];

  return v10;
}

void static FileUtility.deleteFile(url:)(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8B13000();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECA62110 != -1)
  {
    swift_once();
  }

  v6 = qword_1ECAA3690;
  sub_1D8B12FC0();
  v7 = sub_1D8B15940();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    sub_1D8B12FC0();
    v9 = sub_1D8B15940();

    v25[0] = 0;
    v10 = [v6 removeItemAtPath:v9 error:v25];

    v11 = v25[0];
    if (v10)
    {

      v12 = v11;
    }

    else
    {
      v24 = v25[0];
      v13 = v25[0];
      v14 = sub_1D8B12EB0();

      swift_willThrow();
      if (qword_1ECA62158 != -1)
      {
        swift_once();
      }

      v15 = sub_1D8B151E0();
      __swift_project_value_buffer(v15, qword_1ECA669F0);
      (*(v3 + 16))(v5, a1, v2);
      v16 = sub_1D8B151C0();
      v17 = sub_1D8B16210();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25[0] = v19;
        *v18 = 136315138;
        v20 = sub_1D8B12FC0();
        v22 = v21;
        (*(v3 + 8))(v5, v2);
        v23 = sub_1D89AC714(v20, v22, v25);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1D8783000, v16, v17, "Error removing file at %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1DA721330](v19, -1, -1);
        MEMORY[0x1DA721330](v18, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }
    }
  }
}

uint64_t FileWriter.prefix.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FileWriter.__allocating_init(prefix:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FileWriter.init(prefix:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FileWriter.writeImageToUrl(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a2;
  v59 = a3;
  v55 = a1;
  v6 = sub_1D8B13000();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v54 = v7[7];
  v54(a4, 1, 1, v6);
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 temporaryDirectory];

  sub_1D8B12FB0();
  v17 = *(v4 + 24);
  v58[0] = *(v4 + 16);
  v58[1] = v17;

  MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
  v18 = sub_1D8B14BC0();
  MEMORY[0x1DA71EFA0](v18);

  sub_1D8B12F60();

  v19 = v7[1];
  v20 = v12;
  v21 = v6;
  v59 = v7 + 1;
  v19(v20, v6);
  v22 = v57;
  sub_1D8B13070();
  if (v22)
  {
    if (qword_1EE0E43E0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D8B151E0();
    __swift_project_value_buffer(v23, qword_1EE0E43E8);
    v24 = v22;
    v25 = sub_1D8B151C0();
    v26 = sub_1D8B16210();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v19;
      v28 = swift_slowAlloc();
      v29 = v14;
      v30 = swift_slowAlloc();
      *v28 = 138412290;
      v31 = v22;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_1D8783000, v25, v26, "Failed to write file %@", v28, 0xCu);
      sub_1D87A14E4(v30, &qword_1ECA63128);
      v33 = v30;
      v14 = v29;
      MEMORY[0x1DA721330](v33, -1, -1);
      v34 = v28;
      v19 = v27;
      MEMORY[0x1DA721330](v34, -1, -1);
    }

    swift_willThrow();
    v19(v14, v21);
    return sub_1D87A14E4(a4, &qword_1ECA630C0);
  }

  else
  {
    v36 = v53;
    v57 = v19;
    sub_1D87A14E4(a4, &qword_1ECA630C0);
    v37 = v7[2];
    v37(a4, v14, v21);
    v54(a4, 0, 1, v21);
    if (qword_1EE0E43E0 != -1)
    {
      swift_once();
    }

    v38 = sub_1D8B151E0();
    __swift_project_value_buffer(v38, qword_1EE0E43E8);
    v39 = v36;
    v37(v36, v14, v21);
    v40 = sub_1D8B151C0();
    v41 = v14;
    v42 = sub_1D8B161F0();
    if (os_log_type_enabled(v40, v42))
    {
      v43 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58[0] = v55;
      *v43 = 136315138;
      sub_1D888F1C0();
      v44 = sub_1D8B16B50();
      v56 = v41;
      v45 = v21;
      v47 = v46;
      v48 = v57;
      v57(v39, v45);
      v49 = sub_1D89AC714(v44, v47, v58);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_1D8783000, v40, v42, "Wrote file to path %s", v43, 0xCu);
      v50 = v55;
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1DA721330](v50, -1, -1);
      MEMORY[0x1DA721330](v43, -1, -1);

      return v48(v56, v45);
    }

    else
    {

      v51 = v57;
      v57(v36, v21);
      return v51(v41, v21);
    }
  }
}

uint64_t FileWriter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D89A3EA4()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1D89A3EFC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1D89A3F5C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1D89A405C()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D89A4170()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t GreymatterAvailability.isAvailable(_:languageOption:)(unsigned __int8 *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40[-v6];
  v8 = sub_1D8B13FE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40[-v13];
  v15 = *a1;
  v16 = *(v2 + 8);
  v17 = *(v2 + 10);
  v42 = *v2;
  v43 = v16;
  v44 = v17;
  v41 = v15;
  GreymatterAvailability.availability(_:languageOption:)(&v40[-v13], v7, &v41, a2);
  sub_1D87A14E4(v7, &qword_1ECA665E8);
  (*(v9 + 104))(v12, *MEMORY[0x1E69A11A0], v8);
  v18 = sub_1D8B13FD0();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (qword_1EE0E9938 != -1)
  {
    swift_once();
  }

  v20 = sub_1D8B151E0();
  __swift_project_value_buffer(v20, qword_1EE0E9940);
  v21 = sub_1D8B151C0();
  v22 = sub_1D8B16200();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v42 = v24;
    v25 = "";
    *v23 = 136315394;
    v26 = "sualIntelligenceCamera";
    v27 = 0xD00000000000002ELL;
    v28 = "IntelligenceCamera.ImageSearch";
    v29 = 0xD000000000000024;
    if (v15 != 4)
    {
      v29 = 0xD00000000000002CLL;
      v28 = "gs.AppleIntelligence";
    }

    if (v15 != 3)
    {
      v27 = v29;
      v26 = v28;
    }

    v30 = "textComposition.OpenEndedSchema";
    v31 = 0xD00000000000003FLL;
    if (v15 != 1)
    {
      v31 = 0xD000000000000026;
      v30 = "ucturedExtraction.addToCalendar";
    }

    if (v15)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0xD00000000000001FLL;
    }

    if (v15)
    {
      v25 = v30;
    }

    if (v15 <= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = v27;
    }

    if (v15 <= 2)
    {
      v34 = v25;
    }

    else
    {
      v34 = v26;
    }

    v35 = sub_1D89AC714(v33, v34 | 0x8000000000000000, &v42);

    *(v23 + 4) = v35;
    *(v23 + 12) = 2080;
    if (v18)
    {
      v36 = 7562617;
    }

    else
    {
      v36 = 28526;
    }

    if (v18)
    {
      v37 = 0xE300000000000000;
    }

    else
    {
      v37 = 0xE200000000000000;
    }

    v38 = sub_1D89AC714(v36, v37, &v42);

    *(v23 + 14) = v38;
    _os_log_impl(&dword_1D8783000, v21, v22, "Use case identifier %s is available: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v24, -1, -1);
    MEMORY[0x1DA721330](v23, -1, -1);
  }

  return v18 & 1;
}

uint64_t sub_1D89A4644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D8B16D20();
  sub_1D8B15A60();
  v6 = sub_1D8B16D80();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D8B16BA0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D89A473C(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FA0);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v31 - v3;
  v5 = type metadata accessor for BuiltInAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v39 = a2;
  if (*(a2 + 16))
  {
    sub_1D8B16D20();
    sub_1D87A0E38(v38, v17, &qword_1ECA63188);
    v20 = *(v6 + 48);
    v19 = v6 + 48;
    v18 = v20;
    if (v20(v17, 1, v5) == 1)
    {
      sub_1D8B16D40();
    }

    else
    {
      v21 = v31;
      sub_1D89AD554(v17, v31, type metadata accessor for BuiltInAction);
      sub_1D8B16D40();
      BuiltInAction.hash(into:)(v40);
      sub_1D89ACCEC(v21, type metadata accessor for BuiltInAction);
    }

    v22 = sub_1D8B16D80();
    v23 = -1 << *(v39 + 32);
    v24 = v22 & ~v23;
    v36 = v39 + 56;
    if ((*(v39 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v33 = ~v23;
      v34 = *(v9 + 72);
      v35 = v19;
      while (1)
      {
        sub_1D87A0E38(*(v39 + 48) + v34 * v24, v15, &qword_1ECA63188);
        v25 = *(v37 + 48);
        sub_1D87A0E38(v15, v4, &qword_1ECA63188);
        sub_1D87A0E38(v38, &v4[v25], &qword_1ECA63188);
        if (v18(v4, 1, v5) == 1)
        {
          break;
        }

        sub_1D87A0E38(v4, v12, &qword_1ECA63188);
        if (v18(&v4[v25], 1, v5) == 1)
        {
          sub_1D87A14E4(v15, &qword_1ECA63188);
          sub_1D89ACCEC(v12, type metadata accessor for BuiltInAction);
LABEL_8:
          sub_1D87A14E4(v4, &qword_1ECA63FA0);
          goto LABEL_9;
        }

        v26 = v18;
        v27 = v12;
        v28 = v31;
        sub_1D89AD554(&v4[v25], v31, type metadata accessor for BuiltInAction);
        v32 = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v27, v28);
        v29 = v28;
        v12 = v27;
        v18 = v26;
        sub_1D89ACCEC(v29, type metadata accessor for BuiltInAction);
        sub_1D87A14E4(v15, &qword_1ECA63188);
        sub_1D89ACCEC(v12, type metadata accessor for BuiltInAction);
        sub_1D87A14E4(v4, &qword_1ECA63188);
        if (v32)
        {
          return 1;
        }

LABEL_9:
        v24 = (v24 + 1) & v33;
        if (((*(v36 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          return 0;
        }
      }

      sub_1D87A14E4(v15, &qword_1ECA63188);
      if (v18(&v4[v25], 1, v5) == 1)
      {
        sub_1D87A14E4(v4, &qword_1ECA63188);
        return 1;
      }

      goto LABEL_8;
    }
  }

  return 0;
}

uint64_t sub_1D89A4C44(uint64_t a1, uint64_t a2)
{
  v48 = sub_1D8B13240();
  v4 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for CVBundle.BundleType(0);
  v7 = MEMORY[0x1EEE9AC00](v56);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CVBundle(0);
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    sub_1D8B16D20();
    sub_1D891CA54(v58);
    v40 = *(a1 + v14[5]);
    sub_1D87CF97C(v58, v40);
    v39 = *(a1 + v14[6]);
    sub_1D87CF97C(v58, v39);
    v41 = v14;
    v38 = *(a1 + v14[7]);
    sub_1D893983C(v58, v38);
    v17 = sub_1D8B16D80();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    v54 = a2 + 56;
    if ((*(a2 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v53 = a1;
      v50 = ~v18;
      v51 = *(v15 + 72);
      v47 = (v4 + 8);
      v42 = (v4 + 32);
      v20 = v46;
      v52 = a2;
      v43 = v11;
      do
      {
        sub_1D89AD3CC(*(a2 + 48) + v51 * v19, v20, type metadata accessor for CVBundle);
        v21 = *(v55 + 48);
        sub_1D89AD3CC(v20, v13, type metadata accessor for CVBundle.BundleType);
        sub_1D89AD3CC(v53, &v13[v21], type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D89AD3CC(v13, v9, type metadata accessor for CVBundle.BundleType);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            (*v47)(v9, v48);
            goto LABEL_5;
          }

          v22 = v44;
          v23 = v48;
          (*v42)(v44, &v13[v21], v48);
          v24 = sub_1D8B13200();
          v25 = *v47;
          v26 = v22;
          v20 = v46;
          (*v47)(v26, v23);
          v27 = v23;
          v11 = v43;
          v25(v9, v27);
          a2 = v52;
          if ((v24 & 1) == 0)
          {
            sub_1D89ACCEC(v13, type metadata accessor for CVBundle.BundleType);
            goto LABEL_7;
          }
        }

        else
        {
          sub_1D89AD3CC(v13, v11, type metadata accessor for CVBundle.BundleType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1D89ACCEC(v11, type metadata accessor for CVTrackSnapshot);
LABEL_5:
            sub_1D87A14E4(v13, &qword_1ECA63DA8);
            goto LABEL_6;
          }

          sub_1D89AD554(&v13[v21], v49, type metadata accessor for CVTrackSnapshot);
          if ((sub_1D8B13200() & 1) == 0 || (v28 = v45[5], v29 = *&v11[v28], v57 = *(v49 + v28), *&v58[0] = v29, , , v30 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v58, &v57), , , (v30 & 1) == 0) || (v31 = v45[6], v32 = *&v11[v31], v57 = *(v49 + v31), *&v58[0] = v32, , , v33 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v58, &v57), , , (v33 & 1) == 0) || v11[v45[7]] != *(v49 + v45[7]) || *&v11[v45[8]] != *(v49 + v45[8]) || *&v11[v45[9]] != *(v49 + v45[9]))
          {
            sub_1D89ACCEC(v49, type metadata accessor for CVTrackSnapshot);
LABEL_26:
            sub_1D89ACCEC(v11, type metadata accessor for CVTrackSnapshot);
            sub_1D89ACCEC(v13, type metadata accessor for CVBundle.BundleType);
LABEL_6:
            a2 = v52;
            goto LABEL_7;
          }

          v34 = v45[10];
          v35 = v11[v34];
          v36 = *(v49 + v34);
          sub_1D89ACCEC(v49, type metadata accessor for CVTrackSnapshot);
          if (v35 != v36)
          {
            goto LABEL_26;
          }

          sub_1D89ACCEC(v11, type metadata accessor for CVTrackSnapshot);
          a2 = v52;
        }

        sub_1D89ACCEC(v13, type metadata accessor for CVBundle.BundleType);
        if (sub_1D88E4444(*(v20 + v41[5]), v40) & 1) != 0 && (sub_1D88E4444(*(v20 + v41[6]), v39) & 1) != 0 && (sub_1D8854A60(*(v20 + v41[7]), v38))
        {
          sub_1D89ACCEC(v20, type metadata accessor for CVBundle);
          return 1;
        }

LABEL_7:
        sub_1D89ACCEC(v20, type metadata accessor for CVBundle);
        v19 = (v19 + 1) & v50;
      }

      while (((*(v54 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_1D89A5450(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8B13F70();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D88F0C68(&qword_1ECA667E8, MEMORY[0x1E69A0F90]), v7 = sub_1D8B15790(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D88F0C68(&qword_1ECA667F0, MEMORY[0x1E69A0F90]);
      v15 = sub_1D8B158C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D89A5668(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8B13FA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D88F0C68(&qword_1ECA649A0, MEMORY[0x1E69A1168]), v7 = sub_1D8B15790(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D88F0C68(&qword_1ECA67E10, MEMORY[0x1E69A1168]);
      v15 = sub_1D8B158C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D89A5880(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8B13240();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D88F0C68(&qword_1EE0E98A0, MEMORY[0x1E69695A8]), v7 = sub_1D8B15790(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D88F0C68(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
      v15 = sub_1D8B158C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_1D89A5A98(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v3);
  v4 = sub_1D8B16D80();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D89A5B64(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1D8B16670(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      sub_1D881F64C(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x1DA71FB60](v10, a1);
      sub_1D881F6A8(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D89A5C3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8B14510();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D88F0C68(&qword_1ECA667D8, MEMORY[0x1E69C9BC8]), v7 = sub_1D8B15790(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D88F0C68(&unk_1ECA67DD0, MEMORY[0x1E69C9BC8]);
      v15 = sub_1D8B158C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D89A5E54(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8B13AD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D88F0C68(&qword_1ECA63170, MEMORY[0x1E69E03D8]), v7 = sub_1D8B15790(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D88F0C68(&qword_1ECA64FD0, MEMORY[0x1E69E03D8]);
      v15 = sub_1D8B158C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D89A606C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1D8B16650();
  }

  else if (*(a2 + 16) && (sub_1D8B16D20(), sub_1D8B13240(), sub_1D88F0C68(&qword_1EE0E98A0, MEMORY[0x1E69695A8]), sub_1D8B157A0(), v4 = sub_1D8B16D80(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {

      v3 = sub_1D8B13200();

      if (v3)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t static GreymatterAvailability.preheat()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1D8B15EA0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D8891CA0(0, 0, v2, &unk_1D8B3F610, v4);
}

unint64_t GreymatterAvailability.UseCaseIdentifier.rawValue.getter()
{
  v1 = 0xD00000000000001FLL;
  v2 = *v0;
  v3 = 0xD00000000000002ELL;
  v4 = 0xD000000000000024;
  if (v2 != 4)
  {
    v4 = 0xD00000000000002CLL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000003FLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000026;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t GreymatterAvailability.availability(_:languageOption:)(char *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v67 = a1;
  v68 = a2;
  v7 = sub_1D8B14060();
  v69 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v60 - v12;
  v65 = sub_1D8B13FE0();
  v13 = *(v65 - 8);
  v14 = MEMORY[0x1EEE9AC00](v65);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v60 - v17;
  v18 = type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a3;
  v25 = *v5;
  if (qword_1EE0E9C20 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v21, qword_1EE0E9C28);
  sub_1D89AD3CC(v26, v23, type metadata accessor for LoggingSignposter);
  type metadata accessor for LoggingSignposter.AutoInterval();
  inited = swift_initStackObject();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("GreymatterAvailability.availability", 35, 2u, 1, 0, (inited + 16));
  sub_1D89ACCEC(v23, type metadata accessor for LoggingSignposter);
  v28 = *(v18 + 20);
  v29 = *(v69 + 16);
  v63 = v7;
  v29(&v20[v28], v70, v7);
  *v20 = v24;
  if (*(v25 + 16) && (sub_1D87EF8B0(v20), (v30 & 1) != 0))
  {

    sub_1D89AA9B0(v16);

    v31 = *(v13 + 32);
    v33 = v64;
    v32 = v65;
    v31(v64, v16, v65);
    if (*(v25 + 16) && (sub_1D87EF8B0(v20), (v34 & 1) != 0))
    {

      v35 = v66;
      sub_1D89AADA8(v66);

      sub_1D89ACCEC(v20, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    }

    else
    {
      sub_1D89ACCEC(v20, type metadata accessor for GreymatterAvailability.AvailabilityKey);

      v35 = v66;
      (*(v13 + 56))(v66, 1, 1, v32);
    }

    v31(v67, v33, v32);
    return sub_1D881F6FC(v35, v68, &qword_1ECA665E8);
  }

  else
  {
    LODWORD(v68) = v24;
    if (qword_1EE0E9938 != -1)
    {
      swift_once();
    }

    v37 = sub_1D8B151E0();
    __swift_project_value_buffer(v37, qword_1EE0E9940);
    v29(v61, v70, v63);
    v38 = sub_1D8B151C0();
    v39 = sub_1D8B16210();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v72[0] = v41;
      v42 = "";
      v43 = 0xD00000000000001FLL;
      *v40 = 136315394;
      v44 = "sualIntelligenceCamera";
      v45 = 0xD00000000000002ELL;
      v46 = "IntelligenceCamera.ImageSearch";
      v47 = 0xD000000000000024;
      if (v68 != 4)
      {
        v47 = 0xD00000000000002CLL;
        v46 = "gs.AppleIntelligence";
      }

      if (v68 != 3)
      {
        v45 = v47;
        v44 = v46;
      }

      v48 = "textComposition.OpenEndedSchema";
      v49 = 0xD00000000000003FLL;
      if (v68 != 1)
      {
        v49 = 0xD000000000000026;
        v48 = "ucturedExtraction.addToCalendar";
      }

      if (v68)
      {
        v43 = v49;
        v42 = v48;
      }

      if (v68 <= 2)
      {
        v50 = v43;
      }

      else
      {
        v50 = v45;
      }

      if (v68 <= 2)
      {
        v51 = v42;
      }

      else
      {
        v51 = v44;
      }

      v52 = sub_1D89AC714(v50, v51 | 0x8000000000000000, v72);

      *(v40 + 4) = v52;
      *(v40 + 12) = 2080;
      v53 = v61;
      v54 = v63;
      v29(v62, v61, v63);
      v55 = sub_1D8B159E0();
      v57 = v56;
      (*(v69 + 8))(v53, v54);
      v58 = sub_1D89AC714(v55, v57, v72);

      *(v40 + 14) = v58;
      _os_log_impl(&dword_1D8783000, v38, v39, "availability must be predetermined for all usecases/languages. (useCaseIdentifier: %s, languageOption: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v41, -1, -1);
      MEMORY[0x1DA721330](v40, -1, -1);
    }

    else
    {

      (*(v69 + 8))(v61, v63);
    }

    v72[0] = 0;
    v72[1] = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000053, 0x80000001D8B45730);
    v71 = v68;
    sub_1D8B168A0();
    MEMORY[0x1DA71EFA0](0xD000000000000012, 0x80000001D8B45790);
    v29(v62, v70, v63);
    v59 = sub_1D8B159E0();
    MEMORY[0x1DA71EFA0](v59);

    result = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

uint64_t GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.displayPriority.getter()
{
  v1 = v0;
  v2 = sub_1D8B13FA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69A1078] || v6 == *MEMORY[0x1E69A1108] || v6 == *MEMORY[0x1E69A1120] || v6 == *MEMORY[0x1E69A1090] || v6 == *MEMORY[0x1E69A1088] || v6 == *MEMORY[0x1E69A1100] || v6 == *MEMORY[0x1E69A10A0])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x1E69A10E8])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x1E69A1008] || v6 == *MEMORY[0x1E69A1068])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x1E69A0FD8])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x1E69A1010])
  {
    return 3;
  }

  v13 = 2;
  if (v6 != *MEMORY[0x1E69A1058] && v6 != *MEMORY[0x1E69A10C8] && v6 != *MEMORY[0x1E69A1040])
  {
    if (v6 == *MEMORY[0x1E69A1060])
    {
      return 1;
    }

    v13 = 0;
    if (v6 != *MEMORY[0x1E69A1110] && v6 != *MEMORY[0x1E69A0FE0] && v6 != *MEMORY[0x1E69A10F0] && v6 != *MEMORY[0x1E69A1160])
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return v13;
}

uint64_t GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.displayPriority.getter()
{
  v1 = v0;
  v2 = sub_1D8B13F70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69A0F38] || v6 == *MEMORY[0x1E69A0F60] || v6 == *MEMORY[0x1E69A0F28])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x1E69A0F40] || v6 == *MEMORY[0x1E69A0F20])
  {
    return 1;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

VisualIntelligenceCore::GreymatterAvailability::UseCaseIdentifier_optional __swiftcall GreymatterAvailability.UseCaseIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D89A6FF8()
{
  sub_1D8B15A60();
}

void sub_1D89A70E8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = *v1;
  v4 = "";
  v5 = "sualIntelligenceCamera";
  v6 = 0xD00000000000002ELL;
  v7 = "IntelligenceCamera.ImageSearch";
  v8 = 0xD000000000000024;
  if (v3 != 4)
  {
    v8 = 0xD00000000000002CLL;
    v7 = "gs.AppleIntelligence";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "textComposition.OpenEndedSchema";
  v10 = 0xD00000000000003FLL;
  if (v3 != 1)
  {
    v10 = 0xD000000000000026;
    v9 = "ucturedExtraction.addToCalendar";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

uint64_t sub_1D89A7264@<X0>(void *a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v44 - v2;
  v52 = type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  v49 = *(v52 - 8);
  v4 = MEMORY[0x1EEE9AC00](v52);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - v10;
  v12 = sub_1D8B14060();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66808);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 104))(v17 + v16, *MEMORY[0x1E69A12A0], v12);
  v46 = v17;
  v47 = v13;
  v18 = *(v13 + 16);
  v45 = v16;
  v53 = v15;
  v54 = v12;
  v50 = v18;
  v51 = v13 + 16;
  v18(v15, (v17 + v16), v12);
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v21 = byte_1F54255F8[v19 + 32];
    v50(&v11[*(v52 + 20)], v53, v54);
    *v11 = v21;
    sub_1D89AD3CC(v11, v9, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    sub_1D89AD3CC(v11, v6, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    type metadata accessor for GreymatterAvailability.AvailabilityEntry(0);
    v22 = swift_allocObject();
    v23 = (v22 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_cache);
    v24 = type metadata accessor for GreymatterAvailability.AvailabilityState(0);
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    *v23 = 0;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C8) + 28);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66810);
    bzero(v23 + v25, *(*(v26 - 8) + 64));
    sub_1D881F6FC(v3, v23 + v25, &qword_1ECA667C0);
    sub_1D89AD554(v6, v22 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_availabilityKey, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v20;
    v29 = sub_1D87EF8B0(v9);
    v30 = v20[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v20[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v55;
        if (v28)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_1D8966FC8();
        v20 = v55;
        if (v33)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      sub_1D896D060(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_1D87EF8B0(v9);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_18;
      }

      v29 = v34;
      v20 = v55;
      if (v33)
      {
LABEL_2:
        *(v20[7] + 8 * v29) = v22;

        sub_1D89ACCEC(v9, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        sub_1D89ACCEC(v11, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        goto LABEL_3;
      }
    }

    v20[(v29 >> 6) + 8] |= 1 << v29;
    sub_1D89AD3CC(v9, v20[6] + *(v49 + 72) * v29, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    *(v20[7] + 8 * v29) = v22;
    sub_1D89ACCEC(v9, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    sub_1D89ACCEC(v11, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    v36 = v20[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_17;
    }

    v20[2] = v38;
LABEL_3:
    if (++v19 == 6)
    {
      v39 = *(v47 + 8);
      v40 = v54;
      v39(v53, v54);
      v41 = v46;
      swift_setDeallocating();
      v39((v41 + v45), v40);
      result = swift_deallocClassInstance();
      v43 = v48;
      *v48 = v20;
      *(v43 + 4) = 514;
      *(v43 + 10) = 2;
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t static GreymatterAvailability.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE0E9958 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = word_1EE0E9968;
  v3 = byte_1EE0E996A;
  *a1 = qword_1EE0E9960;
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t sub_1D89A78B8()
{
  if (qword_1EE0E9958 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0E9960;
  v2 = word_1EE0E9968;
  v3 = byte_1EE0E996A;
  v4 = type metadata accessor for GreymatterAvailability.AvailabilityState(0);
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 26) = v3;
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1D89A7A00;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v6, v4, v7, 0, 0, &unk_1D8B2FE28, v5, v4);
}

uint64_t sub_1D89A7A00()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89A7B18, 0, 0);
}

uint64_t sub_1D89A7B2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 184) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C0);
  *(v4 + 88) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66800);
  *(v4 + 96) = v5;
  *(v4 + 104) = *(v5 - 8);
  *(v4 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v6 = *(type metadata accessor for GreymatterAvailability.AvailabilityKey(0) - 8);
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 + 64);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89A7CE4, 0, 0);
}

uint64_t sub_1D89A7CE4()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v35 = *(v0 + 136);
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v37 = *(v0 + 80);

  v13 = 0;
  v36 = v3;
  v34 = v8;
  while (v7)
  {
LABEL_11:
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v19 = *(v0 + 128);
    v40 = *(v0 + 120);
    v38 = *(v0 + 184);
    v39 = *(v0 + 80);
    sub_1D89AD3CC(*(v37 + 48) + *(v35 + 72) * (__clz(__rbit64(v7)) | (v13 << 6)), v17, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    v20 = sub_1D8B15EA0();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v19, 1, 1, v20);
    sub_1D89AD554(v17, v18, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    v22 = (*(v35 + 80) + 43) & ~*(v35 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v39;
    *(v23 + 40) = v38;
    *(v23 + 42) = BYTE2(v38);
    v24 = v18;
    v25 = v21;
    sub_1D89AD554(v24, v23 + v22, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    sub_1D87A0E38(v19, v40, &unk_1ECA675E0);
    LODWORD(v21) = (*(v21 + 48))(v40, 1, v20);

    v26 = *(v0 + 120);
    if (v21 == 1)
    {
      sub_1D87A14E4(*(v0 + 120), &unk_1ECA675E0);
    }

    else
    {
      sub_1D8B15E90();
      (*(v25 + 8))(v26, v20);
    }

    if (*(v23 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = sub_1D8B15E00();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = **(v0 + 72);
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_1D8B2FE40;
    *(v31 + 24) = v23;
    type metadata accessor for GreymatterAvailability.AvailabilityState(0);

    if (v29 | v27)
    {
      v14 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v27;
      *(v0 + 40) = v29;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + 128);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v14;
    *(v0 + 64) = v30;
    swift_task_create();

    v9 = sub_1D87A14E4(v15, &unk_1ECA675E0);
    v3 = v36;
    v8 = v34;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8A8](v9, v10, v11, v12);
    }

    if (v16 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v16);
    ++v13;
    if (v7)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  *(v0 + 168) = type metadata accessor for GreymatterAvailability.AvailabilityState(0);
  sub_1D8B15E30();
  v32 = swift_task_alloc();
  *(v0 + 176) = v32;
  *v32 = v0;
  v32[1] = sub_1D89A8170;
  v9 = *(v0 + 88);
  v12 = *(v0 + 96);
  v10 = 0;
  v11 = 0;

  return MEMORY[0x1EEE6D8A8](v9, v10, v11, v12);
}

uint64_t sub_1D89A8170()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89A826C, 0, 0);
}

uint64_t sub_1D89A826C()
{
  v1 = v0[11];
  if ((*(*(v0[21] - 8) + 48))(v1, 1) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_1D87A14E4(v1, &qword_1ECA667C0);
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_1D89A8170;
    v5 = v0[11];
    v6 = v0[12];

    return MEMORY[0x1EEE6D8A8](v5, 0, 0, v6);
  }
}

uint64_t sub_1D89A8404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a4;
  v6[11] = a6;
  v6[9] = a1;
  v6[12] = type metadata accessor for LoggingSignposter(0);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89A849C, 0, 0);
}

uint64_t sub_1D89A849C()
{
  if (*(*(v1 + 80) + 16))
  {
    v2 = sub_1D87EF8B0(*(v1 + 88));
    if (v3)
    {
      v0 = *(*(*(v1 + 80) + 56) + 8 * v2);
      v4 = qword_1EE0E9C20;

      if (v4 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_4:
  v5 = *(v1 + 104);
  v6 = *(v1 + 72);
  v7 = __swift_project_value_buffer(*(v1 + 96), qword_1EE0E9C28);
  sub_1D89AD3CC(v7, v5, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("GreymatterAvailability.AvailabilityEntry.preheat", 48, 2u, 1, 0, (v1 + 32));
  sub_1D89ACCEC(v5, type metadata accessor for LoggingSignposter);
  v8 = (v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_cache);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_cache));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C8);
  sub_1D89A8AEC(v8 + *(v9 + 28), v0, v6);
  os_unfair_lock_unlock(v8);

  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v10);
  (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v1 + 32);

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_1D89A8698()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  sub_1D8B14060();
  sub_1D88F0C68(&qword_1EE0E9CE8, MEMORY[0x1E69A12C8]);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D89A87F4()
{
  sub_1D8B15A60();

  sub_1D8B14060();
  sub_1D88F0C68(&qword_1EE0E9CE8, MEMORY[0x1E69A12C8]);
  return sub_1D8B157A0();
}

uint64_t sub_1D89A892C()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  sub_1D8B14060();
  sub_1D88F0C68(&qword_1EE0E9CE8, MEMORY[0x1E69A12C8]);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D89A8A7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_1D87DE87C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D8B14050();
}

uint64_t sub_1D89A8AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a3;
  v122 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v112 = &v93 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = &v93 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  v8 = MEMORY[0x1EEE9AC00](v98);
  v97 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v109 = &v93 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v93 - v12;
  v113 = sub_1D8B13FE0();
  v120 = *(v113 - 8);
  v13 = MEMORY[0x1EEE9AC00](v113);
  v106 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v93 - v15;
  v16 = sub_1D8B14060();
  v103 = *(v16 - 8);
  v104 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1D8B14000();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D8B140C0();
  v110 = *(v21 - 8);
  v111 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v107 = v23;
  v108 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v93 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v93 - v29;
  v31 = type metadata accessor for GreymatterAvailability.AvailabilityState(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87A0E38(a1, v30, &qword_1ECA667C0);
  v35 = *(v32 + 48);
  v118 = v31;
  if (v35(v30, 1, v31) != 1)
  {
    v45 = v122;
    sub_1D89AD554(v30, v34, type metadata accessor for GreymatterAvailability.AvailabilityState);
    if (qword_1EE0E9938 != -1)
    {
      swift_once();
    }

    v46 = sub_1D8B151E0();
    __swift_project_value_buffer(v46, qword_1EE0E9940);

    v47 = sub_1D8B151C0();
    v48 = sub_1D8B161F0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v123 = v50;
      *v49 = 136315138;
      sub_1D89AD3CC(v45 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_availabilityKey, v116, type metadata accessor for GreymatterAvailability.AvailabilityKey);
      v51 = sub_1D8B159E0();
      v53 = sub_1D89AC714(v51, v52, &v123);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1D8783000, v47, v48, "Tried to preheat an already preheated GreymatterAvailability: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1DA721330](v50, -1, -1);
      MEMORY[0x1DA721330](v49, -1, -1);
    }

    return sub_1D89AD554(v34, v115, type metadata accessor for GreymatterAvailability.AvailabilityState);
  }

  v94 = v35;
  v95 = v32 + 48;
  v96 = v28;
  v99 = a1;
  sub_1D87A14E4(a1, &qword_1ECA667C0);
  sub_1D87A14E4(v30, &qword_1ECA667C0);
  v93 = OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_availabilityKey;
  v36 = v116;
  sub_1D89AD3CC(v122 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_availabilityKey, v116, type metadata accessor for GreymatterAvailability.AvailabilityKey);
  (*(v103 + 32))(v102, v36 + *(v117 + 20), v104);
  sub_1D8B13FF0();
  sub_1D8B140A0();
  (*(v100 + 8))(v20, v101);
  sub_1D8B14010();
  v37 = v105;
  sub_1D8B140B0();
  v38 = sub_1D8B14080();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 48))(v37, 1, v38);
  v41 = v106;
  if (v40 == 1)
  {
    sub_1D87A14E4(v37, &qword_1ECA667F8);
    v42 = 1;
    v43 = v99;
    v44 = v114;
  }

  else
  {
    v44 = v114;
    sub_1D8B14070();
    (*(v39 + 8))(v37, v38);
    v42 = 0;
    v43 = v99;
  }

  v54 = v113;
  v55 = v120;
  (*(v120 + 56))(v44, v42, 1, v113);
  v56 = *(v55 + 16);
  v57 = v121;
  v56(v43, v121, v54);
  v58 = v118;
  sub_1D87A0E38(v44, v43 + *(v118 + 20), &qword_1ECA665E8);
  *(v43 + *(v58 + 24)) = 0;
  (*(v32 + 56))(v43, 0, 1, v58);
  if (qword_1EE0E9938 != -1)
  {
    swift_once();
  }

  v59 = sub_1D8B151E0();
  __swift_project_value_buffer(v59, qword_1EE0E9940);
  v56(v41, v57, v54);
  v60 = v109;
  sub_1D87A0E38(v44, v109, &qword_1ECA665E8);
  v61 = v122;

  v62 = sub_1D8B151C0();
  v63 = v54;
  v64 = sub_1D8B161F0();

  if (os_log_type_enabled(v62, v64))
  {
    v65 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v123 = v105;
    *v65 = 136315906;
    sub_1D89AD3CC(v61 + v93, v116, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    v66 = sub_1D8B159E0();
    v68 = sub_1D89AC714(v66, v67, &v123);

    *(v65 + 4) = v68;
    v69 = v60;
    *(v65 + 12) = 2080;
    sub_1D88F0C68(&qword_1EE0E9CF8, MEMORY[0x1E69A11A8]);
    v70 = sub_1D8B16B50();
    v72 = v71;
    v117 = *(v120 + 8);
    (v117)(v41, v63);
    v73 = sub_1D89AC714(v70, v72, &v123);

    *(v65 + 14) = v73;
    *(v65 + 22) = 2080;
    sub_1D87A0E38(v60, v97, &qword_1ECA665E8);
    v74 = sub_1D8B159E0();
    v75 = v69;
    v77 = v76;
    sub_1D87A14E4(v75, &qword_1ECA665E8);
    v78 = sub_1D89AC714(v74, v77, &v123);

    *(v65 + 24) = v78;
    *(v65 + 32) = 1024;
    *(v65 + 34) = 0;
    _os_log_impl(&dword_1D8783000, v62, v64, "GreymatterAvailability preheated availability for %s to availability: %s, partnerAvailability: %s, chinaPolicy: %{BOOL}d", v65, 0x26u);
    v79 = v105;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v79, -1, -1);
    v80 = v65;
    v43 = v99;
    MEMORY[0x1DA721330](v80, -1, -1);
  }

  else
  {

    sub_1D87A14E4(v60, &qword_1ECA665E8);
    v117 = *(v120 + 8);
    (v117)(v41, v63);
  }

  v81 = v110;
  v82 = v119;
  v83 = sub_1D8B15EA0();
  v84 = v112;
  (*(*(v83 - 8) + 56))(v112, 1, 1, v83);
  v85 = v108;
  v86 = v111;
  (*(v81 + 16))(v108, v82, v111);
  v87 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v88 = (v107 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v89 + 24) = 0;
  (*(v81 + 32))(v89 + v87, v85, v86);
  *(v89 + v88) = v122;

  sub_1D8891CA0(0, 0, v84, &unk_1D8B2FE18, v89);

  v90 = v96;
  sub_1D87A0E38(v43, v96, &qword_1ECA667C0);
  result = v94(v90, 1, v118);
  v92 = v121;
  if (result != 1)
  {
    sub_1D87A14E4(v114, &qword_1ECA665E8);
    (v117)(v92, v113);
    (*(v81 + 8))(v82, v86);
    v34 = v90;
    return sub_1D89AD554(v34, v115, type metadata accessor for GreymatterAvailability.AvailabilityState);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D89A999C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  v5[5] = swift_task_alloc();
  v6 = sub_1D8B14040();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = sub_1D8B14030();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89A9AF0, 0, 0);
}

uint64_t sub_1D89A9AF0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1D8B14090();
  sub_1D8B14020();
  (*(v2 + 8))(v1, v3);
  v0[12] = OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_cache;
  v4 = sub_1D88F0C68(&qword_1EE0E9CF0, MEMORY[0x1E69A1290]);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1D89A9C24;
  v6 = v0[9];
  v7 = v0[5];

  return MEMORY[0x1EEE6D8C8](v7, v6, v4);
}

uint64_t sub_1D89A9C24()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D89A9F5C;
  }

  else
  {
    v2 = sub_1D89A9D38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D89A9D54()
{
  v1 = v0[5];
  v2 = sub_1D8B13FE0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    v3();
  }

  else
  {
    v4 = v0[14];
    v5 = v0[4];
    v6 = (v5 + v0[12]);
    os_unfair_lock_lock(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C8);
    sub_1D89A9FE8(v6 + *(v7 + 28), v5);
    os_unfair_lock_unlock(v6);
    if (!v4)
    {
      sub_1D87A14E4(v0[5], &qword_1ECA665E8);
      v8 = sub_1D88F0C68(&qword_1EE0E9CF0, MEMORY[0x1E69A1290]);
      v9 = swift_task_alloc();
      v0[13] = v9;
      *v9 = v0;
      v9[1] = sub_1D89A9C24;
      v10 = v0[9];
      v11 = v0[5];

      MEMORY[0x1EEE6D8C8](v11, v10, v8);
    }
  }
}

uint64_t sub_1D89A9F5C()
{
  *(v0 + 16) = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D89A9FE8(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v60 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  v5 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v73 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v60 - v9;
  v74 = sub_1D8B13FE0();
  v78 = *(v74 - 1);
  v10 = MEMORY[0x1EEE9AC00](v74);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v60 - v12;
  v66 = sub_1D8B14060();
  v13 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D8B14000();
  v19 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D8B140C0();
  v71 = *(v22 - 8);
  v72 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  sub_1D87A14E4(a1, &qword_1ECA667C0);
  v61 = OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_availabilityKey;
  sub_1D89AD3CC(v77 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_availabilityKey, v18, type metadata accessor for GreymatterAvailability.AvailabilityKey);
  v62 = v16;
  (*(v13 + 32))(v15, &v18[*(v16 + 20)], v66);
  sub_1D8B13FF0();
  sub_1D8B140A0();
  (*(v19 + 8))(v21, v65);
  v25 = v75;
  sub_1D8B14010();
  v26 = v67;
  sub_1D8B140B0();
  v27 = sub_1D8B14080();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v26, 1, v27);
  v70 = v24;
  if (v29 == 1)
  {
    sub_1D87A14E4(v26, &qword_1ECA667F8);
    v30 = 1;
    v31 = v74;
    v32 = v76;
  }

  else
  {
    v32 = v76;
    sub_1D8B14070();
    (*(v28 + 8))(v26, v27);
    v30 = 0;
    v31 = v74;
  }

  v33 = v69;
  v74 = v18;
  v34 = v78;
  (*(v78 + 56))(v32, v30, 1, v31);
  v35 = *(v34 + 16);
  v36 = v68;
  v35(v68, v25, v31);
  v37 = type metadata accessor for GreymatterAvailability.AvailabilityState(0);
  sub_1D87A0E38(v32, v36 + *(v37 + 20), &qword_1ECA665E8);
  *(v36 + *(v37 + 24)) = 0;
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  if (qword_1EE0E9938 != -1)
  {
    swift_once();
  }

  v38 = sub_1D8B151E0();
  __swift_project_value_buffer(v38, qword_1EE0E9940);
  v35(v33, v25, v31);
  v39 = v73;
  sub_1D87A0E38(v32, v73, &qword_1ECA665E8);
  v40 = v77;

  v41 = sub_1D8B151C0();
  v42 = sub_1D8B161F0();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v79 = v69;
    *v43 = 136315906;
    sub_1D89AD3CC(v40 + v61, v74, type metadata accessor for GreymatterAvailability.AvailabilityKey);
    v44 = sub_1D8B159E0();
    v46 = sub_1D89AC714(v44, v45, &v79);
    LODWORD(v77) = v42;
    v47 = v46;

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    sub_1D88F0C68(&qword_1EE0E9CF8, MEMORY[0x1E69A11A8]);
    v48 = sub_1D8B16B50();
    v50 = v49;
    v78 = *(v78 + 8);
    (v78)(v33, v31);
    v51 = sub_1D89AC714(v48, v50, &v79);

    *(v43 + 14) = v51;
    *(v43 + 22) = 2080;
    sub_1D87A0E38(v39, v63, &qword_1ECA665E8);
    v52 = sub_1D8B159E0();
    v53 = v31;
    v55 = v54;
    sub_1D87A14E4(v39, &qword_1ECA665E8);
    v56 = sub_1D89AC714(v52, v55, &v79);

    *(v43 + 24) = v56;
    *(v43 + 32) = 1024;
    *(v43 + 34) = 0;
    _os_log_impl(&dword_1D8783000, v41, v77, "GreymatterAvailability updated availability for %s to availability: %s, updatedPartnerAvailability: %s, chinaPolicy: %{BOOL}d", v43, 0x26u);
    v57 = v69;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v57, -1, -1);
    MEMORY[0x1DA721330](v43, -1, -1);

    sub_1D87A14E4(v76, &qword_1ECA665E8);
    (v78)(v75, v53);
  }

  else
  {

    sub_1D87A14E4(v39, &qword_1ECA665E8);
    v58 = *(v78 + 8);
    v58(v33, v31);
    sub_1D87A14E4(v32, &qword_1ECA665E8);
    v58(v25, v31);
  }

  return (*(v71 + 8))(v70, v72);
}

uint64_t sub_1D89AA9B0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v23 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GreymatterAvailability.AvailabilityState(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1D8B13FE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  v14 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_cache);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_cache));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C8) + 28);
  sub_1D87A0E38(v14 + v15, v9, &qword_1ECA667C0);
  os_unfair_lock_unlock(v14);
  if ((*(v5 + 48))(v9, 1, v4) == 1)
  {
    v16 = v26;
    sub_1D87A14E4(v9, &qword_1ECA667C0);
    if (qword_1EE0E9C20 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v23, qword_1EE0E9C28);
    sub_1D89AD3CC(v17, v3, type metadata accessor for LoggingSignposter);
    LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("GreymatterAvailability.AvailabilityEntry.preheat", 48, 2u, 1, 0, v27);
    sub_1D89ACCEC(v3, type metadata accessor for LoggingSignposter);
    os_unfair_lock_lock(v14);
    v18 = v14 + v15;
    v19 = v24;
    sub_1D89A8AEC(v18, v25, v24);
    os_unfair_lock_unlock(v14);
    v20 = v28;
    v21 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v21 + 8))(v20, v21);
    __swift_destroy_boxed_opaque_existential_1(v27);
    (*(v11 + 16))(v16, v19, v10);
    return sub_1D89ACCEC(v19, type metadata accessor for GreymatterAvailability.AvailabilityState);
  }

  else
  {
    (*(v11 + 16))(v13, v9, v10);
    sub_1D89ACCEC(v9, type metadata accessor for GreymatterAvailability.AvailabilityState);
    return (*(v11 + 32))(v26, v13, v10);
  }
}

uint64_t sub_1D89AADA8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v25 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GreymatterAvailability.AvailabilityState(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v26 = v1;
  v14 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_cache);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_cache));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C8) + 28);
  sub_1D87A0E38(v14 + v15, v10, &qword_1ECA667C0);
  os_unfair_lock_unlock(v14);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D87A14E4(v10, &qword_1ECA667C0);
    v16 = sub_1D8B13FE0();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  else
  {
    sub_1D87A0E38(&v10[*(v4 + 20)], v13, &qword_1ECA665E8);
    sub_1D89ACCEC(v10, type metadata accessor for GreymatterAvailability.AvailabilityState);
    v17 = sub_1D8B13FE0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v13, 1, v17) != 1)
    {
      v23 = v27;
      (*(v18 + 32))(v27, v13, v17);
      return (*(v18 + 56))(v23, 0, 1, v17);
    }
  }

  sub_1D87A14E4(v13, &qword_1ECA665E8);
  if (qword_1EE0E9C20 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v25, qword_1EE0E9C28);
  sub_1D89AD3CC(v19, v3, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("GreymatterAvailability.AvailabilityEntry.preheat", 48, 2u, 1, 0, v28);
  sub_1D89ACCEC(v3, type metadata accessor for LoggingSignposter);
  os_unfair_lock_lock(v14);
  sub_1D89A8AEC(v14 + v15, v26, v7);
  os_unfair_lock_unlock(v14);
  v20 = v29;
  v21 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v21 + 8))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_1D87A0E38(&v7[*(v4 + 20)], v27, &qword_1ECA665E8);
  return sub_1D89ACCEC(v7, type metadata accessor for GreymatterAvailability.AvailabilityState);
}

uint64_t sub_1D89AB254()
{
  v1 = v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_cache;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C8);
  sub_1D87A14E4(v1 + *(v2 + 28), &qword_1ECA667C0);
  sub_1D89ACCEC(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore22GreymatterAvailabilityP33_99C6E5ED3F40308BF68826FA333809E717AvailabilityEntry_availabilityKey, type metadata accessor for GreymatterAvailability.AvailabilityKey);

  return swift_deallocClassInstance();
}

uint64_t static GreymatterAvailability.selectedLLM.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D8B14CF0();
  sub_1D8B14CD0();
  sub_1D8B14CA0();

  if (v18)
  {
    sub_1D8788F40(&v17, &v19);
    v2 = a1;
    return sub_1D8788F40(&v19, v2);
  }

  else
  {
    v16 = a1;
    sub_1D87A14E4(&v17, &qword_1ECA66798);
    sub_1D8B14CD0();
    v3 = sub_1D8B14CE0();

    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v3 + 32;
      while (v6 < *(v3 + 16))
      {
        sub_1D87C1470(v7, &v19);
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        v8 = sub_1D8B14D30();
        v10 = v9;
        sub_1D8B14CD0();
        v11 = sub_1D8B14CC0();
        v13 = v12;

        if (v8 == v11 && v10 == v13)
        {

LABEL_14:

          v2 = v16;
          return sub_1D8788F40(&v19, v2);
        }

        v15 = sub_1D8B16BA0();

        if (v15)
        {
          goto LABEL_14;
        }

        ++v6;
        result = __swift_destroy_boxed_opaque_existential_1(&v19);
        v7 += 40;
        if (v5 == v6)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_12:

      *(v16 + 32) = 0;
      *v16 = 0u;
      *(v16 + 16) = 0u;
    }
  }

  return result;
}

uint64_t static GreymatterAvailability.llmProviderDisplayName.getter()
{
  v0 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D8B15930();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D8B14CF0();
  sub_1D8B14CD0();
  sub_1D8B14CB0();

  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = sub_1D8B14D20();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1D87A14E4(v5, &qword_1ECA66798);
    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v3 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v2 = sub_1D8B159D0();
  }

  static GreymatterAvailability.selectedLLM.getter(v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = sub_1D8B14D20();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1D87A14E4(v5, &qword_1ECA66798);
  }

  return v2;
}

uint64_t static GreymatterAvailability.llmServiceDisplayName.getter()
{
  v0 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D8B15930();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D8B14CF0();
  sub_1D8B14CD0();
  sub_1D8B14CB0();

  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = sub_1D8B14D10();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1D87A14E4(v5, &qword_1ECA66798);
    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v3 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v2 = sub_1D8B159D0();
  }

  static GreymatterAvailability.selectedLLM.getter(v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = sub_1D8B14D10();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1D87A14E4(v5, &qword_1ECA66798);
  }

  return v2;
}

uint64_t static GreymatterAvailability.llmProviderSymbolName.getter()
{
  sub_1D8B14CF0();
  sub_1D8B14CD0();
  sub_1D8B14CB0();

  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v0 = sub_1D8B14D00();
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D87A14E4(v7, &qword_1ECA66798);
  }

  v0 = 0xD000000000000012;
LABEL_6:
  static GreymatterAvailability.selectedLLM.getter(v7);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = sub_1D8B14D00();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v5)
    {

      return v3;
    }
  }

  else
  {
    sub_1D87A14E4(v7, &qword_1ECA66798);
  }

  return v0;
}

uint64_t static GreymatterAvailability.isGreymatterEligible()()
{
  v0 = sub_1D8B13D10();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - v4;
  v6 = sub_1D8B13D20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_1D8B13D50();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E69B7CA0], v6);
  sub_1D8B13D40();
  (*(v7 + 8))(v9, v6);
  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v14 + 32))(v16, v12, v13);
  sub_1D8B13D30();
  v18 = v22;
  v17 = v23;
  (*(v22 + 104))(v3, *MEMORY[0x1E69B7C90], v23);
  LOBYTE(v6) = sub_1D8B13D00();
  v19 = *(v18 + 8);
  v19(v3, v17);
  v19(v5, v17);
  (*(v14 + 8))(v16, v13);
  return v6 & 1;
}

BOOL GreymatterAvailability.isRestricted(_:languageOption:)(unsigned __int8 *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41[-v6];
  v8 = sub_1D8B13FE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41[-v13];
  v15 = *a1;
  v16 = *(v2 + 8);
  v17 = *(v2 + 10);
  v43 = *v2;
  v44 = v16;
  v45 = v17;
  v42 = v15;
  GreymatterAvailability.availability(_:languageOption:)(&v41[-v13], v7, &v42, a2);
  sub_1D87A14E4(v7, &qword_1ECA665E8);
  (*(v9 + 32))(v12, v14, v8);
  v18 = (*(v9 + 88))(v12, v8);
  v19 = MEMORY[0x1E69A0EF8];
  (*(v9 + 8))(v12, v8);
  if (qword_1EE0E9938 != -1)
  {
    swift_once();
  }

  v20 = *v19;
  v21 = sub_1D8B151E0();
  __swift_project_value_buffer(v21, qword_1EE0E9940);
  v22 = sub_1D8B151C0();
  v23 = sub_1D8B16200();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    v26 = "";
    *v24 = 136315394;
    v27 = "sualIntelligenceCamera";
    v28 = 0xD00000000000002ELL;
    v29 = "IntelligenceCamera.ImageSearch";
    v30 = 0xD000000000000024;
    if (v15 != 4)
    {
      v30 = 0xD00000000000002CLL;
      v29 = "gs.AppleIntelligence";
    }

    if (v15 != 3)
    {
      v28 = v30;
      v27 = v29;
    }

    v31 = "textComposition.OpenEndedSchema";
    v32 = 0xD00000000000003FLL;
    if (v15 != 1)
    {
      v32 = 0xD000000000000026;
      v31 = "ucturedExtraction.addToCalendar";
    }

    if (v15)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0xD00000000000001FLL;
    }

    if (v15)
    {
      v26 = v31;
    }

    if (v15 <= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = v28;
    }

    if (v15 <= 2)
    {
      v35 = v26;
    }

    else
    {
      v35 = v27;
    }

    v36 = sub_1D89AC714(v34, v35 | 0x8000000000000000, &v43);

    *(v24 + 4) = v36;
    *(v24 + 12) = 2080;
    if (v18 == v20)
    {
      v37 = 7562617;
    }

    else
    {
      v37 = 28526;
    }

    if (v18 == v20)
    {
      v38 = 0xE300000000000000;
    }

    else
    {
      v38 = 0xE200000000000000;
    }

    v39 = sub_1D89AC714(v37, v38, &v43);

    *(v24 + 14) = v39;
    _os_log_impl(&dword_1D8783000, v22, v23, "Use case identifier %s is restricted: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v25, -1, -1);
    MEMORY[0x1DA721330](v24, -1, -1);
  }

  return v18 == v20;
}

uint64_t GreymatterAvailability.isRestrictedDueToPolicyLimitations(_:languageOption:)(unsigned __int8 *a1, uint64_t a2)
{
  v36 = a2;
  v4 = sub_1D8B13F70();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_1D8B13FE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B13F90();
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v35 = *v2;
  v17 = *(v2 + 8);
  v18 = *(v2 + 9);
  v34 = *(v2 + 10);
  if (v16 <= 2 && v16 > 1)
  {
  }

  else
  {
    v19 = sub_1D8B16BA0();

    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v17 == 2)
  {
LABEL_8:
    v38 = v35;
    v39 = v17;
    v40 = v18;
    v41 = v34;
    v37 = v16;
    GreymatterAvailability.availability(_:languageOption:)(v12, v8, &v37, v36);
    sub_1D87A14E4(v8, &qword_1ECA665E8);
    if ((*(v10 + 88))(v12, v9) == *MEMORY[0x1E69A0EF8])
    {
      (*(v10 + 96))(v12, v9);
      v21 = v29;
      v20 = v30;
      (*(v29 + 32))(v15, v12, v30);
      v22 = sub_1D8B13F80();
      v24 = v31;
      v23 = v32;
      v25 = v33;
      (*(v32 + 104))(v31, *MEMORY[0x1E69A0F20], v33);
      v26 = sub_1D89A5450(v24, v22);

      (*(v23 + 8))(v24, v25);
      (*(v21 + 8))(v15, v20);
      if (v26)
      {
        LOBYTE(v17) = 1;
        return v17 & 1;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }

    LOBYTE(v17) = 0;
  }

  return v17 & 1;
}

uint64_t sub_1D89AC6B8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1D89AC714(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1D89AC714(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D89AC7E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D87D3E4C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D89AC7E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D89AC8EC(a5, a6);
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
    result = sub_1D8B167B0();
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

uint64_t sub_1D89AC8EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D89AC938(a1, a2);
  sub_1D89ACA68(&unk_1F54237A0);
  return v3;
}

uint64_t sub_1D89AC938(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D89ACB54(v5, 0);
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

  result = sub_1D8B167B0();
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
        v10 = sub_1D8B15AF0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D89ACB54(v10, 0);
        result = sub_1D8B166F0();
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

uint64_t sub_1D89ACA68(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D89ACBC8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D89ACB54(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D89ACBC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1D89ACCBC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1D89ACCEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D89ACD50()
{
  result = qword_1ECA667A8;
  if (!qword_1ECA667A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA667A8);
  }

  return result;
}

unint64_t sub_1D89ACDA8()
{
  result = qword_1ECA667B0;
  if (!qword_1ECA667B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA667B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA667B0);
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_1D89ACE20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D89ACE68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D89ACEF4()
{
  sub_1D89ACFC0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GreymatterAvailability.AvailabilityKey(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D89ACFC0()
{
  if (!qword_1EE0E9D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA667C0);
    v0 = sub_1D8B13E60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E9D00);
    }
  }
}

void sub_1D89AD06C()
{
  sub_1D8B13FE0();
  if (v0 <= 0x3F)
  {
    sub_1D89AD0F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D89AD0F8()
{
  if (!qword_1ECA667D0)
  {
    sub_1D8B13FE0();
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA667D0);
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GreymatterAvailability.Overrides(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GreymatterAvailability.Overrides(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1D89AD2B4()
{
  result = sub_1D8B14060();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D89AD378()
{
  result = qword_1ECA667E0;
  if (!qword_1ECA667E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA667E0);
  }

  return result;
}

uint64_t sub_1D89AD3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89AD434(uint64_t a1)
{
  v4 = *(sub_1D8B140C0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8864FBC;

  return sub_1D89A999C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D89AD554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89AD5BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24) | (*(v2 + 26) << 16);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D886553C;

  return sub_1D89A7B2C(a1, a2, v6, v7);
}

uint64_t sub_1D89AD67C(uint64_t a1)
{
  v4 = *(type metadata accessor for GreymatterAvailability.AvailabilityKey(0) - 8);
  v5 = (*(v4 + 80) + 43) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) | (*(v1 + 42) << 16);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D886553C;

  return sub_1D89A8404(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D89AD78C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D88B7A58(a1, v4);
}

id sub_1D89AD8AC()
{
  v1 = sub_1D8B15940();
  v2 = [v0 BOOLForKey:v1 defaultValue:0];

  return v2;
}

id sub_1D89AD970()
{
  v1 = sub_1D8B15940();
  v2 = [v0 BOOLForKey:v1 defaultValue:0];

  return v2;
}

id sub_1D89ADA34()
{
  v1 = sub_1D8B15940();
  v2 = [v0 BOOLForKey:v1 defaultValue:0];

  return v2;
}

id sub_1D89ADB00()
{
  v1 = sub_1D8B15940();
  v2 = [v0 BOOLForKey:v1 defaultValue:1];

  return v2;
}

id sub_1D89ADBCC()
{
  v1 = sub_1D8B15940();
  v2 = [v0 BOOLForKey:v1 defaultValue:0];

  return v2;
}

id InternalSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InternalSettings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSettings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InternalSettings.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSettings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D89AE008()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D8B15940();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1EE0ED6E8 = v2;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D89AE080(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1DA71EFA0](0x73676E6974746553, 0xED000065756C6156);
  v2 = sub_1D8B15940();
  v3 = NSSelectorFromString(v2);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (![ObjCClassFromMetadata respondsToSelector_])
  {

    return 0;
  }

  v5 = [ObjCClassFromMetadata performSelector_];
  result = ObjCClassFromMetadata;
  if (!v5)
  {
    __break(1u);
    return result;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_1D89AE270(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_1D8B15940();
  v6 = [v3 defaultsKeyForKey_];

  if (qword_1EE0E68B0 != -1)
  {
    swift_once();
  }

  v7 = [qword_1EE0ED6E8 objectForKey_];

  if (v7)
  {
    sub_1D8B16540();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    sub_1D87DDF0C();
    if (swift_dynamicCast())
    {
      a3 = [v9 BOOLValueSafe];
    }
  }

  else
  {
    sub_1D895E2F0(v12);
  }

  return a3 & 1;
}

double sub_1D89AE418(double a1)
{
  v3 = sub_1D8B15940();
  v4 = [v1 defaultsKeyForKey_];

  if (qword_1EE0E68B0 != -1)
  {
    swift_once();
  }

  v5 = [qword_1EE0ED6E8 objectForKey_];

  if (v5)
  {
    sub_1D8B16540();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_1D87DDF0C();
    if (swift_dynamicCast())
    {
      [v8 doubleValueSafe];
      a1 = v6;
    }
  }

  else
  {
    sub_1D895E2F0(v11);
  }

  return a1;
}

uint64_t sub_1D89AE5D4()
{
  sub_1D8B15BA0();
  sub_1D8B15AB0();
  v1 = sub_1D8B15BA0();
  sub_1D8B15AB0();
  return v1;
}

id sub_1D89AE6B8()
{
  v0 = sub_1D8B13330();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66818);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  sub_1D8B13340();
  sub_1D8B13310();
  (*(v1 + 8))(v3, v0);
  v7 = sub_1D8B13270();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D87A14E4(v6, &qword_1ECA66818);
    v9 = MEMORY[0x1E69778B0];
LABEL_3:
    v10 = *v9;

    return v10;
  }

  v12 = sub_1D8B13260();
  v14 = v13;
  (*(v8 + 8))(v6, v7);
  v15 = v12 == 26746 && v14 == 0xE200000000000000;
  if (!v15 && (sub_1D8B16BA0() & 1) == 0)
  {
    v17 = v12 == 28269 && v14 == 0xE200000000000000;
    if (v17 || (sub_1D8B16BA0() & 1) != 0)
    {

      v9 = MEMORY[0x1E6977800];
    }

    else
    {
      v18 = v12 == 24944 && v14 == 0xE200000000000000;
      if (v18 || (sub_1D8B16BA0() & 1) != 0)
      {

        v9 = MEMORY[0x1E6977828];
      }

      else if (v12 == 28265 && v14 == 0xE200000000000000 || (sub_1D8B16BA0() & 1) != 0)
      {

        v9 = MEMORY[0x1E69777A0];
      }

      else
      {
        if ((v12 != 30569 || v14 != 0xE200000000000000) && (sub_1D8B16BA0() & 1) == 0)
        {
          v19 = sub_1D8B15940();

          return v19;
        }

        v9 = MEMORY[0x1E6977780];
      }
    }

    goto LABEL_3;
  }

  v16 = sub_1D89AEA48();

  return v16;
}

uint64_t sub_1D89AEA48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63118);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_1D8B13330();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66820);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  sub_1D8B13340();
  sub_1D8B13320();
  (*(v4 + 8))(v6, v3);
  v10 = sub_1D8B132D0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D87A14E4(v9, &qword_1ECA66820);
  }

  else
  {
    sub_1D8B13260();
    (*(v11 + 8))(v9, v10);
    v14 = sub_1D8B159F0();
    v16 = v15;

    v17 = v14 == 1936613736 && v16 == 0xE400000000000000;
    if (v17 || (sub_1D8B16BA0() & 1) != 0)
    {
      goto LABEL_19;
    }

    if (v14 == 1953390952 && v16 == 0xE400000000000000)
    {
      goto LABEL_37;
    }

    v25 = sub_1D8B16BA0();

    if (v25)
    {
      goto LABEL_38;
    }
  }

  sub_1D8B132E0();
  v12 = sub_1D8B132B0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v2, 1, v12) != 1)
  {
    sub_1D8B13260();
    (*(v13 + 8))(v2, v12);
    v18 = sub_1D8B15A00();
    v20 = v19;

    v21 = v18 == 20035 && v20 == 0xE200000000000000;
    if (v21 || (sub_1D8B16BA0() & 1) != 0 || v18 == 18259 && v20 == 0xE200000000000000 || (sub_1D8B16BA0() & 1) != 0)
    {
LABEL_19:

      goto LABEL_20;
    }

    if ((v18 != 22356 || v20 != 0xE200000000000000) && (sub_1D8B16BA0() & 1) == 0 && (v18 != 19272 || v20 != 0xE200000000000000) && (sub_1D8B16BA0() & 1) == 0 && (v18 != 20301 || v20 != 0xE200000000000000))
    {
      v26 = sub_1D8B16BA0();

      if ((v26 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_38:
      v22 = MEMORY[0x1E6977890];
      return *v22;
    }

LABEL_37:

    goto LABEL_38;
  }

  sub_1D87A14E4(v2, &qword_1ECA63118);
LABEL_20:
  v22 = MEMORY[0x1E6977848];
  return *v22;
}

uint64_t sub_1D89AEF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D87A0E38(a3, v22 - v9, &unk_1ECA675E0);
  v11 = sub_1D8B15EA0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D87A14E4(v10, &unk_1ECA675E0);
  }

  else
  {
    sub_1D8B15E90();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D8B15E00();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D8B15A10() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D87A14E4(a3, &unk_1ECA675E0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D87A14E4(a3, &unk_1ECA675E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D89AF1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D87A0E38(a3, v22 - v9, &unk_1ECA675E0);
  v11 = sub_1D8B15EA0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D87A14E4(v10, &unk_1ECA675E0);
  }

  else
  {
    sub_1D8B15E90();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D8B15E00();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D8B15A10() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67DE0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D87A14E4(a3, &unk_1ECA675E0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D87A14E4(a3, &unk_1ECA675E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67DE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D89AF470()
{
  type metadata accessor for LocationsHandler(0);
  swift_allocObject();
  result = sub_1D89B121C();
  qword_1EE0E6800 = result;
  return result;
}

uint64_t static LocationsHandler.shared.getter()
{
  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D89AF51C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_headingUpdatePublisher);
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_authorizationStateUpdates;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66828);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1D89AF5E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D89AF648(v1);
}

void sub_1D89AF648(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading;
  v5 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13510();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D881F764(0, &qword_1ECA66900);
  v6 = v5;
  v7 = a1;
  v8 = sub_1D8B16400();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_1D89AF7E0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  result = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal);
  if (result)
  {
    result = [result clientLocation];
    v3 = v6;
    v4 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__isLocationSimulationActive);
    if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__isLocationSimulationActive) != (v6 & 1))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D8B13510();
    }
  }

  else
  {
    v3 = 0;
    v4 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__isLocationSimulationActive);
    if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__isLocationSimulationActive))
    {
      goto LABEL_3;
    }
  }

  *v4 = v3 & 1;
  return result;
}

void *sub_1D89AF988(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1D89AFA44@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1D89AFB08(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D89AFB38(v1);
}

void sub_1D89AFB38(void *a1)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal;
  v4 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13510();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D881F764(0, &qword_1ECA66920);
  v5 = v4;
  v6 = a1;
  v7 = sub_1D8B16400();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  sub_1D89AF7E0();
}

id sub_1D89AFCFC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v2 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal);
  if (!v2)
  {
    return 0;
  }

  swift_getKeyPath();
  v3 = v2;
  sub_1D8B13520();

  v4 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading);
  v5 = v4;
  v6 = sub_1D89AFE24(v4);

  return v6;
}

id sub_1D89AFE24(void *a1)
{
  v2 = sub_1D8B131D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = qword_1EE0E42F8;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_1D8B151E0();
    __swift_project_value_buffer(v8, qword_1EE0E4300);
    v9 = v7;
    v10 = v45;
    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16200();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      [v10 course];
      *(v13 + 4) = v14;
      *(v13 + 12) = 2048;
      [v9 trueHeading];
      *(v13 + 14) = v15;
      _os_log_impl(&dword_1D8783000, v11, v12, "modifyWithHeading: Passed course %f, updated to %f", v13, 0x16u);
      MEMORY[0x1DA721330](v13, -1, -1);
    }

    v16 = [v10 sourceInformation];
    [v10 coordinate];
    v18 = v17;
    v45 = v19;
    [v10 altitude];
    v21 = v20;
    [v10 horizontalAccuracy];
    v23 = v22;
    [v10 verticalAccuracy];
    v25 = v24;
    [v9 trueHeading];
    v27 = v26;
    [v9 headingAccuracy];
    v29 = v28;
    [v10 speed];
    v31 = v30;
    [v10 speedAccuracy];
    v33 = v32;
    v34 = [v10 timestamp];
    sub_1D8B13190();

    v35 = objc_allocWithZone(MEMORY[0x1E6985C40]);
    v36 = sub_1D8B13120();
    if (v16)
    {
      v37 = [v35 initWithCoordinate:v36 altitude:v16 horizontalAccuracy:v18 verticalAccuracy:*&v45 course:v21 courseAccuracy:v23 speed:v25 speedAccuracy:v27 timestamp:v29 sourceInfo:{v31, v33}];
    }

    else
    {
      v37 = [v35 initWithCoordinate:v36 altitude:v18 horizontalAccuracy:*&v45 verticalAccuracy:v21 course:v23 courseAccuracy:v25 speed:v27 speedAccuracy:v29 timestamp:{v31, v33}];
    }

    (*(v3 + 8))(v5, v2);
    return v37;
  }

  else
  {
    if (qword_1EE0E42F8 != -1)
    {
      swift_once();
    }

    v38 = sub_1D8B151E0();
    __swift_project_value_buffer(v38, qword_1EE0E4300);
    v39 = sub_1D8B151C0();
    v40 = sub_1D8B16200();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1D8783000, v39, v40, "modifyWithHeading: Passed heading is nil, returning self.", v41, 2u);
      MEMORY[0x1DA721330](v41, -1, -1);
    }

    v42 = v45;

    return v42;
  }
}

uint64_t sub_1D89B0380()
{
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  return *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count);
}

uint64_t sub_1D89B0428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  *a2 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count);
  return result;
}

uint64_t sub_1D89B0500(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13510();
  }

  return result;
}

uint64_t sub_1D89B0648(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13510();
  }

  return result;
}

uint64_t sub_1D89B074C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationAccessRequestDate;
  swift_beginAccess();
  v4 = sub_1D8B131D0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1D89B0844@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationAccessRequestDate;
  swift_beginAccess();
  v5 = sub_1D8B131D0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D89B093C(uint64_t a1)
{
  v2 = sub_1D8B131D0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1D89B0A08(v4);
}

uint64_t sub_1D89B0A08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D8B131D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationAccessRequestDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1D89B5998(&unk_1ECA66910, MEMORY[0x1E6969530]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1D8B158C0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13510();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1D89B0CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B131D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationAccessRequestDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

void sub_1D89B0DC4()
{
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__backgroundActivity;
  if (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__backgroundActivity) == 1)
  {
    sub_1D8B13610();
    swift_allocObject();
    *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_background) = sub_1D8B13600();
LABEL_5:

    goto LABEL_6;
  }

  if (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_background))
  {

    sub_1D8B135F0();
    goto LABEL_5;
  }

LABEL_6:
  v2 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  sub_1D8B13520();

  v3 = *(v0 + v1);
  v4 = sub_1D8B15940();
  [v2 setBool:v3 forKey:v4];
}

uint64_t sub_1D89B0F8C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  return *(v2 + *a2);
}

uint64_t sub_1D89B102C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  *a3 = *(v5 + *a2);
  return result;
}

void sub_1D89B10E0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__backgroundActivity) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__backgroundActivity) = a1 & 1;

    sub_1D89B0DC4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13510();
  }
}

uint64_t sub_1D89B121C()
{
  v1 = sub_1D8B131D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_logger;
  if (qword_1EE0E42F8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D8B151E0();
  v7 = __swift_project_value_buffer(v6, qword_1EE0E4300);
  (*(*(v6 - 8) + 16))(v0 + v5, v7, v6);
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_background) = 0;
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_headingUpdatePublisher;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for CLHeadingUpdatePublisher(0)) init];
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading) = 0;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal) = 0;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__isLocationSimulationActive) = 0;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__isStationary) = 0;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count) = 0;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__updatesStarted) = 0;
  sub_1D8B13080();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationAccessRequestDate, v4, v1);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_1D8B15940();
  LOBYTE(v8) = [v9 BOOLForKey_];

  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__backgroundActivity) = v8;
  sub_1D8B13550();
  v11 = [objc_allocWithZone(MEMORY[0x1E695FBE8]) init];
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager) = v11;
  [v11 setHeadingOrientation_];
  [*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager) setDelegate_];
  return v0;
}

BOOL sub_1D89B14C4()
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  return (sub_1D8B0AAA4() & 1) != 0 || [*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager) authorizationStatus] > 2;
}

void sub_1D89B154C()
{
  if (sub_1D89B46EC())
  {

    sub_1D89B1580();
  }
}

void sub_1D89B1580()
{
  v1 = sub_1D8B155B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8B155E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager);
  if ([v9 authorizationStatus])
  {
    if ([v9 authorizationStatus] == 4 && objc_msgSend(v9, sel_accuracyAuthorization) == 1)
    {
      v17[0] = sub_1D8B15940();
      [v9 requestTemporaryFullAccuracyAuthorizationWithPurposeKey_];
      v10 = v17[0];
    }
  }

  else
  {
    v17[0] = v2;
    v11 = sub_1D8B151C0();
    v12 = sub_1D8B161F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D8783000, v11, v12, "📍 The user had not yet provided location access. We are requesting access now.", v13, 2u);
      MEMORY[0x1DA721330](v13, -1, -1);
    }

    sub_1D881F764(0, &qword_1EE0E3730);
    v14 = sub_1D8B162C0();
    v15 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1D89B5978;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D89B1AA0;
    aBlock[3] = &block_descriptor_6;
    v16 = _Block_copy(aBlock);

    sub_1D8B155D0();
    v17[1] = MEMORY[0x1E69E7CC0];
    sub_1D89B5998(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
    sub_1D89B59E0();
    sub_1D8B16570();
    MEMORY[0x1DA71F7C0](0, v8, v4, v16);
    _Block_release(v16);

    (*(v17[0] + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1D89B1998()
{
  v0 = sub_1D8B131D0();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D8B131C0();
    sub_1D89B0A08(v2);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager);

    [v4 requestWhenInUseAuthorization];
  }
}

uint64_t sub_1D89B1AA0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D89B1AE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if ((sub_1D8B0AAA4() & 1) != 0 || [*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager) authorizationStatus] >= 3)
  {
    v8 = sub_1D8B151C0();
    v9 = sub_1D8B161F0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D8783000, v8, v9, "📍 Starting location updates!", v10, 2u);
      MEMORY[0x1DA721330](v10, -1, -1);
    }

    v11 = sub_1D8B15EA0();
    v12 = *(*(v11 - 8) + 56);
    v12(v4, 1, 1, v11);
    sub_1D8B15E80();

    v13 = sub_1D8B15E70();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v1;
    sub_1D8891CA0(0, 0, v4, &unk_1D8B2FF88, v14);

    v12(v4, 1, 1, v11);

    v16 = sub_1D8B15E70();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = v1;
    sub_1D89AEF08(0, 0, v4, &unk_1D8B2FF98, v17);
  }

  else
  {
    v19 = sub_1D8B151C0();
    v5 = sub_1D8B161F0();
    if (os_log_type_enabled(v19, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D8783000, v19, v5, "Not starting location updates because the user has not granted access", v6, 2u);
      MEMORY[0x1DA721330](v6, -1, -1);
    }

    v7 = v19;
  }
}

uint64_t sub_1D89B1E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v5 = sub_1D8B135E0();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v4[19] = *(v6 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66930);
  v4[22] = swift_task_alloc();
  v7 = sub_1D8B135B0();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = sub_1D8B13590();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v9 = sub_1D8B135C0();
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = sub_1D8B15E80();
  v4[33] = sub_1D8B15E70();
  v11 = sub_1D8B15E00();
  v4[34] = v11;
  v4[35] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D89B20AC, v11, v10);
}

uint64_t sub_1D89B20AC()
{
  v22 = v0;
  v1 = v0[14];
  v2 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__updatesStarted;
  v0[36] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__updatesStarted;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[9] = v1;
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13510();
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[37] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_logger;

    v6 = sub_1D8B151C0();
    v7 = sub_1D8B161F0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[14];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      v0[13] = [*(v8 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager) accuracyAuthorization];
      type metadata accessor for CLAccuracyAuthorization(0);
      v11 = sub_1D8B159E0();
      v13 = sub_1D89AC714(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1D8783000, v6, v7, "Accuracy auth: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1DA721330](v10, -1, -1);
      MEMORY[0x1DA721330](v9, -1, -1);
    }

    v15 = v0[27];
    v14 = v0[28];
    v16 = v0[26];
    (*(v15 + 104))(v14, *MEMORY[0x1E69E7E40], v16);
    sub_1D8B13580();
    (*(v15 + 8))(v14, v16);
    sub_1D8B135A0();
    v0[38] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler___observationRegistrar;
    v0[39] = sub_1D8B15E70();
    v17 = sub_1D89B5998(&qword_1ECA66938, MEMORY[0x1E69E7E48]);
    v18 = swift_task_alloc();
    v0[40] = v18;
    *v18 = v0;
    v18[1] = sub_1D89B24D8;
    v19 = v0[22];
    v20 = v0[23];

    return MEMORY[0x1EEE6D8C8](v19, v20, v17);
  }
}

uint64_t sub_1D89B24D8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 312);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1D8B15E00();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1D89B2D58;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1D8B15E00();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1D89B2670;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1D89B2670()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x1EEE6DFA0](sub_1D89B26D4, v1, v2);
}

uint64_t sub_1D89B26D4()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[29];
    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[23];

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    goto LABEL_10;
  }

  v10 = v0[36];
  v11 = v0[14];
  v12 = *(v3 + 32);
  v12(v0[21], v1, v2);
  swift_getKeyPath();
  v0[12] = v11;
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  if ((*(v11 + v10) & 1) == 0)
  {

    v28 = sub_1D8B151C0();
    v29 = sub_1D8B161F0();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[30];
    v32 = v0[31];
    v33 = v0[24];
    v55 = v0[25];
    v57 = v0[29];
    v34 = v0[23];
    v35 = v0[21];
    v37 = v0[17];
    v36 = v0[18];
    if (v30)
    {
      v54 = v0[31];
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D8783000, v28, v29, "Location updates bailed", v38, 2u);
      MEMORY[0x1DA721330](v38, -1, -1);

      (*(v36 + 8))(v35, v37);
      (*(v33 + 8))(v55, v34);
      (*(v31 + 8))(v54, v57);
    }

    else
    {

      (*(v36 + 8))(v35, v37);
      (*(v33 + 8))(v55, v34);
      (*(v31 + 8))(v32, v57);
    }

LABEL_10:

    v39 = v0[1];

    return v39();
  }

  v13 = sub_1D8B135D0();
  if (v13)
  {
    v14 = v13;
    v15 = v0[20];
    v52 = v15;
    v16 = v0[18];
    v17 = v0[16];
    v18 = v0[17];
    v51 = v0[21];
    v53 = v17;
    v56 = v0[15];
    v50 = v0[14];
    v19 = sub_1D8B15EA0();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v17, 1, 1, v19);
    (*(v16 + 16))(v15, v51, v18);

    v21 = v14;
    v22 = sub_1D8B15E70();
    v23 = (*(v16 + 80) + 48) & ~*(v16 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 2) = v22;
    *(v24 + 3) = v25;
    *(v24 + 4) = v50;
    *(v24 + 5) = v21;
    v12(&v24[v23], v52, v18);
    sub_1D87A0E38(v53, v56, &unk_1ECA675E0);
    v26 = (*(v20 + 48))(v56, 1, v19);

    v27 = v0[15];
    if (v26 == 1)
    {
      sub_1D87A14E4(v0[15], &unk_1ECA675E0);
    }

    else
    {
      sub_1D8B15E90();
      (*(v20 + 8))(v27, v19);
    }

    v41 = *(v24 + 2);
    swift_unknownObjectRetain();

    if (v41)
    {
      swift_getObjectType();
      v42 = sub_1D8B15E00();
      v44 = v43;
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    sub_1D87A14E4(v0[16], &unk_1ECA675E0);
    v45 = swift_allocObject();
    *(v45 + 16) = &unk_1D8B301C8;
    *(v45 + 24) = v24;
    if (v44 | v42)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v42;
      v0[5] = v44;
    }

    swift_task_create();
  }

  (*(v0[18] + 8))(v0[21], v0[17]);
  v0[39] = sub_1D8B15E70();
  v46 = sub_1D89B5998(&qword_1ECA66938, MEMORY[0x1E69E7E48]);
  v47 = swift_task_alloc();
  v0[40] = v47;
  *v47 = v0;
  v47[1] = sub_1D89B24D8;
  v48 = v0[22];
  v49 = v0[23];

  return MEMORY[0x1EEE6D8C8](v48, v49, v46);
}

uint64_t sub_1D89B2D58()
{
  v0[10] = v0[41];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  swift_willThrowTypedImpl();

  v1 = v0[34];
  v2 = v0[35];

  return MEMORY[0x1EEE6DFA0](sub_1D89B2DF4, v1, v2);
}

uint64_t sub_1D89B2DF4()
{
  v21 = v0;
  v1 = v0[41];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v1;
  v9 = sub_1D8B151C0();
  v10 = sub_1D8B16210();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[41];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1D8783000, v9, v10, "Could not start location updates %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA721330](v13, -1, -1);
    MEMORY[0x1DA721330](v12, -1, -1);
  }

  else
  {
    v17 = v0[41];
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D89B3020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1D8B135E0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_1D8B15E80();
  v6[12] = sub_1D8B15E70();
  v9 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89B3118, v9, v8);
}

uint64_t sub_1D89B3118()
{
  v1 = v0[7];
  v2 = v0[6];
  v3 = v1;
  sub_1D89AFB38(v1);
  v4 = sub_1D8B13570() & 1;
  v5 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__isStationary;
  if (v4 == *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__isStationary))
  {

    *(v2 + v5) = v4;
  }

  else
  {
    v6 = v0[6];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    v0[2] = v6;
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13510();
  }

  v8 = v0[6];
  swift_getKeyPath();
  v0[3] = v8;
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v0[4] = v8;
  swift_getKeyPath();
  sub_1D8B13540();

  v10 = *(v8 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v29 = v1;
    v30 = v0[11];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v31 = v0[7];
    v16 = v0[6];
    *(v8 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count) = v12;
    v0[5] = v16;
    swift_getKeyPath();
    sub_1D8B13530();

    (*(v13 + 16))(v30, v15, v14);
    v17 = v31;
    v18 = sub_1D8B151C0();
    v19 = sub_1D8B161F0();

    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[10];
    v21 = v0[11];
    v23 = v0[9];
    if (v20)
    {
      v24 = v0[7];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      *(v25 + 4) = v24;
      *v26 = v29;
      *(v25 + 12) = 1024;
      v27 = v24;
      LODWORD(v24) = sub_1D8B13570() & 1;
      (*(v22 + 8))(v21, v23);
      *(v25 + 14) = v24;
      _os_log_impl(&dword_1D8783000, v18, v19, "location update: %@  is stationary: %{BOOL}d", v25, 0x12u);
      sub_1D87A14E4(v26, &qword_1ECA63128);
      MEMORY[0x1DA721330](v26, -1, -1);
      MEMORY[0x1DA721330](v25, -1, -1);
    }

    else
    {
      (*(v22 + 8))(v0[11], v0[9]);
    }

    v28 = v0[1];

    return v28();
  }

  return result;
}

uint64_t sub_1D89B34F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66928);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA668D0);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = sub_1D8B15E80();
  v4[18] = sub_1D8B15E70();
  v8 = sub_1D8B15E00();
  v4[19] = v8;
  v4[20] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D89B36A4, v8, v7);
}

uint64_t sub_1D89B36A4()
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v0[21] = qword_1EE0E54C8;
  if (sub_1D8B0AAA4())
  {
    goto LABEL_6;
  }

  if ([objc_opt_self() headingAvailable])
  {
    [*(v0[8] + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager) startUpdatingHeading];
LABEL_6:
    sub_1D89B4CE4(v0[16]);
    sub_1D8B15F10();
    v1 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__updatesStarted;
    v0[22] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler___observationRegistrar;
    v0[23] = v1;
    v2 = sub_1D8B15E70();
    v0[24] = v2;
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_1D89B390C;
    v4 = v0[11];
    v5 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 6, v2, v5, v4);
  }

  v6 = sub_1D8B151C0();
  v7 = sub_1D8B16210();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D8783000, v6, v7, "Heading not available on this system", v8, 2u);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D89B390C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D89B3A50, v3, v2);
}

uint64_t sub_1D89B3A50()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[23];
    v3 = v0[8];
    swift_getKeyPath();
    v0[7] = v3;
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13520();

    if (*(v3 + v2))
    {
      v4 = v0[9];
      v5 = v0[10];
      v6 = v0[8];
      v7 = sub_1D8B15EA0();
      v8 = *(v7 - 8);
      (*(v8 + 56))(v5, 1, 1, v7);

      v9 = v1;
      v10 = sub_1D8B15E70();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v6;
      v11[5] = v9;
      sub_1D87A0E38(v5, v4, &unk_1ECA675E0);
      LODWORD(v4) = (*(v8 + 48))(v4, 1, v7);

      v13 = v0[9];
      if (v4 == 1)
      {
        sub_1D87A14E4(v0[9], &unk_1ECA675E0);
      }

      else
      {
        sub_1D8B15E90();
        (*(v8 + 8))(v13, v7);
      }

      v21 = v11[2];
      swift_unknownObjectRetain();

      if (v21)
      {
        swift_getObjectType();
        v22 = sub_1D8B15E00();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      sub_1D87A14E4(v0[10], &unk_1ECA675E0);
      v27 = swift_allocObject();
      *(v27 + 16) = &unk_1D8B301A0;
      *(v27 + 24) = v11;
      if (v24 | v22)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v22;
        v0[5] = v24;
      }

      swift_task_create();

      v28 = sub_1D8B15E70();
      v0[24] = v28;
      v29 = swift_task_alloc();
      v0[25] = v29;
      *v29 = v0;
      v29[1] = sub_1D89B390C;
      v30 = v0[11];
      v31 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D9C8](v0 + 6, v28, v31, v30);
    }

    v14 = sub_1D8B151C0();
    v15 = sub_1D8B161F0();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D8783000, v14, v15, "Location updates bailed", v20, 2u);
      MEMORY[0x1DA721330](v20, -1, -1);
    }

    else
    {
    }

    (*(v18 + 8))(v17, v19);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  if ((*(v0[21] + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno) & 1) == 0)
  {
    [*(v0[8] + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager) stopUpdatingHeading];
  }

  (*(v0[15] + 8))(v0[16], v0[14]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1D89B3F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D8B15E80();
  v5[4] = sub_1D8B15E70();
  v7 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89B3FF8, v7, v6);
}

uint64_t sub_1D89B3FF8()
{
  v1 = *(v0 + 24);

  v2 = v1;
  sub_1D89AF648(v1);
  v3 = *(v0 + 8);

  return v3();
}

void sub_1D89B4068()
{
  v1 = v0;
  v2 = sub_1D8B151C0();
  v3 = sub_1D8B161F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8783000, v2, v3, "📍 Stopping location updates, if applicable.", v4, 2u);
    MEMORY[0x1DA721330](v4, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__updatesStarted))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
    sub_1D8B13510();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__updatesStarted) = 0;
  }
}

void sub_1D89B4230()
{
  sub_1D89B1AE4();
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  if (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__backgroundActivity) == 1)
  {
    *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__backgroundActivity) = 1;
    sub_1D89B0DC4();
  }
}

uint64_t sub_1D89B42F0(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66848);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66858);
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_headingUpdatePublisher);
  if (*(v15 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_isSimulating) == 1)
  {
    v16 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_headingContinuation;
    swift_beginAccess();
    sub_1D87A0E38(v15 + v16, v9, &qword_1ECA66850);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_1D87A14E4(v9, &qword_1ECA66850);
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
      v17 = [objc_allocWithZone(MEMORY[0x1E695FBD0]) initWithHeading:a1 accuracy:20.0];
      if (v17)
      {
        v18 = v17;
        sub_1D8B15EE0();
        (*(v4 + 8))(v6, v3);
      }

      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_1D89B45B4(void *a1)
{
  v2 = v1;
  v4 = a1;
  sub_1D89AFB38(a1);
  swift_getKeyPath();
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  swift_getKeyPath();
  sub_1D8B13540();

  v6 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count) = v8;
    swift_getKeyPath();
    sub_1D8B13530();
  }

  return result;
}

uint64_t sub_1D89B46EC()
{
  v1 = v0;
  v2 = sub_1D8B131D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v27 - v7;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    return 0;
  }

  type metadata accessor for UserDefaultsUtility();
  v9 = swift_allocObject();
  sub_1D8B13550();
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = sub_1D8B15940();
  v12 = [v10 BOOLForKey_];

  swift_setDeallocating();
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore19UserDefaultsUtility___observationRegistrar;
  v14 = sub_1D8B13560();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  swift_deallocClassInstance();
  v15 = [*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_manager) authorizationStatus];
  sub_1D8B131C0();
  swift_getKeyPath();
  v27[1] = v1;
  sub_1D89B5998(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v16 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationAccessRequestDate;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v16, v2);
  sub_1D8B13090();
  v18 = v17;
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v8, v2);
  if (fabs(v18) < 60.0)
  {
    return 0;
  }

  v21 = sub_1D8B151C0();
  v22 = sub_1D8B161F0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109376;
    *(v23 + 4) = v12;
    *(v23 + 8) = 1024;
    *(v23 + 10) = v15 != 0;
    _os_log_impl(&dword_1D8783000, v21, v22, "Checking location prompting criterion… | Onboarded: %{BOOL}d | Existing Authorization: %{BOOL}d", v23, 0xEu);
    MEMORY[0x1DA721330](v23, -1, -1);
  }

  result = 0;
  if (v12 && !v15)
  {
    v24 = sub_1D8B151C0();
    v25 = sub_1D8B161F0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D8783000, v24, v25, "Passed prompting criterion. We should prompt for location.", v26, 2u);
      MEMORY[0x1DA721330](v26, -1, -1);
    }

    return 1;
  }

  return result;
}

uint64_t LocationsHandler.deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationAccessRequestDate;
  v4 = sub_1D8B131D0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler___observationRegistrar;
  v6 = sub_1D8B13560();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t LocationsHandler.__deallocating_deinit()
{
  LocationsHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D89B4CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA668F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA668F8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher____lazy_storage___liveHeadingUpdates;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v13, v12, &qword_1ECA668F8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA668D0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  v16 = sub_1D87A14E4(v12, &qword_1ECA668F8);
  v18[1] = v18;
  MEMORY[0x1EEE9AC00](v16);
  v18[-2] = v1;
  sub_1D881F764(0, &qword_1ECA66900);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  sub_1D8B15F40();
  (*(v15 + 16))(v10, a1, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  swift_beginAccess();
  sub_1D87B6EFC(v10, v1 + v13, &qword_1ECA668F8);
  return swift_endAccess();
}

uint64_t sub_1D89B5010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66850);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66858);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_headingContinuation;
  swift_beginAccess();
  sub_1D87B6EFC(v6, a2 + v9, &qword_1ECA66850);
  return swift_endAccess();
}

uint64_t sub_1D89B51D8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA668E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - v6;
  if (qword_1EE0E42A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D8B151E0();
  __swift_project_value_buffer(v8, qword_1EE0E42B0);
  v9 = a1;
  v10 = sub_1D8B151C0();
  v11 = sub_1D8B16200();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = [v9 authorizationStatus];

    _os_log_impl(&dword_1D8783000, v10, v11, "Location manager changed authorization changed %d", v12, 8u);
    MEMORY[0x1DA721330](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v13 = [v9 authorizationStatus];
  v14 = [v9 accuracyAuthorization];
  v15 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_authorizationInfo;
  *v15 = v13;
  *(v15 + 8) = v14;
  v17[3] = [v9 authorizationStatus];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA668E8);
  sub_1D8B15EE0();
  return (*(v5 + 8))(v7, v4);
}

id sub_1D89B5484()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66908);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA668E8);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66828);
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v22 - v10;
  v12 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher____lazy_storage___liveHeadingUpdates;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA668D0);
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_isSimulating;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v1[v14] = sub_1D8B0AAA4() & 1;
  v15 = &v1[OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_authorizationInfo];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_headingContinuation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66858);
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_authorizationStateUpdates;
  v19 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_authorizationStateContinuation;
  type metadata accessor for CLAuthorizationStatus(0);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8650], v2);
  sub_1D8B15EB0();
  (*(v3 + 8))(v5, v2);
  (*(v9 + 32))(&v1[v18], v11, v23);
  (*(v24 + 32))(&v1[v19], v8, v25);
  updated = type metadata accessor for CLHeadingUpdatePublisher(0);
  v26.receiver = v1;
  v26.super_class = updated;
  return objc_msgSendSuper2(&v26, sel_init);
}

id sub_1D89B583C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLHeadingUpdatePublisher(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D89B5998(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D89B59E0()
{
  result = qword_1EE0E3950;
  if (!qword_1EE0E3950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECA66838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E3950);
  }

  return result;
}

uint64_t sub_1D89B5A44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D89B1E10(a1, v4, v5, v6);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D89B5B38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D89B34F4(a1, v4, v5, v6);
}

uint64_t sub_1D89B5C0C()
{
  result = sub_1D8B151E0();
  if (v1 <= 0x3F)
  {
    result = sub_1D8B131D0();
    if (v2 <= 0x3F)
    {
      result = sub_1D8B13560();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1D89B6004()
{
  sub_1D89B61C0(319, &qword_1EE0E3878, &unk_1ECA668D0);
  if (v0 <= 0x3F)
  {
    sub_1D89B61C0(319, &unk_1EE0E38D8, &unk_1ECA66858);
    if (v1 <= 0x3F)
    {
      sub_1D89B6214(319, &qword_1EE0E3880, MEMORY[0x1E69E8698]);
      if (v2 <= 0x3F)
      {
        sub_1D89B6214(319, &qword_1EE0E38E8, MEMORY[0x1E69E8660]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D89B61C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1D8B16470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D89B6214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CLAuthorizationStatus(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D89B627C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66848);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66858);
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = v16 - v13;
  if ((*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_isSimulating) & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_headingContinuation;
    swift_beginAccess();
    sub_1D87A0E38(v1 + v15, v9, &qword_1ECA66850);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_1D87A14E4(v9, &qword_1ECA66850);
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
      [a1 copy];
      sub_1D8B16540();
      swift_unknownObjectRelease();
      sub_1D881F764(0, &qword_1ECA66900);
      if (swift_dynamicCast())
      {
        v16[1] = v16[0];
        sub_1D8B15EE0();
        (*(v4 + 8))(v6, v3);
      }

      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void sub_1D89B65C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading);
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading) = v2;
  v4 = v2;
}

id sub_1D89B6608()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal);
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal) = v1;
  v4 = v1;

  return sub_1D89AF7E0();
}

uint64_t sub_1D89B6698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8864FBC;

  return sub_1D89B3F60(a1, v4, v5, v7, v6);
}

uint64_t sub_1D89B6758(uint64_t a1)
{
  v4 = *(sub_1D8B135E0() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D886553C;

  return sub_1D89B3020(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D89B6A78()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1ECA66978);
  __swift_project_value_buffer(v0, qword_1ECA66978);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B6BB4()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1ECA66990);
  __swift_project_value_buffer(v0, qword_1ECA66990);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B6D78()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E9940);
  __swift_project_value_buffer(v0, qword_1EE0E9940);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B6E14()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1ECA669D8);
  __swift_project_value_buffer(v0, qword_1ECA669D8);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B6F44()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E9920);
  __swift_project_value_buffer(v0, qword_1EE0E9920);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B70FC()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E42D8);
  __swift_project_value_buffer(v0, qword_1EE0E42D8);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B735C()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E4470);
  __swift_project_value_buffer(v0, qword_1EE0E4470);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B76C8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B7760@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D8B151E0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t LoggingSignposter.autoInterval(_:shouldLog:enableTelemetry:)(unint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, int a5)
{
  v11 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D89B96FC(v5, v13, type metadata accessor for LoggingSignposter);
  type metadata accessor for LoggingSignposter.AutoInterval();
  v14 = swift_allocObject();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)(a1, a2, a3, a4, a5, (v14 + 16));
  sub_1D89B9764(v13, type metadata accessor for LoggingSignposter);
  return v14;
}

uint64_t LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v32 = a4;
  v33 = a1;
  v31 = a6;
  v34 = a3;
  v10 = sub_1D8B15130();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15150();
  sub_1D8B15100();
  v16 = sub_1D8B15150();
  v17 = sub_1D8B16370();
  result = sub_1D8B16460();
  if (a5)
  {
    if ((result & 1) == 0)
    {
LABEL_21:

      LODWORD(v29) = a5;
      v24 = *(v11 + 16);
      v24(v30, v15, v10);
      sub_1D8B151A0();
      swift_allocObject();
      v25 = sub_1D8B15190();
      v26 = type metadata accessor for LoggingSignposter.IntervalState(0);
      v27 = v31;
      v31[3] = v26;
      v27[4] = &off_1F5431C78;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      v24(boxed_opaque_existential_1 + v26[5], v15, v10);
      sub_1D8B131C0();
      sub_1D89B96FC(v7, boxed_opaque_existential_1 + v26[8], type metadata accessor for LoggingSignposter);
      *boxed_opaque_existential_1 = v33;
      boxed_opaque_existential_1[1] = a2;
      *(boxed_opaque_existential_1 + 16) = v34;
      *(boxed_opaque_existential_1 + v26[6]) = v25;
      *(boxed_opaque_existential_1 + v26[9]) = v32 & 1;
      *(boxed_opaque_existential_1 + v26[10]) = v29 & 1;
      return (*(v11 + 8))(v15, v10);
    }

    if (v34)
    {
LABEL_10:
      if (!HIDWORD(v33))
      {
        if ((v33 & 0xFFFFF800) == 0xD800)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v33 >> 16 <= 0x10)
        {
          v19 = &v35;
          goto LABEL_14;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v19 = v33;
    if (v33)
    {
LABEL_14:
      v29 = v19;
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_1D8B15110();
      v23 = "enableTelemetry=YES";
LABEL_20:
      _os_signpost_emit_with_name_impl(&dword_1D8783000, v16, v17, v22, v29, v23, v21, 2u);
      MEMORY[0x1DA721330](v21, -1, -1);
      goto LABEL_21;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((v34 & 1) == 0)
  {
    v20 = v33;
    if (!v33)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_19:
    v29 = v20;
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1D8B15110();
    v23 = "";
    goto LABEL_20;
  }

  if (HIDWORD(v33))
  {
    goto LABEL_23;
  }

  if ((v33 & 0xFFFFF800) != 0xD800)
  {
    if (v33 >> 16 > 0x10)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v20 = &v36;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t LoggingSignposter.AutoInterval.deinit()
{
  sub_1D87C1470(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  return v0;
}

uint64_t LoggingSignposter.AutoInterval.__deallocating_deinit()
{
  sub_1D87C1470(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  return swift_deallocClassInstance();
}

uint64_t LoggingSignposter.init(logger:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1D8B151E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(a2, a1, v4);
  v8(v7, a1, v4);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15140();
  return (*(v5 + 8))(a1, v4);
}

void LoggingSignposter.emitEvent(_:shouldLog:)(const char *a1, uint64_t a2, char a3, char a4)
{
  v24[2] = a2;
  v8 = sub_1D8B15130();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15120();
  v25 = v4;
  v12 = sub_1D8B15150();
  v13 = sub_1D8B16380();
  if (sub_1D8B16460())
  {
    v24[1] = a1;
    if (a3)
    {
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_18:
          __break(1u);
          return;
        }

        if (a1 >> 16 <= 0x10)
        {
          v14 = &v26;
          goto LABEL_9;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      if (a1)
      {
        v14 = a1;
LABEL_9:
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = sub_1D8B15110();
        _os_signpost_emit_with_name_impl(&dword_1D8783000, v12, v13, v16, v14, "", v15, 2u);
        MEMORY[0x1DA721330](v15, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_10:

  (*(v9 + 8))(v11, v8);
  if (a4)
  {
    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16200();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      v21 = sub_1D8B16730();
      v23 = sub_1D89AC714(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D8783000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA721330](v20, -1, -1);
      MEMORY[0x1DA721330](v19, -1, -1);
    }
  }
}

void LoggingSignposter.emitEvent(_:_:shouldLog:)(const char *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, int a6)
{
  v34 = a4;
  v32 = a2;
  v11 = sub_1D8B15130();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoggingSignposter(0);

  sub_1D8B15120();
  v33 = v6;
  v15 = sub_1D8B15150();
  v16 = sub_1D8B16380();
  if (sub_1D8B16460())
  {
    v29 = a6;
    v31 = a3;
    v30 = a1;
    if (a3)
    {
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_19:
          __break(1u);
          return;
        }

        if (a1 >> 16 <= 0x10)
        {

          v17 = &v35;
LABEL_11:
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v35 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_1D89AC714(v34, a5, &v35);
          v20 = sub_1D8B15110();
          _os_signpost_emit_with_name_impl(&dword_1D8783000, v15, v16, v20, v17, " %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x1DA721330](v19, -1, -1);
          MEMORY[0x1DA721330](v18, -1, -1);

          (*(v12 + 8))(v14, v11);
          if ((v29 & 1) == 0)
          {
            return;
          }

          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {

      if (a1)
      {
        v17 = a1;
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  (*(v12 + 8))(v14, v11);
  if ((a6 & 1) == 0)
  {
    return;
  }

LABEL_12:

  v21 = sub_1D8B151C0();
  v22 = sub_1D8B16200();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315394;
    v25 = sub_1D8B16730();
    v27 = sub_1D89AC714(v25, v26, &v35);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1D89AC714(v34, a5, &v35);
    _os_log_impl(&dword_1D8783000, v21, v22, "%s %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v24, -1, -1);
    MEMORY[0x1DA721330](v23, -1, -1);
  }
}

void sub_1D89B8538()
{
  v1 = v0;
  v2 = type metadata accessor for LoggingSignposter.IntervalState(0);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B131D0();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B15170();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  v11 = sub_1D8B15130();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  v17 = *(v0 + *(v2 + 40));
  type metadata accessor for LoggingSignposter(0);
  v18 = *v0;
  v19 = *(v0 + 16);
  v58 = v2;
  v20 = sub_1D8B15150();
  if (v17 != 1)
  {
    sub_1D8B15180();
    v23 = sub_1D8B16360();
    if ((sub_1D8B16460() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v19)
    {
      if (v18 >> 32)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v26 = v51;
      if ((v18 & 0xFFFFF800) == 0xD800)
      {
LABEL_40:
        __break(1u);
        return;
      }

      if (v18 >> 16 > 0x10)
      {
        goto LABEL_38;
      }

      v24 = &v62;
      v25 = v52;
    }

    else
    {
      if (!v18)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v24 = v18;
      v26 = v51;
      v25 = v52;
    }

    sub_1D8B151B0();

    v30 = v53;
    if ((*(v25 + 88))(v26, v53) == *MEMORY[0x1E69E93E8])
    {
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v25 + 8))(v26, v30);
      v31 = "";
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v34 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v20, v23, v34, v24, v31, v32, 2u);
    goto LABEL_27;
  }

  sub_1D8B15180();
  v21 = sub_1D8B16360();
  if ((sub_1D8B16460() & 1) == 0)
  {
    v14 = v16;
    goto LABEL_28;
  }

  if (v19)
  {
    if (!(v18 >> 32))
    {
      if ((v18 & 0xFFFFF800) == 0xD800)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v18 >> 16 <= 0x10)
      {
        v22 = &v61;
        goto LABEL_15;
      }

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (!v18)
  {
    __break(1u);
    goto LABEL_34;
  }

  v22 = v18;
LABEL_15:
  v27 = v52;

  sub_1D8B151B0();

  v28 = v53;
  if ((*(v27 + 88))(v10, v53) == *MEMORY[0x1E69E93E8])
  {
    v29 = "[Error] Interval already ended";
  }

  else
  {
    (*(v27 + 8))(v10, v28);
    v29 = "enableTelemetry=YES";
  }

  v32 = swift_slowAlloc();
  *v32 = 0;
  v33 = sub_1D8B15110();
  _os_signpost_emit_with_name_impl(&dword_1D8783000, v20, v21, v33, v22, v29, v32, 2u);
  v14 = v16;
LABEL_27:
  MEMORY[0x1DA721330](v32, -1, -1);
LABEL_28:
  v35 = v58;

  (*(v59 + 8))(v14, v60);
  if (*(v1 + *(v35 + 36)) == 1)
  {
    v36 = v54;
    sub_1D8B131C0();
    sub_1D8B13090();
    v38 = v37;
    (*(v55 + 8))(v36, v56);
    v39 = v57;
    sub_1D89B96FC(v1, v57, type metadata accessor for LoggingSignposter.IntervalState);
    v40 = sub_1D8B151C0();
    v41 = sub_1D8B16200();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136315394;
      v44 = sub_1D8B16730();
      v45 = v39;
      v46 = v44;
      v48 = v47;
      sub_1D89B9764(v45, type metadata accessor for LoggingSignposter.IntervalState);
      v49 = sub_1D89AC714(v46, v48, &v63);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2048;
      *(v42 + 14) = v38;
      _os_log_impl(&dword_1D8783000, v40, v41, "%s (took %f seconds)", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1DA721330](v43, -1, -1);
      MEMORY[0x1DA721330](v42, -1, -1);
    }

    else
    {

      sub_1D89B9764(v39, type metadata accessor for LoggingSignposter.IntervalState);
    }
  }
}

uint64_t sub_1D89B8C6C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1D8B151E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = type metadata accessor for LoggingSignposter(0);
  __swift_allocate_value_buffer(v14, a2);
  v15 = __swift_project_value_buffer(v14, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, a4);
  v17 = *(v8 + 16);
  v17(v13, v16, v7);
  v17(v15, v13, v7);
  v17(v11, v13, v7);
  sub_1D8B15140();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1D89B91AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LoggingSignposter(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_1D89B96FC(v6, a3, type metadata accessor for LoggingSignposter);
}

uint64_t sub_1D89B94F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

uint64_t sub_1D89B9550()
{
  result = sub_1D8B151E0();
  if (v1 <= 0x3F)
  {
    result = sub_1D8B15160();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D89B9628()
{
  result = sub_1D8B15130();
  if (v1 <= 0x3F)
  {
    result = sub_1D8B151A0();
    if (v2 <= 0x3F)
    {
      result = sub_1D8B131D0();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for LoggingSignposter(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D89B96FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89B9764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D89B9820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 8) muid];
  sub_1D8B16B50();
  v5 = objc_opt_self();
  v6 = sub_1D8B15940();

  [v5 captureUserAction:a2 target:a3 value:v6];
}

void static MapsAnalyticsReporter.dismissedDisambiguationList(results:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 112);
      v19[6] = *(v4 + 96);
      v19[7] = v5;
      v20 = *(v4 + 128);
      v6 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v6;
      v7 = *(v4 + 48);
      v19[2] = *(v4 + 32);
      v19[3] = v7;
      v8 = *(v4 + 80);
      v19[4] = *(v4 + 64);
      v19[5] = v8;
      v9 = *(&v19[0] + 1);
      sub_1D8883B74(v19, v18);
      v18[0] = [v9 muid];
      v10 = sub_1D8B16B50();
      v12 = v11;
      sub_1D8883BD0(v19);
      v21 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D87F3F54((v13 > 1), v14 + 1, 1);
        v2 = v21;
      }

      *(v2 + 16) = v14 + 1;
      v15 = v2 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v4 += 136;
      --v1;
    }

    while (v1);
  }

  *&v19[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D88F0E40();
  sub_1D8B15810();

  v16 = objc_opt_self();
  v17 = sub_1D8B15940();

  [v16 captureUserAction:47 target:143 value:v17];
}

void sub_1D89B9AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v3 = a1 + 64;
    v4 = v1;
    do
    {
      v5 = *(v3 - 32);

      v6 = v5;

      [v6 muid];
      v7 = sub_1D8B16B50();
      v9 = v8;

      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F3F54((v10 > 1), v11 + 1, 1);
      }

      v3 += 40;
      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      --v4;
    }

    while (v4);
  }

  if (v1 == 1)
  {
    v13 = 21;
  }

  else
  {
    v13 = 487;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D88F0E40();
  sub_1D8B15810();

  v14 = objc_opt_self();
  v15 = sub_1D8B15940();

  [v14 captureUserAction:v13 target:144 value:v15];
}

void _s22VisualIntelligenceCore21MapsAnalyticsReporterV06tappedD11ResultsPill7resultsySayAA9GeoLookupC0kL6ResultVG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v3 = a1 + 64;
    v4 = v1;
    do
    {
      v5 = *(v3 - 32);

      v6 = v5;

      [v6 muid];
      v7 = sub_1D8B16B50();
      v9 = v8;

      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F3F54((v10 > 1), v11 + 1, 1);
      }

      v3 += 40;
      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      --v4;
    }

    while (v4);
  }

  if (v1 == 1)
  {
    v13 = 488;
  }

  else
  {
    v13 = 490;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D88F0E40();
  sub_1D8B15810();

  v14 = objc_opt_self();
  v15 = sub_1D8B15940();

  [v14 captureUserAction:v13 target:144 value:v15];
}

void _s22VisualIntelligenceCore21MapsAnalyticsReporterV27displayedDisambiguationList7resultsySayAA23GeoLookupResultBusinessVG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 112);
      v19[6] = *(v4 + 96);
      v19[7] = v5;
      v20 = *(v4 + 128);
      v6 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v6;
      v7 = *(v4 + 48);
      v19[2] = *(v4 + 32);
      v19[3] = v7;
      v8 = *(v4 + 80);
      v19[4] = *(v4 + 64);
      v19[5] = v8;
      v9 = *(&v19[0] + 1);
      sub_1D8883B74(v19, v18);
      v18[0] = [v9 muid];
      v10 = sub_1D8B16B50();
      v12 = v11;
      sub_1D8883BD0(v19);
      v21 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D87F3F54((v13 > 1), v14 + 1, 1);
        v2 = v21;
      }

      *(v2 + 16) = v14 + 1;
      v15 = v2 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v4 += 136;
      --v1;
    }

    while (v1);
  }

  *&v19[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D88F0E40();
  sub_1D8B15810();

  v16 = objc_opt_self();
  v17 = sub_1D8B15940();

  [v16 captureUserAction:21 target:143 value:v17];
}

uint64_t dispatch thunk of OutputStreamProviding.makeOutputStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of OutputStreamProviding.makeOutputStream(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D8864FBC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D89BA344(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BA448, v1, 0);
}

uint64_t sub_1D89BA448()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  (*(v2 + 16))(v1, v5 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_outputStreamBufferingPolicy, v4);
  sub_1D88447A0(v3);
  v7 = sub_1D89BAE20(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
  sub_1D88ADC7C(v1, v3, v5, v7, v6);
  sub_1D87A14E4(v3, &qword_1ECA64290);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D89BA598(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BA638, v2, 0);
}

uint64_t sub_1D89BA638()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D88447A0(v1);
  v5 = sub_1D89BAE20(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
  sub_1D88ADC7C(v3, v1, v2, v5, v4);
  sub_1D87A14E4(v1, &qword_1ECA64290);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D89BA730(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D889E050, v1, 0);
}

uint64_t sub_1D89BA750(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D89BA774, v2, 0);
}

uint64_t sub_1D89BA774()
{
  sub_1D889559C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89BA7D8()
{
  swift_beginAccess();
  sub_1D8B13240();
  sub_1D8B15F00();
  sub_1D89BAE20(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B15770();

  swift_getWitnessTable();
  sub_1D8B15C10();

  return v0;
}

uint64_t sub_1D89BA914()
{
  sub_1D89BA7D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D89BA960(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BAA64, v1, 0);
}

uint64_t sub_1D89BAA64()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  (*(v2 + 16))(v1, v5 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy, v4);
  sub_1D8AA7C74(v3);
  v7 = sub_1D89BAE20(&qword_1EE0E7FA8, type metadata accessor for BundleSelector);
  sub_1D88AE494(v1, v3, v5, v7, v6);
  sub_1D87A14E4(v3, &qword_1ECA640E8);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D89BABA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BAC48, v2, 0);
}

uint64_t sub_1D89BAC48()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D8AA7C74(v1);
  v5 = sub_1D89BAE20(&qword_1EE0E7FA8, type metadata accessor for BundleSelector);
  sub_1D88AE494(v3, v1, v2, v5, v4);
  sub_1D87A14E4(v1, &qword_1ECA640E8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D89BAD34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D889DFC4, v1, 0);
}

uint64_t sub_1D89BAD54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D89BAD78, v2, 0);
}

uint64_t sub_1D89BAD78()
{
  sub_1D8895C10(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D89BAE20(unint64_t *a1, void (*a2)(uint64_t))
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

void *OverlaySupportData.crDocument.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

__n128 OverlaySupportData.frameMetadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t _s22VisualIntelligenceCore18OverlaySupportDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 64);
  v22 = *(a1 + 48);
  v23 = v4;
  v24 = *(a1 + 80);
  v5 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v5;
  v6 = *(a1 + 96);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 80);
  v28 = *(a2 + 64);
  v29 = v11;
  v12 = *(a2 + 48);
  v26 = v10;
  v27 = v12;
  v25 = v9;
  v13 = *(a2 + 96);
  if ((sub_1D88E3604(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    sub_1D89BB0DC();
    v14 = v8;
    v15 = v3;
    v16 = sub_1D8B16400();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v19[2] = v22;
  v19[3] = v23;
  v19[4] = v24;
  v19[0] = v20;
  v19[1] = v21;
  v18[2] = v27;
  v18[3] = v28;
  v18[4] = v29;
  v18[0] = v25;
  v18[1] = v26;
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v19, v18))
  {
    return 0;
  }

  return sub_1D88E3618(v6, v13);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D89BB02C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D89BB074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D89BB0DC()
{
  result = qword_1EE0E36E8;
  if (!qword_1EE0E36E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E36E8);
  }

  return result;
}

uint64_t sub_1D89BB128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001D8B46410 == a2;
  if (v4 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000015 && 0x80000001D8B46430 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000017 && 0x80000001D8B46450 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000014 && 0x80000001D8B46470 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0x7265706F2E6D6F63 && a2 == 0xEC00000078672E61 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000015 && 0x80000001D8B46490 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000019 && 0x80000001D8B464B0 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001D8B464D0 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD00000000000001DLL && 0x80000001D8B464F0 == a2)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

uint64_t sub_1D89BB3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D89BB538;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1D89BB538(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t sub_1D89BB634()
{
  result = sub_1D8B151E0();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D89BB6F8()
{
  swift_unknownObjectRelease();
  v1 = qword_1ECA66BD0;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D89BB778()
{
  sub_1D89BB6F8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D89BB7BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore24RateLimitingWrapperErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D89BB844(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D89BB8A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D89BB8F0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1D89BB928()
{
  sub_1D89BBC8C();
  if (v0 <= 0x3F)
  {
    sub_1D89BBCEC();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getTupleTypeMetadata2();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D89BB9E4(unsigned __int8 *a1, unsigned int a2)
{
  v4 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v5 = v4 | 1;
  if ((v4 | 1) <= 3)
  {
    v6 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v6 = 2;
  }

  if (v6 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v6 < 0x100)
  {
    v7 = 1;
  }

  if (v6 >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = *&a1[v5];
      if (*&a1[v5])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = *&a1[v5];
      if (v9)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v13 = a1[v4];
    if (v13 >= 3)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = a1[v5];
  if (!a1[v5])
  {
    goto LABEL_27;
  }

LABEL_23:
  v11 = (v9 - 1) << (8 * v5);
  if (v5 <= 3)
  {
    v12 = *a1;
  }

  else
  {
    v11 = 0;
    v12 = *a1;
  }

  return (v12 | v11) + 254;
}

void sub_1D89BBB08(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  v7 = v6 | 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v7] = 0;
    }

    else if (v10)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v6] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v7 <= 3)
  {
    v8 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = a2 - 254;
  bzero(a1, v6 | 1);
  if (v7 <= 3)
  {
    v12 = (v11 >> 8) + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v7 <= 3)
  {
    *a1 = v11;
    if (v10 > 1)
    {
LABEL_21:
      if (v10 == 2)
      {
        *&a1[v7] = v12;
      }

      else
      {
        *&a1[v7] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v11;
    if (v10 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v10)
  {
    a1[v7] = v12;
  }
}

void sub_1D89BBC8C()
{
  if (!qword_1ECA66D70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA66D70);
    }
  }
}

uint64_t sub_1D89BBCEC()
{
  result = qword_1ECA66D78;
  if (!qword_1ECA66D78)
  {
    result = MEMORY[0x1E69E63B0];
    atomic_store(MEMORY[0x1E69E63B0], &qword_1ECA66D78);
  }

  return result;
}

uint64_t sub_1D89BBD1C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66DB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89BDE04();
  sub_1D8B16DD0();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D8913248(&qword_1ECA65470);
  sub_1D8B16AE0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D89BBEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D8B46640 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D89BBF4C(uint64_t a1)
{
  v2 = sub_1D89BDE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89BBF88(uint64_t a1)
{
  v2 = sub_1D89BDE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D89BBFC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D89BD824(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D89BC00C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D8B16720();

  MEMORY[0x1DA71EFA0](v1, v2);
  return 0xD000000000000011;
}

uint64_t sub_1D89BC088(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D89BC0A8, 0, 0);
}

uint64_t sub_1D89BC0A8()
{
  v0[3].i64[1] = MEMORY[0x1E69E7CC0];
  v4 = v0[4];
  sub_1D8B13640();
  v1 = swift_task_alloc();
  v0[5].i64[0] = v1;
  v1[1] = vextq_s8(v4, v4, 8uLL);
  v1[2].i64[0] = &v0[3].i64[1];
  v2 = swift_task_alloc();
  v0[5].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1D89BC19C;

  return sub_1D89BCCAC(v0[1].i64, &unk_1D8B30770, v1);
}

uint64_t sub_1D89BC19C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D89BC420;
  }

  else
  {
    v2 = sub_1D89BC2CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D89BC2CC()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v2, 0);
    v3 = v14;
    v4 = v1 + 40;
    do
    {
      v5 = sub_1D8B159F0();
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1D87F3F54((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 8);

  return v12(v3);
}

uint64_t sub_1D89BC420()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89BC48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D89BC4B0, 0, 0);
}

uint64_t sub_1D89BC4B0()
{
  v1 = sub_1D89BD9CC(v0[3]);
  v3 = v2;
  sub_1D8B12B90();
  swift_allocObject();
  sub_1D8B12B80();
  sub_1D89BDD8C();
  sub_1D8B12B70();
  v5 = v0[5];
  sub_1D87A1598(v1, v3);

  *v5 = v0[2];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D89BC5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1D8B13000();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1D8B136D0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66D90);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BC750, 0, 0);
}

uint64_t sub_1D89BC750()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1D8B136B0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = sub_1D8B13650();
  MEMORY[0x1DA71CBA0](v5);
  (*(v3 + 8))(v1, v2);
  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_1D89BC930;
  v7 = *(v0 + 64);

  return v9(v7);
}

uint64_t sub_1D89BC930()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D89BCB3C;
  }

  else
  {
    v5 = sub_1D89BCAA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D89BCAA0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D89BCB3C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D89BCBFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D89BC48C(a1, v4, v5, v6);
}

uint64_t sub_1D89BCCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1D8B13660();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BCD88, 0, 0);
}

uint64_t sub_1D89BCD88()
{
  v1 = v0[3];
  sub_1D8B136A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63498);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_1D8B1AB90;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  *(v2 + 32) = sub_1D8B13670();
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1D89BCE9C;

  return MEMORY[0x1EEE1EF98](v2);
}

uint64_t sub_1D89BCE9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1D89BD248;
  }

  else
  {

    v4 = sub_1D89BCFB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D89BCFB8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v7 = (*MEMORY[0x1E69B23E0] + MEMORY[0x1E69B23E0]);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_1D89BD0A0;

  return v7(&unk_1D8B30788, v3);
}

uint64_t sub_1D89BD0A0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1D89BD484;
  }

  else
  {

    v2 = sub_1D89BD1BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D89BD1BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89BD248()
{

  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    (*(v6 + 32))(v4, v3, v7);
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69B2140])
    {
      v10 = *(v0 + 56);
      v9 = *(v0 + 64);
      (*(v10 + 96))(v9, *(v0 + 48));
      v11 = *v9;
      v12 = v9[1];
      sub_1D89BD724();
      swift_allocError();
      *v13 = v11;
      v13[1] = v12;
      swift_willThrow();
      (*(v10 + 8))(*(v0 + 72), *(v0 + 48));
    }

    else
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 48);
      v16 = *(*(v0 + 56) + 8);
      v16(*(v0 + 64), v15);
      sub_1D89BD6CC();
      swift_allocError();
      v8(v17, v14, v15);
      swift_willThrow();
      v16(*(v0 + 72), *(v0 + 48));
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D89BD484()
{

  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    (*(v6 + 32))(v4, v3, v7);
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69B2140])
    {
      v10 = *(v0 + 56);
      v9 = *(v0 + 64);
      (*(v10 + 96))(v9, *(v0 + 48));
      v11 = *v9;
      v12 = v9[1];
      sub_1D89BD724();
      swift_allocError();
      *v13 = v11;
      v13[1] = v12;
      swift_willThrow();
      (*(v10 + 8))(*(v0 + 72), *(v0 + 48));
    }

    else
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 48);
      v16 = *(*(v0 + 56) + 8);
      v16(*(v0 + 64), v15);
      sub_1D89BD6CC();
      swift_allocError();
      v8(v17, v14, v15);
      swift_willThrow();
      v16(*(v0 + 72), *(v0 + 48));
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

unint64_t sub_1D89BD6CC()
{
  result = qword_1ECA66D80;
  if (!qword_1ECA66D80)
  {
    sub_1D8B13660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66D80);
  }

  return result;
}

unint64_t sub_1D89BD724()
{
  result = qword_1ECA66D88;
  if (!qword_1ECA66D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66D88);
  }

  return result;
}

uint64_t sub_1D89BD778()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D886553C;

  return sub_1D89BC5C8(v2, v3, v5, v4);
}

void *sub_1D89BD824(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66DA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89BDE04();
  sub_1D8B16DB0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
    sub_1D8913248(&qword_1ECA65490);
    sub_1D8B16A10();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1D89BD9CC(uint64_t a1)
{
  v2 = sub_1D8B12F10();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D8B13000();
  v28 = *(v26 - 8);
  v6 = MEMORY[0x1EEE9AC00](v26);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  strcpy(v27, "locale/");
  v27[1] = 0xE700000000000000;
  v10 = sub_1D8B15970();
  MEMORY[0x1DA71EFA0](v10);

  MEMORY[0x1DA71EFA0](47, 0xE100000000000000);
  MEMORY[0x1DA71EFA0](0x617461646174656DLL, 0xED00006E6F736A2ELL);
  v11 = *(v3 + 104);
  v22 = *MEMORY[0x1E6968F70];
  v21 = v11;
  v11(v5);
  sub_1D87C12C0();
  v24 = a1;
  sub_1D8B12FE0();
  v12 = *(v3 + 8);
  v12(v5, v2);

  v13 = v25;
  v14 = sub_1D8B13680();
  if (v13)
  {
    v15 = *(v28 + 8);
    v16 = v9;
    v17 = v26;
    v28 += 8;
    v25 = v15;
    v15(v16, v26);
    strcpy(v27, "metadata.json");
    HIWORD(v27[1]) = -4864;
    v21(v5, v22, v2);
    v18 = v23;
    sub_1D8B12FE0();
    v12(v5, v2);
    v19 = sub_1D8B13680();
    v25(v18, v17);
  }

  else
  {
    v19 = v14;
    (*(v28 + 8))(v9, v26);
  }

  return v19;
}