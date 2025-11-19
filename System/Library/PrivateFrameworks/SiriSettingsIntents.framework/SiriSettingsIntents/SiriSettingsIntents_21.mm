void *NumericSettingModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v74 = v101;
  v75 = a2;
  v77 = a1;
  v76 = 31;
  v100 = 0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE718, &qword_268FAC860);
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v77);
  v82 = &v27 - v81;
  v100 = v2;
  v84 = v2[3];
  v85 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v84);
  sub_268F665E8();
  v3 = v83;
  sub_268F9B834();
  v86 = v3;
  v87 = v3;
  if (v3)
  {
    v29 = v87;
    v30 = 0;
    v28 = 0;
    v27 = v87;
    result = __swift_destroy_boxed_opaque_existential_0(v77);
    if (v28)
    {
      result = sub_268CD9D30(v101);
    }

    if ((v28 & 2) != 0)
    {
      result = sub_268CD9D30(v102);
    }

    if ((v28 & 4) != 0)
    {
      result = sub_268CD9D30(v103);
    }

    if ((v28 & 8) != 0)
    {
      result = sub_268CD9D30(v104);
    }

    if ((v28 & 0x10) != 0)
    {
      result = sub_268CD9D30(v105);
    }

    if ((v28 & 0x400) != 0)
    {
      return sub_268CD9D30(v106);
    }
  }

  else
  {
    v99 = 0;
    v4 = sub_268F9B614();
    v70 = 0;
    v71 = v4;
    v72 = v5;
    v73 = 0;
    v101[0] = v4;
    v101[1] = v5;
    v98 = 1;
    v6 = sub_268F9B614();
    v66 = 0;
    v67 = v6;
    v68 = v7;
    v69 = 0;
    v102[0] = v6;
    v102[1] = v7;
    v97 = 2;
    v8 = sub_268F9B614();
    v62 = 0;
    v63 = v8;
    v64 = v9;
    v65 = 0;
    v103[0] = v8;
    v103[1] = v9;
    v96 = 3;
    v10 = sub_268F9B614();
    v58 = 0;
    v59 = v10;
    v60 = v11;
    v61 = 0;
    v104[0] = v10;
    v104[1] = v11;
    v95 = 4;
    v12 = sub_268F9B614();
    v54 = 0;
    v55 = v12;
    v56 = v13;
    v57 = 0;
    v105[0] = v12;
    v105[1] = v13;
    v94 = 5;
    sub_268F9B634();
    v51 = 0;
    v52 = v14;
    v53 = 0;
    v105[2] = v14;
    v93 = 6;
    sub_268F9B634();
    v48 = 0;
    v49 = v15;
    v50 = 0;
    v105[3] = v15;
    v92 = 7;
    sub_268F9B634();
    v45 = 0;
    v46 = v16;
    v47 = 0;
    v105[4] = v16;
    v91 = 8;
    sub_268F9B634();
    v42 = 0;
    v43 = v17;
    v44 = 0;
    v105[5] = v17;
    v90 = 9;
    sub_268F9B634();
    v39 = 0;
    v40 = v18;
    v41 = 0;
    v74[14] = v18;
    v89 = 10;
    v19 = sub_268F9B5F4();
    v35 = 0;
    v36 = v19;
    v37 = v20;
    v38 = 0;
    v21 = v74;
    v74[15] = v19;
    v21[16] = v20;
    v88 = 11;
    v22 = sub_268F9B644();
    v32 = 0;
    v33 = v22;
    v34 = 0;
    v23 = v78;
    v24 = v82;
    v25 = v79;
    v31 = v101;
    v74[17] = v33;
    (*(v25 + 8))(v24, v23);
    sub_268D34CD8(v31, v75);
    __swift_destroy_boxed_opaque_existential_0(v77);
    return sub_268D34F58(v31);
  }

  return result;
}

unint64_t sub_268F67D70()
{
  v2 = qword_2802DE720;
  if (!qword_2802DE720)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE720);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F67E04()
{
  v2 = qword_2802DE728;
  if (!qword_2802DE728)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F67E80(uint64_t a1)
{
  result = sub_268F67EAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F67EAC()
{
  v2 = qword_2802DE730;
  if (!qword_2802DE730)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F67F58(uint64_t a1)
{
  result = sub_268F67F84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F67F84()
{
  v2 = qword_2802DE738;
  if (!qword_2802DE738)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE738);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F68108(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 145))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 144) ^ 0xFF;
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268F68200(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 145);
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 144) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

uint64_t sub_268F6852C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268F68644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_268F68850(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268F689B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_268F68BF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_268F68D10(void *result, int a2, int a3)
{
  v3 = result + 18;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[17] = 0;
    result[16] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[1] = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_268F68F18(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF4)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 11) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 244;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 12;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268F69080(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF4)
  {
    v5 = ((a3 + 11) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF4)
  {
    v4 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

unint64_t sub_268F692A8()
{
  v2 = qword_2802DE740;
  if (!qword_2802DE740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F6933C()
{
  v2 = qword_2802DE748;
  if (!qword_2802DE748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F693D0()
{
  v2 = qword_2802DE750;
  if (!qword_2802DE750)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69464()
{
  v2 = qword_2802DE758;
  if (!qword_2802DE758)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F694F8()
{
  v2 = qword_2802DE760;
  if (!qword_2802DE760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F6958C()
{
  v2 = qword_2802DE768;
  if (!qword_2802DE768)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69620()
{
  v2 = qword_2802DE770;
  if (!qword_2802DE770)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F696B4()
{
  v2 = qword_2802DE778;
  if (!qword_2802DE778)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69748()
{
  v2 = qword_2802DE780;
  if (!qword_2802DE780)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F697DC()
{
  v2 = qword_2802DE788;
  if (!qword_2802DE788)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69870()
{
  v2 = qword_2802DE790;
  if (!qword_2802DE790)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69904()
{
  v2 = qword_2802DE798;
  if (!qword_2802DE798)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69998()
{
  v2 = qword_2802DE7A0;
  if (!qword_2802DE7A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69A2C()
{
  v2 = qword_2802DE7A8;
  if (!qword_2802DE7A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69AC0()
{
  v2 = qword_2802DE7B0;
  if (!qword_2802DE7B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F69B3C()
{
  if (qword_280FE55A0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8218;
}

uint64_t sub_268F69B9C()
{
  type metadata accessor for GetBatteryHandler();
  v0 = sub_268CDC590();
  result = sub_268F69C08(v0, 1, 2);
  qword_280FE8218 = result;
  return result;
}

uint64_t sub_268F69C68()
{
  v1 = *sub_268F69B3C();

  return v1;
}

uint64_t sub_268F69CA0(uint64_t a1, char a2, char a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 25) = a3;

  return v8;
}

uint64_t sub_268F69D24(void *a1, void (*a2)(void), uint64_t a3)
{
  v186 = a3;
  v187 = a2;
  v200 = a1;
  v190 = 0;
  v219 = 0;
  v217 = 0;
  v216 = 0;
  v213 = 0;
  v188 = 0;
  v202 = 0;
  v222 = a1;
  v220 = a2;
  v221 = a3;
  v197 = sub_268F9B284();
  v199 = *sub_268DC7AE8();
  v3 = v199;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v189 = v195;
  v196 = sub_268F9B734();
  v193 = v4;
  v5 = v200;
  v218 = v200;
  v191 = sub_268D2E630();
  sub_268D59CAC();
  v192 = sub_268F9AE74();
  v194 = v6;
  v193[3] = MEMORY[0x277D837D0];
  v7 = sub_268CDD224();
  v8 = v192;
  v9 = v193;
  v10 = v194;
  v11 = v7;
  v12 = v196;
  v193[4] = v11;
  *v9 = v8;
  v9[1] = v10;
  sub_268CD0F7C();
  v198 = v12;
  sub_268F9AC14();

  v201 = [v200 settingMetadata];
  if (!v201)
  {
    v61[1] = sub_268F9B294();
    v63 = *sub_268DC7AE8();
    v58 = v63;
    v62 = sub_268F9B734();
    sub_268F9AC14();

    sub_268CDD0DC();
    v64 = sub_268CD42AC(6, 0);
    v187();

    return v188;
  }

  v184 = v201;
  v182 = v201;
  v217 = v201;
  v183 = [v201 targetDevice];
  if (v183)
  {
    v181 = v183;
    v177 = v183;
    v178 = [v183 deviceCategory];

    v179 = v178;
    v180 = 0;
  }

  else
  {
    v179 = 0;
    v180 = 1;
  }

  v176 = v179;
  if (v180)
  {
    v65 = sub_268F9B294();
    v67 = *sub_268DC7AE8();
    v57 = v67;
    v66 = sub_268F9B734();
    sub_268F9AC14();

    sub_268CDD0DC();
    v68 = sub_268CD42AC(6, 0);
    v187();

    return v188;
  }

  v175 = v176;
  v173 = v176;
  v216 = v176;
  v215 = v176;
  v214 = 6;
  v174 = type metadata accessor for INDeviceCategory();
  sub_268CD90DC();
  if (sub_268F9B754())
  {
    v168 = sub_268F9B294();
    v170 = *sub_268DC7AE8();
    v13 = v170;
    v169 = sub_268F9B734();
    sub_268F9AC14();

    sub_268CDD0DC();
    v171 = sub_268CD42AC(6, 0);
    v187();

    return v188;
  }

  v164 = *(v185 + 16);

  v165 = sub_268D47C08(v173, 0);
  v167 = v14;
  v166 = v165;

  if (v167)
  {
    v152 = sub_268F9B294();
    v134 = v152;
    v153 = *sub_268DC7AE8();
    v135 = v153;
    v26 = v153;
    v27 = v182;
    v141 = 7;
    v142 = swift_allocObject();
    *(v142 + 16) = v182;
    v136 = 17;
    v146 = swift_allocObject();
    v137 = v146;
    v138 = 32;
    *(v146 + 16) = 32;
    v28 = swift_allocObject();
    v29 = v138;
    v147 = v28;
    v139 = v28;
    *(v28 + 16) = 8;
    v140 = v29;
    v30 = swift_allocObject();
    v31 = v142;
    v143 = v30;
    *(v30 + 16) = sub_268F6B578;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v143;
    v150 = v32;
    v144 = v32;
    *(v32 + 16) = sub_268CD7608;
    *(v32 + 24) = v33;
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v145 = v151;
    v148 = sub_268F9B734();
    v149 = v34;

    v35 = v146;
    v36 = v149;
    *v149 = sub_268CD7600;
    v36[1] = v35;

    v37 = v147;
    v38 = v149;
    v149[2] = sub_268CD7600;
    v38[3] = v37;

    v39 = v149;
    v40 = v150;
    v149[4] = sub_268CD7614;
    v39[5] = v40;
    sub_268CD0F7C();

    if (os_log_type_enabled(v153, v152))
    {
      v127 = sub_268F9B3A4();
      v124 = v127;
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v128 = sub_268CD5448(0);
      v126 = v128;
      v130 = 1;
      v129 = sub_268CD5448(1);
      v207 = v127;
      v206 = v128;
      v205 = v129;
      v131 = &v207;
      sub_268CD549C(2, &v207);
      sub_268CD549C(1, &v207);
      v203 = sub_268CD7600;
      v204 = v137;
      sub_268CD54B0(&v203, &v207, &v206, &v205);
      v132 = v188;
      v133 = v188;
      if (v188)
      {
        v122 = 0;

        __break(1u);
      }

      else
      {
        v203 = sub_268CD7600;
        v204 = v139;
        sub_268CD54B0(&v203, &v207, &v206, &v205);
        v120 = 0;
        v121 = 0;
        v203 = sub_268CD7614;
        v204 = v144;
        sub_268CD54B0(&v203, &v207, &v206, &v205);
        v118 = 0;
        v119 = 0;
        _os_log_impl(&dword_268CBE000, v135, v134, "Unable to determine the device's battery level from setting metadata%s", v124, 0xCu);
        sub_268CD54FC(v126);
        sub_268CD54FC(v129);
        sub_268F9B384();

        v123 = 0;
      }
    }

    else
    {

      v123 = v188;
    }

    v116 = v123;

    v117 = [v200 settingMetadata];
    if (v117 && (v115 = v117, v112 = v117, v114 = [v117 targetDevice], v113 = v114, v117, v114))
    {
      v111 = v113;
      v107 = v113;
      v108 = [v113 deviceCategory];

      v109 = v108;
      v110 = 0;
    }

    else
    {
      v109 = 0;
      v110 = 1;
    }

    v106 = v109;
    if (v110)
    {
      v69 = sub_268F9B294();
      v71 = *sub_268DC7AE8();
      v56 = v71;
      v70 = sub_268F9B734();
      sub_268F9AC14();

      sub_268CDD0DC();
      v72 = sub_268CD42AC(6, 0);
      v187();

      return v116;
    }

    else
    {
      v105 = v106;
      v88 = v106;
      v213 = v106;
      v103 = sub_268F9B294();
      v86 = v103;
      v104 = *sub_268DC7AE8();
      v87 = v104;
      v41 = v104;
      v94 = 7;
      v95 = swift_allocObject();
      *(v95 + 16) = v106;
      v89 = 17;
      v98 = swift_allocObject();
      v90 = v98;
      v91 = 32;
      *(v98 + 16) = 32;
      v42 = swift_allocObject();
      v43 = v91;
      v99 = v42;
      v92 = v42;
      *(v42 + 16) = 8;
      v93 = v43;
      v44 = swift_allocObject();
      v45 = v95;
      v96 = v44;
      *(v44 + 16) = sub_268F6B850;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v96;
      v102 = v46;
      v97 = v46;
      *(v46 + 16) = sub_268CD7608;
      *(v46 + 24) = v47;
      v100 = sub_268F9B734();
      v101 = v48;

      v49 = v98;
      v50 = v101;
      *v101 = sub_268CD7600;
      v50[1] = v49;

      v51 = v99;
      v52 = v101;
      v101[2] = sub_268CD7600;
      v52[3] = v51;

      v53 = v101;
      v54 = v102;
      v101[4] = sub_268CD7614;
      v53[5] = v54;
      sub_268CD0F7C();

      if (os_log_type_enabled(v104, v103))
      {
        v81 = sub_268F9B3A4();
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v83 = sub_268CD5448(0);
        v84 = sub_268CD5448(1);
        v212 = v81;
        v211 = v83;
        v210 = v84;
        sub_268CD549C(2, &v212);
        sub_268CD549C(1, &v212);
        v208 = sub_268CD7600;
        v209 = v90;
        sub_268CD54B0(&v208, &v212, &v211, &v210);
        v85 = v116;
        if (v116)
        {
          v79 = 0;

          __break(1u);
        }

        else
        {
          v208 = sub_268CD7600;
          v209 = v92;
          sub_268CD54B0(&v208, &v212, &v211, &v210);
          v77 = 0;
          v78 = 0;
          v208 = sub_268CD7614;
          v209 = v97;
          sub_268CD54B0(&v208, &v212, &v211, &v210);
          v75 = 0;
          v76 = 0;
          _os_log_impl(&dword_268CBE000, v87, v86, "Can not find connected device category%s", v81, 0xCu);
          sub_268CD54FC(v83);
          sub_268CD54FC(v84);
          sub_268F9B384();

          v80 = 0;
        }
      }

      else
      {

        v80 = v116;
      }

      sub_268E948B8();
      v73 = v55;
      v74 = sub_268E41B70();

      (v187)(v74);

      return v80;
    }
  }

  v163 = v166;
  v15 = v188;
  v161 = v166;
  v202 = v166;
  v16 = sub_268DBBAE4();
  v155 = *v16;
  v156 = v16[1];
  v157 = *(v16 + 16);
  v158 = *sub_268DC7AE8();
  v154 = v158;
  v17 = v158;
  v159 = *(v185 + 24);
  v18 = v200;

  v160 = v61;
  MEMORY[0x28223BE20](v155);
  v60[2] = v19;
  v60[3] = v161;
  v60[4] = v187;
  v60[5] = v20;
  sub_268DB944C(v21, v22, v23, v24, v25, sub_268F6B858, v60, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v162 = v15;
  if (!v15)
  {

    return v162;
  }

  __break(1u);
  return result;
}

uint64_t sub_268F6B51C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_268D291D4();
  sub_268D29238();
  return sub_268F9AE74();
}

double sub_268F6B5BC(void *a1, uint64_t a2, void (*a3)(id))
{
  v12 = [a1 settingMetadata];
  sub_268DD26C8();
  sub_268D34FD4();
  v3 = sub_268F2B5E0(a2);
  v11 = sub_268E3E3F0(v3);
  v10 = sub_268D4AA1C();
  v4 = sub_268D4AA1C();
  v18 = sub_268E41A08(v12, v11, v10, v4, 0, 0);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  sub_268F9B284();
  v5 = sub_268DC7AE8();
  v16 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v6;
  MEMORY[0x277D82BE0](v18);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v13 = sub_268F9AE74();
  v14 = v7;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v16);

  a3(v18);

  *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  return result;
}

uint64_t *sub_268F6B88C()
{
  if (qword_280FE2998 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FB0;
}

uint64_t sub_268F6B8EC()
{
  type metadata accessor for GetAXDifferentiateWithoutColorHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE7FB0 = result;
  return result;
}

uint64_t sub_268F6B954()
{
  v1 = *sub_268F6B88C();

  return v1;
}

double sub_268F6B984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBAD04();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F6BE08, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268F6BBA0(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3E8F4();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t sub_268F6BE60()
{
  type metadata accessor for SetAXReduceWhitePointHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17A8 = result;
  return result;
}

uint64_t *sub_268F6BEC8()
{
  if (qword_2802DB8E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F17A8;
}

uint64_t sub_268F6BF28()
{
  v1 = *sub_268F6BEC8();

  return v1;
}

uint64_t sub_268F6BF58(void *a1, void (*a2)(void), uint64_t a3)
{
  v26 = sub_268CD7620();
  SettingIntent.deviceCategory.getter(v26, &protocol witness table for INSetBinarySettingIntent);
  if (v3)
  {
    v21 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v21 = sub_268F9AE04();
  }

  if (v21)
  {
    goto LABEL_14;
  }

  SettingIntent.deviceCategory.getter(v26, &protocol witness table for INSetBinarySettingIntent);
  if (v4)
  {
    v20 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v20 = sub_268F9AE04();
  }

  if (v20 & 1) != 0 || ((SettingIntent.deviceCategory.getter(v26, &protocol witness table for INSetBinarySettingIntent), (v5) ? (v19 = 0) : (type metadata accessor for INDeviceCategory(), sub_268CD7818(), v19 = sub_268F9AE04()), (v19))
  {
LABEL_14:
    sub_268F9B284();
    v8 = sub_268DC7AE8();
    v10 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);
    v11 = *(v25 + 16);

    v12 = sub_268D3EF0C();

    v9 = sub_268DBDB14();
    v13 = *v9;
    v14 = v9[1];
    v15 = *(v9 + 16);
    v16 = *(v25 + 24);

    sub_268DAAB84(v12, a1, v13, v14, v15, v16 & 1, a2, a3, sub_268F6C5B4, v25, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268F6C5B4);
  }

  else
  {
    sub_268F9B284();
    v6 = sub_268DC7AE8();
    v17 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v17);

    sub_268E948B8();
    v18 = sub_268DAB158();

    (a2)(v18);
    MEMORY[0x277D82BD8](v18);
  }
}

uint64_t sub_268F6C544(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3EF3C();
}

uint64_t sub_268F6C600()
{
  type metadata accessor for SetAXSwitchControlHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17B0 = result;
  return result;
}

uint64_t *sub_268F6C668()
{
  if (qword_2802DB8E8 != -1)
  {
    swift_once();
  }

  return &qword_2802F17B0;
}

uint64_t sub_268F6C6C8()
{
  v1 = *sub_268F6C668();

  return v1;
}

double sub_268F6C6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBEC44();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F6CA3C, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

uint64_t sub_268F6C910(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = *(a1 + 16);

  v7 = sub_268D3F104();

  v4 = sub_268DBD764();
  v10 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 16);
  v13 = *(a1 + 24);

  sub_268DAAB84(v7, a2, v10, v11, v12, v13 & 1, a3, a4, sub_268F6CB04, a1, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F6CB04);
}

uint64_t sub_268F6CA70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3F134();
}

uint64_t sub_268F6CB2C()
{
  v0 = sub_268DD2AA8();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F17B8 = v2;
  return result;
}

uint64_t *sub_268F6CB6C()
{
  if (qword_2802DB8F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F17B8;
}

uint64_t sub_268F6CBCC()
{
  v0 = sub_268F6CB6C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268F6CC04()
{
  v6 = 0;
  v4 = type metadata accessor for FlowStrategy.IntentConversionError();
  v3 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2[1]);
  v5 = v2 - v3;
  v6 = v0;
  sub_268F6CD1C(v0, v2 - v3);
  return sub_268F9AE64();
}

uint64_t type metadata accessor for FlowStrategy.IntentConversionError()
{
  v1 = qword_2802DE7C8;
  if (!qword_2802DE7C8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_268F6CD1C(const void *a1, void *a2)
{
  v6 = type metadata accessor for FlowStrategy.IntentConversionError();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_268F99C34();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t sub_268F6CE44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v5 = v0;
  v6 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v5 = sub_268F9AE24();
  v5[1] = v1;
  v2 = sub_268F6CC04();
  v5[5] = MEMORY[0x277D837D0];
  v5[2] = v2;
  v5[3] = v3;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v6);
  return sub_268F9ADA4();
}

unint64_t sub_268F6CF68()
{
  v2 = qword_2802DE7B8;
  if (!qword_2802DE7B8)
  {
    type metadata accessor for FlowStrategy.IntentConversionError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F6D030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = a1;
  v3 = v2;
  v4 = v78;
  v98 = v3;
  v102 = "FlowStrategy: actionForInput.";
  v79 = "FlowStrategy: not a compatible type of parse. Ignoring.";
  v80 = "FlowStrategy: %@ handling NLV3Intent.";
  v81 = "FlowStrategy: Error parsing uso parse.";
  v121 = 0;
  v120 = 0;
  v123 = 0;
  v82 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v122 = 0;
  v112 = 0;
  v111 = 0;
  v100 = 0;
  v83 = sub_268F99CB4();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v87 = v32 - v86;
  v88 = sub_268F99C64();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100);
  v92 = v32 - v91;
  v123 = v32 - v91;
  v93 = sub_268F9A704();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100);
  v97 = v32 - v96;
  v122 = v32 - v96;
  v109 = sub_268F99C34();
  v106 = *(v109 - 8);
  v107 = v109 - 8;
  v99 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v109);
  v108 = v32 - v99;
  v121 = v4;
  v120 = v5;
  v103 = sub_268F9B284();
  v105 = *sub_268DC8FEC();
  MEMORY[0x277D82BE0](v105);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v104 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v105);
  sub_268F99BE4();
  v110 = (*(v106 + 88))(v108, v109);
  if (v110 == *MEMORY[0x277D5C128])
  {
    (*(v106 + 96))(v108, v109);
    (*(v94 + 32))(v97, v108, v93);
    v122 = v97;
    v75 = v114;
    memset(v114, 0, sizeof(v114));
    v74 = &v113;
    sub_268D8E52C(&v113);
    v76 = sub_268DA7690(v97, v75, v74);
    sub_268D28414(v74);
    sub_268D28414(v75);
    v112 = v76;
    MEMORY[0x277D82BE0](v76);
    if (v76)
    {
      v73 = v76;
      v71 = v76;
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v70 = v72;
      }

      else
      {
        MEMORY[0x277D82BD8](v71);
        v70 = 0;
      }

      v69 = v70;
    }

    else
    {
      v69 = 0;
    }

    v66 = v69 != 0;
    v111 = v69 != 0;
    MEMORY[0x277D82BD8](v69);
    v64 = sub_268F9B284();
    v65 = *sub_268DC8FEC();
    MEMORY[0x277D82BE0](v65);
    v67 = sub_268F9B734();
    v68 = v6;
    if (v66)
    {
      v63 = sub_268F9AEF4();
      v62 = v7;
      v68[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      v9 = v62;
      v10 = v68;
      v11 = v8;
      v12 = v63;
    }

    else
    {
      v61 = sub_268F9AEF4();
      v60 = v13;
      v68[3] = MEMORY[0x277D837D0];
      v14 = sub_268CDD224();
      v9 = v60;
      v10 = v68;
      v11 = v14;
      v12 = v61;
    }

    v68[4] = v11;
    *v10 = v12;
    v10[1] = v9;
    v15 = v67;
    sub_268CD0F7C();
    v59 = v15;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v65);
    if (v66)
    {
      sub_268F99894();
    }

    else
    {
      sub_268F998A4();
    }

    v16 = MEMORY[0x277D82BD8](v76);
    return (*(v94 + 8))(v97, v93, v16);
  }

  else if (v110 == *MEMORY[0x277D5C160])
  {
    v17 = v82;
    v18 = v92;
    (*(v106 + 96))(v108, v109);
    (*(v89 + 32))(v18, v108, v88);
    v123 = v18;
    sub_268F99C54();
    v55 = &v119;
    sub_268F99C44();
    v56 = &v118;
    sub_268D8E52C(&v118);
    v57 = sub_268E17680(v87, v55, v56);
    v58 = v17;
    if (v17)
    {
      v38 = v58;
      sub_268D28414(&v118);
      sub_268D28414(&v119);
      (*(v84 + 8))(v87, v83);
      v30 = v38;
      v117 = v38;
      v35 = sub_268F9B294();
      v37 = *sub_268DC8FEC();
      MEMORY[0x277D82BE0](v37);
      v36 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v37);

      sub_268F998A4();
      return (*(v89 + 8))(v92, v88);
    }

    else
    {
      v54 = v57;
      sub_268D28414(&v118);
      sub_268D28414(&v119);
      (*(v84 + 8))(v87, v83);
      v116 = v54;
      MEMORY[0x277D82BE0](v54);
      if (v54)
      {
        v53 = v54;
        v51 = v54;
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          v50 = v52;
        }

        else
        {
          MEMORY[0x277D82BD8](v51);
          v50 = 0;
        }

        v49 = v50;
      }

      else
      {
        v49 = 0;
      }

      v46 = v49 != 0;
      v115 = v49 != 0;
      MEMORY[0x277D82BD8](v49);
      v44 = sub_268F9B284();
      v45 = *sub_268DC8FEC();
      MEMORY[0x277D82BE0](v45);
      v47 = sub_268F9B734();
      v48 = v19;
      if (v46)
      {
        v43 = sub_268F9AEF4();
        v42 = v20;
        v48[3] = MEMORY[0x277D837D0];
        v21 = sub_268CDD224();
        v22 = v42;
        v23 = v48;
        v24 = v21;
        v25 = v43;
      }

      else
      {
        v41 = sub_268F9AEF4();
        v40 = v26;
        v48[3] = MEMORY[0x277D837D0];
        v27 = sub_268CDD224();
        v22 = v40;
        v23 = v48;
        v24 = v27;
        v25 = v41;
      }

      v48[4] = v24;
      *v23 = v25;
      v23[1] = v22;
      v28 = v47;
      sub_268CD0F7C();
      v39 = v28;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v45);
      if (v46)
      {
        sub_268F99894();
      }

      else
      {
        sub_268F998A4();
      }

      v29 = MEMORY[0x277D82BD8](v54);
      return (*(v89 + 8))(v92, v88, v29);
    }
  }

  else
  {
    v32[3] = sub_268F9B284();
    v34 = *sub_268DC8FEC();
    MEMORY[0x277D82BE0](v34);
    v33 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v34);
    sub_268F998A4();
    return (*(v106 + 8))(v108, v109);
  }
}

uint64_t sub_268F6DF98(uint64_t a1, uint64_t a2)
{
  v3[32] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v4 = sub_268F99CB4();
  v3[33] = v4;
  v12 = *(v4 - 8);
  v3[34] = v12;
  v5 = *(v12 + 64) + 15;
  v3[35] = swift_task_alloc();
  v6 = sub_268F99C64();
  v3[36] = v6;
  v13 = *(v6 - 8);
  v3[37] = v13;
  v7 = *(v13 + 64) + 15;
  v3[38] = swift_task_alloc();
  v8 = sub_268F9A704();
  v3[39] = v8;
  v14 = *(v8 - 8);
  v3[40] = v14;
  v15 = *(v14 + 64);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v9 = sub_268F99C34();
  v3[43] = v9;
  v16 = *(v9 - 8);
  v3[44] = v16;
  v17 = *(v16 + 64);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v2;
  v10 = v3[22];

  return MEMORY[0x2822009F8](sub_268F6E24C, 0);
}

uint64_t sub_268F6E24C()
{
  v98 = v0[46];
  v96 = v0[44];
  v97 = v0[43];
  v94 = v0[32];
  v0[22] = v0;
  sub_268F9B284();
  v1 = sub_268DC8FEC();
  v93 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v2 = MEMORY[0x277D82BD8](v93);
  v95 = *(v96 + 16);
  (v95)(v98, v94, v97, v2);
  v99 = (*(v96 + 88))(v98, v97);
  if (v99 == *MEMORY[0x277D5C128])
  {
    v88 = v92[46];
    v3 = v92[43];
    v90 = v92[42];
    v89 = v92[39];
    v87 = v92[40];
    (*(v92[44] + 96))();
    (*(v87 + 32))(v90, v88, v89);
    v92[30] = v90;
    v92[12] = 0;
    v92[13] = 0;
    v92[14] = 0;
    v92[15] = 0;
    v92[16] = 0;
    sub_268D8E52C(v92 + 17);
    v91 = sub_268DA7690(v90, v92 + 12, v92 + 17);
    sub_268D28414(v92 + 17);
    sub_268D28414(v92 + 12);
    if (v91)
    {
      objc_opt_self();
      v86 = swift_dynamicCastObjCClass();
      if (v86)
      {
        v85 = v86;
      }

      else
      {
        MEMORY[0x277D82BD8](v91);
        v85 = 0;
      }

      v84 = v85;
    }

    else
    {
      v84 = 0;
    }

    if (v84)
    {
      v4 = v92[42];
      v5 = v92[40];
      v6 = v92[39];
      v92[31] = v84;
      (*(v5 + 8))(v4, v6);
      v83 = v84;
      goto LABEL_22;
    }

    v79 = v92[43];
    v81 = v92[42];
    v74 = v92[41];
    v82 = v92[39];
    v80 = v92[32];
    v73 = v92[40];
    v7 = sub_268DC8FEC();
    v78 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B294();
    sub_268F9B734();
    v77 = v8;
    (*(v73 + 16))(v74, v81, v82);
    sub_268DA7B0C();
    v75 = sub_268F9AE74();
    v76 = v9;
    v77[3] = MEMORY[0x277D837D0];
    v77[4] = sub_268CDD224();
    *v77 = v75;
    v77[1] = v76;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v78);
    type metadata accessor for FlowStrategy.IntentConversionError();
    sub_268E68B80();
    swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v73 + 8))(v81, v82);
LABEL_25:
    v27 = v92[46];
    v30 = v92[45];
    v31 = v92[42];
    v32 = v92[41];
    v33 = v92[38];
    v34 = v92[35];

    v19 = v72;
    v20 = *(v92[22] + 8);
    v28 = v92[22];

    return v20(v19);
  }

  if (v99 != *MEMORY[0x277D5C160])
  {
    v56 = v92[46];
    v49 = v92[45];
    v57 = v92[43];
    v54 = v92[32];
    v55 = v92[44];
    v15 = sub_268DC8FEC();
    v53 = *v15;
    MEMORY[0x277D82BE0](*v15);
    sub_268F9B294();
    sub_268F9B734();
    v52 = v16;
    (v95)(v49, v54, v57);
    v50 = sub_268F9AE64();
    v51 = v17;
    v52[3] = MEMORY[0x277D837D0];
    v52[4] = sub_268CDD224();
    *v52 = v50;
    v52[1] = v51;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v53);
    type metadata accessor for FlowStrategy.IntentConversionError();
    sub_268E68B80();
    swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v55 + 8))(v56, v57);
    goto LABEL_25;
  }

  v68 = v92[46];
  v10 = v92[43];
  v11 = v92[38];
  v69 = v92[36];
  v70 = v92[35];
  v67 = v92[37];
  (*(v92[44] + 96))();
  (*(v67 + 32))(v11, v68, v69);
  v92[26] = v11;
  sub_268F99C54();
  sub_268F99C44();
  sub_268D8E52C(v92 + 7);
  v71 = sub_268E17680(v70, v92 + 2, v92 + 7);
  v66 = v92[35];
  v65 = v92[33];
  v64 = v92[34];
  sub_268D28414(v92 + 7);
  sub_268D28414(v92 + 2);
  (*(v64 + 8))(v66, v65);
  if (v71)
  {
    objc_opt_self();
    v63 = swift_dynamicCastObjCClass();
    if (v63)
    {
      v62 = v63;
    }

    else
    {
      MEMORY[0x277D82BD8](v71);
      v62 = 0;
    }

    v61 = v62;
  }

  else
  {
    v61 = 0;
  }

  if (!v61)
  {
    v58 = v92[43];
    v59 = v92[32];
    type metadata accessor for FlowStrategy.IntentConversionError();
    sub_268E68B80();
    v60 = swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v39 = v92[43];
    v42 = v92[38];
    v43 = v92[36];
    v40 = v92[32];
    v41 = v92[37];
    v22 = v60;
    v92[27] = v60;
    v23 = sub_268DC8FEC();
    v38 = *v23;
    MEMORY[0x277D82BE0](*v23);
    sub_268F9B294();
    sub_268F9B734();
    v37 = v24;
    v25 = v60;
    v92[28] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v35 = sub_268F9AE64();
    v36 = v26;
    v37[3] = MEMORY[0x277D837D0];
    v37[4] = sub_268CDD224();
    *v37 = v35;
    v37[1] = v36;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v38);
    type metadata accessor for FlowStrategy.IntentConversionError();
    sub_268E68B80();
    swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v41 + 8))(v42, v43);
    goto LABEL_25;
  }

  v12 = v92[38];
  v13 = v92[37];
  v14 = v92[36];
  v92[29] = v61;
  (*(v13 + 8))(v12, v14);
  v83 = v61;
LABEL_22:
  v18 = v92[46];
  v44 = v92[45];
  v45 = v92[42];
  v46 = v92[41];
  v47 = v92[38];
  v48 = v92[35];

  v19 = v83;
  v20 = *(v92[22] + 8);
  v21 = v92[22];

  return v20(v19);
}

uint64_t sub_268F6F180(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F6DF98(a1, a2);
}

uint64_t sub_268F6F2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B498] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for FlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D90](a1, a2, a3, v8, a5);
}

uint64_t sub_268F6F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B490] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for FlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D88](a1, a2, a3, v8, a5);
}

uint64_t sub_268F6F474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B488] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for FlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D80](a1, a2, a3, v8, a5);
}

uint64_t sub_268F6F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B480] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for FlowStrategy();
  *v8 = *(v11 + 16);
  v8[1] = sub_268D34238;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v9, a6);
}

uint64_t sub_268F6F634(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for FlowStrategy();
  v2 = sub_268F6F6DC();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268F6F6DC()
{
  v2 = qword_2802DE7C0;
  if (!qword_2802DE7C0)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F6F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B6D8] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for FlowStrategy();
  *v8 = *(v11 + 16);
  v8[1] = sub_268D34238;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v9, a6);
}

unint64_t sub_268F6F858()
{
  v2 = qword_2802DE7D8;
  if (!qword_2802DE7D8)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F6F8F0()
{
  v2 = qword_2802DE7E0;
  if (!qword_2802DE7E0)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F6F970(uint64_t a1)
{
  result = sub_268F6F858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F6F9CC()
{
  v2 = qword_2802DE7E8;
  if (!qword_2802DE7E8)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F6FA4C()
{
  if (qword_2802DB8F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F17C0;
}

uint64_t sub_268F6FAAC()
{
  type metadata accessor for MacNavigationHandler();
  result = sub_268CDA260();
  qword_2802F17C0 = result;
  return result;
}

uint64_t sub_268F6FB08()
{
  v1 = *sub_268F6FA4C();

  return v1;
}

uint64_t sub_268F6FB38()
{
  sub_268F9B284();
  v0 = sub_268DC7AE8();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v2);
  return 0;
}

uint64_t sub_268F6FC10(void *a1)
{
  v40 = 0;
  v41 = a1;
  MEMORY[0x277D82BE0](a1);
  if (a1 && (v28 = [a1 settingMetadata], *&v1 = MEMORY[0x277D82BD8](a1).n128_u64[0], v28))
  {
    v23 = [v28 settingId];
    v24 = sub_268F9AE24();
    v25 = v2;
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v23);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v21 = sub_268EC63FC();
  v22 = v3;

  v38[0] = v26;
  v38[1] = v27;
  *&v39 = v21;
  *(&v39 + 1) = v22;
  if (v27)
  {
    sub_268D28874(v38, &v32);
    if (*(&v39 + 1))
    {
      v31 = v32;
      v30 = v39;
      v19 = MEMORY[0x26D62DB50](v32, *(&v32 + 1), v39, *(&v39 + 1));
      sub_268CD9D30(&v30);
      sub_268CD9D30(&v31);
      sub_268CD9D30(v38);
      v20 = v19;
      goto LABEL_13;
    }

    sub_268CD9D30(&v32);
    goto LABEL_15;
  }

  if (*(&v39 + 1))
  {
LABEL_15:
    sub_268D28550(v38);
    v20 = 0;
    goto LABEL_13;
  }

  sub_268CD9D30(v38);
  v20 = 1;
LABEL_13:

  MEMORY[0x277D82BE0](a1);
  if ((v20 & 1) == 0)
  {
    MEMORY[0x277D82BE0](a1);
    if (a1 && (v17 = [a1 settingMetadata], *&v4 = MEMORY[0x277D82BD8](a1).n128_u64[0], v17))
    {
      v12 = [v17 settingId];
      v13 = sub_268F9AE24();
      v14 = v5;
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v12);
      v15 = v13;
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v10 = sub_268EC63FC();
    v11 = v6;

    v36[0] = v15;
    v36[1] = v16;
    *&v37 = v10;
    *(&v37 + 1) = v11;
    if (v16)
    {
      sub_268D28874(v36, &v35);
      if (*(&v37 + 1))
      {
        v34 = v35;
        v33 = v37;
        v8 = MEMORY[0x26D62DB50](v35, *(&v35 + 1), v37, *(&v37 + 1));
        sub_268CD9D30(&v33);
        sub_268CD9D30(&v34);
        sub_268CD9D30(v36);
        v9 = v8;
LABEL_29:

        v18 = v9;
        goto LABEL_33;
      }

      sub_268CD9D30(&v35);
    }

    else if (!*(&v37 + 1))
    {
      sub_268CD9D30(v36);
      v9 = 1;
      goto LABEL_29;
    }

    sub_268D28550(v36);
    v9 = 0;
    goto LABEL_29;
  }

  v18 = 1;
LABEL_33:
  MEMORY[0x277D82BD8](a1);
  return v18 & 1;
}

BOOL sub_268F700D8(void *a1)
{
  v8 = a1;
  v7 = v1;
  v5 = sub_268F6FC10(a1);

  MEMORY[0x277D82BE0](a1);
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    sub_268F701C8(a1, &v6);
    v3 = v6 != 65;
  }

  MEMORY[0x277D82BD8](a1);
  return v3;
}

void sub_268F701C8(void *a1@<X0>, char *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  if (a1 && (v16 = [a1 settingMetadata], *&v2 = MEMORY[0x277D82BD8](a1).n128_u64[0], v16))
  {
    v13 = [v16 settingId];
    v14._countAndFlagsBits = sub_268F9AE24();
    v14._object = v3;
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v13);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15._object)
  {
    sub_268F9B734();
    v12 = v4;
    *v4 = BinarySettingIdentifier.rawValue.getter();
    v12[1] = v5;
    v12[2] = BinarySettingIdentifier.rawValue.getter();
    v12[3] = v6;
    v12[4] = BinarySettingIdentifier.rawValue.getter();
    v12[5] = v7;
    v12[6] = BinarySettingIdentifier.rawValue.getter();
    v12[7] = v8;
    sub_268CD0F7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268DA6BFC();
    if (sub_268F9AFC4())
    {

      BinarySettingIdentifier.init(rawValue:)(v15);
      v11 = v19;
    }

    else
    {
      v11 = 65;
    }

    *a2 = v11;
  }

  else
  {
    sub_268F9B284();
    v9 = sub_268DC7AE8();
    v10 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);
    *a2 = 65;
  }
}

uint64_t sub_268F70544()
{
  type metadata accessor for SetVoiceOverHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17C8 = result;
  return result;
}

uint64_t *sub_268F705AC()
{
  if (qword_2802DB900 != -1)
  {
    swift_once();
  }

  return &qword_2802F17C8;
}

uint64_t sub_268F7060C()
{
  v1 = *sub_268F705AC();

  return v1;
}

uint64_t sub_268F7063C(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v18);
  v21 = *sub_268E50B9C();

  v20 = [a1 settingMetadata];
  v22 = sub_268E50C88(v20);
  MEMORY[0x277D82BD8](v20);

  if (v22)
  {
    sub_268F9B294();
    v6 = sub_268DC7AE8();
    v7 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v7);

    sub_268E948B8();
    v8 = sub_268DAB158();

    (a2)(v8);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v9 = *(v17 + 16);

    v10 = sub_268D3DB58();

    v4 = sub_268DBE474();
    v11 = *v4;
    v12 = v4[1];
    v13 = *(v4 + 16);
    v14 = *(v17 + 24);

    sub_268DAAB84(v10, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F709BC, v17, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268F709BC);
  }
}

uint64_t sub_268F7094C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3DB88();
}

uint64_t sub_268F70A08(void *a1)
{
  v9[5] = a1;
  sub_268F9B284();
  v1 = sub_268DC7AE8();
  v6 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v9[4] = [a1 action];
  v9[3] = 1;
  type metadata accessor for INSettingAction();
  sub_268DD25C8();
  v8 = sub_268F9B754();
  MEMORY[0x277D82BE0](a1);
  if (v8)
  {
    v9[0] = [a1 numericValue];
    v5 = v9[0] == 0;
    sub_268D35038(v9);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BE0](a1);
  if (v4)
  {
    v9[2] = [a1 boundedValue];
    v9[1] = 0;
    type metadata accessor for INBoundedSettingValue();
    sub_268CD94D4();
    v3 = sub_268F9B754();
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x277D82BD8](a1);
  return v3 & 1;
}

id sub_268F70C6C()
{
  sub_268CDA484();
  v2 = sub_268CD42AC(9, 0);
  sub_268E948B8();
  v1 = sub_268F9AE14();

  [v2 setErrorDetail_];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_268F70D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, void (*a7)(void), uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v44 = a8;
  v45 = a7;
  v46 = a4;
  v47 = a3;
  v48 = a2;
  v49 = a11;
  v50 = a10;
  v51 = a9;
  v52 = a14;
  v53 = a13;
  v54 = a6;
  v55 = a5;
  v56 = 0;
  v59 = 0;
  v57 = 0;
  v73 = a1;
  v72 = a9;
  v71 = a10;
  v70 = a11;
  v69 = a12;
  v68 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v64 = a6;
  v62 = a7;
  v63 = a8;
  v60 = a13;
  v61 = a14;
  v58 = sub_268F7112C(a1, a9, a10, a11, a12);
  if (v14)
  {
    v32[3] = sub_268F9B294();
    v34 = *sub_268DC7AE8();
    v29 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v33 = sub_268F9B734();
    sub_268F9AC14();

    v35 = sub_268F710D8(0, 8);
    v45();

    return v57;
  }

  else
  {
    v43 = v58;
    v15 = v57;
    v38 = v58;
    v59 = v58;
    v39 = *sub_268DC7AE8();
    v37 = v39;
    v16 = v39;

    v40 = v32;
    v17 = MEMORY[0x28223BE20](v47);
    v41 = v32;
    v31[2] = v18;
    v31[3] = v19;
    v31[4] = v20;
    v31[5] = v21;
    v31[6] = v22;
    v31[7] = v44;
    v31[8] = v48;
    v31[9] = v23;
    *&v31[10] = v17;
    sub_268DB944C(v25, v26, v27, v28, v24 & 1, sub_268F75130, v31, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v42 = v15;

    return v42;
  }
}

uint64_t sub_268F7112C(void *a1, double a2, double a3, double a4, double a5)
{
  v102 = 0;
  v87 = 0;
  v107 = a1;
  v106 = a2;
  v105 = a3;
  v104 = a4;
  v103 = a5;
  v81 = sub_268DDDBF8(a3, a4);
  if (v5)
  {
    v62 = swift_allocObject();
    v102 = v62 + 16;
    v63 = [a1 numericValue];
    if (v63 && (v61 = [v63 value], MEMORY[0x277D82BD8](v63), v61))
    {
      [v61 doubleValue];
      v60 = v8;
      MEMORY[0x277D82BD8](v61);
      *(v62 + 16) = sub_268E558F8(v60);
      *(v62 + 24) = 0;
    }

    else
    {
      *(v62 + 16) = 0;
      *(v62 + 24) = 1;
    }

    v59 = sub_268F9B284();
    v9 = sub_268DC7AE8();
    log = *v9;
    MEMORY[0x277D82BE0](*v9);

    v27 = swift_allocObject();
    *(v27 + 16) = v62;
    *(v27 + 24) = a5;
    v29 = swift_allocObject();
    *(v29 + 16) = a2;
    MEMORY[0x277D82BE0](a1);
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    v33 = swift_allocObject();
    *(v33 + 16) = a5;
    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    v37 = swift_allocObject();
    *(v37 + 16) = a4;
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_268F7522C;
    *(v28 + 24) = v27;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_268DD25B0;
    *(v41 + 24) = v28;
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_268DD1060;
    *(v30 + 24) = v29;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_268DD25B0;
    *(v44 + 24) = v30;
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_268F7525C;
    *(v32 + 24) = v31;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_268F75848;
    *(v47 + 24) = v32;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_268DD1060;
    *(v34 + 24) = v33;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_268DD25B0;
    *(v50 + 24) = v34;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_268DD1060;
    *(v36 + 24) = v35;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_268DD25B0;
    *(v53 + 24) = v36;
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_268DD1060;
    *(v38 + 24) = v37;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_268DD25B0;
    *(v56 + 24) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v57 = v10;

    *v57 = sub_268CD7600;
    v57[1] = v39;

    v57[2] = sub_268CD7600;
    v57[3] = v40;

    v57[4] = sub_268DD25BC;
    v57[5] = v41;

    v57[6] = sub_268CD7600;
    v57[7] = v42;

    v57[8] = sub_268CD7600;
    v57[9] = v43;

    v57[10] = sub_268DD25BC;
    v57[11] = v44;

    v57[12] = sub_268CD7600;
    v57[13] = v45;

    v57[14] = sub_268CD7600;
    v57[15] = v46;

    v57[16] = sub_268F75854;
    v57[17] = v47;

    v57[18] = sub_268CD7600;
    v57[19] = v48;

    v57[20] = sub_268CD7600;
    v57[21] = v49;

    v57[22] = sub_268DD25BC;
    v57[23] = v50;

    v57[24] = sub_268CD7600;
    v57[25] = v51;

    v57[26] = sub_268CD7600;
    v57[27] = v52;

    v57[28] = sub_268DD25BC;
    v57[29] = v53;

    v57[30] = sub_268CD7600;
    v57[31] = v54;

    v57[32] = sub_268CD7600;
    v57[33] = v55;

    v57[34] = sub_268DD25BC;
    v57[35] = v56;
    sub_268CD0F7C();

    if (os_log_type_enabled(log, v59))
    {
      v24 = sub_268F9B3A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v25 = sub_268CD5448(0);
      v26 = sub_268CD5448(0);
      v92[0] = v24;
      v91 = v25;
      v90 = v26;
      sub_268CD549C(0, v92);
      sub_268CD549C(6, v92);
      v88 = sub_268CD7600;
      v89 = v39;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v40;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268DD25BC;
      v89 = v41;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v42;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v43;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268DD25BC;
      v89 = v44;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v45;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v46;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268F75854;
      v89 = v47;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v48;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v49;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268DD25BC;
      v89 = v50;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v51;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v52;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268DD25BC;
      v89 = v53;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v54;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268CD7600;
      v89 = v55;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      v88 = sub_268DD25BC;
      v89 = v56;
      sub_268CD54B0(&v88, v92, &v91, &v90);
      _os_log_impl(&dword_268CBE000, log, v59, "[getRequestedValue] specified value: %f, currentValue: %f, indent.action: %ld, defaultAdjustment: %f, min: %f, max: %f", v24, 0x3Eu);
      sub_268CD54FC(v25);
      sub_268CD54FC(v26);
      sub_268F9B384();
    }

    else
    {
    }

    MEMORY[0x277D82BD8](log);
    v23 = [a1 action];
    if (v23 == 2)
    {
      v95 = a4;
      swift_beginAccess();
      v21 = *(v62 + 16);
      v22 = *(v62 + 24);
      swift_endAccess();
      v93 = v21;
      v94 = v22 & 1;
      if (v22)
      {
        v20 = a5;
      }

      else
      {
        v20 = v93;
      }

      *&v92[1] = a2 + v20;
      sub_268F9B794();
      v19 = v96;

      return v19;
    }

    else if (v23 == 3)
    {
      v100 = a3;
      swift_beginAccess();
      v17 = *(v62 + 16);
      v18 = *(v62 + 24);
      swift_endAccess();
      v98 = v17;
      v99 = v18 & 1;
      if (v18)
      {
        v16 = a5;
      }

      else
      {
        v16 = v98;
      }

      v97 = a2 - v16;
      sub_268F9B784();
      v15 = v101;

      return v15;
    }

    else
    {
      swift_beginAccess();
      v12 = *(v62 + 16);
      v13 = *(v62 + 24);
      swift_endAccess();
      v14 = sub_268F75264(v12, v13 & 1);

      return v14;
    }
  }

  else
  {
    v87 = v81;
    v75 = sub_268F9B294();
    v6 = sub_268DC7AE8();
    oslog = *v6;
    MEMORY[0x277D82BE0](*v6);
    v68 = swift_allocObject();
    *(v68 + 16) = v81;
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_268DD1060;
    *(v69 + 24) = v68;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_268DD25B0;
    *(v72 + 24) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v73 = v7;

    *v73 = sub_268CD7600;
    v73[1] = v70;

    v73[2] = sub_268CD7600;
    v73[3] = v71;

    v73[4] = sub_268DD25BC;
    v73[5] = v72;
    sub_268CD0F7C();

    if (os_log_type_enabled(oslog, v75))
    {
      buf = sub_268F9B3A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v66 = sub_268CD5448(0);
      v67 = sub_268CD5448(0);
      v86 = buf;
      v85 = v66;
      v84 = v67;
      sub_268CD549C(0, &v86);
      sub_268CD549C(1, &v86);
      v82 = sub_268CD7600;
      v83 = v70;
      sub_268CD54B0(&v82, &v86, &v85, &v84);
      v82 = sub_268CD7600;
      v83 = v71;
      sub_268CD54B0(&v82, &v86, &v85, &v84);
      v82 = sub_268DD25BC;
      v83 = v72;
      sub_268CD54B0(&v82, &v86, &v85, &v84);
      _os_log_impl(&dword_268CBE000, oslog, v75, "[getRequestedValue] use boundedValue: %f", buf, 0xCu);
      sub_268CD54FC(v66);
      sub_268CD54FC(v67);
      sub_268F9B384();
    }

    else
    {
    }

    MEMORY[0x277D82BD8](oslog);
    return v81;
  }
}

id sub_268F72AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_268CDA484();
  v10 = sub_268CD42AC(3, 0);
  [v10 setOldValue_];
  [v10 setUpdatedValue_];
  MEMORY[0x277D82BE0](a4);
  [v10 setMinValue_];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BE0](a5);
  [v10 setMaxValue_];
  MEMORY[0x277D82BD8](a5);
  return v10;
}

SiriSettingsIntents::NumericSettingIdentifier_optional sub_268F72BC4(uint64_t a1)
{
  v8 = a1;
  v6 = a1;
  v1 = sub_268D588E0();
  v5._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetNumericSettingIntent);
  v5._object = v2;
  if (v2)
  {
    rawValue = v5;
  }

  else
  {
    rawValue._countAndFlagsBits = sub_268F9AEF4();
    rawValue._object = v3;
  }

  return NumericSettingIdentifier.init(rawValue:)(rawValue);
}

BOOL sub_268F72C88(void *a1, void *a2)
{
  v23 = 0.0;
  v25 = a1;
  v24 = a2;
  v21 = [a1 numericValue];
  if (v21 && (v19 = [v21 value], *&v2 = MEMORY[0x277D82BD8](v21).n128_u64[0], v19))
  {
    [v19 doubleValue];
    v16 = v3;
    MEMORY[0x277D82BD8](v19);
    v17 = v16;
    v18 = 0;
  }

  else
  {
    v17 = 0.0;
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_20;
  }

  v23 = v17;
  v4 = [a2 maxValue];
  v22 = v4;
  if (v4)
  {
    v14 = v22;
    MEMORY[0x277D82BE0](v22);
    sub_268D35038(&v22);
    v15 = [v14 value];
    *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    if (v15)
    {
      [v15 doubleValue];
      v11 = v6;
      MEMORY[0x277D82BD8](v15);
      v12 = v11;
      v13 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_268D35038(&v22);
  }

  v12 = 0.0;
  v13 = 1;
LABEL_15:
  if (v13)
  {
LABEL_20:
    sub_268F9B294();
    v7 = sub_268DC7AE8();
    v9 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v9);
    return 0;
  }

  return v12 < v17;
}

BOOL sub_268F72FB8(void *a1, void *a2)
{
  v23 = 0.0;
  v25 = a1;
  v24 = a2;
  v21 = [a1 numericValue];
  if (v21 && (v19 = [v21 value], *&v2 = MEMORY[0x277D82BD8](v21).n128_u64[0], v19))
  {
    [v19 doubleValue];
    v16 = v3;
    MEMORY[0x277D82BD8](v19);
    v17 = v16;
    v18 = 0;
  }

  else
  {
    v17 = 0.0;
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_20;
  }

  v23 = v17;
  v4 = [a2 minValue];
  v22 = v4;
  if (v4)
  {
    v14 = v22;
    MEMORY[0x277D82BE0](v22);
    sub_268D35038(&v22);
    v15 = [v14 value];
    *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    if (v15)
    {
      [v15 doubleValue];
      v11 = v6;
      MEMORY[0x277D82BD8](v15);
      v12 = v11;
      v13 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_268D35038(&v22);
  }

  v12 = 0.0;
  v13 = 1;
LABEL_15:
  if (v13)
  {
LABEL_20:
    sub_268F9B294();
    v7 = sub_268DC7AE8();
    v9 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v9);
    return 0;
  }

  return v17 < v12;
}

uint64_t sub_268F732E8(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v177 = a6;
  v179 = a7;
  v156 = a1;
  v155 = a2;
  v150 = a3;
  v151 = a4;
  v152 = a5;
  v153 = a8;
  v154 = a9;
  v180 = sub_268DD1060;
  v182 = sub_268DD25B0;
  v186 = sub_268DD1060;
  v190 = sub_268DD25B0;
  v192 = sub_268CD7600;
  v194 = sub_268CD7600;
  v196 = sub_268DD25BC;
  v198 = sub_268CD7600;
  v200 = sub_268CD7600;
  v203 = sub_268DD25BC;
  v146 = "Fatal error";
  v147 = "Unexpectedly found nil while unwrapping an Optional value";
  v148 = "Swift/FloatingPointTypes.swift";
  v149 = "[handleNumericSettingIntent] Failed to execute set value callback.";
  v228 = 0.0;
  v227 = 0;
  v225 = 0;
  v226 = 0;
  v223 = 0;
  v224 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v215 = 0;
  v157 = sub_268F9B6F4();
  v158 = *(v157 - 8);
  v159 = v157 - 8;
  v160 = v158[8];
  v161 = (v160 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v156);
  v162 = &v74 - v161;
  v163 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v164 = &v74 - v163;
  v165 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v166 = &v74 - v165;
  v167 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v168 = &v74 - v167;
  v169 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v170 = &v74 - v169;
  v171 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v172 = &v74 - v171;
  v173 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v174 = &v74 - v173;
  v175 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = MEMORY[0x28223BE20](v22);
  v176 = &v74 - v175;
  v228 = v23;
  v227 = v24;
  v225 = v25;
  v226 = v26;
  v223 = v27;
  v224 = v28;
  v222 = v29;
  v221 = v30;
  v220 = v31;
  v208 = sub_268F9B284();
  v207 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v207);
  v178 = 24;
  v188 = 7;
  v181 = swift_allocObject();
  *(v181 + 16) = v177;
  v189 = swift_allocObject();
  *(v189 + 16) = v179;
  v184 = 17;
  v193 = swift_allocObject();
  *(v193 + 16) = 0;
  v195 = swift_allocObject();
  v185 = 8;
  *(v195 + 16) = 8;
  v187 = 32;
  v32 = swift_allocObject();
  v33 = v181;
  v183 = v32;
  *(v32 + 16) = v180;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v183;
  v197 = v34;
  *(v34 + 16) = v182;
  *(v34 + 24) = v35;
  v199 = swift_allocObject();
  *(v199 + 16) = 0;
  v201 = swift_allocObject();
  *(v201 + 16) = v185;
  v36 = swift_allocObject();
  v37 = v189;
  v191 = v36;
  *(v36 + 16) = v186;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  v39 = v191;
  v204 = v38;
  *(v38 + 16) = v190;
  *(v38 + 24) = v39;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v202 = sub_268F9B734();
  v205 = v40;

  v41 = v193;
  v42 = v205;
  *v205 = v192;
  v42[1] = v41;

  v43 = v195;
  v44 = v205;
  v205[2] = v194;
  v44[3] = v43;

  v45 = v197;
  v46 = v205;
  v205[4] = v196;
  v46[5] = v45;

  v47 = v199;
  v48 = v205;
  v205[6] = v198;
  v48[7] = v47;

  v49 = v201;
  v50 = v205;
  v205[8] = v200;
  v50[9] = v49;

  v51 = v204;
  v52 = v205;
  v205[10] = v203;
  v52[11] = v51;
  sub_268CD0F7C();

  if (os_log_type_enabled(v207, v208))
  {
    v138 = sub_268F9B3A4();
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v137 = 0;
    v139 = sub_268CD5448(0);
    v140 = sub_268CD5448(v137);
    v141 = &v213;
    v213 = v138;
    v142 = &v212;
    v212 = v139;
    v143 = &v211;
    v211 = v140;
    sub_268CD549C(0, &v213);
    sub_268CD549C(2, v141);
    v53 = v145;
    v209 = v192;
    v210 = v193;
    sub_268CD54B0(&v209, v141, v142, v143);
    v144 = v53;
    if (v53)
    {

      __break(1u);
    }

    else
    {
      v209 = v194;
      v210 = v195;
      sub_268CD54B0(&v209, &v213, &v212, &v211);
      v134 = 0;
      v209 = v196;
      v210 = v197;
      sub_268CD54B0(&v209, &v213, &v212, &v211);
      v133 = 0;
      v209 = v198;
      v210 = v199;
      sub_268CD54B0(&v209, &v213, &v212, &v211);
      v132 = 0;
      v209 = v200;
      v210 = v201;
      sub_268CD54B0(&v209, &v213, &v212, &v211);
      v131 = 0;
      v209 = v203;
      v210 = v204;
      sub_268CD54B0(&v209, &v213, &v212, &v211);
      v130 = 0;
      _os_log_impl(&dword_268CBE000, v207, v208, "[handleNumericSettingIntent] Requested value: %f, current value: %f", v138, 0x16u);
      v129 = 0;
      sub_268CD54FC(v139);
      sub_268CD54FC(v140);
      sub_268F9B384();

      v135 = v130;
    }
  }

  else
  {

    v135 = v145;
  }

  v128 = v135;
  MEMORY[0x277D82BD8](v207);
  if (v177 == v179)
  {
    v124 = v128;
LABEL_10:
    v111 = v124;

    v112 = 0;
    v113 = sub_268DD26C8();
    v114 = sub_268D34FD4();
    v117 = sub_268E557EC(v179);
    v122 = MEMORY[0x277D84678];
    v56 = *MEMORY[0x277D84678];
    v115 = v158[13];
    v116 = v158 + 13;
    v115(v176, v56, v157);
    v219 = v117;
    v118 = v158[2];
    v119 = v158 + 2;
    v118(v174, v176, v157);
    v120 = v158[11];
    v121 = v158 + 11;
    v123 = v120(v174, v157);
    if (v123 == *v122)
    {
      v219 = round(v117);
      goto LABEL_24;
    }

    if (v123 == *MEMORY[0x277D84670])
    {
      v219 = rint(v117);
      goto LABEL_24;
    }

    if (v123 != *MEMORY[0x277D84680])
    {
      if (v123 == *MEMORY[0x277D84688])
      {
LABEL_23:
        v219 = floor(v117);
LABEL_24:
        v105 = v219;
        v103 = v158[1];
        v104 = v158 + 1;
        v103(v176, v157);
        v57 = sub_268E3E3B0();
        v106 = sub_268E3E3F0(v57);
        v107 = sub_268E557EC(v177);
        v108 = MEMORY[0x277D84678];
        v115(v172, *MEMORY[0x277D84678], v157);
        v218 = v107;
        v118(v170, v172, v157);
        v109 = v120(v170, v157);
        if (v109 != *v108)
        {
          if (v109 == *MEMORY[0x277D84670])
          {
            v218 = rint(v107);
            goto LABEL_41;
          }

          if (v109 != *MEMORY[0x277D84680])
          {
            if (v109 == *MEMORY[0x277D84688])
            {
LABEL_40:
              v218 = floor(v107);
LABEL_41:
              v97 = v218;
              v103(v172, v157);
              v58 = sub_268E3E3B0();
              v98 = sub_268E3E3F0(v58);
              v99 = sub_268E557EC(v153);
              v100 = MEMORY[0x277D84678];
              v115(v168, *MEMORY[0x277D84678], v157);
              v217 = v99;
              v118(v166, v168, v157);
              v101 = v120(v166, v157);
              if (v101 != *v100)
              {
                if (v101 == *MEMORY[0x277D84670])
                {
                  v217 = rint(v99);
                  goto LABEL_58;
                }

                if (v101 != *MEMORY[0x277D84680])
                {
                  if (v101 == *MEMORY[0x277D84688])
                  {
LABEL_57:
                    v217 = floor(v99);
LABEL_58:
                    v91 = v217;
                    v103(v168, v157);
                    v59 = sub_268E3E3B0();
                    v92 = sub_268E3E3F0(v59);
                    v93 = sub_268E557EC(v154);
                    v94 = MEMORY[0x277D84678];
                    v115(v164, *MEMORY[0x277D84678], v157);
                    v216 = v93;
                    v118(v162, v164, v157);
                    v95 = v120(v162, v157);
                    if (v95 != *v94)
                    {
                      if (v95 == *MEMORY[0x277D84670])
                      {
                        v216 = rint(v93);
                        goto LABEL_75;
                      }

                      if (v95 != *MEMORY[0x277D84680])
                      {
                        if (v95 == *MEMORY[0x277D84688])
                        {
                          goto LABEL_74;
                        }

                        if (v95 == *MEMORY[0x277D84660])
                        {
                          v216 = trunc(v93);
                          goto LABEL_75;
                        }

                        if (v95 != *MEMORY[0x277D84668])
                        {
                          sub_268F9B114();
                          v103(v162, v157);
LABEL_75:
                          v86 = v216;
                          v103(v164, v157);
                          v60 = sub_268E3E3B0();
                          v87 = sub_268E3E3F0(v60);
                          v88 = sub_268F72AA8(0, v106, v98, v92, v87);
                          MEMORY[0x277D82BD8](v87);
                          MEMORY[0x277D82BD8](v92);
                          MEMORY[0x277D82BD8](v98);
                          v61 = MEMORY[0x277D82BD8](v106);
                          (v150)(v88, v61);
                          MEMORY[0x277D82BD8](v88);

                          result = v111;
                          v89 = v111;
                          return result;
                        }

                        v90 = *&v93 >> 63;
                        if (v93 < 0.0)
                        {
                          if (v90 != 1)
                          {
                            result = sub_268F9B584();
                            __break(1u);
                            return result;
                          }

LABEL_74:
                          v216 = floor(v93);
                          goto LABEL_75;
                        }
                      }

                      v216 = ceil(v93);
                      goto LABEL_75;
                    }

LABEL_68:
                    v216 = round(v93);
                    goto LABEL_75;
                  }

                  if (v101 == *MEMORY[0x277D84660])
                  {
                    v217 = trunc(v99);
                    goto LABEL_58;
                  }

                  if (v101 != *MEMORY[0x277D84668])
                  {
                    sub_268F9B114();
                    v103(v166, v157);
                    goto LABEL_58;
                  }

                  v96 = *&v99 >> 63;
                  if (v99 < 0.0)
                  {
                    if (v96 != 1)
                    {
                      sub_268F9B584();
                      __break(1u);
                      goto LABEL_68;
                    }

                    goto LABEL_57;
                  }
                }

                v217 = ceil(v99);
                goto LABEL_58;
              }

LABEL_51:
              v217 = round(v99);
              goto LABEL_58;
            }

            if (v109 == *MEMORY[0x277D84660])
            {
              v218 = trunc(v107);
              goto LABEL_41;
            }

            if (v109 != *MEMORY[0x277D84668])
            {
              sub_268F9B114();
              v103(v170, v157);
              goto LABEL_41;
            }

            v102 = *&v107 >> 63;
            if (v107 < 0.0)
            {
              if (v102 != 1)
              {
                sub_268F9B584();
                __break(1u);
                goto LABEL_51;
              }

              goto LABEL_40;
            }
          }

          v218 = ceil(v107);
          goto LABEL_41;
        }

LABEL_34:
        v218 = round(v107);
        goto LABEL_41;
      }

      if (v123 == *MEMORY[0x277D84660])
      {
        v219 = trunc(v117);
        goto LABEL_24;
      }

      if (v123 != *MEMORY[0x277D84668])
      {
        sub_268F9B114();
        (v158[1])(v174, v157);
        goto LABEL_24;
      }

      v110 = *&v117 >> 63;
      if (v117 < 0.0)
      {
        if (v110 != 1)
        {
          sub_268F9B584();
          __break(1u);
          goto LABEL_34;
        }

        goto LABEL_23;
      }
    }

    v219 = ceil(v117);
    goto LABEL_24;
  }

  sub_268D34FD4();
  v54 = sub_268E3E3B0();
  v55 = v128;
  v125 = v54;
  v156();
  v126 = v55;
  v127 = v55;
  if (!v55)
  {
    MEMORY[0x277D82BD8](v125);

    v124 = v126;
    goto LABEL_10;
  }

  v84 = v127;
  v85 = 0;
  MEMORY[0x277D82BD8](v125);

  v63 = v84;
  v215 = v84;
  v80 = sub_268F9B294();
  v82 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v82);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v79 = sub_268F9B734();
  v77 = v64;
  v65 = v84;
  v74 = &v214;
  v214 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v75 = sub_268F9AE64();
  v76 = v66;
  v77[3] = MEMORY[0x277D837D0];
  v67 = sub_268CDD224();
  v68 = v75;
  v69 = v76;
  v70 = v77;
  v71 = v67;
  v72 = v79;
  v77[4] = v71;
  *v70 = v68;
  v70[1] = v69;
  sub_268CD0F7C();
  v81 = v72;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v82);

  v73 = sub_268DAB2DC();
  v83 = sub_268F710D8(0, v73);
  v150();
  MEMORY[0x277D82BD8](v83);

  return v85;
}

double sub_268F75178(uint64_t a1, double a2)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  swift_endAccess();
  if (v7)
  {
    return a2;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_268F75264(uint64_t a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  sub_268F9B794();
  sub_268F9B784();
  return v4;
}

uint64_t sub_268F75374(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = sub_268F9B574() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_268F9B5A4();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = MEMORY[0x28223BE20](v23);
    v16 = v29;
    v17 = v11;
    sub_268F755B0(v10, sub_268F75954, v15, v12, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v13, MEMORY[0x277D84F78]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_268F755B0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_268F9B5A4();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

void *sub_268F757A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  sub_268F9B3C4();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_268F7580C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_268F75854(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_268F758C8();
  v5 = MEMORY[0x277D83B88];

  return sub_268F75374(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_268F758C8()
{
  v2 = qword_2802DE7F0;
  if (!qword_2802DE7F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F75954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_268F75588();
}

uint64_t sub_268F75984()
{
  type metadata accessor for SetAXColorFiltersGrayscaleHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17D0 = result;
  return result;
}

uint64_t *sub_268F759EC()
{
  if (qword_2802DB908 != -1)
  {
    swift_once();
  }

  return &qword_2802F17D0;
}

uint64_t sub_268F75A4C()
{
  v1 = *sub_268F759EC();

  return v1;
}

uint64_t sub_268F75A7C(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v7 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v7);
  v9 = *(v3 + 16);

  v10 = sub_268D3EAE4();

  v5 = sub_268DBD2E4();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268F75CA0, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F75CA0);
}

uint64_t sub_268F75C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3EB14();
}

uint64_t sub_268F75CEC()
{
  type metadata accessor for SetAXIncreaseContrastHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17D8 = result;
  return result;
}

uint64_t *sub_268F75D54()
{
  if (qword_2802DB910 != -1)
  {
    swift_once();
  }

  return &qword_2802F17D8;
}

uint64_t sub_268F75DB4()
{
  v1 = *sub_268F75D54();

  return v1;
}

uint64_t sub_268F75DE4(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v7 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v7);
  v9 = *(v3 + 16);

  v10 = sub_268D3E824();

  v5 = sub_268DBD764();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268F76008, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F76008);
}

uint64_t sub_268F75F98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3E854();
}

uint64_t sub_268F76054()
{
  sub_268F9B734();
  *v0 = "SetLabeledSettingIntent#ConnectToWifi";
  *(v0 + 8) = 37;
  *(v0 + 16) = 2;
  *(v0 + 24) = "SetLabeledSettingIntent#EnvironmentErrors";
  *(v0 + 32) = 41;
  *(v0 + 40) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  if (!v4)
  {
    v3 = 0;
LABEL_6:

    return v3;
  }

  if (v4 == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268F76260()
{
  v2 = qword_2802DE7F8;
  if (!qword_2802DE7F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F763AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F76054();
  *a2 = result;
  return result;
}

uint64_t sub_268F763E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268F76188();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268F7641C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268F76458, 0);
}

uint64_t sub_268F76458()
{
  v6 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v8 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v0[6] = v9;
  v10 = (v6 + *v6);
  v2 = v6[1];
  v3 = swift_task_alloc();
  v7[7] = v3;
  *v3 = v7[2];
  v3[1] = sub_268D71B74;
  v4 = v7[4];

  return v10(v11, v8, v9);
}

unint64_t sub_268F765F8()
{
  v2 = qword_2802DE800;
  if (!qword_2802DE800)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE800);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F76744()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268F76780, 0);
}

uint64_t sub_268F76780()
{
  v7 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v9 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v0[6] = v10;
  v11 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[7] = v3;
  v4 = sub_268F765F8();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_2879981A0, v4);
}

uint64_t sub_268F768EC(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v4 = v2[2];

  return MEMORY[0x2822009F8](sub_268F769D4, 0);
}

uint64_t sub_268F769D4()
{
  v17 = v0[7];
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;
  sub_268D2A1F0(v16, v17);
  v18 = sub_268F9A9C4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    sub_268D28588(v12[7]);
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  else
  {
    v11 = v12[7];
    v15[5] = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15 + 2);
    (*(v19 + 32))(boxed_opaque_existential_1, v11, v18);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v12[9] = v9;
  v10 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = *(MEMORY[0x277D55C70] + 4);
  v6 = swift_task_alloc();
  v12[10] = v6;
  *v6 = v12[2];
  v6[1] = sub_268DF3218;
  v7 = v12[6];

  return v10(v13, v14, v9);
}

uint64_t sub_268F76C80()
{
  sub_268F9B734();
  *v0 = "Status";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  *(v0 + 24) = "dialog1";
  *(v0 + 32) = 7;
  *(v0 + 40) = 2;
  *(v0 + 48) = "dialog2";
  *(v0 + 56) = 7;
  *(v0 + 64) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_8:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  return 3;
}

unint64_t sub_268F76F14()
{
  v2 = qword_2802DE808;
  if (!qword_2802DE808)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE808);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F77060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F76C80();
  *a2 = result;
  return result;
}

uint64_t sub_268F77098@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268F76DFC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268F770CC(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v4 = v2[2];

  return MEMORY[0x2822009F8](sub_268F771B4, 0);
}

uint64_t sub_268F771B4()
{
  v18 = v0[7];
  v17 = v0[5];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;
  sub_268D2A1F0(v17, v18);
  v19 = sub_268F9A9C4();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1) == 1)
  {
    sub_268D28588(v13[7]);
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  else
  {
    v12 = v13[7];
    v16[5] = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16 + 2);
    (*(v20 + 32))(boxed_opaque_existential_1, v12, v19);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v13[9] = v10;
  v11 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = *(MEMORY[0x277D55C68] + 4);
  v6 = swift_task_alloc();
  v13[10] = v6;
  v7 = sub_268F76F14();
  *v6 = v13[2];
  v6[1] = sub_268DF3218;
  v8 = v13[6];

  return v11(v14, v15, v10, &unk_287998230, v7);
}

uint64_t type metadata accessor for SetLabeledSettingIntentCATsSimple()
{
  v1 = qword_2802DE810;
  if (!qword_2802DE810)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F774EC()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F7755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268F775B8(a1, a2, a3);
}

uint64_t sub_268F775B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v14 = a3;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v18 = sub_268F9AB24();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v12 = &v9 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = &v9 - v11;
  v23 = v4;
  v22 = v5;
  v21 = v6;
  v24 = v3;
  sub_268CDC358(v4, &v9 - v11);
  (*(v15 + 16))(v12, v17, v18);
  MEMORY[0x277D82BE0](v14);
  v20 = sub_268F9A9D4();

  v24 = v20;
  v7 = MEMORY[0x277D82BD8](v14);
  (*(v15 + 8))(v17, v18, v7);
  sub_268CDC480(v19);

  return v20;
}

uint64_t sub_268F7779C(char a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_268F777F4(a1 & 1, a2);
}

uint64_t sub_268F777F4(int a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = sub_268F9AB24();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v13);
  v8 = &v6 - v7;
  v16 = v9 & 1;
  v15 = v4;
  v17 = v2;
  (*(v11 + 16))(v3);
  v14 = sub_268F9A9E4();

  v17 = v14;
  (*(v11 + 8))(v10, v13);

  return v14;
}

unint64_t sub_268F779A4()
{
  v2 = qword_2802DE820;
  if (!qword_2802DE820)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F77A38()
{
  v2 = qword_2802DE828;
  if (!qword_2802DE828)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F77ACC()
{
  v2 = qword_2802DE830;
  if (!qword_2802DE830)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE830);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F77B48()
{
  type metadata accessor for SetAssistiveTouchHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17F0 = result;
  return result;
}

uint64_t *sub_268F77BB0()
{
  if (qword_2802DB918 != -1)
  {
    swift_once();
  }

  return &qword_2802F17F0;
}

uint64_t sub_268F77C10()
{
  v1 = *sub_268F77BB0();

  return v1;
}

uint64_t sub_268F77C40(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v7 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v7);
  v9 = *(v3 + 16);

  v10 = sub_268D374BC();

  v5 = sub_268DBCE04();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268F77E64, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F77E64);
}

uint64_t sub_268F77DF4(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D374EC(a1 & 1);
}

uint64_t sub_268F77EB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_268F78488(a1, a2);
}

uint64_t sub_268F77F04(uint64_t a1, int a2, uint64_t a3)
{
  v22 = a1;
  v16 = a2;
  v21 = a3;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v8[1] = 0;
  v23 = sub_268F9A9C4();
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v10 = v19[8];
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0);
  v14 = v8 - v9;
  v11 = v9;
  MEMORY[0x28223BE20](v3);
  v15 = v8 - v11;
  v30 = v4;
  v29 = v5 & 1;
  v28 = v6;
  type metadata accessor for SettingsBinarySetting.Builder();
  v13 = v19[2];
  v12 = v19 + 2;
  v13(v15, v22, v23);
  v13(v14, v21, v23);
  v17 = sub_268F77EB0(v15, v14);
  v18 = sub_268F786D4(v16 & 1);

  v27 = v18;

  v26 = sub_268F787B4(v18);

  v31 = v26;

  v25 = v19[1];
  v24 = v19 + 1;
  v25(v21, v23);
  v25(v22, v23);

  return v26;
}

uint64_t sub_268F78138@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  swift_beginAccess();
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_268F781C4(uint64_t a1)
{
  v11 = a1;
  v12 = sub_268F9A9C4();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_268F78368()
{
  v2 = (v0 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_268F783C8(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_268F78488(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v11 = a2;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v15 = sub_268F9A9C4();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v3 = v12;
  v10 = &v6 - v6;
  v20 = v4;
  v19 = v11;
  v21 = v2;
  *(v2 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value) = 0;
  v7 = v21;
  v9 = *(v3 + 16);
  v8 = v3 + 16;
  v9();
  (*(v12 + 32))(v7 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name, v10, v15);
  (v9)(v10, v11, v15);
  v18 = sub_268F5038C(v10);

  v21 = v18;
  v17 = *(v12 + 8);
  v16 = v12 + 8;
  v17(v11, v15);
  v17(v14, v15);

  return v18;
}

uint64_t type metadata accessor for SettingsBinarySetting.Builder()
{
  v1 = qword_2802DE868;
  if (!qword_2802DE868)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F786D4(char a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();

  return v5;
}

uint64_t sub_268F78768()
{
  type metadata accessor for SettingsBinarySetting();

  return sub_268F787B4(v1);
}

uint64_t sub_268F787B4(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_268F78B60(a1);
}

uint64_t type metadata accessor for SettingsBinarySetting()
{
  v1 = qword_2802DE858;
  if (!qword_2802DE858)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void sub_268F78874()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268F788C0(v3);
}

uint64_t sub_268F78934()
{
  v3 = OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  v1 = sub_268F9A9C4();
  return (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t sub_268F789A0()
{
  v3 = sub_268F504C0();
  v2 = OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v3 + v2);
  return v3;
}

uint64_t sub_268F78A20()
{
  v0 = *sub_268F789A0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t SettingsBinarySetting.name.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name;
  v2 = sub_268F9A9C4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268F78B60(uint64_t a1)
{
  v17 = a1;
  v22 = 0;
  v21 = 0;
  v10 = sub_268F9A9C4();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v3;
  v21 = MEMORY[0x28223BE20](v17);
  v22 = v1;
  v8 = v1;
  v4 = v21 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  v5 = &v20;
  v11 = 32;
  v12 = 0;
  swift_beginAccess();
  (*(v6 + 16))(v9, v4, v10);
  swift_endAccess();
  (*(v6 + 32))(v8 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name, v9, v10);
  v15 = v22;
  v13 = (v17 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value);
  v14 = &v19;
  swift_beginAccess();
  v16 = *v13;
  swift_endAccess();
  *(v15 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_value) = v16;

  v18 = sub_268F50764(v17);

  v22 = v18;

  return v18;
}

uint64_t sub_268F78D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17[2] = 0;
  v17[3] = a1;
  v17[4] = a2;

  v17[0] = sub_268F9AEF4();
  v17[1] = v3;
  v16[2] = a1;
  v16[3] = a2;
  v15 = MEMORY[0x26D62DB50](v17[0], v3, a1, a2);
  sub_268CD9D30(v17);
  if (v15)
  {

    v9 = v12 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name;
    v10 = sub_268F9A9C4();
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v9);
  }

  else
  {

    v16[0] = sub_268F9AEF4();
    v16[1] = v6;
    v8 = MEMORY[0x26D62DB50](v16[0], v6, a1, a2);
    sub_268CD9D30(v16);
    if (v8)
    {

      v7 = *(v12 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_value);
      a3[3] = MEMORY[0x277D839B0];
      *a3 = v7;
    }

    else
    {

      sub_268F508B4(a1, a2, a3);
    }
  }

  return result;
}

unint64_t sub_268F78FB0()
{
  v2 = qword_2802DE838;
  if (!qword_2802DE838)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F7912C()
{
  v2 = qword_2802DE840;
  if (!qword_2802DE840)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE840);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F791D8(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v8 = sub_268F79264(a1);
  if (v6)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_268F79264(uint64_t *a1)
{
  v40 = a1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v35 = sub_268F9A9C4();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v39 = v13 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE848, &qword_268FADCC0);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v45 = v13 - v44;
  v55 = v13 - v44;
  v53 = v2;
  v54 = v1;
  v47 = v2[3];
  v48 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v47);
  sub_268F7912C();
  v3 = v46;
  sub_268F9B834();
  v49 = v3;
  v50 = v3;
  if (v3)
  {
    v20 = v50;
    v21 = 0;
  }

  else
  {
    v31 = v54;
    v32 = &v52;
    v52 = 0;
    sub_268DD91D4();
    v4 = v49;
    sub_268F9B654();
    v33 = v4;
    v34 = v4;
    if (v4)
    {
      v19 = v34;
      (*(v42 + 8))(v45, v41);
      v20 = v19;
      v21 = 0;
    }

    else
    {
      (*(v36 + 32))(v31 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name, v39, v35);
      v5 = v33;
      v27 = v54;
      v51[46] = 1;
      v6 = sub_268F9B624();
      v28 = v5;
      v29 = v6;
      v30 = v5;
      if (v5)
      {
        v18 = v30;
        (*(v42 + 8))(v45, v41);
        v20 = v18;
        v21 = 1;
      }

      else
      {
        v7 = v40;
        *(v27 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_value) = v29 & 1;
        v23 = v51;
        sub_268CDE730(v7, v51);
        v8 = v28;
        v9 = SettingsSetting.init(from:)(v23);
        v24 = v8;
        v25 = v9;
        v26 = v8;
        if (!v8)
        {
          v22 = v25;

          v54 = v22;
          (*(v42 + 8))(v45, v41);
          __swift_destroy_boxed_opaque_existential_0(v40);

          return v22;
        }

        v17 = v26;
        (*(v42 + 8))(v45, v41);
        v20 = v17;
        v21 = 7;
      }
    }
  }

  v16 = v21;
  v15 = v20;
  __swift_destroy_boxed_opaque_existential_0(v40);
  if ((v16 & 4) == 0)
  {
    if (v16)
    {
      (*(v36 + 8))(v54 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name, v35);
    }

    v14 = v54;
    type metadata accessor for SettingsBinarySetting();
    v11 = *(*v14 + 48);
    v12 = *(*v14 + 52);
    swift_deallocPartialClassInstance();
  }

  return v13[1];
}

uint64_t sub_268F797E8(void *a1)
{
  v31 = a1;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v20 = sub_268F9A9C4();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v24 = v9 - v23;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE850, qword_268FADCC8);
  v3 = v25;
  v26 = v2;
  v27 = *(v2 - 8);
  v28 = v2 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v30 = v9 - v29;
  v38 = v9 - v29;
  v37 = v4;
  v36 = v1;

  sub_268F50E0C(v31);
  v32 = v3;
  v33 = v3;
  if (v3)
  {
    v10 = v33;

    v11 = v10;
  }

  else
  {

    v14 = v31[3];
    v15 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v14);
    sub_268F7912C();
    sub_268F9B844();
    (*(v21 + 16))(v24, v19 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name, v20);
    v16 = &v35;
    v35 = 0;
    sub_268DD95FC();
    v5 = v32;
    sub_268F9B6E4();
    v17 = v5;
    v18 = v5;
    if (v5)
    {
      v9[1] = v18;
      (*(v21 + 8))(v24, v20);
      return (*(v27 + 8))(v30, v26);
    }

    else
    {
      (*(v21 + 8))(v24, v20);
      v6 = v17;
      v7 = *(v19 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_value);
      v34 = 1;
      sub_268F9B6B4();
      v12 = v6;
      v13 = v6;
      if (v6)
      {
        v9[0] = v13;
      }

      return (*(v27 + 8))(v30, v26);
    }
  }

  return result;
}

void sub_268F79B90()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268F79BDC(v3);
}

uint64_t sub_268F79C4C()
{
  v3 = OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name;
  v1 = sub_268F9A9C4();
  return (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t SettingsBinarySetting.deinit()
{
  v3 = SettingsSetting.deinit();
  v2 = OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v3 + v2);
  return v3;
}

uint64_t SettingsBinarySetting.__deallocating_deinit()
{
  v0 = *SettingsBinarySetting.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_268F79DB8()
{
  v2 = sub_268F9A9C4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_268F79EE0()
{
  v2 = sub_268F9A9C4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_268F79FEC()
{
  v2 = qword_2802DE878;
  if (!qword_2802DE878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F7A080()
{
  v2 = qword_2802DE880;
  if (!qword_2802DE880)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F7A114()
{
  v2 = qword_2802DE888;
  if (!qword_2802DE888)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE888);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SirikitLocalizedAppName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v68 = a2;
  v3 = v2;
  v4 = v41;
  v54 = v3;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v42 = sub_268F9A9C4();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v46 = &v12[-v45];
  v47 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12[-v45]);
  v48 = &v12[-v47];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCD20, qword_268FADE90);
  v50 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v51 = &v12[-v50];
  v52 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v53 = &v12[-v52];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v64 = *(*(v8 - 8) + 64);
  v55 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v56 = &v12[-v55];
  v57 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12[-v55]);
  v58 = &v12[-v57];
  v59 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12[-v57]);
  v60 = &v12[-v59];
  v61 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12[-v59]);
  v62 = &v12[-v61];
  v63 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12[-v61]);
  v65 = &v12[-v63];
  v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12[-v63]);
  v67 = &v12[-v66];
  v78 = v4;
  v77 = v9;
  v76 = v10;
  v69 = sub_268F9AA64();
  MEMORY[0x277D82BE0](v69);
  v70 = sub_268F9AA64();
  MEMORY[0x277D82BE0](v70);
  v74 = v69;
  v75 = v70;
  if (v69)
  {
    sub_268F52588(&v74, &v73);
    if (v75)
    {
      v72 = v73;
      v38 = &v74;
      v71 = v75;
      sub_268F9A8C4();
      v39 = sub_268F9B324();
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v72);
      sub_268D35038(v38);
      v40 = v39;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v73);
    goto LABEL_9;
  }

  if (v75)
  {
LABEL_9:
    sub_268F7AD2C(&v74);
    v40 = 0;
    goto LABEL_7;
  }

  sub_268D35038(&v74);
  v40 = 1;
LABEL_7:
  v37 = v40;
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v69);

  if ((v37 & 1) == 0)
  {
    v27 = 0;
    goto LABEL_20;
  }

  sub_268F9AA74();
  sub_268F9AA74();
  v34 = &v53[*(v49 + 48)];
  sub_268D2A1F0(v67, v53);
  sub_268D2A1F0(v65, v34);
  v35 = *(v43 + 48);
  v36 = v43 + 48;
  if (v35(v53, 1, v42) == 1)
  {
    if (v35(v34, 1, v42) != 1)
    {
      goto LABEL_18;
    }

    sub_268D28588(v53);
    v33 = 1;
  }

  else
  {
    sub_268D2A1F0(v53, v62);
    if (v35(v34, 1, v42) == 1)
    {
      (*(v43 + 8))(v62, v42);
LABEL_18:
      sub_268DE349C(v53);
      v33 = 0;
      goto LABEL_17;
    }

    v29 = *(v43 + 32);
    v28 = v43 + 32;
    v29(v48, v62, v42);
    v29(v46, v34, v42);
    sub_268DE3648();
    v32 = sub_268F9AE04();
    v31 = *(v43 + 8);
    v30 = v43 + 8;
    v31(v46, v42);
    v31(v48, v42);
    sub_268D28588(v53);
    v33 = v32;
  }

LABEL_17:
  v26 = v33;
  sub_268D28588(v65);
  sub_268D28588(v67);
  v27 = v26;
LABEL_20:
  v25 = v27;

  if ((v25 & 1) == 0)
  {
    v15 = 0;
    goto LABEL_31;
  }

  sub_268F9AA54();
  sub_268F9AA54();
  v22 = &v51[*(v49 + 48)];
  sub_268D2A1F0(v60, v51);
  sub_268D2A1F0(v58, v22);
  v23 = *(v43 + 48);
  v24 = v43 + 48;
  if (v23(v51, 1, v42) == 1)
  {
    if (v23(v22, 1, v42) != 1)
    {
      goto LABEL_28;
    }

    sub_268D28588(v51);
    v21 = 1;
  }

  else
  {
    sub_268D2A1F0(v51, v56);
    if (v23(v22, 1, v42) == 1)
    {
      (*(v43 + 8))(v56, v42);
LABEL_28:
      sub_268DE349C(v51);
      v21 = 0;
      goto LABEL_27;
    }

    v17 = *(v43 + 32);
    v16 = v43 + 32;
    v17(v48, v56, v42);
    v17(v46, v22, v42);
    sub_268DE3648();
    v20 = sub_268F9AE04();
    v19 = *(v43 + 8);
    v18 = v43 + 8;
    v19(v46, v42);
    v19(v48, v42);
    sub_268D28588(v51);
    v21 = v20;
  }

LABEL_27:
  v14 = v21;
  sub_268D28588(v58);
  sub_268D28588(v60);
  v15 = v14;
LABEL_31:
  v13 = v15;

  return v13 & 1;
}

void *sub_268F7AD2C(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

uint64_t *sub_268F7AD98()
{
  if (qword_2802DB920 != -1)
  {
    swift_once();
  }

  return &qword_2802F1818;
}

uint64_t sub_268F7ADF8()
{
  type metadata accessor for SetHandlerProvider();
  result = sub_268F7AE54();
  qword_2802F1818 = result;
  return result;
}

uint64_t sub_268F7AE90()
{
  v1 = *sub_268F7AD98();

  return v1;
}

uint64_t sub_268F7AEC0()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_268F7AF10(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_268F7AF70()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_268F7AFC0(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t sub_268F7B020()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_268F7B070(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t sub_268F7B12C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE890, &unk_268FADEE0);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD768, &unk_268FA56A0);
  sub_268E571E0();
  v0[3] = sub_268F9ADA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE898, &unk_268FADEF0);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDBB8, &qword_268FA6EA8);
  sub_268E516AC();
  v0[4] = sub_268F9ADA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE8A0, &unk_268FADF00);
  sub_268F9B734();
  v69 = v1;
  *v1 = 0;
  v7 = *sub_268E61BB4();

  *(v69 + 4) = type metadata accessor for SetAirplaneModeHandler();
  *(v69 + 5) = &off_2879930C0;
  *(v69 + 1) = v7;
  v69[48] = 1;
  v8 = *sub_268E4EA60();

  v10 = type metadata accessor for SetAppearanceHandler();
  *(v69 + 10) = v10;
  *(v69 + 11) = &off_287992750;
  *(v69 + 7) = v8;
  v69[96] = 2;
  v9 = *sub_268E4EA60();

  *(v69 + 16) = v10;
  *(v69 + 17) = &off_287992750;
  *(v69 + 13) = v9;
  v69[144] = 3;
  v11 = *sub_268E4EA60();

  *(v69 + 22) = v10;
  *(v69 + 23) = &off_287992750;
  *(v69 + 19) = v11;
  v69[192] = 4;
  v12 = *sub_268F77BB0();

  *(v69 + 28) = type metadata accessor for SetAssistiveTouchHandler();
  *(v69 + 29) = &off_287998240;
  *(v69 + 25) = v12;
  v69[240] = 7;
  v13 = *sub_268F86F14();

  *(v69 + 34) = type metadata accessor for SetAutoAnswerHandler();
  *(v69 + 35) = &off_287998538;
  *(v69 + 31) = v13;
  v69[288] = 8;
  v14 = *sub_268F52C04();

  *(v69 + 40) = type metadata accessor for SetAXAutoBrightnessHandler();
  *(v69 + 41) = &off_287997038;
  *(v69 + 37) = v14;
  v69[336] = 9;
  v15 = *sub_268F212D4();

  *(v69 + 46) = type metadata accessor for SetAutoCorrectHandler();
  *(v69 + 47) = &off_287995C78;
  *(v69 + 43) = v15;
  v69[384] = 10;
  v16 = *sub_268E5E614();

  *(v69 + 52) = type metadata accessor for SetBassHandler();
  *(v69 + 53) = &off_287993070;
  *(v69 + 49) = v16;
  v69[432] = 11;
  v17 = *sub_268F80F24();

  *(v69 + 58) = type metadata accessor for SetBassReduceHandler();
  *(v69 + 59) = &off_287998368;
  *(v69 + 55) = v17;
  v69[480] = 12;
  v18 = *sub_268E8D8F8();

  *(v69 + 64) = type metadata accessor for SetBluetoothHandler();
  *(v69 + 65) = &off_287993D40;
  *(v69 + 61) = v18;
  v69[528] = 13;
  v19 = *sub_268F332A0();

  *(v69 + 70) = type metadata accessor for SetAXColorFiltersBlueYellowHandler();
  *(v69 + 71) = &off_287995DA0;
  *(v69 + 67) = v19;
  v69[576] = 14;
  v20 = *sub_268DDA28C();

  *(v69 + 76) = type metadata accessor for SetAXBoldTextHandler();
  *(v69 + 77) = &off_28798F890;
  *(v69 + 73) = v20;
  v69[624] = 15;
  v21 = *sub_268F58D50();

  *(v69 + 82) = type metadata accessor for SetAXButtonShapesHandler();
  *(v69 + 83) = &off_287997140;
  *(v69 + 79) = v21;
  v69[672] = 16;
  v22 = *sub_268F7C710();

  *(v69 + 88) = type metadata accessor for SetCellularDataHandler();
  *(v69 + 89) = &off_2879982F8;
  *(v69 + 85) = v22;
  v69[720] = 17;
  v23 = *sub_268E94180();

  *(v69 + 94) = type metadata accessor for SetAXClassicInvertColorsHandler();
  *(v69 + 95) = &off_287993E98;
  *(v69 + 91) = v23;
  v69[768] = 18;
  v24 = *sub_268E54ED0();

  *(v69 + 100) = type metadata accessor for SetAXColorFiltersColorTintHandler();
  *(v69 + 101) = &off_287992E08;
  *(v69 + 97) = v24;
  v69[816] = 19;
  v25 = *sub_268D8D818();

  *(v69 + 106) = type metadata accessor for SetConversationAwarenessHandler();
  *(v69 + 107) = &off_28798CFA8;
  *(v69 + 103) = v25;
  v69[864] = 20;
  v26 = *sub_268E55238();

  *(v69 + 112) = type metadata accessor for SetDictationHandler();
  *(v69 + 113) = &off_287992E30;
  *(v69 + 109) = v26;
  v69[912] = 21;
  v27 = *sub_268E84638();

  *(v69 + 118) = type metadata accessor for SetAXDifferentiateWithoutColorHandler();
  *(v69 + 119) = &off_287993B40;
  *(v69 + 115) = v27;
  v69[960] = 23;
  v28 = *sub_268F84018();

  *(v69 + 124) = type metadata accessor for SetFlashlightHandler();
  *(v69 + 125) = &off_287998470;
  *(v69 + 121) = v28;
  v69[1008] = 24;
  v29 = *sub_268F759EC();

  *(v69 + 130) = type metadata accessor for SetAXColorFiltersGrayscaleHandler();
  *(v69 + 131) = &off_287998040;
  *(v69 + 127) = v29;
  v69[1056] = 25;
  v30 = *sub_268F3E56C();

  *(v69 + 136) = type metadata accessor for SetAXColorFiltersGreenRedHandler();
  *(v69 + 137) = &off_287996600;
  *(v69 + 133) = v30;
  v69[1104] = 26;
  v31 = *sub_268E037D4();

  *(v69 + 142) = type metadata accessor for SetHeySiriHandler();
  *(v69 + 143) = &off_287990DE0;
  *(v69 + 139) = v31;
  v69[1152] = 27;
  v32 = *sub_268F75D54();

  *(v69 + 148) = type metadata accessor for SetAXIncreaseContrastHandler();
  *(v69 + 149) = &off_287998068;
  *(v69 + 145) = v32;
  v69[1200] = 28;
  v33 = *sub_268E76DD0();

  *(v69 + 154) = type metadata accessor for SetAXInvertColorsHandler();
  *(v69 + 155) = &off_287993868;
  *(v69 + 151) = v33;
  v69[1248] = 29;
  v34 = *sub_268F232E8();

  *(v69 + 160) = type metadata accessor for SetLocationServicesHandler();
  *(v69 + 161) = &off_287995CF0;
  *(v69 + 157) = v34;
  v69[1296] = 31;
  v35 = *sub_268F48728();

  *(v69 + 166) = type metadata accessor for SetNightShiftHandler();
  *(v69 + 167) = &off_287996AB0;
  *(v69 + 163) = v35;
  v69[1344] = 34;
  v36 = *sub_268E77570();

  *(v69 + 172) = type metadata accessor for SetAXOnOffLabelsHandler();
  *(v69 + 173) = &off_287993890;
  *(v69 + 169) = v36;
  v69[1392] = 35;
  v37 = *sub_268D5BBFC();

  v38 = type metadata accessor for SetPersonalHotspotHandler();
  *(v69 + 178) = v38;
  *(v69 + 179) = &off_28798CC88;
  *(v69 + 175) = v37;
  v69[1440] = 36;
  v39 = *sub_268D5BBFC();

  *(v69 + 184) = v38;
  *(v69 + 185) = &off_28798CC88;
  *(v69 + 181) = v39;
  v69[1488] = 37;
  v40 = *sub_268F236A8();

  *(v69 + 190) = type metadata accessor for SetPersonalizedVolumeHandler();
  *(v69 + 191) = &off_287995D40;
  *(v69 + 187) = v40;
  v69[1536] = 38;
  v41 = *sub_268CDDAB8();

  *(v69 + 196) = type metadata accessor for SetLowPowerModeHandler();
  *(v69 + 197) = &off_28798C0F8;
  *(v69 + 193) = v41;
  v69[1584] = 39;
  v42 = *sub_268CDE334();

  *(v69 + 202) = type metadata accessor for SetAXColorFiltersRedGreenHandler();
  *(v69 + 203) = &off_28798C120;
  *(v69 + 199) = v42;
  v69[1632] = 40;
  v43 = *sub_268D8DDC4();

  *(v69 + 208) = type metadata accessor for SetAXReduceTransparencyHandler();
  *(v69 + 209) = &off_28798CFE8;
  *(v69 + 205) = v43;
  v69[1680] = 41;
  v44 = *sub_268F6BEC8();

  *(v69 + 214) = type metadata accessor for SetAXReduceWhitePointHandler();
  *(v69 + 215) = &off_287997878;
  *(v69 + 211) = v44;
  v69[1728] = 42;
  v45 = *sub_268E54C60();

  *(v69 + 220) = type metadata accessor for SetSiriHandler();
  *(v69 + 221) = &off_287992DE0;
  *(v69 + 217) = v45;
  v69[1776] = 43;
  v46 = *sub_268DDB8F4();

  *(v69 + 226) = type metadata accessor for SetSmartSiriVolumeHandler();
  *(v69 + 227) = &off_28798F8D8;
  *(v69 + 223) = v46;
  v69[1824] = 45;
  v47 = *sub_268DFC80C();

  *(v69 + 232) = type metadata accessor for SetAnnounceNotificationsHandler();
  *(v69 + 233) = &off_287990B10;
  *(v69 + 229) = v47;
  v69[1872] = 47;
  v48 = *sub_268F6C668();

  *(v69 + 238) = type metadata accessor for SetAXSwitchControlHandler();
  *(v69 + 239) = &off_2879978A0;
  *(v69 + 235) = v48;
  v69[1920] = 48;
  v49 = *sub_268E55980();

  *(v69 + 244) = type metadata accessor for SetAXVoiceControlHandler();
  *(v69 + 245) = &off_287992EA8;
  *(v69 + 241) = v49;
  v69[1968] = 49;
  v50 = *sub_268F705AC();

  *(v69 + 250) = type metadata accessor for SetVoiceOverHandler();
  *(v69 + 251) = &off_2879978C8;
  *(v69 + 247) = v50;
  v69[2016] = 50;
  v51 = *sub_268EC73A8();

  *(v69 + 256) = type metadata accessor for SetVpnHandler();
  *(v69 + 257) = &off_287995620;
  *(v69 + 253) = v51;
  v69[2064] = 51;
  v52 = *sub_268DAE4C8();

  *(v69 + 262) = type metadata accessor for SetWifiHandler();
  *(v69 + 263) = &off_28798E178;
  *(v69 + 259) = v52;
  v69[2112] = 52;
  v53 = *sub_268DD9CBC();

  *(v69 + 268) = type metadata accessor for SetZoomHandler();
  *(v69 + 269) = &off_28798F838;
  *(v69 + 265) = v53;
  v69[2160] = 53;
  v54 = *sub_268F44214();

  *(v69 + 274) = type metadata accessor for SetShakeMouseHandler();
  *(v69 + 275) = &off_2879966F0;
  *(v69 + 271) = v54;
  v69[2208] = 61;
  v55 = *sub_268F1C978();

  v62 = type metadata accessor for SetFocusModeHandler();
  *(v69 + 280) = v62;
  *(v69 + 281) = &off_287995B70;
  *(v69 + 277) = v55;
  v69[2256] = 63;
  v56 = *sub_268F1C978();

  *(v69 + 286) = v62;
  *(v69 + 287) = &off_287995B70;
  *(v69 + 283) = v56;
  v69[2304] = 60;
  v57 = *sub_268F1C978();

  *(v69 + 292) = v62;
  *(v69 + 293) = &off_287995B70;
  *(v69 + 289) = v57;
  v69[2352] = 59;
  v58 = *sub_268F1C978();

  *(v69 + 298) = v62;
  *(v69 + 299) = &off_287995B70;
  *(v69 + 295) = v58;
  v69[2400] = 57;
  v59 = *sub_268F1C978();

  *(v69 + 304) = v62;
  *(v69 + 305) = &off_287995B70;
  *(v69 + 301) = v59;
  v69[2448] = 62;
  v60 = *sub_268F1C978();

  *(v69 + 310) = v62;
  *(v69 + 311) = &off_287995B70;
  *(v69 + 307) = v60;
  v69[2496] = 58;
  v61 = *sub_268F1C978();

  *(v69 + 316) = v62;
  *(v69 + 317) = &off_287995B70;
  *(v69 + 313) = v61;
  v69[2544] = 22;
  v63 = *sub_268F1C978();

  *(v69 + 322) = v62;
  *(v69 + 323) = &off_287995B70;
  *(v69 + 319) = v63;
  v69[2592] = 5;
  v64 = *sub_268F88DB8();

  v66 = type metadata accessor for SetNoiseManagementHandler();
  *(v69 + 328) = v66;
  *(v69 + 329) = &off_287998658;
  *(v69 + 325) = v64;
  v69[2640] = 6;
  v65 = *sub_268F88DB8();

  *(v69 + 334) = v66;
  *(v69 + 335) = &off_287998658;
  *(v69 + 331) = v65;
  v69[2688] = 32;
  v67 = *sub_268F88DB8();

  *(v69 + 340) = v66;
  *(v69 + 341) = &off_287998658;
  *(v69 + 337) = v67;
  v69[2736] = 46;
  v68 = *sub_268DAEF34();

  *(v69 + 346) = type metadata accessor for SetStandByHandler();
  *(v69 + 347) = &off_28798E1A0;
  *(v69 + 343) = v68;
  v69[2784] = 64;
  v70 = *sub_268EC7164();

  *(v69 + 352) = type metadata accessor for SetReduceLoudSoundsHandler();
  *(v69 + 353) = &off_2879955F8;
  *(v69 + 349) = v70;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  sub_268E12E98();
  v0[2] = sub_268F9ADA4();
  v71 = *sub_268E5AE94();

  type metadata accessor for SetSoundAnalysisHandler();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE8A8, &qword_268FADF10);
  sub_268F9ADD4();
  swift_endAccess();
  v72 = *sub_268E554A8();

  type metadata accessor for SetBackgroundSoundsHandler();
  swift_beginAccess();
  sub_268F9ADD4();
  swift_endAccess();
  v73 = *sub_268F4FEC8();

  type metadata accessor for SetAXMotionCuesHandler();
  swift_beginAccess();
  sub_268F9ADD4();
  swift_endAccess();
  sub_268F9B734();
  v80 = v2;
  *v2 = 1;
  v74 = *sub_268E8D118();

  v75 = type metadata accessor for SetDisplayBrightnessHandler();
  *(v80 + 4) = v75;
  *(v80 + 5) = &off_287993CD8;
  *(v80 + 1) = v74;
  v80[48] = 2;
  v76 = *sub_268E8D118();

  *(v80 + 10) = v75;
  *(v80 + 11) = &off_287993CD8;
  *(v80 + 7) = v76;
  v80[96] = 7;
  v77 = *sub_268DCA278();

  v79 = type metadata accessor for SetSiriVolumeHandler();
  *(v80 + 16) = v79;
  *(v80 + 17) = &off_28798F238;
  *(v80 + 13) = v77;
  v80[144] = 8;
  v78 = *sub_268DCA278();

  *(v80 + 22) = v79;
  *(v80 + 23) = &off_28798F238;
  *(v80 + 19) = v78;
  v80[192] = 9;
  v81 = *sub_268DCA278();

  *(v80 + 28) = v79;
  *(v80 + 29) = &off_28798F238;
  *(v80 + 25) = v81;
  sub_268CD0F7C();
  v82 = sub_268F9ADA4();
  swift_beginAccess();
  v3 = *(v86 + 24);
  *(v86 + 24) = v82;

  swift_endAccess();
  sub_268F9B734();
  v83 = v4;
  *v4 = 1;
  v84 = *sub_268DE3754();

  v83[4] = type metadata accessor for SetWifiNetworkHandler();
  v83[5] = &off_28798FA40;
  v83[1] = v84;
  sub_268CD0F7C();
  v85 = sub_268F9ADA4();
  swift_beginAccess();
  v5 = *(v86 + 32);
  *(v86 + 32) = v85;

  swift_endAccess();
  return v86;
}

uint64_t sub_268F7C430(char *a1)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  sub_268E12E98();
  sub_268F9ADC4();
}

uint64_t sub_268F7C4F0(char *a1)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v1 + 24);

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD768, &unk_268FA56A0);
  sub_268E571E0();
  sub_268F9ADC4();
}

uint64_t sub_268F7C5B0()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDBB8, &qword_268FA6EA8);
  sub_268E516AC();
  sub_268F9ADC4();
}

uint64_t sub_268F7C684()
{
  sub_268CD7930(v0 + 2);
  sub_268CD7930(v0 + 3);
  sub_268CD7930(v0 + 4);
  return v2;
}

uint64_t *sub_268F7C710()
{
  if (qword_2802DB928 != -1)
  {
    swift_once();
  }

  return &qword_2802F1820;
}

uint64_t sub_268F7C770()
{
  type metadata accessor for SetCellularDataHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1820 = result;
  return result;
}

uint64_t sub_268F7C7D8()
{
  v1 = *sub_268F7C710();

  return v1;
}

uint64_t sub_268F7C808(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v38 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v38);
  v39 = *(v3 + 16);

  v40 = sub_268D38D28();

  if (v40)
  {
    v32 = *(v37 + 16);

    v33 = sub_268D36960();

    MEMORY[0x277D82BE0](a1);
    if (v33)
    {
      [a1 binaryValue];
      type metadata accessor for INBinarySettingValue();
      sub_268CD925C();
      v31 = sub_268F9B754();
      MEMORY[0x277D82BE0](a1);
      if (v31)
      {
        v30 = 1;
      }

      else
      {
        [a1 binaryValue];
        v30 = sub_268F9B754();
      }

      MEMORY[0x277D82BD8](a1);
      v29 = v30;
    }

    else
    {
      v29 = 0;
    }

    MEMORY[0x277D82BD8](a1);
    if (v29)
    {
      sub_268F9B294();
      v9 = sub_268DC7AE8();
      v13 = *v9;
      MEMORY[0x277D82BE0](*v9);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v13);

      v14 = sub_268DA9A7C(7, 0);
      a2();
      MEMORY[0x277D82BD8](v14);
    }

    else
    {
      v27 = *(v37 + 16);

      v28 = sub_268D3841C();

      if (v28)
      {
        v26 = 1;
      }

      else
      {
        v24 = *(v37 + 16);

        v25 = sub_268D38140();

        v26 = v25;
      }

      if (v26)
      {
        sub_268F9B284();
        v7 = sub_268DC7AE8();
        v15 = *v7;
        MEMORY[0x277D82BE0](*v7);
        sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v15);
        v16 = *(v37 + 16);

        v17 = sub_268D38D64();

        v8 = sub_268DBDF24();
        v18 = *v8;
        v19 = v8[1];
        v20 = *(v8 + 16);
        v21 = *(v37 + 24);

        sub_268DAAB84(v17 & 1, a1, v18, v19, v20, v21 & 1, a2, a3, sub_268F7CF60, v37, 0, 1, 0, 0);
        return sub_268CD9A28(sub_268F7CF60);
      }

      else
      {
        sub_268F9B294();
        v5 = sub_268DC7AE8();
        v22 = *v5;
        MEMORY[0x277D82BE0](*v5);
        sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v22);

        v23 = sub_268DA9A7C(6, 0);
        a2();
        MEMORY[0x277D82BD8](v23);
      }
    }
  }

  else
  {
    sub_268F9B294();
    v10 = sub_268DC7AE8();
    v11 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v11);

    v12 = sub_268DA9A7C(7, 0);
    a2();
    MEMORY[0x277D82BD8](v12);
  }
}

uint64_t sub_268F7CEF0(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D390F0(a1 & 1);
}

uint64_t sub_268F7CFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v37 = a1;
  v65 = a2;
  v4 = v3;
  v5 = v37;
  v64 = v4;
  v71 = "ConfirmNumericSettingIntentStrategy actionForInput.";
  v69 = &dword_268CBE000;
  v38 = "ConfirmNumericSettingIntentStrategy actionForInput is not uso, treating it as CANCEL.";
  v39 = "ConfirmNumericSettingIntentStrategy actionForInput is ignore: no applicable action.";
  v40 = "ConfirmNumericSettingIntentStrategy actionForInput is ignore.";
  v41 = "ConfirmNumericSettingIntentStrategy actionForInput is handle.";
  v42 = "ConfirmSettingsIntentStrategy actionForInput is handle.";
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v83 = 0;
  v82 = 0;
  v67 = 0;
  v43 = sub_268F996C4();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v47 = v16 - v46;
  v48 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v49 = v16 - v48;
  v50 = (*(*(type metadata accessor for SettingsNLIntent() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v51 = v16 - v50;
  v52 = sub_268F9A704();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v56 = v16 - v55;
  v57 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v58 = v16 - v57;
  v83 = v16 - v57;
  v59 = sub_268F99C64();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v63 = v16 - v62;
  v82 = v16 - v62;
  v77 = sub_268F99C34();
  v74 = *(v77 - 8);
  v75 = v77 - 8;
  v66 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v77);
  v76 = v16 - v66;
  v81 = v5;
  v80 = v10;
  v79 = v11;
  v73 = *sub_268DC94CC();
  MEMORY[0x277D82BE0](v73);
  v70 = sub_268F9B284();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v72 = sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v73);
  sub_268F99BE4();
  v78 = (*(v74 + 88))(v76, v77);
  if (v78 == *MEMORY[0x277D5C128])
  {
    v13 = v51;
    (*(v74 + 96))(v76, v77);
    (*(v53 + 32))(v58, v76, v52);
    v83 = v58;
    v26 = *sub_268DC94CC();
    MEMORY[0x277D82BE0](v26);
    v24 = sub_268F9B284();
    v25 = sub_268F9B734();
    sub_268F9AC04();

    v14 = MEMORY[0x277D82BD8](v26);
    (*(v53 + 16))(v56, v58, v52, v14);
    sub_268E42410(v56, v13);
    sub_268E42470(v49);
    sub_268D87800(v51);
    (*(v44 + 104))(v47, *MEMORY[0x277D5B960], v43);
    sub_268D8785C();
    v29 = sub_268F9B754();
    v28 = *(v44 + 8);
    v27 = v44 + 8;
    v28(v47, v43);
    v28(v49, v43);
    if (v29)
    {
      sub_268F998A4();
    }

    else
    {
      sub_268F99894();
    }

    return (*(v53 + 8))(v58, v52);
  }

  else if (v78 == *MEMORY[0x277D5C160])
  {
    (*(v74 + 96))(v76, v77);
    (*(v60 + 32))(v63, v76, v59);
    v82 = v63;
    if (sub_268F7DA8C(v63))
    {
      v35 = *sub_268DC94CC();
      MEMORY[0x277D82BE0](v35);
      v33 = sub_268F9B284();
      v34 = sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v35);
      sub_268F99894();
    }

    else
    {
      v32 = *sub_268DC94CC();
      MEMORY[0x277D82BE0](v32);
      v30 = sub_268F9B284();
      v31 = sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v32);
      sub_268F998A4();
    }

    return (*(v60 + 8))(v63, v59);
  }

  else
  {
    v18 = *sub_268DC94CC();
    MEMORY[0x277D82BE0](v18);
    v16[1] = sub_268F9B284();
    v19 = 0;
    v17 = sub_268F9B734();
    v20 = 2;
    sub_268F9AC04();

    v15 = MEMORY[0x277D82BD8](v18);
    (*(v74 + 8))(v76, v77, v15);
    v23 = *sub_268DC94CC();
    MEMORY[0x277D82BE0](v23);
    v21 = sub_268F9B284();
    v22 = sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v23);
    return sub_268F998A4();
  }
}

uint64_t sub_268F7DA8C(uint64_t a1)
{
  v22 = a1;
  v2 = v1;
  v3 = v22;
  v34 = v2;
  v58 = 0;
  v57 = 0;
  v44 = 0;
  v37 = sub_268F99CB4();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v23 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v24 = &v8[-v23];
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8[-v23]);
  v26 = &v8[-v25];
  v27 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8[-v25]);
  v38 = &v8[-v27];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC748, &qword_268F9F1F8);
  v31 = *(*(v6 - 8) + 64);
  v28 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v29 = &v8[-v28];
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8[-v28]);
  v32 = &v8[-v30];
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8[-v30]);
  v45 = &v8[-v33];
  v58 = v3;
  v57 = v34;
  sub_268F99C54();
  v43 = sub_268F99CA4();
  v39 = *(v35 + 8);
  v40 = v35 + 8;
  v39(v38, v37);
  v56 = v43;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
  v42 = sub_268D88014();
  sub_268F9B234();

  v46 = sub_268F99DE4();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = *(v47 + 48);
  v50 = v47 + 48;
  if (v49(v45, 1) == 1)
  {
    sub_268D8809C(v45);
    v21 = 2;
  }

  else
  {
    v20 = sub_268F99D64();
    (*(v47 + 8))(v45, v46);
    v21 = v20 & 1;
  }

  v55 = v21;
  if (v21 == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = v55;
  }

  if (v19)
  {
    v18 = 1;
  }

  else
  {
    sub_268F99C54();
    v17 = sub_268F99CA4();
    v39(v26, v37);
    v54 = v17;
    sub_268F9B234();

    if ((v49)(v32, 1, v46) == 1)
    {
      sub_268D8809C(v32);
      v16 = 2;
    }

    else
    {
      v15 = sub_268F99D74();
      (*(v47 + 8))(v32, v46);
      v16 = v15 & 1;
    }

    v53 = v16;
    if (v16 == 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v53;
    }

    v18 = v14;
  }

  if (v18)
  {
    v13 = 1;
  }

  else
  {
    sub_268F99C54();
    v12 = sub_268F99CA4();
    v39(v24, v37);
    v52 = v12;
    sub_268F9B234();

    if ((v49)(v29, 1, v46) == 1)
    {
      sub_268D8809C(v29);
      v11 = 2;
    }

    else
    {
      v10 = sub_268F99D84();
      (*(v47 + 8))(v29, v46);
      v11 = v10 & 1;
    }

    v51 = v11;
    if (v11 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v51;
    }

    v13 = v9;
  }

  return v13 & 1;
}

uint64_t sub_268F7E1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC760, &unk_268F9F210) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_268F996C4();
  v4[11] = v6;
  v11 = *(v6 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = sub_268F99C34();
  v4[15] = v7;
  v13 = *(v7 - 8);
  v4[16] = v13;
  v8 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v9 = v4[2];

  return MEMORY[0x2822009F8](sub_268F7E3BC, 0);
}

uint64_t sub_268F7E3BC()
{
  v53 = v0[17];
  v52 = v0[16];
  v54 = v0[15];
  v56 = v0[14];
  v59 = v0[13];
  v57 = v0[12];
  v58 = v0[11];
  v51 = v0[9];
  v46 = v0[7];
  v0[2] = v0;
  v1 = sub_268DC94CC();
  v50 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v49 = v2;
  sub_268F99BE4();
  v47 = sub_268F9AE64();
  v48 = v3;
  v49[3] = MEMORY[0x277D837D0];
  v49[4] = sub_268CDD224();
  *v49 = v47;
  v49[1] = v48;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v50);
  sub_268F99BE4();
  sub_268F7EC58(v53, v56);
  (*(v52 + 8))(v53, v54);
  v55 = *(v57 + 104);
  (v55)(v59, *MEMORY[0x277D5B960], v58);
  sub_268F7FB4C();
  v61 = sub_268F9AE04();
  v60 = *(v57 + 8);
  v60(v59, v58);
  if (v61)
  {
    v21 = v45[17];
    v22 = v45[14];
    v23 = v45[13];
    v20 = v45[11];
    v24 = v45[10];
    v9 = v45[7];
    v10 = sub_268DC94CC();
    v19 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B294();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v19);
    type metadata accessor for FlowStrategy.IntentConversionError();
    sub_268E68B80();
    swift_allocError();
    sub_268F99BE4();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v60(v22, v20);

    v11 = *(v45[2] + 8);
    v12 = v45[2];
  }

  else
  {
    v41 = v45[14];
    v43 = v45[13];
    v42 = v45[11];
    v4 = *MEMORY[0x277D5B978];
    v55();
    sub_268D8785C();
    v44 = sub_268F9B754();
    v60(v43, v42);
    if (v44)
    {
      v39 = v45[14];
      v40 = v45[11];
      v38 = v45[10];
      v5 = v45[8];
      v37 = v45[6];
      v6 = sub_268DC94CC();
      v33 = *v6;
      MEMORY[0x277D82BE0](*v6);
      sub_268F9B284();
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v33);
      v34 = *MEMORY[0x277D5BED8];
      v36 = sub_268F99A94();
      v35 = *(v36 - 8);
      (*(v35 + 104))(v38, v34);
      (*(v35 + 56))(v38, 0, 1, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
      sub_268F99B44();
      sub_268D588E0();
      sub_268F99A84();
      v60(v39, v40);
    }

    else
    {
      v31 = v45[14];
      v32 = v45[11];
      v30 = v45[10];
      v7 = v45[8];
      v29 = v45[6];
      v8 = sub_268DC94CC();
      v25 = *v8;
      MEMORY[0x277D82BE0](*v8);
      sub_268F9B284();
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v25);
      v26 = *MEMORY[0x277D5BED0];
      v28 = sub_268F99A94();
      v27 = *(v28 - 8);
      (*(v27 + 104))(v30, v26);
      (*(v27 + 56))(v30, 0, 1, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
      sub_268F99B44();
      sub_268D588E0();
      sub_268F99A84();
      v60(v31, v32);
    }

    v13 = v45[17];
    v16 = v45[14];
    v17 = v45[13];
    v18 = v45[10];

    v11 = *(v45[2] + 8);
    v14 = v45[2];
  }

  return v11();
}

uint64_t sub_268F7EC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v103 = a1;
  v71 = "ConfirmNumericSettingIntentStrategy received unsupported parse object: %@.";
  v72 = sub_268D89874;
  v73 = sub_268D89940;
  v74 = sub_268D89984;
  v75 = "ConfirmNumericSettingIntentStrategy userDialogAct is UserCancelled";
  v76 = "ConfirmNumericSettingIntentStrategy userDialogAct is UserRejected";
  v77 = "ConfirmNumericSettingIntentStrategy userDialogAct is UserAccepted";
  v119 = 0;
  v118 = 0;
  v121 = 0;
  v78 = 0;
  v120 = 0;
  v95 = 0;
  v79 = sub_268F99CB4();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v83 = &v30[-v82];
  v84 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v85 = &v30[-v84];
  v86 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v87 = &v30[-v86];
  v88 = sub_268F99C64();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v92 = &v30[-v91];
  v121 = &v30[-v91];
  v93 = (*(*(type metadata accessor for SettingsNLIntent() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v94 = &v30[-v93];
  v96 = sub_268F9A704();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v100 = &v30[-v99];
  v101 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v102 = &v30[-v101];
  v120 = &v30[-v101];
  v112 = sub_268F99C34();
  v110 = *(v112 - 8);
  v111 = v112 - 8;
  v105 = *(v110 + 64);
  v104 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112);
  v106 = &v30[-v104];
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](&v30[-v104]);
  v113 = &v30[-v107];
  v119 = v10;
  v118 = v2;
  v108 = *(v110 + 16);
  v109 = v110 + 16;
  v108(v9);
  v114 = (*(v110 + 88))(v113, v112);
  if (v114 == *MEMORY[0x277D5C128])
  {
    v11 = v94;
    (*(v110 + 96))(v113, v112);
    (*(v97 + 32))(v102, v113, v96);
    v120 = v102;
    (*(v97 + 16))(v100);
    sub_268E42410(v100, v11);
    sub_268E42470(v70);
    sub_268D87800(v94);
    return (*(v97 + 8))(v102, v96);
  }

  if (v114 == *MEMORY[0x277D5C160])
  {
    v13 = v78;
    v14 = v92;
    (*(v110 + 96))(v113, v112);
    (*(v89 + 32))(v14, v113, v88);
    v121 = v14;
    sub_268F99C54();
    v65 = sub_268F99CA4();
    v63 = *(v80 + 8);
    v64 = v80 + 8;
    v63(v87, v79);
    v117 = v65;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
    v67 = sub_268D898B8();
    result = sub_268F9AFB4();
    v68 = v13;
    v69 = result;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v62 = v69;
      sub_268CD7930(&v117);
      if (v62)
      {
        v57 = sub_268F9B284();
        v59 = *sub_268DC94CC();
        MEMORY[0x277D82BE0](v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v60 = 0;
        v58 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v59);
        v61 = *MEMORY[0x277D5B978];
        v15 = sub_268F996C4();
        (*(*(v15 - 8) + 104))(v70, v61);
        return (*(v89 + 8))(v92, v88);
      }

      v16 = v68;
      sub_268F99C54();
      v54 = sub_268F99CA4();
      v63(v85, v79);
      v116 = v54;
      result = sub_268F9AFB4();
      v55 = v16;
      v56 = result;
      if (!v16)
      {
        v53 = v56;
        sub_268CD7930(&v116);
        if (v53)
        {
          v48 = sub_268F9B284();
          v50 = *sub_268DC94CC();
          MEMORY[0x277D82BE0](v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v51 = 0;
          v49 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v50);
          v52 = *MEMORY[0x277D5B968];
          v17 = sub_268F996C4();
          (*(*(v17 - 8) + 104))(v70, v52);
          return (*(v89 + 8))(v92, v88);
        }

        v18 = v55;
        sub_268F99C54();
        v46 = sub_268F99CA4();
        v63(v83, v79);
        v115 = v46;
        result = sub_268F9AFB4();
        v47 = result;
        if (!v18)
        {
          v45 = v47;
          sub_268CD7930(&v115);
          if (v45)
          {
            v40 = sub_268F9B284();
            v42 = *sub_268DC94CC();
            MEMORY[0x277D82BE0](v42);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v43 = 0;
            v41 = sub_268F9B734();
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v42);
            v44 = *MEMORY[0x277D5B970];
            v19 = sub_268F996C4();
            (*(*(v19 - 8) + 104))(v70, v44);
            return (*(v89 + 8))(v92, v88);
          }

          (*(v89 + 8))(v92, v88);
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v37 = sub_268F9B294();
  v39 = *sub_268DC94CC();
  MEMORY[0x277D82BE0](v39);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v36 = sub_268F9B734();
  v34 = v20;
  (v108)(v106, v103, v112);
  v32 = sub_268F9AE64();
  v33 = v21;
  v34[3] = MEMORY[0x277D837D0];
  v22 = sub_268CDD224();
  v23 = v32;
  v24 = v33;
  v25 = v34;
  v26 = v22;
  v27 = v36;
  v34[4] = v26;
  *v25 = v23;
  v25[1] = v24;
  sub_268CD0F7C();
  v38 = v27;
  sub_268F9AC14();

  v28 = MEMORY[0x277D82BD8](v39);
  (*(v110 + 8))(v113, v112, v28);
LABEL_15:
  v31 = *MEMORY[0x277D5B960];
  v29 = sub_268F996C4();
  return (*(*(v29 - 8) + 104))(v70, v31);
}

unint64_t sub_268F7FB4C()
{
  v2 = qword_2802DE8B0;
  if (!qword_2802DE8B0)
  {
    sub_268F996C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE8B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F7FBCC(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a2;
  v3[11] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  v4 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = sub_268F99BC4();
  v3[15] = v5;
  v9 = *(v5 - 8);
  v3[16] = v9;
  v6 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v2;
  v7 = v3[7];

  return MEMORY[0x2822009F8](sub_268F7FD1C, 0);
}

uint64_t sub_268F7FD1C()
{
  v5 = v0[13];
  v6 = v0[12];
  v0[7] = v0;
  v1 = sub_268DC94CC();
  v4 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v4);
  v0[18] = *(v5 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v10 = sub_268F99B34();
  v0[19] = v10;
  v8 = sub_268F99B44();
  v0[20] = v8;
  v9 = sub_268F99B24();
  v0[21] = v9;
  v2 = swift_task_alloc();
  *(v7 + 176) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268F7FEF0;

  return sub_268ED3BE0(v10, v8, v9);
}

uint64_t sub_268F7FEF0(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 176);
  *(v12 + 56) = *v2;
  v13 = (v12 + 56);
  *(v12 + 184) = a1;
  *(v12 + 192) = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268E87A70;
  }

  else
  {
    v9 = *(v12 + 160);
    v10 = *(v12 + 152);
    v11 = *(v12 + 144);

    v5 = *v13;
    v6 = sub_268F800A4;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268F800A4()
{
  v1 = v0[23];
  v9 = v0[17];
  v10 = v0[14];
  v12 = v0[13];
  v8 = v0[12];
  v0[7] = v0;
  v0[10] = v1;
  sub_268F99814();

  v11 = swift_task_alloc();
  *(v11 + 16) = v12;
  *(v11 + 24) = v8;
  sub_268F99B94();

  sub_268CDE730(v12 + 152, (v0 + 2));
  v14 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v2 = *(MEMORY[0x277D5BE50] + 4);
  v3 = swift_task_alloc();
  v13[25] = v3;
  *v3 = v13[7];
  v3[1] = sub_268E87808;
  v4 = v13[23];
  v5 = v13[17];
  v6 = v13[11];

  return MEMORY[0x2821BB480](v6, v4, v5, v14, v15);
}

uint64_t sub_268F80230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v8[1] = a2;
  v10 = a3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v15 = v8 - v9;
  v20 = v4;
  v19 = v5;
  v18 = a3;
  v14 = *(v5 + 96);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v13 = sub_268F99B44();
  v12 = sub_268F99B24();
  sub_268E04748(v13, v12, v15);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v6 = *(*(sub_268F999A4() - 8) + 56);
  v17 = 1;
  v6(v15, 0);
  sub_268F99BA4();
  return sub_268F99BB4();
}

uint64_t sub_268F803D8(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](sub_268F8042C, 0);
}

uint64_t sub_268F8042C()
{
  *(v0 + 16) = v0;
  v1 = sub_268DC94CC();
  v7 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v7);
  v2 = swift_task_alloc();
  v8[8] = v2;
  *v2 = v8[2];
  v2[1] = sub_268D8B9D8;
  v3 = v8[7];
  v4 = v8[6];
  v5 = v8[5];

  return sub_268F80584(v5, v4);
}

uint64_t sub_268F80584(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a2;
  v3[11] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  v4 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = sub_268F99BC4();
  v3[15] = v5;
  v9 = *(v5 - 8);
  v3[16] = v9;
  v6 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v2;
  v7 = v3[7];

  return MEMORY[0x2822009F8](sub_268F806D4, 0);
}

uint64_t sub_268F806D4()
{
  v5 = v0[13];
  v6 = v0[12];
  v0[7] = v0;
  v1 = sub_268DC94CC();
  v4 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v4);
  v0[18] = *(v5 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v10 = sub_268F99B34();
  v0[19] = v10;
  v8 = sub_268F99B44();
  v0[20] = v8;
  v9 = sub_268F99B24();
  v0[21] = v9;
  v2 = swift_task_alloc();
  *(v7 + 176) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268F7FEF0;

  return sub_268ED4968(v10, v8, v9);
}

uint64_t sub_268F808CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D34238;

  return sub_268F7E1C4(a1, a2, a3);
}

uint64_t sub_268F80994(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268F7FBCC(a1, a2);
}

uint64_t sub_268F80A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B430] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for ConfirmNumericSettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D08](a1, a2, v7, a4);
}

uint64_t sub_268F80B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B438] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for ConfirmNumericSettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D10](a1, a2, v7, a4);
}

uint64_t sub_268F80C24(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268F80584(a1, a2);
}

uint64_t sub_268F80CE4(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268F803D8(a1, a2);
}

uint64_t sub_268F80DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B428] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for ConfirmNumericSettingIntentStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D00](a1, a2, a3, v8, a5);
}

uint64_t sub_268F80E80(uint64_t a1, uint64_t a2)
{
  v7[6] = a1;
  v7[5] = a2;
  type metadata accessor for AuthenticationHandler();
  sub_268CDE730(a2, v7);
  v2 = sub_268CDC590();
  sub_268E4C814(v7, v2);
  v6 = sub_268E4CA7C(a1);

  return v6 & 1;
}

uint64_t *sub_268F80F24()
{
  if (qword_2802DB930 != -1)
  {
    swift_once();
  }

  return &qword_2802F1828;
}

uint64_t sub_268F80F84()
{
  type metadata accessor for SetBassReduceHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1828 = result;
  return result;
}

uint64_t sub_268F80FEC()
{
  v1 = *sub_268F80F24();

  return v1;
}

uint64_t sub_268F8101C(void *a1, void (*a2)(id), uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v21 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v21);
  v24 = *sub_268E50B9C();

  v23 = [a1 settingMetadata];
  v25 = sub_268E50C88(v23);
  MEMORY[0x277D82BD8](v23);

  if (v25)
  {
    sub_268F9B294();
    v7 = sub_268DC7AE8();
    v8 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);

    sub_268E948B8();
    v9 = sub_268DAB158();

    a2(v9);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v17 = [a1 settingMetadata];
    if (v17 && (v16 = [v17 targetDevice], *&v4 = MEMORY[0x277D82BD8](v17).n128_u64[0], v16))
    {
      [v16 deviceCategory];
      MEMORY[0x277D82BD8](v16);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v14 = 0;
    }

    else
    {
      type metadata accessor for INDeviceCategory();
      sub_268CD7818();
      v14 = sub_268F9AE04();
    }

    if (v14)
    {
      v13 = *(v20 + 16);

      MEMORY[0x277D82BE0](a1);
      v12 = swift_allocObject();
      v12[2] = v20;
      v12[3] = a2;
      v12[4] = a3;
      v12[5] = a1;
      sub_268D47788();
    }

    else
    {
      sub_268F9B294();
      v5 = sub_268DC7AE8();
      v10 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v10);

      sub_268E948B8();
      v11 = sub_268DAB158();

      a2(v11);
      MEMORY[0x277D82BD8](v11);
    }
  }
}

uint64_t sub_268F815C0(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v27 = a1 == 2;

  if (a1 == 2)
  {
    v25 = *(a2 + 16);

    v26 = sub_268D477AC();

    v34 = v26;
  }

  else
  {
    v34 = a1;
  }

  if (v34 == 2)
  {
    sub_268F9B294();
    v11 = sub_268DC7AE8();
    v12 = *v11;
    MEMORY[0x277D82BE0](*v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v12);

    v13 = sub_268DA9A7C(7, 0);
    a3();
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    v24 = [a5 binaryValue];
    if (v24 == 1)
    {
      v23 = 2;
    }

    else if (v24 == 2)
    {
      v23 = 1;
    }

    else
    {
      if (v24 != 3)
      {
        sub_268F9B294();
        v5 = sub_268DC7AE8();
        v21 = *v5;
        MEMORY[0x277D82BE0](*v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        v20 = v6;
        MEMORY[0x277D82BE0](a5);
        sub_268CD7620();
        sub_268D28940();
        v18 = sub_268F9AE74();
        v19 = v7;
        v20[3] = MEMORY[0x277D837D0];
        v20[4] = sub_268CDD224();
        *v20 = v18;
        v20[1] = v19;
        sub_268CD0F7C();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v21);

        v22 = sub_268DA9A7C(7, 0);
        a3();
        MEMORY[0x277D82BD8](v22);
      }

      v23 = 3;
    }

    v9 = sub_268DBDCB4();
    v14 = *v9;
    v15 = v9[1];
    v16 = *(v9 + 16);
    v17 = *(a2 + 24);

    v10 = swift_allocObject();
    *(v10 + 16) = v27;
    *(v10 + 24) = a2;
    sub_268DAAB84(v34 & 1, a5, v14, v15, v16, v17 & 1, a3, a4, sub_268F81C24, v10, v23, 0, 0, 0);
    return sub_268CD9A28(sub_268F81C24);
  }
}

uint64_t sub_268F81B40(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a3 + 16);

    sub_268D47920();
  }

  else
  {
    v4 = *(a3 + 16);

    sub_268D361FC();
  }
}

uint64_t sub_268F81C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v8 = 0;
  v22 = sub_268F9A9C4();
  v17 = *(v22 - 8);
  v18 = v22 - 8;
  v10 = v17[8];
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0);
  v14 = &v8 - v9;
  v11 = v9;
  MEMORY[0x28223BE20](v3);
  v15 = &v8 - v11;
  v29 = v4;
  v28 = v5;
  v27 = v6;
  type metadata accessor for SettingsNumericSetting.Builder();
  v13 = v17[2];
  v12 = v17 + 2;
  v13(v15, v21, v22);

  v13(v14, v19, v22);
  v16 = sub_268F81EE8(v15, v20, v14);
  v26 = v16;

  v25 = sub_268F824F0(v16);

  v30 = v25;

  v24 = v17[1];
  v23 = v17 + 1;
  v24(v19, v22);

  v24(v21, v22);

  return v25;
}

uint64_t type metadata accessor for SettingsNumericSetting.Builder()
{
  v1 = qword_280FE6238;
  if (!qword_280FE6238)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F81EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268F822A8(a1, a2, a3);
}

uint64_t sub_268F81F44@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  swift_beginAccess();
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_268F81FD0(uint64_t a1)
{
  v11 = a1;
  v12 = sub_268F9A9C4();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_268F82174()
{
  v2 = (v0 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_268F821D4(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_268F822A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v20 = a2;
  v17 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v22 = sub_268F9A9C4();
  v18 = *(v22 - 8);
  v19 = v22 - 8;
  v4 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v16 = &v12 - v5;
  v28 = v6;
  v27 = v20;
  v26 = v17;
  v29 = v3;
  v12 = v3;
  v15 = *(v18 + 16);
  v14 = v18 + 16;
  v15();
  (*(v18 + 32))(v12 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name, v16, v22);
  v13 = v29;

  v7 = v16;
  v8 = v15;
  v9 = v17;
  v10 = v22;
  *(v13 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value) = v20;
  (v8)(v7, v9, v10);
  v25 = sub_268F5038C(v16);

  v29 = v25;
  v24 = *(v18 + 8);
  v23 = v18 + 8;
  v24(v17, v22);

  v24(v21, v22);

  return v25;
}

uint64_t sub_268F824A4()
{
  type metadata accessor for SettingsNumericSetting();

  return sub_268F824F0(v1);
}

uint64_t sub_268F824F0(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_268F828E0(a1);
}

uint64_t type metadata accessor for SettingsNumericSetting()
{
  v1 = qword_280FE6120;
  if (!qword_280FE6120)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void sub_268F825B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268F825FC(v3);
}

uint64_t sub_268F82670()
{
  v4 = OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 8))(v0 + v4);
  v2 = *(v0 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value);
}

uint64_t sub_268F826F4()
{
  v4 = sub_268F504C0();
  v3 = OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v4 + v3);
  v1 = *(v4 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value);

  return v4;
}

uint64_t sub_268F82788()
{
  v0 = *sub_268F826F4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t SettingsNumericSetting.name.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name;
  v2 = sub_268F9A9C4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268F828A0()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);

  return v2;
}

uint64_t sub_268F828E0(uint64_t a1)
{
  v17 = a1;
  v22 = 0;
  v21 = 0;
  v10 = sub_268F9A9C4();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v3;
  v21 = MEMORY[0x28223BE20](v17);
  v22 = v1;
  v8 = v1;
  v4 = v21 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  v5 = &v20;
  v11 = 32;
  v12 = 0;
  swift_beginAccess();
  (*(v6 + 16))(v9, v4, v10);
  swift_endAccess();
  (*(v6 + 32))(v8 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name, v9, v10);
  v15 = v22;
  v13 = (v17 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value);
  v14 = &v19;
  swift_beginAccess();
  v16 = *v13;

  swift_endAccess();
  *(v15 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value) = v16;

  v18 = sub_268F50764(v17);

  v22 = v18;

  return v18;
}

uint64_t sub_268F82AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17[2] = 0;
  v17[3] = a1;
  v17[4] = a2;

  v17[0] = sub_268F9AEF4();
  v17[1] = v3;
  v16[2] = a1;
  v16[3] = a2;
  v15 = MEMORY[0x26D62DB50](v17[0], v3, a1, a2);
  sub_268CD9D30(v17);
  if (v15)
  {

    v9 = v12 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name;
    v10 = sub_268F9A9C4();
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v9);
  }

  else
  {

    v16[0] = sub_268F9AEF4();
    v16[1] = v6;
    v8 = MEMORY[0x26D62DB50](v16[0], v6, a1, a2);
    sub_268CD9D30(v16);

    if (v8)
    {
      v7 = *(v12 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);

      result = sub_268F9A874();
      a3[3] = result;
      *a3 = v7;
    }

    else
    {

      sub_268F508B4(a1, a2, a3);
    }
  }

  return result;
}

unint64_t sub_268F82D38()
{
  v2 = qword_2802DE8B8;
  if (!qword_2802DE8B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F82EB4()
{
  v2 = qword_280FE6258;
  if (!qword_280FE6258)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE6258);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F82F60(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v8 = sub_268F82FEC(a1);
  if (v6)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_268F82FEC(uint64_t *a1)
{
  v41 = a1;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v36 = sub_268F9A9C4();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v40 = &v13 - v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE8C0, &qword_268FAE1C0);
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v46 = &v13 - v45;
  v58 = &v13 - v45;
  v56 = v2;
  v57 = v1;
  v48 = v2[3];
  v49 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v48);
  sub_268F82EB4();
  v3 = v47;
  sub_268F9B834();
  v50 = v3;
  v51 = v3;
  if (v3)
  {
    v20 = v51;
    v21 = 0;
  }

  else
  {
    v32 = v57;
    v33 = &v55;
    v55 = 0;
    sub_268DD91D4();
    v4 = v50;
    sub_268F9B654();
    v34 = v4;
    v35 = v4;
    if (v4)
    {
      v19 = v35;
      (*(v43 + 8))(v46, v42);
      v20 = v19;
      v21 = 0;
    }

    else
    {
      (*(v37 + 32))(v32 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name, v40, v36);
      v27 = v57;
      v29 = sub_268F9A874();
      v28 = &v53;
      v53 = 1;
      sub_268E94018();
      v5 = v34;
      sub_268F9B654();
      v30 = v5;
      v31 = v5;
      if (v5)
      {
        v18 = v31;
        (*(v43 + 8))(v46, v42);
        v20 = v18;
        v21 = 1;
      }

      else
      {
        v6 = v41;
        *(v27 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value) = v54;
        v23 = v52;
        sub_268CDE730(v6, v52);
        v7 = v30;
        v8 = SettingsSetting.init(from:)(v23);
        v24 = v7;
        v25 = v8;
        v26 = v7;
        if (!v7)
        {
          v22 = v25;

          v57 = v22;
          (*(v43 + 8))(v46, v42);
          __swift_destroy_boxed_opaque_existential_0(v41);

          return v22;
        }

        v17 = v26;
        (*(v43 + 8))(v46, v42);
        v20 = v17;
        v21 = 7;
      }
    }
  }

  v16 = v21;
  v15 = v20;
  __swift_destroy_boxed_opaque_existential_0(v41);
  if ((v16 & 4) == 0)
  {
    if (v16)
    {
      (*(v37 + 8))(v57 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name, v36);
    }

    if ((v16 & 2) != 0)
    {
      v10 = *(v57 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);
    }

    v14 = v57;
    type metadata accessor for SettingsNumericSetting();
    v11 = *(*v14 + 48);
    v12 = *(*v14 + 52);
    swift_deallocPartialClassInstance();
  }

  return v13;
}

uint64_t sub_268F835BC(void *a1)
{
  v34 = a1;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v23 = sub_268F9A9C4();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v27 = v8 - v26;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE8C8, qword_268FAE1C8);
  v3 = v28;
  v29 = v2;
  v30 = *(v2 - 8);
  v31 = v2 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v33 = v8 - v32;
  v42 = v8 - v32;
  v41 = v4;
  v40 = v1;

  sub_268F50E0C(v34);
  v35 = v3;
  v36 = v3;
  if (v3)
  {
    v9 = v36;

    v10 = v9;
  }

  else
  {

    v17 = v34[3];
    v18 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v17);
    sub_268F82EB4();
    sub_268F9B844();
    (*(v24 + 16))(v27, v22 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name, v23);
    v19 = &v39;
    v39 = 0;
    sub_268DD95FC();
    v5 = v35;
    sub_268F9B6E4();
    v20 = v5;
    v21 = v5;
    if (v5)
    {
      v8[1] = v21;
      (*(v24 + 8))(v27, v23);
      return (*(v30 + 8))(v33, v29);
    }

    else
    {
      (*(v24 + 8))(v27, v23);
      v11 = *(v22 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);

      v14 = &v38;
      v38 = v11;
      v12 = &v37;
      v37 = 1;
      v13 = sub_268F9A874();
      sub_268E94098();
      v6 = v20;
      sub_268F9B6E4();
      v15 = v6;
      v16 = v6;
      if (v6)
      {
        v8[0] = v16;
      }

      return (*(v30 + 8))(v33, v29);
    }
  }

  return result;
}

void sub_268F839E4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268F83A30(v3);
}

uint64_t sub_268F83AA0()
{
  v4 = OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 8))(v0 + v4);
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);
}

uint64_t SettingsNumericSetting.deinit()
{
  v4 = SettingsSetting.deinit();
  v3 = OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v4 + v3);
  v1 = *(v4 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);

  return v4;
}

uint64_t SettingsNumericSetting.__deallocating_deinit()
{
  v0 = *SettingsNumericSetting.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_268F83C38()
{
  v2 = sub_268F9A9C4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_268F83D64()
{
  v2 = sub_268F9A9C4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_268F83E74()
{
  v2 = qword_2802DE8D0;
  if (!qword_2802DE8D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE8D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F83F08()
{
  v2 = qword_280FE6248;
  if (!qword_280FE6248)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE6248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F83F9C()
{
  v2 = qword_280FE6250;
  if (!qword_280FE6250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE6250);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F84018()
{
  if (qword_2802DB938 != -1)
  {
    swift_once();
  }

  return &qword_2802F1830;
}

uint64_t sub_268F84078()
{
  type metadata accessor for SetFlashlightHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1830 = result;
  return result;
}

uint64_t sub_268F840E0()
{
  v1 = *sub_268F84018();

  return v1;
}

uint64_t sub_268F84110(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v39 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v39);
  v40 = *(v3 + 16);

  v41 = sub_268D3DE34();

  usleep(0x30D40u);
  if (sub_268D3DF9C())
  {
    v34 = sub_268D3E1B0() > 0.0;
    v33 = sub_268D3DFD8();
    MEMORY[0x277D82BE0](a1);
    if (v34)
    {
      v30 = 0;
    }

    else
    {
      [a1 binaryValue];
      type metadata accessor for INBinarySettingValue();
      sub_268CD925C();
      v32 = sub_268F9B754();
      MEMORY[0x277D82BE0](a1);
      if (v32)
      {
        v31 = 1;
      }

      else
      {
        [a1 binaryValue];
        v31 = sub_268F9B754();
      }

      MEMORY[0x277D82BD8](a1);
      v30 = v31;
    }

    MEMORY[0x277D82BD8](a1);
    if (v30)
    {
      v29 = v33;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      sub_268F9B284();
      v5 = sub_268DC7AE8();
      v27 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v27);

      sub_268E948B8();
      v28 = sub_268DAB158();

      (a2)(v28);
      MEMORY[0x277D82BD8](v28);
    }

    else if (sub_268D3E0C4())
    {
      v26 = sub_268D3E2B0();
      if (v26)
      {
        [v26 floatValue];
        v23 = v7;
        MEMORY[0x277D82BD8](v26);
        v24 = v23;
        v25 = 0;
      }

      else
      {
        v24 = 0.0;
        v25 = 1;
      }

      if (v25)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = v24;
      }

      v8 = sub_268DBDFF4();
      v18 = *v8;
      v19 = v8[1];
      v20 = *(v8 + 16);
      v21 = *(v38 + 24);

      v9 = swift_allocObject();
      *(v9 + 16) = v41;
      *(v9 + 24) = v22;
      sub_268DAAB84(v34, a1, v18, v19, v20, v21 & 1, a2, a3, sub_268F84984, v9, 0, 1, 0, 0);
      sub_268CD9A28(sub_268F84984);
    }

    else
    {
      sub_268F9B284();
      v10 = sub_268DC7AE8();
      v16 = *v10;
      MEMORY[0x277D82BE0](*v10);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v16);

      sub_268E948B8();
      v17 = sub_268DAB158();

      (a2)(v17);
      MEMORY[0x277D82BD8](v17);

      v11 = sub_268E948B8();
      sub_268E5016C(v11, v12, 0, 0);
    }
  }

  else
  {
    sub_268F9B284();
    v13 = sub_268DC7AE8();
    v14 = *v13;
    MEMORY[0x277D82BE0](*v13);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v14);

    sub_268E948B8();
    v15 = sub_268DAB158();

    (a2)(v15);
    MEMORY[0x277D82BD8](v15);
  }
}

uint64_t sub_268F848D8(char a1, float a2)
{
  if (a1)
  {
    return sub_268D3E2EC(a2);
  }

  else
  {
    return sub_268D3E2EC(0.0);
  }
}

uint64_t *sub_268F849D8()
{
  if (qword_2802DB948 != -1)
  {
    swift_once();
  }

  return &qword_2802DE8D8;
}

uint64_t *sub_268F84A38()
{
  if (qword_280FE54E0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8210;
}

uint64_t sub_268F84A98()
{
  type metadata accessor for GetStandByHandler();
  sub_268D58CB4(v1);
  result = sub_268DAEEDC(1, v1);
  qword_280FE8210 = result;
  return result;
}

uint64_t sub_268F84AEC()
{
  v1 = *sub_268F84A38();

  return v1;
}

double sub_268F84B1C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v29 = 0;
  v32 = a1;
  v30 = a2;
  v31 = a3;
  sub_268CDD0DC();
  v19 = sub_268CD42AC(7, 0);
  v28 = v19;
  v27 = a1;
  v3 = sub_268D2E630();
  v23 = SettingIntent.deviceCategory.getter(v3, &protocol witness table for INGetSettingIntent);
  v24 = v4 & 1;
  v25 = 1;
  v26 = 0;
  if (v4)
  {
    v15 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v15 = sub_268F9AE04();
  }

  if (v15)
  {
    sub_268CDE730(v17 + 24, v20);
    v12 = v21;
    v11 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = (*(v11 + 48))(v12);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_268F9B284();
  v5 = sub_268DC7AE8();
  if (v14)
  {
    v9 = *v5;
    MEMORY[0x277D82BE0](*v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v9);
    sub_268E948B8();
    v10 = sub_268F9AE14();

    [v19 setErrorDetail_];
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    v7 = *v5;
    MEMORY[0x277D82BE0](*v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v7);
    sub_268E948B8();
    v8 = sub_268F9AE14();

    [v19 setErrorDetail_];
    MEMORY[0x277D82BD8](v8);
  }

  a2(v19);

  *&result = MEMORY[0x277D82BD8](v19).n128_u64[0];
  return result;
}

uint64_t sub_268F84F90()
{
  type metadata accessor for StandBySettings();
  v0 = sub_268F85018();
  result = sub_268F85048(v0, v1);
  qword_2802DE8D8 = result;
  return result;
}

uint64_t static StandBySettings.shared.getter()
{
  v1 = *sub_268F849D8();

  return v1;
}

uint64_t sub_268F850D4()
{
  result = sub_268F9AEF4();
  qword_2802F1838 = result;
  qword_2802F1840 = v1;
  return result;
}

uint64_t *sub_268F85118()
{
  if (qword_2802DB950 != -1)
  {
    swift_once();
  }

  return &qword_2802F1838;
}

uint64_t sub_268F85178()
{
  v0 = sub_268F85118();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268F851B4(uint64_t a1, uint64_t a2)
{
  sub_268D55794();

  *(v5 + 16) = sub_268D478D8(a1, a2);

  return v5;
}

uint64_t sub_268F85234(uint64_t a1)
{
  v22 = 0;
  v19 = 0;
  v23 = a1;
  v21 = a1;
  v20 = 1;
  type metadata accessor for INDeviceCategory();
  sub_268CD90DC();
  if ((sub_268F9B754() & 1) == 0)
  {
    v8 = 0;
    return v8 & 1;
  }

  v14 = *(v15 + 16);
  MEMORY[0x277D82BE0](v14);
  if (!v14)
  {
    goto LABEL_11;
  }

  v19 = v14;
  v1 = sub_268F85118();
  v10 = *v1;
  v11 = v1[1];

  v12 = sub_268F9AE14();

  v13 = [v14 objectForKey_];
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    sub_268F9B404();
    sub_268D55CF0(v16, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    v18 = 0;
  }

  v9 = v18 != 0;
  sub_268D28414(v17);
  if (!v9)
  {
    MEMORY[0x277D82BD8](v14);
LABEL_11:
    v8 = 1;
    return v8 & 1;
  }

  v2 = sub_268F85118();
  v4 = *v2;
  v5 = v2[1];

  v6 = sub_268F9AE14();

  v7 = [v14 BOOLForKey_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v14);
  v8 = v7;
  return v8 & 1;
}

uint64_t *sub_268F85590()
{
  if (qword_280FE4008 != -1)
  {
    swift_once();
  }

  return &qword_280FE8118;
}

uint64_t sub_268F855F0()
{
  type metadata accessor for GetAssistiveTouchHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8118 = result;
  return result;
}

uint64_t sub_268F85658()
{
  v1 = *sub_268F85590();

  return v1;
}

double sub_268F85688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBA584();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F85BA4, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268F858A0(uint64_t a1, void *a2, void (*a3)(id))
{
  v15 = *(a1 + 16);

  v19 = sub_268D374BC();

  sub_268CDD0DC();
  v16 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v18 = v3;
  v20 = [a2 settingMetadata];
  if (v19)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *v18 = sub_268E41954(v20, 0, 0, v13, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v16 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v5;
  MEMORY[0x277D82BE0](v16);
  sub_268CDD1A4();
  v9 = sub_268F9AE74();
  v10 = v6;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);

  a3(v16);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t *sub_268F85BFC()
{
  if (qword_280FE3CB0 != -1)
  {
    swift_once();
  }

  return &qword_280FE80F0;
}

uint64_t sub_268F85C5C()
{
  type metadata accessor for GetPersonalHotspotHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80F0 = result;
  return result;
}

uint64_t sub_268F85CC4()
{
  v1 = *sub_268F85BFC();

  return v1;
}

uint64_t sub_268F85CF4(void *a1, void (*a2)(void), uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v48 = a1;
  v50 = 0;
  v49 = 0;
  v53 = a1;
  v51 = a2;
  v52 = a3;
  sub_268E53518();
  if (!SettingsFeatureFlagsImpl.isGetSetHotspotEnabled()())
  {
    v20[1] = sub_268F9B284();
    v22 = *sub_268DC7AE8();
    v16 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v21 = sub_268F9B734();
    sub_268F9AC14();

    sub_268E948B8();
    v23 = v17;
    v24 = sub_268E41B70();

    (v47)(v24);

    return v49;
  }

  v40 = sub_268F9B284();
  v42 = *sub_268DC7AE8();
  v3 = v42;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v41 = sub_268F9B734();
  sub_268F9AC14();

  v43 = *(v45 + 16);

  v44 = sub_268D370FC();

  if (v44)
  {
    v4 = v49;
    v5 = sub_268DBA4B4();
    v32 = *v5;
    v33 = v5[1];
    v34 = *(v5 + 16);
    v35 = *sub_268DC7AE8();
    v31 = v35;
    v6 = v35;
    v36 = *(v45 + 24);
    v7 = v48;

    v37 = v20;
    MEMORY[0x28223BE20](v32);
    v19[2] = v8;
    v19[3] = v45;
    v19[4] = v47;
    v19[5] = v9;
    sub_268DB944C(v10, v11, v12, v13, v14, sub_268F86850, v19, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v38 = v4;

    return v38;
  }

  v25 = sub_268F9B294();
  v27 = *sub_268DC7AE8();
  v15 = v27;
  v26 = sub_268F9B734();
  sub_268F9AC14();

  sub_268CDD0DC();
  v28 = sub_268CD42AC(6, 0);
  v47();

  return v49;
}

double sub_268F86154(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v59 = a1;
  v58 = a2;
  v56 = a3;
  v57 = a4;
  v55 = a1;
  v4 = sub_268D2E630();
  v42 = SettingIntent.settingIdentifier.getter(v4, &protocol witness table for INGetSettingIntent);
  v43 = v5;

  v54 = 36;
  v41 = BinarySettingIdentifier.rawValue.getter();
  v44 = v6;

  v52[0] = v42;
  v52[1] = v43;
  *&v53 = v41;
  *(&v53 + 1) = v44;
  if (v43)
  {
    sub_268D28874(v52, &v47);
    if (*(&v53 + 1))
    {
      v46 = v47;
      v45 = v53;
      v36 = MEMORY[0x26D62DB50](v47, *(&v47 + 1), v53, *(&v53 + 1));
      sub_268CD9D30(&v45);
      sub_268CD9D30(&v46);
      sub_268CD9D30(v52);
      v37 = v36;
      goto LABEL_7;
    }

    sub_268CD9D30(&v47);
    goto LABEL_9;
  }

  if (*(&v53 + 1))
  {
LABEL_9:
    sub_268D28550(v52);
    v37 = 0;
    goto LABEL_7;
  }

  sub_268CD9D30(v52);
  v37 = 1;
LABEL_7:

  if (v37)
  {
    v35 = *(a2 + 16);

    sub_268D36DD0();

    v48 = sub_268E948B8();
    v49 = v7;
    v33 = *(a2 + 16);

    sub_268D36CE4(1);

    v34 = sub_268E41B70();
    a3();
    MEMORY[0x277D82BD8](v34);
  }

  else
  {
    v31 = *(a2 + 16);

    v32 = sub_268D36D3C();

    if (v32)
    {
      v28 = *(a2 + 16);

      v29 = sub_268D36DD0();

      v30 = v29 ^ 1;
    }

    else
    {
      v30 = 0;
    }

    if (v30)
    {
      sub_268F9B284();
      v9 = sub_268DC7AE8();
      v25 = *v9;
      MEMORY[0x277D82BE0](*v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v25);
      v26 = *(a2 + 16);

      sub_268D36D78(1);

      sub_268E948B8();
      v27 = sub_268E41B70();

      (a3)(v27);
      MEMORY[0x277D82BD8](v27);
    }

    else
    {
      sub_268CDD0DC();
      v20 = sub_268CD42AC(3, 0);
      v51 = v20;
      sub_268CDD140();
      sub_268F9B734();
      v21 = v10;
      v22 = [a1 settingMetadata];
      v23 = *(a2 + 16);

      v24 = sub_268D36D3C();

      if (v24)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      *v21 = sub_268E41954(v22, 0, 0, v19, 0, 0);
      sub_268CD0F7C();
      v14 = sub_268F9B004();

      [v20 setSettingResponseDatas_];
      MEMORY[0x277D82BD8](v14);
      sub_268F9B284();
      v11 = sub_268DC7AE8();
      v18 = *v11;
      MEMORY[0x277D82BE0](*v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v17 = v12;
      MEMORY[0x277D82BE0](v20);
      v50 = v20;
      sub_268CDD1A4();
      v15 = sub_268F9AE74();
      v16 = v13;
      v17[3] = MEMORY[0x277D837D0];
      v17[4] = sub_268CDD224();
      *v17 = v15;
      v17[1] = v16;
      sub_268CD0F7C();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v18);

      (a3)(v20);

      *&result = MEMORY[0x277D82BD8](v20).n128_u64[0];
    }
  }

  return result;
}

uint64_t *sub_268F868A8()
{
  if (qword_280FE4858 != -1)
  {
    swift_once();
  }

  return &qword_280FE8170;
}

uint64_t sub_268F86908()
{
  type metadata accessor for GetAirplaneModeHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8170 = result;
  return result;
}

uint64_t sub_268F86970()
{
  v1 = *sub_268F868A8();

  return v1;
}

double sub_268F869A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBA3E4();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F86EBC, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268F86BB8(uint64_t a1, void *a2, void (*a3)(id))
{
  v15 = *(a1 + 16);

  v19 = sub_268D36960();

  sub_268CDD0DC();
  v16 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v18 = v3;
  v20 = [a2 settingMetadata];
  if (v19)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *v18 = sub_268E41954(v20, 0, 0, v13, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v16 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v5;
  MEMORY[0x277D82BE0](v16);
  sub_268CDD1A4();
  v9 = sub_268F9AE74();
  v10 = v6;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);

  a3(v16);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t *sub_268F86F14()
{
  if (qword_2802DB960 != -1)
  {
    swift_once();
  }

  return &qword_2802F1848;
}

uint64_t sub_268F86F74()
{
  type metadata accessor for SetAutoAnswerHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1848 = result;
  return result;
}

uint64_t sub_268F86FDC()
{
  v1 = *sub_268F86F14();

  return v1;
}

uint64_t sub_268F8700C(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v7 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v7);
  v9 = *(v3 + 16);

  v10 = sub_268D3F1D4();

  v5 = sub_268DBCB94();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10 & 1, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268F87230, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F87230);
}

uint64_t sub_268F871C0(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D3F244(a1 & 1);
}

uint64_t *sub_268F872B8()
{
  if (qword_2802DB968 != -1)
  {
    swift_once();
  }

  return &qword_2802DE8E0;
}

char *sub_268F87318()
{
  type metadata accessor for SetNumericIntentHandler();
  v3 = sub_268F7AE90();
  v2 = sub_268F8739C();
  v0 = sub_268CDA2FC();
  result = sub_268F873CC(v3, v2, v0);
  qword_2802DE8E0 = result;
  return result;
}

uint64_t sub_268F8739C()
{
  v1 = *sub_268F337EC();

  return v1;
}

uint64_t static SetNumericIntentHandler.shared.getter()
{
  v0 = sub_268F872B8();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268F87458()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_setHandlerProvider);

  return v2;
}

uint64_t sub_268F87498()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_confirmationConfigProvider);

  return v2;
}

uint64_t sub_268F874D8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_setupHandler);

  return v2;
}

char *sub_268F87518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v11 = a1;
  v10 = a2;
  v9 = a3;

  *OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_setHandlerProvider = a1;

  *&v12[OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_confirmationConfigProvider] = a2;

  *&v12[OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_setupHandler] = a3;
  v8.receiver = v12;
  v8.super_class = type metadata accessor for SetNumericIntentHandler();
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v7);
  v12 = v7;

  MEMORY[0x277D82BD8](v12);
  return v7;
}

uint64_t sub_268F87640(void *a1, void (*a2)(void), uint64_t a3)
{
  v52 = 0;
  v47 = 0;
  v55 = a1;
  v53 = a2;
  v54 = a3;
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v39 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v39);
  sub_268F72BC4(a1);
  if (v51 == 13)
  {
    goto LABEL_12;
  }

  v47 = v51;
  v35 = *(v38 + OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_setHandlerProvider);

  v42 = v51;
  sub_268F7C4F0(&v42);

  if (!v43[3])
  {
    sub_268D28414(v43);
LABEL_12:
    v11 = sub_268DC7AE8();
    v19 = *v11;
    MEMORY[0x277D82BE0](*v11);
    sub_268F9B274();
    sub_268F9B734();
    v18 = v12;
    v50 = a1;
    v13 = sub_268D588E0();
    v48 = SettingIntent.settingIdentifier.getter(v13, &protocol witness table for INSetNumericSettingIntent);
    v49 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
    v16 = sub_268F9AE64();
    v17 = v15;
    v18[3] = MEMORY[0x277D837D0];
    v18[4] = sub_268CDD224();
    *v18 = v16;
    v18[1] = v17;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v19);

    sub_268CDA484();
    v20 = sub_268CD42AC(8, 0);
    a2();
    MEMORY[0x277D82BD8](v20);
  }

  sub_268CDF978(v43, __dst);
  if (sub_268F70A08(a1))
  {
    v33 = v45;
    v32 = v46;
    __swift_project_boxed_opaque_existential_1(__dst, v45);
    v34 = (*(v32 + 16))(v33) ^ 1;
  }

  else
  {
    LOBYTE(v34) = 0;
  }

  if (v34)
  {
    v4 = sub_268DC7AE8();
    v30 = *v4;
    MEMORY[0x277D82BE0](*v4);
    sub_268F9B294();
    sub_268F9B734();
    v29 = v5;
    MEMORY[0x277D82BE0](a1);
    sub_268D588E0();
    sub_268DCA900();
    v27 = sub_268F9AE74();
    v28 = v6;
    v29[3] = MEMORY[0x277D837D0];
    v29[4] = sub_268CDD224();
    *v29 = v27;
    v29[1] = v28;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v30);

    sub_268CDA484();
    v31 = sub_268CD42AC(8, 0);
    a2();
    MEMORY[0x277D82BD8](v31);

    return __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    sub_268F9B284();
    v8 = sub_268DC7AE8();
    v24 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B734();
    v23 = v9;
    sub_268CDE730(__dst, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD768, &unk_268FA56A0);
    v21 = sub_268F9AE64();
    v22 = v10;
    v23[3] = MEMORY[0x277D837D0];
    v23[4] = sub_268CDD224();
    *v23 = v21;
    v23[1] = v22;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v24);
    v25 = v46;
    __swift_project_boxed_opaque_existential_1(__dst, v45);

    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a3;
    (*(v25 + 8))(a1, sub_268F87E7C);

    return __swift_destroy_boxed_opaque_existential_0(__dst);
  }
}

uint64_t sub_268F87CDC(uint64_t a1, void (*a2)(uint64_t))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v9 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v8 = v3;
  MEMORY[0x277D82BE0](a1);
  sub_268CDA484();
  sub_268EE4A98();
  v6 = sub_268F9AE74();
  v7 = v4;
  v8[3] = MEMORY[0x277D837D0];
  v8[4] = sub_268CDD224();
  *v8 = v6;
  v8[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v9);

  a2(a1);
}

uint64_t sub_268F87F60(uint64_t a1, void (*a2)(void))
{

  v5 = sub_268F880D0(a1);
  a2();
  MEMORY[0x277D82BD8](v5);
}

id sub_268F880D0(uint64_t a1)
{
  v43 = 0;
  v40 = 0;
  v38 = 0;
  v44 = a1;
  sub_268F72BC4(a1);
  if (v42 == 13 || (v40 = v42, v34 = *(v36 + OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_confirmationConfigProvider), , v39 = v42, sub_268F35CE8(&v39, v45), , memcpy(__dst, v45, sizeof(__dst)), !__dst[3]))
  {
    sub_268F9B284();
    v7 = sub_268DC7AE8();
    v17 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v8;
    MEMORY[0x277D82BE0](a1);
    v41 = a1;
    sub_268D588E0();
    sub_268DCA900();
    v14 = sub_268F9AE74();
    v15 = v9;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v17);
    sub_268CDA484();
    return sub_268CD42AC(2, 0);
  }

  else
  {
    memcpy(v47, __dst, sizeof(v47));
    v1 = sub_268DBF2C4();
    v29 = *v1;
    v27 = v1[1];
    v28 = *(v1 + 16);
    v2 = sub_268DC7AE8();
    v30 = *v2;
    MEMORY[0x277D82BE0](*v2);
    has_malloc_size = _swift_stdlib_has_malloc_size();
    sub_268DB9934(v29, v27, v28, v30, has_malloc_size & 1);
    MEMORY[0x277D82BD8](v30);
    sub_268CDA484();
    v33 = sub_268CD42AC(2, 0);
    v38 = v33;
    sub_268DD26C8();
    sub_268D34FD4();
    v31 = v47[6];

    v31(v4);
    v32 = sub_268EAE3A8();

    v37 = [v33 oldValue];
    v26 = v37 != 0;
    sub_268D35038(&v37);
    if (v26)
    {
      v25 = [v33 oldValue];
      if (v25)
      {
        v24 = v25;
      }

      else
      {
        LOBYTE(v11) = 2;
        v12 = 85;
        LODWORD(v13) = 0;
        sub_268F9B584();
        __break(1u);
      }

      [v24 unit];
      MEMORY[0x277D82BD8](v24);
    }

    v18 = sub_268E3E3F0(v32);
    [v33 setOldValue_];
    MEMORY[0x277D82BD8](v18);
    v5 = sub_268DBF2C4();
    v21 = *v5;
    v19 = v5[1];
    v20 = *(v5 + 16);
    v6 = sub_268DC7AE8();
    v22 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268DB9B78(v21, v19, v20, v22);
    MEMORY[0x277D82BD8](v22);
    sub_268F27288(v47);
    return v33;
  }
}

id SetNumericIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetNumericIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_268F88868()
{
  if (qword_280FE6000 != -1)
  {
    swift_once();
  }

  return &qword_280FE6008;
}

uint64_t *sub_268F888C8()
{
  if (qword_2802DB978 != -1)
  {
    swift_once();
  }

  return &qword_2802DE990;
}

uint64_t *sub_268F88928()
{
  if (qword_2802DB980 != -1)
  {
    swift_once();
  }

  return &qword_2802F1850;
}

uint64_t *sub_268F88988()
{
  if (qword_2802DB988 != -1)
  {
    swift_once();
  }

  return &qword_2802F1860;
}

uint64_t sub_268F889E8()
{
  type metadata accessor for SettingsUserDefaultsProvider();
  v0 = sub_268F88A20();
  result = sub_268F85048(v0, v1);
  qword_280FE6008 = result;
  return result;
}

uint64_t static SettingsUserDefaultsProvider.shared.getter()
{
  v1 = *sub_268F88868();

  return v1;
}

uint64_t sub_268F88AFC()
{
  type metadata accessor for NotificationsUserDefaultsProvider();
  v0 = sub_268F88B34();
  result = sub_268F85048(v0, v1);
  qword_2802DE990 = result;
  return result;
}

uint64_t static NotificationsUserDefaultsProvider.shared.getter()
{
  v1 = *sub_268F888C8();

  return v1;
}

uint64_t sub_268F88B9C()
{
  result = sub_268F9AEF4();
  qword_2802F1850 = result;
  qword_2802F1858 = v1;
  return result;
}

uint64_t sub_268F88BE0()
{
  v0 = sub_268F88928();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268F88C1C()
{
  result = sub_268F9AEF4();
  qword_2802F1860 = result;
  qword_2802F1868 = v1;
  return result;
}

uint64_t sub_268F88CB0()
{
  v0 = sub_268F88988();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t *sub_268F88DB8()
{
  if (qword_2802DB990 != -1)
  {
    swift_once();
  }

  return &qword_2802F1870;
}

uint64_t sub_268F88E18()
{
  type metadata accessor for SetNoiseManagementHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1870 = result;
  return result;
}

uint64_t sub_268F88E80()
{
  v1 = *sub_268F88DB8();

  return v1;
}

uint64_t sub_268F88F00(void *a1, void (*a2)(void), uint64_t a3)
{
  v80 = 0;
  v83 = a1;
  v81 = a2;
  v82 = a3;
  v55 = [a1 settingMetadata];
  if (v55 && (v51 = [v55 targetDevice], *&v3 = MEMORY[0x277D82BD8](v55).n128_u64[0], v51))
  {
    v48 = [v51 deviceCategory];
    MEMORY[0x277D82BD8](v51);
    v49 = v48;
    v50 = 0;
  }

  else
  {
    v49 = 0;
    v50 = 1;
  }

  v76 = v49;
  v77 = v50 & 1;
  v78 = 6;
  v79 = 0;
  if (v50)
  {
    v47 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v47 = sub_268F9AE04();
  }

  if (v47)
  {
    sub_268F9B294();
    v4 = sub_268DC7AE8();
    v45 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v45);

    sub_268CD795C();
    v46 = sub_268CD42AC(7, 0);
    a2();
    MEMORY[0x277D82BD8](v46);
  }

  v6 = [a1 settingMetadata];
  v44 = v6;
  if (v6)
  {
    v39 = [v6 settingId];
    v40 = sub_268F9AE24();
    v41 = v7;
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v39);
    v42 = v40;
    v43 = v41;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v75 = 32;
  v37 = BinarySettingIdentifier.rawValue.getter();
  v38 = v8;

  v74[0] = v42;
  v74[1] = v43;
  v72[0] = v37;
  v72[1] = v38;
  sub_268D28874(v74, &v73);
  if (v38)
  {
    sub_268D28874(v72, v57);
    if (*(&v73 + 1))
    {
      v56 = v73;
      v35 = MEMORY[0x26D62DB50](v57[0], v57[1], v73, *(&v73 + 1));
      sub_268CD9D30(&v56);
      sub_268CD9D30(v57);
      sub_268CD9D30(v72);
      v36 = v35;
      goto LABEL_22;
    }

    sub_268CD9D30(v57);
    goto LABEL_24;
  }

  if (*(&v73 + 1))
  {
LABEL_24:
    sub_268D28550(v72);
    v36 = 0;
    goto LABEL_22;
  }

  sub_268CD9D30(v72);
  v36 = 1;
LABEL_22:

  if (v36)
  {

    sub_268F8993C(a1, a2, a3);
  }

  v71 = 5;
  v33 = BinarySettingIdentifier.rawValue.getter();
  v34 = v9;

  v70[0] = v42;
  v70[1] = v43;
  v67 = v33;
  v68 = v34;
  sub_268D28874(v70, &v69);
  if (v68)
  {
    sub_268D28874(&v67, v59);
    if (*(&v69 + 1))
    {
      v58 = v69;
      v31 = MEMORY[0x26D62DB50](v59[0], v59[1], v69, *(&v69 + 1));
      sub_268CD9D30(&v58);
      sub_268CD9D30(v59);
      sub_268CD9D30(&v67);
      v32 = v31;
      goto LABEL_33;
    }

    sub_268CD9D30(v59);
    goto LABEL_35;
  }

  if (*(&v69 + 1))
  {
LABEL_35:
    sub_268D28550(&v67);
    v32 = 0;
    goto LABEL_33;
  }

  sub_268CD9D30(&v67);
  v32 = 1;
LABEL_33:

  if (v32)
  {

    sub_268F8A63C(a1, a2, a3);
  }

  v66 = 6;
  v29 = BinarySettingIdentifier.rawValue.getter();
  v30 = v10;

  v65[0] = v42;
  v65[1] = v43;
  v62 = v29;
  v63 = v30;
  sub_268D28874(v65, &v64);
  if (v63)
  {
    sub_268D28874(&v62, v61);
    if (*(&v64 + 1))
    {
      v60 = v64;
      v27 = MEMORY[0x26D62DB50](v61[0], v61[1], v64, *(&v64 + 1));
      sub_268CD9D30(&v60);
      sub_268CD9D30(v61);
      sub_268CD9D30(&v62);
      v28 = v27;
      goto LABEL_44;
    }

    sub_268CD9D30(v61);
    goto LABEL_46;
  }

  if (*(&v64 + 1))
  {
LABEL_46:
    sub_268D28550(&v62);
    v28 = 0;
    goto LABEL_44;
  }

  sub_268CD9D30(&v62);
  v28 = 1;
LABEL_44:

  if (v28)
  {

    sub_268F8AFD8(a1, a2, a3);
  }

  else
  {

    sub_268F9B284();
    v11 = sub_268DC7AE8();
    v24 = *v11;
    MEMORY[0x277D82BE0](*v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v25 = v12;
    v13 = [a1 settingMetadata];
    v26 = v13;
    if (v13)
    {
      v19 = [v13 settingId];
      v20 = sub_268F9AE24();
      v21 = v14;
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v19);
      v22 = v20;
      v23 = v21;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v61[2] = v22;
    v61[3] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
    v16 = sub_268F9AE64();
    v17 = v15;
    v25[3] = MEMORY[0x277D837D0];
    v25[4] = sub_268CDD224();
    *v25 = v16;
    v25[1] = v17;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v24);

    sub_268E948B8();
    v18 = sub_268DAB158();

    (a2)(v18);
    MEMORY[0x277D82BD8](v18);
  }
}

uint64_t sub_268F8993C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(v3 + 16);

  MEMORY[0x277D82BE0](a1);

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = v8;
  sub_268D50278(sub_268F8B0D4, v9);
}

uint64_t sub_268F89A38(unsigned int a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v48 = "SetNoiseManagementHandler noise cancellation state: %@.";
  v49 = &unk_268FAE850;
  v50 = "SetNoiseManagementHandler failed to read noise cancellation.";
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v57 = v30 - v56;
  v64 = v5;
  v62 = v6;
  v63 = v7;
  v61 = v8;
  v60 = v9;
  if (v5 == 2)
  {
    v30[1] = sub_268F9B294();
    v32 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v33 = 0;
    v31 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v32);

    v34 = sub_268DA9A7C(7, v33);
    v51();
    MEMORY[0x277D82BD8](v34);
  }

  else
  {
    v47 = v55;
    v44 = v55;
    v43 = 1;
    v59 = v55 & 1;
    v40 = sub_268F9B284();
    v42 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v42);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v39 = sub_268F9B734();
    v37 = v10;
    v58 = v44 & v43;
    v35 = sub_268F9AE74();
    v36 = v11;
    v37[3] = MEMORY[0x277D837D0];
    v12 = sub_268CDD224();
    v13 = v35;
    v14 = v36;
    v15 = v37;
    v16 = v12;
    v17 = v39;
    v37[4] = v16;
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    v41 = v17;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v42);
    v45 = 0;
    v18 = sub_268F9B0E4();
    (*(*(v18 - 8) + 56))(v57, v43);
    MEMORY[0x277D82BE0](v53);

    v19 = swift_allocObject();
    v20 = v43;
    v21 = v44;
    v22 = v53;
    v23 = v54;
    v24 = v51;
    v25 = v52;
    v26 = v45;
    v27 = v57;
    v28 = v49;
    v46 = v19;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v21 & v20;
    *(v19 + 40) = v22;
    *(v19 + 48) = v23;
    *(v19 + 56) = v24;
    *(v19 + 64) = v25;
    sub_268CD3CE0(v26, v26, v27, v28, v19, MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_268F89E64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 80) = a7;
  *(v8 + 72) = a6;
  *(v8 + 64) = a5;
  *(v8 + 113) = a4 & 1;
  *(v8 + 32) = v8;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 56) = 0;
  *(v8 + 112) = a4 & 1;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  v9 = *(v8 + 32);
  return MEMORY[0x2822009F8](sub_268F89F00, 0);
}

uint64_t sub_268F89F00()
{
  v6 = *(v0 + 72);
  *(v0 + 32) = v0;
  v1 = sub_268DBE894();
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = *(v6 + 24);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = *(v0 + 32);
  v2[1] = sub_268F8A05C;
  v3 = *(v0 + 64);
  v4 = *(v0 + 113) & 1;

  return sub_268DA9AE0(v4, v3, v7, v8, v9, v10 & 1, &unk_268FAE860, v6);
}

uint64_t sub_268F8A05C(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 96);
  v6 = *(*v1 + 72);
  *(v7 + 32) = *v1;
  *(v7 + 104) = a1;

  sub_268CD9A28(&unk_268FAE860);
  v4 = *(v7 + 32);

  return MEMORY[0x2822009F8](sub_268F8A1AC, 0);
}

uint64_t sub_268F8A1AC()
{
  v7 = v0[13];
  v6 = v0[11];
  v5 = v0[10];
  v0[4] = v0;
  v0[7] = v7;

  v5(v7);

  v1 = MEMORY[0x277D82BD8](v7);
  v2 = *(v0[4] + 8);
  v3 = v0[4];

  return v2(v1);
}

uint64_t sub_268F8A294(char a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 65) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 64) = 0;
  *(v2 + 24) = 0;
  *(v2 + 64) = a1 & 1;
  *(v2 + 24) = a2;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268F8A2F4, 0);
}

uint64_t sub_268F8A2F4()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268F8A3C0;
  v3 = *(v5 + 65) & 1;

  return sub_268D4FD50(v3);
}

uint64_t sub_268F8A3C0()
{
  v7 = *v1;
  v2 = *(*v1 + 48);
  v7[2] = *v1;
  v8 = v7 + 2;
  v7[7] = v0;

  if (v0)
  {
    v6 = *v8;

    return MEMORY[0x2822009F8](sub_268F8A568, 0);
  }

  else
  {
    v3 = v7[5];

    v4 = *(*v8 + 8);

    return v4();
  }
}

uint64_t sub_268F8A568()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = v0;

  v2 = v0;
  v3 = *(*(v0 + 16) + 8);
  v4 = *(v0 + 16);
  v5 = *(v2 + 56);

  return v3();
}

uint64_t sub_268F8A63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(v3 + 16);

  MEMORY[0x277D82BE0](a1);

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = v8;
  sub_268D50818(sub_268F8B0E8, v9);
}

uint64_t sub_268F8A738(unsigned int a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v48 = "SetNoiseManagementHandler audio transparency state: %@.";
  v49 = &unk_268FAE830;
  v50 = "SetNoiseManagementHandler failed to read audio transparency";
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v57 = v30 - v56;
  v64 = v5;
  v62 = v6;
  v63 = v7;
  v61 = v8;
  v60 = v9;
  if (v5 == 2)
  {
    v30[1] = sub_268F9B294();
    v32 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v33 = 0;
    v31 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v32);

    v34 = sub_268DA9A7C(7, v33);
    v51();
    MEMORY[0x277D82BD8](v34);
  }

  else
  {
    v47 = v55;
    v44 = v55;
    v43 = 1;
    v59 = v55 & 1;
    v40 = sub_268F9B284();
    v42 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v42);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v39 = sub_268F9B734();
    v37 = v10;
    v58 = v44 & v43;
    v35 = sub_268F9AE74();
    v36 = v11;
    v37[3] = MEMORY[0x277D837D0];
    v12 = sub_268CDD224();
    v13 = v35;
    v14 = v36;
    v15 = v37;
    v16 = v12;
    v17 = v39;
    v37[4] = v16;
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    v41 = v17;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v42);
    v45 = 0;
    v18 = sub_268F9B0E4();
    (*(*(v18 - 8) + 56))(v57, v43);
    MEMORY[0x277D82BE0](v53);

    v19 = swift_allocObject();
    v20 = v43;
    v21 = v44;
    v22 = v53;
    v23 = v54;
    v24 = v51;
    v25 = v52;
    v26 = v45;
    v27 = v57;
    v28 = v49;
    v46 = v19;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v21 & v20;
    *(v19 + 40) = v22;
    *(v19 + 48) = v23;
    *(v19 + 56) = v24;
    *(v19 + 64) = v25;
    sub_268CD3CE0(v26, v26, v27, v28, v19, MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_268F8AB64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 80) = a7;
  *(v8 + 72) = a6;
  *(v8 + 64) = a5;
  *(v8 + 113) = a4 & 1;
  *(v8 + 32) = v8;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 56) = 0;
  *(v8 + 112) = a4 & 1;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  v9 = *(v8 + 32);
  return MEMORY[0x2822009F8](sub_268F8AC00, 0);
}

uint64_t sub_268F8AC00()
{
  v6 = *(v0 + 72);
  *(v0 + 32) = v0;
  v1 = sub_268DBEAA4();
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = *(v6 + 24);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = *(v0 + 32);
  v2[1] = sub_268F8AD5C;
  v3 = *(v0 + 64);
  v4 = *(v0 + 113) & 1;

  return sub_268DA9AE0(v4, v3, v7, v8, v9, v10 & 1, &unk_268FAE840, v6);
}

uint64_t sub_268F8AD5C(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 96);
  v6 = *(*v1 + 72);
  *(v7 + 32) = *v1;
  *(v7 + 104) = a1;

  sub_268CD9A28(&unk_268FAE840);
  v4 = *(v7 + 32);

  return MEMORY[0x2822009F8](sub_268F8A1AC, 0);
}

uint64_t sub_268F8AEAC(char a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 65) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 64) = 0;
  *(v2 + 24) = 0;
  *(v2 + 64) = a1 & 1;
  *(v2 + 24) = a2;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268F8AF0C, 0);
}

uint64_t sub_268F8AF0C()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268F8A3C0;
  v3 = *(v5 + 65) & 1;

  return sub_268D505A4(v3);
}

uint64_t sub_268F8AFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(v3 + 16);

  MEMORY[0x277D82BE0](a1);

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = v8;
  sub_268D50C3C(sub_268F8B528, v9);
}

uint64_t sub_268F8B0FC(unsigned int a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v48 = "SetNoiseManagementHandler auto ANC state: %@.";
  v49 = &unk_268FAE810;
  v50 = "SetNoiseManagementHandler failed to read auto ANC";
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v57 = v30 - v56;
  v64 = v5;
  v62 = v6;
  v63 = v7;
  v61 = v8;
  v60 = v9;
  if (v5 == 2)
  {
    v30[1] = sub_268F9B294();
    v32 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v33 = 0;
    v31 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v32);

    v34 = sub_268DA9A7C(7, v33);
    v51();
    MEMORY[0x277D82BD8](v34);
  }

  else
  {
    v47 = v55;
    v44 = v55;
    v43 = 1;
    v59 = v55 & 1;
    v40 = sub_268F9B284();
    v42 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v42);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v39 = sub_268F9B734();
    v37 = v10;
    v58 = v44 & v43;
    v35 = sub_268F9AE74();
    v36 = v11;
    v37[3] = MEMORY[0x277D837D0];
    v12 = sub_268CDD224();
    v13 = v35;
    v14 = v36;
    v15 = v37;
    v16 = v12;
    v17 = v39;
    v37[4] = v16;
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    v41 = v17;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v42);
    v45 = 0;
    v18 = sub_268F9B0E4();
    (*(*(v18 - 8) + 56))(v57, v43);
    MEMORY[0x277D82BE0](v53);

    v19 = swift_allocObject();
    v20 = v43;
    v21 = v44;
    v22 = v53;
    v23 = v54;
    v24 = v51;
    v25 = v52;
    v26 = v45;
    v27 = v57;
    v28 = v49;
    v46 = v19;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v21 & v20;
    *(v19 + 40) = v22;
    *(v19 + 48) = v23;
    *(v19 + 56) = v24;
    *(v19 + 64) = v25;
    sub_268CD3CE0(v26, v26, v27, v28, v19, MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_268F8B53C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 80) = a7;
  *(v8 + 72) = a6;
  *(v8 + 64) = a5;
  *(v8 + 113) = a4 & 1;
  *(v8 + 32) = v8;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 56) = 0;
  *(v8 + 112) = a4 & 1;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  v9 = *(v8 + 32);
  return MEMORY[0x2822009F8](sub_268F8B5D8, 0);
}

uint64_t sub_268F8B5D8()
{
  v6 = *(v0 + 72);
  *(v0 + 32) = v0;
  v1 = sub_268DBEB74();
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = *(v6 + 24);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = *(v0 + 32);
  v2[1] = sub_268F8B734;
  v3 = *(v0 + 64);
  v4 = *(v0 + 113) & 1;

  return sub_268DA9AE0(v4, v3, v7, v8, v9, v10 & 1, &unk_268FAE820, v6);
}

uint64_t sub_268F8B734(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 96);
  v6 = *(*v1 + 72);
  *(v7 + 32) = *v1;
  *(v7 + 104) = a1;

  sub_268CD9A28(&unk_268FAE820);
  v4 = *(v7 + 32);

  return MEMORY[0x2822009F8](sub_268F8A1AC, 0);
}

uint64_t sub_268F8B884(char a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 65) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 64) = 0;
  *(v2 + 24) = 0;
  *(v2 + 64) = a1 & 1;
  *(v2 + 24) = a2;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268F8B8E4, 0);
}

uint64_t sub_268F8B8E4()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268F8A3C0;
  v3 = *(v5 + 65) & 1;

  return sub_268D509C8(v3);
}

uint64_t sub_268F8B9B0(uint64_t a1)
{
  v2[40] = v1;
  v2[39] = a1;
  v2[34] = v2;
  v2[35] = 0;
  v2[36] = 0;
  v2[35] = a1;
  v2[36] = v1;
  v3 = v2[34];
  return MEMORY[0x2822009F8](sub_268F8BA08, 0);
}

uint64_t sub_268F8BA08()
{
  v1 = *(v0 + 312);
  *(v0 + 272) = v0;
  v59 = [v1 settingMetadata];
  if (v59 && (v57 = [v59 targetDevice], *&v2 = MEMORY[0x277D82BD8](v59).n128_u64[0], v57))
  {
    v54 = [v57 deviceCategory];
    MEMORY[0x277D82BD8](v57);
    v55 = v54;
    v56 = 0;
  }

  else
  {
    v55 = 0;
    v56 = 1;
  }

  if ((v56 & 1) == 0)
  {
    *(v58 + 296) = v55;
    *(v58 + 304) = 6;
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v3 = sub_268F9AE04();
    if (v3)
    {
      sub_268F9B294();
      v4 = sub_268DC7AE8();
      v52 = *v4;
      MEMORY[0x277D82BE0](*v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v52);
      v53 = sub_268DA9A7C(7, 0);
LABEL_58:
      v23 = *(*(v58 + 272) + 8);
      v24 = *(v58 + 272);

      return v23(v53);
    }
  }

  v51 = [*(v58 + 312) settingMetadata];
  if (v51)
  {
    v46 = [v51 settingId];
    v47 = sub_268F9AE24();
    v48 = v5;
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v46);
    v49 = v47;
    v50 = v48;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  *(v58 + 328) = v50;

  v44 = BinarySettingIdentifier.rawValue.getter();
  v45 = v6;

  *(v58 + 112) = v49;
  *(v58 + 120) = v50;
  *(v58 + 16) = v44;
  *(v58 + 24) = v45;
  sub_268D28874((v58 + 112), (v58 + 32));
  if (!*(v58 + 24))
  {
    if (!*(v58 + 40))
    {
      sub_268CD9D30(v58 + 16);

      goto LABEL_24;
    }

LABEL_22:
    sub_268D28550(v58 + 16);

    goto LABEL_27;
  }

  sub_268D28874((v58 + 16), (v58 + 240));
  if (!*(v58 + 40))
  {
    sub_268CD9D30(v58 + 240);
    goto LABEL_22;
  }

  *(v58 + 256) = *(v58 + 32);
  v43 = MEMORY[0x26D62DB50](*(v58 + 240), *(v58 + 248), *(v58 + 256), *(v58 + 264));
  sub_268CD9D30(v58 + 256);
  sub_268CD9D30(v58 + 240);
  sub_268CD9D30(v58 + 16);

  if ((v43 & 1) == 0)
  {
LABEL_27:

    v41 = BinarySettingIdentifier.rawValue.getter();
    v42 = v11;

    *(v58 + 128) = v49;
    *(v58 + 136) = v50;
    *(v58 + 48) = v41;
    *(v58 + 56) = v42;
    sub_268D28874((v58 + 128), (v58 + 64));
    if (*(v58 + 56))
    {
      sub_268D28874((v58 + 48), (v58 + 208));
      if (*(v58 + 72))
      {
        *(v58 + 224) = *(v58 + 64);
        v40 = MEMORY[0x26D62DB50](*(v58 + 208), *(v58 + 216), *(v58 + 224), *(v58 + 232));
        sub_268CD9D30(v58 + 224);
        sub_268CD9D30(v58 + 208);
        sub_268CD9D30(v58 + 48);

        if ((v40 & 1) == 0)
        {
LABEL_40:

          v38 = BinarySettingIdentifier.rawValue.getter();
          v39 = v15;

          *(v58 + 144) = v49;
          *(v58 + 152) = v50;
          *(v58 + 80) = v38;
          *(v58 + 88) = v39;
          sub_268D28874((v58 + 144), (v58 + 96));
          if (*(v58 + 88))
          {
            sub_268D28874((v58 + 80), (v58 + 176));
            if (*(v58 + 104))
            {
              *(v58 + 192) = *(v58 + 96);
              v37 = MEMORY[0x26D62DB50](*(v58 + 176), *(v58 + 184), *(v58 + 192), *(v58 + 200));
              sub_268CD9D30(v58 + 192);
              sub_268CD9D30(v58 + 176);
              sub_268CD9D30(v58 + 80);

              if ((v37 & 1) == 0)
              {
LABEL_53:
                v34 = *(v58 + 312);

                sub_268F9B284();
                v19 = sub_268DC7AE8();
                v33 = *v19;
                MEMORY[0x277D82BE0](*v19);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                sub_268F9B734();
                v35 = v20;
                v36 = [v34 settingMetadata];
                if (v36)
                {
                  v28 = [v36 settingId];
                  v29 = sub_268F9AE24();
                  v30 = v21;
                  MEMORY[0x277D82BD8](v36);
                  MEMORY[0x277D82BD8](v28);
                  v31 = v29;
                  v32 = v30;
                }

                else
                {
                  v31 = 0;
                  v32 = 0;
                }

                *(v58 + 160) = v31;
                *(v58 + 168) = v32;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
                v25 = sub_268F9AE64();
                v26 = v22;
                v35[3] = MEMORY[0x277D837D0];
                v35[4] = sub_268CDD224();
                *v35 = v25;
                v35[1] = v26;
                sub_268CD0F7C();
                sub_268F9AC14();

                MEMORY[0x277D82BD8](v33);
                v27 = sub_268DA9A7C(7, 0);

                v53 = v27;
                goto LABEL_58;
              }

              goto LABEL_50;
            }

            sub_268CD9D30(v58 + 176);
          }

          else if (!*(v58 + 104))
          {
            sub_268CD9D30(v58 + 80);

LABEL_50:

            v16 = swift_task_alloc();
            *(v58 + 368) = v16;
            *v16 = *(v58 + 272);
            v16[1] = sub_268F8CB34;
            v17 = *(v58 + 320);
            v18 = *(v58 + 312);

            return sub_268F8DC6C(v18);
          }

          sub_268D28550(v58 + 80);

          goto LABEL_53;
        }

        goto LABEL_37;
      }

      sub_268CD9D30(v58 + 208);
    }

    else if (!*(v58 + 72))
    {
      sub_268CD9D30(v58 + 48);

LABEL_37:

      v12 = swift_task_alloc();
      *(v58 + 352) = v12;
      *v12 = *(v58 + 272);
      v12[1] = sub_268F8C97C;
      v13 = *(v58 + 320);
      v14 = *(v58 + 312);

      return sub_268F8D4AC(v14);
    }

    sub_268D28550(v58 + 48);

    goto LABEL_40;
  }

LABEL_24:

  v7 = swift_task_alloc();
  *(v58 + 336) = v7;
  *v7 = *(v58 + 272);
  v7[1] = sub_268F8C7C4;
  v8 = *(v58 + 320);
  v9 = *(v58 + 312);

  return sub_268F8CCEC(v9);
}

uint64_t sub_268F8C7C4(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 336);
  *(v6 + 272) = *v1;
  *(v6 + 344) = a1;

  v4 = *(v6 + 272);

  return MEMORY[0x2822009F8](sub_268F8C8E0, 0);
}

uint64_t sub_268F8C8E0()
{
  v1 = v0[41];
  v0[34] = v0;

  v2 = v0[43];
  v3 = *(v0[34] + 8);
  v4 = v0[34];

  return v3(v2);
}

uint64_t sub_268F8C97C(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 352);
  *(v6 + 272) = *v1;
  *(v6 + 360) = a1;

  v4 = *(v6 + 272);

  return MEMORY[0x2822009F8](sub_268F8CA98, 0);
}

uint64_t sub_268F8CA98()
{
  v1 = v0[41];
  v0[34] = v0;

  v2 = v0[45];
  v3 = *(v0[34] + 8);
  v4 = v0[34];

  return v3(v2);
}

uint64_t sub_268F8CB34(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 368);
  *(v6 + 272) = *v1;
  *(v6 + 376) = a1;

  v4 = *(v6 + 272);

  return MEMORY[0x2822009F8](sub_268F8CC50, 0);
}

uint64_t sub_268F8CC50()
{
  v1 = v0[41];
  v0[34] = v0;

  v2 = v0[47];
  v3 = *(v0[34] + 8);
  v4 = v0[34];

  return v3(v2);
}

uint64_t sub_268F8CCEC(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268F8CD44, 0);
}

uint64_t sub_268F8CD44()
{
  v1 = v0[6];
  v0[2] = v0;
  v0[7] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v4 + 64) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268F8CE00;

  return sub_268D50304();
}

uint64_t sub_268F8CE00(char a1)
{
  v7 = *v1;
  v3 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  *(v7 + 16) = *v1;
  *(v7 + 82) = a1;

  v4 = *(v7 + 16);

  return MEMORY[0x2822009F8](sub_268F8CF3C, 0);
}

uint64_t sub_268F8CF3C()
{
  v1 = *(v0 + 82);
  *(v0 + 16) = v0;
  *(v0 + 80) = v1;
  if (v1 == 2)
  {
    sub_268F9B294();
    v9 = sub_268DC7AE8();
    v13 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v13);
    v10 = sub_268DA9A7C(7, 0);
    v11 = *(*(v24 + 16) + 8);
    v12 = *(v24 + 16);

    return v11(v10);
  }

  else
  {
    v19 = *(v24 + 82);
    v18 = *(v24 + 48);
    *(v24 + 88) = v19 & 1;
    sub_268F9B284();
    v2 = sub_268DC7AE8();
    v17 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v3;
    *(v24 + 81) = v19 & 1;
    v14 = sub_268F9AE74();
    v15 = v4;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v17);
    v5 = sub_268DBE894();
    v20 = *v5;
    v21 = v5[1];
    v22 = *(v5 + 16);
    v23 = *(v18 + 24);

    v6 = swift_task_alloc();
    *(v24 + 72) = v6;
    *v6 = *(v24 + 16);
    v6[1] = sub_268F8D30C;
    v7 = *(v24 + 40);

    return sub_268DA9AE0(v19 & 1, v7, v20, v21, v22, v23 & 1, &unk_268FAE768, v18);
  }
}

uint64_t sub_268F8D30C(uint64_t a1)
{
  v6 = *v1;
  v2 = *(*v1 + 72);
  v5 = *(*v1 + 48);
  *(v6 + 16) = *v1;

  sub_268CD9A28(&unk_268FAE768);
  v3 = *(*(v6 + 16) + 8);

  return v3(a1);
}

uint64_t sub_268F8D4AC(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268F8D504, 0);
}

uint64_t sub_268F8D504()
{
  v1 = v0[6];
  v0[2] = v0;
  v0[7] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v4 + 64) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268F8D5C0;

  return sub_268D508A4();
}

uint64_t sub_268F8D5C0(char a1)
{
  v7 = *v1;
  v3 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  *(v7 + 16) = *v1;
  *(v7 + 82) = a1;

  v4 = *(v7 + 16);

  return MEMORY[0x2822009F8](sub_268F8D6FC, 0);
}

uint64_t sub_268F8D6FC()
{
  v1 = *(v0 + 82);
  *(v0 + 16) = v0;
  *(v0 + 80) = v1;
  if (v1 == 2)
  {
    sub_268F9B294();
    v9 = sub_268DC7AE8();
    v13 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v13);
    v10 = sub_268DA9A7C(7, 0);
    v11 = *(*(v24 + 16) + 8);
    v12 = *(v24 + 16);

    return v11(v10);
  }

  else
  {
    v19 = *(v24 + 82);
    v18 = *(v24 + 48);
    *(v24 + 88) = v19 & 1;
    sub_268F9B284();
    v2 = sub_268DC7AE8();
    v17 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v3;
    *(v24 + 81) = v19 & 1;
    v14 = sub_268F9AE74();
    v15 = v4;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v17);
    v5 = sub_268DBEAA4();
    v20 = *v5;
    v21 = v5[1];
    v22 = *(v5 + 16);
    v23 = *(v18 + 24);

    v6 = swift_task_alloc();
    *(v24 + 72) = v6;
    *v6 = *(v24 + 16);
    v6[1] = sub_268F8DACC;
    v7 = *(v24 + 40);

    return sub_268DA9AE0(v19 & 1, v7, v20, v21, v22, v23 & 1, &unk_268FAE778, v18);
  }
}

uint64_t sub_268F8DACC(uint64_t a1)
{
  v6 = *v1;
  v2 = *(*v1 + 72);
  v5 = *(*v1 + 48);
  *(v6 + 16) = *v1;

  sub_268CD9A28(&unk_268FAE778);
  v3 = *(*(v6 + 16) + 8);

  return v3(a1);
}

uint64_t sub_268F8DC6C(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268F8DCC4, 0);
}

uint64_t sub_268F8DCC4()
{
  v1 = v0[6];
  v0[2] = v0;
  v0[7] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v4 + 64) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268F8DD80;

  return sub_268D50CC8();
}

uint64_t sub_268F8DD80(char a1)
{
  v7 = *v1;
  v3 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  *(v7 + 16) = *v1;
  *(v7 + 82) = a1;

  v4 = *(v7 + 16);

  return MEMORY[0x2822009F8](sub_268F8DEBC, 0);
}

uint64_t sub_268F8DEBC()
{
  v1 = *(v0 + 82);
  *(v0 + 16) = v0;
  *(v0 + 80) = v1;
  if (v1 == 2)
  {
    sub_268F9B294();
    v9 = sub_268DC7AE8();
    v13 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v13);
    v10 = sub_268DA9A7C(7, 0);
    v11 = *(*(v24 + 16) + 8);
    v12 = *(v24 + 16);

    return v11(v10);
  }

  else
  {
    v19 = *(v24 + 82);
    v18 = *(v24 + 48);
    *(v24 + 88) = v19 & 1;
    sub_268F9B284();
    v2 = sub_268DC7AE8();
    v17 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v3;
    *(v24 + 81) = v19 & 1;
    v14 = sub_268F9AE74();
    v15 = v4;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v17);
    v5 = sub_268DBEB74();
    v20 = *v5;
    v21 = v5[1];
    v22 = *(v5 + 16);
    v23 = *(v18 + 24);

    v6 = swift_task_alloc();
    *(v24 + 72) = v6;
    *v6 = *(v24 + 16);
    v6[1] = sub_268F8E28C;
    v7 = *(v24 + 40);

    return sub_268DA9AE0(v19 & 1, v7, v20, v21, v22, v23 & 1, &unk_268FAE788, v18);
  }
}

uint64_t sub_268F8E28C(uint64_t a1)
{
  v6 = *v1;
  v2 = *(*v1 + 72);
  v5 = *(*v1 + 48);
  *(v6 + 16) = *v1;

  sub_268CD9A28(&unk_268FAE788);
  v3 = *(*(v6 + 16) + 8);

  return v3(a1);
}

uint64_t sub_268F8E42C(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8A294(a1 & 1, v4);
}

uint64_t sub_268F8E4EC(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8AEAC(a1 & 1, v4);
}

uint64_t sub_268F8E5AC(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8B884(a1 & 1, v4);
}

uint64_t sub_268F8E6B4(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268D82A48;

  return sub_268F8B9B0(a1);
}

uint64_t sub_268F8E76C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268F8B53C(a1, v6, v7, v8 & 1, v9, v10, v11, v12);
}

uint64_t sub_268F8E878(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8B884(a1 & 1, v4);
}

uint64_t sub_268F8E938(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268F8AB64(a1, v6, v7, v8 & 1, v9, v10, v11, v12);
}

uint64_t sub_268F8EA44(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8AEAC(a1 & 1, v4);
}

uint64_t sub_268F8EB04(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268F89E64(a1, v6, v7, v8 & 1, v9, v10, v11, v12);
}

uint64_t sub_268F8EC10(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8A294(a1 & 1, v4);
}

uint64_t sub_268F8ECD0()
{
  sub_268F9B734();
  *v0 = "SetNumericSettingIntent#ConfirmMaximumVolume";
  *(v0 + 8) = 44;
  *(v0 + 16) = 2;
  *(v0 + 24) = "SetNumericSettingIntent#RetainingCurrentNumericValue";
  *(v0 + 32) = 52;
  *(v0 + 40) = 2;
  *(v0 + 48) = "SetNumericSettingIntent#NoNeedToChangeNumericValueTo";
  *(v0 + 56) = 52;
  *(v0 + 64) = 2;
  *(v0 + 72) = "SetNumericSettingIntent#UnspecifiedActionForSupportedNumericSetting";
  *(v0 + 80) = 67;
  *(v0 + 88) = 2;
  *(v0 + 96) = "SetNumericSettingIntent#ConfirmDisableSmartVolume";
  *(v0 + 104) = 49;
  *(v0 + 112) = 2;
  *(v0 + 120) = "SetNumericSettingIntent#ChangedNumericValueToSpokenOnly";
  *(v0 + 128) = 55;
  *(v0 + 136) = 2;
  *(v0 + 144) = "SetNumericSettingIntent#ChangedNumericValueTo";
  *(v0 + 152) = 45;
  *(v0 + 160) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_16:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_16;
    case 2:
      v3 = 2;
      goto LABEL_16;
    case 3:
      v3 = 3;
      goto LABEL_16;
    case 4:
      v3 = 4;
      goto LABEL_16;
    case 5:
      v3 = 5;
      goto LABEL_16;
    case 6:
      v3 = 6;
      goto LABEL_16;
  }

  return 7;
}

unint64_t sub_268F8F174()
{
  v2 = qword_2802DE998;
  if (!qword_2802DE998)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE998);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F8F2C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F8ECD0();
  *a2 = result;
  return result;
}

uint64_t sub_268F8F2F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268F8EF6C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268F8F32C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters()
{
  v1 = qword_2802DE9A0;
  if (!qword_2802DE9A0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F8F4F0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 28)));
  return sub_268D28588(v8);
}

uint64_t sub_268F8F5A0()
{
  v57 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v51 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v52 = v35 - v51;
  v57 = v0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v54 = sub_268F9B734();
  v55 = v2;
  v3 = sub_268F9AEF4();
  v4 = v55;
  *v55 = v3;
  v4[1] = v5;
  v56 = *v0;

  if (v56)
  {
    v49 = v56;
    v48 = v56;
    v6 = type metadata accessor for SettingsNumericSettingAction();
    v7 = v55;
    v8 = v48;
    v55[5] = v6;
    v7[2] = v8;
  }

  else
  {
    v34 = v55;
    v55[2] = 0;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
  }

  v9 = sub_268F9AEF4();
  v10 = v55;
  v11 = v50;
  v55[6] = v9;
  v10[7] = v12;
  v47 = *(v11 + 8);

  if (v47)
  {
    v46 = v47;
    v45 = v47;
    v13 = sub_268F9AA44();
    v14 = v55;
    v15 = v45;
    v55[11] = v13;
    v14[8] = v15;
  }

  else
  {
    v33 = v55;
    v55[8] = 0;
    v33[9] = 0;
    v33[10] = 0;
    v33[11] = 0;
  }

  v16 = sub_268F9AEF4();
  v17 = v55;
  v18 = v50;
  v55[12] = v16;
  v17[13] = v19;
  v44 = *(v18 + 16);

  if (v44)
  {
    v43 = v44;
    v42 = v44;
    v20 = type metadata accessor for SettingsNumericSetting();
    v21 = v55;
    v22 = v42;
    v55[17] = v20;
    v21[14] = v22;
  }

  else
  {
    v32 = v55;
    v55[14] = 0;
    v32[15] = 0;
    v32[16] = 0;
    v32[17] = 0;
  }

  v36 = v55 + 20;
  v38 = 1;
  v23 = sub_268F9AEF4();
  v24 = v55;
  v55[18] = v23;
  v24[19] = v25;
  v37 = 0;
  v26 = type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters();
  sub_268D2A1F0((v50 + *(v26 + 28)), v52);
  v39 = sub_268F9A9C4();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  if ((*(v40 + 48))(v52, v38) == 1)
  {
    sub_268D28588(v52);
    v31 = v55;
    v55[20] = 0;
    v31[21] = 0;
    v31[22] = 0;
    v31[23] = 0;
  }

  else
  {
    v27 = v36;
    v55[23] = v39;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    (*(v40 + 32))(boxed_opaque_existential_1, v52, v39);
  }

  v29 = v54;
  sub_268CD0F7C();
  v35[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268F8F948@<X0>(char *a1@<X8>)
{
  v9 = a1;
  v10 = 0;
  v5 = 0;
  v6 = (*(*(type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v1 = &v5 - v6;
  v8 = v1;
  v10 = &v5 - v6;
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  v7 = *(v2 + 28);
  v3 = sub_268F9A9C4();
  (*(*(v3 - 8) + 56))(&v8[v7], 1);
  return sub_268F96EA4(v8, v9);
}

uint64_t type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters()
{
  v1 = qword_2802DE9B0;
  if (!qword_2802DE9B0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F8FAE4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 36)));
  return sub_268D28588(v8);
}

uint64_t sub_268F8FB94()
{
  v68 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v61 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v62 = v44 - v61;
  v68 = v0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v65 = 6;
  v64 = sub_268F9B734();
  v66 = v2;
  v3 = sub_268F9AEF4();
  v4 = v66;
  *v66 = v3;
  v4[1] = v5;
  v67 = *v0;

  if (v67)
  {
    v59 = v67;
    v58 = v67;
    v6 = type metadata accessor for SettingsNumericSettingAction();
    v7 = v66;
    v8 = v58;
    v66[5] = v6;
    v7[2] = v8;
  }

  else
  {
    v43 = v66;
    v66[2] = 0;
    v43[3] = 0;
    v43[4] = 0;
    v43[5] = 0;
  }

  v9 = sub_268F9AEF4();
  v10 = v66;
  v11 = v60;
  v66[6] = v9;
  v10[7] = v12;
  v57 = *(v11 + 8);

  if (v57)
  {
    v56 = v57;
    v55 = v57;
    v13 = sub_268F9AA44();
    v14 = v66;
    v15 = v55;
    v66[11] = v13;
    v14[8] = v15;
  }

  else
  {
    v42 = v66;
    v66[8] = 0;
    v42[9] = 0;
    v42[10] = 0;
    v42[11] = 0;
  }

  v16 = sub_268F9AEF4();
  v17 = v66;
  v18 = v60;
  v66[12] = v16;
  v17[13] = v19;
  v54 = *(v18 + 16);

  if (v54)
  {
    v53 = v54;
    v52 = v54;
    v20 = type metadata accessor for SettingsNumericSetting();
    v21 = v66;
    v22 = v52;
    v66[17] = v20;
    v21[14] = v22;
  }

  else
  {
    v41 = v66;
    v66[14] = 0;
    v41[15] = 0;
    v41[16] = 0;
    v41[17] = 0;
  }

  v48 = 1;
  v23 = sub_268F9AEF4();
  v24 = v66;
  v25 = v60;
  v66[18] = v23;
  v24[19] = v26;
  LOBYTE(v25) = *(v25 + 24);
  v45 = MEMORY[0x277D839B0];
  v24[23] = MEMORY[0x277D839B0];
  *(v24 + 160) = v25;
  v27 = sub_268F9AEF4();
  v28 = v45;
  v29 = v66;
  v30 = v60;
  v66[24] = v27;
  v29[25] = v31;
  LOBYTE(v30) = *(v30 + 25);
  v29[29] = v28;
  *(v29 + 208) = v30;
  v46 = v29 + 32;
  v32 = sub_268F9AEF4();
  v33 = v66;
  v66[30] = v32;
  v33[31] = v34;
  v47 = 0;
  v35 = type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters();
  sub_268D2A1F0((v60 + *(v35 + 36)), v62);
  v49 = sub_268F9A9C4();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  if ((*(v50 + 48))(v62, v48) == 1)
  {
    sub_268D28588(v62);
    v40 = v66;
    v66[32] = 0;
    v40[33] = 0;
    v40[34] = 0;
    v40[35] = 0;
  }

  else
  {
    v36 = v46;
    v66[35] = v49;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v50 + 32))(boxed_opaque_existential_1, v62, v49);
  }

  v38 = v64;
  sub_268CD0F7C();
  v44[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268F8FFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, const void *a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 25) = a5;
  v7 = type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters();
  return sub_268D84F40(a6, (a7 + *(v7 + 36)));
}

uint64_t sub_268F90040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsNumericSettingAction();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;

  if (a3)
  {
    v10[17] = type metadata accessor for SettingsNumericSetting();
    v10[14] = a3;
  }

  else
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268F90280()
{
  memset(v1, 0, sizeof(v1));
  sub_268F92E98(v1);
  return 0;
}

uint64_t sub_268F9033C(uint64_t a1, __int16 a2)
{
  v8 = a2;
  v9 = HIBYTE(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v2;
  *v2 = sub_268F9AEF4();
  v10[1] = v3;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsNumericSettingAction();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v4;
  v7 = MEMORY[0x277D839B0];
  v10[11] = MEMORY[0x277D839B0];
  *(v10 + 64) = v8;
  v10[12] = sub_268F9AEF4();
  v10[13] = v5;
  v10[17] = v7;
  *(v10 + 112) = v9;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters()
{
  v1 = qword_2802DE9C0;
  if (!qword_2802DE9C0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F905CC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 28)));
  return sub_268D28588(v8);
}

uint64_t sub_268F906B4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 32)));
  return sub_268D28588(v8);
}

uint64_t sub_268F9079C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 36)));
  return sub_268D28588(v8);
}

uint64_t sub_268F90870(unsigned int a1)
{
  v2 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  result = a1;
  *(v1 + *(v2 + 40)) = a1;
  return result;
}

uint64_t sub_268F908E0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268F90990()
{
  v68 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v62 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v63 = v44 - v62;
  v68 = v0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v65 = sub_268F9B734();
  v66 = v2;
  v3 = sub_268F9AEF4();
  v4 = v66;
  *v66 = v3;
  v4[1] = v5;
  v67 = *v0;

  if (v67)
  {
    v60 = v67;
    v59 = v67;
    v6 = type metadata accessor for SettingsNumericSettingAction();
    v7 = v66;
    v8 = v59;
    v66[5] = v6;
    v7[2] = v8;
  }

  else
  {
    v43 = v66;
    v66[2] = 0;
    v43[3] = 0;
    v43[4] = 0;
    v43[5] = 0;
  }

  v9 = sub_268F9AEF4();
  v10 = v66;
  v11 = v61;
  v66[6] = v9;
  v10[7] = v12;
  v58 = *(v11 + 8);

  if (v58)
  {
    v57 = v58;
    v56 = v58;
    v13 = sub_268F9AA44();
    v14 = v66;
    v15 = v56;
    v66[11] = v13;
    v14[8] = v15;
  }

  else
  {
    v42 = v66;
    v66[8] = 0;
    v42[9] = 0;
    v42[10] = 0;
    v42[11] = 0;
  }

  v16 = sub_268F9AEF4();
  v17 = v66;
  v18 = v61;
  v66[12] = v16;
  v17[13] = v19;
  v55 = *(v18 + 16);

  if (v55)
  {
    v54 = v55;
    v53 = v55;
    v20 = type metadata accessor for SettingsNumericSetting();
    v21 = v66;
    v22 = v53;
    v66[17] = v20;
    v21[14] = v22;
  }

  else
  {
    v41 = v66;
    v66[14] = 0;
    v41[15] = 0;
    v41[16] = 0;
    v41[17] = 0;
  }

  v23 = sub_268F9AEF4();
  v24 = v66;
  v66[18] = v23;
  v24[19] = v25;
  v51 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  v52 = *(v61 + *(v51 + 40));
  if (v52 == 2)
  {
    v40 = v66;
    v66[20] = 0;
    v40[21] = 0;
    v40[22] = 0;
    v40[23] = 0;
  }

  else
  {
    v50 = v52;
    v26 = v66;
    v27 = v52;
    v66[23] = MEMORY[0x277D839B0];
    *(v26 + 160) = v27 & 1;
  }

  v45 = v66 + 26;
  v46 = 1;
  v28 = sub_268F9AEF4();
  v29 = v66;
  v30 = v51;
  v31 = v61;
  v33 = v32;
  v34 = v63;
  v66[24] = v28;
  v29[25] = v33;
  sub_268D2A1F0((v31 + *(v30 + 44)), v34);
  v47 = sub_268F9A9C4();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  if ((*(v48 + 48))(v63, v46) == 1)
  {
    sub_268D28588(v63);
    v39 = v66;
    v66[26] = 0;
    v39[27] = 0;
    v39[28] = 0;
    v39[29] = 0;
  }

  else
  {
    v35 = v45;
    v66[29] = v47;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    (*(v48 + 32))(boxed_opaque_existential_1, v63, v47);
  }

  v37 = v65;
  sub_268CD0F7C();
  v44[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268F90DCC@<X0>(char *a1@<X8>)
{
  v19 = a1;
  v20 = 0;
  v10[1] = 0;
  v13 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  v11 = (*(*(v13 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v1 = v10 - v11;
  v18 = v1;
  v20 = v10 - v11;
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  v12 = *(v2 + 28);
  v15 = sub_268F9A9C4();
  v3 = *(v15 - 8);
  v17 = *(v3 + 56);
  v16 = v3 + 56;
  v14 = 1;
  v17(&v18[v12], 1);
  (v17)(&v18[v13[8]], v14, v14, v15);
  (v17)(&v18[v13[9]], v14, v14, v15);
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v17;
  v8 = v18;
  v18[v13[10]] = 2;
  (v7)(&v8[v4[11]], v5, v5, v6);
  return sub_268F96A08(v18, v19);
}

uint64_t type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters()
{
  v1 = qword_2802DE9D0;
  if (!qword_2802DE9D0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F9102C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268F910DC()
{
  v78 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v72 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v73 = &v53 - v72;
  v78 = v0;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v75 = sub_268F9B734();
  v76 = v2;
  v3 = sub_268F9AEF4();
  v4 = v76;
  *v76 = v3;
  v4[1] = v5;
  v77 = *v0;

  if (v77)
  {
    v70 = v77;
    v69 = v77;
    v6 = type metadata accessor for SettingsNumericSettingAction();
    v7 = v76;
    v8 = v69;
    v76[5] = v6;
    v7[2] = v8;
  }

  else
  {
    v52 = v76;
    v76[2] = 0;
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = 0;
  }

  v9 = sub_268F9AEF4();
  v10 = v76;
  v11 = v71;
  v76[6] = v9;
  v10[7] = v12;
  v68 = *(v11 + 8);

  if (v68)
  {
    v67 = v68;
    v66 = v68;
    v13 = sub_268F9AA44();
    v14 = v76;
    v15 = v66;
    v76[11] = v13;
    v14[8] = v15;
  }

  else
  {
    v51 = v76;
    v76[8] = 0;
    v51[9] = 0;
    v51[10] = 0;
    v51[11] = 0;
  }

  v64 = 1;
  v16 = sub_268F9AEF4();
  v17 = v76;
  v18 = v71;
  v76[12] = v16;
  v17[13] = v19;
  LOBYTE(v18) = *(v18 + 16);
  v63 = MEMORY[0x277D839B0];
  v17[17] = MEMORY[0x277D839B0];
  *(v17 + 112) = v18;
  v20 = sub_268F9AEF4();
  v21 = v63;
  v22 = v76;
  v23 = v71;
  v76[18] = v20;
  v22[19] = v24;
  LOBYTE(v23) = *(v23 + 17);
  v22[23] = v21;
  *(v22 + 160) = v23;
  v25 = sub_268F9AEF4();
  v26 = v76;
  v27 = v71;
  v76[24] = v25;
  v26[25] = v28;
  v65 = *(v27 + 24);

  if (v65)
  {
    v62 = v65;
    v61 = v65;
    v29 = type metadata accessor for SettingsNumericSetting();
    v30 = v76;
    v31 = v61;
    v76[29] = v29;
    v30[26] = v31;
  }

  else
  {
    v50 = v76;
    v76[26] = 0;
    v50[27] = 0;
    v50[28] = 0;
    v50[29] = 0;
  }

  v57 = 1;
  v32 = sub_268F9AEF4();
  v33 = v76;
  v34 = v71;
  v76[30] = v32;
  v33[31] = v35;
  LOBYTE(v34) = *(v34 + 32);
  v54 = MEMORY[0x277D839B0];
  v33[35] = MEMORY[0x277D839B0];
  *(v33 + 256) = v34;
  v36 = sub_268F9AEF4();
  v37 = v54;
  v38 = v76;
  v39 = v71;
  v76[36] = v36;
  v38[37] = v40;
  LOBYTE(v39) = *(v39 + 33);
  v38[41] = v37;
  *(v38 + 304) = v39;
  v55 = v38 + 44;
  v41 = sub_268F9AEF4();
  v42 = v76;
  v76[42] = v41;
  v42[43] = v43;
  v56 = 0;
  v44 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters();
  sub_268D2A1F0((v71 + *(v44 + 44)), v73);
  v58 = sub_268F9A9C4();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v73, v57) == 1)
  {
    sub_268D28588(v73);
    v49 = v76;
    v76[44] = 0;
    v49[45] = 0;
    v49[46] = 0;
    v49[47] = 0;
  }

  else
  {
    v45 = v55;
    v76[47] = v58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(v59 + 32))(boxed_opaque_existential_1, v73, v58);
  }

  v47 = v75;
  sub_268CD0F7C();
  v53 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268F91584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, const void *a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 33) = a7;
  v9 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters();
  return sub_268D84F40(a8, (a9 + *(v9 + 44)));
}

uint64_t sub_268F915E4(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[8] = a2;
  v3[7] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  v4 = v3[4];
  return MEMORY[0x2822009F8](sub_268F91648, 0);
}

uint64_t sub_268F91648()
{
  v9 = MEMORY[0x277D55BE8];
  v1 = v0[8];
  v7 = v0[7];
  v0[4] = v0;
  v0[6] = sub_268D63D3C();
  v7(v0 + 6);
  v14 = sub_268F9AEF4();
  v11 = v2;
  v0[10] = v2;
  v8 = v0[6];

  v12 = sub_268F8F32C(v8);
  v0[11] = v12;

  v13 = (v9 + *v9);
  v3 = v9[1];
  v4 = swift_task_alloc();
  v10[12] = v4;
  *v4 = v10[4];
  v4[1] = sub_268D73B74;
  v5 = v10[9];

  return v13(v14, v11, v12);
}

uint64_t sub_268F9179C(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v6 = *(*(type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters() - 8) + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  v4 = v3[4];

  return MEMORY[0x2822009F8](sub_268F918A8, 0);
}

uint64_t sub_268F918A8()
{
  v11 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v9 = v1;
  v10 = v0[9];
  v2 = v0[7];
  v8 = v0[6];
  v0[4] = v0;
  sub_268F8F948(v1);
  v8(v9);
  v16 = sub_268F9AEF4();
  v13 = v3;
  v0[11] = v3;
  sub_268F91D38(v9, v10);
  v14 = sub_268F8F5A0();
  v0[12] = v14;
  sub_268F91EF8(v10);
  v15 = (v11 + *v11);
  v4 = v11[1];
  v5 = swift_task_alloc();
  v12[13] = v5;
  *v5 = v12[4];
  v5[1] = sub_268F91A08;
  v6 = v12[8];

  return v15(v16, v13, v14);
}

uint64_t sub_268F91A08(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 104);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[14] = a1;
  v11[15] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F91C5C;
  }

  else
  {
    v5 = v11[12];
    v10 = v11[11];

    v6 = *v12;
    v7 = sub_268F91B9C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F91B9C()
{
  v1 = v0[10];
  v7 = v0[9];
  v0[4] = v0;
  sub_268F91EF8(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[14];

  return v3(v5);
}

uint64_t sub_268F91C5C()
{
  v1 = v0[12];
  v7 = v0[11];
  v8 = v0[10];
  v9 = v0[9];
  v0[4] = v0;

  sub_268F91EF8(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[15];

  return v3();
}

char *sub_268F91D38(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v7 = *(a1 + 2);

  *(a2 + 2) = v7;
  v8 = *(type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters() + 28);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a1[v8], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v8], &a1[v8], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(&a2[v8], 0, 1, v10);
  }

  return a2;
}

char *sub_268F91EF8(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v3 = *(a1 + 2);

  v5 = *(type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters() + 28);
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&a1[v5], 1))
  {
    (*(v8 + 8))(&a1[v5], v7);
  }

  return a1;
}

uint64_t sub_268F91FE8(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 48) = a3;
  *(v5 + 138) = a2 & 1;
  *(v5 + 137) = a1 & 1;
  *(v5 + 32) = v5;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = 0;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters() - 8) + 64);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 136) = a1 & 1;
  *(v5 + 144) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 40) = v4;
  v7 = *(v5 + 32);

  return MEMORY[0x2822009F8](sub_268F9219C, 0);
}

uint64_t sub_268F9219C()
{
  v14 = MEMORY[0x277D55BE8];
  v12 = *(v0 + 88);
  v13 = *(v0 + 80);
  v10 = *(v0 + 72);
  v1 = *(v0 + 56);
  v11 = *(v0 + 48);
  v9 = *(v0 + 138);
  v8 = *(v0 + 137);
  *(v0 + 32) = v0;
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 56))(v10, 1);
  sub_268F8FFBC(0, 0, 0, v8 & 1, v9 & 1, v10, v12);
  v11(v12);
  v19 = sub_268F9AEF4();
  v16 = v3;
  *(v0 + 96) = v3;
  sub_268F926E8(v12, v13);
  v17 = sub_268F8FB94();
  *(v0 + 104) = v17;
  sub_268F928BC(v13);
  v18 = (v14 + *v14);
  v4 = v14[1];
  v5 = swift_task_alloc();
  v15[14] = v5;
  *v5 = v15[4];
  v5[1] = sub_268F92388;
  v6 = v15[8];

  return v18(v19, v16, v17);
}

uint64_t sub_268F92388(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 112);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[15] = a1;
  v11[16] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F925F4;
  }

  else
  {
    v5 = v11[13];
    v10 = v11[12];

    v6 = *v12;
    v7 = sub_268F9251C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F9251C()
{
  v1 = v0[11];
  v7 = v0[10];
  v8 = v0[9];
  v0[4] = v0;
  sub_268F928BC(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[15];

  return v3(v5);
}

uint64_t sub_268F925F4()
{
  v1 = v0[13];
  v7 = v0[12];
  v8 = v0[11];
  v9 = v0[10];
  v10 = v0[9];
  v0[4] = v0;

  sub_268F928BC(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[16];

  return v3();
}

uint64_t sub_268F926E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  v6 = a1[2];

  *(a2 + 16) = v6;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 25) = *(a1 + 25);
  v8 = *(type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters() + 36);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v8), a1 + v8, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  return a2;
}

char *sub_268F928BC(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v3 = *(a1 + 2);

  v5 = *(type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters() + 36);
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&a1[v5], 1))
  {
    (*(v8 + 8))(&a1[v5], v7);
  }

  return a1;
}

uint64_t sub_268F929AC(uint64_t a1, uint64_t a2)
{
  v3[11] = v2;
  v3[10] = a2;
  v3[9] = a1;
  v3[7] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[8] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = a1;
  v3[6] = a2;
  v3[8] = v2;
  v4 = v3[7];
  return MEMORY[0x2822009F8](sub_268F92A18, 0);
}

uint64_t sub_268F92A18()
{
  v13 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v9 = v0[9];
  v0[7] = v0;
  v0[2] = sub_268F90280();
  v0[3] = v2;
  v0[4] = v3;
  v9(v0 + 2);
  v18 = sub_268F9AEF4();
  v15 = v4;
  v0[12] = v4;
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];

  v16 = sub_268F90040(v10, v11, v12);
  v0[13] = v16;

  v17 = (v13 + *v13);
  v5 = v13[1];
  v6 = swift_task_alloc();
  v14[14] = v6;
  *v6 = v14[7];
  v6[1] = sub_268F92BAC;
  v7 = v14[11];

  return v17(v18, v15, v16);
}

uint64_t sub_268F92BAC(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 112);
  v11[7] = *v2;
  v12 = v11 + 7;
  v11[15] = a1;
  v11[16] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F92DE0;
  }

  else
  {
    v5 = v11[13];
    v10 = v11[12];

    v6 = *v12;
    v7 = sub_268F92D40;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F92D40()
{
  *(v0 + 56) = v0;
  sub_268F92E98((v0 + 16));
  v1 = *(*(v5 + 56) + 8);
  v2 = *(v5 + 56);
  v3 = *(v5 + 120);

  return v1(v3);
}

uint64_t sub_268F92DE0()
{
  v1 = v0[13];
  v6 = v0[12];
  v0[7] = v0;

  sub_268F92E98(v0 + 2);
  v2 = *(*(v7 + 56) + 8);
  v3 = *(v7 + 56);
  v4 = *(v7 + 128);

  return v2();
}

uint64_t *sub_268F92E98(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  return a1;
}

uint64_t sub_268F92EDC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a4;
  *(v5 + 64) = a3;
  *(v5 + 43) = a2 & 1;
  *(v5 + 42) = a1 & 1;
  *(v5 + 48) = v5;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 56) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 128) = a1 & 1;
  *(v5 + 136) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 56) = v4;
  v6 = *(v5 + 48);
  return MEMORY[0x2822009F8](sub_268F92F90, 0);
}

uint64_t sub_268F92F90()
{
  v16 = MEMORY[0x277D55BE8];
  v1 = *(v0 + 72);
  v12 = *(v0 + 64);
  v2 = *(v0 + 43);
  v3 = *(v0 + 42);
  *(v0 + 48) = v0;
  sub_268F90500();
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 41) = v6;
  v12(v0 + 32);
  v21 = sub_268F9AEF4();
  v18 = v7;
  *(v0 + 88) = v7;
  v15 = *(v0 + 32);
  v13 = *(v0 + 40);
  v14 = *(v0 + 41);

  LOBYTE(v22) = v13;
  HIBYTE(v22) = v14;
  v19 = sub_268F9033C(v15, v22);
  *(v0 + 96) = v19;

  v20 = (v16 + *v16);
  v8 = v16[1];
  v9 = swift_task_alloc();
  v17[13] = v9;
  *v9 = v17[6];
  v9[1] = sub_268F9314C;
  v10 = v17[10];

  return v20(v21, v18, v19);
}

uint64_t sub_268F9314C(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 104);
  v11[6] = *v2;
  v12 = v11 + 6;
  v11[14] = a1;
  v11[15] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F93388;
  }

  else
  {
    v5 = v11[12];
    v10 = v11[11];

    v6 = *v12;
    v7 = sub_268F932E0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F932E0()
{
  *(v0 + 48) = v0;
  sub_268D287E8((v0 + 32));
  v1 = *(*(v5 + 48) + 8);
  v2 = *(v5 + 48);
  v3 = *(v5 + 112);

  return v1(v3);
}

uint64_t sub_268F93388()
{
  v1 = v0[12];
  v6 = v0[11];
  v0[6] = v0;

  sub_268D287E8(v0 + 4);
  v2 = *(*(v7 + 48) + 8);
  v3 = *(v7 + 48);
  v4 = *(v7 + 120);

  return v2();
}

uint64_t sub_268F93448(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v6 = *(*(type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters() - 8) + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  v4 = v3[4];

  return MEMORY[0x2822009F8](sub_268F93554, 0);
}

uint64_t sub_268F93554()
{
  v11 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v9 = v1;
  v10 = v0[9];
  v2 = v0[7];
  v8 = v0[6];
  v0[4] = v0;
  sub_268F90DCC(v1);
  v8(v9);
  v16 = sub_268F9AEF4();
  v13 = v3;
  v0[11] = v3;
  sub_268F939E4(v9, v10);
  v14 = sub_268F90990();
  v0[12] = v14;
  sub_268F93EB8(v10);
  v15 = (v11 + *v11);
  v4 = v11[1];
  v5 = swift_task_alloc();
  v12[13] = v5;
  *v5 = v12[4];
  v5[1] = sub_268F936B4;
  v6 = v12[8];

  return v15(v16, v13, v14);
}

uint64_t sub_268F936B4(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 104);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[14] = a1;
  v11[15] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F93908;
  }

  else
  {
    v5 = v11[12];
    v10 = v11[11];

    v6 = *v12;
    v7 = sub_268F93848;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F93848()
{
  v1 = v0[10];
  v7 = v0[9];
  v0[4] = v0;
  sub_268F93EB8(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[14];

  return v3(v5);
}

uint64_t sub_268F93908()
{
  v1 = v0[12];
  v7 = v0[11];
  v8 = v0[10];
  v9 = v0[9];
  v0[4] = v0;

  sub_268F93EB8(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[15];

  return v3();
}

char *sub_268F939E4(void *a1, char *a2)
{
  v13 = *a1;

  *a2 = v13;
  v14 = a1[1];

  *(a2 + 1) = v14;
  v16 = a1[2];

  *(a2 + 2) = v16;
  v17 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  v18 = v17[7];
  v20 = sub_268F9A9C4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if ((v22)(a1 + v18, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v18], a1 + v18, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))();
    (*(v21 + 56))(&a2[v18], 0, 1, v20);
  }

  __dst = &a2[v17[8]];
  __src = a1 + v17[8];
  if (v22())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))(__dst, __src, v20);
    (*(v21 + 56))(__dst, 0, 1, v20);
  }

  v9 = &a2[v17[9]];
  v10 = a1 + v17[9];
  if (v22())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v9, v10, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))(v9, v10, v20);
    (*(v21 + 56))(v9, 0, 1, v20);
  }

  a2[v17[10]] = *(a1 + v17[10]);
  v7 = &a2[v17[11]];
  v8 = a1 + v17[11];
  if (v22())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))(v7, v8, v20);
    (*(v21 + 56))(v7, 0, 1, v20);
  }

  return a2;
}

char *sub_268F93EB8(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v3 = *(a1 + 2);

  v8 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  v9 = v8[7];
  v11 = sub_268F9A9C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!(v13)(&a1[v9], 1))
  {
    (*(v12 + 8))(&a1[v9], v11);
  }

  v7 = &a1[v8[8]];
  if (!v13())
  {
    (*(v12 + 8))(v7, v11);
  }

  v6 = &a1[v8[9]];
  if (!v13())
  {
    (*(v12 + 8))(v6, v11);
  }

  v5 = &a1[v8[11]];
  if (!v13())
  {
    (*(v12 + 8))(v5, v11);
  }

  return a1;
}

uint64_t sub_268F940F8(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = v6;
  *(v7 + 56) = a6;
  *(v7 + 48) = a5;
  *(v7 + 140) = a4 & 1;
  *(v7 + 139) = a3 & 1;
  *(v7 + 138) = a2 & 1;
  *(v7 + 137) = a1 & 1;
  *(v7 + 32) = v7;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  v11 = *(*(type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters() - 8) + 64);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 136) = a1 & 1;
  *(v7 + 144) = a2 & 1;
  *(v7 + 152) = a3 & 1;
  *(v7 + 160) = a4 & 1;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  *(v7 + 40) = v6;
  v9 = *(v7 + 32);

  return MEMORY[0x2822009F8](sub_268F9430C, 0);
}

uint64_t sub_268F9430C()
{
  v16 = MEMORY[0x277D55BE8];
  v14 = *(v0 + 88);
  v15 = *(v0 + 80);
  v12 = *(v0 + 72);
  v1 = *(v0 + 56);
  v13 = *(v0 + 48);
  v11 = *(v0 + 140);
  v10 = *(v0 + 139);
  v9 = *(v0 + 138);
  v8 = *(v0 + 137);
  *(v0 + 32) = v0;
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 56))(v12, 1);
  sub_268F91584(0, 0, v8 & 1, v9 & 1, 0, v10 & 1, v11 & 1, v12, v14);
  v13(v14);
  v21 = sub_268F9AEF4();
  v18 = v3;
  *(v0 + 96) = v3;
  sub_268F94890(v14, v15);
  v19 = sub_268F910DC();
  *(v0 + 104) = v19;
  sub_268F94A74(v15);
  v20 = (v16 + *v16);
  v4 = v16[1];
  v5 = swift_task_alloc();
  v17[14] = v5;
  *v5 = v17[4];
  v5[1] = sub_268F94520;
  v6 = v17[8];

  return v20(v21, v18, v19);
}

uint64_t sub_268F94520(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 112);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[15] = a1;
  v11[16] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F94794;
  }

  else
  {
    v5 = v11[13];
    v10 = v11[12];

    v6 = *v12;
    v7 = sub_268F946B4;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F946B4()
{
  v1 = v0[11];
  v7 = v0[10];
  v8 = v0[9];
  v0[4] = v0;
  sub_268F94A74(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[15];

  return v3(v5);
}

uint64_t sub_268F94794()
{
  v1 = v0[13];
  v7 = v0[12];
  v8 = v0[11];
  v9 = v0[10];
  v10 = v0[9];
  v0[4] = v0;

  sub_268F94A74(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[16];

  return v3();
}

uint64_t sub_268F94890(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 17) = *(a1 + 17);
  v6 = a1[3];

  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 33) = *(a1 + 33);
  v8 = *(type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters() + 44);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v8), a1 + v8, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  return a2;
}

char *sub_268F94A74(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v3 = *(a1 + 3);

  v5 = *(type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters() + 44);
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&a1[v5], 1))
  {
    (*(v8 + 8))(&a1[v5], v7);
  }

  return a1;
}

uint64_t sub_268F94B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268F94BC0(a1, a2, a3);
}

uint64_t sub_268F94BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v14 = a3;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v18 = sub_268F9AB24();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v12 = &v9 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = &v9 - v11;
  v23 = v4;
  v22 = v5;
  v21 = v6;
  v24 = v3;
  sub_268CDC358(v4, &v9 - v11);
  (*(v15 + 16))(v12, v17, v18);
  MEMORY[0x277D82BE0](v14);
  v20 = sub_268F9A8D4();

  v24 = v20;
  v7 = MEMORY[0x277D82BD8](v14);
  (*(v15 + 8))(v17, v18, v7);
  sub_268CDC480(v19);

  return v20;
}

uint64_t sub_268F94DA4(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F915E4(a1, a2);
}

uint64_t sub_268F94E64(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F9179C(a1, a2);
}

uint64_t sub_268F94F24(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = v5;
  v6 = *v4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = *(v5 + 16);
  v7[1] = sub_268D7F90C;

  return sub_268F91FE8(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268F94FFC(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F929AC(a1, a2);
}

uint64_t sub_268F950BC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = v5;
  v6 = *v4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = *(v5 + 16);
  v7[1] = sub_268D7F90C;

  return sub_268F92EDC(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268F95194(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F93448(a1, a2);
}

uint64_t sub_268F95254(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 16) = v7;
  v8 = *v6;
  v9 = swift_task_alloc();
  *(v7 + 24) = v9;
  *v9 = *(v7 + 16);
  v9[1] = sub_268D7F90C;

  return sub_268F940F8(a1 & 1, a2 & 1, a3 & 1, a4 & 1, a5, a6);
}

uint64_t sub_268F9540C()
{
  v5 = sub_268EA20D4();
  if (v0 <= 0x3F)
  {
    v5 = sub_268D81048();
    if (v1 <= 0x3F)
    {
      v5 = sub_268E3B890();
      if (v2 <= 0x3F)
      {
        v5 = sub_268D810E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_268F95560(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*a1))
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_268F95690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_268F95874(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 10))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void *sub_268F959C8(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = result + 10;
  if (a2 > 0x7FFFFFFE)
  {
    result = 0;
    *(v3 + 4) = 0;
    *v3 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_268F95BE8()
{
  v6 = sub_268EA20D4();
  if (v0 <= 0x3F)
  {
    v6 = sub_268D81048();
    if (v1 <= 0x3F)
    {
      v6 = sub_268E3B890();
      if (v2 <= 0x3F)
      {
        v6 = sub_268D810E4();
        if (v3 <= 0x3F)
        {
          v6 = sub_268D8154C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_268F95DC8()
{
  v5 = sub_268EA20D4();
  if (v0 <= 0x3F)
  {
    v5 = sub_268D81048();
    if (v1 <= 0x3F)
    {
      v5 = sub_268E3B890();
      if (v2 <= 0x3F)
      {
        v5 = sub_268D810E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_268F95F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v12 = (*(a4 + 8) + **(a4 + 8));
  v5 = *(*(a4 + 8) + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_268F9607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v12 = (*(a4 + 16) + **(a4 + 16));
  v5 = *(*(a4 + 16) + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_268F961C0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v15 = (*(a6 + 24) + **(a6 + 24));
  v7 = *(*(a6 + 24) + 4);
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = *(v6 + 16);
  v8[1] = sub_268D82A48;

  return v15(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268F9631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v12 = (*(a4 + 32) + **(a4 + 32));
  v5 = *(*(a4 + 32) + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_268F96460(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v15 = (*(a6 + 40) + **(a6 + 40));
  v7 = *(*(a6 + 40) + 4);
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = *(v6 + 16);
  v8[1] = sub_268D82A48;

  return v15(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268F965BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v12 = (*(a4 + 48) + **(a4 + 48));
  v5 = *(*(a4 + 48) + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_268F96700(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = v8;
  v19 = (*(a8 + 56) + **(a8 + 56));
  v9 = *(*(a8 + 56) + 4);
  v10 = swift_task_alloc();
  *(v8 + 24) = v10;
  *v10 = *(v8 + 16);
  v10[1] = sub_268D82A48;

  return v19(a1 & 1, a2 & 1, a3 & 1, a4 & 1, a5, a6, a7, a8);
}

uint64_t type metadata accessor for SetNumericSettingIntentCATPatternsExecutor()
{
  v1 = qword_2802DE9E0;
  if (!qword_2802DE9E0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F968E8()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_268F9698C()
{
  v2 = qword_2802DE9F0;
  if (!qword_2802DE9F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE9F0);
    return WitnessTable;
  }

  return v2;
}

char *sub_268F96A08(void *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = a1[1];
  *(a2 + 2) = a1[2];
  v14 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  v15 = v14[7];
  v17 = sub_268F9A9C4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if ((v19)(a1 + v15, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v15], a1 + v15, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))();
    (*(v18 + 56))(&a2[v15], 0, 1, v17);
  }

  __dst = &a2[v14[8]];
  __src = a1 + v14[8];
  if (v19())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(__dst, __src, v17);
    (*(v18 + 56))(__dst, 0, 1, v17);
  }

  v9 = &a2[v14[9]];
  v10 = a1 + v14[9];
  if (v19())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v9, v10, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(v9, v10, v17);
    (*(v18 + 56))(v9, 0, 1, v17);
  }

  a2[v14[10]] = *(a1 + v14[10]);
  v7 = &a2[v14[11]];
  v8 = a1 + v14[11];
  if (v19())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(v7, v8, v17);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  return a2;
}

char *sub_268F96EA4(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v5 = *(type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters() + 28);
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a1[v5], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v5], &a1[v5], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(&a2[v5], 0, 1, v7);
  }

  return a2;
}

id sub_268F9702C()
{
  sub_268E7C6D0();
  type metadata accessor for ResourceBundleClass();
  result = sub_268E7D72C();
  qword_2802DE9F8 = result;
  return result;
}

uint64_t *sub_268F97074()
{
  if (qword_2802DB998 != -1)
  {
    swift_once();
  }

  return &qword_2802DE9F8;
}

uint64_t sub_268F970D4()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1888);
  __swift_project_value_buffer(v2, qword_2802F1888);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9716C()
{
  if (qword_2802DB9A0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1888);
}

uint64_t sub_268F971D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9716C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F9723C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F18A0);
  __swift_project_value_buffer(v2, qword_2802F18A0);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F972D4()
{
  if (qword_2802DB9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F18A0);
}

uint64_t sub_268F97340@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F972D4();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F973A4()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F18B8);
  __swift_project_value_buffer(v2, qword_2802F18B8);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9743C()
{
  if (qword_2802DB9B0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F18B8);
}

uint64_t sub_268F974A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9743C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F9750C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F18D0);
  __swift_project_value_buffer(v2, qword_2802F18D0);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F975A4()
{
  if (qword_2802DB9B8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F18D0);
}

uint64_t sub_268F97610@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F975A4();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97674()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F18E8);
  __swift_project_value_buffer(v2, qword_2802F18E8);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9770C()
{
  if (qword_2802DB9C0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F18E8);
}

uint64_t sub_268F97778@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9770C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F977DC()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1900);
  __swift_project_value_buffer(v2, qword_2802F1900);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97874()
{
  if (qword_2802DB9C8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1900);
}

uint64_t sub_268F978E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97874();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97944()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1918);
  __swift_project_value_buffer(v2, qword_2802F1918);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F979DC()
{
  if (qword_2802DB9D0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1918);
}

uint64_t sub_268F97A48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F979DC();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97AAC()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1930);
  __swift_project_value_buffer(v2, qword_2802F1930);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97B44()
{
  if (qword_2802DB9D8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1930);
}

uint64_t sub_268F97BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97B44();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97C14()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1948);
  __swift_project_value_buffer(v2, qword_2802F1948);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97CAC()
{
  if (qword_2802DB9E0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1948);
}

uint64_t sub_268F97D18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97CAC();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97D7C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1960);
  __swift_project_value_buffer(v2, qword_2802F1960);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97E14()
{
  if (qword_2802DB9E8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1960);
}

uint64_t sub_268F97E80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97E14();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97EE4()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1978);
  __swift_project_value_buffer(v2, qword_2802F1978);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97F7C()
{
  if (qword_2802DB9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1978);
}

uint64_t sub_268F97FE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97F7C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F9804C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1990);
  __swift_project_value_buffer(v2, qword_2802F1990);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F980E4()
{
  if (qword_2802DB9F8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1990);
}

uint64_t sub_268F98150@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F980E4();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F981B4()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F19A8);
  __swift_project_value_buffer(v2, qword_2802F19A8);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9824C()
{
  if (qword_2802DBA00 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F19A8);
}

uint64_t sub_268F982B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9824C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F9831C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F19C0);
  __swift_project_value_buffer(v2, qword_2802F19C0);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F983B4()
{
  if (qword_2802DBA08 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F19C0);
}

uint64_t sub_268F98420@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F983B4();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F98484()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F19D8);
  __swift_project_value_buffer(v2, qword_2802F19D8);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9851C()
{
  if (qword_2802DBA10 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F19D8);
}

uint64_t sub_268F98588@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9851C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F985EC()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F19F0);
  __swift_project_value_buffer(v2, qword_2802F19F0);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F98684()
{
  if (qword_2802DBA18 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F19F0);
}

uint64_t sub_268F986F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F98684();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F98754()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1A08);
  __swift_project_value_buffer(v2, qword_2802F1A08);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F987EC()
{
  if (qword_2802DBA20 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1A08);
}

uint64_t sub_268F98858@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F987EC();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F988BC()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1A20);
  __swift_project_value_buffer(v2, qword_2802F1A20);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F98954()
{
  if (qword_2802DBA28 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1A20);
}

uint64_t sub_268F989C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F98954();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_2802F0710 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_2802F0704 > a2)
  {
    return 1;
  }

  if (dword_2802F0704 < a2)
  {
    return 0;
  }

  return dword_2802F0708 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_2802F0718 == -1)
  {
    if (qword_2802F0720)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_2802F0720)
    {
      goto LABEL_3;
    }
  }

  if (qword_2802F0710 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_2802F0704 > a3)
      {
        goto LABEL_11;
      }

      if (dword_2802F0704 >= a3)
      {
        result = dword_2802F0708 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_2802F0720;
  if (qword_2802F0720)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2802F0720 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x26D62E9B0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_2802F0704, &dword_2802F0708);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}