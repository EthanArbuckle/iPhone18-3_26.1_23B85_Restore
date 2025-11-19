uint64_t sub_262A0F55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v72 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v62 - v13;
  v14 = a3[1];
  v71 = *a3;
  v70 = v14;
  v15 = *(a3 + 5);
  v69 = *(a3 + 4);
  v68 = v15;
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000033, 0x8000000262A33BA0);
  *&v79[0] = *(a4 + 16);
  v16 = sub_262A2A868();
  MEMORY[0x26672ECF0](v16);

  MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A333C0);
  sub_2629EA8C8(v82, v83);

  v18 = sub_262A1FE30(v17);
  sub_262A0C90C(a1, v18, &v82);

  v19 = v82;
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_262A2A6F8();

  v82 = 0xD000000000000030;
  v83 = 0x8000000262A33BE0;
  *&v79[0] = v19;
  v20 = SIDWorkoutPlanSchedule.description.getter();
  MEMORY[0x26672ECF0](v20);

  sub_2629EA8E0(v82, v83);

  v67 = v19;
  *&v79[0] = v19;
  v21 = v6;
  sub_262A0E6A4(v79, &v82);
  v22 = v82;
  v23 = v83;
  v24 = v84;
  v25 = v85;
  v27 = v86;
  v26 = v87;
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A33C20);
  *&v79[0] = v19[2];
  v28 = sub_262A2A868();
  MEMORY[0x26672ECF0](v28);

  MEMORY[0x26672ECF0](0xD000000000000027, 0x8000000262A33C50);
  sub_2629EA8C8(v82, v83);

  LOBYTE(v82) = 0;
  v66 = sub_262A04710(&v82, v72);
  v65 = v29;
  v79[0] = v71;
  v79[1] = v70;
  v80 = v69;
  v81 = v68;
  *&v74 = v22;
  *(&v74 + 1) = v23;
  v75 = v24;
  v76 = v25;
  v77 = v27;
  v78 = v26;
  sub_262A0FCAC(v79, &v74, &v82);

  v30 = v82;
  v31 = v83;
  v68 = v82;
  v63 = v83;
  v33 = v84;
  v32 = v85;
  *&v71 = v84;
  v72 = v85;
  v34 = v86;
  v35 = v87;
  v62 = v86;
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_262A2A6F8();

  *&v79[0] = 0xD000000000000026;
  *(&v79[0] + 1) = 0x8000000262A33C80;
  v82 = v30;
  v83 = v31;
  v84 = v33;
  v85 = v32;
  v86 = v34;
  v87 = v35;
  v36 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v36);

  v64 = v21;
  sub_2629EA8E0(*&v79[0], *(&v79[0] + 1));

  v37 = v21 + *(type metadata accessor for ResultPostProcessor() + 24);
  v38 = *(type metadata accessor for PlanGenerationContext() + 24);
  v39 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v40 = *(v39 + 32);
  v69 = v40;
  v41 = sub_262A2A018();
  v42 = *(v41 - 8);
  v43 = *(v42 + 16);
  v43(a5 + v40, v37 + v38, v41);
  v44 = *(v39 + 36);
  v45 = v71;

  sub_262A2A008();
  v46 = v63;
  *(a5 + 16) = v68;
  *(a5 + 24) = v46;
  v47 = v72;
  *(a5 + 32) = v45;
  *(a5 + 40) = v47;
  *(a5 + 48) = v62;
  *(a5 + 56) = v35;
  *&v70 = v35;
  v48 = v65;
  *a5 = v66;
  *(a5 + 8) = v48;
  *(a5 + 64) = 0;
  *(a5 + 72) = v67;
  v82 = 0;
  v83 = 0xE000000000000000;

  sub_262A2A6F8();

  v82 = 0xD000000000000027;
  v83 = 0x8000000262A33850;
  v49 = SIDPersonalizedWorkoutPlan.description.getter();
  MEMORY[0x26672ECF0](v49);

  sub_2629EA8C8(v82, v83);

  v68 = sub_2629AC344(MEMORY[0x277D84F90]);

  v67 = sub_262A26C70(v50);

  v51 = v73;
  v43(v73, a5 + v69, v41);
  v52 = *(v42 + 56);
  v52(v51, 0, 1, v41);
  v82 = *(a5 + 72);
  v53 = SIDWorkoutPlanSchedule.metricScaffold.getter();
  v54 = sub_2629E6220(v53);

  v55 = a5 + *(type metadata accessor for ConsistentWorkoutPlanResult() + 20);
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
  v57 = PlanScaffold[12];
  v52(v55 + v57, 1, 1, v41);
  v58 = PlanScaffold[14];
  v59 = v55 + PlanScaffold[13];
  v52(v55 + v58, 1, 1, v41);
  *v55 = v68;
  *(v55 + 8) = 0;
  v60 = v67;
  *(v55 + 16) = 0;
  *(v55 + 24) = v60;
  sub_2629BEB44(v51, v55 + v57);
  *(v55 + 32) = 0;
  *(v55 + PlanScaffold[15]) = v54;
  *(v55 + 40) = 0;
  *(v55 + 48) = 0;
  *(v55 + PlanScaffold[16]) = v72;
  *(v55 + 49) = 0;
  *(v55 + 56) = v70;
  sub_2629ADF2C(v55 + v58, &unk_27FF3CD10, &qword_262A2D5B0);
  v52(v55 + v58, 1, 1, v41);

  result = sub_2629ADF2C(v73, &unk_27FF3CD10, &qword_262A2D5B0);
  *(v55 + PlanScaffold[17]) = MEMORY[0x277D84F90];
  *v59 = 0;
  *(v59 + 8) = 1;
  return result;
}

uint64_t sub_262A0FCAC@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  v20 = v4;
  v21 = *a2;
  v22 = *(a2 + 5);
  v26 = *(v3 + 16);
  if (v26)
  {
    v5 = 0;
    v6 = *(result + 16);
    v25 = v3 + 32;
    v7 = -*(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    v24 = *(a2 + 2);
    while (v5 < *(v3 + 16))
    {
      v9 = (v25 + 48 * v5);
      v10 = *v9;
      v11 = v9[1];
      v30 = v9[2];
      v27 = v9[4];
      v28 = v9[3];
      v29 = v9[5];
      ++v5;
      v12 = -1;
      v13 = (v6 + 64);
      while (v7 + v12 != -1)
      {
        if (++v12 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v15 = *(v13 - 1);
        v14 = *v13;
        if (*(v13 - 4) != v10 || *(v13 - 3) != v11)
        {
          v13 += 6;
          result = sub_262A2A878();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v15 = v28;

      v14 = v27;
LABEL_14:

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2629A9020(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_2629A9020((v17 > 1), v18 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v18 + 1;
      v19 = (v8 + 48 * v18);
      v19[4] = v10;
      v19[5] = v11;
      v19[6] = v30;
      v19[7] = v15;
      v19[8] = v14;
      v19[9] = v29;
      v3 = v24;
      if (v5 == v26)
      {
        goto LABEL_21;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_21:
    *a3 = v21;
    *(a3 + 16) = v8;
    *(a3 + 24) = v20;
    *(a3 + 40) = v22;
  }

  return result;
}

uint64_t sub_262A0FED8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_262A0FFD0;

  return v7(a1);
}

uint64_t sub_262A0FFD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_262A100C8()
{
  result = qword_27FF3CC28;
  if (!qword_27FF3CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CC28);
  }

  return result;
}

uint64_t sub_262A1011C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262A1F380(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_262A2A858();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC48, &qword_262A30C18);
      v7 = sub_262A2A548();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_262A10278(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_262A10278(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_262A1F22C(v8);
      v8 = result;
    }

    v78 = (v8 + 16);
    v79 = *(v8 + 16);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = (v8 + 16 * v79);
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_262A107F4((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v32 = *(v8 + 24);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_2629A8DAC((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v33;
    v34 = v8 + 32;
    v35 = (v8 + 32 + 16 * v5);
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = *(v8 + 32);
          v37 = *(v8 + 40);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = (v8 + 16 * v33);
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = (v34 + 16 * v5);
          v60 = *v58;
          v59 = v58[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = (v8 + 16 * v33);
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = (v34 + 16 * v5);
        v67 = *v65;
        v66 = v65[1];
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v73 = (v34 + 16 * (v5 - 1));
        v74 = *v73;
        v75 = (v34 + 16 * v5);
        v76 = v75[1];
        sub_262A107F4((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v73 = v74;
        v73[1] = v76;
        v77 = *(v8 + 16);
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove((v34 + 16 * v5), v75 + 2, 16 * (v77 - 1 - v5));
        *(v8 + 16) = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = v34 + 16 * v33;
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = (v8 + 16 * v33);
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = (v34 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (*(v29 - 1) >= v27)
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_262A107F4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_262A109F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_262A2A988();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_262A10B68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_262A2A998();
      MEMORY[0x26672F240](v11);
      MEMORY[0x26672F240](v12);
      result = sub_262A2A9D8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_262A10D0C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    v30 = v4;
    do
    {
      v9 = *(v2 + 40);
      v10 = v2;
      v11 = (*(v2 + 48) + 32 * v6);
      v12 = v7;
      v13 = *v11;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v11[3];
      v17 = v8;
      sub_262A2A998();
      v18 = v13;
      v7 = v12;
      MEMORY[0x26672F240](v18);
      MEMORY[0x26672F240](v14);
      MEMORY[0x26672F240](v15);
      MEMORY[0x26672F240](v16);
      result = sub_262A2A9D8();
      v8 = v17;
      v19 = result & v12;
      if (v3 >= v17)
      {
        if (v19 < v17)
        {
          v4 = v30;
          v2 = v10;
        }

        else
        {
          v4 = v30;
          v2 = v10;
          if (v3 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v30;
        v2 = v10;
        if (v19 >= v8 || v3 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v23 = v22[1];
            *v21 = *v22;
            v21[1] = v23;
          }

          v24 = *(v2 + 56);
          v25 = (v24 + 8 * v3);
          v26 = (v24 + 8 * v6);
          if (v3 != v6 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v12;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_262A10F0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_262A2A998();
      MEMORY[0x26672F240](v10);
      result = sub_262A2A9D8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_262A110A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_262A2A998();

      sub_262A2A448();
      v13 = sub_262A2A9D8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_262A11250(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    JUMPOUT(0x262A11800);
  }

  *(a2 + 16) = v21;
  ++*(a2 + 36);
  return result;
}

unint64_t sub_262A118B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2629CB2B8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2629D0170(v16, a4 & 1);
      v20 = *v5;
      result = sub_2629CB2B8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2629CE2C8();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    v25 = (v22[6] + 16 * result);
    *v25 = a2;
    v25[1] = a3;
    *(v22[7] + 8 * result) = a1;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = v22[7];
  v24 = *(v23 + 8 * result);
  *(v23 + 8 * result) = a1;
}

unint64_t sub_262A11A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_2629CB134(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_2629D0B78(v20, a6 & 1);
      v24 = *v7;
      result = sub_2629CB134(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_2629CE828();
      result = v23;
    }
  }

  v26 = *v7;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    v29 = (v26[6] + 32 * result);
    *v29 = a2;
    v29[1] = a3;
    v29[2] = a4;
    v29[3] = a5;
    *(v26[7] + 8 * result) = a1;
    v30 = v26[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v26[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7];
  v28 = *(v27 + 8 * result);
  *(v27 + 8 * result) = a1;
}

unint64_t sub_262A11BAC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2629D41BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_2629CEB04();
    result = v17;
    goto LABEL_8;
  }

  sub_2629D10F4(v14, a3 & 1);
  v18 = *v4;
  result = sub_2629D41BC(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

unint64_t sub_262A11CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_2629CB134(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a6 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v22 >= v20 && (a6 & 1) == 0)
  {
    v23 = result;
    sub_2629CEB18();
    result = v23;
    goto LABEL_8;
  }

  sub_2629D1374(v20, a6 & 1);
  v24 = *v7;
  result = sub_2629CB134(a2, a3, a4, a5);
  if ((v21 & 1) == (v25 & 1))
  {
LABEL_8:
    v26 = *v7;
    if (v21)
    {
      *(v26[7] + 8 * result) = a1;
      return result;
    }

    v26[(result >> 6) + 8] |= 1 << result;
    v27 = (v26[6] + 32 * result);
    *v27 = a2;
    v27[1] = a3;
    v27[2] = a4;
    v27[3] = a5;
    *(v26[7] + 8 * result) = a1;
    v28 = v26[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v26[2] = v29;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

_OWORD *sub_262A11E30(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2629CB338(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2629CEC70();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2629D1630(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_2629CB338(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_262A2A938();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);

    return sub_2629AD99C(a1, v21);
  }

  else
  {

    return sub_262A12424(v9, a2, a1, v20);
  }
}

unint64_t sub_262A11FA4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void))
{
  v10 = v6;
  v14 = *v6;
  result = a4(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      a6(v20, a3 & 1);
      v24 = *v10;
      result = a4(a2);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v26 = *v10;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + result) = a2;
    *(v26[7] + 8 * result) = a1;
    v29 = v26[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v26[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7];
  v28 = *(v27 + 8 * result);
  *(v27 + 8 * result) = a1;
}

unint64_t sub_262A12124(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2629CB1E4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2629D26E4(v16, a4 & 1);
      v20 = *v5;
      result = sub_2629CB1E4(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2629CEF88();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v26 = (v22[7] + 16 * result);
    *v26 = a1;
    v26[1] = a2;
    v27 = v22[2];
    v15 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v15)
    {
      v22[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v25 = *v23;
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

unint64_t sub_262A1228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_2629CB1E4(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_2629D3658(v20, a6 & 1);
      v24 = *v7;
      result = sub_2629CB1E4(a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_2629CF3C8();
      result = v23;
    }
  }

  v26 = *v7;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + result) = a5;
    v32 = (v26[7] + 32 * result);
    *v32 = a1;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v33 = v26[2];
    v19 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v19)
    {
      v26[2] = v34;
      return result;
    }

    goto LABEL_15;
  }

  v27 = (v26[7] + 32 * result);
  v28 = *v27;
  v29 = v27[1];
  v31 = v27[2];
  v30 = v27[3];
  *v27 = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
}

_OWORD *sub_262A12424(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_2629AD99C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_262A1248C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_262A1251C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_262A1251C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v26 = (v8 - 1) & v8;
LABEL_11:
    v23 = v10 | (v4 << 6);
    v13 = *(a3 + 48) + 24 * v23;
    v15 = *v13;
    v14 = *(v13 + 8);
    v27[0] = v15;
    v27[1] = v14;
    v28 = *(v13 + 16);
    v16 = v28;
    sub_2629D40D0(v15, v14, v28);
    v17 = v29;
    v18 = a4(v27);
    result = sub_2629B6A68(v15, v14, v16);
    v29 = v17;
    if (v17)
    {
      return result;
    }

    v8 = v26;
    if (v18)
    {
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_262A26738(v21, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_16;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262A126C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + 8 * v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_262A26988(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void (*sub_262A12810(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_262A134DC(v6);
  v6[9] = sub_262A12B2C(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_262A15D78;
}

void (*sub_262A128B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t)
{
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x50uLL);
  }

  v12 = v11;
  *a1 = v11;
  v13 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[8] = sub_262A134DC(v12);
  v12[9] = sub_262A12D94(v12 + 4, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  return sub_262A15D78;
}

void (*sub_262A12978(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_262A13504(v6);
  v6[9] = sub_262A1304C((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_262A12A1C;
}

void (*sub_262A12A20(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_262A134DC(v8);
  v8[9] = sub_262A13240(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_262A15D78;
}

void sub_262A12ACC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_262A12B2C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_2629CB210(a2);
  *(v9 + 32) = v12 & 1;
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2629CE16C();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2629CFF00(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_2629CB210(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_262A2A938();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_262A12C74;
}

void sub_262A12C74(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_262A109F8(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v12 = *v2;

  free(v2);
}

void (*sub_262A12D94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6))(uint64_t **a1, char a2)
{
  v7 = v6;
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x40uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[4] = a5;
  v14[5] = v6;
  v14[2] = a3;
  v14[3] = a4;
  v14[1] = a2;
  v16 = *v6;
  v18 = sub_2629CB134(a2, a3, a4, a5);
  *(v15 + 56) = v17 & 1;
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_2629CE828();
      goto LABEL_12;
    }

    sub_2629D0B78(v21, a6 & 1);
    v24 = *v7;
    v25 = sub_2629CB134(a2, a3, a4, a5);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_12;
    }

LABEL_17:
    result = sub_262A2A938();
    __break(1u);
    return result;
  }

LABEL_12:
  v15[6] = v18;
  if (v22)
  {
    v27 = *(*(*v7 + 56) + 8 * v18);
  }

  else
  {
    v27 = 0;
  }

  *v15 = v27;
  return sub_262A12F1C;
}

void sub_262A12F1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 56);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[6];
    v6 = *v2[5];
    if (v2[7])
    {
      goto LABEL_9;
    }

    v7 = (v6[6] + 32 * v5);
    v8 = *(v2 + 1);
    v9 = *(v2 + 3);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v7 = v8;
    v7[1] = v9;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_262A10D0C(v2[6], *v2[5]);
    }

    goto LABEL_14;
  }

  v5 = v2[6];
  v6 = *v2[5];
  if ((v4 & 1) == 0)
  {
    v12 = (v6[6] + 32 * v5);
    v13 = *(v2 + 1);
    v14 = *(v2 + 3);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v12 = v13;
    v12[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v15 = v6[2];
    v11 = __OFADD__(v15, 1);
    v4 = v15 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v16 = *v2;

  free(v2);
}

uint64_t (*sub_262A1304C(uint64_t a1, uint64_t a2, char a3))(uint64_t result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_2629D41BC(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2629CDF00();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2629CF7DC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_2629D41BC(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_262A2A938();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_262A13168;
}

uint64_t sub_262A13168(uint64_t result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = *(result + 16);
    v5 = **(result + 8);
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_262A10F0C(*(result + 16), **(result + 8));
    }

    return result;
  }

  v4 = *(result + 16);
  v5 = **(result + 8);
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_262A13240(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2629CB0BC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2629CE990();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2629D0E40(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2629CB0BC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_262A2A938();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_262A13398;
}

void sub_262A13398(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_262A15B58(*(v13 + 48) + 16 * v12);
      sub_262A110A0(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_262A134DC(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_262A15D44;
}

uint64_t (*sub_262A13504(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_262A1352C;
}

void *sub_262A13538(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_262A13690(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13790(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13890(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13990(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a4 + 48) + v14);
      v16 = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = v15;
      a2[1] = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13A94(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13B90(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (*(a4 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v7)))));
      v15 = v14[1];
      v7 &= v7 - 1;
      *a2 = *v14;
      a2[1] = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_262A13C94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC80, &unk_262A30C48);
  v3 = sub_262A2A6D8();
  v4 = 0;
  v204 = v1;
  v205 = a1 + 32;
  v207 = v3;
  v209 = v3 + 56;
  while (1)
  {
    v5 = v205 + 16 * v4;
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v3 + 40);
    sub_262A2A998();
    v210 = v7;
    if (v7 > 4)
    {
      if (v7 > 7)
      {
        if (v7 == 8)
        {
          v9 = 8;
        }

        else
        {
          if (v7 == 9)
          {
            MEMORY[0x26672F240](9);

            sub_2629B55DC(v211, v6);
            goto LABEL_28;
          }

          v9 = 10;
        }
      }

      else if (v7 == 5)
      {
        v9 = 5;
      }

      else if (v7 == 6)
      {
        v9 = 6;
      }

      else
      {
        v9 = 7;
      }

      goto LABEL_27;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v9 = 2;
      }

      else if (v7 == 3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

LABEL_27:
      MEMORY[0x26672F240](v9);

      sub_2629B5854(v211, v6);
      goto LABEL_28;
    }

    if (v7)
    {
      MEMORY[0x26672F240](1);

      sub_2629B59B0(v211, v6);
    }

    else
    {
      MEMORY[0x26672F240](0);

      sub_2629B5B40(v211, v6);
    }

LABEL_28:
    result = sub_262A2A9D8();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = v209;
    v15 = *(v209 + 8 * (v12 >> 6));
    v16 = 1 << v12;
    if (((1 << v12) & v15) != 0)
    {
      break;
    }

    LOBYTE(v19) = v7;
LABEL_261:
    *(v14 + 8 * v13) = v15 | v16;
    v184 = *(v3 + 48) + 16 * v12;
    *v184 = v6;
    *(v184 + 8) = v19;
    v185 = *(v3 + 16);
    v186 = __OFADD__(v185, 1);
    v187 = v185 + 1;
    if (v186)
    {
      goto LABEL_274;
    }

    *(v3 + 16) = v187;
LABEL_5:
    if (++v4 == v1)
    {
      return v3;
    }
  }

  v206 = v4;
  v17 = ~v11;
  v18 = v6 + 56;
  v19 = v7;
  v208 = ~v11;
  while (1)
  {
    v20 = *(v3 + 48) + 16 * v12;
    v21 = *v20;
    v22 = *(v20 + 8);
    if (v22 > 4)
    {
      if (v22 > 7)
      {
        if (v22 == 8)
        {
          if (v19 == 8)
          {
            if (v21 == v6)
            {
              goto LABEL_4;
            }

            if (*(v21 + 16) == *(v6 + 16))
            {
              v54 = 1 << *(v21 + 32);
              if (v54 < 64)
              {
                v55 = ~(-1 << v54);
              }

              else
              {
                v55 = -1;
              }

              v56 = v55 & *(v21 + 56);
              v192 = (v54 + 63) >> 6;

              v57 = 0;
              while (v56)
              {
                v100 = __clz(__rbit64(v56));
                v101 = (v56 - 1) & v56;
LABEL_165:
                v104 = (*(v21 + 48) + 16 * (v100 | (v57 << 6)));
                v106 = *v104;
                v105 = v104[1];
                v107 = *(v6 + 40);
                sub_262A2A998();

                sub_262A2A448();
                v108 = sub_262A2A9D8();
                v109 = -1 << *(v6 + 32);
                v110 = v108 & ~v109;
                if (((*(v18 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
                {
                  goto LABEL_30;
                }

                v198 = v101;
                v111 = ~v109;
                while (1)
                {
                  v112 = (*(v6 + 48) + 16 * v110);
                  v113 = *v112 == v106 && v112[1] == v105;
                  if (v113 || (sub_262A2A878() & 1) != 0)
                  {
                    break;
                  }

                  v110 = (v110 + 1) & v111;
                  if (((*(v18 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
                  {
                    goto LABEL_30;
                  }
                }

                v3 = v207;
                v56 = v198;
              }

              v102 = v57;
              while (1)
              {
                v57 = v102 + 1;
                if (__OFADD__(v102, 1))
                {
                  break;
                }

                if (v57 >= v192)
                {
                  goto LABEL_3;
                }

                v103 = *(v21 + 56 + 8 * v57);
                ++v102;
                if (v103)
                {
                  v100 = __clz(__rbit64(v103));
                  v101 = (v103 - 1) & v103;
                  goto LABEL_165;
                }
              }

LABEL_269:
              __break(1u);
LABEL_270:
              __break(1u);
              goto LABEL_271;
            }
          }
        }

        else if (v22 == 9)
        {
          if (v19 == 9)
          {

            v32 = sub_2629D47AC(v31, v6);
            goto LABEL_107;
          }
        }

        else if (v19 == 10)
        {
          if (v21 == v6)
          {
LABEL_4:

            v1 = v204;
            v4 = v206;
            goto LABEL_5;
          }

          if (*(v21 + 16) == *(v6 + 16))
          {
            v68 = 1 << *(v21 + 32);
            if (v68 < 64)
            {
              v69 = ~(-1 << v68);
            }

            else
            {
              v69 = -1;
            }

            v70 = v69 & *(v21 + 56);
            v195 = (v68 + 63) >> 6;

            v71 = 0;
            while (v70)
            {
              v170 = __clz(__rbit64(v70));
              v171 = (v70 - 1) & v70;
LABEL_250:
              v174 = (*(v21 + 48) + 16 * (v170 | (v71 << 6)));
              v176 = *v174;
              v175 = v174[1];
              v177 = *(v6 + 40);
              sub_262A2A998();

              sub_262A2A448();
              v178 = sub_262A2A9D8();
              v179 = -1 << *(v6 + 32);
              v180 = v178 & ~v179;
              if (((*(v18 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v180) & 1) == 0)
              {
                goto LABEL_30;
              }

              v203 = v171;
              v181 = ~v179;
              while (1)
              {
                v182 = (*(v6 + 48) + 16 * v180);
                v183 = *v182 == v176 && v182[1] == v175;
                if (v183 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v180 = (v180 + 1) & v181;
                if (((*(v18 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v180) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              v3 = v207;
              v70 = v203;
            }

            v172 = v71;
            while (1)
            {
              v71 = v172 + 1;
              if (__OFADD__(v172, 1))
              {
                break;
              }

              if (v71 >= v195)
              {
                goto LABEL_3;
              }

              v173 = *(v21 + 56 + 8 * v71);
              ++v172;
              if (v173)
              {
                v170 = __clz(__rbit64(v173));
                v171 = (v173 - 1) & v173;
                goto LABEL_250;
              }
            }

LABEL_271:
            __break(1u);
LABEL_272:
            __break(1u);
            goto LABEL_273;
          }
        }
      }

      else if (v22 == 5)
      {
        if (v19 == 5)
        {
          if (v21 == v6)
          {
            goto LABEL_4;
          }

          if (*(v21 + 16) == *(v6 + 16))
          {
            v50 = 1 << *(v21 + 32);
            if (v50 < 64)
            {
              v51 = ~(-1 << v50);
            }

            else
            {
              v51 = -1;
            }

            v52 = v51 & *(v21 + 56);
            v191 = (v50 + 63) >> 6;

            v53 = 0;
            while (v52)
            {
              v86 = __clz(__rbit64(v52));
              v87 = (v52 - 1) & v52;
LABEL_148:
              v90 = (*(v21 + 48) + 16 * (v86 | (v53 << 6)));
              v92 = *v90;
              v91 = v90[1];
              v93 = *(v6 + 40);
              sub_262A2A998();

              sub_262A2A448();
              v94 = sub_262A2A9D8();
              v95 = -1 << *(v6 + 32);
              v96 = v94 & ~v95;
              if (((*(v18 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
              {
                goto LABEL_30;
              }

              v197 = v87;
              v97 = ~v95;
              while (1)
              {
                v98 = (*(v6 + 48) + 16 * v96);
                v99 = *v98 == v92 && v98[1] == v91;
                if (v99 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v96 = (v96 + 1) & v97;
                if (((*(v18 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              v3 = v207;
              v52 = v197;
            }

            v88 = v53;
            while (1)
            {
              v53 = v88 + 1;
              if (__OFADD__(v88, 1))
              {
                break;
              }

              if (v53 >= v191)
              {
                goto LABEL_3;
              }

              v89 = *(v21 + 56 + 8 * v53);
              ++v88;
              if (v89)
              {
                v86 = __clz(__rbit64(v89));
                v87 = (v89 - 1) & v89;
                goto LABEL_148;
              }
            }

LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
            goto LABEL_269;
          }
        }
      }

      else if (v22 == 6)
      {
        if (v19 == 6)
        {
          if (v21 == v6)
          {
            goto LABEL_4;
          }

          if (*(v21 + 16) == *(v6 + 16))
          {
            v23 = 1 << *(v21 + 32);
            if (v23 < 64)
            {
              v24 = ~(-1 << v23);
            }

            else
            {
              v24 = -1;
            }

            v25 = v24 & *(v21 + 56);
            v188 = (v23 + 63) >> 6;

            v26 = 0;
            while (v25)
            {
              v142 = __clz(__rbit64(v25));
              v143 = (v25 - 1) & v25;
LABEL_216:
              v146 = (*(v21 + 48) + 16 * (v142 | (v26 << 6)));
              v148 = *v146;
              v147 = v146[1];
              v149 = *(v6 + 40);
              sub_262A2A998();

              sub_262A2A448();
              v150 = sub_262A2A9D8();
              v151 = -1 << *(v6 + 32);
              v152 = v150 & ~v151;
              if (((*(v18 + ((v152 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v152) & 1) == 0)
              {
                goto LABEL_30;
              }

              v201 = v143;
              v153 = ~v151;
              while (1)
              {
                v154 = (*(v6 + 48) + 16 * v152);
                v155 = *v154 == v148 && v154[1] == v147;
                if (v155 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v152 = (v152 + 1) & v153;
                if (((*(v18 + ((v152 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v152) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              v3 = v207;
              v25 = v201;
            }

            v144 = v26;
            while (1)
            {
              v26 = v144 + 1;
              if (__OFADD__(v144, 1))
              {
                goto LABEL_270;
              }

              if (v26 >= v188)
              {
                goto LABEL_3;
              }

              v145 = *(v21 + 56 + 8 * v26);
              ++v144;
              if (v145)
              {
                v142 = __clz(__rbit64(v145));
                v143 = (v145 - 1) & v145;
                goto LABEL_216;
              }
            }
          }
        }
      }

      else if (v19 == 7)
      {
        if (v21 == v6)
        {
          goto LABEL_4;
        }

        if (*(v21 + 16) == *(v6 + 16))
        {
          v64 = 1 << *(v21 + 32);
          if (v64 < 64)
          {
            v65 = ~(-1 << v64);
          }

          else
          {
            v65 = -1;
          }

          v66 = v65 & *(v21 + 56);
          v194 = (v64 + 63) >> 6;

          v67 = 0;
          while (v66)
          {
            v156 = __clz(__rbit64(v66));
            v157 = (v66 - 1) & v66;
LABEL_233:
            v160 = (*(v21 + 48) + 16 * (v156 | (v67 << 6)));
            v162 = *v160;
            v161 = v160[1];
            v163 = *(v6 + 40);
            sub_262A2A998();

            sub_262A2A448();
            v164 = sub_262A2A9D8();
            v165 = -1 << *(v6 + 32);
            v166 = v164 & ~v165;
            if (((*(v18 + ((v166 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v166) & 1) == 0)
            {
              goto LABEL_30;
            }

            v202 = v157;
            v167 = ~v165;
            while (1)
            {
              v168 = (*(v6 + 48) + 16 * v166);
              v169 = *v168 == v162 && v168[1] == v161;
              if (v169 || (sub_262A2A878() & 1) != 0)
              {
                break;
              }

              v166 = (v166 + 1) & v167;
              if (((*(v18 + ((v166 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v166) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            v3 = v207;
            v66 = v202;
          }

          v158 = v67;
          while (1)
          {
            v67 = v158 + 1;
            if (__OFADD__(v158, 1))
            {
              break;
            }

            if (v67 >= v194)
            {
              goto LABEL_3;
            }

            v159 = *(v21 + 56 + 8 * v67);
            ++v158;
            if (v159)
            {
              v156 = __clz(__rbit64(v159));
              v157 = (v159 - 1) & v159;
              goto LABEL_233;
            }
          }

          __break(1u);
          goto LABEL_266;
        }
      }

      goto LABEL_31;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        if (v19 == 2)
        {
          if (v21 == v6)
          {
            goto LABEL_4;
          }

          if (*(v21 + 16) == *(v6 + 16))
          {
            v46 = 1 << *(v21 + 32);
            if (v46 < 64)
            {
              v47 = ~(-1 << v46);
            }

            else
            {
              v47 = -1;
            }

            v48 = v47 & *(v21 + 56);
            v190 = (v46 + 63) >> 6;

            v49 = 0;
            while (v48)
            {
              v72 = __clz(__rbit64(v48));
              v73 = (v48 - 1) & v48;
LABEL_131:
              v76 = (*(v21 + 48) + 16 * (v72 | (v49 << 6)));
              v78 = *v76;
              v77 = v76[1];
              v79 = *(v6 + 40);
              sub_262A2A998();

              sub_262A2A448();
              v80 = sub_262A2A9D8();
              v81 = -1 << *(v6 + 32);
              v82 = v80 & ~v81;
              if (((*(v18 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
              {
LABEL_30:

                v3 = v207;
                v17 = v208;
                v14 = v209;
                v19 = v210;
                goto LABEL_31;
              }

              v196 = v73;
              v83 = ~v81;
              while (1)
              {
                v84 = (*(v6 + 48) + 16 * v82);
                v85 = *v84 == v78 && v84[1] == v77;
                if (v85 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v82 = (v82 + 1) & v83;
                if (((*(v18 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              v3 = v207;
              v48 = v196;
            }

            v74 = v49;
            while (1)
            {
              v49 = v74 + 1;
              if (__OFADD__(v74, 1))
              {
                goto LABEL_267;
              }

              if (v49 >= v190)
              {
LABEL_3:

                goto LABEL_4;
              }

              v75 = *(v21 + 56 + 8 * v49);
              ++v74;
              if (v75)
              {
                v72 = __clz(__rbit64(v75));
                v73 = (v75 - 1) & v75;
                goto LABEL_131;
              }
            }
          }
        }
      }

      else if (v22 == 3)
      {
        if (v19 == 3)
        {
          if (v21 == v6)
          {
            goto LABEL_4;
          }

          if (*(v21 + 16) == *(v6 + 16))
          {
            v27 = 1 << *(v21 + 32);
            if (v27 < 64)
            {
              v28 = ~(-1 << v27);
            }

            else
            {
              v28 = -1;
            }

            v29 = v28 & *(v21 + 56);
            v189 = (v27 + 63) >> 6;

            v30 = 0;
            while (v29)
            {
              v114 = __clz(__rbit64(v29));
              v115 = (v29 - 1) & v29;
LABEL_182:
              v118 = (*(v21 + 48) + 16 * (v114 | (v30 << 6)));
              v120 = *v118;
              v119 = v118[1];
              v121 = *(v6 + 40);
              sub_262A2A998();

              sub_262A2A448();
              v122 = sub_262A2A9D8();
              v123 = -1 << *(v6 + 32);
              v124 = v122 & ~v123;
              if (((*(v18 + ((v124 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v124) & 1) == 0)
              {
                goto LABEL_30;
              }

              v199 = v115;
              v125 = ~v123;
              while (1)
              {
                v126 = (*(v6 + 48) + 16 * v124);
                v127 = *v126 == v120 && v126[1] == v119;
                if (v127 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v124 = (v124 + 1) & v125;
                if (((*(v18 + ((v124 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v124) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              v3 = v207;
              v29 = v199;
            }

            v116 = v30;
            while (1)
            {
              v30 = v116 + 1;
              if (__OFADD__(v116, 1))
              {
                goto LABEL_268;
              }

              if (v30 >= v189)
              {
                goto LABEL_3;
              }

              v117 = *(v21 + 56 + 8 * v30);
              ++v116;
              if (v117)
              {
                v114 = __clz(__rbit64(v117));
                v115 = (v117 - 1) & v117;
                goto LABEL_182;
              }
            }
          }
        }
      }

      else if (v19 == 4)
      {
        if (v21 == v6)
        {
          goto LABEL_4;
        }

        if (*(v21 + 16) == *(v6 + 16))
        {
          v58 = 1 << *(v21 + 32);
          if (v58 < 64)
          {
            v59 = ~(-1 << v58);
          }

          else
          {
            v59 = -1;
          }

          v60 = v59 & *(v21 + 56);
          v193 = (v58 + 63) >> 6;

          v61 = 0;
          while (v60)
          {
            v128 = __clz(__rbit64(v60));
            v129 = (v60 - 1) & v60;
LABEL_199:
            v132 = (*(v21 + 48) + 16 * (v128 | (v61 << 6)));
            v134 = *v132;
            v133 = v132[1];
            v135 = *(v6 + 40);
            sub_262A2A998();

            sub_262A2A448();
            v136 = sub_262A2A9D8();
            v137 = -1 << *(v6 + 32);
            v138 = v136 & ~v137;
            if (((*(v18 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138) & 1) == 0)
            {
              goto LABEL_30;
            }

            v200 = v129;
            v139 = ~v137;
            while (1)
            {
              v140 = (*(v6 + 48) + 16 * v138);
              v141 = *v140 == v134 && v140[1] == v133;
              if (v141 || (sub_262A2A878() & 1) != 0)
              {
                break;
              }

              v138 = (v138 + 1) & v139;
              if (((*(v18 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            v3 = v207;
            v60 = v200;
          }

          v130 = v61;
          while (1)
          {
            v61 = v130 + 1;
            if (__OFADD__(v130, 1))
            {
              goto LABEL_272;
            }

            if (v61 >= v193)
            {
              goto LABEL_3;
            }

            v131 = *(v21 + 56 + 8 * v61);
            ++v130;
            if (v131)
            {
              v128 = __clz(__rbit64(v131));
              v129 = (v131 - 1) & v131;
              goto LABEL_199;
            }
          }
        }
      }

      goto LABEL_31;
    }

    if (!v22)
    {
      break;
    }

    if (v19 == 1)
    {

      v32 = sub_2629D4314(v62, v6);
LABEL_107:
      v63 = v32;

      v17 = v208;
      v14 = v209;
      v19 = v210;
      if (v63)
      {
        goto LABEL_4;
      }
    }

LABEL_31:
    v12 = (v12 + 1) & v17;
    v13 = v12 >> 6;
    v15 = *(v14 + 8 * (v12 >> 6));
    v16 = 1 << v12;
    if ((v15 & (1 << v12)) == 0)
    {
      v1 = v204;
      v4 = v206;
      goto LABEL_261;
    }
  }

  if (v19)
  {
    goto LABEL_31;
  }

  if (v21 == v6)
  {
    goto LABEL_4;
  }

  if (*(v21 + 16) != *(v6 + 16))
  {
    goto LABEL_31;
  }

  v33 = 0;
  v34 = 1 << *(v21 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v21 + 56);
  v37 = (v34 + 63) >> 6;
  while (v36)
  {
    v38 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
LABEL_72:
    v41 = *(*(v21 + 48) + 8 * (v38 | (v33 << 6)));
    v42 = *(v6 + 40);
    result = sub_262A2A988();
    v43 = -1 << *(v6 + 32);
    v44 = result & ~v43;
    v17 = v208;
    v14 = v209;
    v19 = v210;
    if (((*(v18 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
      goto LABEL_31;
    }

    v45 = ~v43;
    while (*(*(v6 + 48) + 8 * v44) != v41)
    {
      v44 = (v44 + 1) & v45;
      if (((*(v18 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  v39 = v33;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v37)
    {
      goto LABEL_4;
    }

    v40 = *(v21 + 56 + 8 * v33);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v36 = (v40 - 1) & v40;
      goto LABEL_72;
    }
  }

LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
  return result;
}

uint64_t sub_262A14CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC78, &qword_262A30C40);
    v3 = sub_262A2A6D8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_262A2A998();
      MEMORY[0x26672F240](v10);
      result = sub_262A2A9D8();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_262A14DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC70, &qword_262A30C38);
    v3 = sub_262A2A6D8();
    v4 = 0;
    v5 = v3 + 56;
    v34 = v3;
    v35 = a1 + 32;
    v33 = v1;
    while (1)
    {
      v9 = v35 + 24 * v4;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v3 + 40);
      sub_262A2A998();
      MEMORY[0x26672F240](v12);

      sub_262A2A448();
      result = sub_262A2A9D8();
      v15 = v3;
      v16 = ~(-1 << *(v3 + 32));
      v17 = result & v16;
      v18 = (result & v16) >> 6;
      v19 = *(v5 + 8 * v18);
      v20 = 1 << (result & v16);
      v21 = *(v15 + 48);
      if ((v20 & v19) != 0)
      {
        do
        {
          v22 = v21 + 24 * v17;
          result = *v22;
          v23 = *(v22 + 8);
          v24 = *(v22 + 16);
          if (v24 > 1)
          {
            if (v24 == 2)
            {
              if (v12 == 2)
              {
                v26 = result == v11 && v23 == v10;
                if (v26 || (result = sub_262A2A878(), (result & 1) != 0))
                {
                  v6 = v11;
                  v7 = v10;
                  v8 = 2;
                  goto LABEL_4;
                }
              }
            }

            else if (v12 == 3)
            {
              v27 = result == v11 && v23 == v10;
              if (v27 || (result = sub_262A2A878(), (result & 1) != 0))
              {
                v6 = v11;
                v7 = v10;
                v8 = 3;
                goto LABEL_4;
              }
            }
          }

          else if (v24)
          {
            if (v12 == 1)
            {
              v25 = result == v11 && v23 == v10;
              if (v25 || (result = sub_262A2A878(), (result & 1) != 0))
              {
                v6 = v11;
                v7 = v10;
                v8 = 1;
LABEL_4:
                sub_2629B6A68(v6, v7, v8);
                v3 = v34;
                goto LABEL_5;
              }
            }
          }

          else if (!v12)
          {
            v28 = result == v11 && v23 == v10;
            if (v28 || (result = sub_262A2A878(), (result & 1) != 0))
            {
              v6 = v11;
              v7 = v10;
              v8 = 0;
              goto LABEL_4;
            }
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v5 + 8 * (v17 >> 6));
          v20 = 1 << v17;
        }

        while ((v19 & (1 << v17)) != 0);
        v3 = v34;
        v21 = *(v34 + 48);
      }

      else
      {
        v3 = v34;
      }

      *(v5 + 8 * v18) = v19 | v20;
      v29 = v21 + 24 * v17;
      *v29 = v11;
      *(v29 + 8) = v10;
      *(v29 + 16) = v12;
      v30 = *(v3 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v3 + 16) = v32;
LABEL_5:
      if (++v4 == v33)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_262A15074(uint64_t a1)
{
  v4 = *(type metadata accessor for SIDPersonalizedPlanRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2629A88B4;

  return sub_262A0C5E8(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SIDPersonalizedPlanRequest();
  v41 = *(*(v1 - 8) + 80);
  v38 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v39 = (v41 + 32) & ~v41;
  v3 = sub_262A2A018();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v39, v3);
  v40 = v1;
  v5 = v0 + v39 + *(v1 + 20);
  v6 = type metadata accessor for SIDActiveWorkoutPlan();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_262A29FD8();
    (*(*(v7 - 8) + 8))(v5, v7);
    v4(v5 + *(v6 + 20), v3);
    v8 = *(v5 + *(v6 + 24));
  }

  v9 = type metadata accessor for SIDPersonalizedPlanDataProvider();
  v10 = *(v5 + v9[5]);

  v11 = *(v5 + v9[6] + 8);

  v12 = *(v5 + v9[7]);

  v13 = (v5 + v9[8]);
  v14 = *v13;

  v15 = v13[3];

  v16 = type metadata accessor for SIDUserMetadata();
  v17 = *(v16 + 32);
  v18 = sub_262A2A168();
  v19 = *(*(v18 - 8) + 8);
  v19(v13 + v17, v18);
  v20 = *(v5 + v9[9]);

  v21 = v5 + v9[10];
  v22 = type metadata accessor for SIDUserOnboardingData();
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v23 = sub_262A29FD8();
    (*(*(v23 - 8) + 8))(v21, v23);
    v24 = *(v21 + *(v22 + 20));
  }

  v25 = (v38 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v5 + v9[11] + 8);

  v27 = *(v5 + v9[12] + 8);

  v28 = *(v5 + v9[13] + 8);

  v29 = *(v5 + v9[14] + 8);

  v30 = (v5 + v9[15]);
  v31 = *v30;

  v32 = v30[3];

  v19(v30 + *(v16 + 32), v18);
  v33 = *(v5 + v9[16] + 8);

  v34 = *(v5 + v9[17] + 8);

  v35 = *(v0 + v39 + *(v40 + 28) + 8);

  v36 = *(v0 + v25);

  return MEMORY[0x2821FE8E8](v0, v25 + 8, v41 | 7);
}

uint64_t sub_262A15544(uint64_t a1)
{
  v4 = *(type metadata accessor for SIDPersonalizedPlanRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2629E4964;

  return sub_262A0C0F0(a1, v6, v7, v1 + v5);
}

uint64_t sub_262A15664(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2629E4964;

  return sub_262A0FED8(a1, v5);
}

uint64_t sub_262A1571C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_262A15754(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2629A88B4;

  return sub_262A0FED8(a1, v5);
}

unint64_t sub_262A1580C()
{
  result = qword_27FF3CC30;
  if (!qword_27FF3CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CC30);
  }

  return result;
}

uint64_t sub_262A15860(uint64_t a1)
{
  v2 = sub_262A2A108();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC58, &qword_262A30C30);
    v10 = sub_262A2A6D8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_262A15D00(&qword_27FF3CC60);
      v18 = sub_262A2A378();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_262A15D00(&qword_27FF3CC68);
          v25 = sub_262A2A3B8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_262A15BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A15C14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262A15C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A15D00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_262A2A108();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262A15D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_262A2A328();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_262A15E4C, 0, 0);
}

uint64_t sub_262A15E4C()
{
  v1 = v0[12];
  sub_262A2A318();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_262A15EEC;
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  return sub_262A16270(v6, v5, v3);
}

uint64_t sub_262A15EEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[13];
  v8 = *v2;
  v4[14] = v1;

  if (v1)
  {
    v6 = sub_262A161E8;
  }

  else
  {
    v6 = sub_262A16008;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_262A16008()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_262A2A318();
  v5 = sub_262A2A308();
  v6 = sub_262A2A308();
  v7 = *(v4 + 8);
  v7(v2, v3);
  result = (v7)(v1, v3);
  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 112);
    v10 = *(v0 + 64);
    v11 = (v5 - v6) / 1000000.0;
    v12 = *(v10 + *(type metadata accessor for CatalogMetadataService() + 20));
    *(v0 + 120) = 1;
    v13 = *(v12 + 16);
    v14 = swift_task_alloc();
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
    *(v14 + 32) = 0;
    *(v14 + 40) = v0 + 120;
    v15 = swift_task_alloc();
    *(v15 + 16) = sub_2629B3A78;
    *(v15 + 24) = v14;

    os_unfair_lock_lock(v13 + 4);
    sub_2629B3A9C(v16);
    if (v9)
    {
      os_unfair_lock_unlock(v13 + 4);
    }

    else
    {
      v17 = *(v0 + 24);
      v19 = *(v0 + 88);
      v18 = *(v0 + 96);
      os_unfair_lock_unlock(v13 + 4);

      v20 = *(v0 + 8);

      return v20(v17);
    }
  }

  return result;
}

uint64_t sub_262A161E8()
{
  v1 = v0[11];
  (*(v0[10] + 8))(v0[12], v0[9]);

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_262A16270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2822009F8](sub_262A16294, 0, 0);
}

uint64_t sub_262A16294()
{
  v1 = v0[19];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC88, &unk_262A30CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2B290;
  *(inited + 32) = v1;
  *(inited + 40) = 10;

  v4 = sub_262A13C94(inited);
  v0[21] = v4;
  swift_setDeallocating();
  sub_262A168EC(inited + 32);
  v0[8] = MEMORY[0x277D84FA0];
  v0[9] = v4;
  v0[10] = 0;
  v5 = MEMORY[0x277D84F90];
  v0[11] = 0;
  v0[12] = v5;
  v10 = (v2 + *v2);
  v6 = v2[1];
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_262A16418;
  v8 = v0[18];

  return v10(v0 + 8);
}

uint64_t sub_262A16418(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_262A16674;
  }

  else
  {
    v8 = *(v4 + 168);

    *(v4 + 192) = a1;
    v7 = sub_262A16564;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_262A16564()
{
  v1 = v0[24];
  v2 = v0[20];
  sub_262A2A6F8();

  v0[16] = *(v1 + 16);
  v3 = sub_262A2A868();
  MEMORY[0x26672ECF0](v3);

  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A33DC0);
  sub_2629EA8C8(0x20676E6974746547, 0xE800000000000000);

  v4 = v0[1];
  v5 = v0[24];

  return v4(v5);
}

uint64_t sub_262A16674()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);

  v4 = *(v3 + *(type metadata accessor for CatalogMetadataService() + 20));
  *(v0 + 200) = 1;
  v5 = *(v4 + 16);
  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v0 + 200;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_2629B3BF4;
  *(v7 + 24) = v6;

  os_unfair_lock_lock(v5 + 4);
  sub_2629B3C0C(v8);
  v9 = *(v0 + 184);
  v10 = *(v0 + 160);
  os_unfair_lock_unlock(v5 + 4);

  sub_262A2A6F8();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD000000000000022, 0x8000000262A33D90);
  *(v0 + 120) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 104), *(v0 + 112));

  sub_262A16940();
  swift_allocError();
  *v11 = 2;
  swift_willThrow();
  MEMORY[0x26672F6A0](v9);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t type metadata accessor for CatalogMetadataService()
{
  result = qword_27FF3CC98;
  if (!qword_27FF3CC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_262A16940()
{
  result = qword_27FF3CC90;
  if (!qword_27FF3CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CC90);
  }

  return result;
}

uint64_t sub_262A169A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistentLogger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_262A16A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersistentLogger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_262A16B30(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResultPostProcessor();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlanGenerationContext();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersistentLogger();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = sub_262A17A1C(0);
  sub_262A17B14(0, v16);
  sub_262A17F9C(v16, v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);
  *(v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_operationTracker) = sub_262A17CDC(0);
  sub_262A17DD4(0, v12);
  sub_262A17F9C(v12, v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  sub_262A17B14(0, v8);
  *&v8[v5[7]] = sub_262A17CDC(0);
  sub_262A17DD4(0, &v8[v5[8]]);
  *&v8[v5[9]] = a1;
  sub_262A17F9C(v8, v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);
  return v2;
}

uint64_t sub_262A16D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
  v4[26] = PlanScaffold;
  v7 = *(*(PlanScaffold - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v8 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v4[28] = v8;
  v9 = *(v8 - 8);
  v4[29] = v9;
  v10 = *(v9 + 64) + 15;
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_262A16E68, 0, 0);
}

uint64_t sub_262A16E68()
{
  v62 = v0;
  v1 = v0[30];
  v41 = v0[28];
  v46 = v0[27];
  v53 = v0[26];
  v50 = v0[29];
  v52 = v0[25];
  v59 = v0[23];
  v55 = v0[22];
  v57 = v0[21];
  v2 = v0[24];
  v58 = v2;
  sub_2629EA8C8(0xD000000000000044, 0x8000000262A33F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF28, &qword_262A2B3D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_262A2E460;
  *(v3 + 32) = 0x3932343038373431;
  *(v3 + 40) = 0xEA00000000003238;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 48) = MEMORY[0x277D84F90];
  *(v3 + 56) = v4;
  *(v3 + 64) = v4;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x3932343038373431;
  *(v3 + 88) = 0xEA00000000003538;
  *(v3 + 96) = v4;
  *(v3 + 104) = v4;
  *(v3 + 112) = v4;
  *(v3 + 120) = v4;
  *(v3 + 128) = 0x3932343038373431;
  *(v3 + 136) = 0xEA00000000003338;
  *(v3 + 144) = v4;
  *(v3 + 152) = v4;
  v5 = v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_planGenerationContext;
  v39 = v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_planGenerationContext;
  *(v3 + 160) = v4;
  *(v3 + 168) = v4;
  v47 = type metadata accessor for PlanGenerationContext();
  v40 = *(v5 + *(v47 + 116));
  v56 = sub_262A14CA8(&unk_287533850);
  v44 = sub_262A14DE4(&unk_287533878);
  sub_262A18174(&unk_287533898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD20, &unk_262A30D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2E460;
  *(inited + 48) = 0u;
  *(inited + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEE0, &qword_262A2B388);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_262A2B290;
  v8 = MEMORY[0x277D84FA0];
  *(v7 + 32) = 10;
  *(v7 + 40) = v8;
  *(v7 + 48) = 0x3932343038373431;
  *(v7 + 56) = 0xEA00000000003238;
  *(inited + 64) = v7;
  *(inited + 72) = 2;
  *(inited + 88) = 0;
  *(inited + 96) = 0;
  *(inited + 80) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_262A2B290;
  *(v9 + 32) = 10;
  *(v9 + 40) = v8;
  *(v9 + 48) = 0x3932343038373431;
  *(v9 + 56) = 0xEA00000000003538;
  *(inited + 104) = v9;
  *(inited + 112) = 5;
  *(inited + 128) = 0;
  *(inited + 136) = 0;
  *(inited + 120) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_262A2B290;
  *(v10 + 32) = 10;
  *(v10 + 40) = v44;
  *(v10 + 48) = 0x3932343038373431;
  *(v10 + 56) = 0xEA00000000003338;
  *(inited + 144) = v10;
  v11 = sub_2629AC204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CD30, &unk_262A30D70);
  swift_arrayDestroy();
  LOBYTE(v60) = 0;
  v12 = sub_262A04710(&v60, v59);
  v14 = v13;
  v15 = *(v47 + 24);
  v16 = *(v41 + 32);
  v43 = sub_262A2A018();
  v48 = *(v43 - 8);
  v45 = *(v48 + 16);
  v45(&v1->i8[v16], v39 + v15, v43);
  v17 = *(v41 + 36);

  sub_262A2A008();
  v1[1] = vdupq_n_s64(0xAuLL);
  v1[2].i64[0] = v3;
  v1[2].i64[1] = 10;
  v1[3].i64[0] = v40;
  v1[3].i64[1] = v56;
  v1->i64[0] = v12;
  v1->i64[1] = v14;
  v1[4].i8[0] = 0;
  v1[4].i64[1] = v11;
  v60 = 0;
  v61 = 0xE000000000000000;

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000035, 0x8000000262A33FB0);
  v18 = SIDPersonalizedWorkoutPlan.description.getter();
  MEMORY[0x26672ECF0](v18);

  sub_2629EA8C8(v60, v61);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF38, &unk_262A2B3E0);
  v19 = type metadata accessor for SIDWorkoutPlanType();
  v20 = *(*(v19 - 8) + 72);
  v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_262A2EA00;
  v23 = v22 + v21;
  sub_262A181C8(v1, v22 + v21);
  v24 = *(v50 + 56);
  v24(v23, 0, 1, v41);
  v24(v23 + v20, 1, 1, v41);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_262A2A6F8();

  v60 = 0xD000000000000011;
  v61 = 0x8000000262A33FF0;
  v25 = MEMORY[0x26672EDD0](v22, v19);
  MEMORY[0x26672ECF0](v25);

  sub_2629EA8C8(v60, v61);

  v26 = type metadata accessor for FitnessPlanUser();
  v27 = *(v59 + *(v26 + 36));
  v28 = v57 + *(type metadata accessor for SIDPersonalizedPlanResponse() + 20);
  sub_262A2A008();
  v29 = *(v59 + *(v26 + 32));
  v30 = type metadata accessor for SIDMetrics();
  *&v28[*(v30 + 20)] = v27;
  *&v28[*(v30 + 24)] = v29;
  *v57 = v22;
  v60 = 0;
  v61 = 0xE000000000000000;

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A34010);
  sub_262A1FD14(v57);
  sub_2629EA8C8(v60, v61);

  sub_2629EA8C8(0xD00000000000001DLL, 0x8000000262A34030);
  v51 = sub_2629AC344(MEMORY[0x277D84F90]);

  v42 = sub_262A26C70(v31);

  v45(v52, v1->i64 + v16, v43);
  v32 = *(v48 + 56);
  v32(v52, 0, 1, v43);
  v60 = v11;
  v33 = SIDWorkoutPlanSchedule.metricScaffold.getter();

  v34 = sub_2629E6220(v33);

  v35 = v53[12];
  v32(v46 + v35, 1, 1, v43);
  v36 = v53[14];
  v49 = v46 + v53[13];
  v32(v46 + v36, 1, 1, v43);
  *v46 = v51;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  *(v46 + 24) = v42;
  sub_2629BEB44(v52, v46 + v35);
  *(v46 + 32) = 0;
  *(v46 + v53[15]) = v34;
  *(v46 + 40) = 0;
  *(v46 + 48) = 0;
  *(v46 + v53[16]) = 10;
  *(v46 + 49) = 0;
  *(v46 + 56) = v56;
  sub_2629ADF2C(v46 + v36, &unk_27FF3CD10, &qword_262A2D5B0);
  v32(v46 + v36, 1, 1, v43);

  sub_2629ADF2C(v52, &unk_27FF3CD10, &qword_262A2D5B0);
  *(v46 + v53[17]) = MEMORY[0x277D84F90];
  *v49 = 0;
  *(v49 + 8) = 1;
  sub_262A09FD0(*(v58 + 16), v55, v59, v57, v46);
  sub_262A1822C(v1, type metadata accessor for SIDPersonalizedWorkoutPlan);
  sub_262A1822C(v46, type metadata accessor for SIDMetricCreatePlanScaffold);

  v37 = *(v54 + 8);

  return v37();
}

uint64_t sub_262A17720()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_262A1822C(v0 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);
  v2 = *(v0 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_operationTracker);

  sub_262A1822C(v0 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  sub_262A1822C(v0 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ColdStartUserWorkoutPlanStrategy()
{
  result = qword_27FF3CCD8;
  if (!qword_27FF3CCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A1784C()
{
  result = type metadata accessor for PersistentLogger();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for PlanGenerationContext();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for ResultPostProcessor();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_262A17968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2629A88B4;

  return sub_262A16D3C(a1, a2, a3);
}

uint64_t sub_262A17A1C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CD08, &qword_262A30D58);
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_2629CB210(v3), (v6 & 1) != 0))
  {
    sub_2629ADE10(*(v4 + 56) + 32 * v5, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = sub_262A18118;
  }

  v9 = sub_2629ADEAC(a1);
  (v8)(v11, v9);

  return *&v11[0];
}

uint64_t sub_262A17B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CD00, &qword_262A30D50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for PersistentLogger();
  v10 = v9;
  v11 = *(v2 + 16);
  if (*(v11 + 16) && (v12 = sub_2629CB210(v9), (v13 & 1) != 0))
  {
    sub_2629ADE10(*(v11 + 56) + 32 * v12, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  v14 = swift_dynamicCast();
  v15 = *(*(v10 - 8) + 56);
  if (v14)
  {
    v15(v8, 0, 1, v10);
    return sub_262A17F9C(v8, a2, type metadata accessor for PersistentLogger);
  }

  else
  {
    v15(v8, 1, 1, v10);
    sub_2629ADF2C(v8, &qword_27FF3CD00, &qword_262A30D50);
    if (a1)
    {
      v17 = a1;
    }

    else
    {
      v17 = sub_262A18004;
    }

    v18 = sub_2629ADEAC(a1);
    (v17)(v18);
  }
}

uint64_t sub_262A17CDC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE80, &qword_262A2B2B0);
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_2629CB210(v3), (v6 & 1) != 0))
  {
    sub_2629ADE10(*(v4 + 56) + 32 * v5, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = sub_262A180BC;
  }

  v9 = sub_2629ADEAC(a1);
  (v8)(v11, v9);

  return *&v11[0];
}

uint64_t sub_262A17DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CCE8, &qword_262A30D48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for PlanGenerationContext();
  v10 = v9;
  v11 = *(v2 + 16);
  if (*(v11 + 16) && (v12 = sub_2629CB210(v9), (v13 & 1) != 0))
  {
    sub_2629ADE10(*(v11 + 56) + 32 * v12, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  v14 = swift_dynamicCast();
  v15 = *(*(v10 - 8) + 56);
  if (v14)
  {
    v15(v8, 0, 1, v10);
    return sub_262A17F9C(v8, a2, type metadata accessor for PlanGenerationContext);
  }

  else
  {
    v15(v8, 1, 1, v10);
    sub_2629ADF2C(v8, &qword_27FF3CCE8, &qword_262A30D48);
    if (a1)
    {
      v17 = a1;
    }

    else
    {
      v17 = sub_262A18060;
    }

    v18 = sub_2629ADEAC(a1);
    (v17)(v18);
  }
}

uint64_t sub_262A17F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A181C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262A1822C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262A1828C()
{
  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness34DefaultStretchPlanDurationStrategy_logger, type metadata accessor for PersistentLogger);
  v1 = *(v0 + OBJC_IVAR____TtC10SIDFitness34DefaultStretchPlanDurationStrategy_operationTracker);

  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness34DefaultStretchPlanDurationStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DefaultStretchPlanDurationStrategy()
{
  result = qword_27FF3CD50;
  if (!qword_27FF3CD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A1838C()
{
  result = type metadata accessor for PersistentLogger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for PlanGenerationContext();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_262A18464()
{
  v1 = *v0 + OBJC_IVAR____TtC10SIDFitness34DefaultStretchPlanDurationStrategy_logger;
  sub_2629EA8B0(0xD00000000000002ELL, 0x8000000262A34090);
  return MEMORY[0x277D84F90];
}

uint64_t sub_262A184BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_262A1851C(char *a1, void *a2)
{
  v94 = a2;
  v102 = sub_262A29FD8();
  v4 = *(v102 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v102);
  v91 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CD88, &unk_262A30E00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v100 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v101 = v84 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v84 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v98 = (v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v93 = v84 - v23;
  v24 = *(a1 + 2);
  v88 = a1;
  v103 = v21;
  v95 = v22;
  v106 = v24;
  v85 = v4;
  if (v24)
  {
    v25 = 0;
    v86 = (v4 + 16);
    v92 = v4 + 32;
    v96 = v22 + 48;
    v97 = (v22 + 56);
    v26 = (a1 + 56);
    v27 = MEMORY[0x277D84F90];
    do
    {
      v28 = v27;
      v29 = *(v26 - 2);
      v99 = *(v26 - 3);
      v2 = *(v26 - 1);
      v30 = *v26;
      swift_bridgeObjectRetain_n();

      v31 = _s10SIDFitness18SIDWorkoutModalityO8rawValueACSgSS_tcfC_0();
      if (v31 != 14 && v94[2] && (v32 = v31, v33 = sub_2629CB1E4(v31), (v34 & 1) != 0) && (v35 = *(v94[7] + 8 * v33), *(v35 + 16)))
      {
        v36 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
        (*v86)(v91, v35 + *(v36 + 24) + ((*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80)), v102);
        v37 = *v92;
        (*v92)(v90, v91, v102);
        v38 = v37;
        v39 = v102;
        v40 = v103[12];
        v41 = &v16[v103[16]];
        v89 = v103[20];
        *v16 = v25;
        v38(&v16[v40], v90, v39);
        *v41 = v99;
        v41[1] = v29;
        v41[2] = v2;
        v41[3] = v30;
        if (v32 > 0xDu)
        {
          v42 = 100;
        }

        else
        {
          v42 = qword_262A30E10[v32];
        }

        *&v16[v89] = v42;
        v17 = v103;
        (*v97)(v16, 0, 1, v103);
      }

      else
      {
        v17 = v103;
        (*v97)(v16, 1, 1, v103);
      }

      v27 = v28;
      if ((*v96)(v16, 1, v17) == 1)
      {
        sub_2629ADF2C(v16, &qword_27FF3CD88, &unk_262A30E00);
      }

      else
      {
        v43 = v93;
        sub_2629E2E14(v16, v93, &qword_27FF3C050, &qword_262A2B4F8);
        sub_2629E2E14(v43, v98, &qword_27FF3C050, &qword_262A2B4F8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_2629A94AC(0, v28[2] + 1, 1, v28);
        }

        v45 = v27[2];
        v44 = v27[3];
        if (v45 >= v44 >> 1)
        {
          v27 = sub_2629A94AC(v44 > 1, v45 + 1, 1, v27);
        }

        v27[2] = v45 + 1;
        sub_2629E2E14(v98, v27 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v45, &qword_27FF3C050, &qword_262A2B4F8);
      }

      ++v25;
      v26 += 4;
    }

    while (v106 != v25);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v104 = v27;

  v46 = v84[1];
  sub_262A190D4(&v104);
  v47 = v46;
  if (v46)
  {
LABEL_64:
    MEMORY[0x26672F6A0](v47);

    __break(1u);
LABEL_65:
    os_unfair_lock_unlock(v47 + 4);
    __break(1u);
  }

  else
  {

    v48 = 0;
    v94 = v104;
    v49 = v106 + 1;
    v50 = 32;
    v52 = v100;
    v51 = v101;
    v53 = v85;
    while (--v49)
    {
      v54 = *&v88[v50];
      v50 += 32;
      v55 = __OFADD__(v48, v54);
      v48 += v54;
      if (v55)
      {
        __break(1u);
        break;
      }
    }

    v91 = 0;
    v56 = 0;
    v93 = v87 + OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_planGenerationContext;
    v57 = v94[2];
    v98 = (v95 + 48);
    v99 = (v95 + 56);
    v97 = (v53 + 8);
    while (1)
    {
      if (v56 == v57)
      {
        v58 = 1;
        v56 = v57;
      }

      else
      {
        if ((v56 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v56 >= v94[2])
        {
          goto LABEL_56;
        }

        sub_262A1A6F0(v94 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v56, v52);
        v58 = 0;
        ++v56;
      }

      (*v99)(v52, v58, 1, v17);
      sub_2629E2E14(v52, v51, &qword_27FF3CD88, &unk_262A30E00);
      if ((*v98)(v51, 1, v17) == 1)
      {
        break;
      }

      v96 = *v51;
      v106 = *(v17 + 48);
      v59 = (v51 + *(v17 + 64));
      v60 = *v59;
      v17 = v59[1];
      v47 = v59[2];
      v52 = v59[3];

      v2 = sub_262A2A788();

      if (v2 <= 0xD)
      {
        v92 = type metadata accessor for PlanGenerationContext();
        v61 = *(v93 + *(v92 + 92));
        if (*(v61 + 16))
        {
          v62 = sub_2629CB1E4(v2);
          if (v63)
          {
            v64 = *(*(v61 + 56) + 8 * v62);
            v65 = *(v64 + 16);
            if (v65)
            {
              v66 = 0;
              v67 = v64 + 32;
              while (*(v67 + 8 * v66) != v60)
              {
                if (v65 == ++v66)
                {
                  goto LABEL_28;
                }
              }

              v55 = __OFADD__(v66, 1);
              v68 = v66 + 1;
              if (v55)
              {
                goto LABEL_57;
              }

              if (v68 < v65)
              {
                if (v68 < 0)
                {
                  goto LABEL_58;
                }

                v2 = *(v67 + 8 * v68);
                v69 = v2 - v60;
                if (__OFSUB__(v2, v60))
                {
                  goto LABEL_59;
                }

                v55 = __OFADD__(v48, v69);
                v70 = v48 + v69;
                if (v55)
                {
                  goto LABEL_60;
                }

                if (*(v93 + *(v92 + 52)) >= v70)
                {

                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
LABEL_50:
                    if ((v96 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                    }

                    else if (v96 < *(v88 + 2))
                    {
                      v71 = &v88[32 * v96];
                      v72 = *(v71 + 5);
                      v73 = *(v71 + 7);
                      *(v71 + 4) = v2;
                      *(v71 + 5) = v17;
                      *(v71 + 6) = v47;
                      *(v71 + 7) = v52;

                      (*v97)(&v101[v106], v102);
                      return;
                    }

                    __break(1u);
                    goto LABEL_64;
                  }

LABEL_61:
                  v88 = sub_262A1F240(v88);
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }

LABEL_28:

      v51 = v101;
      (*v97)(&v101[v106], v102);
      v52 = v100;
      v17 = v103;
    }

    v104 = 0;
    v105 = 0xE000000000000000;
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD00000000000003ALL, 0x8000000262A34100);
    v74 = MEMORY[0x26672EDD0](v88, &type metadata for SIDWorkoutPlanScheduledItem);
    MEMORY[0x26672ECF0](v74);

    MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A34140);
    v75 = v87;
    sub_2629EA8C8(v104, v105);

    v76 = *(v75 + OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_operationTracker);
    sub_2629B3A24();
    v77 = swift_allocError();
    *v78 = 8;
    LOBYTE(v104) = 8;
    v47 = *(v76 + 16);
    v79 = MEMORY[0x28223BE20](v77);
    v84[-4] = v76;
    v84[-3] = 0;
    v84[-2] = v79;
    v84[-1] = &v104;
    MEMORY[0x28223BE20](v79);
    v84[-2] = sub_2629B3A78;
    v84[-1] = v80;

    os_unfair_lock_lock(v47 + 4);
    v81 = v91;
    sub_2629B3A9C(v82);
    if (v81)
    {
      goto LABEL_65;
    }

    os_unfair_lock_unlock(v47 + 4);

    MEMORY[0x26672F6A0](v77);
    swift_allocError();
    *v83 = 8;
    swift_willThrow();
  }
}

uint64_t sub_262A18FB0()
{
  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_logger, type metadata accessor for PersistentLogger);
  v1 = *(v0 + OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_operationTracker);

  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EstablishedUserStretchPlanDurationStrategy()
{
  result = qword_27FF3CD78;
  if (!qword_27FF3CD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A190D4(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_262A1F3CC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_262A19188(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_262A19188(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_262A2A858();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
        v6 = sub_262A2A548();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_262A19530(v8, v9, a1, v4);
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
    return sub_262A192CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_262A192CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  v8 = *(*(v40 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v38 = v18;
    v32 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v23;
    v35 = v22;
    while (1)
    {
      sub_262A1A6F0(v23, v17);
      sub_262A1A6F0(v20, v13);
      v24 = *(v40 + 80);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      if (v25 == v26)
      {
        v27 = *(v40 + 48);
        v28 = sub_262A29F98();
      }

      else
      {
        v28 = v25 < v26;
      }

      sub_2629ADF2C(v13, &qword_27FF3C050, &qword_262A2B4F8);
      result = sub_2629ADF2C(v17, &qword_27FF3C050, &qword_262A2B4F8);
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v22 = v35 - 1;
        v23 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = v39;
      sub_2629E2E14(v23, v39, &qword_27FF3C050, &qword_262A2B4F8);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2629E2E14(v29, v20, &qword_27FF3C050, &qword_262A2B4F8);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_262A19530(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  v141 = *(v8 - 8);
  v9 = *(v141 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v135 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v146 = &v126 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v126 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v147 = &v126 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v143 = &v126 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v128 = &v126 - v22;
  result = MEMORY[0x28223BE20](v21);
  v127 = &v126 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_103:
    a4 = *v132;
    if (!*v132)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v149 = v28;
      v121 = *(v28 + 16);
      if (v121 >= 2)
      {
        while (*a3)
        {
          v122 = v28;
          v28 = v121 - 1;
          v123 = *&v122[16 * v121];
          v124 = *&v122[16 * v121 + 24];
          sub_262A19F68(*a3 + *(v141 + 72) * v123, *a3 + *(v141 + 72) * *&v122[16 * v121 + 16], *a3 + *(v141 + 72) * v124, a4);
          if (v5)
          {
          }

          if (v124 < v123)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = sub_262A1F22C(v122);
          }

          if (v121 - 2 >= *(v122 + 2))
          {
            goto LABEL_129;
          }

          v125 = &v122[16 * v121];
          *v125 = v123;
          *(v125 + 1) = v124;
          v149 = v122;
          result = sub_262A1F1A0(v28);
          v28 = v149;
          v121 = *(v149 + 16);
          if (v121 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_262A1F22C(v28);
    v28 = result;
    goto LABEL_105;
  }

  v138 = v24;
  v126 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v142 = a3;
  v137 = v8;
  while (1)
  {
    v29 = v27++;
    if (v27 < v26)
    {
      v139 = v26;
      v30 = *a3;
      v31 = *(v141 + 72);
      v32 = v127;
      sub_262A1A6F0(*a3 + v31 * v27, v127);
      v144 = v31;
      v33 = v30 + v31 * v29;
      v34 = v128;
      sub_262A1A6F0(v33, v128);
      v35 = *(v8 + 80);
      v36 = *(v32 + v35);
      v37 = *(v34 + v35);
      v130 = v5;
      if (v36 == v37)
      {
        v38 = *(v8 + 48);
        v39 = sub_262A29F98();
        v34 = v128;
        LODWORD(v140) = v39;
      }

      else
      {
        LODWORD(v140) = v36 < v37;
      }

      v129 = v28;
      sub_2629ADF2C(v34, &qword_27FF3C050, &qword_262A2B4F8);
      result = sub_2629ADF2C(v32, &qword_27FF3C050, &qword_262A2B4F8);
      v131 = v29;
      v40 = (v29 + 2);
      v41 = v144 * (v29 + 2);
      v42 = v30 + v41;
      v43 = v144 * v27;
      a4 = v30 + v144 * v27;
      do
      {
        a3 = v40;
        v45 = v27;
        v28 = v43;
        v5 = v41;
        if (v40 >= v139)
        {
          break;
        }

        v145 = v40;
        v46 = v8;
        v47 = v138;
        sub_262A1A6F0(v42, v138);
        v48 = v143;
        sub_262A1A6F0(a4, v143);
        v49 = v48;
        v50 = *(v46 + 80);
        v51 = *(v47 + v50);
        v52 = *(v48 + v50);
        if (v51 == v52)
        {
          v53 = *(v46 + 48);
          v54 = sub_262A29F98();
          v49 = v143;
          v44 = v54;
        }

        else
        {
          v44 = v51 < v52;
        }

        sub_2629ADF2C(v49, &qword_27FF3C050, &qword_262A2B4F8);
        result = sub_2629ADF2C(v47, &qword_27FF3C050, &qword_262A2B4F8);
        a3 = v145;
        v40 = (v145 + 1);
        v42 += v144;
        a4 += v144;
        ++v27;
        v43 = v28 + v144;
        v41 = v5 + v144;
        v8 = v137;
      }

      while ((v140 & 1) == v44);
      if (v140)
      {
        v55 = v131;
        if (a3 < v131)
        {
          goto LABEL_132;
        }

        if (v131 >= a3)
        {
          v27 = a3;
          v28 = v129;
          v5 = v130;
          a3 = v142;
          v29 = v131;
          goto LABEL_30;
        }

        v56 = v131 * v144;
        do
        {
          if (v55 != v45)
          {
            a4 = *v142;
            if (!*v142)
            {
              goto LABEL_138;
            }

            sub_2629E2E14(a4 + v56, v135, &qword_27FF3C050, &qword_262A2B4F8);
            if (v56 < v28 || a4 + v56 >= a4 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_2629E2E14(v135, a4 + v28, &qword_27FF3C050, &qword_262A2B4F8);
          }

          ++v55;
          v28 -= v144;
          v5 -= v144;
          v56 += v144;
        }

        while (v55 < v45--);
      }

      v27 = a3;
      v28 = v129;
      v5 = v130;
      a3 = v142;
      v29 = v131;
    }

LABEL_30:
    v58 = a3[1];
    if (v27 < v58)
    {
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_131;
      }

      if (v27 - v29 < v126)
      {
        break;
      }
    }

LABEL_51:
    if (v27 < v29)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    a4 = *(v28 + 16);
    v76 = *(v28 + 24);
    v77 = a4 + 1;
    if (a4 >= v76 >> 1)
    {
      result = sub_2629A8DAC((v76 > 1), a4 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v77;
    v78 = v28 + 16 * a4;
    *(v78 + 32) = v29;
    *(v78 + 40) = v27;
    if (!*v132)
    {
      goto LABEL_140;
    }

    if (a4)
    {
      a3 = *v132;
      while (1)
      {
        a4 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v79 = *(v28 + 32);
          v80 = *(v28 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_72:
          if (v82)
          {
            goto LABEL_119;
          }

          v95 = (v28 + 16 * v77);
          v97 = *v95;
          v96 = v95[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_122;
          }

          v101 = (v28 + 32 + 16 * a4);
          v103 = *v101;
          v102 = v101[1];
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_126;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              a4 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v105 = (v28 + 16 * v77);
        v107 = *v105;
        v106 = v105[1];
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_86:
        if (v100)
        {
          goto LABEL_121;
        }

        v108 = v28 + 16 * a4;
        v110 = *(v108 + 32);
        v109 = *(v108 + 40);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_124;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_93:
        v116 = a4 - 1;
        if (a4 - 1 >= v77)
        {
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
          goto LABEL_134;
        }

        if (!*v142)
        {
          goto LABEL_137;
        }

        v117 = v28;
        v118 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v116);
        v119 = *(v118 + 16 * a4 + 8);
        sub_262A19F68(*v142 + *(v141 + 72) * v28, *v142 + *(v141 + 72) * *(v118 + 16 * a4), *v142 + *(v141 + 72) * v119, a3);
        if (v5)
        {
        }

        if (v119 < v28)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_262A1F22C(v117);
        }

        if (v116 >= *(v117 + 2))
        {
          goto LABEL_116;
        }

        v120 = &v117[16 * v116];
        *(v120 + 4) = v28;
        *(v120 + 5) = v119;
        v149 = v117;
        result = sub_262A1F1A0(a4);
        v28 = v149;
        v77 = *(v149 + 16);
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = v28 + 32 + 16 * v77;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_117;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_118;
      }

      v90 = (v28 + 16 * v77);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_120;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_123;
      }

      if (v94 >= v86)
      {
        v112 = (v28 + 32 + 16 * a4);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_127;
        }

        if (v81 < v115)
        {
          a4 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    a3 = v142;
    v26 = v142[1];
    if (v27 >= v26)
    {
      goto LABEL_103;
    }
  }

  v59 = v29 + v126;
  if (__OFADD__(v29, v126))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v29)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v27 == v59)
  {
    goto LABEL_51;
  }

  v129 = v28;
  v130 = v5;
  v60 = *a3;
  v61 = *(v141 + 72);
  v62 = *a3 + v61 * (v27 - 1);
  v63 = v29;
  v64 = -v61;
  v131 = v63;
  v65 = v63 - v27;
  v144 = v27;
  v145 = v60;
  v133 = v61;
  v134 = v59;
  a4 = v60 + v27 * v61;
  v66 = v8;
  v67 = v147;
LABEL_41:
  v136 = a4;
  v139 = v65;
  v140 = v62;
  while (1)
  {
    sub_262A1A6F0(a4, v67);
    v68 = v148;
    sub_262A1A6F0(v62, v148);
    v69 = *(v8 + 80);
    v70 = *(v67 + v69);
    v71 = *(v68 + v69);
    if (v70 == v71)
    {
      v72 = *(v8 + 48);
      v73 = sub_262A29F98();
    }

    else
    {
      v73 = v70 < v71;
    }

    a3 = &qword_262A2B4F8;
    sub_2629ADF2C(v148, &qword_27FF3C050, &qword_262A2B4F8);
    result = sub_2629ADF2C(v67, &qword_27FF3C050, &qword_262A2B4F8);
    if ((v73 & 1) == 0)
    {
      v8 = v66;
LABEL_40:
      v62 = v140 + v133;
      v65 = v139 - 1;
      a4 = v136 + v133;
      if (++v144 == v134)
      {
        v27 = v134;
        v28 = v129;
        v5 = v130;
        v29 = v131;
        goto LABEL_51;
      }

      goto LABEL_41;
    }

    if (!v145)
    {
      break;
    }

    v74 = v146;
    a3 = &qword_27FF3C050;
    sub_2629E2E14(a4, v146, &qword_27FF3C050, &qword_262A2B4F8);
    v8 = v66;
    swift_arrayInitWithTakeFrontToBack();
    v67 = v147;
    sub_2629E2E14(v74, v62, &qword_27FF3C050, &qword_262A2B4F8);
    v62 += v64;
    a4 += v64;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_40;
    }
  }

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
  return result;
}

uint64_t sub_262A19F68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v58 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v58 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = v58 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_70;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_71;
  }

  v26 = (a2 - a1) / v24;
  v69 = a1;
  v68 = a4;
  v66 = v10;
  v58[1] = v5;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v65 = v20;
    v63 = v15;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v28;
    if (v28 < 1)
    {
      v40 = a4 + v28;
    }

    else
    {
      v38 = -v24;
      v39 = v37;
      v40 = v37;
      v60 = a4;
      v64 = v38;
      while (2)
      {
        while (1)
        {
          v58[0] = v40;
          v41 = a2 + v38;
          v61 = a2;
          v62 = a2 + v38;
          while (1)
          {
            if (a2 <= a1)
            {
              v69 = a2;
              v67 = v58[0];
              goto LABEL_68;
            }

            v44 = a3;
            v59 = v40;
            v45 = v41;
            v46 = v39 + v38;
            v47 = v63;
            sub_262A1A6F0(v46, v63);
            v48 = v45;
            v49 = v65;
            sub_262A1A6F0(v48, v65);
            v50 = *(v10 + 80);
            v51 = *(v47 + v50);
            v52 = *(v49 + v50);
            if (v51 == v52)
            {
              v53 = *(v10 + 48);
              v54 = sub_262A29F98();
              v49 = v65;
              v55 = v54;
            }

            else
            {
              v55 = v51 < v52;
            }

            v56 = v44 + v64;
            sub_2629ADF2C(v49, &qword_27FF3C050, &qword_262A2B4F8);
            sub_2629ADF2C(v47, &qword_27FF3C050, &qword_262A2B4F8);
            if (v55)
            {
              break;
            }

            v40 = v46;
            a3 = v56;
            a2 = v61;
            if (v44 < v39 || v56 >= v39)
            {
              v10 = v66;
              swift_arrayInitWithTakeFrontToBack();
              v42 = v60;
            }

            else
            {
              v10 = v66;
              v42 = v60;
              if (v44 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v46;
            v43 = v46 > v42;
            v38 = v64;
            v41 = v62;
            if (!v43)
            {
              goto LABEL_66;
            }
          }

          a3 = v56;
          if (v44 < v61 || v56 >= v61)
          {
            break;
          }

          v10 = v66;
          v40 = v59;
          v57 = v60;
          v38 = v64;
          a2 = v62;
          if (v44 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v62;
        v10 = v66;
        swift_arrayInitWithTakeFrontToBack();
        v40 = v59;
        v38 = v64;
        if (v39 > v60)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v69 = a2;
    v67 = v40;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a4 + v27;
    v67 = a4 + v27;
    v29 = v27 < 1 || a2 >= a3;
    v30 = v66;
    if (!v29)
    {
      v64 = a3;
      do
      {
        sub_262A1A6F0(a2, v22);
        sub_262A1A6F0(a4, v18);
        v31 = *(v30 + 80);
        v32 = *&v22[v31];
        v33 = *&v18[v31];
        if (v32 == v33)
        {
          v34 = *(v30 + 48);
          v35 = sub_262A29F98();
        }

        else
        {
          v35 = v32 < v33;
        }

        sub_2629ADF2C(v18, &qword_27FF3C050, &qword_262A2B4F8);
        sub_2629ADF2C(v22, &qword_27FF3C050, &qword_262A2B4F8);
        if (v35)
        {
          if (a1 < a2 || a1 >= a2 + v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v24;
            v36 = v64;
          }

          else
          {
            v36 = v64;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v24;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v64;
          }

          else
          {
            v36 = v64;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4 + v24;
          a4 += v24;
        }

        a1 += v24;
        v69 = a1;
        v30 = v66;
      }

      while (a4 < v65 && a2 < v36);
    }
  }

LABEL_68:
  sub_262A1A608(&v69, &v68, &v67, &qword_27FF3C050, &qword_262A2B4F8);
  return 1;
}

uint64_t sub_262A1A524(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_262A1A608(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_262A1A6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262A1A760(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v34 = MEMORY[0x277D84F90];
    v33 = *(a1 + 16);
    sub_2629CD800(0, v1, 0);
    v2 = v34;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    v6 = sub_262A2A648();
    v7 = v33;
    v8 = 0;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      v11 = 1 << v6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_37;
      }

      v12 = *(a1 + 36);
      ++v8;
      v13 = v6 & 0x3F;
      v14 = 0xEA00000000003638;
      v15 = 0x3932343038373431;
      switch(*(*(a1 + 48) + v6))
      {
        case 1:
          v14 = 0xEA00000000003937;
          goto LABEL_22;
        case 2:
          v14 = 0xEA00000000003438;
          goto LABEL_22;
        case 3:
          v14 = 0xEA00000000003238;
          goto LABEL_22;
        case 4:
          v14 = 0xEA00000000003633;
          v15 = 0x3532363037343631;
          break;
        case 5:
          v14 = 0xEA00000000003839;
          goto LABEL_18;
        case 6:
          v14 = 0xEA00000000003738;
          goto LABEL_22;
        case 7:
          v14 = 0xEA00000000003739;
          goto LABEL_18;
        case 8:
          v15 = 0x3932343038373431;
          v14 = 0xEA00000000003038;
          break;
        case 9:
          v14 = 0xEA00000000003639;
LABEL_18:
          v15 = 0x3332373831363531;
          break;
        case 0xA:
          v14 = 0xEA00000000003338;
          goto LABEL_22;
        case 0xB:
          v14 = 0xEA00000000003138;
          goto LABEL_22;
        case 0xC:
          v14 = 0xEA00000000003635;
          v15 = 0x3032383934393431;
          break;
        case 0xD:
          v14 = 0xEA00000000003538;
LABEL_22:
          v15 = 0x3932343038373431;
          break;
        default:
          break;
      }

      v17 = *(v34 + 16);
      v16 = *(v34 + 24);
      if (v17 >= v16 >> 1)
      {
        v31 = *(a1 + 36);
        v32 = v6;
        v29 = v6 & 0x3F;
        v30 = v8;
        sub_2629CD800((v16 > 1), v17 + 1, 1);
        v13 = v29;
        v8 = v30;
        v7 = v33;
        v12 = v31;
        v6 = v32;
      }

      *(v34 + 16) = v17 + 1;
      v18 = v34 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_38;
      }

      v19 = *(v4 + 8 * v10);
      if ((v19 & v11) == 0)
      {
        goto LABEL_39;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_40;
      }

      v20 = v19 & (-2 << v13);
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            v26 = v8;
            sub_2629D40E8(v6, v12, 0);
            v8 = v26;
            v7 = v33;
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        v27 = v8;
        sub_2629D40E8(v6, v12, 0);
        v8 = v27;
        v7 = v33;
      }

LABEL_4:
      v6 = v9;
      if (v8 == v7)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    JUMPOUT(0x262A1AAA4);
  }

  return v2;
}

uint64_t sub_262A1AAF4(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = *(*(a4 + 56) + 8 * v15);
      v17[0] = *(*(a4 + 48) + v15);
      v18 = v16;

      a2(&v19, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v19;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_262A1AC3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResultPostProcessor();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeuristicsProcessor();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlanGenerationContext();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PersistentLogger();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = sub_262A17A1C(0);
  sub_262A17B14(0, v21);
  sub_262A1CF28(v21, v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);
  *(v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_operationTracker) = sub_262A17CDC(0);
  sub_262A17DD4(0, v17);
  sub_262A1CF28(v17, v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);

  sub_262A17B14(0, v13);
  *&v13[v10[7]] = sub_262A17CDC(0);
  sub_262A17DD4(0, &v13[v10[8]]);
  *&v13[v10[9]] = a1;
  sub_262A1CF28(v13, v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_heuristicsProcessor, type metadata accessor for HeuristicsProcessor);
  sub_262A17B14(0, v8);
  *&v8[v5[7]] = sub_262A17CDC(0);
  sub_262A17DD4(0, &v8[v5[8]]);
  *&v8[v5[9]] = a1;
  sub_262A1CF28(v8, v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);
  return v2;
}

uint64_t sub_262A1AF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
  v5[23] = PlanScaffold;
  v8 = *(*(PlanScaffold - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC38, &unk_262A30C00);
  v5[25] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v11 = type metadata accessor for SIDPersonalizedPlanResponse();
  v5[28] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v13 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v5[30] = v13;
  v14 = *(v13 - 8);
  v5[31] = v14;
  v15 = *(v14 + 64) + 15;
  v5[32] = swift_task_alloc();
  v16 = type metadata accessor for ConsistentWorkoutPlanResult();
  v5[33] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v18 = *(*(type metadata accessor for PersistentLogger() - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_262A1B118, 0, 0);
}

uint64_t sub_262A1B118()
{
  v116 = v0;
  v1 = v0[36];
  v2 = v0[20];
  v3 = v0[21];
  v4 = OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_heuristicsProcessor;
  v0[37] = OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_heuristicsProcessor;
  v106 = v3 + v4;
  v5 = sub_2629ED5CC(v2);
  v6 = OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_logger;
  v0[38] = v5;
  v0[39] = v6;
  sub_2629B17C0(v3 + v6, v1);
  sub_262A2A6F8();

  v110 = 0xD00000000000001DLL;
  v111 = 0x8000000262A341D0;

  v8 = sub_262A1A760(v7);

  v0[12] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v9 = sub_262A2A398();
  v11 = v10;

  MEMORY[0x26672ECF0](v9, v11);
  v12 = v5;

  MEMORY[0x26672ECF0](0x6F63206874697720, 0xEE00203A73746E75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
  result = sub_262A2A758();
  v14 = result;
  v15 = 0;
  v16 = 1 << *(v5 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v19 = *(v5 + 64);
  v18 = v5 + 64;
  v20 = v17 & v19;
  v21 = (v16 + 63) >> 6;
  v22 = result + 64;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = v23 | (v15 << 6);
LABEL_10:
      v27 = *(*(v12 + 48) + v24);
      v28 = *(*(*(v12 + 56) + 8 * v24) + 16);
      v29 = (v24 >> 3) & 0x1FFFFFFFFFFFFFF8;
      result = *(v22 + v29);
      *(v22 + v29) = result | (1 << v24);
      *(v14[6] + v24) = v27;
      *(v14[7] + 8 * v24) = v28;
      v30 = v14[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v14[2] = v32;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
LABEL_5:
    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v15 >= v21)
      {
        break;
      }

      v26 = *(v18 + 8 * v15);
      ++v25;
      if (v26)
      {
        v20 = (v26 - 1) & v26;
        v24 = __clz(__rbit64(v26)) | (v15 << 6);
        goto LABEL_10;
      }
    }

    v33 = v0[36];
    v0[40] = sub_2629C24D0();
    v34 = sub_262A2A348();
    v107 = v12;
    v36 = v35;

    MEMORY[0x26672ECF0](v34, v36);
    v37 = v107;

    sub_2629EA8C8(v110, v111);

    sub_262A1CEC8(v33, type metadata accessor for PersistentLogger);
    if (*(v107 + 16))
    {
      v103 = v6;
      v104 = v3;
      v105 = v0;
      v38 = -1;
      v39 = -1 << *(v107 + 32);
      if (-v39 < 64)
      {
        v38 = ~(-1 << -v39);
      }

      v40 = v38 & *(v107 + 64);
      v41 = (63 - v39) >> 6;
      result = swift_bridgeObjectRetain_n();
      v42 = 0;
      v43 = MEMORY[0x277D84F90];
      while (v40)
      {
LABEL_23:
        v45 = *(*(v37 + 56) + ((v42 << 9) | (8 * __clz(__rbit64(v40)))));
        v46 = *(v45 + 16);
        v47 = v43[2];
        v48 = v47 + v46;
        if (__OFADD__(v47, v46))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v48 > v43[3] >> 1)
        {
          if (v47 <= v48)
          {
            v50 = v47 + v46;
          }

          else
          {
            v50 = v47;
          }

          v43 = sub_2629A8FBC(isUniquelyReferenced_nonNull_native, v50, 1, v43);
        }

        v40 &= v40 - 1;
        if (*(v45 + 16))
        {
          v51 = (v43[3] >> 1) - v43[2];
          result = type metadata accessor for PreprocessedUserHistoryWithMetadata();
          v52 = *(result - 8);
          if (v51 < v46)
          {
            goto LABEL_51;
          }

          v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v54 = *(v52 + 72);
          swift_arrayInitWithCopy();

          v37 = v107;
          if (v46)
          {
            v55 = v43[2];
            v31 = __OFADD__(v55, v46);
            v56 = v55 + v46;
            if (v31)
            {
              goto LABEL_52;
            }

            v43[2] = v56;
          }
        }

        else
        {

          v37 = v107;
          if (v46)
          {
            goto LABEL_50;
          }
        }
      }

      while (1)
      {
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_47;
        }

        if (v44 >= v41)
        {
          v57 = v105[35];

          sub_262A2A6F8();

          v110 = 0xD000000000000026;
          v111 = 0x8000000262A341F0;
          v105[13] = v43[2];
          v58 = sub_262A2A868();
          MEMORY[0x26672ECF0](v58);

          sub_2629EA8C8(v110, v111);

          v59 = sub_2629F1C80(v43);
          v60 = sub_2629F23E4(v59);
          v61 = sub_2629F25D4(v59, v60);
          v63 = v62;

          v105[44] = v61;
          v105[45] = v63;
          v64 = sub_2629F4A34(v43, v60);

          sub_2629B17C0(v104 + v103, v57);
          v110 = 0;
          v111 = 0xE000000000000000;
          sub_262A2A6F8();
          MEMORY[0x26672ECF0](0xD00000000000002DLL, 0x8000000262A34220);
          v65 = MEMORY[0x26672EDD0](v60, MEMORY[0x277D83B88]);
          v67 = v66;

          MEMORY[0x26672ECF0](v65, v67);

          MEMORY[0x26672ECF0](0xD000000000000011, 0x8000000262A34250);
          v105[14] = v64;
          v68 = sub_262A2A868();
          MEMORY[0x26672ECF0](v68);

          MEMORY[0x26672ECF0](0x61646B656577202CLL, 0xEC000000203A7379);
          v69 = *(v61 + 2);
          v70 = MEMORY[0x277D84F90];
          if (v69)
          {
            v109 = MEMORY[0x277D84F90];
            sub_2629CD840(0, v69, 0);
            v70 = v109;
            v71 = (v61 + 32);
            v72 = *(v109 + 16);
            do
            {
              v74 = *v71++;
              v73 = v74;
              v75 = *(v109 + 24);
              if (v72 >= v75 >> 1)
              {
                sub_2629CD840((v75 > 1), v72 + 1, 1);
              }

              *(v109 + 16) = v72 + 1;
              *(v109 + 8 * v72++ + 32) = v73;
              --v69;
            }

            while (v69);
          }

          v76 = v105[35];
          v102 = v105[21];
          v77 = MEMORY[0x26672EDD0](v70, MEMORY[0x277D83B88]);
          v79 = v78;

          MEMORY[0x26672ECF0](v77, v79);

          sub_2629EA8C8(v110, v111);

          sub_262A1CEC8(v76, type metadata accessor for PersistentLogger);
          sub_2629F514C(v107, v61, v64, &v110);
          v80 = v110;
          v81 = v111;
          v105[46] = v110;
          v105[47] = v81;
          v82 = v80;
          v108 = v80;
          v83 = v112;
          v84 = v113;
          v105[48] = v112;
          v105[49] = v84;
          v85 = v114;
          v86 = v115;
          v105[50] = v114;
          v105[51] = v86;
          v110 = 0;
          v111 = 0xE000000000000000;
          sub_262A2A6F8();

          v110 = v82;
          v111 = v81;
          v112 = v83;
          v113 = v84;
          v114 = v85;
          v115 = v86;
          v87 = SIDWorkoutPlanScaffold.description.getter();
          MEMORY[0x26672ECF0](v87);

          sub_2629EA8C8(0xD000000000000025, 0x8000000262A34270);

          sub_2629EA8C8(0xD000000000000029, 0x8000000262A342A0);
          v105[52] = OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_resultPostProcessor;
          v105[2] = v108;
          v105[3] = v81;
          v105[4] = v83;
          v105[5] = v84;
          v105[6] = v85;
          v105[7] = v86;
          v88 = swift_task_alloc();
          v105[53] = v88;
          *v88 = v105;
          v88[1] = sub_262A1BDFC;
          v89 = v105[34];
          v90 = v105[18];
          v91 = v105[19];

          return sub_262A06214(v89, (v105 + 2), v90, v91);
        }

        v40 = *(v18 + 8 * v44);
        ++v42;
        if (v40)
        {
          v42 = v44;
          goto LABEL_23;
        }
      }
    }

    sub_2629EA8C8(0xD00000000000003ELL, 0x8000000262A34400);
    sub_2629EA8C8(0xD000000000000038, 0x8000000262A34440);
    v92 = *(v106 + *(type metadata accessor for HeuristicsProcessor() + 28));
    started = type metadata accessor for ColdStartUserWorkoutPlanStrategy();
    v94 = *(started + 48);
    v95 = *(started + 52);
    swift_allocObject();

    v0[41] = sub_262A16B30(v96);
    v97 = swift_task_alloc();
    v0[42] = v97;
    *v97 = v0;
    v97[1] = sub_262A1BB24;
    v98 = v0[19];
    v99 = v0[20];
    v100 = v0[17];
    v101 = v0[18];

    return sub_262A16D3C(v100, v101, v98);
  }

  return result;
}

uint64_t sub_262A1BB24()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_262A1BD14;
  }

  else
  {
    v3 = sub_262A1BC38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_262A1BC38()
{
  v1 = v0[41];

  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  v10 = v0[22];

  v11 = v0[1];

  return v11();
}

uint64_t sub_262A1BD14()
{
  v1 = v0[41];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  v10 = v0[22];

  v11 = v0[1];
  v12 = v0[43];

  return v11();
}

uint64_t sub_262A1BDFC()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v8 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = sub_262A1BF28;
  }

  else
  {
    v5 = v2[51];
    v6 = v2[48];

    v2[55] = 0;
    v4 = sub_262A1C0B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_262A1BF28()
{
  v21 = v0;
  v1 = v0[54];
  v2 = v0[51];
  v9 = v0[49];
  v10 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v6 = v0[39];
  v14 = v0[38];
  v15 = v0[52];
  v7 = v0[21];
  v12 = v0[20];
  v13 = v0[34];
  v11 = v0[19];
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_262A2A6F8();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000002BLL, 0x8000000262A342D0);
  v0[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(v0[8], v0[9]);

  *&v16 = v5;
  *(&v16 + 1) = v4;
  v17 = v3;
  v18 = v9;
  v19 = v10;
  v20 = v2;
  sub_262A0F55C(v12, v11, &v16, v14, v13);
  MEMORY[0x26672F6A0](v1);

  v0[55] = 0;

  return MEMORY[0x2822009F8](sub_262A1C0B8, 0, 0);
}

uint64_t sub_262A1C0B8()
{
  v1 = v0[39];
  v90 = v0[55];
  v91 = v0[40];
  v2 = v0[38];
  v3 = v0[34];
  v93 = v3;
  v95 = v0[52];
  v88 = v0[32];
  v99 = v0[26];
  v101 = v0[45];
  v97 = v0[19];
  v4 = v0[21] + v0[37];
  sub_262A2A6F8();

  v5 = SIDPersonalizedWorkoutPlan.description.getter();
  MEMORY[0x26672ECF0](v5);

  sub_2629EA8C8(0xD000000000000020, 0x8000000262A34300);

  v6 = (v4 + *(type metadata accessor for HeuristicsProcessor() + 24));
  v103 = *v6;
  v7 = type metadata accessor for PlanGenerationContext();
  v8.f64[0] = *(v6 + v7[31]);
  v8.f64[1] = *(v6 + v7[30]);
  v85 = v8;
  v8.f64[0] = v103;
  v8.f64[1] = *(v6 + v7[7]);
  v104 = v8;
  v9 = sub_2629AC1C8(&unk_287533A20);
  v10 = sub_2629AC5B8(&unk_287533CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
  swift_arrayDestroy();
  v11 = sub_2629ACDDC(MEMORY[0x277D84F90]);
  v12 = swift_task_alloc();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = v4;
  v13 = vdupq_n_s64(0x4059000000000000uLL);
  *(v12 + 56) = vmulq_f64(v85, v13);
  *(v12 + 40) = vmulq_f64(v104, v13);
  v14 = sub_262A1AAF4(v11, sub_262A1CE30, v12, v2);

  sub_262A2A6F8();

  v15 = sub_262A2A348();
  MEMORY[0x26672ECF0](v15);

  sub_2629EA8C8(0xD000000000000021, 0x8000000262A34330);

  sub_262A088C0(v93, v14, v88);

  sub_262A2A6F8();

  v16 = SIDPersonalizedWorkoutPlan.description.getter();
  MEMORY[0x26672ECF0](v16);

  sub_2629EA8C8(0xD000000000000028, 0x8000000262A34360);

  sub_262A04CC4(v88, v97, v2, v101, v99);
  if (v90)
  {
    v17 = v0[52];
    v18 = v0[38];
    v19 = v0[30];
    v20 = v0[31];
    v21 = v0[27];
    v22 = v0[21];

    sub_262A2A6F8();
    v0[10] = 0;
    v0[11] = 0xE000000000000000;
    MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A34390);
    v0[16] = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
    sub_262A2A738();
    sub_2629EA8B0(v0[10], v0[11]);
    MEMORY[0x26672F6A0](v90);

    (*(v20 + 56))(v21, 1, 1, v19);
  }

  else
  {
    v23 = v0[52];
    v24 = v0[38];
    v25 = v0[30];
    v26 = v0[31];
    v28 = v0[26];
    v27 = v0[27];
    v29 = v0[25];
    v30 = v0[21];

    (*(v26 + 56))(v28, 0, 1, v25);
    sub_262A1CE58(v28, v27);
    sub_262A2A6F8();

    v31 = sub_262A2A608();
    MEMORY[0x26672ECF0](v31);

    sub_2629EA8C8(0xD000000000000023, 0x8000000262A343D0);
  }

  v32 = v0[52];
  v76 = v0[44];
  v78 = v0[45];
  v81 = v0[39];
  v83 = v0[33];
  v33 = v0[32];
  v86 = v0[30];
  v98 = v33;
  v100 = v0[29];
  v34 = v0[27];
  v74 = v0[28];
  v35 = v0[24];
  v36 = v0[21];
  v102 = v0[22];
  v105 = v0[34];
  v37 = v0[18];
  v38 = v0[19];
  v92 = v0[23];
  v94 = v37;
  v96 = v0[17];
  v39 = type metadata accessor for SIDPersonalizedPlanRequest();
  v40 = sub_262A07AD0(v33, v34, v37 + *(v39 + 20));
  sub_262A2A6F8();

  v41 = type metadata accessor for SIDWorkoutPlanType();
  v42 = MEMORY[0x26672EDD0](v40, v41);
  MEMORY[0x26672ECF0](v42);

  sub_2629EA8C8(0xD000000000000019, 0x8000000262A343B0);

  v43 = type metadata accessor for FitnessPlanUser();
  v89 = v38;
  v44 = *(v38 + *(v43 + 36));
  v45 = v100 + *(v74 + 20);
  sub_262A2A008();

  sub_2629ADF2C(v34, &qword_27FF3CC38, &unk_262A30C00);
  v46 = *(v38 + *(v43 + 32));
  v47 = type metadata accessor for SIDMetrics();
  *&v45[*(v47 + 20)] = v44;
  *&v45[*(v47 + 24)] = v46;
  *v100 = v40;

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A34010);
  sub_262A1FD14(v100);
  v80 = v36;
  sub_2629EA8C8(0, 0xE000000000000000);

  sub_2629EA8C8(0xD00000000000001DLL, 0x8000000262A34030);
  v48 = v105 + *(v83 + 20);
  v84 = *v48;
  v49 = *(v48 + 8);
  v50 = *(v48 + 16);
  v51 = *(v98 + 4);

  v82 = sub_262A26C70(v52);

  v53 = *(v86 + 32);
  v54 = sub_262A2A018();
  v55 = *(v54 - 8);
  (*(v55 + 16))(v102, &v98[v53], v54);
  v56 = *(v55 + 56);
  v56(v102, 0, 1, v54);
  v87 = *(v48 + 32);
  v106 = *(v98 + 9);
  v57 = SIDWorkoutPlanSchedule.metricScaffold.getter();
  v79 = sub_2629E6220(v57);

  v73 = *(v48 + 48);
  v75 = *(v48 + 40);
  v77 = *(v98 + 5);
  v58 = *(v98 + 7);
  v59 = v92[12];
  v56(v35 + v59, 1, 1, v54);
  v60 = v92[14];
  v61 = v35 + v92[13];
  v56(v35 + v60, 1, 1, v54);
  *v35 = v84;
  *(v35 + 8) = v49;
  *(v35 + 16) = v50;
  *(v35 + 24) = v82;

  sub_2629BEB44(v102, v35 + v59);
  *(v35 + 32) = v87;
  *(v35 + v92[15]) = v79;
  *(v35 + 40) = v75;
  *(v35 + 48) = v73;
  *(v35 + v92[16]) = v77;
  *(v35 + 49) = 0;
  *(v35 + 56) = v58;
  sub_2629ADF2C(v35 + v60, &unk_27FF3CD10, &qword_262A2D5B0);
  v56(v35 + v60, 1, 1, v54);
  sub_2629ADF2C(v102, &unk_27FF3CD10, &qword_262A2D5B0);
  *(v35 + v92[17]) = MEMORY[0x277D84F90];
  *v61 = 0;
  *(v61 + 8) = 1;
  sub_262A09FD0(*(v80 + 16), v94, v89, v100, v35);
  sub_262A1CEC8(v105, type metadata accessor for ConsistentWorkoutPlanResult);
  sub_262A1CEC8(v35, type metadata accessor for SIDMetricCreatePlanScaffold);
  sub_262A1CEC8(v98, type metadata accessor for SIDPersonalizedWorkoutPlan);
  sub_262A1CF28(v100, v96, type metadata accessor for SIDPersonalizedPlanResponse);
  v63 = v0[35];
  v62 = v0[36];
  v64 = v0[34];
  v65 = v0[32];
  v66 = v0[29];
  v68 = v0[26];
  v67 = v0[27];
  v69 = v0[24];
  v70 = v0[22];

  v71 = v0[1];

  return v71();
}

uint64_t sub_262A1CAC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_262A1CEC8(v0 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);
  v2 = *(v0 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_operationTracker);

  sub_262A1CEC8(v0 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  sub_262A1CEC8(v0 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_heuristicsProcessor, type metadata accessor for HeuristicsProcessor);
  sub_262A1CEC8(v0 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EstablishedUserWorkoutPlanStrategy()
{
  result = qword_27FF3CDC0;
  if (!qword_27FF3CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A1CC14()
{
  result = type metadata accessor for PersistentLogger();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for PlanGenerationContext();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = type metadata accessor for HeuristicsProcessor();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = type metadata accessor for ResultPostProcessor();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_262A1CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2629A88B4;

  return sub_262A1AF08(a1, a2, a3, a4);
}

uint64_t sub_262A1CE58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC38, &unk_262A30C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262A1CEC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262A1CF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A1CFA8()
{
  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness40OnboardedUserStretchPlanDurationStrategy_logger, type metadata accessor for PersistentLogger);
  v1 = *(v0 + OBJC_IVAR____TtC10SIDFitness40OnboardedUserStretchPlanDurationStrategy_operationTracker);

  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness40OnboardedUserStretchPlanDurationStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardedUserStretchPlanDurationStrategy()
{
  result = qword_27FF3CDF0;
  if (!qword_27FF3CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A1D0CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_262A1D198(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2629ADE10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_262A1D198(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_262A1D2A4(a5, a6);
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
    result = sub_262A2A728();
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

uint64_t sub_262A1D2A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_262A1D2F0(a1, a2);
  sub_262A1D420(&unk_287533500);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_262A1D2F0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_262A1D50C(v5, 0);
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

  result = sub_262A2A728();
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
        v10 = sub_262A2A468();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_262A1D50C(v10, 0);
        result = sub_262A2A6E8();
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

uint64_t sub_262A1D420(uint64_t result)
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

  result = sub_262A1D580(result, v12, 1, v3);
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

void *sub_262A1D50C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE00, &qword_262A30F40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_262A1D580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE00, &qword_262A30F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_262A1D674(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE40, &qword_262A30FB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE48, &qword_262A30FC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_262A1D7A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BED8, &qword_262A2B380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_262A1D8B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_262A1D9B8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C040, &qword_262A30F70);
  v10 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_262A1DBD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE08, &qword_262A30F48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 200);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[200 * v8])
    {
      memmove(v12, v13, 200 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_262A1DD2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE28, &unk_262A30F88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_262A1DE30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEE0, &qword_262A2B388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_262A1DF50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}