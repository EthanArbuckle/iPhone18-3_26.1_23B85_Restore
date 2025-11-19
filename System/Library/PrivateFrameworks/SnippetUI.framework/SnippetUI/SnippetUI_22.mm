uint64_t sub_26A6BCDA8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3950);
  result = sub_26A8521E8();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_26A851FE8();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v23;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_26A6BCFB8()
{
  v1 = v0;
  v2 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3928);
  result = sub_26A8521E8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v9 &= v9 - 1;
LABEL_12:
        sub_26A6BD4EC();
        sub_26A8526B8();
        sub_26A538DC4();
        result = sub_26A8526F8();
        v14 = -1 << *(v5 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        result = sub_26A6BD498();
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v11 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v3 + 56 + 8 * v6);
        ++v12;
        if (v13)
        {
          v9 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_26A6BD28C(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

uint64_t sub_26A6BD2FC(void *a1)
{
  v1 = [a1 aceId];
  if (v1)
  {
    v2 = v1;
    sub_26A8517B8();
  }

  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A6BD374(void (*a1)(void))
{
  v3 = type metadata accessor for StandardPlayerButtonView();
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_11_3();
  return sub_26A6B8090(v1 + v4, a1);
}

unint64_t sub_26A6BD3D8()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A6BD444()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A6BD498()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A6BD4EC()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A6BD540()
{
  result = qword_2803B3960;
  if (!qword_2803B3960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B38B0);
    sub_26A6BD5F8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3960);
  }

  return result;
}

unint64_t sub_26A6BD5F8()
{
  result = qword_2803B3968;
  if (!qword_2803B3968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B38A0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3968);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_22()
{

  return sub_26A851068();
}

BOOL sub_26A6BD850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6)
  {
    if (a3 != a7)
    {
      return 0;
    }

    return a4 == a8;
  }

  v13 = sub_26A852598();
  result = 0;
  if ((v13 & 1) != 0 && a3 == a7)
  {
    return a4 == a8;
  }

  return result;
}

uint64_t sub_26A6BD8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26A851848();
  MEMORY[0x26D664930](a4);
  return MEMORY[0x26D664930](a5);
}

uint64_t sub_26A6BD918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A8526B8();
  sub_26A851848();
  MEMORY[0x26D664930](a3);
  MEMORY[0x26D664930](a4);
  return sub_26A8526F8();
}

uint64_t sub_26A6BD990@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26A6BD9B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26A8526B8();
  sub_26A851848();
  MEMORY[0x26D664930](v1);
  MEMORY[0x26D664930](v2);
  return sub_26A8526F8();
}

uint64_t sub_26A6BDA44()
{

  v1 = sub_26A6BDABC(v0);

  return v1;
}

uint64_t sub_26A6BDA80()
{

  v1 = sub_26A6BDABC(v0);

  return v1;
}

uint64_t sub_26A6BDABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_19();
  v110 = v3;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v4);
  v117 = &v108 - v5;
  v6 = type metadata accessor for TableCell();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v112 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  v111 = &v108 - v10;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v11);
  v13 = &v108 - v12;
  MEMORY[0x28223BE20](v14);
  v116 = &v108 - v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  v114 = &v108 - v17;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v18);
  v20 = &v108 - v19;
  v21 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 64);
  v25 = (v22 + 63) >> 6;

  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v120 = v26;
  while (v24)
  {
LABEL_9:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = (*(v26 + 48) + ((v27 << 11) | (32 * v30)));
    if (v31[3] == 1)
    {
      v32 = *v31;
      v33 = v31[1];
      v118 = v31[2];
      v119 = v32;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v28;
      v121 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A7DD2B8();
        v28 = v122;
      }

      v35 = *(v28 + 16);
      v36 = v35 + 1;
      v26 = v120;
      if (v35 >= *(v28 + 24) >> 1)
      {
        v115 = v35 + 1;
        sub_26A7DD2B8();
        v36 = v115;
        v26 = v120;
        v28 = v122;
      }

      *(v28 + 16) = v36;
      v37 = (v28 + 32 * v35);
      v38 = v121;
      v37[4] = v119;
      v37[5] = v38;
      v37[6] = v118;
      v37[7] = 1;
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (v29 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v29);
    ++v27;
    if (v24)
    {
      v27 = v29;
      goto LABEL_9;
    }
  }

  v39 = 1 << *(v120 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v27 = v40 & *(v120 + 64);
  v41 = (v39 + 63) >> 6;

  v42 = v120;
  v25 = 0;
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    v115 = v43;
    if (!v27)
    {
      break;
    }

LABEL_23:
    v45 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v46 = (*(v42 + 48) + ((v25 << 11) | (32 * v45)));
    v47 = v46[3];
    if (v47 > 1)
    {
      v49 = *v46;
      v48 = v46[1];
      v118 = v46[2];
      v119 = v49;
      v121 = v48;

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v115;
      v122 = v115;
      if ((v50 & 1) == 0)
      {
        v115 = v28;
        sub_26A7DD2B8();
        v28 = v115;
        v43 = v122;
      }

      v51 = *(v43 + 16);
      v52 = v51 + 1;
      v42 = v120;
      if (v51 >= *(v43 + 24) >> 1)
      {
        v115 = v28;
        v113 = v51 + 1;
        v109 = v51;
        sub_26A7DD2B8();
        v52 = v113;
        v51 = v109;
        v28 = v115;
        v42 = v120;
        v43 = v122;
      }

      *(v43 + 16) = v52;
      v53 = (v43 + 32 * v51);
      v54 = v121;
      v53[4] = v119;
      v53[5] = v54;
      v53[6] = v118;
      v53[7] = v47;
    }
  }

  while (1)
  {
    v44 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_86;
    }

    if (v44 >= v41)
    {
      break;
    }

    v27 = *(v21 + 8 * v44);
    ++v25;
    if (v27)
    {
      v25 = v44;
      goto LABEL_23;
    }
  }

  v122 = v28;

  sub_26A6BE698(&v122);

  v55 = v122;
  v113 = *(v122 + 16);
  if (v113)
  {
    v56 = 0;
    v108 = v122 + 32;
    v27 = MEMORY[0x277D84F90];
    v28 = 1;
    v109 = v122;
    do
    {
      if (v56 >= *(v55 + 16))
      {
        goto LABEL_87;
      }

      v57 = (v108 + 32 * v56);
      v59 = *v57;
      v58 = v57[1];
      v60 = v57[2];
      v118 = v57[3];
      v119 = v59;
      v61 = *(v27 + 16);
      v121 = v58;

      if (v61 < v60)
      {
        do
        {
          v62 = *(v27 + 16);
          sub_26A84ACB8();
          *&v20[v6[5]] = 0;
          *&v20[v6[6]] = v62;
          *&v20[v6[7]] = 1;
          v20[v6[8]] = 3;
          v20[v6[9]] = 0;
          *&v20[v6[10]] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_0_53();
            sub_26A7A2598();
            v27 = v66;
          }

          v63 = *(v27 + 16);
          v64 = v63 + 1;
          if (v63 >= *(v27 + 24) >> 1)
          {
            sub_26A7A2598();
            v27 = v67;
          }

          *(v27 + 16) = v64;
          OUTLINED_FUNCTION_1_71();
          sub_26A625DE4(v20, v27 + v65 + *(v7 + 72) * v63);
        }

        while (v64 < v60);
      }

      v68 = v120;
      if (*(v120 + 16) && (v69 = sub_26A5487E8(v119, v121, v60, v118), (v70 & 1) != 0))
      {
        v25 = v117;
        sub_26A680A54(*(v68 + 56) + *(v7 + 72) * v69, v117);
        v71 = 0;
      }

      else
      {
        v71 = 1;
        v25 = v117;
      }

      v55 = v109;
      v28 = 1;
      __swift_storeEnumTagSinglePayload(v25, v71, 1, v6);

      if (__swift_getEnumTagSinglePayload(v25, 1, v6) == 1)
      {
        sub_26A657E14(v25);
      }

      else
      {
        v72 = v25;
        v25 = v114;
        sub_26A625DE4(v72, v114);
        sub_26A680A54(v25, v116);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_53();
          sub_26A7A2598();
          v27 = v75;
        }

        v73 = *(v27 + 16);
        if (v73 >= *(v27 + 24) >> 1)
        {
          sub_26A7A2598();
          v27 = v76;
        }

        sub_26A657E7C(v114);
        *(v27 + 16) = v73 + 1;
        OUTLINED_FUNCTION_1_71();
        sub_26A625DE4(v116, v27 + v74 + *(v7 + 72) * v73);
        v28 = 1;
      }

      ++v56;
    }

    while (v56 != v113);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  if (!*(v27 + 16))
  {
    v78 = MEMORY[0x277D84F90];
    v79 = v115;
    goto LABEL_56;
  }

  sub_26A7A2574();
  v78 = v77;
  v28 = *(v77 + 16);
  v25 = v28 + 1;
  if (v28 >= *(v77 + 24) >> 1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v79 = v115;
    *(v78 + 16) = v25;
    *(v78 + 8 * v28 + 32) = v27;
LABEL_56:
    v114 = *(v79 + 16);
    if (!v114)
    {
      break;
    }

    v80 = 0;
    v113 = v79 + 32;
    while (v80 < *(v79 + 16))
    {
      v118 = v78;
      v119 = v80;
      v81 = (v113 + 32 * v80);
      v83 = *v81;
      v82 = v81[1];
      v84 = v81[2];
      v116 = v81[3];
      v117 = v83;
      v121 = v82;
      if (v84 <= 0)
      {

        v86 = MEMORY[0x277D84F90];
      }

      else
      {
        v85 = *(v27 + 16);

        v86 = MEMORY[0x277D84F90];
        do
        {
          sub_26A84ACB8();
          *&v13[v6[5]] = 0;
          *&v13[v6[6]] = v85;
          *&v13[v6[7]] = 1;
          v13[v6[8]] = 3;
          v13[v6[9]] = 0;
          *&v13[v6[10]] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_0_53();
            sub_26A7A2598();
            v86 = v90;
          }

          v87 = *(v86 + 16);
          v88 = v87 + 1;
          if (v87 >= *(v86 + 24) >> 1)
          {
            sub_26A7A2598();
            v86 = v91;
          }

          *(v86 + 16) = v88;
          OUTLINED_FUNCTION_1_71();
          sub_26A625DE4(v13, v86 + v89 + *(v7 + 72) * v87);
        }

        while (v88 < v84);
      }

      v92 = v120;
      if (*(v120 + 16) && (v93 = sub_26A5487E8(v117, v121, v84, v116), (v94 & 1) != 0))
      {
        v95 = v110;
        sub_26A680A54(*(v92 + 56) + *(v7 + 72) * v93, v110);
        v96 = 0;
      }

      else
      {
        v96 = 1;
        v95 = v110;
      }

      v78 = v118;
      __swift_storeEnumTagSinglePayload(v95, v96, 1, v6);

      if (__swift_getEnumTagSinglePayload(v95, 1, v6) == 1)
      {
        sub_26A657E14(v95);
      }

      else
      {
        v97 = v95;
        v98 = v111;
        sub_26A625DE4(v97, v111);
        sub_26A680A54(v98, v112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_53();
          sub_26A7A2598();
          v86 = v104;
        }

        v99 = *(v86 + 16);
        if (v99 >= *(v86 + 24) >> 1)
        {
          sub_26A7A2598();
          v86 = v105;
        }

        sub_26A657E7C(v111);
        *(v86 + 16) = v99 + 1;
        OUTLINED_FUNCTION_1_71();
        sub_26A625DE4(v112, v86 + v100 + *(v7 + 72) * v99);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_53();
        sub_26A7A2574();
        v78 = v102;
      }

      v28 = *(v78 + 16);
      v25 = v28 + 1;
      v79 = v115;
      v101 = v119;
      if (v28 >= *(v78 + 24) >> 1)
      {
        sub_26A7A2574();
        v101 = v119;
        v79 = v115;
        v78 = v103;
      }

      v80 = v101 + 1;
      *(v78 + 16) = v25;
      *(v78 + 8 * v28 + 32) = v86;
      if (v80 == v114)
      {
        goto LABEL_84;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    sub_26A7A2574();
    v78 = v107;
  }

LABEL_84:

  return v78;
}

uint64_t sub_26A6BE530()
{

  return v0;
}

uint64_t sub_26A6BE558()
{
  sub_26A6BE530();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26A6BE5B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_26A6BE5F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A6BE644()
{
  result = qword_2803B3990;
  if (!qword_2803B3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3990);
  }

  return result;
}

uint64_t sub_26A6BE698(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A545238();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26A6BE704(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_26A6BE704(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26A852558();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26A6BE870(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_26A6BE7F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26A6BE7F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 + 16))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        v12 = *(v9 + 56);
        v13 = *(v9 + 16);
        *(v9 + 32) = *v9;
        *(v9 + 48) = v13;
        *v9 = v10;
        *(v9 + 8) = v11;
        *(v9 + 16) = v7;
        *(v9 + 24) = v12;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26A6BE870(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v86 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 16);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 80);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6 - 16;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = *(v24 + 1);
                v29 = *v25;
                *v24 = *(v25 - 1);
                *(v24 + 1) = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9 - 32;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *(v35 + 16))
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                v38 = *(v35 + 56);
                v39 = *(v35 + 16);
                *(v35 + 32) = *v35;
                *(v35 + 48) = v39;
                *v35 = v36;
                *(v35 + 8) = v37;
                *(v35 + 16) = v33;
                *(v35 + 24) = v38;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v88 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A0DBC();
        v8 = v84;
      }

      v41 = v8[2];
      v42 = v41 + 1;
      if (v41 >= v8[3] >> 1)
      {
        sub_26A7A0DBC();
        v8 = v85;
      }

      v8[2] = v42;
      v43 = v8 + 4;
      v44 = &v8[2 * v41 + 4];
      *v44 = v7;
      v44[1] = v9;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v8[2 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = v8[4];
            v49 = v8[5];
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_56:
            if (v51)
            {
              goto LABEL_96;
            }

            v63 = *v47;
            v62 = v47[1];
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_99;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_104;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v42 < 2)
          {
            goto LABEL_98;
          }

          v70 = *v47;
          v69 = v47[1];
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_71:
          if (v66)
          {
            goto LABEL_101;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_103;
          }

          if (v73 < v65)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v45 - 1 >= v42)
          {
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v77 = &v43[2 * v45 - 2];
          v78 = *v77;
          v79 = &v43[2 * v45];
          v80 = v79[1];
          sub_26A6BEE8C((*a3 + 32 * *v77), (*a3 + 32 * *v79), (*a3 + 32 * v80), v89);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v80 < v78)
          {
            goto LABEL_91;
          }

          v81 = v8;
          v82 = v8[2];
          if (v45 > v82)
          {
            goto LABEL_92;
          }

          *v77 = v78;
          v77[1] = v80;
          if (v45 >= v82)
          {
            goto LABEL_93;
          }

          v42 = v82 - 1;
          memmove(&v43[2 * v45], v79 + 2, 16 * (v82 - 1 - v45));
          v81[2] = v82 - 1;
          v83 = v82 > 2;
          v8 = v81;
          v5 = 0;
          if (!v83)
          {
            goto LABEL_85;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_94;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_95;
        }

        v59 = v47[1];
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_97;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_100;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_105;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v88;
      a4 = v86;
      if (v88 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_26A6BED60(&v91, *a1, a3);
LABEL_89:
}

uint64_t sub_26A6BED60(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_26A544B3C();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_26A6BEE8C((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_26A6BEE8C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_26A7A37E0(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 2) >= *(v4 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_26A7A37E0(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
LABEL_15:
  for (v5 -= 32; v10 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v10 - 2) < *(v6 - 2))
    {
      v17 = v6 - 32;
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v18 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 32)
    {
      v16 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v16;
    }

    v10 -= 32;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

id sub_26A6BF06C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = [v1 text_1];
  if (v5)
  {
    v107 = v2;
    v58 = v5;
    RFTextProperty.asPartialText()(v105);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v103 + 1) = &type metadata for PartialText;
      v104 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v102[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v102[0] + 16);
    }

    else
    {
      v104 = 0;
      *v102 = 0u;
      v103 = 0u;
    }

    v10 = [v3 text_3];
    if (v10)
    {
      v11 = v10;
      *(&v100 + 1) = &type metadata for PartialText;
      v101 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v99[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v99[0] + 16);
    }

    else
    {
      v101 = 0;
      *v99 = 0u;
      v100 = 0u;
    }

    v12 = [v3 text_4];
    if (v12)
    {
      v13 = v12;
      *(&v97 + 1) = &type metadata for PartialText;
      v98 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v96[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v96[0] + 16);
    }

    else
    {
      v98 = 0;
      *v96 = 0u;
      v97 = 0u;
    }

    HIDWORD(v55) = [v3 add_tint];
    *a1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v14 = type metadata accessor for ReferenceCenteredView();
    v15 = a1 + v14[5];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    v16 = v14[6];
    *(a1 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v17 = a1 + v14[7];
    if (qword_2803A8C60 != -1)
    {
      swift_once();
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE40);
    v19 = __swift_project_value_buffer(v18, qword_2803D1E30);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
    v21 = &v17[*(v20 + 32)];
    sub_26A4EA070(v19, v21, &qword_2803ADE40);
    sub_26A6AEE74(__src);
    memcpy(v17, __src, 0xBFuLL);
    sub_26A580C48(v21 + *(v18 + 36), &v17[*(v20 + 28)]);
    v22 = memcpy(__dst, v105, 0xFAuLL);
    OUTLINED_FUNCTION_1_72(v22, v23, v24, v25, v26, v27, v28, v29, v55, v58, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]);
    sub_26A4EC458(__dst, &v61);
    sub_26A4EC4B4();
    *(a1 + v14[8]) = sub_26A851248();
    sub_26A4EA070(v102, v93, &qword_2803A91B8);
    if (v94)
    {
      __swift_project_boxed_opaque_existential_1(v93, v94);
      v30 = OUTLINED_FUNCTION_0_71();
      v32 = v31(v30);
      __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {
      sub_26A537648(v93);
      v32 = 0;
    }

    *(a1 + v14[9]) = v32;
    sub_26A4EA070(v99, v93, &qword_2803A91B8);
    if (v94)
    {
      __swift_project_boxed_opaque_existential_1(v93, v94);
      v33 = OUTLINED_FUNCTION_0_71();
      v35 = v34(v33);
      __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {
      sub_26A537648(v93);
      v35 = 0;
    }

    *(a1 + v14[10]) = v35;
    v36 = sub_26A4EA070(v96, &v61, &qword_2803A91B8);
    if (v64)
    {
      __swift_project_boxed_opaque_existential_1(&v61, v64);
      v44 = OUTLINED_FUNCTION_0_71();
      v46 = v45(v44);

      OUTLINED_FUNCTION_1_72(v47, v48, v49, v50, v51, v52, v53, v54, v56, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]);
      sub_26A4EC508(v93);
      sub_26A537648(v96);
      sub_26A537648(v99);
      sub_26A537648(v102);
      result = __swift_destroy_boxed_opaque_existential_1(&v61);
    }

    else
    {
      OUTLINED_FUNCTION_1_72(v36, v37, v38, v39, v40, v41, v42, v43, v56, v59, v61, v62, v63, 0, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]);
      sub_26A4EC508(v93);

      sub_26A537648(v96);
      sub_26A537648(v99);
      sub_26A537648(v102);
      result = sub_26A537648(&v61);
      v46 = 0;
    }

    *(a1 + v14[11]) = v46;
    *(a1 + v14[12]) = v57;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B136E8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A6BF5FC()
{
  result = qword_2803B3998;
  if (!qword_2803B3998)
  {
    type metadata accessor for ReferenceCenteredView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3998);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x398], 0xFAuLL);
}

uint64_t sub_26A6BF688@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SimpleItemRichSearchResultView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84EE68();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A6BF890()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A6BF9E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SimpleItemRichSearchResultView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A6BFBEC()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SimpleItemRichSearchResultView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4D7EA8();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A6BFDD4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t sub_26A6BFF2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 28);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v15[1];
  }

  if ((v8 - 1) >= 8)
  {
    v11 = sub_26A851E98();
    sub_26A7A6570(v11, 1, "SnippetUI/Context.swift", 23, 2, 635, "idiom", 5, 2);
    v10 = MEMORY[0x277D62A18];
  }

  else
  {
    v10 = qword_279CA29D0[v8 - 1];
  }

  v12 = *v10;
  v13 = sub_26A84B058();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

void SimpleItemRichSearchResultView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_28_0();
  v170 = v22;
  v177 = v21;
  v184 = v24;
  v191 = v23;
  v156 = v26;
  v163 = v25;
  v28 = v27;
  v30 = v29;
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  __swift_project_value_buffer(v31, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(v30, __src, 0xBFuLL);
  OUTLINED_FUNCTION_5_54(*(v31 + 36));
  sub_26A6C84C0();
  v32 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v33 = &v30[v32[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v203 = xmmword_281588758[0];
  v204 = unk_281588768;
  v205 = xmmword_281588778;
  v206 = xmmword_281588788;
  v207 = xmmword_281588758[0];
  v208 = unk_281588768;
  v209 = xmmword_281588778;
  v210 = xmmword_281588788;
  v124 = xmmword_281588788;
  v137 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v211);
  memcpy(v33, v211, 0xC0uLL);
  *(v33 + 12) = v137;
  *(v33 + 13) = v124;
  v34 = v208;
  *(v33 + 14) = v207;
  *(v33 + 15) = v34;
  v35 = v210;
  *(v33 + 16) = v209;
  *(v33 + 17) = v35;
  v36 = v32[6];
  *&v30[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  OUTLINED_FUNCTION_18_21();
  v37 = &v30[v32[7]];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = v32[8];
  *&v30[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_18_21();
  v39 = &v30[v32[9]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = v32[10];
  *&v30[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_18_21();
  v41 = &v30[v32[11]];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  sub_26A50429C(v28, &v198);
  OUTLINED_FUNCTION_80();
  v42 = swift_allocObject();
  sub_26A4C2314(&v198, v42 + 16);
  v43 = &v30[v32[12]];
  *v43 = sub_26A6C0750;
  v43[1] = v42;
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v44 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v44, v45, v46, v47, v48, v49, v50, v51, v124, *(&v124 + 1), v137, *(&v137 + 1), a21, v156, v163, v170, v177, v184, v191, v52, v198, v199);
  OUTLINED_FUNCTION_14_31(v53, &v30[v32[13]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v54 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v54, v55, v56, v57, v58, v59, v60, v61, v125, v131, v138, v144, v150, v157, v164, v171, v178, v185, v192, v62, v198, v199);
  OUTLINED_FUNCTION_14_31(v63, &v30[v32[14]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v64 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v64, v65, v66, v67, v68, v69, v70, v71, v126, v132, v139, v145, v151, v158, v165, v172, v179, v186, v193, v72, v198, v199);
  OUTLINED_FUNCTION_14_31(v73, &v30[v32[15]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v74 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v74, v75, v76, v77, v78, v79, v80, v81, v127, v133, v140, v146, v152, v159, v166, v173, v180, v187, v194, v82, v198, v199);
  OUTLINED_FUNCTION_14_31(v83, &v30[v32[16]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v84 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v84, v85, v86, v87, v88, v89, v90, v91, v128, v134, v141, v147, v153, v160, v167, v174, v181, v188, v195, v92, v198, v199);
  OUTLINED_FUNCTION_14_31(v93, &v30[v32[17]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v94 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v94, v95, v96, v97, v98, v99, v100, v101, v129, v135, v142, v148, v154, v161, v168, v175, v182, v189, v196, v102, v198, v199);
  OUTLINED_FUNCTION_14_31(v103, &v30[v32[18]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v104 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v104, v105, v106, v107, v108, v109, v110, v111, v130, v136, v143, v149, v155, v162, v169, v176, v183, v190, v197, v112, v198, v199);
  v113 = &v30[v32[19]];
  *v113 = sub_26A6C8514;
  v113[1] = v114;
  sub_26A4D7E54();
  v115 = v200;
  if (v200)
  {
    v116 = v201;
    __swift_project_boxed_opaque_existential_1(&v198, v200);
    v117 = (v116[1])(v115, v116);
    __swift_destroy_boxed_opaque_existential_1(&v198);
    v118 = &protocol witness table for AnyView;
    v119 = MEMORY[0x277CE11C8];
  }

  else
  {
    sub_26A4D6FD8();
    v117 = 0;
    v119 = 0;
    v118 = 0;
    *(&v198 + 1) = 0;
    v199 = 0;
  }

  *&v198 = v117;
  v200 = v119;
  v201 = v118;
  v120 = sub_26A6A8134(&v198);
  v122 = v121;
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  __swift_destroy_boxed_opaque_existential_1(v28);
  v123 = &v30[v32[20]];
  *v123 = v120;
  v123[8] = v122;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6C06F4(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  return (*(v3 + 8))(v2, v3);
}

void *sub_26A6C0774@<X0>(void *a1@<X8>)
{
  sub_26A4D7E54();
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v3 + 8))(__src, v2, v3);
    nullsub_1(__src);
    memcpy(a1, __src, 0xFAuLL);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_26A4D6FD8();
    sub_26A504324(__src);
    return memcpy(a1, __src, 0xFAuLL);
  }
}

void sub_26A6C0858()
{
  OUTLINED_FUNCTION_28_0();
  v87 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v77 = &v75 - v5;
  v84 = sub_26A84DC28();
  OUTLINED_FUNCTION_15();
  v79 = v6;
  MEMORY[0x28223BE20](v7);
  v86 = v8;
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  __swift_project_value_buffer(v10, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  sub_26A4D7E54();
  sub_26A6AEE74(v90);
  memcpy(v2, v90, 0xBFuLL);
  OUTLINED_FUNCTION_5_54(*(v10 + 36));
  sub_26A6C84C0();
  v11 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v12 = &v2[v11[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v91 = xmmword_281588758[0];
  v92 = unk_281588768;
  v93 = xmmword_281588778;
  v94 = unk_281588788;
  v95 = xmmword_281588758[0];
  v96 = unk_281588768;
  v97 = xmmword_281588778;
  v98 = unk_281588788;
  v88 = xmmword_281588778;
  v85 = unk_281588788;
  sub_26A4D7E54();
  sub_26A6AEE74(v99);
  memcpy(v12, v99, 0xC0uLL);
  v13 = v85;
  *(v12 + 12) = v88;
  *(v12 + 13) = v13;
  v14 = v96;
  *(v12 + 14) = v95;
  *(v12 + 15) = v14;
  v15 = v98;
  *(v12 + 16) = v97;
  *(v12 + 17) = v15;
  v16 = v11[6];
  *&v2[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  OUTLINED_FUNCTION_186();
  v17 = &v2[v11[7]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v11[8];
  *&v2[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_186();
  v19 = &v2[v11[9]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v11[10];
  *&v2[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_186();
  v21 = &v2[v11[11]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v79;
  v23 = v79 + 16;
  *&v85 = *(v79 + 16);
  v24 = v84;
  (v85)(v9, v87, v84);
  v25 = v23;
  v80 = *(v22 + 80);
  *&v88 = v11;
  v26 = (v80 + 16) & ~v80;
  v27 = swift_allocObject();
  v81 = *(v22 + 32);
  v83 = v22 + 32;
  v81(v27 + v26, v9, v24);
  v28 = v87;
  v29 = OUTLINED_FUNCTION_13_30(&v2[*(v88 + 48)]);
  (v85)(v29, v28, v24);
  v82 = v25;
  v30 = swift_allocObject();
  v31 = OUTLINED_FUNCTION_3_61(v30);
  v32 = v81;
  (v81)(v31);
  v33 = OUTLINED_FUNCTION_13_30(&v2[*(v88 + 52)]);
  v34 = v28;
  v35 = v85;
  (v85)(v33, v34, v24);
  v36 = OUTLINED_FUNCTION_20_23();
  v37 = OUTLINED_FUNCTION_3_61(v36);
  v32(v37);
  v38 = v87;
  v39 = &v2[*(v88 + 56)];
  v78 = v2;
  v40 = OUTLINED_FUNCTION_13_30(v39);
  v35(v40, v38, v24);
  v41 = swift_allocObject();
  v42 = OUTLINED_FUNCTION_3_61(v41);
  (v81)(v42);
  v43 = OUTLINED_FUNCTION_13_30(&v2[*(v88 + 60)]);
  v44 = v85;
  (v85)(v43, v38, v24);
  v45 = swift_allocObject();
  v76 = v9;
  v46 = v81;
  v81(v45 + v26, v9, v24);
  v47 = v78;
  v48 = OUTLINED_FUNCTION_13_30(&v78[*(v88 + 64)]);
  v49 = v84;
  v44(v48);
  v50 = swift_allocObject();
  v51 = v76;
  v46(v50 + v26, v76, v49);
  v52 = &v47[*(v88 + 68)];
  *v52 = sub_26A6C7F80;
  v52[1] = v50;
  v53 = v51;
  v54 = v51;
  v55 = v87;
  v56 = v84;
  (v85)(v54, v87, v84);
  v57 = OUTLINED_FUNCTION_20_23();
  v58 = OUTLINED_FUNCTION_3_61(v57);
  (v46)(v58);
  v59 = v78;
  v60 = OUTLINED_FUNCTION_13_30(&v78[*(v88 + 72)]);
  (v85)(v60, v55, v56);
  v61 = OUTLINED_FUNCTION_20_23();
  v62 = v61 + v26;
  v63 = v88;
  v46(v62, v53, v56);
  v64 = v59;
  v65 = &v59[*(v63 + 76)];
  *v65 = sub_26A6C8058;
  v65[1] = v61;
  v66 = v77;
  sub_26A84DC18();
  v67 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v66, 1, v67) == 1)
  {
    sub_26A4D6FD8();
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v89[1] = 0;
    v89[2] = 0;
  }

  else
  {
    v68 = VisualProperty.asAnyView()();
    (*(*(v67 - 8) + 8))(v66, v67);
    v70 = &protocol witness table for AnyView;
    v69 = MEMORY[0x277CE11C8];
  }

  v89[0] = v68;
  v89[3] = v69;
  v89[4] = v70;
  v71 = sub_26A6A8134(v89);
  v73 = v72;
  (*(v79 + 8))(v87, v84);
  v74 = &v64[*(v63 + 80)];
  *v74 = v71;
  v74[8] = v73;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6C1010@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84B888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84DBF8();
  v6 = sub_26A6E3188(a1);
  return (*(v3 + 8))(v5, v2, v6);
}

void sub_26A6C10F4()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_23();
  v2();
  v14 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v0, 1, v14) == 1)
  {
    sub_26A4D6FD8();
    sub_26A504324(v31);
    v15 = v4;
  }

  else
  {
    sub_26A84B858();
    v16 = _s10SnippetKit11TextElementV0A2UIE4view4bold6italic05SwiftE00C0VSb_SbtF_0(0, 0);
    v28 = v17;
    v29 = v16;
    v19 = v18;
    v21 = v20;
    (*(v7 + 8))(v11, v5);
    v30 = v4;
    v22 = v19 & 1;
    v23 = TextProperty.asAnyView()();
    v24 = sub_26A84B878();
    KeyPath = swift_getKeyPath();
    v35 = 0;
    v26 = swift_getKeyPath();
    v34 = 0;
    v27 = swift_getKeyPath();
    v33 = 0;
    v32 = 1;
    (*(*(v14 - 8) + 8))(v0, v14);
    v31[0] = KeyPath;
    LOBYTE(v31[1]) = v35;
    v31[2] = v26;
    LOBYTE(v31[3]) = v34;
    v31[4] = v27;
    LOBYTE(v31[5]) = v33;
    v31[6] = v29;
    v31[7] = v28;
    v31[8] = v22;
    v31[9] = v21;
    v31[10] = v23;
    LOBYTE(v31[11]) = v24 & 1;
    memset(&v31[12], 0, 128);
    LOBYTE(v31[28]) = v32;
    memset(&v31[29], 0, 18);
    nullsub_1(v31);
    v15 = v30;
  }

  memcpy(v15, v31, 0xFAuLL);
  OUTLINED_FUNCTION_27_0();
}

void *sub_26A6C1390@<X0>(void (*a1)(__n128)@<X2>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_77();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  a1(v6);
  v9 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_26A4D6FD8();
    sub_26A504324(v12);
  }

  else
  {
    v10 = sub_26A6E3398(v13);
    (*(*(v9 - 8) + 8))(v8, v9, v10);
    memcpy(v12, v13, 0xFAuLL);
    nullsub_1(v12);
  }

  return memcpy(a2, v12, 0xFAuLL);
}

uint64_t SimpleItemRichSearchResultView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_23();
  sub_26A6BFBEC();
  sub_26A6C1714(v18);
  sub_26A6BF890();
  sub_26A6BF9E4(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v17 = v1;
  sub_26A4CCA00();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CD04;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3B60) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3B68);
  *(a1 + *(result + 36)) = 64;
  return result;
}

int *sub_26A6C1714@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  result = type metadata accessor for SimpleItemRichSearchResultView(0);
  if (*(v1 + result[20]))
  {
    sub_26A6BFF2C(v10);
    (*(v5 + 104))(v7, *MEMORY[0x277D62A00], v4);
    sub_26A6C7910();
    sub_26A851A48();
    sub_26A851A48();
    v12 = *(v5 + 8);
    v12(v7, v4);
    v12(v10, v4);
    if (v23[1] == v23[0] && (result = sub_26A6C1E4C(), (result & 1) != 0))
    {
      if (qword_2803A8BF8 != -1)
      {
        result = swift_once();
      }

      if (byte_2803B0441 == 1)
      {
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908) + 28);
        result = type metadata accessor for SimpleItemConstants();
        v14 = 0;
        __asm { FMOV            V0.2D, #6.0 }

        *(&_Q0 + 1) = *(v2 + result[13] + v13);
      }

      else
      {
        v14 = 0;
        _Q0 = xmmword_26A875B00;
      }

      v22 = _Q0;
    }

    else
    {
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908) + 28);
      result = type metadata accessor for SimpleItemConstants();
      v21 = v2 + result[10] + v20;
      _Q0 = *v21;
      v22 = *(v21 + 16);
      v14 = *(v21 + 32);
    }
  }

  else
  {
    _Q0 = 0uLL;
    v14 = 1;
    v22 = 0uLL;
  }

  *a1 = _Q0;
  *(a1 + 16) = v22;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_26A6C19B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A68);
  MEMORY[0x28223BE20](v24);
  v4 = &v20 - v3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BC0);
  MEMORY[0x28223BE20](v23);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A48);
  MEMORY[0x28223BE20](v22);
  v21 = &v20 - v8;
  v9 = sub_26A84B058();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_26A6BFF2C(&v20 - v14);
  (*(v10 + 104))(v12, *MEMORY[0x277D62A00], v9);
  sub_26A6C7910();
  sub_26A851A48();
  sub_26A851A48();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v16(v15, v9);
  if (__src[0] == v26 && (sub_26A6C1E4C() & 1) != 0)
  {
    *v7 = sub_26A84FA78();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BC8);
    sub_26A6C3904(a1, &v7[*(v17 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    v18 = v21;
    sub_26A4AC604();
    memcpy(&v18[*(v22 + 36)], __src, 0x70uLL);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D4E04();
    sub_26A4D4EBC();
    sub_26A84FDF8();
    return sub_26A4D6FD8();
  }

  else
  {
    sub_26A6C20F0(v4);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D4E04();
    sub_26A4D4EBC();
    sub_26A84FDF8();
    return sub_26A4D6FD8();
  }
}

uint64_t sub_26A6C1E4C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v12[15];
  }

  v9 = 1;
  switch(v7)
  {
    case 1:
    case 2:
    case 3:
      v10 = sub_26A852598();

      if ((v10 & 1) == 0)
      {
        switch(sub_26A6BFDD4())
        {
          case 3u:
            goto LABEL_8;
          default:
            v9 = sub_26A852598();
            break;
        }

        goto LABEL_8;
      }

      break;
    default:
LABEL_8:

      break;
  }

  return v9 & 1;
}

uint64_t sub_26A6C20F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &__src[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A88);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &__src[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A78);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &__src[-v16];
  v18 = sub_26A84FA78();
  sub_26A6C23C4();
  v19 = *&v6[*(v4 + 28)];
  sub_26A6C812C(v6);
  *v9 = v18;
  *(v9 + 1) = v19;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C50);
  sub_26A6C252C(v1);
  sub_26A851458();
  sub_26A84F628();
  sub_26A4D7EA8();
  memcpy(&v13[*(v11 + 44)], __src, 0x70uLL);
  sub_26A4D7EA8();
  *&v17[*(v15 + 44)] = 256;
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A68);
  v23 = a1 + *(result + 36);
  *v23 = KeyPath;
  *(v23 + 8) = 0;
  *(v23 + 16) = v21;
  *(v23 + 24) = 256;
  return result;
}

uint64_t sub_26A6C23C4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[1];
  }

  return sub_26A5A02D4(v6);
}

uint64_t sub_26A6C252C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C58);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  sub_26A6C278C(v16 - v10);
  sub_26A6C23C4();
  v12 = *&v6[*(v4 + 28)];
  sub_26A6C812C(v6);
  KeyPath = swift_getKeyPath();
  v14 = &v11[*(v8 + 44)];
  *v14 = KeyPath;
  v14[8] = 0;
  *(v14 + 2) = v12;
  v16[593] = sub_26A84FA78();
  v16[594] = 0;
  v17 = 1;
  sub_26A6C2980(v2);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C68);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C278C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 80));
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    sub_26A6C23C4();
    KeyPath = swift_getKeyPath();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C48);
    v11 = (a1 + *(v10 + 36));
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    v13 = sub_26A84B1D8();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v11 + v12, v5, v13);
    __swift_storeEnumTagSinglePayload(v11 + v12, 0, 1, v13);
    *v11 = KeyPath;
    *a1 = v7;
    *(a1 + 8) = v8 & 1;
    v15 = *(v14 + 8);

    v15(v5, v13);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C48);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
  }
}

uint64_t sub_26A6C2980(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v10[0] = sub_26A84FC08();
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  sub_26A6C2C04(v2);
  sub_26A851448();
  sub_26A84F628();
  memcpy(v9, v10, 0x8C8uLL);
  KeyPath = swift_getKeyPath();
  memcpy(v10, v9, 0x938uLL);
  v10[295] = KeyPath;
  v10[296] = 1;
  v11 = 0;
  v8[0] = sub_26A84FC18();
  v8[1] = 0;
  LOBYTE(v8[2]) = 1;
  sub_26A6C3368(v2);
  sub_26A851448();
  sub_26A84F628();
  memcpy(__dst, v8, 0x898uLL);
  memcpy(v8, __dst, sizeof(v8));
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  *(v4 + 2384) = 0;
  *(v4 + 2392) = 0;
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C2C04(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v19 = v3;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v9 = *(v2 + v8[18]);
  sub_26A6BFF2C(v7);
  v9(v39, v7);
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v44);
  memcpy(v41, v44, sizeof(v41));
  v42 = sub_26A80A810;
  v43 = 0;
  memcpy(v40, v39, sizeof(v40));
  v11 = *(v2 + v8[12]);
  sub_26A6BFF2C(v7);
  v11(v28, v7);
  v10(v7, v4);
  if (qword_2803A8D38 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v45);
  sub_26A4D6FD8();
  memcpy(v30, v45, sizeof(v30));
  v31 = sub_26A80A810;
  v32 = 0;
  memcpy(v29, v28, sizeof(v29));
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  v33 = qword_28157FC80;
  v34 = sub_26A4D82F0;
  v35 = 0;
  v36 = sub_26A84FBD8();
  v37 = sub_26A4D82F0;
  v38 = 0;
  v12 = *(v2 + v8[13]);
  sub_26A6BFF2C(v7);
  v12(v25, v7);
  v10(v7, v4);
  v13 = sub_26A6BFDD4();
  v17 = v10;
  v18 = v4;
  switch(v13)
  {
    case 3:

      goto LABEL_12;
    default:
      v14 = sub_26A852598();

      if (v14)
      {
LABEL_12:
        if (qword_2803A8D40 == -1)
        {
          goto LABEL_13;
        }
      }

      else if (qword_28157E6A8 == -1)
      {
        goto LABEL_13;
      }

      swift_once();
LABEL_13:
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A6AEE74(v46);
      sub_26A4D6FD8();
      memcpy(&v26[32], v46, 0xBFuLL);
      v26[66] = sub_26A80A810;
      v26[67] = 0;
      memcpy(v26, v25, 0xFAuLL);
      memcpy(v27, v26, sizeof(v27));
      v15 = *(v2 + v8[14]);
      sub_26A6BFF2C(v7);
      v15(v20, v7);
      v17(v7, v18);
      sub_26A4D7E54();
      sub_26A6AEE74(v47);
      memcpy(v22, v47, sizeof(v22));
      v23 = sub_26A80A810;
      v24 = 0;
      memcpy(v21, v20, sizeof(v21));
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      return sub_26A4D6FD8();
  }
}

uint64_t sub_26A6C3368(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v15 = v3;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 2168;
  v8 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v9 = *(v2 + v8[19]);
  sub_26A6BFF2C(v7);
  v9(v31, v7);
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v36);
  memcpy(v33, v36, sizeof(v33));
  v34 = sub_26A80A810;
  v35 = 0;
  memcpy(v32, v31, sizeof(v32));
  v11 = *(v2 + v8[15]);
  sub_26A6BFF2C(v7);
  v11(v26, v7);
  v10(v7, v4);
  if (qword_2803A8D48 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v37);
  sub_26A4D6FD8();
  memcpy(v28, v37, sizeof(v28));
  v29 = sub_26A80A810;
  v30 = 0;
  memcpy(v27, v26, sizeof(v27));
  v12 = *(v2 + v8[17]);
  sub_26A6BFF2C(v7);
  v12(v21, v7);
  v10(v7, v4);
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v38);
  memcpy(v23, v38, sizeof(v23));
  v24 = sub_26A80A810;
  v25 = 0;
  memcpy(v22, v21, sizeof(v22));
  v13 = *(v2 + v8[16]);
  sub_26A6BFF2C(v7);
  v13(v16, v7);
  v10(v7, v4);
  sub_26A4D7E54();
  sub_26A6AEE74(v39);
  memcpy(v18, v39, sizeof(v18));
  v19 = sub_26A80A810;
  v20 = 0;
  memcpy(v17, v16, sizeof(v17));
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C3904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BD0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BD8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  sub_26A6C278C(v27 - v15);
  v17 = sub_26A850298();
  sub_26A84ED48();
  v18 = &v16[*(v13 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_26A6C23C4();
  v23 = *&v6[*(v4 + 32)];
  sub_26A6C812C(v6);
  *v11 = sub_26A84FA78();
  *(v11 + 1) = v23;
  v11[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BE0);
  sub_26A6C3BE4(a1);
  KeyPath = swift_getKeyPath();
  v25 = &v11[*(v8 + 44)];
  *v25 = KeyPath;
  *(v25 + 1) = 1;
  v25[16] = 0;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BE8);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C3BE4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BF0);
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (v14 - v9);
  *v10 = sub_26A851458();
  v10[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BF8);
  sub_26A6C3E28(v2);
  sub_26A6C23C4();
  v12 = *&v6[*(v4 + 32)];
  sub_26A6C812C(v6);
  v14[435] = sub_26A84FA78();
  v14[436] = v12;
  v15 = 0;
  sub_26A6C5038(v2);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C08);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C3E28(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v55 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C10);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C18);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - v10;
  v11 = sub_26A84EE68();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A6C23C4();
  v22 = *&v21[*(v19 + 32)];
  sub_26A6C812C(v21);
  v58[0] = sub_26A84FA78();
  v58[1] = v22;
  LOBYTE(v58[2]) = 0;
  sub_26A6C43E4(v2);
  sub_26A6BF688(v17);
  v47 = *MEMORY[0x277CDF3C0];
  v23 = v12;
  v24 = *(v12 + 104);
  v45 = v14;
  v46 = v24;
  v24(v14);
  LOBYTE(v12) = sub_26A84EE58();
  v25 = v14;
  v26 = *(v23 + 8);
  v26(v25, v11);
  v26(v17, v11);
  v27 = 1.0;
  if (v12)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  memcpy(v59, v58, sizeof(v59));
  v60 = v28;
  sub_26A6C23C4();
  v29 = *&v21[*(v19 + 32)];
  sub_26A6C812C(v21);
  v56[0] = sub_26A84FA78();
  v56[1] = v29;
  LOBYTE(v56[2]) = 0;
  sub_26A6C43E4(v2);
  sub_26A6BF688(v17);
  v30 = v45;
  v46(v45, v47, v11);
  v31 = v30;
  LOBYTE(v30) = sub_26A84EE58();
  v26(v31, v11);
  v26(v17, v11);
  if ((v30 & 1) == 0)
  {
    v27 = 0.0;
  }

  memcpy(v57, v56, 0xC58uLL);
  *&v57[395] = v27;
  sub_26A8503C8();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C20);
  v33 = sub_26A6C8364();
  v34 = v49;
  sub_26A850938();
  sub_26A4D6FD8();
  v57[0] = v32;
  v57[1] = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v48;
  v36 = v53;
  sub_26A850C38();
  (*(v54 + 8))(v34, v36);
  sub_26A4D7E54();
  v37 = v50;
  v38 = v51;
  v39 = *(v51 + 16);
  v40 = v52;
  v39(v50, v35, v52);
  v41 = v55;
  sub_26A4D7E54();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C40);
  v39((v41 + *(v42 + 48)), v37, v40);
  v43 = *(v38 + 8);
  v43(v35, v40);
  sub_26A4D6FD8();
  v43(v37, v40);
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C43E4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v32 = v3;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v8 = *(v2 + v35[18]);
  sub_26A6BFF2C(v7);
  v37 = v8;
  v8(v61, v7);
  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  v11(v7, v4);
  if (qword_2803A8D50 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v66);
  sub_26A4D6FD8();
  memcpy(v63, v66, sizeof(v63));
  v64 = sub_26A80A810;
  v65 = 0;
  memcpy(v62, v61, sizeof(v62));
  sub_26A6BFF2C(v7);
  v37(v57, v7);
  v9(v7, v4);
  memcpy(v73, v57, sizeof(v73));
  memcpy(v74, v57, 0xFAuLL);
  v12 = sub_26A505008(v74);
  v33 = v2;
  v34 = v4;
  v37 = v10;
  v13 = v9;
  if (v12 == 1)
  {
    bzero(v60, 0x140uLL);
  }

  else
  {
    sub_26A4D6FD8();
    if (qword_2803A8BD8 != -1)
    {
      swift_once();
    }

    v15 = *(&xmmword_2803B00A0 + 1);
    v14 = xmmword_2803B00A0;
    v16 = byte_2803B00B0;
    v17 = qword_2803B00B8;
    sub_26A4D7E54();
    sub_26A4D7E54();
    sub_26A6AEE74(v67);
    sub_26A4D6FD8();
    memcpy(&v57[4], v67, 0xBFuLL);
    v57[39] = 0;
    v57[0] = v14;
    v57[1] = v15;
    LOBYTE(v57[2]) = v16;
    v57[38] = sub_26A80A810;
    v57[3] = v17;
    memcpy(v60, v57, sizeof(v60));
    sub_26A4EF6C0(v14, v15, v16);

    v2 = v33;
    v4 = v34;
  }

  v18 = v35;
  v19 = *(v2 + v35[12]);
  sub_26A6BFF2C(v7);
  v19(v56, v7);
  v13(v7, v4);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v68);
  sub_26A4D6FD8();
  memcpy(&v57[32], v68, 0xBFuLL);
  v57[66] = sub_26A80A810;
  v57[67] = 0;
  memcpy(v57, v56, 0xFAuLL);
  v20 = v13;
  v21 = *(v2 + v18[19]);
  sub_26A6BFF2C(v7);
  v21(v52, v7);
  v36 = v20;
  v20(v7, v4);
  memcpy(v58, v52, sizeof(v58));
  memcpy(v59, v52, 0xFAuLL);
  if (sub_26A505008(v59) == 1)
  {
    bzero(v55, 0x140uLL);
  }

  else
  {
    sub_26A4D6FD8();
    if (qword_2803A8BD8 != -1)
    {
      swift_once();
    }

    v23 = *(&xmmword_2803B00A0 + 1);
    v22 = xmmword_2803B00A0;
    v24 = byte_2803B00B0;
    v25 = qword_2803B00B8;
    sub_26A4D7E54();
    sub_26A4D7E54();
    sub_26A6AEE74(v69);
    sub_26A4D6FD8();
    memcpy(&v52[4], v69, 0xBFuLL);
    v52[39] = 0;
    v52[0] = v22;
    v52[1] = v23;
    LOBYTE(v52[2]) = v24;
    v52[38] = sub_26A80A810;
    v52[3] = v25;
    memcpy(v55, v52, sizeof(v55));
    sub_26A4EF6C0(v22, v23, v24);

    v2 = v33;
    v4 = v34;
  }

  sub_26A6BFF2C(v7);
  v21(v51, v7);
  v26 = v36;
  v36(v7, v4);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v70);
  sub_26A4D6FD8();
  memcpy(&v52[32], v70, 0xBFuLL);
  v52[66] = sub_26A80A810;
  v52[67] = 0;
  memcpy(v52, v51, 0xFAuLL);
  v27 = *(v2 + v35[15]);
  sub_26A6BFF2C(v7);
  v27(v47, v7);
  v26(v7, v4);
  memcpy(v53, v47, sizeof(v53));
  memcpy(v54, v47, 0xFAuLL);
  if (sub_26A505008(v54) == 1)
  {
    bzero(v50, 0x140uLL);
  }

  else
  {
    sub_26A4D6FD8();
    if (qword_2803A8BD8 != -1)
    {
      swift_once();
    }

    v28 = xmmword_2803B00A0;
    v29 = byte_2803B00B0;
    v30 = qword_2803B00B8;
    sub_26A4D7E54();
    sub_26A4D7E54();
    sub_26A6AEE74(v71);
    sub_26A4D6FD8();
    memcpy(&v47[2], v71, 0xBFuLL);
    *(&v47[19] + 1) = 0;
    v47[0] = v28;
    LOBYTE(v47[1]) = v29;
    *&v47[19] = sub_26A80A810;
    *(&v47[1] + 1) = v30;
    memcpy(v50, v47, sizeof(v50));
    sub_26A4EF6C0(v28, *(&v28 + 1), v29);

    v4 = v34;
  }

  sub_26A6BFF2C(v7);
  v27(v46, v7);
  v36(v7, v4);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v72);
  sub_26A4D6FD8();
  memcpy(&v47[16], v72, 0xBFuLL);
  v48 = sub_26A80A810;
  v49 = 0;
  memcpy(v47, v46, 0xFAuLL);
  sub_26A4D7E54();
  v45[0] = &v44;
  sub_26A4D7E54();
  v45[1] = &v43;
  sub_26A4D7E54();
  v45[2] = &v42;
  sub_26A4D7E54();
  v45[3] = &v41;
  sub_26A4D7E54();
  v45[4] = &v40;
  sub_26A4D7E54();
  v45[5] = &v39;
  sub_26A4D7E54();
  v45[6] = &v38;
  sub_26A594614(v45);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C5038(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v53 = v3;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v9 = &v2[*(v8 + 52)];
  v10 = *v9;
  v11 = *(v9 + 1);
  sub_26A6BFF2C(v7);
  v10(v86, v7);
  v60 = *(v5 + 8);
  v60(v7, v4);
  memcpy(v100, v86, sizeof(v100));
  memcpy(v101, v86, 0xFAuLL);
  v12 = sub_26A505008(v101);
  v13 = 0x2803A8000;
  v57 = v4;
  v58 = v10;
  v55 = v5 + 8;
  v56 = v11;
  v59 = v8;
  if (v12 == 1)
  {
    v14 = *&v2[*(v8 + 68)];
    sub_26A6BFF2C(v7);
    v14(v71, v7);
    v60(v7, v4);
    memcpy(v74, v71, 0xFAuLL);
    memcpy(v81, v71, 0xFAuLL);
    if (sub_26A505008(v81) == 1)
    {
      v15 = *&v2[v59[14]];
      sub_26A6BFF2C(v7);
      v15(v63, v7);
      v60(v7, v4);
      memcpy(v65, v63, 0xFAuLL);
      memcpy(v67, v63, 0xFAuLL);
      if (sub_26A505008(v67) == 1)
      {
        v16 = *&v2[v59[16]];
        sub_26A6BFF2C(v7);
        v16(v91, v7);
        v17 = v60;
        v60(v7, v4);
        memcpy(v84, v91, 0xFAuLL);
        memcpy(v61, v91, 0xFAuLL);
        if (sub_26A505008(v61) == 1)
        {
          bzero(v91, 0x140uLL);
          goto LABEL_13;
        }
      }
    }

    sub_26A4D6FD8();
    v13 = 0x2803A8000uLL;
  }

  else
  {
    sub_26A4D6FD8();
  }

  if (qword_2803A8BC8 != -1)
  {
    swift_once();
  }

  v18 = xmmword_2803B0060;
  v19 = byte_2803B0070;
  v20 = qword_2803B0078;
  if (*(v13 + 3416) != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v92);
  sub_26A4D6FD8();
  memcpy(&v86[2], v92, 0xBFuLL);
  *(&v86[19] + 1) = 0;
  v86[0] = v18;
  LOBYTE(v86[1]) = v19;
  *&v86[19] = sub_26A80A810;
  *(&v86[1] + 1) = v20;
  memcpy(v91, v86, sizeof(v91));
  sub_26A4EF6C0(v18, *(&v18 + 1), v19);

  v4 = v57;
  v10 = v58;
  v17 = v60;
LABEL_13:
  sub_26A6BFF2C(v7);
  v10(v85, v7);
  v17(v7, v4);
  if (qword_2803A8D58 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v93);
  sub_26A4D6FD8();
  memcpy(&v86[16], v93, 0xBFuLL);
  v87 = sub_26A80A810;
  v88 = 0;
  memcpy(v86, v85, 0xFAuLL);
  sub_26A6BFF2C(v7);
  v58(v74, v7);
  v17(v7, v4);
  memcpy(v89, v74, sizeof(v89));
  memcpy(v90, v74, 0xFAuLL);
  if (sub_26A505008(v90) == 1 || (sub_26A4D6FD8(), v21 = *&v2[v59[17]], sub_26A6BFF2C(v7), v21(v81, v7), v17(v7, v4), memcpy(v67, v81, 0xFAuLL), memcpy(v71, v81, 0xFAuLL), sub_26A505008(v71) == 1))
  {
    v22 = v59;
    bzero(v84, 0x140uLL);
  }

  else
  {
    sub_26A4D6FD8();
    if (qword_2803A8BD8 != -1)
    {
      swift_once();
    }

    v24 = *(&xmmword_2803B00A0 + 1);
    v23 = xmmword_2803B00A0;
    v25 = byte_2803B00B0;
    v26 = qword_2803B00B8;
    sub_26A4D7E54();
    sub_26A4D7E54();
    sub_26A6AEE74(v94);
    sub_26A4D6FD8();
    memcpy(&v81[4], v94, 0xBFuLL);
    v81[39] = 0;
    v81[0] = v23;
    v81[1] = v24;
    LOBYTE(v81[2]) = v25;
    v81[38] = sub_26A80A810;
    v81[3] = v26;
    memcpy(v84, v81, sizeof(v84));
    sub_26A4EF6C0(v23, v24, v25);

    v22 = v59;
    v17 = v60;
  }

  v27 = &v2[v22[17]];
  v28 = *v27;
  v29 = *(v27 + 1);
  sub_26A6BFF2C(v7);
  v28(v80, v7);
  v30 = v57;
  v17(v7, v57);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v95);
  v31 = v60;
  sub_26A4D6FD8();
  memcpy(&v81[32], v95, 0xBFuLL);
  v81[66] = sub_26A80A810;
  v81[67] = 0;
  memcpy(v81, v80, 0xFAuLL);
  sub_26A6BFF2C(v7);
  v58(v74, v7);
  v31(v7, v30);
  memcpy(v82, v74, sizeof(v82));
  memcpy(v83, v74, 0xFAuLL);
  v32 = sub_26A505008(v83);
  v54 = v2;
  v51[1] = v29;
  v52 = v28;
  if (v32 == 1)
  {
    sub_26A6BFF2C(v7);
    v28(v65, v7);
    v31(v7, v30);
    memcpy(v67, v65, 0xFAuLL);
    memcpy(v71, v65, 0xFAuLL);
    v33 = sub_26A505008(v71);
    v34 = v59;
    if (v33 == 1)
    {
      v35 = v57;
LABEL_28:
      bzero(v79, 0x140uLL);
      goto LABEL_32;
    }

    sub_26A4D6FD8();
  }

  else
  {
    sub_26A4D6FD8();
    v34 = v59;
  }

  v36 = *&v54[v34[14]];
  sub_26A6BFF2C(v7);
  v36(v74, v7);
  v35 = v57;
  v60(v7, v57);
  memcpy(v67, v74, 0xFAuLL);
  memcpy(v71, v74, 0xFAuLL);
  if (sub_26A505008(v71) == 1)
  {
    v34 = v59;
    goto LABEL_28;
  }

  sub_26A4D6FD8();
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  v37 = xmmword_2803B00A0;
  v38 = byte_2803B00B0;
  v39 = qword_2803B00B8;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v96);
  sub_26A4D6FD8();
  memcpy(&v74[2], v96, 0xBFuLL);
  *(&v74[19] + 1) = 0;
  v74[0] = v37;
  LOBYTE(v74[1]) = v38;
  *&v74[19] = sub_26A80A810;
  *(&v74[1] + 1) = v39;
  memcpy(v79, v74, sizeof(v79));
  sub_26A4EF6C0(v37, *(&v37 + 1), v38);

  v35 = v57;
  v34 = v59;
LABEL_32:
  v40 = v54;
  v41 = *&v54[v34[14]];
  sub_26A6BFF2C(v7);
  v54 = v41;
  (v41)(v73, v7);
  v42 = v60;
  v60(v7, v35);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v97);
  sub_26A4D6FD8();
  memcpy(&v74[16], v97, 0xBFuLL);
  v75 = sub_26A80A810;
  v76 = 0;
  memcpy(v74, v73, 0xFAuLL);
  sub_26A6BFF2C(v7);
  v58(v71, v7);
  v42(v7, v35);
  memcpy(v77, v71, sizeof(v77));
  memcpy(v78, v71, 0xFAuLL);
  if (sub_26A505008(v78) == 1)
  {
    sub_26A6BFF2C(v7);
    v52(v63, v7);
    v42(v7, v35);
    memcpy(v65, v63, 0xFAuLL);
    memcpy(v67, v63, 0xFAuLL);
    if (sub_26A505008(v67) == 1)
    {
      sub_26A6BFF2C(v7);
      (v54)(v68, v7);
      v42(v7, v35);
      memcpy(v72, v68, 0xFAuLL);
      memcpy(v61, v68, 0xFAuLL);
      if (sub_26A505008(v61) == 1)
      {
        v43 = v59;
LABEL_37:
        bzero(v72, 0x140uLL);
        goto LABEL_41;
      }
    }
  }

  sub_26A4D6FD8();
  v43 = v59;
  v44 = *&v40[v59[16]];
  sub_26A6BFF2C(v7);
  v44(v71, v7);
  v60(v7, v35);
  memcpy(v65, v71, 0xFAuLL);
  memcpy(v67, v71, 0xFAuLL);
  if (sub_26A505008(v67) == 1)
  {
    goto LABEL_37;
  }

  sub_26A4D6FD8();
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  v46 = *(&xmmword_2803B00A0 + 1);
  v45 = xmmword_2803B00A0;
  v47 = byte_2803B00B0;
  v48 = qword_2803B00B8;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v98);
  sub_26A4D6FD8();
  memcpy(&v71[4], v98, 0xBFuLL);
  v71[39] = 0;
  v71[0] = v45;
  v71[1] = v46;
  LOBYTE(v71[2]) = v47;
  v71[38] = sub_26A80A810;
  v71[3] = v48;
  memcpy(v72, v71, sizeof(v72));
  sub_26A4EF6C0(v45, v46, v47);

  v35 = v57;
  v43 = v59;
LABEL_41:
  v49 = *&v40[v43[16]];
  sub_26A6BFF2C(v7);
  v49(v70, v7);
  v60(v7, v35);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v99);
  sub_26A4D6FD8();
  memcpy(&v71[32], v99, 0xBFuLL);
  v71[66] = sub_26A80A810;
  v71[67] = 0;
  memcpy(v71, v70, 0xFAuLL);
  sub_26A4D7E54();
  v69[0] = v68;
  sub_26A4D7E54();
  v69[1] = v67;
  sub_26A4D7E54();
  v69[2] = &v66;
  sub_26A4D7E54();
  v69[3] = v65;
  sub_26A4D7E54();
  v69[4] = &v64;
  sub_26A4D7E54();
  v69[5] = v63;
  sub_26A4D7E54();
  v69[6] = &v62;
  sub_26A4D7E54();
  v69[7] = v61;
  sub_26A5946C8(v69);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

void sub_26A6C6464()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v9)
  {
    *(inited + 40) = v9;
    *(inited + 56) = v10;
    *(inited + 72) = v11;
  }

  else
  {
    sub_26A4F20CC(v12, inited + 40);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  sub_26A8516A8();
  sub_26A850498();
  v12[0] = &type metadata for TextVibrancyShapeStyle;
  v12[1] = sub_26A573830();
  sub_26A80D690();
}

uint64_t sub_26A6C6724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26A8570F0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v7 = qword_281588998;
  *(v6 + 32) = qword_281588998;
  v8 = byte_2815889A0;
  *(v6 + 40) = byte_2815889A0;
  *(v6 + 48) = 1;
  *(v6 + 56) = 3;
  sub_26A4E324C(v7, v8);
  sub_26A621A9C(v6);
  *(inited + 32) = v9;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570D0;
  v11 = qword_281588998;
  *(v10 + 32) = qword_281588998;
  v12 = byte_2815889A0;
  *(v10 + 40) = byte_2815889A0;
  sub_26A4E324C(v11, v12);

  sub_26A58787C(v13);
  sub_26A5075B0();

  if (v16)
  {
    *(inited + 40) = v16;
    *(inited + 56) = v17;
    *(inited + 72) = v18;
  }

  else
  {
    sub_26A4F20CC(v19, inited + 40);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  v14 = sub_26A8516A8();
  v19[0] = 0u;
  sub_26A66DDEC(v14, a4);

  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

void sub_26A6C6A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A864670;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A8502F8();
  v6 = sub_26A84FEA8();
  v7 = MEMORY[0x277CE04F8];
  v8 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A857110;
  v10 = qword_281588968;
  *(v9 + 32) = qword_281588968;
  v11 = byte_281588970;
  *(v9 + 40) = byte_281588970;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 64) = 1;
  *(v9 + 72) = 10;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  sub_26A8502F8();
  sub_26A8503C8();
  v13 = sub_26A850428();

  v14 = sub_26A84FEA8();
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_26A857110;
  v16 = qword_281588968;
  *(v15 + 32) = qword_281588968;
  v17 = byte_281588970;
  *(v15 + 40) = byte_281588970;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 64) = 1;
  *(v15 + 72) = 4;
  sub_26A4E324C(v16, v17);
  sub_26A621A9C(v15);
  *(inited + 144) = v18;
  v19 = sub_26A850408();
  v20 = sub_26A84FEA8();
  *(inited + 184) = v7;
  *(inited + 192) = v8;
  *(inited + 160) = v20;
  *(inited + 152) = v19;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_26A8570F0;
  v22 = qword_281588968;
  *(v21 + 32) = qword_281588968;
  v23 = byte_281588970;
  *(v21 + 40) = byte_281588970;
  *(v21 + 48) = 3;
  *(v21 + 56) = 1;
  sub_26A4E324C(v22, v23);
  sub_26A621A9C(v21);
  *(inited + 200) = v24;
  sub_26A8502F8();
  sub_26A8503C8();
  v25 = sub_26A850428();

  v26 = sub_26A84FEA8();
  *(inited + 240) = v7;
  *(inited + 248) = v8;
  *(inited + 216) = v26;
  *(inited + 208) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  sub_26A8516A8();
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_26A8570F0;
  v28 = qword_281588968;
  *(v27 + 32) = qword_281588968;
  v29 = byte_281588970;
  *(v27 + 40) = byte_281588970;
  *(v27 + 48) = 1;
  *(v27 + 56) = 3;
  sub_26A4E324C(v28, v29);

  sub_26A58787C(v30);
  sub_26A5075B0();

  if (v31)
  {
    v34[0] = v31;
    v34[1] = v32;
    v34[2] = v33;
  }

  else
  {
    sub_26A4F20CC(&v35, v34);
  }

  sub_26A4D6FD8();
  sub_26A80D690();
}

void sub_26A6C6E14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850458();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  v6 = sub_26A573830();
  *(inited + 80) = v6;
  *(inited + 48) = 1;
  *(inited + 40) = v5;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26A857110;
  v8 = qword_281588968;
  *(v7 + 32) = qword_281588968;
  v9 = byte_281588970;
  *(v7 + 40) = byte_281588970;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *(v7 + 64) = 1;
  *(v7 + 72) = 4;
  sub_26A4E324C(v8, v9);
  sub_26A621A9C(v7);
  *(inited + 88) = v10;
  v11 = sub_26A850418();
  v12 = sub_26A84FEC8();
  v13 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v13;
  *(inited + 104) = v12;
  *(inited + 96) = v11;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_26A8570F0;
  v15 = qword_281588968;
  *(v14 + 32) = qword_281588968;
  v16 = byte_281588970;
  *(v14 + 40) = byte_281588970;
  *(v14 + 48) = 3;
  *(v14 + 56) = 1;
  sub_26A4E324C(v15, v16);
  sub_26A621A9C(v14);
  *(inited + 144) = v17;
  v18 = sub_26A8502D8();
  *(inited + 184) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 192) = v6;
  *(inited + 160) = 1;
  *(inited + 152) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  sub_26A8516A8();
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_26A8570F0;
  v20 = qword_281588968;
  *(v19 + 32) = qword_281588968;
  v21 = byte_281588970;
  *(v19 + 40) = byte_281588970;
  *(v19 + 48) = 1;
  *(v19 + 56) = 3;
  sub_26A4E324C(v20, v21);

  sub_26A58787C(v22);
  sub_26A5075B0();

  if (v23)
  {
    v26[0] = v23;
    v26[1] = v24;
    v26[2] = v25;
  }

  else
  {
    sub_26A4F20CC(&v27, v26);
  }

  sub_26A4D6FD8();
  sub_26A80D690();
}

void SimpleItemRichSearchResult.view.getter()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v45 = v3;
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v44 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v11 = sub_26A84DC28();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA900);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA908);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v27);
  v48 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  (*(v13 + 16))(v17, v1, v11, v30);
  v47 = v22;
  sub_26A6C0858();
  v50 = v1;
  v31 = v46;
  sub_26A84DC08();
  sub_26A4D7EA8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v31) == 1)
  {
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v33 = &v26[*(v23 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v35 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
    *v33 = KeyPath;
  }

  else
  {
    v36 = v44;
    v37 = *(v45 + 32);
    v37(v44, v9, v31);
    v38 = swift_getKeyPath();
    v39 = &v26[*(v23 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v37(v39 + v40, v36, v31);
    v41 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v41);
    *v39 = v38;
  }

  sub_26A6C760C(v47, v26);
  v42 = sub_26A84DBC8();
  sub_26A4DE2CC(v42);

  sub_26A4D6FD8();
  sub_26A84DBD8();

  sub_26A4D7E54();
  sub_26A6C7670();
  sub_26A851248();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6C760C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleItemRichSearchResultView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6C7670()
{
  result = qword_2803B3B70;
  if (!qword_2803B3B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA908);
    sub_26A6C7728();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3B70);
  }

  return result;
}

unint64_t sub_26A6C7728()
{
  result = qword_2803B3B78;
  if (!qword_2803B3B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8F8);
    sub_26A6C77B4();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3B78);
  }

  return result;
}

unint64_t sub_26A6C77B4()
{
  result = qword_2803B3B80;
  if (!qword_2803B3B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA900);
    sub_26A6C7910();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3B80);
  }

  return result;
}

unint64_t sub_26A6C78B8(uint64_t a1)
{
  result = sub_26A6C7910();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A6C7910()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void sub_26A6C797C()
{
  sub_26A6C7C30(319, &qword_2803AE500, type metadata accessor for SimpleItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A6C7C94(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v1 <= 0x3F)
    {
      sub_26A6C7C30(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A6C7C30(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A6C7C30(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26A6C7C30(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_26A4D27F4();
              if (v6 <= 0x3F)
              {
                sub_26A6C7C94(319, &qword_2803AFE60, &_s7ProcessON, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_26A5046B4();
                  if (v8 <= 0x3F)
                  {
                    sub_26A6C7C94(319, &qword_2803AB750, &type metadata for AnyPrivacySensitiveView, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_26A6C7C30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26A6C7C94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A6C7CE4()
{
  result = qword_2803B3BA8;
  if (!qword_2803B3BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3B68);
    sub_26A6C7D70();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3BA8);
  }

  return result;
}

unint64_t sub_26A6C7D70()
{
  result = qword_2803B3BB0;
  if (!qword_2803B3BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3B60);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3BB0);
  }

  return result;
}

uint64_t sub_26A6C7E54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84DC28();
  OUTLINED_FUNCTION_79(v2);

  return sub_26A6C1010(a1);
}

uint64_t objectdestroy_48Tm()
{
  sub_26A84DC28();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A6C8084(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = sub_26A84DC28();
  OUTLINED_FUNCTION_79(v7);
  return a3(a1, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a2);
}

uint64_t sub_26A6C812C(uint64_t a1)
{
  v2 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A6C81A8(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  __swift_allocate_value_buffer(v5, a3);
  v6 = __swift_project_value_buffer(v5, a3);
  v7 = *MEMORY[0x277D62B20];
  sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  result = (*(v8 + 104))(v6, v7);
  *(v6 + *(v5 + 20)) = 0x4024000000000000;
  *(v6 + *(v5 + 24)) = a1;
  return result;
}

uint64_t sub_26A6C8254(uint64_t a1)
{
  if (qword_2803A8D60 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, qword_2803B3B30);
  return sub_26A6C84C0();
}

uint64_t sub_26A6C82D4(uint64_t a1)
{
  if (qword_2803A8D68 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, qword_2803B3B48);
  return sub_26A6C84C0();
}

unint64_t sub_26A6C8364()
{
  result = qword_2803B3C28;
  if (!qword_2803B3C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3C20);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3C28);
  }

  return result;
}

uint64_t sub_26A6C8444()
{
  result = sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A6C84C0()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

__n128 OUTLINED_FUNCTION_0_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __n128 a20, __int128 a21, uint64_t a22)
{
  result = a20;
  *(a1 + 16) = a20;
  *(a1 + 32) = a21;
  *(a1 + 48) = a22;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_30@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_14_31@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_20_23()
{

  return swift_allocObject();
}

uint64_t DisambiguationTitle.init(text1:thumbnail:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  sub_26A4EA070(a2, v14, &qword_2803A91B8);
  v10 = v15;
  if (v15)
  {
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v12 = (*(v11 + 8))(v10, v11);
    sub_26A4E2544(a2, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_26A4E2544(a2, &qword_2803A91B8);
    sub_26A4E2544(v14, &qword_2803A91B8);
    v12 = 0;
  }

  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = v9;
  *(a3 + 24) = v12;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A6C8718@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a5;
  v42 = sub_26A84B1D8();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v41 - v13);
  MEMORY[0x28223BE20](v15);
  v43 = &v41 - v16;
  v17 = sub_26A84F988();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
LABEL_3:
      v21 = v47;
      if (qword_2803A9068 != -1)
      {
        swift_once();
      }

      v22 = &unk_2803D29E0;
      goto LABEL_10;
    }
  }

  else
  {

    sub_26A851EA8();
    v23 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(a1, 0);
    (*(v18 + 8))(v20, v17);
    if (v49[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v21 = v47;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  v22 = &unk_281588848;
LABEL_10:
  v24 = v46;
  sub_26A4EA070(v22, v49, &qword_2803AA880);
  sub_26A4EA070(v49, &v48[25], &qword_2803AA880);
  sub_26A6AEE74(v50);
  sub_26A4E2544(v49, &qword_2803AA880);
  memcpy(&v48[1], v50, 0xBFuLL);
  v48[35] = sub_26A80A810;
  v48[36] = 0;
  v48[0] = v24;
  memcpy(v49, v48, sizeof(v49));
  if (v21)
  {
    v25 = v7;
    v26 = *(v7 + 104);
    v27 = v42;
    v26(v9, *MEMORY[0x277D62B30], v42);
    KeyPath = swift_getKeyPath();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v30 = (v14 + *(v29 + 36));
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v25 + 32))(v30 + v31, v9, v27);
    v32 = v47;
    __swift_storeEnumTagSinglePayload(v30 + v31, 0, 1, v27);
    *v30 = KeyPath;
    *v14 = v32;
    v33 = v14;
    v34 = 0;
    v35 = v29;
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v33 = v14;
    v34 = 1;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
  v36 = v43;
  sub_26A6C8DAC(v14, v43);
  sub_26A4EA070(v49, v48, &qword_2803A99A0);
  v37 = v44;
  sub_26A4EA070(v36, v44, &qword_2803AAF98);
  v38 = v45;
  sub_26A4EA070(v48, v45, &qword_2803A99A0);
  *(v38 + 296) = 0;
  *(v38 + 304) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CB0);
  sub_26A4EA070(v37, v38 + *(v39 + 64), &qword_2803AAF98);

  sub_26A4E2544(v36, &qword_2803AAF98);
  sub_26A4E2544(v49, &qword_2803A99A0);
  sub_26A4E2544(v37, &qword_2803AAF98);
  return sub_26A4E2544(v48, &qword_2803A99A0);
}

uint64_t DisambiguationTitle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = sub_26A84FA78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C98);
  return sub_26A6C8718(v3, v4, v6, v5, a1 + *(v7 + 44));
}

unint64_t sub_26A6C8D48()
{
  result = qword_2803B3CA0;
  if (!qword_2803B3CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CA0);
  }

  return result;
}

uint64_t sub_26A6C8DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6C8E1C()
{
  v0 = sub_26A8524B8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26A6C8E68(char a1)
{
  if (!a1)
  {
    return 0x6E6F74747542;
  }

  if (a1 == 1)
  {
    return 1954047316;
  }

  return 0x6567616D49;
}

uint64_t sub_26A6C8ED4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A6C8E1C();
  *a1 = result;
  return result;
}

uint64_t sub_26A6C8F04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A6C8E68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26A6C8F30(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v7 = sub_26A84F988();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  if (a2)
  {
    if (a2 == 1)
    {
      v12 = 1954047316;
    }

    else
    {
      v12 = 0x6567616D49;
    }

    if (a2 == 1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    v12 = 0x6E6F74747542;
  }

  MEMORY[0x26D663B00](v12, v13, v9);

  MEMORY[0x26D663B00](95, 0xE100000000000000);
  if ((a4 & 1) == 0)
  {

    sub_26A851EA8();
    v14 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a3, 0);
    (*(v8 + 8))(v11, v7);
    a3 = v18;
  }

  v18 = a3;
  v15 = sub_26A852568();
  MEMORY[0x26D663B00](v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CC0);
  sub_26A6C9320();
  sub_26A850A68();
}

uint64_t sub_26A6C9194()
{
  sub_26A6C920C();
  sub_26A84F998();
  return v1;
}

unint64_t sub_26A6C920C()
{
  result = qword_2803B3CB8;
  if (!qword_2803B3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CB8);
  }

  return result;
}

uint64_t sub_26A6C9270(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A6C92B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_26A6C9320()
{
  result = qword_2803B3CC8;
  if (!qword_2803B3CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ElementAccessibilityIdModifier.ElementType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A6C9460()
{
  result = qword_2803B3CD0;
  if (!qword_2803B3CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3CD8);
    sub_26A6C9320();
    sub_26A6C94EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CD0);
  }

  return result;
}

unint64_t sub_26A6C94EC()
{
  result = qword_2803ABCA0;
  if (!qword_2803ABCA0)
  {
    sub_26A850128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABCA0);
  }

  return result;
}

unint64_t sub_26A6C9548()
{
  result = qword_2803B3CE0;
  if (!qword_2803B3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CE0);
  }

  return result;
}

uint64_t TableRowWatchView.init(row:header:columns:)@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
  OUTLINED_FUNCTION_2_5(v5);
  v28 = v6;
  v27 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v26[1] = v9;
  OUTLINED_FUNCTION_25_2();
  v10 = sub_26A84E4B8();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  v17 = type metadata accessor for TableRowWatchView();
  v18 = v17[6];
  *(a3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v19 = (a3 + v17[10]);
  v30 = sub_26A8516A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05A8);
  sub_26A851048();
  v20 = v32;
  *v19 = v31;
  v19[1] = v20;
  (*(v12 + 16))(a3 + v17[8], a1, v10);
  sub_26A4D7E54();
  *(a3 + v17[9]) = v29;
  v21 = *(v12 + 32);
  v21(v16, a1, v10);
  sub_26A4D7EA8();
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = (v27 + ((v14 + *(v28 + 80) + v22) & ~*(v28 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v21((v24 + v22), v16, v10);
  sub_26A4D7EA8();
  *(v24 + v23) = v29;
  *a3 = sub_26A5FF548;
  *(a3 + 8) = v24;
  *(a3 + 16) = 0;
}

uint64_t type metadata accessor for TableRowWatchView()
{
  result = qword_2803B3D08;
  if (!qword_2803B3D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6C98F8()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t sub_26A6C9A28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for TableRowWatchView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A6C9C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_26A84E4B8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10, a1);
  sub_26A4D7E54();
  type metadata accessor for TableRowWatchState(0);
  swift_allocObject();

  return sub_26A5CBFB8(v12, v8, a3);
}

uint64_t TableRowWatchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v91 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v90 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v89 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v93 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v94 = v88 - v11;
  OUTLINED_FUNCTION_25_2();
  v12 = type metadata accessor for VisualElementView();
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v97 = v15 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CE8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_82();
  v96 = v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CF0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_82();
  v98 = v19;
  OUTLINED_FUNCTION_25_2();
  v20 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v88[0] = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v27 = OUTLINED_FUNCTION_79(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v88[3] = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = v88 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  v34 = OUTLINED_FUNCTION_79(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v35);
  v37 = v88 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v39 = OUTLINED_FUNCTION_79(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_0();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = v88 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A10);
  OUTLINED_FUNCTION_79(v46);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_82();
  v100 = v48;
  OUTLINED_FUNCTION_25_2();
  v88[2] = *(type metadata accessor for TableRowWatchView() + 32);
  sub_26A84E478();
  v102 = 0u;
  v103 = 0u;
  v104 = 1;
  v88[1] = sub_26A6C98F8();
  sub_26A6C9A28(v37);
  v49 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v49);
  v101 = v1;
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v42, 1, v20) == 1)
  {
    sub_26A4DBD10(v42, &qword_2803B3800);
    v50 = type metadata accessor for ActionType();
    v51 = v32;
    v52 = 1;
  }

  else
  {
    v53 = *(v88[0] + 32);
    v53(v25, v42, v20);
    v53(v32, v25, v20);
    v54 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    v51 = v32;
    v52 = 0;
    v50 = v54;
  }

  __swift_storeEnumTagSinglePayload(v51, v52, 1, v50);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4CCA70();
  sub_26A4DBD10(v32, &qword_2803A91C8);
  sub_26A4DBD10(v37, &qword_2803A91C0);
  sub_26A4DBD10(v45, &qword_2803B3800);
  sub_26A84E438();
  v55 = sub_26A6C98F8();
  v56 = v89;
  VRXIdiom.idiom.getter(v55, v89);
  v57 = v93;
  sub_26A851AB8();

  (*(v90 + 8))(v56, v91);
  v58 = sub_26A84BA88();
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
  {
    OUTLINED_FUNCTION_4_11();
    v60 = v94;
    (*(v59 + 104))(v94);
    if (__swift_getEnumTagSinglePayload(v57, 1, v58) != 1)
    {
      sub_26A4DBD10(v57, &qword_2803AD160);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    v60 = v94;
    (*(v61 + 32))(v94, v57, v58);
  }

  __swift_storeEnumTagSinglePayload(v60, 0, 1, v58);
  sub_26A4D7EA8();
  v62 = (v96 + *(v92 + 36));
  v63 = *(sub_26A84F5F8() + 20);
  v64 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_46();
  (*(v65 + 104))(&v62[v63], v64);
  __asm { FMOV            V0.2D, #15.0 }

  *v62 = _Q0;
  *&v62[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
  sub_26A6CC1C0();
  LOBYTE(v64) = sub_26A850238();
  sub_26A84ED48();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v98;
  sub_26A4D7EA8();
  v80 = v79 + *(v95 + 36);
  *v80 = v64;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  v81 = sub_26A851448();
  v83 = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CF8);
  v85 = v99 + *(v84 + 36);
  sub_26A4D7EA8();
  v86 = (v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D00) + 36));
  *v86 = v81;
  v86[1] = v83;
  return sub_26A4D7EA8();
}

uint64_t sub_26A6CA660@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26A84FA78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D40);
  return sub_26A6CA6DC(a1 + *(v2 + 44));
}

uint64_t sub_26A6CA6DC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  *v7 = sub_26A84FBF8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D50);
  sub_26A6CA82C(&v7[*(v8 + 44)]);
  sub_26A4D7E54();
  sub_26A4D7E54();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D58) + 48);
  *v9 = 0;
  *(v9 + 8) = 1;
  sub_26A4DBD10(v7, &qword_2803B3D48);
  return sub_26A4DBD10(v4, &qword_2803B3D48);
}

uint64_t sub_26A6CA82C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D60);
  MEMORY[0x28223BE20](v37);
  v2 = &v25 - v1;
  v3 = type metadata accessor for TableRowWatchCellViewModel();
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TableRowWatchView();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D68);
  MEMORY[0x28223BE20](v31);
  v29 = (&v25 - v7);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D70);
  MEMORY[0x28223BE20](v33);
  v35 = &v25 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D78);
  MEMORY[0x28223BE20](v30);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D80);
  MEMORY[0x28223BE20](v34);
  v32 = &v25 - v9;
  v10 = type metadata accessor for TableRowWatchState.Layout(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TableRowWatchState(0);
  sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState);
  sub_26A84EEF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v15 = sub_26A84FBF8();
      v16 = v29;
      *v29 = v15;
      v16[1] = 0x4020000000000000;
      *(v16 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DA8);
      v38 = v14;
      sub_26A6CC618();
      swift_allocObject();
      sub_26A6CC1C0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF718);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DB0);
      sub_26A4DBCC8(&qword_2803B3DB8, &qword_2803AF718);
      sub_26A6CC218();
      sub_26A6CC3B4();
      sub_26A851308();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A4DBCC8(&qword_2803B3D98, &qword_2803B3D68);
      v17 = v32;
      sub_26A84FDF8();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A6CC0AC();
      sub_26A4DBCC8(&qword_2803B3DA0, &qword_2803B3D60);
      sub_26A84FDF8();
      sub_26A4DBD10(v17, &qword_2803B3D80);
      v18 = v16;
      v19 = &qword_2803B3D68;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_26A4DBCC8(&qword_2803B3D98, &qword_2803B3D68);
      v24 = v32;
      sub_26A84FDF8();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A6CC0AC();
      sub_26A4DBCC8(&qword_2803B3DA0, &qword_2803B3D60);
      sub_26A84FDF8();
      v18 = v24;
      v19 = &qword_2803B3D80;
    }

    return sub_26A4DBD10(v18, v19);
  }

  else
  {
    v20 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF740) + 48));
    v21 = v28;
    sub_26A6CC1C0();
    *v2 = sub_26A84FA58();
    *(v2 + 1) = 0;
    v2[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D88);
    sub_26A6CB08C(v20, &v2[*(v22 + 44)]);

    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A6CC0AC();
    sub_26A4DBCC8(&qword_2803B3DA0, &qword_2803B3D60);
    sub_26A84FDF8();
    sub_26A4DBD10(v2, &qword_2803B3D60);
    return sub_26A6CC164(v21);
  }
}

uint64_t sub_26A6CB08C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v25 = a1;
  v28 = a2;
  v2 = type metadata accessor for TableRowWatchView();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D68);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E08);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_26A6CC618();
  v14 = type metadata accessor for TableRowCellWatchView();
  v15 = &v13[v14[5]];
  type metadata accessor for TableRowWatchState(0);
  sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState);
  *v15 = sub_26A84F678();
  v15[1] = v16;
  v17 = v14[6];
  *&v13[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  *&v13[v14[7]] = 0x4020000000000000;
  v18 = sub_26A84EEF8();
  v19 = sub_26A84EB78();
  v20 = &v13[*(v9 + 44)];
  *v20 = v19;
  v20[1] = v18;
  *v7 = sub_26A84FBF8();
  *(v7 + 1) = 0x4020000000000000;
  v7[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DA8);
  v29 = v25;
  sub_26A6CC618();
  swift_allocObject();
  sub_26A6CC1C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DB0);
  sub_26A4DBCC8(&qword_2803B3DB8, &qword_2803AF718);
  sub_26A6CC218();
  sub_26A6CC3B4();
  sub_26A851308();
  v21 = v26;
  sub_26A4D7E54();
  v22 = v27;
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E48);
  sub_26A4D7E54();
  sub_26A4DBD10(v7, &qword_2803B3D68);
  sub_26A4DBD10(v13, &qword_2803B3E08);
  sub_26A4DBD10(v22, &qword_2803B3D68);
  return sub_26A4DBD10(v21, &qword_2803B3E08);
}

uint64_t sub_26A6CB55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TableRowWatchView();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(a1 + 8);
  *a2 = sub_26A84FA58();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DF0);
  sub_26A6CB74C(v5, (a2 + *(v6 + 44)));
  sub_26A6CC618();
  v7 = swift_allocObject();
  sub_26A6CC1C0();
  v8 = sub_26A851448();
  v10 = v9;
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DD0) + 36));
  *v11 = sub_26A8027E0;
  v11[1] = 0;
  v11[2] = v8;
  v11[3] = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26A6CC408;
  *(v12 + 24) = v7;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DB0);
  v14 = (a2 + *(result + 36));
  *v14 = sub_26A52E998;
  v14[1] = v12;
  return result;
}

uint64_t sub_26A6CB74C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = type metadata accessor for TableRowWatchView();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v16[1] = a1;
  sub_26A6CC618();
  swift_allocObject();
  sub_26A6CC1C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E08);
  sub_26A4DBCC8(&qword_2803B3E10, &qword_2803B3E00);
  sub_26A6CC4E8();
  sub_26A6CC5D0(&qword_2803B3E38, type metadata accessor for TableRowWatchCellViewModel);
  sub_26A851308();
  v12 = *(v6 + 16);
  v12(v8, v11, v5);
  v12(a2, v8, v5);
  v13 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E40) + 48)];
  *v13 = 0;
  v13[8] = 0;
  v14 = *(v6 + 8);
  v14(v11, v5);
  return (v14)(v8, v5);
}

uint64_t sub_26A6CBA8C@<X0>(uint64_t a1@<X8>)
{
  sub_26A6CC618();
  v2 = type metadata accessor for TableRowCellWatchView();
  v3 = (a1 + v2[5]);
  type metadata accessor for TableRowWatchState(0);
  sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState);
  *v3 = sub_26A84F678();
  v3[1] = v4;
  v5 = v2[6];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  *(a1 + v2[7]) = 0x4020000000000000;
  v6 = sub_26A84EEF8();
  v7 = sub_26A84EB78();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E08);
  v9 = (a1 + *(result + 36));
  *v9 = v7;
  v9[1] = v6;
  return result;
}

uint64_t sub_26A6CBBD4(double a1)
{
  type metadata accessor for TableRowWatchState(0);
  sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState);
  *(sub_26A84EEF8() + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_gridWidth) = a1;
}

void sub_26A6CBCB0()
{
  sub_26A6CBE6C();
  if (v0 <= 0x3F)
  {
    sub_26A6CBF00(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A6CBF00(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A6CBF00(319, &qword_2803AF6F8, MEMORY[0x277D628A0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_26A84E4B8();
          if (v4 <= 0x3F)
          {
            sub_26A6CBF00(319, &qword_2803B0528, MEMORY[0x277D63680], MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_26A6CBF64();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26A6CBE6C()
{
  if (!qword_2803B3D18)
  {
    type metadata accessor for TableRowWatchState(255);
    sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState);
    v0 = sub_26A84EF08();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B3D18);
    }
  }
}

void sub_26A6CBF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26A6CBF64()
{
  if (!qword_2803B3D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B05A8);
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B3D20);
    }
  }
}

unint64_t sub_26A6CBFC8()
{
  result = qword_2803B3D28;
  if (!qword_2803B3D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3CF8);
    sub_26A4DBCC8(&qword_2803B3D30, &qword_2803A9A10);
    sub_26A4DBCC8(&qword_2803B3D38, &qword_2803B3D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3D28);
  }

  return result;
}

unint64_t sub_26A6CC0AC()
{
  result = qword_2803B3D90;
  if (!qword_2803B3D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3D80);
    sub_26A4DBCC8(&qword_2803B3D98, &qword_2803B3D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3D90);
  }

  return result;
}

uint64_t sub_26A6CC164(uint64_t a1)
{
  v2 = type metadata accessor for TableRowWatchCellViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A6CC1C0()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A6CC218()
{
  result = qword_2803B3DC0;
  if (!qword_2803B3DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3DB0);
    sub_26A6CC2D0();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3DC0);
  }

  return result;
}

unint64_t sub_26A6CC2D0()
{
  result = qword_2803B3DC8;
  if (!qword_2803B3DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3DD0);
    sub_26A4DBCC8(&qword_2803B3DD8, &qword_2803B3DE0);
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3DC8);
  }

  return result;
}

unint64_t sub_26A6CC3B4()
{
  result = qword_2803B3DE8;
  if (!qword_2803B3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3DE8);
  }

  return result;
}

uint64_t sub_26A6CC408(double a1)
{
  v2 = type metadata accessor for TableRowWatchView();
  OUTLINED_FUNCTION_79(v2);

  return sub_26A6CBBD4(a1);
}

uint64_t sub_26A6CC47C()
{
  v0 = type metadata accessor for TableRowWatchView();
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_9_43();

  return sub_26A6CBA8C(v1);
}

unint64_t sub_26A6CC4E8()
{
  result = qword_2803B3E18;
  if (!qword_2803B3E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3E08);
    sub_26A6CC5D0(&qword_2803B3E20, type metadata accessor for TableRowCellWatchView);
    sub_26A4DBCC8(&qword_2803B3E28, &qword_2803B3E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3E18);
  }

  return result;
}

uint64_t sub_26A6CC5D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A6CC618()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for TableRowWatchView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A492280();
  sub_26A4D82E8(*(v2 + 24), *(v2 + 32));
  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[7];
  v6 = sub_26A84AEB8();
  if (!__swift_getEnumTagSinglePayload(v2 + v5, 1, v6))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v7 + 8))(v2 + v5, v6);
  }

  v8 = v1[8];
  sub_26A84E4B8();
  OUTLINED_FUNCTION_46();
  (*(v9 + 8))(v2 + v8);

  return swift_deallocObject();
}

uint64_t sub_26A6CC844()
{
  v0 = type metadata accessor for TableRowWatchView();
  OUTLINED_FUNCTION_79(v0);
  v1 = OUTLINED_FUNCTION_9_43();

  return sub_26A6CB55C(v1, v2);
}

double sub_26A6CC8CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A6CC940()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

uint64_t sub_26A6CC9B8()
{
  v1 = OBJC_IVAR____TtC9SnippetUI24TableRowScaleToFitHeight__maxHeight;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for TableRowScaleToFitHeight()
{
  result = qword_2803B3E58;
  if (!qword_2803B3E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6CCAB4()
{
  sub_26A532FDC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26A6CCB44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtC9SnippetUI24TableRowScaleToFitHeight__maxHeight;
  v7[1] = 0x4059000000000000;
  sub_26A84EBD8();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_26A6CCC3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TableRowScaleToFitHeight();
  result = sub_26A84EB88();
  *a1 = result;
  return result;
}

void View.buttonRole(_:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v13[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3E68);
  v5 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  v11 = *v3;
  swift_getKeyPath();
  v14 = v11;
  sub_26A8509A8();

  v14 = v11;
  OUTLINED_FUNCTION_3_11();
  v12 = sub_26A549F4C();
  v13[1] = v1;
  v13[2] = v12;
  swift_getWitnessTable();
  sub_26A6D0F18();
  sub_26A850BE8();
  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6CCE2C()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A6CCE0C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A6CCE90@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1;
  *(a2 + 33) = a1;
  *(a2 + 34) = 0;
  OUTLINED_FUNCTION_4_56();
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  v5 = type metadata accessor for RFButtonStyle();
  v6 = v5[9];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_18_22();
  v7 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v7);
  v8 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v8);
  v9 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v9);
  v10 = swift_getKeyPath();
  OUTLINED_FUNCTION_5_55(v10);
  v11 = swift_getKeyPath();
  OUTLINED_FUNCTION_13_31(v11);
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v12);
  v13 = v5[18];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_27_13();
  v14 = swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_15_5(v14);
  v23 = v5[20];
  if (qword_2803A8AE8 != -1)
  {
    v15 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_25_20(v15, v16, v17, v18, v19, v20, v21, v22, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v55[16], v55[17], v55[18], v55[19], v55[20], v55[21], v55[22], v55[23], v55[24], v55[25], v56);
  OUTLINED_FUNCTION_24_21();
  sub_26A4EF6D0();
  v24 = sub_26A6AEE74(v55);
  OUTLINED_FUNCTION_23_18(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0]);
  memcpy(__dst, (a2 + v23 + 400), sizeof(__dst));
  OUTLINED_FUNCTION_22_26();
  return sub_26A54DFFC(__dst, &v33);
}

uint64_t sub_26A6CD0B8()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A6CD098();
  *v0 = result;
  return result;
}

uint64_t sub_26A6CD0E0()
{

  OUTLINED_FUNCTION_16_22();
  return sub_26A6CD1E0(v0, v1);
}

uint64_t sub_26A6CD138(void (*a1)(void))
{
  a1();
  sub_26A84F998();
  return v2;
}

uint64_t sub_26A6CD180()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A6CD118();
  *v0 = result;
  return result;
}

uint64_t sub_26A6CD1A8()
{

  OUTLINED_FUNCTION_15_26();
  return sub_26A6CD1E0(v0, v1);
}

uint64_t static PrimitiveButtonStyle<>.rfButton(margin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 33) = 512;
  OUTLINED_FUNCTION_4_56();
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  v6 = type metadata accessor for RFButtonStyle();
  v7 = v6[9];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_18_22();
  v8 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v8);
  v9 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v9);
  v10 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v10);
  v11 = swift_getKeyPath();
  OUTLINED_FUNCTION_5_55(v11);
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_13_31(v12);
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v13);
  v14 = v6[18];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_27_13();
  v15 = swift_getKeyPath();
  v16 = OUTLINED_FUNCTION_15_5(v15);
  v24 = v6[20];
  if (qword_2803A8AE8 != -1)
  {
    v16 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_25_20(v16, v17, v18, v19, v20, v21, v22, v23, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v56[13], v56[14], v56[15], v56[16], v56[17], v56[18], v56[19], v56[20], v56[21], v56[22], v56[23], v56[24], v56[25], v57);
  OUTLINED_FUNCTION_24_21();
  sub_26A4EF6D0();
  v25 = sub_26A6AEE74(v56);
  OUTLINED_FUNCTION_23_18(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0]);
  memcpy(__dst, (a2 + v24 + 400), sizeof(__dst));
  OUTLINED_FUNCTION_22_26();
  return sub_26A54DFFC(__dst, &v34);
}

uint64_t static PrimitiveButtonStyle<>.rfButton(margin:hideIcon:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  swift_getKeyPath();
  v8 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v8;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 34) = a2;
  OUTLINED_FUNCTION_4_56();
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = 0;
  v9 = type metadata accessor for RFButtonStyle();
  v10 = v9[9];
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  OUTLINED_FUNCTION_28_9();
  v11 = a3 + v9[10];
  *v11 = v7;
  *(v11 + 8) = 0;
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v12);
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v14);
  v15 = swift_getKeyPath();
  OUTLINED_FUNCTION_5_55(v15);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_13_31(v16);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v17);
  v18 = v9[18];
  *(a3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_27_13();
  v19 = swift_getKeyPath();
  v20 = OUTLINED_FUNCTION_15_5(v19);
  v28 = v9[20];
  if (qword_2803A8AE8 != -1)
  {
    v20 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_25_20(v20, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12], v60[13], v60[14], v60[15], v60[16], v60[17], v60[18], v60[19], v60[20], v60[21], v60[22], v60[23], v60[24], v60[25], v61);
  OUTLINED_FUNCTION_24_21();
  sub_26A4EF6D0();
  v29 = sub_26A6AEE74(v60);
  OUTLINED_FUNCTION_23_18(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
  memcpy(__dst, (a3 + v28 + 400), sizeof(__dst));
  OUTLINED_FUNCTION_22_26();
  return sub_26A54DFFC(__dst, &v38);
}

uint64_t type metadata accessor for RFButtonStyle()
{
  result = qword_2803B3E80;
  if (!qword_2803B3E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6CD6AC()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 64);
  if (*(v0 + 72) != 1)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v8) = v11;
  }

  return v8 & 1;
}

uint64_t sub_26A6CD7D0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for RFButtonStyle() + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26A6CD924()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for RFButtonStyle() + 52));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26A6CDA78()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RFButtonStyle() + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A6CDBD0()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = (v0 + *(type metadata accessor for RFButtonStyle() + 60));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
    return v13;
  }

  return v9;
}

uint64_t sub_26A6CDCFC()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RFButtonStyle() + 68);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A6CDE50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for RFButtonStyle();
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t RFButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RFButtonStyle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_26A6CE194(v2, a1, &v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  sub_26A6D0F6C(v2, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  result = sub_26A6D0FD0(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 9) = v10;
  *(a2 + 16) = sub_26A6D1034;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 23;
  return result;
}

uint64_t sub_26A6CE194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 33))
  {
    if (*(a1 + 33) != 1)
    {
      sub_26A6CF2D4(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0);
      sub_26A6D1B70();
      result = sub_26A84FDF8();
      goto LABEL_7;
    }

    sub_26A6CEC24(a2);
  }

  else
  {
    sub_26A6CE300(a2);
  }

  sub_26A84FDF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0);
  sub_26A6D1B70();
  sub_26A84FDF8();

LABEL_7:
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 9) = v7;
  return result;
}

uint64_t sub_26A6CE300(uint64_t a1)
{
  v2 = v1;
  v91 = a1;
  v90 = sub_26A8501E8();
  v3 = *(v90 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RFButtonStyle();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v81 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A84F988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F00);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = &v75 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDA0);
  v86 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v83 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDA8);
  MEMORY[0x28223BE20](v16 - 8);
  v84 = &v75 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F08);
  MEMORY[0x28223BE20](v82);
  v88 = &v75 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F10);
  MEMORY[0x28223BE20](v85);
  v92 = &v75 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F18);
  MEMORY[0x28223BE20](v95);
  v94 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v93 = &v75 - v22;
  v23 = v2 + *(v6 + 52);
  v24 = *v23;
  v80 = v23;
  v25 = *(v23 + 8) == 1;
  v78 = v9;
  v77 = v10;
  v76 = v12;
  if (v25)
  {
    v98 = v24;
  }

  else
  {

    sub_26A851EA8();
    v26 = sub_26A8501F8();
    v79 = v3;
    v27 = v26;
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v24, 0);
    v3 = v79;
    (*(v10 + 8))(v12, v9);
  }

  v28 = sub_26A84ED38();
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v28);
  v29 = v81;
  sub_26A6D0F6C(v2, v81);
  v30 = v87;
  v31 = v2;
  v32 = v29;
  v33 = v90;
  v34 = v91;
  (*(v3 + 16))(v87, v91, v90);
  v35 = *(v7 + 80);
  v36 = (v35 + 16) & ~v35;
  v79 = v35 | 7;
  v37 = (v36 + v8 + *(v3 + 80)) & ~*(v3 + 80);
  v38 = swift_allocObject();
  sub_26A6D0FD0(v32, v38 + v36);
  v39 = (*(v3 + 32))(v38 + v37, v30, v33);
  MEMORY[0x28223BE20](v39);
  *(&v75 - 2) = v34;
  *(&v75 - 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F20);
  sub_26A6D1D58();
  v40 = v83;
  sub_26A8510C8();
  sub_26A6D0F6C(v31, v32);
  v41 = swift_allocObject();
  v42 = v32;
  v43 = v31;
  sub_26A6D0FD0(v42, v41 + v36);
  sub_26A57A0E0(sub_26A6D2488, v41, v84);

  (*(v86 + 8))(v40, v89);
  LOBYTE(v41) = sub_26A850278();
  sub_26A6D0158();
  sub_26A84ED48();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v88;
  sub_26A4EF020();
  v53 = &v52[*(v82 + 36)];
  *v53 = v41;
  *(v53 + 1) = v45;
  *(v53 + 2) = v47;
  *(v53 + 3) = v49;
  *(v53 + 4) = v51;
  v53[40] = 0;
  LOBYTE(v41) = sub_26A850298();
  sub_26A6D0158();
  sub_26A84ED48();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v92;
  sub_26A4EF020();
  v63 = &v62[*(v85 + 36)];
  *v63 = v41;
  *(v63 + 1) = v55;
  *(v63 + 2) = v57;
  *(v63 + 3) = v59;
  *(v63 + 4) = v61;
  v63[40] = 0;
  v64 = *v80;
  if (*(v80 + 8) == 1)
  {
    v97 = *v80;
  }

  else
  {

    sub_26A851EA8();
    v65 = sub_26A8501F8();
    sub_26A84EA78();

    v66 = v76;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v64, 0);
    (*(v77 + 8))(v66, v78);
    LOBYTE(v64) = v97;
  }

  v67 = sub_26A6CD7D0();
  v68 = sub_26A6CD924();
  v69 = *(v43 + 34);
  KeyPath = swift_getKeyPath();
  v71 = v93;
  sub_26A4EF020();
  v72 = &v71[*(v95 + 36)];
  *v72 = v64;
  *(v72 + 1) = v67;
  *(v72 + 2) = v68;
  v72[24] = v69;
  *(v72 + 4) = KeyPath;
  v72[40] = 0;
  sub_26A4EF6D0();
  sub_26A6D24F4();
  v73 = sub_26A851248();
  sub_26A54A088();
  return v73;
}

uint64_t sub_26A6CEC24(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v54 = sub_26A8501E8();
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v54);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RFButtonStyle();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A84F988();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FD0);
  v53 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v16 = &v42 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FD8);
  v55 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v52 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v42 - v19;
  v20 = v2 + *(v6 + 52);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    LOBYTE(v56) = *v20;
  }

  else
  {

    sub_26A851EA8();
    v43 = v10;
    v22 = sub_26A8501F8();
    v44 = v4;
    v23 = v22;
    v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_26A84EA78();

    v24 = v45;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v21, 0);
    (*(v46 + 8))(v24, v43);
  }

  v25 = sub_26A84ED38();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v25);
  sub_26A6D0F6C(v2, v9);
  v26 = v49;
  v27 = v51;
  v28 = v54;
  (*(v3 + 16))(v49, v51, v54);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = (v8 + *(v3 + 80) + v29) & ~*(v3 + 80);
  v31 = swift_allocObject();
  sub_26A6D0FD0(v9, v31 + v29);
  v32 = (*(v3 + 32))(v31 + v30, v26, v28);
  MEMORY[0x28223BE20](v32);
  *(&v42 - 2) = v27;
  sub_26A8501B8();
  sub_26A6D2FE4();
  sub_26A8510C8();
  KeyPath = swift_getKeyPath();
  LOWORD(v56) = 0;
  v57 = KeyPath;
  LOBYTE(v58) = 0;
  v34 = sub_26A549F4C();
  v35 = sub_26A5B72D8();
  v36 = v50;
  v37 = v48;
  sub_26A850988();
  sub_26A49035C(v57, v58);
  (*(v53 + 8))(v16, v37);
  v38 = v55;
  v39 = v47;
  (*(v55 + 16))(v52, v36, v47);
  v56 = v37;
  v57 = &type metadata for CircularSiriButtonStyle;
  v58 = v34;
  v59 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = sub_26A851248();
  (*(v38 + 8))(v36, v39);
  return v40;
}

uint64_t sub_26A6CF2D4(uint64_t a1)
{
  v50 = a1;
  v47 = sub_26A8501E8();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v3;
  v4 = type metadata accessor for RFButtonStyle();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26A84F988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F00);
  MEMORY[0x28223BE20](v11 - 8);
  v39 = &v38 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FD0);
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v14 = &v38 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FE8);
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = &v38 - v17;
  v51 = v4;
  v18 = v1 + *(v4 + 44);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    LOBYTE(v52) = *v18;
  }

  else
  {

    sub_26A851EA8();
    v38 = v7;
    v20 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v19, 0);
    (*(v8 + 8))(v10, v38);
  }

  v21 = sub_26A84ED38();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v21);
  sub_26A6D0F6C(v1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v42;
  v23 = v50;
  v24 = v47;
  (*(v2 + 16))(v42, v50, v47);
  v25 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v26 = (v5 + *(v2 + 80) + v25) & ~*(v2 + 80);
  v27 = swift_allocObject();
  sub_26A6D0FD0(v6, v27 + v25);
  v28 = (*(v2 + 32))(v27 + v26, v22, v24);
  MEMORY[0x28223BE20](v28);
  *(&v38 - 2) = v23;
  sub_26A8501B8();
  sub_26A6D2FE4();
  sub_26A8510C8();
  static PrimitiveButtonStyle<>.rfButtonCircularIconAndTitle.getter(v6);
  v29 = sub_26A549F4C();
  v30 = sub_26A6D2FE4();
  v31 = v41;
  v32 = v49;
  v33 = v51;
  sub_26A850978();
  sub_26A6D3024();
  (*(v46 + 8))(v14, v32);
  v34 = v44;
  v35 = v48;
  (*(v44 + 16))(v45, v31, v48);
  v52 = v32;
  v53 = v33;
  v54 = v29;
  v55 = v30;
  swift_getOpaqueTypeConformance2();
  v36 = sub_26A851248();
  (*(v34 + 8))(v31, v35);
  return v36;
}

uint64_t sub_26A6CF980()
{
  sub_26A6CDBD0();
  sub_26A84EB98();
}

uint64_t sub_26A6CF9C8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FC8);
  MEMORY[0x28223BE20](v50);
  v52 = &v49 - v1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F38);
  MEMORY[0x28223BE20](v51);
  v49 = &v49 - v2;
  v3 = sub_26A84F3A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F58);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F48);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  sub_26A8501C8();
  v16 = sub_26A6CDA78();
  v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F88) + 36)];
  *v17 = v16 & 1;
  v17[1] = 0;
  if (qword_2803A90A8 != -1)
  {
    swift_once();
  }

  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F78) + 36)];
  sub_26A4EF6D0();
  sub_26A6AEE74(__src);
  memcpy(v18, __src, 0xBFuLL);
  *(v18 + 34) = sub_26A80A810;
  *(v18 + 35) = 0;
  LOBYTE(v18) = sub_26A850278();
  type metadata accessor for RFButtonStyle();
  sub_26A84ED48();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F68) + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  LOBYTE(v18) = sub_26A850298();
  sub_26A84ED48();
  v28 = &v12[*(v10 + 36)];
  *v28 = v18;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_26A6CDE50(v9);
  LOBYTE(v18) = sub_26A84F388();
  v33 = *(v4 + 8);
  v33(v9, v3);
  if (v18)
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  KeyPath = swift_getKeyPath();
  sub_26A4EF020();
  v36 = &v15[*(v13 + 36)];
  *v36 = KeyPath;
  *(v36 + 1) = v34;
  v36[16] = 0;
  sub_26A6CDE50(v6);
  LOBYTE(KeyPath) = sub_26A84F388();
  v33(v6, v3);
  if (KeyPath)
  {
    v37 = sub_26A8502A8();
    sub_26A84ED48();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v49;
    sub_26A4EF6D0();
    v47 = &v46[*(v51 + 36)];
    *v47 = v37;
    *(v47 + 1) = v39;
    *(v47 + 2) = v41;
    *(v47 + 3) = v43;
    *(v47 + 4) = v45;
    v47[40] = 0;
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A6D1DE4();
    sub_26A6D1E70();
    sub_26A84FDF8();
    sub_26A54A088();
  }

  else
  {
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A6D1DE4();
    sub_26A6D1E70();
    sub_26A84FDF8();
  }

  return sub_26A54A088();
}

uint64_t sub_26A6CFFA4(uint64_t a1)
{
  v1 = *(a1 + 8);
  *v3 = *a1;
  v4 = v1;
  return sub_26A6CFFE8(v3) & 1;
}

uint64_t sub_26A6CFFE8(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 != 74)
  {
    if (sub_26A6300C8(*a1) == 0x6E6F74747562 && v4 == 0xE600000000000000)
    {
    }

    else
    {
      v6 = sub_26A852598();

      if ((v6 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    type metadata accessor for RFButtonStyle();
    goto LABEL_13;
  }

LABEL_2:
  v3 = sub_26A6CD6AC();
  if (v1 != 74 || (v3 & 1) == 0)
  {
    sub_26A6D040C();
  }

LABEL_13:
  if (v2 != 74)
  {
    if (sub_26A6300C8(v2) == 0x6E6F74747562 && v8 == 0xE600000000000000)
    {
    }

    else
    {
      v10 = sub_26A852598();

      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    type metadata accessor for RFButtonStyle();
    return 1;
  }

LABEL_14:
  v7 = sub_26A6CD6AC();
  if (v2 != 74 || (v7 & 1) == 0)
  {
    sub_26A6D040C();
  }

  return 1;
}

double sub_26A6D0158()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
    v6 = 0.0;
    if (v5)
    {
      return v6;
    }
  }

  else
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = 0.0;
    if (v17)
    {
      return v6;
    }
  }

  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 8);
  }

  v8 = v0 + *(type metadata accessor for RFButtonStyle() + 64);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (*(v8 + 17) == 1)
  {
    v17 = *v8;
    v18 = v10;
    v19 = v11;
  }

  else
  {

    sub_26A851EA8();
    v12 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4C23D0(v9, v10, v11, 0);
    (*(v2 + 8))(v4, v1);
    v9 = v17;
    LODWORD(v11) = v19;
  }

  switch(v11)
  {
    case 1:
      sub_26A6D040C();
      v6 = v14;
      break;
    case 2:
      v6 = *&v9;
      break;
    case 3:
      sub_26A6D040C();
      v6 = v13;
      goto LABEL_14;
    default:
      v6 = *&v9;
LABEL_14:
      sub_26A6D040C();
      break;
  }

  return v6;
}

uint64_t sub_26A6D040C()
{
  v1 = v0;
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for RFButtonStyle();
  v7 = result;
  v8 = v1 + *(result + 40);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    result = (*(v3 + 8))(v5, v2);
    v9 = v17[1];
  }

  if (v9 == 6)
  {
    v11 = *(v1 + *(v7 + 80) + 280);
    v12 = sub_26A6CDCFC();
    return v11(v12);
  }

  else if (*(v1 + 32))
  {
    v13 = v1 + *(v7 + 80);
    if (*(v13 + 272))
    {
      v14 = *(v13 + 280);
      v15 = sub_26A6CDCFC();
      v14(v15);
      v16 = sub_26A6CDCFC();
      return (v14)(v16);
    }
  }

  return result;
}

void sub_26A6D0610()
{
  OUTLINED_FUNCTION_28_0();
  v12 = v0;
  v2 = v1;
  v3 = sub_26A8501E8();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  type metadata accessor for ActionTapThrottler();
  sub_26A6D2FE4();
  sub_26A84EEF8();
  (*(v5 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v3);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_26A80B4C4(v12, v10);

  OUTLINED_FUNCTION_27_0();
}

void sub_26A6D07FC()
{
  OUTLINED_FUNCTION_28_0();
  v29[1] = v1;
  v2 = type metadata accessor for ButtonItemButtonStyle(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4018);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v11 = *v0;
  v13 = *(v0 + 1);
  v12 = *(v0 + 2);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  *v6 = v11;
  *(v6 + 8) = v13;
  *(v6 + 16) = v12;
  v32[0] = 0;

  sub_26A851048();
  v16 = v33[1];
  *(v6 + 24) = v33[0];
  *(v6 + 32) = v16;
  *(v6 + 40) = swift_getKeyPath();
  *(v6 + 48) = 0;
  *(v6 + 56) = swift_getKeyPath();
  *(v6 + 64) = 0;
  v17 = v2[10];
  *(v6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v18 = v6 + v2[11];
  *v18 = KeyPath;
  *(v18 + 8) = 0;
  v19 = v6 + v2[12];
  *v19 = v15;
  *(v19 + 8) = 0;
  v20 = v6 + v2[13];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v2[14];
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v22 = v6 + v21;
  memcpy(v33, qword_2803D1B00, sizeof(v33));
  memcpy((v22 + 368), qword_2803D1B00, 0xD0uLL);
  sub_26A4EF6D0();
  sub_26A6AEE74(v32);
  memcpy(v22, v32, 0xBFuLL);
  memcpy(v34, (v22 + 400), 0xB0uLL);
  memcpy((v22 + 192), (v22 + 400), 0xB0uLL);
  v23 = v2[15];
  *(v6 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A54DFFC(v34, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4020);
  sub_26A549F4C();
  sub_26A6D2FE4();
  sub_26A850988();
  sub_26A6D3024();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26A68D064;
  *(v24 + 24) = 0;
  v25 = &v10[*(v30 + 36)];
  *(v25 + 2) = swift_getKeyPath();
  v25[24] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v27 = *(v26 + 40);
  *&v25[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v28 = &v25[*(v26 + 44)];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  *v25 = sub_26A4D1F7C;
  *(v25 + 1) = v24;
  sub_26A4AD2E4();
  sub_26A6D3074();
  sub_26A851248();
  sub_26A4AD344();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6D0C8C()
{
  sub_26A6D2E0C();

  return sub_26A84F998();
}

uint64_t sub_26A6D0CD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A6D0C8C();
  *a1 = v3;
  return result;
}

uint64_t sub_26A6D0DA8(void (*a1)(void))
{
  a1();
  sub_26A84F998();
  return v2;
}

uint64_t sub_26A6D0DF0()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A6D0D88();
  return OUTLINED_FUNCTION_5_7(v0);
}

double sub_26A6D0E94@<D0>(uint64_t a1@<X8>)
{
  sub_26A5DA898();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_26A6D0ED8(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return sub_26A5DA8D8(&v3);
}

unint64_t sub_26A6D0F18()
{
  result = qword_2803B3E78;
  if (!qword_2803B3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3E78);
  }

  return result;
}

uint64_t sub_26A6D0F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RFButtonStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6D0FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RFButtonStyle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6D1034()
{
  v0 = type metadata accessor for RFButtonStyle();
  OUTLINED_FUNCTION_79(v0);

  return sub_26A6CF980();
}

uint64_t sub_26A6D1094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A63869C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A6D1100@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A6D10F8();
  *a1 = result;
  return result;
}

void View.buttonRole(_:foreground:background:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v34 = v2;
  v35 = v3;
  v28 = v4;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3E68);
  v7 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v30 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEBA0);
  v12 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v32 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v31 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v33 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  v21 = *v6;
  v29 = *v6;
  swift_getKeyPath();
  LOBYTE(v42) = v21;
  sub_26A8509A8();

  swift_getKeyPath();
  v42 = v28;
  v22 = sub_26A549F4C();
  v40 = v1;
  v41 = v22;
  WitnessTable = swift_getWitnessTable();
  sub_26A8509A8();

  (*(v30 + 8))(v11, v7);
  swift_getKeyPath();
  v42 = v34;
  v24 = sub_26A549F4C();
  v38 = WitnessTable;
  v39 = v24;
  v25 = swift_getWitnessTable();
  sub_26A8509A8();

  (*(v32 + 8))(v16, v12);
  LOBYTE(v42) = v29;
  v36 = v25;
  v37 = v24;
  v26 = v31;
  swift_getWitnessTable();
  sub_26A6D0F18();
  sub_26A850BE8();
  (*(v33 + 8))(v20, v26);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6D1520()
{
  sub_26A6D18F8(319, &qword_2803AADC0, MEMORY[0x277CDF310], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A6D18F8(319, &qword_2803B0190, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A6260E8();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A6D18F8(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_26A6D18A8(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_26A6D18A8(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
          if (v11 > 0x3F)
          {
            return v9;
          }

          sub_26A6D18F8(319, &qword_2803B3E90, &type metadata for ButtonItemButtonStyle.Role, MEMORY[0x277CDF468]);
          if (v12 > 0x3F)
          {
            return v9;
          }

          sub_26A5F7324(319, &qword_2803B3880, &qword_2803B3888);
          if (v13 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_26A5F7324(319, &qword_2803B3E98, &qword_2803AFA68);
            v1 = v14;
            if (v15 <= 0x3F)
            {
              sub_26A6D18F8(319, &qword_2803B3EA0, &type metadata for CustomHorizontalComponentPadding, MEMORY[0x277CDF468]);
              v1 = v16;
              if (v17 <= 0x3F)
              {
                sub_26A6D18A8(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation);
                v1 = v18;
                if (v19 <= 0x3F)
                {
                  sub_26A6D18A8(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
                  v1 = v20;
                  if (v21 <= 0x3F)
                  {
                    sub_26A5F7324(319, &qword_2803ADBE8, &qword_2803ADBF0);
                    v1 = v22;
                    if (v23 <= 0x3F)
                    {
                      sub_26A6D18F8(319, &qword_2803ADD00, &type metadata for ButtonViewConstants, type metadata accessor for EnvironmentConstant);
                      v1 = v24;
                      if (v25 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                        return 0;
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

  return v1;
}

void sub_26A6D18A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_10_6();
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A6D18F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A6D1948()
{
  result = qword_2803B3EA8;
  if (!qword_2803B3EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3EB0);
    sub_26A6D19D4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3EA8);
  }

  return result;
}

unint64_t sub_26A6D19D4()
{
  result = qword_2803B3EB8;
  if (!qword_2803B3EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3EC0);
    sub_26A6D1A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3EB8);
  }

  return result;
}

unint64_t sub_26A6D1A60()
{
  result = qword_2803B3EC8;
  if (!qword_2803B3EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3ED0);
    sub_26A6D1AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3EC8);
  }

  return result;
}

unint64_t sub_26A6D1AE4()
{
  result = qword_28157FC30;
  if (!qword_28157FC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3ED8);
    sub_26A6D1B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FC30);
  }

  return result;
}

unint64_t sub_26A6D1B70()
{
  result = qword_28157FC40;
  if (!qword_28157FC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FC40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RFButtonStyle.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A6D1CDC()
{
  result = qword_2803B3EF8;
  if (!qword_2803B3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3EF8);
  }

  return result;
}

unint64_t sub_26A6D1D58()
{
  result = qword_2803B3F28;
  if (!qword_2803B3F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F20);
    sub_26A6D1DE4();
    sub_26A6D1E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F28);
  }

  return result;
}

unint64_t sub_26A6D1DE4()
{
  result = qword_2803B3F30;
  if (!qword_2803B3F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F38);
    sub_26A6D1E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F30);
  }

  return result;
}

unint64_t sub_26A6D1E70()
{
  result = qword_2803B3F40;
  if (!qword_2803B3F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F48);
    sub_26A6D1F28();
    sub_26A549F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F40);
  }

  return result;
}

unint64_t sub_26A6D1F28()
{
  result = qword_2803B3F50;
  if (!qword_2803B3F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F58);
    sub_26A6D1FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F50);
  }

  return result;
}

unint64_t sub_26A6D1FB4()
{
  result = qword_2803B3F60;
  if (!qword_2803B3F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F68);
    sub_26A6D2040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F60);
  }

  return result;
}

unint64_t sub_26A6D2040()
{
  result = qword_2803B3F70;
  if (!qword_2803B3F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F78);
    sub_26A6D20F8();
    sub_26A549F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F70);
  }

  return result;
}

unint64_t sub_26A6D20F8()
{
  result = qword_2803B3F80;
  if (!qword_2803B3F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F88);
    sub_26A6D2FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F80);
  }

  return result;
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for RFButtonStyle();
  OUTLINED_FUNCTION_33_10();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_26A492280();
  sub_26A49035C(*(v3 + 64), *(v3 + 72));
  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_1_4();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = OUTLINED_FUNCTION_6_47(v1[10]);
  sub_26A49035C(v6, v7);
  v8 = OUTLINED_FUNCTION_6_47(v1[11]);
  sub_26A49035C(v8, v9);
  OUTLINED_FUNCTION_6_47(v1[12]);
  j__swift_release();
  OUTLINED_FUNCTION_6_47(v1[13]);
  j__swift_release();
  v10 = OUTLINED_FUNCTION_6_47(v1[14]);
  sub_26A49035C(v10, v11);

  sub_26A4C23D0(*(v3 + v1[16]), *(v3 + v1[16] + 8), *(v3 + v1[16] + 16), *(v3 + v1[16] + 17));
  v12 = OUTLINED_FUNCTION_6_47(v1[17]);
  sub_26A49035C(v12, v13);
  v14 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v15 + 8))(v3 + v14);
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_6_47(v1[19]);
  sub_26A49035C(v16, v17);
  v18 = v3 + v1[20];
  sub_26A49035C(*v18, *(v18 + 8));
  sub_26A49035C(*(v18 + 16), *(v18 + 24));
  sub_26A49035C(*(v18 + 32), *(v18 + 40));
  sub_26A49035C(*(v18 + 48), *(v18 + 56));
  sub_26A49035C(*(v18 + 64), *(v18 + 72));
  sub_26A49035C(*(v18 + 80), *(v18 + 88));
  sub_26A49035C(*(v18 + 96), *(v18 + 104));
  sub_26A49035C(*(v18 + 112), *(v18 + 120));
  sub_26A49035C(*(v18 + 128), *(v18 + 136));
  sub_26A49035C(*(v18 + 144), *(v18 + 152));

  return swift_deallocObject();
}

uint64_t sub_26A6D2488(uint64_t a1)
{
  v2 = type metadata accessor for RFButtonStyle();
  OUTLINED_FUNCTION_79(v2);

  return sub_26A6CFFA4(a1);
}

unint64_t sub_26A6D24F4()
{
  result = qword_2803B3F98;
  if (!qword_2803B3F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F18);
    sub_26A6D2580();
    sub_26A6D2750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F98);
  }

  return result;
}

unint64_t sub_26A6D2580()
{
  result = qword_2803B3FA0;
  if (!qword_2803B3FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F10);
    sub_26A6D260C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FA0);
  }

  return result;
}

unint64_t sub_26A6D260C()
{
  result = qword_2803B3FA8;
  if (!qword_2803B3FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F08);
    sub_26A6D2698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FA8);
  }

  return result;
}

unint64_t sub_26A6D2698()
{
  result = qword_2803B3FB0;
  if (!qword_2803B3FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADDA8);
    sub_26A549F4C();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FB0);
  }

  return result;
}

unint64_t sub_26A6D2750()
{
  result = qword_2803B3FC0;
  if (!qword_2803B3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FC0);
  }

  return result;
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for RFButtonStyle();
  OUTLINED_FUNCTION_33_10();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_26A8501E8();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v0 + v3;
  sub_26A492280();
  sub_26A49035C(*(v10 + 64), *(v10 + 72));
  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v10 + v11);
  }

  else
  {
  }

  v13 = OUTLINED_FUNCTION_7_52(v1[10]);
  sub_26A49035C(v13, v14);
  v15 = OUTLINED_FUNCTION_7_52(v1[11]);
  sub_26A49035C(v15, v16);
  OUTLINED_FUNCTION_7_52(v1[12]);
  j__swift_release();
  OUTLINED_FUNCTION_7_52(v1[13]);
  j__swift_release();
  v17 = OUTLINED_FUNCTION_7_52(v1[14]);
  sub_26A49035C(v17, v18);

  sub_26A4C23D0(*(v10 + v1[16]), *(v10 + v1[16] + 8), *(v10 + v1[16] + 16), *(v10 + v1[16] + 17));
  v19 = OUTLINED_FUNCTION_7_52(v1[17]);
  sub_26A49035C(v19, v20);
  v21 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v22 + 8))(v10 + v21);
  }

  else
  {
  }

  v23 = OUTLINED_FUNCTION_7_52(v1[19]);
  sub_26A49035C(v23, v24);
  v25 = v10 + v1[20];
  sub_26A49035C(*v25, *(v25 + 8));
  sub_26A49035C(*(v25 + 16), *(v25 + 24));
  sub_26A49035C(*(v25 + 32), *(v25 + 40));
  sub_26A49035C(*(v25 + 48), *(v25 + 56));
  sub_26A49035C(*(v25 + 64), *(v25 + 72));
  sub_26A49035C(*(v25 + 80), *(v25 + 88));
  sub_26A49035C(*(v25 + 96), *(v25 + 104));
  sub_26A49035C(*(v25 + 112), *(v25 + 120));
  sub_26A49035C(*(v25 + 128), *(v25 + 136));
  sub_26A49035C(*(v25 + 144), *(v25 + 152));

  (*(v8 + 8))(v0 + ((v3 + v5 + v9) & ~v9), v6);

  return swift_deallocObject();
}

void sub_26A6D2B68()
{
  type metadata accessor for RFButtonStyle();
  v0 = sub_26A8501E8();
  OUTLINED_FUNCTION_79(v0);
  sub_26A6D0610();
}

uint64_t objectdestroy_64Tm()
{
  sub_26A8501E8();
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A6D2CB8()
{
  v0 = sub_26A8501E8();
  OUTLINED_FUNCTION_79(v0);
  return sub_26A8501D8();
}

unint64_t sub_26A6D2D10()
{
  result = qword_2803B3FF0;
  if (!qword_2803B3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FF0);
  }

  return result;
}

unint64_t sub_26A6D2D64()
{
  result = qword_2803B3FF8;
  if (!qword_2803B3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FF8);
  }

  return result;
}

unint64_t sub_26A6D2DB8()
{
  result = qword_2803B4000;
  if (!qword_2803B4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4000);
  }

  return result;
}

unint64_t sub_26A6D2E0C()
{
  result = qword_2803B4008;
  if (!qword_2803B4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4008);
  }

  return result;
}

unint64_t sub_26A6D2E60()
{
  result = qword_2803B4010;
  if (!qword_2803B4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4010);
  }

  return result;
}

uint64_t sub_26A6D2F04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_26A6D2F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26A6D2FE4()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A6D3024()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A6D3074()
{
  result = qword_2803B4030;
  if (!qword_2803B4030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4020);
    type metadata accessor for ButtonItemButtonStyle(255);
    sub_26A549F4C();
    sub_26A6D2FE4();
    swift_getOpaqueTypeConformance2();
    sub_26A549F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4030);
  }

  return result;
}

void OUTLINED_FUNCTION_4_56()
{
  *(v0 + 40) = sub_26A626198;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
}

uint64_t OUTLINED_FUNCTION_5_55(uint64_t result)
{
  *v4 = result;
  *(v4 + 8) = 0;
  v5 = v1 + *(v2 + 60);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_31(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

void OUTLINED_FUNCTION_18_22()
{
  v3 = v0 + *(v1 + 40);
  *v3 = v2;
  *(v3 + 8) = 0;
}

void *OUTLINED_FUNCTION_22_26()
{

  return memcpy((v0 + 192), (v0 + 400), 0xB0uLL);
}

void *OUTLINED_FUNCTION_23_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char __src)
{

  return memcpy(v31, &__src, 0xBFuLL);
}

void *OUTLINED_FUNCTION_24_21()
{

  return memcpy((v0 + 368), v1, 0xD0uLL);
}

void *OUTLINED_FUNCTION_25_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char __dst)
{

  return memcpy(&__dst, v57, 0xD0uLL);
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return sub_26A84F4F8();
}

uint64_t OUTLINED_FUNCTION_27_13()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t SwitchView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84E228();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  v5 = type metadata accessor for SwitchView();
  v6 = a2 + v5[5];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v7 = a2 + v5[6];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  ActionHandler.init()(a2 + v5[7]);
  v8 = a2 + v5[8];
  sub_26A851048();
  sub_26A576F4C(a2, &qword_2803AAD90);
  v9 = *(v4 - 8);
  (*(v9 + 16))(a2, a1, v4);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  sub_26A84E1F8();
  sub_26A851048();
  (*(v9 + 8))(a1, v4);

  *v8 = v11;
  *(v8 + 8) = v12;
  return result;
}

uint64_t type metadata accessor for SwitchView()
{
  result = qword_2803B4070;
  if (!qword_2803B4070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SwitchView.init(isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_26A84E228();
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
  v9 = type metadata accessor for SwitchView();
  v10 = a4 + v9[5];
  v11 = a4 + v9[6];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  ActionHandler.init()(a4 + v9[7]);
  v12 = a4 + v9[8];
  result = sub_26A851048();
  *v12 = v14;
  *(v12 + 8) = v15;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  return result;
}

uint64_t sub_26A6D3688@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.containsComponentsWithActionSubject.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A6D36E0()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + *(type metadata accessor for SwitchView() + 24));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v1);
    return v12[1];
  }

  return v8;
}

void SwitchView.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v46 = v0;
  v42 = v1;
  v2 = type metadata accessor for SwitchView();
  v45 = *(v2 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84FAB8();
  OUTLINED_FUNCTION_15();
  v40 = v4;
  v41 = v5;
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4038);
  OUTLINED_FUNCTION_15();
  v35 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4040);
  OUTLINED_FUNCTION_15();
  v37 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4048);
  OUTLINED_FUNCTION_15();
  v38 = v17;
  v39 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  sub_26A84FB68();
  sub_26A6D3CFC();
  sub_26A851218();
  v21 = sub_26A6D3ECC();
  sub_26A850A28();
  (*(v35 + 8))(v11, v7);
  v22 = v36;
  sub_26A84FAA8();
  v47 = v7;
  v48 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_26A6D3F30();
  v25 = v40;
  sub_26A8509D8();
  (*(v41 + 8))(v22, v25);
  (*(v37 + 8))(v16, v12);
  v47 = v12;
  v48 = v25;
  v49 = OpaqueTypeConformance2;
  v50 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v42;
  v27 = v38;
  sub_26A850A38();
  (*(v39 + 8))(v20, v27);
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4060) + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 0;
  *(v30 + 16) = v29;
  *(v30 + 24) = 0;
  v31 = v43;
  sub_26A4F2068(v46, v43);
  v32 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v33 = swift_allocObject();
  sub_26A6D3FD0(v31, v33 + v32);
  v34 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4068) + 36));
  *v34 = sub_26A6D4034;
  v34[1] = v33;
  v34[2] = 0;
  v34[3] = 0;
  OUTLINED_FUNCTION_27_0();
}

void sub_26A6D3CFC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = type metadata accessor for SwitchView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = (v0 + *(v4 + 28));
  v6 = *v5;
  v7 = v5[1];
  if (!v7)
  {
    v15[0] = *v5;
    sub_26A4F2068(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_26A851BD8();
    v8 = sub_26A851BC8();
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    *(v10 + 16) = v8;
    *(v10 + 24) = v11;
    v12 = v11;
    sub_26A6D3FD0(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    sub_26A4F2068(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = sub_26A851BC8();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    sub_26A6D3FD0(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9);
    sub_26A851278();
    v6 = v15[0];
  }

  sub_26A67F998(v6, v7);
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A6D3ECC()
{
  result = qword_2803B4050;
  if (!qword_2803B4050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4050);
  }

  return result;
}

unint64_t sub_26A6D3F30()
{
  result = qword_2803B4058;
  if (!qword_2803B4058)
  {
    sub_26A84FAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4058);
  }

  return result;
}

uint64_t sub_26A6D3F88()
{
  sub_26A6D36E0();
  sub_26A84EB98();
}

uint64_t sub_26A6D3FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwitchView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6D4034()
{
  type metadata accessor for SwitchView();

  return sub_26A6D3F88();
}

uint64_t sub_26A6D40B0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SwitchView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  result = sub_26A851058();
  *a1 = v3;
  return result;
}

uint64_t sub_26A6D412C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v40[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v40[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v23 = &v40[-v22];
  v24 = *a1;
  v25 = type metadata accessor for SwitchView();
  v26 = a4 + *(v25 + 32);
  v27 = *v26;
  v28 = *(v26 + 8);
  v41 = v27;
  v42 = v28;
  v40[15] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851068();
  v29 = a4 + *(v25 + 28);
  v30 = v29 + *(type metadata accessor for ActionHandler(0) + 44);
  if (v24 == 1)
  {
    sub_26A576FA8(v30, v23, &qword_2803B3910);
    v31 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v23, 1, v31) == 1)
    {
      v32 = v23;
      return sub_26A576F4C(v32, &qword_2803B3910);
    }

    sub_26A576FA8(a4, v11, &qword_2803AAD90);
    v35 = sub_26A84E228();
    if (__swift_getEnumTagSinglePayload(v11, 1, v35) == 1)
    {
      sub_26A576F4C(v11, &qword_2803AAD90);
      v36 = sub_26A84BAB8();
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v36);
    }

    else
    {
      sub_26A84E208();
      (*(*(v35 - 8) + 8))(v11, v35);
    }

    v41 = 4;
    StandardActionHandler.perform(_:interactionType:)();
    sub_26A576F4C(v17, &qword_2803B3800);
    v39 = v23;
  }

  else
  {
    sub_26A576FA8(v30, v20, &qword_2803B3910);
    v33 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v33) == 1)
    {
      v32 = v20;
      return sub_26A576F4C(v32, &qword_2803B3910);
    }

    sub_26A576FA8(a4, v8, &qword_2803AAD90);
    v37 = sub_26A84E228();
    if (__swift_getEnumTagSinglePayload(v8, 1, v37) == 1)
    {
      sub_26A576F4C(v8, &qword_2803AAD90);
      v38 = sub_26A84BAB8();
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v38);
    }

    else
    {
      sub_26A84E218();
      (*(*(v37 - 8) + 8))(v8, v37);
    }

    v41 = 5;
    StandardActionHandler.perform(_:interactionType:)();
    sub_26A576F4C(v14, &qword_2803B3800);
    v39 = v20;
  }

  return sub_26A592630(v39);
}

void sub_26A6D45D0()
{
  sub_26A6D46F4();
  if (v0 <= 0x3F)
  {
    sub_26A6D474C(319, &qword_2803B4088, &unk_2803AC170, &unk_26A87C420, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26A6D474C(319, &qword_2803B3E98, &qword_2803AFA68, &unk_26A86B340, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ActionHandler(319);
        if (v3 <= 0x3F)
        {
          sub_26A6B4AF8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A6D46F4()
{
  if (!qword_2803B4080)
  {
    sub_26A84E228();
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B4080);
    }
  }
}

void sub_26A6D474C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_26A6D47B0()
{
  result = qword_2803B4090;
  if (!qword_2803B4090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4068);
    sub_26A6D483C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4090);
  }

  return result;
}

unint64_t sub_26A6D483C()
{
  result = qword_2803B4098;
  if (!qword_2803B4098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4040);
    sub_26A84FAB8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4038);
    sub_26A6D3ECC();
    swift_getOpaqueTypeConformance2();
    sub_26A6D3F30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4098);
  }

  return result;
}

uint64_t sub_26A6D49A4@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SwitchView();

  return sub_26A6D40B0(a1);
}

uint64_t objectdestroy_15Tm()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for SwitchView();
  OUTLINED_FUNCTION_37_0();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_26A84E228();
  if (!OUTLINED_FUNCTION_25_6(v7))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v8 + 8))(v1 + v6, v2);
  }

  if (*(v1 + v6 + *(v0 + 20) + 8))
  {
  }

  v9 = OUTLINED_FUNCTION_4_57();
  v10 = *(v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_8_50(v11))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v12 + 8))(v4 + v10, v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_73();
  if (v13)
  {
    if ((*(v3 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v3);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v3 + 16);
  v14 = v4 + *(v9 + 44);
  v15 = type metadata accessor for StandardActionHandler(0);
  if (!OUTLINED_FUNCTION_9_44(v15))
  {
    MEMORY[0x26D665710](v14);
    v16 = *(v3 + 24);
    v17 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_5_56(v17))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v18 + 8))(v14 + v16, v4);
    }

    OUTLINED_FUNCTION_11_38();

    OUTLINED_FUNCTION_11_38();
  }

  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A6D4C54(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for SwitchView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26A6D412C(a1, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_1_73()
{
  sub_26A556DF4(*(v1 + v0[7]), *(v1 + v0[7] + 8), *(v1 + v0[7] + 16));
  sub_26A49035C(*(v1 + v0[8]), *(v1 + v0[8] + 8));
  return sub_26A49035C(*(v1 + v0[9]), *(v1 + v0[9] + 8));
}

uint64_t OUTLINED_FUNCTION_4_57()
{
  v2 = v1 + *(v0 + 28);
  sub_26A556DF4(*v2, *(v2 + 8), *(v2 + 16));
  sub_26A49035C(*(v2 + 24), *(v2 + 32));

  return type metadata accessor for ActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_5_56(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_8_50(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_44(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_38()
{
}

uint64_t Color.swiftValue.getter()
{
  v0 = sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  sub_26A84DF78();
  v7 = _ProtoColor.swiftValue.getter();
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t Color.init(color:)()
{
  v1 = sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];

  sub_26A850DD8();
  OUTLINED_FUNCTION_3_62();
  OUTLINED_FUNCTION_2_71();

  if ((v0 & 1) == 0)
  {

    sub_26A850D78();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850DE8();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850DF8();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850D88();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850D98();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850E08();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850E28();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850DA8();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850E38();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850DB8();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850E78();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850E48();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850D68();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850E88();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850DC8();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850E18();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();

    sub_26A850E58();
    OUTLINED_FUNCTION_3_62();
    OUTLINED_FUNCTION_2_71();
  }

  sub_26A6D61E8();
  sub_26A84E9F8();
  (*(v3 + 16))(v7, v9, v1);
  sub_26A84DF88();

  return (*(v3 + 8))(v9, v1);
}

uint64_t Color.init(hex:)(uint64_t a1, unint64_t a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = sub_26A850D48();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  if ((sub_26A851908() & 1) == 0 || (v11 = sub_26A851888(), v12 = sub_26A6D58C4(v11, a1, a2), v14 = v13, v16 = v15, v18 = v17, , MEMORY[0x26D663A90](v12, v14, v16, v18), , sub_26A851858() != 8))
  {

    return 0;
  }

  sub_26A4EC5B0(0, &qword_2803B40A0);
  v19 = sub_26A6D5910();
  v22[0] = 0;
  if (![v19 scanHexLongLong_])
  {

    return 0;
  }

  (*(v6 + 104))(v10, *MEMORY[0x277CE0EE0], v4);
  v20 = sub_26A850E98();

  return v20;
}

uint64_t Color.rgbaString.getter()
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_26A4EC5B0(0, &qword_28157D7E8);

  v0 = sub_26A851FB8();
  v12 = 0.0;
  v13[0] = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  [v0 getRed:v13 green:&v12 blue:&v11 alpha:&v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B13D8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26A864670;
  v2 = v13[0] * 255.0;
  if (COERCE__INT64(fabs(v13[0] * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = MEMORY[0x277D83B88];
  v4 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  v5 = v12 * 255.0;
  if (COERCE__INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 72) = v5;
  v6 = v11 * 255.0;
  if (COERCE__INT64(fabs(v11 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 112) = v6;
  v7 = v10 * 255.0;
  if (COERCE_UNSIGNED_INT64(fabs(v10 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v7 >= 9.22337204e18)
  {
    goto LABEL_25;
  }

  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  *(v1 + 152) = v7;
  v8 = sub_26A8517C8();

  return v8;
}

unint64_t sub_26A6D58C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_26A851978();
  }

  __break(1u);
  return result;
}

id sub_26A6D5910()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26A851788();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_26A6D5BC4(uint64_t a1, unsigned int *a2)
{
  sub_26A84AFC8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  (*(v6 + 104))(v5 - v4, *a2);
  return sub_26A84AFE8();
}

uint64_t sub_26A6D5C80()
{
  Color.rgbaString.getter();
  v0 = sub_26A84B038();
  sub_26A84B018();
  return v0(&v2, 0);
}

uint64_t _ProtoColor.swiftValue.getter()
{
  v0 = sub_26A84B028();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B40A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  sub_26A84AFF8();
  v13 = sub_26A84AFB8();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    sub_26A6D62A8(v12, v9);
    v15 = OUTLINED_FUNCTION_4_58();
    v17 = v16(v15);
    if (v17 == *MEMORY[0x277D62928])
    {
      v18 = OUTLINED_FUNCTION_4_58();
      v19(v18);
      (*(v2 + 32))(v6, v9, v0);
      v20 = sub_26A84B008();
      v14 = Color.init(hex:)(v20, v21);
      (*(v2 + 8))(v6, v0);
      goto LABEL_44;
    }

    if (v17 == *MEMORY[0x277D62930])
    {
      v22 = OUTLINED_FUNCTION_4_58();
      v23(v22);
      v24 = sub_26A84AFC8();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 88))(v9, v24);
      if (v26 == *MEMORY[0x277D62988])
      {
        v27 = sub_26A850DF8();
LABEL_43:
        v14 = v27;
        goto LABEL_44;
      }

      if (v26 == *MEMORY[0x277D62978])
      {
        v27 = sub_26A850DD8();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62998])
      {
        v27 = sub_26A850E18();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62958])
      {
        v27 = sub_26A850D98();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62940])
      {
        v27 = sub_26A850D68();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62990])
      {
        v27 = sub_26A850E08();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62948])
      {
        v27 = sub_26A850D78();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629A8])
      {
        v27 = sub_26A850E38();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629B8])
      {
        v27 = sub_26A850E58();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62968])
      {
        v27 = sub_26A850DB8();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629B0])
      {
        v27 = sub_26A850E48();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629C0])
      {
        v27 = sub_26A850E78();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629C8])
      {
        v27 = sub_26A850E88();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62980])
      {
        v27 = sub_26A850DE8();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62950])
      {
        v27 = sub_26A850D88();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629A0])
      {
        v27 = sub_26A850E28();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62960])
      {
        v27 = sub_26A850DA8();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62970])
      {
        v27 = sub_26A850DC8();
        goto LABEL_43;
      }

      (*(v25 + 8))(v9, v24);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_4_58();
      v29(v28);
    }

    v14 = 0;
  }

LABEL_44:
  sub_26A6D6240(v12);
  return v14;
}

unint64_t sub_26A6D61E8()
{
  result = qword_281580000;
  if (!qword_281580000)
  {
    sub_26A84B048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281580000);
  }

  return result;
}

uint64_t sub_26A6D6240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B40A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A6D62A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B40A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Color.asColor()()
{

  return Color.init(color:)();
}

uint64_t OUTLINED_FUNCTION_2_71()
{
}

uint64_t OUTLINED_FUNCTION_3_62()
{

  return sub_26A850D58();
}

double sub_26A6D63B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8);
  sub_26A851058();
  return v1;
}

uint64_t HorizontalListView.body.getter(void *a1)
{
  v2 = *(v1 + 16);
  v19[6] = *v1;
  v19[7] = v2;
  v20 = *(v1 + 32);
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110);
  type metadata accessor for CGRect();
  __src[0] = v4;
  __src[1] = v3;
  __src[2] = v6;
  __src[3] = v5;
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences();
  OUTLINED_FUNCTION_6_48();
  sub_26A84FEE8();
  v8 = sub_26A84F4F8();
  v9 = sub_26A4EEF40();
  __src[0] = v7;
  __src[1] = MEMORY[0x277D83B88];
  __src[2] = v8;
  __src[3] = v9;
  __src[4] = MEMORY[0x277D83B98];
  sub_26A851328();
  OUTLINED_FUNCTION_3_63();
  v17 = v6;
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_72();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84EDC8();
  OUTLINED_FUNCTION_1_74();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84EDE8();
  sub_26A504FB4();
  sub_26A850028();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_0_73();
  v14 = swift_getWitnessTable();
  v15 = OUTLINED_FUNCTION_7_53();
  swift_getWitnessTable();
  sub_26A84F208();
  OUTLINED_FUNCTION_4_59();
  swift_getWitnessTable();
  sub_26A84FA78();
  sub_26A851118();
  v19[0] = *v21;
  LOBYTE(v19[1]) = v21[16];
  *(&v19[1] + 1) = *&v21[24];
  *&v19[2] = *&v21[32];
  sub_26A6D63B0();
  sub_26A851128();
  OUTLINED_FUNCTION_5_57();
  swift_getWitnessTable();
  sub_26A851448();
  sub_26A850BC8();

  memcpy(__dst, __src, sizeof(__dst));
  v10 = sub_26A84F4F8();
  swift_getWitnessTable();
  sub_26A80757C(__dst);
  memcpy(v21, __dst, sizeof(v21));
  v11 = *(*(v10 - 8) + 8);
  v11(v21, v10);
  memcpy(__dst, v19, sizeof(__dst));
  sub_26A80757C(__dst);
  memcpy(__src, __dst, sizeof(__src));
  return (v11)(__src, v10);
}

uint64_t sub_26A6D680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a1 + 32);
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v12 = type metadata accessor for HorizontalListView();
  (*(*(v12 - 8) + 16))(&v25, a1, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110);
  type metadata accessor for CGRect();
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences();
  swift_getWitnessTable();
  sub_26A84FEE8();
  v14 = sub_26A84F4F8();
  v15 = sub_26A4EEF40();
  v25 = v13;
  v26 = MEMORY[0x277D83B88];
  v27 = v14;
  v28 = v15;
  v29 = MEMORY[0x277D83B98];
  sub_26A851328();
  v23 = a4;
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A84EDC8();
  swift_getWitnessTable();
  sub_26A84EDE8();
  sub_26A504FB4();
  sub_26A850028();
  sub_26A84F4F8();
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = sub_26A84F1F8();
  v19 = v16;
  sub_26A84F208();
  swift_getWitnessTable();
  sub_26A80757C(&v18);

  v18 = v25;
  v19 = v26;
  sub_26A80757C(&v18);
}

uint64_t sub_26A6D6BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a6;
  v41 = a4;
  v45 = a2;
  v46 = a1;
  v48 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110);
  type metadata accessor for CGRect();
  v36 = type metadata accessor for HorizontalListView.HorizontalListHeightPreferences();
  WitnessTable = swift_getWitnessTable();
  sub_26A84FEE8();
  v10 = sub_26A84F4F8();
  v11 = sub_26A4EEF40();
  v60 = v9;
  v61 = MEMORY[0x277D83B88];
  v62 = v10;
  v63 = v11;
  v64 = MEMORY[0x277D83B98];
  sub_26A851328();
  v58 = a5;
  v59 = swift_getWitnessTable();
  v12 = a5;
  v47 = MEMORY[0x277CDFAD8];
  v57 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A84EDC8();
  v35 = swift_getWitnessTable();
  v13 = sub_26A84EDE8();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v34 = &v33 - v14;
  v37 = sub_26A504FB4();
  v40 = sub_26A850028();
  v15 = sub_26A84F4F8();
  v42 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v39 = &v33 - v19;
  sub_26A850208();
  v20 = a3;
  v21 = v41;
  v49 = a3;
  v50 = v41;
  v51 = a5;
  v22 = v44;
  v23 = v45;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  sub_26A6D6394();
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v21;
  *(v24 + 32) = v12;
  *(v24 + 40) = v22;
  v25 = *(v23 + 16);
  *(v24 + 48) = *v23;
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v23 + 32);
  v60 = v20;
  v61 = v21;
  v62 = v12;
  v63 = v22;
  v26 = type metadata accessor for HorizontalListView();
  (*(*(v26 - 8) + 16))(&v60, v23, v26);
  v27 = swift_getWitnessTable();
  v28 = v34;
  sub_26A850B38();

  (*(v43 + 8))(v28, v13);
  v29 = swift_getWitnessTable();
  v55 = v27;
  v56 = v29;
  swift_getWitnessTable();
  v30 = v39;
  sub_26A80757C(v17);
  v31 = *(v42 + 8);
  v31(v17, v15);
  sub_26A80757C(v30);
  return (v31)(v30, v15);
}

uint64_t sub_26A6D7118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a6;
  v23 = a4;
  v25 = a1;
  v26 = a2;
  v27 = a7;
  v9 = sub_26A84FE58();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110);
  type metadata accessor for CGRect();
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences();
  swift_getWitnessTable();
  sub_26A84FEE8();
  v11 = sub_26A84F4F8();
  v12 = sub_26A4EEF40();
  v37 = v10;
  v38 = MEMORY[0x277D83B88];
  v39 = v11;
  v40 = v12;
  v41 = MEMORY[0x277D83B98];
  sub_26A851328();
  v35 = a5;
  WitnessTable = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = sub_26A84EDC8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v22 - v18;
  sub_26A84FA58();
  v28 = a3;
  v29 = v23;
  v30 = a5;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  sub_26A6D7DB4();
  sub_26A84EDB8();
  swift_getWitnessTable();
  sub_26A80757C(v16);
  v20 = *(v14 + 8);
  v20(v16, v13);
  sub_26A80757C(v19);
  return (v20)(v19, v13);
}