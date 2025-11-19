uint64_t sub_2275F1924(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v43 = a2;
  v41 = sub_2276694E0();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DirtySyncZone();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v48 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v39 = v9;
    v50 = MEMORY[0x277D84F90];
    v44 = v6;
    sub_226F1F010(0, v13, 0);
    v15 = v44;
    v49 = v50;
    v16 = a3 + 56;
    v17 = -1 << *(a3 + 32);
    v18 = sub_22766CC90();
    v19 = 0;
    v37 = v15 + 16;
    v38 = (v15 + 8);
    v35 = a3 + 64;
    v36 = v13;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a3 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_23;
      }

      v45 = v19;
      v47 = *(a3 + 36);
      v22 = a3;
      v23 = *(a3 + 48) + *(v15 + 72) * v18;
      v13 = v39;
      a3 = v41;
      (*(v15 + 16))(v39, v23, v41);
      v42(v13);
      v46 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      (*v38)(v13, a3);
      v24 = v49;
      v50 = v49;
      v13 = *(v49 + 16);
      v25 = *(v49 + 24);
      a3 = v13 + 1;
      if (v13 >= v25 >> 1)
      {
        sub_226F1F010(v25 > 1, v13 + 1, 1);
        v24 = v50;
      }

      *(v24 + 16) = a3;
      v26 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v49 = v24;
      sub_2275F6C68(v48, v24 + v26 + *(v40 + 72) * v13, type metadata accessor for DirtySyncZone);
      v20 = 1 << *(v22 + 32);
      if (v18 >= v20)
      {
        goto LABEL_24;
      }

      v27 = *(v16 + 8 * v21);
      if ((v27 & (1 << v18)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v22;
      if (v47 != *(v22 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v18 & 0x3F));
      if (v28)
      {
        v20 = __clz(__rbit64(v28)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v21 << 6;
        v30 = v21 + 1;
        v31 = (v35 + 8 * v21);
        while (v30 < (v20 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_226EB526C(v18, v47, 0);
            v20 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v18, v47, 0);
      }

LABEL_4:
      v4 = v46;
      v19 = v45 + 1;
      v18 = v20;
      v13 = v36;
      v15 = v44;
      if (v45 + 1 == v36)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    (*v38)(v13, a3);

    __break(1u);
  }

  return result;
}

uint64_t sub_2275F1D68(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x277D84F90];
  sub_226F1FCE8(0, v5, 0);
  v6 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_226F1FCE8((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275F1E9C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v21 = MEMORY[0x277D84F90];
  sub_226F1FD88(0, v11, 0);
  v12 = v21;
  for (i = (a3 + 32); ; ++i)
  {
    v20 = *i;

    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v12;
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_226F1FD88(v14 > 1, v15 + 1, 1);
      v12 = v21;
    }

    *(v12 + 16) = v15 + 1;
    sub_2275F6C68(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for WorkoutPlanGenerationScaffold);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275F205C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v43 = a2;
  v41 = sub_227666B60();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v48 = &v34 - v12;
  v13 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v39 = v9;
    v50 = MEMORY[0x277D84F90];
    v44 = v6;
    sub_226F1FE68(0, v13, 0);
    v15 = v44;
    v49 = v50;
    v16 = a3 + 56;
    v17 = -1 << *(a3 + 32);
    v18 = sub_22766CC90();
    v19 = 0;
    v37 = v15 + 16;
    v38 = (v15 + 8);
    v35 = a3 + 64;
    v36 = v13;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a3 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_23;
      }

      v45 = v19;
      v47 = *(a3 + 36);
      v22 = a3;
      v23 = *(a3 + 48) + *(v15 + 72) * v18;
      v13 = v39;
      a3 = v41;
      (*(v15 + 16))(v39, v23, v41);
      v42(v13);
      v46 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      (*v38)(v13, a3);
      v24 = v49;
      v50 = v49;
      v13 = *(v49 + 16);
      v25 = *(v49 + 24);
      a3 = v13 + 1;
      if (v13 >= v25 >> 1)
      {
        sub_226F1FE68(v25 > 1, v13 + 1, 1);
        v24 = v50;
      }

      *(v24 + 16) = a3;
      v26 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v49 = v24;
      sub_22704D454(v48, v24 + v26 + *(v40 + 72) * v13);
      v20 = 1 << *(v22 + 32);
      if (v18 >= v20)
      {
        goto LABEL_24;
      }

      v27 = *(v16 + 8 * v21);
      if ((v27 & (1 << v18)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v22;
      if (v47 != *(v22 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v18 & 0x3F));
      if (v28)
      {
        v20 = __clz(__rbit64(v28)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v21 << 6;
        v30 = v21 + 1;
        v31 = (v35 + 8 * v21);
        while (v30 < (v20 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_226EB526C(v18, v47, 0);
            v20 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v18, v47, 0);
      }

LABEL_4:
      v4 = v46;
      v19 = v45 + 1;
      v18 = v20;
      v13 = v36;
      v15 = v44;
      if (v45 + 1 == v36)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    (*v38)(v13, a3);

    __break(1u);
  }

  return result;
}

uint64_t sub_2275F2494(void (*a1)(char *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(BOOL, unint64_t, uint64_t))
{
  v9 = v6;
  v53 = a1;
  v54 = a2;
  v11 = a4(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v52 = a5(0);
  v16 = *(v52 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v52);
  v59 = &v41 - v18;
  v19 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v19)
  {
    v51 = v15;
    v61 = MEMORY[0x277D84F90];
    v44 = v19;
    v42 = a6;
    a6(0, v19, 0);
    v21 = -1 << *(a3 + 32);
    v57 = a3 + 56;
    v58 = v61;
    result = sub_22766CC90();
    v22 = v16;
    v23 = result;
    v24 = 0;
    v49 = v12 + 16;
    v50 = (v12 + 8);
    v47 = v22 + 32;
    v48 = v22;
    v43 = a3 + 64;
    v25 = v12;
    v45 = v12;
    v46 = v11;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(a3 + 32))
    {
      v27 = v23 >> 6;
      if ((*(v57 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_24;
      }

      v56 = v24;
      v28 = *(a3 + 36);
      v29 = v51;
      (*(v25 + 16))(v51, *(a3 + 48) + *(v25 + 72) * v23, v11);
      v53(v29, &v60);
      if (v9)
      {
        (*v50)(v29, v11);
      }

      v55 = 0;
      (*v50)(v29, v11);
      v30 = v58;
      v61 = v58;
      v32 = *(v58 + 16);
      v31 = *(v58 + 24);
      if (v32 >= v31 >> 1)
      {
        v42(v31 > 1, v32 + 1, 1);
        v30 = v61;
      }

      *(v30 + 16) = v32 + 1;
      v33 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v58 = v30;
      result = (*(v48 + 32))(v30 + v33 + *(v48 + 72) * v32, v59, v52);
      v26 = 1 << *(a3 + 32);
      if (v23 >= v26)
      {
        goto LABEL_25;
      }

      v34 = *(v57 + 8 * v27);
      if ((v34 & (1 << v23)) == 0)
      {
        goto LABEL_26;
      }

      if (v28 != *(a3 + 36))
      {
        goto LABEL_27;
      }

      v35 = v34 & (-2 << (v23 & 0x3F));
      if (v35)
      {
        v26 = __clz(__rbit64(v35)) | v23 & 0x7FFFFFFFFFFFFFC0;
        v11 = v46;
      }

      else
      {
        v36 = v27 << 6;
        v37 = v27 + 1;
        v38 = (v43 + 8 * v27);
        v11 = v46;
        while (v37 < (v26 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_226EB526C(v23, v28, 0);
            v26 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v23, v28, 0);
      }

LABEL_4:
      v9 = v55;
      v24 = v56 + 1;
      v23 = v26;
      v25 = v45;
      if (v56 + 1 == v44)
      {
        return v58;
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
  }

  return result;
}

uint64_t sub_2275F28B8(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_226F1F2C8(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_226F1F2C8((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275F29E0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = sub_227667BA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_226F20448(0, v11, 0);
  v12 = v22;
  v13 = *(sub_227662B10() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_226F20448(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_2275F6C68(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, MEMORY[0x277D53198]);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275F2BDC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_227663DD0();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_226F20528(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_226F20528(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_2275F2D98(void (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85C8, &qword_227679600);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v19 - v8;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v11 = a3;
    v29 = MEMORY[0x277D84F90];
    a3 = &v29;
    sub_226F20768(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v29;
    v14 = v11;
    v23 = v11;
    v24 = v11 & 0xC000000000000001;
    v20 = v11 & 0xFFFFFFFFFFFFFF8;
    v21 = v6 + 32;
    v22 = i;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24)
      {
        v16 = MEMORY[0x22AA991A0](v12, v14);
      }

      else
      {
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      i = v16;
      v28 = v16;
      a3 = v27;
      v26(&v28);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v29 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        a3 = &v29;
        sub_226F20768(v17 > 1, v18 + 1, 1);
        v13 = v29;
      }

      *(v13 + 16) = v18 + 1;
      (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v9, v25);
      ++v12;
      v14 = v23;
      if (v15 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_2275F2FE8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_2276624A0();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x277D84F90];
  sub_226F1F548(0, v10, 0);
  v11 = v22;
  v17 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v21[0] = *(i - 1);
    v21[1] = v13;

    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_226F1F548(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275F31B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_2276639B0();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_226F1F508(0, v10, 0);
  v11 = v23;
  v12 = *(sub_2276624A0() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_226F1F508(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275F33B8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  return swift_deallocClassInstance();
}

uint64_t sub_2275F3434@<X0>(void (*a1)(void, void, void)@<X0>, void (*a2)(void, void)@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  v42 = a4;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227664AE0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  sub_22766A6C0();
  sub_22766B370();
  v40 = *(v15 + 8);
  v41 = v14;
  v40(v21, v14);
  sub_227663970();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2275F6BA0(v13, MEMORY[0x277D50D68]);
  if (EnumCaseMultiPayload)
  {
    sub_22766A6C0();
    (*(v6 + 16))(v9, a1, v5);
    v23 = sub_22766B380();
    v24 = sub_22766C890();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v25 = 141558274;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      sub_226EB1088(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v26 = sub_22766D140();
      v28 = v27;
      (*(v6 + 8))(v9, v5);
      v29 = sub_226E97AE8(v26, v28, &v43);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_226E8E000, v23, v24, "[Key Request Provider] AssetRequest is not the required mediaStream request %{mask.hash}s", v25, 0x16u);
      v30 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v40(v19, v41);
    v33 = sub_227663190();
    sub_226EB1088(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v34 = swift_allocError();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D4FCF0], v33);
    *(swift_allocObject() + 16) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    return sub_227669280();
  }

  else
  {
    v31 = *__swift_project_boxed_opaque_existential_0((v37 + 16), *(v37 + 40));
    return sub_2274A7EDC(a1, v38, v39, v42);
  }
}

uint64_t sub_2275F392C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v38);
  v9 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v13;
  v14 = *(v3 + 25);
  v34 = *(v3 + 26);
  v36 = v3;
  __swift_project_boxed_opaque_existential_0(v3 + 22, v14);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  v16 = sub_2276642E0();
  v35 = v16;

  v33 = v12;
  sub_226ECF5D8(sub_2275F6938, v15, v14, v16, v34, v12);

  v34 = *(v6 + 16);
  v17 = v38;
  v34(v9, v12, v38);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v32 = *(v6 + 32);
  v32(v20 + v18, v9, v17);
  v21 = (v20 + v19);
  *v21 = sub_2275F3F90;
  v21[1] = 0;
  v22 = v39;
  sub_227669270();
  v23 = *(v6 + 8);
  v24 = v33;
  v25 = v38;
  v23(v33, v38);
  v26 = v22;
  v27 = v25;
  v34(v24, v26, v25);
  v28 = swift_allocObject();
  v32(v28 + v18, v24, v27);
  v29 = (v28 + v19);
  v30 = v36;
  *v29 = sub_2275F6980;
  v29[1] = v30;
  type metadata accessor for AssetRequestProvider.CatalogURLs();

  sub_227669270();
  return (v23)(v39, v27);
}

uint64_t sub_2275F3C74@<X0>(void *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227670CD0;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;

  v15 = sub_226F87158(v14, 0, 1, a1);

  if (!v4)
  {
    if (*(v15 + 16))
    {
      v17 = sub_2276642E0();
      (*(*(v17 - 8) + 16))(a4, v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)), v17);
    }

    else
    {

      sub_22766A6C0();

      v18 = sub_22766B380();
      v19 = sub_22766C8B0();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_226E97AE8(a2, a3, &v25);
        _os_log_impl(&dword_226E8E000, v18, v19, "[Request Provider] Bundle requests - Catalog workout not found for identifier %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x22AA9A450](v21, -1, -1);
        MEMORY[0x22AA9A450](v20, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
      v22 = sub_227663190();
      sub_226EB1088(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D4FD68], v22);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2275F3F90(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v21 - v9);
  sub_226E93170(a1, v21 - v9, &qword_27D7BD448, &unk_22768B800);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_226E97D1C(v10, &qword_27D7BD448, &unk_22768B800);
  }

  v11 = *v10;
  sub_22766A6C0();
  v12 = v11;
  v13 = sub_22766B380();
  v14 = sub_22766C890();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136446210;
    swift_getErrorValue();
    v17 = MEMORY[0x22AA995D0](v21[2], v21[3]);
    v19 = sub_226E97AE8(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v13, v14, "Failed to query catalog workouts with error: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2275F4218@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
  v39 = *(v41 - 8);
  v38 = *(v39 + 64);
  v5 = MEMORY[0x28223BE20](v41);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - v7;
  v8 = sub_2276642E0();
  v33 = v8;
  v9 = *(v8 - 8);
  v35 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_227667D10();
  v40 = *(v42 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *__swift_project_boxed_opaque_existential_0(a2 + 12, a2[15]);
  v16 = *(__swift_project_boxed_opaque_existential_0(a2 + 12, a2[15]) + 1);
  v17 = *(v9 + 16);
  v17(v11, a1, v8);
  v34 = v14;
  sub_227667D00();
  __swift_project_boxed_opaque_existential_0(a2 + 7, a2[10]);
  v18 = off_283AA5520[0];
  type metadata accessor for AssetScriptClient();
  v19 = v36;
  v18(v14);
  v20 = v33;
  v17(v11, a1, v33);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v11, v20);
  v23 = v39;
  v24 = v37;
  v25 = v41;
  (*(v39 + 16))(v37, v19, v41);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v38 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2275F69B0;
  v30[1] = v22;
  type metadata accessor for AssetRequestProvider.CatalogURLs();
  sub_227669270();
  (*(v26 + 8))(v19, v25);
  return (*(v40 + 8))(v34, v42);
}

uint64_t sub_2275F460C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AssetRequestProvider.CatalogURLs();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = *a1;
  v14 = sub_2276642E0();
  (*(*(v14 - 8) + 16))(v12, a2, v14);
  v15 = *(v13 + 16);
  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v27 = a2;
  v28 = v7;
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v6;
  v31 = a3;
  v16 = sub_2274CD790(v15, 0);
  v17 = *(sub_2276624A0() - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v26 = v16;
  v19 = sub_2274CF59C(&v32, (v16 + v18), v15, v13);

  result = sub_226EBB21C();
  if (v19 == v15)
  {
    v6 = v30;
    v7 = v28;
    v10 = v29;
    v21 = v26;
LABEL_5:
    v22 = &v12[*(v6 + 24)];
    sub_227664240();
    *&v12[*(v6 + 20)] = v21;
    sub_2275F6C00(v12, v10, type metadata accessor for AssetRequestProvider.CatalogURLs);
    v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v24 = swift_allocObject();
    sub_2275F6C68(v10, v24 + v23, type metadata accessor for AssetRequestProvider.CatalogURLs);
    sub_227669280();
    return sub_2275F6BA0(v12, type metadata accessor for AssetRequestProvider.CatalogURLs);
  }

  __break(1u);
  return result;
}

uint64_t sub_2275F48B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v112 = a4;
  v115 = a3;
  v134 = a2;
  v123 = a5;
  v120 = sub_227663480();
  v119 = *(v120 - 8);
  v6 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v117 = v7;
  v132 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for AssetRequestProvider.CatalogURLs();
  v111 = *(v109 - 8);
  v8 = *(v111 + 64);
  MEMORY[0x28223BE20](v109);
  v110 = v9;
  v131 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v121 = *(v122 - 8);
  v10 = *(v121 + 64);
  v11 = MEMORY[0x28223BE20](v122);
  v118 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v12;
  MEMORY[0x28223BE20](v11);
  v133 = &v98 - v13;
  v107 = sub_2276624A0();
  v105 = *(v107 - 8);
  v14 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_227664AE0();
  v16 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2276639B0();
  v113 = *(v130 - 8);
  v18 = *(v113 + 64);
  v19 = MEMORY[0x28223BE20](v130);
  v124 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v20;
  MEMORY[0x28223BE20](v19);
  v129 = &v98 - v21;
  v128 = sub_2276687D0();
  v127 = *(v128 - 8);
  v22 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v102 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v125 = &v98 - v28;
  v141 = sub_2276667F0();
  v29 = *(v141 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v141);
  v140 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_227669180();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v139 = &v98 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF48, &unk_227682548);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v99 = &v98 - v41;
  sub_2276625E0();
  v43 = v42;
  v44 = v37;
  sub_227663950();
  v46 = v45;
  v101 = sub_22766C0A0();
  v100 = v47;
  v114 = a1;
  v48 = sub_2276642A0();
  v49 = v48;
  v50 = v48 + 56;
  v51 = 1 << *(v48 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v48 + 56);
  v54 = (v51 + 63) >> 6;
  v136 = (v29 + 8);
  v137 = v33 + 16;
  v144 = v33;
  v142 = v33 + 32;
  v143 = (v33 + 8);

  v56 = 0;
  v138 = result;
  if (v53)
  {
    while (1)
    {
      v57 = v56;
LABEL_8:
      v58 = *(v49 + 48);
      v59 = v144;
      v60 = v139;
      (*(v144 + 16))(v139, v58 + *(v144 + 72) * (__clz(__rbit64(v53)) | (v57 << 6)), v32);
      v135 = *(v59 + 32);
      v135(v44, v60, v32);
      v61 = v140;
      sub_227669150();
      v62 = sub_2276667E0();
      v64 = v63;
      v66 = v65;
      (*v136)(v61, v141);
      v146 = v62;
      v147 = v64;
      v66 &= 1u;
      v148 = v66;
      v145 = 4;
      sub_2275F6444();
      sub_2275F6498();
      LOBYTE(v61) = sub_227663B30();
      sub_226EB2DFC(v62, v64, v66);
      if (v61)
      {
        break;
      }

      v53 &= v53 - 1;
      result = (*v143)(v44, v32);
      v56 = v57;
      v49 = v138;
      if (!v53)
      {
        goto LABEL_5;
      }
    }

    v68 = v99;
    v135(v99, v44, v32);
    v67 = 0;
LABEL_12:
    v69 = v144;
    (*(v144 + 56))(v68, v67, 1, v32);

    if ((*(v69 + 48))(v68, 1, v32) == 1)
    {
      sub_226E97D1C(v68, &qword_27D7BCF48, &unk_227682548);
    }

    else
    {
      sub_227669160();
      (*v143)(v68, v32);
    }

    sub_227669370();
    sub_227669380();
    v70 = v125;
    sub_227662340();

    v71 = v114;
    sub_227664280();
    sub_226E93170(v70, v102, &unk_27D7BB570, &unk_227670FC0);
    v72 = v126;
    sub_227668790();
    (*(v127 + 16))(v104, v72, v128);
    swift_storeEnumTagMultiPayload();
    (*(v105 + 16))(v106, v71 + *(v109 + 24), v107);
    v73 = v115;
    sub_2276633E0();
    v74 = v129;
    sub_227663900();
    v75 = sub_227663410();
    sub_2275F3434(v74, v75, v76, v133);

    sub_2275F6C00(v71, v131, type metadata accessor for AssetRequestProvider.CatalogURLs);
    v77 = v119;
    v78 = v73;
    v79 = v120;
    (*(v119 + 16))(v132, v78, v120);
    v80 = v113;
    (*(v113 + 16))(v124, v74, v130);
    v81 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v82 = (v110 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
    v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
    v85 = (*(v77 + 80) + v84 + 8) & ~*(v77 + 80);
    v86 = (v117 + *(v80 + 80) + v85) & ~*(v80 + 80);
    v87 = swift_allocObject();
    sub_2275F6C68(v131, v87 + v81, type metadata accessor for AssetRequestProvider.CatalogURLs);
    *(v87 + v82) = v134;
    *(v87 + v83) = v43;
    *(v87 + v84) = v43 + v46;
    (*(v77 + 32))(v87 + v85, v132, v79);
    v88 = v87 + v86;
    v89 = v130;
    (*(v80 + 32))(v88, v124, v130);
    v90 = v121;
    v91 = v118;
    v92 = v133;
    v93 = v122;
    (*(v121 + 16))(v118, v133, v122);
    v94 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v95 = (v116 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = swift_allocObject();
    (*(v90 + 32))(v96 + v94, v91, v93);
    v97 = (v96 + v95);
    *v97 = sub_2275F64EC;
    v97[1] = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    sub_227669270();
    (*(v90 + 8))(v92, v93);
    (*(v80 + 8))(v129, v89);
    (*(v127 + 8))(v126, v128);
    return sub_226E97D1C(v125, &unk_27D7BB570, &unk_227670FC0);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        v67 = 1;
        v68 = v99;
        goto LABEL_12;
      }

      v53 = *(v50 + 8 * v57);
      ++v56;
      if (v53)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2275F5670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v83 = a5;
  v85 = a3;
  v86 = a4;
  v82 = a6;
  v78 = sub_227663480();
  v77 = *(v78 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v89 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22766B390();
  v80 = *(v81 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2276624A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *a1;
  v21 = type metadata accessor for AssetRequestProvider.CatalogURLs();
  v22 = *(a2 + *(v21 + 20));
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = sub_2273A4ECC(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = *(v17 + 16);
    v25 = v17 + 16;
    v87 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v88 = v26;
    v27 = v22 + v87;
    v28 = *(v25 + 56);
    v29 = (v25 + 16);
    do
    {
      v30 = v25;
      v88(v20, v27, v16);
      v32 = *(v24 + 2);
      v31 = *(v24 + 3);
      if (v32 >= v31 >> 1)
      {
        v24 = sub_2273A4ECC(v31 > 1, v32 + 1, 1, v24);
      }

      *(v24 + 2) = v32 + 1;
      v21 = (*v29)(&v24[v87 + v32 * v28], v20, v16);
      v27 += v28;
      --v23;
      v25 = v30;
    }

    while (v23);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v21);
  v33 = v86;
  *(&v76 - 4) = v85;
  *(&v76 - 3) = a7;
  *(&v76 - 2) = a8;
  *(&v76 - 1) = v33;
  v34 = sub_2275F31B4(sub_2275F668C, (&v76 - 6), v24);

  v90[9] = v34;
  v35 = v84;
  v36 = *(v84 + 16);
  if (!v36)
  {
    goto LABEL_11;
  }

  v37 = sub_2274CD768(*(v84 + 16), 0);
  v38 = *(sub_2276639B0() - 8);
  v39 = sub_2274CDD80(v90, (v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80))), v36, v35);

  sub_226EBB21C();
  if (v39 != v36)
  {
    __break(1u);
LABEL_11:
    v37 = MEMORY[0x277D84F90];
  }

  v90[10] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
  v40 = sub_2276639B0();
  v41 = *(v40 - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_227670CD0;
  result = (*(v41 + 16))(v44 + v43, v83, v40);
  v90[11] = v44;
  v46 = MEMORY[0x277D84F90];
  for (i = 4; i != 7; ++i)
  {
    v48 = v90[i + 5];
    v49 = *(v48 + 16);
    v50 = v46[2];
    v51 = v50 + v49;
    if (__OFADD__(v50, v49))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v52 = v90[i + 5];

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v51 > v46[3] >> 1)
    {
      if (v50 <= v51)
      {
        v53 = v50 + v49;
      }

      else
      {
        v53 = v50;
      }

      result = sub_2273A4EA4(result, v53, 1, v46);
      v46 = result;
    }

    v54 = v89;
    if (*(v48 + 16))
    {
      if ((v46[3] >> 1) - v46[2] < v49)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v49)
      {
        v55 = v46[2];
        v56 = __OFADD__(v55, v49);
        v57 = v55 + v49;
        if (v56)
        {
          goto LABEL_34;
        }

        v46[2] = v57;
      }
    }

    else
    {

      if (v49)
      {
        goto LABEL_32;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  swift_arrayDestroy();
  v58 = v79;
  sub_22766A6C0();
  v59 = v77;
  v60 = v78;
  (*(v77 + 16))(v54, v86, v78);

  v61 = sub_22766B380();
  v62 = sub_22766C8B0();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = v54;
    v64 = v60;
    v65 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v90[0] = v89;
    *v65 = 136446722;
    v66 = sub_2276633E0();
    v67 = v59;
    v69 = v68;
    (*(v67 + 8))(v63, v64);
    v70 = sub_226E97AE8(v66, v69, v90);

    *(v65 + 4) = v70;
    *(v65 + 12) = 2160;
    *(v65 + 14) = 1752392040;
    *(v65 + 22) = 2080;
    v71 = MEMORY[0x22AA98660](v46, v40);
    v73 = sub_226E97AE8(v71, v72, v90);

    *(v65 + 24) = v73;
    _os_log_impl(&dword_226E8E000, v61, v62, "[Request Provider] Bundle (%{public}s) created requests: %{mask.hash}s", v65, 0x20u);
    v74 = v89;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v74, -1, -1);
    MEMORY[0x22AA9A450](v65, -1, -1);
  }

  else
  {

    (*(v59 + 8))(v54, v60);
  }

  (*(v80 + 8))(v58, v81);
  v75 = sub_226F3FF8C(v46);

  *(swift_allocObject() + 16) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  return sub_227669280();
}

uint64_t sub_2275F5E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12[0] = a3;
  v12[1] = a2;
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227664AE0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_22766C0A0();
  swift_storeEnumTagMultiPayload();
  (*(v5 + 16))(v8, a1, v4);
  sub_2276633E0();
  return sub_227663900();
}

uint64_t sub_2275F6004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v29 = a3;
  v31 = a2;
  v32 = a5;
  v27 = sub_227663480();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD418, &unk_227684B38);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v25 = *v5;
  v14 = sub_227663410();
  sub_2275F392C(v14, v15, v13);

  v16 = v27;
  (*(v7 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v27);
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v29;
  *(v18 + 24) = v30 & 1;
  *(v18 + 32) = v31;
  (*(v7 + 32))(v18 + v17, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v19 = v26;
  *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v20 = v28;
  (*(v9 + 16))(v19, v13, v28);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v19, v20);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_2275F6318;
  v23[1] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_227669270();
  return (*(v9 + 8))(v13, v20);
}

uint64_t sub_2275F6318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227663480() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2275F48B4(a1, v9, v2 + v6, v10, a2);
}

uint64_t type metadata accessor for AssetRequestProvider.CatalogURLs()
{
  result = qword_28139A6E0;
  if (!qword_28139A6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2275F6444()
{
  result = qword_27D7BF808;
  if (!qword_27D7BF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF808);
  }

  return result;
}

unint64_t sub_2275F6498()
{
  result = qword_27D7BF810;
  if (!qword_27D7BF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF810);
  }

  return result;
}

uint64_t sub_2275F64EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AssetRequestProvider.CatalogURLs() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_227663480() - 8);
  v11 = (*(v10 + 80) + v9 + 8) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_2276639B0() - 8);
  v14 = *(v2 + v7);
  v15 = *(v2 + v8);
  v16 = *(v2 + v9);
  v17 = v2 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_2275F5670(a1, v2 + v6, v14, v2 + v11, v17, a2, v15, v16);
}

uint64_t sub_2275F668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_2275F5E74(a1, v2[2], a2);
}

uint64_t sub_2275F69B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2275F460C(a1, v6, a2);
}

uint64_t sub_2275F6A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2275F6BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2275F6C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2275F6C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2275F6CF8()
{
  sub_2276642E0();
  if (v0 <= 0x3F)
  {
    sub_2275F6D94();
    if (v1 <= 0x3F)
    {
      sub_2276624A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2275F6D94()
{
  if (!qword_281399158)
  {
    sub_2276624A0();
    v0 = sub_22766C3D0();
    if (!v1)
    {
      atomic_store(v0, &qword_281399158);
    }
  }
}

uint64_t sub_2275F6DEC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2275F6E78()
{
  v1[22] = v0;
  v2 = sub_2276624A0();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v5 = sub_227669F70();
  v1[27] = v5;
  v6 = *(v5 - 8);
  v1[28] = v6;
  v7 = *(v6 + 64) + 15;
  v1[29] = swift_task_alloc();
  v8 = sub_22766B390();
  v1[30] = v8;
  v9 = *(v8 - 8);
  v1[31] = v9;
  v10 = *(v9 + 64) + 15;
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275F6FFC, 0, 0);
}

uint64_t sub_2275F6FFC()
{
  v1 = v0[32];
  sub_22766A770();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Creating representative database", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[25];
  v12 = v0[24];
  v36 = v0[26];
  v37 = v0[23];
  v35 = v0[22];

  (*(v5 + 8))(v6, v8);
  sub_226EA1CF4();
  sub_22766C950();
  (*(v9 + 104))(v7, *MEMORY[0x277D4F368], v10);
  v13 = sub_227669F60();
  v14 = MEMORY[0x277D4F358];
  v0[5] = v13;
  v0[6] = v14;
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_227669F50();
  v15 = sub_22766A8E0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_22766A8B0();
  v0[33] = v18;
  v19 = sub_22766ABD0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = sub_22766ABC0();
  v23 = MEMORY[0x277D54610];
  v0[34] = v22;
  v0[10] = v19;
  v0[11] = v23;
  v0[7] = v22;
  sub_226E91B50(v35 + 256, (v0 + 12));

  sub_227662330();
  sub_2276623F0();
  v24 = *(v12 + 8);
  v24(v11, v37);
  v25 = type metadata accessor for PersistenceStore();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v0[35] = v28;
  *(v28 + 16) = 0;
  (*(v12 + 16))(v28 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_directory, v36, v37);
  sub_226E91B50((v0 + 7), v28 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_dataProtectionMonitor);
  v29 = (v28 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_eventHub);
  *v29 = v18;
  v29[1] = MEMORY[0x277D4F9B0];
  *(v28 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_monitors) = MEMORY[0x277D84F90];
  v30 = sub_227669B50();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  swift_retain_n();
  *(v28 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_subscriptionToken) = sub_227669B40();
  sub_226E91B50((v0 + 12), v28 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_transactionCoordinator);
  *(v28 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state) = 0;
  sub_22766ABF0();
  swift_allocObject();
  swift_weakInit();
  sub_22764662C(&qword_28139D350, MEMORY[0x277D54620]);
  sub_2276699F0();

  v24(v36, v37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v33 = swift_task_alloc();
  v0[36] = v33;
  *v33 = v0;
  v33[1] = sub_2275F7474;

  return sub_22708BA40();
}

uint64_t sub_2275F7474()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_227604518;
  }

  else
  {
    v3 = sub_2275F7588;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275F7588()
{
  v0[38] = 0;
  switch(byte_283A95F20)
  {
    case 1:
      v104 = swift_task_alloc();
      v0[41] = v104;
      *v104 = v0;
      v104[1] = sub_2275FA350;
      v105 = v0[35];

      return sub_227609488(100, v105);
    case 2:
      v94 = swift_task_alloc();
      v0[43] = v94;
      *v94 = v0;
      v94[1] = sub_2275FA464;
      v95 = v0[35];

      return sub_227609DC0(100, v95);
    case 3:
      v100 = swift_task_alloc();
      v0[45] = v100;
      *v100 = v0;
      v101 = sub_2275FA578;
      goto LABEL_240;
    case 4:
      v78 = swift_task_alloc();
      v0[47] = v78;
      *v78 = v0;
      v78[1] = sub_2275FA68C;
      v79 = v0[35];

      return sub_22760B0BC(100, v79);
    case 5:
      v124 = swift_task_alloc();
      v0[49] = v124;
      *v124 = v0;
      v124[1] = sub_2275FA7A0;
      v125 = v0[35];

      return sub_22760B9F4(100, v125);
    case 6:
      v102 = swift_task_alloc();
      v0[51] = v102;
      *v102 = v0;
      v103 = sub_2275FA8B4;
      goto LABEL_197;
    case 7:
      v102 = swift_task_alloc();
      v0[53] = v102;
      *v102 = v0;
      v103 = sub_2275FA9C8;
LABEL_197:
      v102[1] = v103;
      v134 = v0[35];

      result = sub_22760C32C(100, v134);
      break;
    case 8:
      v139 = swift_task_alloc();
      v0[55] = v139;
      *v139 = v0;
      v139[1] = sub_2275FAADC;
      v140 = v0[35];

      result = sub_22760CC64(100, v140);
      break;
    case 9:
      v88 = swift_task_alloc();
      v0[57] = v88;
      *v88 = v0;
      v88[1] = sub_2275FABF0;
      v89 = v0[35];

      result = sub_22760D61C(100, v89);
      break;
    case 10:
      v137 = swift_task_alloc();
      v0[59] = v137;
      *v137 = v0;
      v137[1] = sub_2275FAD04;
      v138 = v0[35];

      result = sub_22760DF54(100, v138);
      break;
    case 11:
      v72 = swift_task_alloc();
      v0[61] = v72;
      *v72 = v0;
      v72[1] = sub_2275FAE18;
      v73 = v0[35];

      result = sub_22760E88C(100, v73);
      break;
    case 12:
      v86 = swift_task_alloc();
      v0[63] = v86;
      *v86 = v0;
      v86[1] = sub_2275FAF2C;
      v87 = v0[35];

      result = sub_22760F1C4(100, v87);
      break;
    case 13:
      v132 = swift_task_alloc();
      v0[65] = v132;
      *v132 = v0;
      v132[1] = sub_2275FB040;
      v133 = v0[35];

      result = sub_22760FAFC(100, v133);
      break;
    case 14:
      v62 = swift_task_alloc();
      v0[67] = v62;
      *v62 = v0;
      v62[1] = sub_2275FB154;
      v63 = v0[35];

      result = sub_227610434(100, v63);
      break;
    case 15:
      v96 = swift_task_alloc();
      v0[69] = v96;
      *v96 = v0;
      v96[1] = sub_2275FB268;
      v97 = v0[35];

      result = sub_227610D6C(100, v97);
      break;
    case 16:
      v56 = swift_task_alloc();
      v0[71] = v56;
      *v56 = v0;
      v56[1] = sub_2275FB37C;
      v57 = v0[35];

      result = sub_2276116A4(100, v57);
      break;
    case 17:
      v112 = swift_task_alloc();
      v0[73] = v112;
      *v112 = v0;
      v112[1] = sub_2275FB490;
      v113 = v0[35];

      result = sub_227611F6C(100, v113);
      break;
    case 18:
      v135 = swift_task_alloc();
      v0[75] = v135;
      *v135 = v0;
      v135[1] = sub_2275FB5A4;
      v136 = v0[35];

      result = sub_2276128A4(100, v136);
      break;
    case 19:
      v155 = swift_task_alloc();
      v0[77] = v155;
      *v155 = v0;
      v155[1] = sub_2275FB6B8;
      v156 = v0[35];

      result = sub_22761316C(100, v156);
      break;
    case 20:
      v120 = swift_task_alloc();
      v0[79] = v120;
      *v120 = v0;
      v120[1] = sub_2275FB7CC;
      v121 = v0[35];

      result = sub_227613AA4(100, v121);
      break;
    case 21:
      v130 = swift_task_alloc();
      v0[81] = v130;
      *v130 = v0;
      v130[1] = sub_2275FB8E0;
      v131 = v0[35];

      result = sub_2276143DC(100, v131);
      break;
    case 22:
      v149 = swift_task_alloc();
      v0[83] = v149;
      *v149 = v0;
      v149[1] = sub_2275FB9F4;
      v150 = v0[35];

      result = sub_227614CE8(100, v150);
      break;
    case 23:
      v162 = swift_task_alloc();
      v0[87] = v162;
      *v162 = v0;
      v162[1] = sub_2275FBC1C;
      v163 = v0[35];

      result = sub_227615F00(100, v163);
      break;
    case 24:
      v92 = swift_task_alloc();
      v0[85] = v92;
      *v92 = v0;
      v92[1] = sub_2275FBB08;
      v93 = v0[35];

      result = sub_2276155F4(100, v93);
      break;
    case 25:
      v90 = swift_task_alloc();
      v0[89] = v90;
      *v90 = v0;
      v90[1] = sub_2275FBD30;
      v91 = v0[35];

      result = sub_227616838(100, v91);
      break;
    case 26:
      v170 = swift_task_alloc();
      v0[91] = v170;
      *v170 = v0;
      v170[1] = sub_2275FBE44;
      v171 = v0[35];

      result = sub_227617170(100, v171);
      break;
    case 27:
      v52 = swift_task_alloc();
      v0[93] = v52;
      *v52 = v0;
      v52[1] = sub_2275FBF58;
      v53 = v0[35];

      result = sub_227617AA8(100, v53);
      break;
    case 28:
      v164 = swift_task_alloc();
      v0[95] = v164;
      *v164 = v0;
      v164[1] = sub_2275FC06C;
      v165 = v0[35];

      result = sub_2276183E0(100, v165);
      break;
    case 29:
      v166 = swift_task_alloc();
      v0[97] = v166;
      *v166 = v0;
      v166[1] = sub_2275FC180;
      v167 = v0[35];

      result = sub_227618D18(100, v167);
      break;
    case 30:
      v141 = swift_task_alloc();
      v0[99] = v141;
      *v141 = v0;
      v141[1] = sub_2275FC294;
      v142 = v0[35];

      result = sub_227619650(100, v142);
      break;
    case 31:
      v110 = swift_task_alloc();
      v0[101] = v110;
      *v110 = v0;
      v110[1] = sub_2275FC3A8;
      v111 = v0[35];

      result = sub_227619F88(100, v111);
      break;
    case 32:
      v143 = swift_task_alloc();
      v0[103] = v143;
      *v143 = v0;
      v143[1] = sub_2275FC4BC;
      v144 = v0[35];

      result = sub_22761A8C0(100, v144);
      break;
    case 33:
      v64 = swift_task_alloc();
      v0[105] = v64;
      *v64 = v0;
      v64[1] = sub_2275FC5D0;
      v65 = v0[35];

      result = sub_22761B188(100, v65);
      break;
    case 34:
      v54 = swift_task_alloc();
      v0[107] = v54;
      *v54 = v0;
      v54[1] = sub_2275FC6E4;
      v55 = v0[35];

      result = sub_22761BAC0(100, v55);
      break;
    case 35:
      v46 = swift_task_alloc();
      v0[109] = v46;
      *v46 = v0;
      v46[1] = sub_2275FC7F8;
      v47 = v0[35];

      result = sub_22761C3F8(100, v47);
      break;
    case 36:
      v48 = swift_task_alloc();
      v0[111] = v48;
      *v48 = v0;
      v48[1] = sub_2275FC90C;
      v49 = v0[35];

      result = sub_22761CD30(100, v49);
      break;
    case 37:
      v36 = swift_task_alloc();
      v0[113] = v36;
      *v36 = v0;
      v36[1] = sub_2275FCA20;
      v37 = v0[35];

      result = sub_22761D668(100, v37);
      break;
    case 38:
      v168 = swift_task_alloc();
      v0[115] = v168;
      *v168 = v0;
      v168[1] = sub_2275FCB34;
      v169 = v0[35];

      result = sub_22761DFA0(100, v169);
      break;
    case 39:
      v153 = swift_task_alloc();
      v0[117] = v153;
      *v153 = v0;
      v153[1] = sub_2275FCC48;
      v154 = v0[35];

      result = sub_22761E8AC(100, v154);
      break;
    case 40:
      v80 = swift_task_alloc();
      v0[119] = v80;
      *v80 = v0;
      v80[1] = sub_2275FCD5C;
      v81 = v0[35];

      result = sub_22761F1E4(100, v81);
      break;
    case 41:
      v116 = swift_task_alloc();
      v0[121] = v116;
      *v116 = v0;
      v116[1] = sub_2275FCE70;
      v117 = v0[35];

      result = sub_22761FB1C(100, v117);
      break;
    case 42:
      v159 = swift_task_alloc();
      v0[123] = v159;
      *v159 = v0;
      v159[1] = sub_2275FCF84;
      v160 = v0[35];

      result = sub_227620454(100, v160);
      break;
    case 43:
      v26 = swift_task_alloc();
      v0[125] = v26;
      *v26 = v0;
      v26[1] = sub_2275FD098;
      v27 = v0[35];

      result = sub_227620D8C(100, v27);
      break;
    case 44:
      v60 = swift_task_alloc();
      v0[127] = v60;
      *v60 = v0;
      v60[1] = sub_2275FD1AC;
      v61 = v0[35];

      result = sub_2276216C4(100, v61);
      break;
    case 45:
      v145 = swift_task_alloc();
      v0[129] = v145;
      *v145 = v0;
      v145[1] = sub_2275FD2C0;
      v146 = v0[35];

      result = sub_227621F8C(100, v146);
      break;
    case 46:
      v180 = swift_task_alloc();
      v0[131] = v180;
      *v180 = v0;
      v180[1] = sub_2275FD3D4;
      v181 = v0[35];

      result = sub_2276228C4(100, v181);
      break;
    case 47:
      v40 = swift_task_alloc();
      v0[133] = v40;
      *v40 = v0;
      v40[1] = sub_2275FD4E8;
      v41 = v0[35];

      result = sub_2276231FC(100, v41);
      break;
    case 48:
      v66 = swift_task_alloc();
      v0[135] = v66;
      *v66 = v0;
      v66[1] = sub_2275FD5FC;
      v67 = v0[35];

      result = sub_227623B34(100, v67);
      break;
    case 49:
      v76 = swift_task_alloc();
      v0[137] = v76;
      *v76 = v0;
      v76[1] = sub_2276007A4;
      v77 = v0[35];

      result = sub_2276243FC(100, v77);
      break;
    case 50:
      v22 = swift_task_alloc();
      v0[139] = v22;
      *v22 = v0;
      v22[1] = sub_2276008B8;
      v23 = v0[35];

      result = sub_227624D34(100, v23);
      break;
    case 51:
      v190 = swift_task_alloc();
      v0[141] = v190;
      *v190 = v0;
      v190[1] = sub_2276009CC;
      v191 = v0[35];

      result = sub_2276255FC(100, v191);
      break;
    case 52:
      v178 = swift_task_alloc();
      v0[145] = v178;
      *v178 = v0;
      v178[1] = sub_227600BF4;
      v179 = v0[35];

      result = sub_22762686C(100, v179);
      break;
    case 53:
      v38 = swift_task_alloc();
      v0[147] = v38;
      *v38 = v0;
      v38[1] = sub_227600D08;
      v39 = v0[35];

      result = sub_2276271A4(100, v39);
      break;
    case 54:
      v172 = swift_task_alloc();
      v0[143] = v172;
      *v172 = v0;
      v172[1] = sub_227600AE0;
      v173 = v0[35];

      result = sub_227625F34(100, v173);
      break;
    case 55:
      v176 = swift_task_alloc();
      v0[149] = v176;
      *v176 = v0;
      v176[1] = sub_227600E1C;
      v177 = v0[35];

      result = sub_227627ADC(100, v177);
      break;
    case 56:
      v42 = swift_task_alloc();
      v0[151] = v42;
      *v42 = v0;
      v42[1] = sub_227600F30;
      v43 = v0[35];

      result = sub_227628414(100, v43);
      break;
    case 57:
      v157 = swift_task_alloc();
      v0[153] = v157;
      *v157 = v0;
      v157[1] = sub_227601044;
      v158 = v0[35];

      result = sub_227628D4C(100, v158);
      break;
    case 58:
      v68 = swift_task_alloc();
      v0[155] = v68;
      *v68 = v0;
      v68[1] = sub_227601158;
      v69 = v0[35];

      result = sub_227629684(100, v69);
      break;
    case 59:
      v100 = swift_task_alloc();
      v0[157] = v100;
      *v100 = v0;
      v101 = sub_22760126C;
LABEL_240:
      v100[1] = v101;
      v161 = v0[35];

      result = sub_22760A6F8(100, v161);
      break;
    case 60:
      v82 = swift_task_alloc();
      v0[159] = v82;
      *v82 = v0;
      v82[1] = sub_227601380;
      v83 = v0[35];

      result = sub_227629FBC(100, v83);
      break;
    case 61:
      v122 = swift_task_alloc();
      v0[161] = v122;
      *v122 = v0;
      v122[1] = sub_227601494;
      v123 = v0[35];

      result = sub_22762A8F4(100, v123);
      break;
    case 62:
      v128 = swift_task_alloc();
      v0[163] = v128;
      *v128 = v0;
      v128[1] = sub_2276015A8;
      v129 = v0[35];

      result = sub_22762B1BC(100, v129);
      break;
    case 63:
      v98 = swift_task_alloc();
      v0[165] = v98;
      *v98 = v0;
      v98[1] = sub_2276016BC;
      v99 = v0[35];

      result = sub_22762BAF4(100, v99);
      break;
    case 64:
      v84 = swift_task_alloc();
      v0[167] = v84;
      *v84 = v0;
      v84[1] = sub_2276017D0;
      v85 = v0[35];

      result = sub_22762C3BC(100, v85);
      break;
    case 65:
      v126 = swift_task_alloc();
      v0[169] = v126;
      *v126 = v0;
      v126[1] = sub_2276018E4;
      v127 = v0[35];

      result = sub_22762CCF4(100, v127);
      break;
    case 66:
      v30 = swift_task_alloc();
      v0[171] = v30;
      *v30 = v0;
      v30[1] = sub_2276019F8;
      v31 = v0[35];

      result = sub_22762D5BC(100, v31);
      break;
    case 67:
      v58 = swift_task_alloc();
      v0[173] = v58;
      *v58 = v0;
      v58[1] = sub_227601B0C;
      v59 = v0[35];

      result = sub_22762DEF4(100, v59);
      break;
    case 68:
      v198 = swift_task_alloc();
      v0[175] = v198;
      *v198 = v0;
      v198[1] = sub_227601C20;
      v199 = v0[35];

      result = sub_22762E82C(100, v199);
      break;
    case 69:
      v50 = swift_task_alloc();
      v0[177] = v50;
      *v50 = v0;
      v50[1] = sub_227601D34;
      v51 = v0[35];

      result = sub_22762F164(100, v51);
      break;
    case 70:
      v16 = swift_task_alloc();
      v0[179] = v16;
      *v16 = v0;
      v16[1] = sub_227601E48;
      v17 = v0[35];

      result = sub_22762FA9C(100, v17);
      break;
    case 71:
      v34 = swift_task_alloc();
      v0[181] = v34;
      *v34 = v0;
      v34[1] = sub_227601F5C;
      v35 = v0[35];

      result = sub_2276303D4(100, v35);
      break;
    case 72:
      v174 = swift_task_alloc();
      v0[183] = v174;
      *v174 = v0;
      v174[1] = sub_227602070;
      v175 = v0[35];

      result = sub_227630D0C(100, v175);
      break;
    case 73:
      v182 = swift_task_alloc();
      v0[185] = v182;
      *v182 = v0;
      v182[1] = sub_227602184;
      v183 = v0[35];

      result = sub_227631644(100, v183);
      break;
    case 74:
      v186 = swift_task_alloc();
      v0[187] = v186;
      *v186 = v0;
      v186[1] = sub_227602298;
      v187 = v0[35];

      result = sub_227631F7C(100, v187);
      break;
    case 75:
      v44 = swift_task_alloc();
      v0[189] = v44;
      *v44 = v0;
      v44[1] = sub_2276023AC;
      v45 = v0[35];

      result = sub_2276328B4(100, v45);
      break;
    case 76:
      v118 = swift_task_alloc();
      v0[191] = v118;
      *v118 = v0;
      v118[1] = sub_2276024C0;
      v119 = v0[35];

      result = sub_2276331EC(100, v119);
      break;
    case 77:
      v18 = swift_task_alloc();
      v0[193] = v18;
      *v18 = v0;
      v18[1] = sub_2276025D4;
      v19 = v0[35];

      result = sub_227633B24(100, v19);
      break;
    case 78:
      v194 = swift_task_alloc();
      v0[195] = v194;
      *v194 = v0;
      v194[1] = sub_2276026E8;
      v195 = v0[35];

      result = sub_22763445C(100, v195);
      break;
    case 79:
      v10 = swift_task_alloc();
      v0[197] = v10;
      *v10 = v0;
      v10[1] = sub_2276027FC;
      v11 = v0[35];

      result = sub_227634D94(100, v11);
      break;
    case 80:
      v32 = swift_task_alloc();
      v0[199] = v32;
      *v32 = v0;
      v32[1] = sub_227602910;
      v33 = v0[35];

      result = sub_2276356CC(100, v33);
      break;
    case 81:
      v74 = swift_task_alloc();
      v0[201] = v74;
      *v74 = v0;
      v74[1] = sub_227602A24;
      v75 = v0[35];

      result = sub_227636004(100, v75);
      break;
    case 82:
      v70 = swift_task_alloc();
      v0[203] = v70;
      *v70 = v0;
      v70[1] = sub_227602B38;
      v71 = v0[35];

      result = sub_2276368CC(100, v71);
      break;
    case 83:
      v6 = swift_task_alloc();
      v0[205] = v6;
      *v6 = v0;
      v6[1] = sub_227602C4C;
      v7 = v0[35];

      result = sub_227637204(100, v7);
      break;
    case 84:
      v4 = swift_task_alloc();
      v0[207] = v4;
      *v4 = v0;
      v4[1] = sub_227602D60;
      v5 = v0[35];

      result = sub_227637ACC(100, v5);
      break;
    case 85:
      v147 = swift_task_alloc();
      v0[209] = v147;
      *v147 = v0;
      v147[1] = sub_227602E74;
      v148 = v0[35];

      result = sub_227638404(100, v148);
      break;
    case 86:
      v151 = swift_task_alloc();
      v0[211] = v151;
      *v151 = v0;
      v151[1] = sub_227602F88;
      v152 = v0[35];

      result = sub_227638D3C(100, v152);
      break;
    case 87:
      v184 = swift_task_alloc();
      v0[213] = v184;
      *v184 = v0;
      v184[1] = sub_22760309C;
      v185 = v0[35];

      result = sub_227639674(100, v185);
      break;
    case 88:
      v24 = swift_task_alloc();
      v0[215] = v24;
      *v24 = v0;
      v24[1] = sub_2276031B0;
      v25 = v0[35];

      result = sub_227639FAC(100, v25);
      break;
    case 89:
      v206 = swift_task_alloc();
      v0[217] = v206;
      *v206 = v0;
      v206[1] = sub_2276032C4;
      v207 = v0[35];

      result = sub_22763A874(100, v207);
      break;
    case 90:
      v204 = swift_task_alloc();
      v0[219] = v204;
      *v204 = v0;
      v204[1] = sub_2276033D8;
      v205 = v0[35];

      result = sub_22763B1AC(100, v205);
      break;
    case 91:
      v8 = swift_task_alloc();
      v0[221] = v8;
      *v8 = v0;
      v8[1] = sub_2276034EC;
      v9 = v0[35];

      result = sub_22763BA74(100, v9);
      break;
    case 92:
      v106 = swift_task_alloc();
      v0[223] = v106;
      *v106 = v0;
      v106[1] = sub_227603600;
      v107 = v0[35];

      result = sub_22763C3AC(100, v107);
      break;
    case 93:
      v20 = swift_task_alloc();
      v0[225] = v20;
      *v20 = v0;
      v20[1] = sub_227603714;
      v21 = v0[35];

      result = sub_22763CCE4(100, v21);
      break;
    case 94:
      v114 = swift_task_alloc();
      v0[227] = v114;
      *v114 = v0;
      v114[1] = sub_227603828;
      v115 = v0[35];

      result = sub_22763D61C(100, v115);
      break;
    case 95:
      v200 = swift_task_alloc();
      v0[229] = v200;
      *v200 = v0;
      v200[1] = sub_22760393C;
      v201 = v0[35];

      result = sub_22763DEF8(100, v201);
      break;
    case 96:
      v12 = swift_task_alloc();
      v0[231] = v12;
      *v12 = v0;
      v12[1] = sub_227603A50;
      v13 = v0[35];

      result = sub_22763E7C0(100, v13);
      break;
    case 97:
      v208 = swift_task_alloc();
      v0[233] = v208;
      *v208 = v0;
      v208[1] = sub_227603B64;
      v209 = v0[35];

      result = sub_22763F0F8(100, v209);
      break;
    case 98:
      v108 = swift_task_alloc();
      v0[235] = v108;
      *v108 = v0;
      v108[1] = sub_227603C78;
      v109 = v0[35];

      result = sub_22763FA3C(100, v109);
      break;
    case 99:
      v210 = swift_task_alloc();
      v0[247] = v210;
      *v210 = v0;
      v210[1] = sub_2276042F0;
      v211 = v0[35];

      result = sub_22764311C(100, v211);
      break;
    case 100:
      v202 = swift_task_alloc();
      v0[243] = v202;
      *v202 = v0;
      v202[1] = sub_2276040C8;
      v203 = v0[35];

      result = sub_227641EAC(100, v203);
      break;
    case 101:
      v196 = swift_task_alloc();
      v0[237] = v196;
      *v196 = v0;
      v196[1] = sub_227603D8C;
      v197 = v0[35];

      result = sub_227640374(100, v197);
      break;
    case 102:
      v28 = swift_task_alloc();
      v0[239] = v28;
      *v28 = v0;
      v28[1] = sub_227603EA0;
      v29 = v0[35];

      result = sub_227640CAC(100, v29);
      break;
    case 103:
      v192 = swift_task_alloc();
      v0[245] = v192;
      *v192 = v0;
      v192[1] = sub_2276041DC;
      v193 = v0[35];

      result = sub_2276427E4(100, v193);
      break;
    case 104:
      v188 = swift_task_alloc();
      v0[241] = v188;
      *v188 = v0;
      v188[1] = sub_227603FB4;
      v189 = v0[35];

      result = sub_227641574(100, v189);
      break;
    case 105:
      v14 = swift_task_alloc();
      v0[249] = v14;
      *v14 = v0;
      v14[1] = sub_227604404;
      v15 = v0[35];

      result = sub_2276439E4(100, v15);
      break;
    default:
      v1 = swift_task_alloc();
      v0[39] = v1;
      *v1 = v0;
      v1[1] = sub_2275FA23C;
      v2 = v0[35];

      result = sub_227608B50(100, v2);
      break;
  }

  return result;
}

uint64_t sub_2275FA23C()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_2276045C0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FA350()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_227604668;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FA464()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_227604710;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FA578()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_2276047B8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FA68C()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_227604860;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FA7A0()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_227604908;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FA8B4()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_2276049B0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FA9C8()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_227604A58;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FAADC()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_227604B00;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FABF0()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_227604BA8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FAD04()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_227604C50;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FAE18()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_227604CF8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FAF2C()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_227604DA0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB040()
{
  v2 = *(*v1 + 520);
  v5 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = sub_227604E48;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB154()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_227604EF0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB268()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_227604F98;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB37C()
{
  v2 = *(*v1 + 568);
  v5 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = sub_227605040;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB490()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_2276050E8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB5A4()
{
  v2 = *(*v1 + 600);
  v5 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = sub_227605190;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB6B8()
{
  v2 = *(*v1 + 616);
  v5 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v3 = sub_227605238;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB7CC()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_2276052E0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB8E0()
{
  v2 = *(*v1 + 648);
  v5 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = sub_227605388;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FB9F4()
{
  v2 = *(*v1 + 664);
  v5 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = sub_227605430;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FBB08()
{
  v2 = *(*v1 + 680);
  v5 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v3 = sub_2276054D8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FBC1C()
{
  v2 = *(*v1 + 696);
  v5 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = sub_227605580;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FBD30()
{
  v2 = *(*v1 + 712);
  v5 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    v3 = sub_227605628;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FBE44()
{
  v2 = *(*v1 + 728);
  v5 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v3 = sub_2276056D0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FBF58()
{
  v2 = *(*v1 + 744);
  v5 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = sub_227605778;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FC06C()
{
  v2 = *(*v1 + 760);
  v5 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v3 = sub_227605820;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FC180()
{
  v2 = *(*v1 + 776);
  v5 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = sub_2276058C8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FC294()
{
  v2 = *(*v1 + 792);
  v5 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = sub_227605970;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FC3A8()
{
  v2 = *(*v1 + 808);
  v5 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v3 = sub_227605A18;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FC4BC()
{
  v2 = *(*v1 + 824);
  v5 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v3 = sub_227605AC0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FC5D0()
{
  v2 = *(*v1 + 840);
  v5 = *v1;
  *(*v1 + 848) = v0;

  if (v0)
  {
    v3 = sub_227605B68;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FC6E4()
{
  v2 = *(*v1 + 856);
  v5 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v3 = sub_227605C10;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FC7F8()
{
  v2 = *(*v1 + 872);
  v5 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v3 = sub_227605CB8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FC90C()
{
  v2 = *(*v1 + 888);
  v5 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v3 = sub_227605D60;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FCA20()
{
  v2 = *(*v1 + 904);
  v5 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = sub_227605E08;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FCB34()
{
  v2 = *(*v1 + 920);
  v5 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = sub_227605EB0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FCC48()
{
  v2 = *(*v1 + 936);
  v5 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v3 = sub_227605F58;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FCD5C()
{
  v2 = *(*v1 + 952);
  v5 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v3 = sub_227606000;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FCE70()
{
  v2 = *(*v1 + 968);
  v5 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v3 = sub_2276060A8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FCF84()
{
  v2 = *(*v1 + 984);
  v5 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = sub_227606150;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FD098()
{
  v2 = *(*v1 + 1000);
  v5 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v3 = sub_2276061F8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FD1AC()
{
  v2 = *(*v1 + 1016);
  v5 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v3 = sub_2276062A0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FD2C0()
{
  v2 = *(*v1 + 1032);
  v5 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v3 = sub_227606348;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FD3D4()
{
  v2 = *(*v1 + 1048);
  v5 = *v1;
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v3 = sub_2276063F0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FD4E8()
{
  v2 = *(*v1 + 1064);
  v5 = *v1;
  *(*v1 + 1072) = v0;

  if (v0)
  {
    v3 = sub_227606498;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FD5FC()
{
  v2 = *(*v1 + 1080);
  v5 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v3 = sub_227606540;
  }

  else
  {
    v3 = sub_2275FD710;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275FD710()
{
  v1 = v0[38] + 1;
  if (v0[38] == 105)
  {
    v3 = v0[34];
    v2 = v0[35];
    v5 = v0[32];
    v4 = v0[33];
    v6 = v0[29];
    v8 = v0[25];
    v7 = v0[26];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v0[38] = v1;
    switch(*(&unk_283A95F00 + v1 + 32))
    {
      case 1:
        v113 = swift_task_alloc();
        v0[41] = v113;
        *v113 = v0;
        v113[1] = sub_2275FA350;
        v114 = v0[35];

        return sub_227609488(100, v114);
      case 2:
        v103 = swift_task_alloc();
        v0[43] = v103;
        *v103 = v0;
        v103[1] = sub_2275FA464;
        v104 = v0[35];

        return sub_227609DC0(100, v104);
      case 3:
        v109 = swift_task_alloc();
        v0[45] = v109;
        *v109 = v0;
        v110 = sub_2275FA578;
        goto LABEL_244;
      case 4:
        v87 = swift_task_alloc();
        v0[47] = v87;
        *v87 = v0;
        v87[1] = sub_2275FA68C;
        v88 = v0[35];

        return sub_22760B0BC(100, v88);
      case 5:
        v133 = swift_task_alloc();
        v0[49] = v133;
        *v133 = v0;
        v133[1] = sub_2275FA7A0;
        v134 = v0[35];

        return sub_22760B9F4(100, v134);
      case 6:
        v111 = swift_task_alloc();
        v0[51] = v111;
        *v111 = v0;
        v112 = sub_2275FA8B4;
        goto LABEL_201;
      case 7:
        v111 = swift_task_alloc();
        v0[53] = v111;
        *v111 = v0;
        v112 = sub_2275FA9C8;
LABEL_201:
        v111[1] = v112;
        v143 = v0[35];

        result = sub_22760C32C(100, v143);
        break;
      case 8:
        v148 = swift_task_alloc();
        v0[55] = v148;
        *v148 = v0;
        v148[1] = sub_2275FAADC;
        v149 = v0[35];

        result = sub_22760CC64(100, v149);
        break;
      case 9:
        v97 = swift_task_alloc();
        v0[57] = v97;
        *v97 = v0;
        v97[1] = sub_2275FABF0;
        v98 = v0[35];

        result = sub_22760D61C(100, v98);
        break;
      case 0xA:
        v146 = swift_task_alloc();
        v0[59] = v146;
        *v146 = v0;
        v146[1] = sub_2275FAD04;
        v147 = v0[35];

        result = sub_22760DF54(100, v147);
        break;
      case 0xB:
        v81 = swift_task_alloc();
        v0[61] = v81;
        *v81 = v0;
        v81[1] = sub_2275FAE18;
        v82 = v0[35];

        result = sub_22760E88C(100, v82);
        break;
      case 0xC:
        v95 = swift_task_alloc();
        v0[63] = v95;
        *v95 = v0;
        v95[1] = sub_2275FAF2C;
        v96 = v0[35];

        result = sub_22760F1C4(100, v96);
        break;
      case 0xD:
        v141 = swift_task_alloc();
        v0[65] = v141;
        *v141 = v0;
        v141[1] = sub_2275FB040;
        v142 = v0[35];

        result = sub_22760FAFC(100, v142);
        break;
      case 0xE:
        v71 = swift_task_alloc();
        v0[67] = v71;
        *v71 = v0;
        v71[1] = sub_2275FB154;
        v72 = v0[35];

        result = sub_227610434(100, v72);
        break;
      case 0xF:
        v105 = swift_task_alloc();
        v0[69] = v105;
        *v105 = v0;
        v105[1] = sub_2275FB268;
        v106 = v0[35];

        result = sub_227610D6C(100, v106);
        break;
      case 0x10:
        v65 = swift_task_alloc();
        v0[71] = v65;
        *v65 = v0;
        v65[1] = sub_2275FB37C;
        v66 = v0[35];

        result = sub_2276116A4(100, v66);
        break;
      case 0x11:
        v121 = swift_task_alloc();
        v0[73] = v121;
        *v121 = v0;
        v121[1] = sub_2275FB490;
        v122 = v0[35];

        result = sub_227611F6C(100, v122);
        break;
      case 0x12:
        v144 = swift_task_alloc();
        v0[75] = v144;
        *v144 = v0;
        v144[1] = sub_2275FB5A4;
        v145 = v0[35];

        result = sub_2276128A4(100, v145);
        break;
      case 0x13:
        v164 = swift_task_alloc();
        v0[77] = v164;
        *v164 = v0;
        v164[1] = sub_2275FB6B8;
        v165 = v0[35];

        result = sub_22761316C(100, v165);
        break;
      case 0x14:
        v129 = swift_task_alloc();
        v0[79] = v129;
        *v129 = v0;
        v129[1] = sub_2275FB7CC;
        v130 = v0[35];

        result = sub_227613AA4(100, v130);
        break;
      case 0x15:
        v139 = swift_task_alloc();
        v0[81] = v139;
        *v139 = v0;
        v139[1] = sub_2275FB8E0;
        v140 = v0[35];

        result = sub_2276143DC(100, v140);
        break;
      case 0x16:
        v158 = swift_task_alloc();
        v0[83] = v158;
        *v158 = v0;
        v158[1] = sub_2275FB9F4;
        v159 = v0[35];

        result = sub_227614CE8(100, v159);
        break;
      case 0x17:
        v171 = swift_task_alloc();
        v0[87] = v171;
        *v171 = v0;
        v171[1] = sub_2275FBC1C;
        v172 = v0[35];

        result = sub_227615F00(100, v172);
        break;
      case 0x18:
        v101 = swift_task_alloc();
        v0[85] = v101;
        *v101 = v0;
        v101[1] = sub_2275FBB08;
        v102 = v0[35];

        result = sub_2276155F4(100, v102);
        break;
      case 0x19:
        v99 = swift_task_alloc();
        v0[89] = v99;
        *v99 = v0;
        v99[1] = sub_2275FBD30;
        v100 = v0[35];

        result = sub_227616838(100, v100);
        break;
      case 0x1A:
        v179 = swift_task_alloc();
        v0[91] = v179;
        *v179 = v0;
        v179[1] = sub_2275FBE44;
        v180 = v0[35];

        result = sub_227617170(100, v180);
        break;
      case 0x1B:
        v61 = swift_task_alloc();
        v0[93] = v61;
        *v61 = v0;
        v61[1] = sub_2275FBF58;
        v62 = v0[35];

        result = sub_227617AA8(100, v62);
        break;
      case 0x1C:
        v173 = swift_task_alloc();
        v0[95] = v173;
        *v173 = v0;
        v173[1] = sub_2275FC06C;
        v174 = v0[35];

        result = sub_2276183E0(100, v174);
        break;
      case 0x1D:
        v175 = swift_task_alloc();
        v0[97] = v175;
        *v175 = v0;
        v175[1] = sub_2275FC180;
        v176 = v0[35];

        result = sub_227618D18(100, v176);
        break;
      case 0x1E:
        v150 = swift_task_alloc();
        v0[99] = v150;
        *v150 = v0;
        v150[1] = sub_2275FC294;
        v151 = v0[35];

        result = sub_227619650(100, v151);
        break;
      case 0x1F:
        v119 = swift_task_alloc();
        v0[101] = v119;
        *v119 = v0;
        v119[1] = sub_2275FC3A8;
        v120 = v0[35];

        result = sub_227619F88(100, v120);
        break;
      case 0x20:
        v152 = swift_task_alloc();
        v0[103] = v152;
        *v152 = v0;
        v152[1] = sub_2275FC4BC;
        v153 = v0[35];

        result = sub_22761A8C0(100, v153);
        break;
      case 0x21:
        v73 = swift_task_alloc();
        v0[105] = v73;
        *v73 = v0;
        v73[1] = sub_2275FC5D0;
        v74 = v0[35];

        result = sub_22761B188(100, v74);
        break;
      case 0x22:
        v63 = swift_task_alloc();
        v0[107] = v63;
        *v63 = v0;
        v63[1] = sub_2275FC6E4;
        v64 = v0[35];

        result = sub_22761BAC0(100, v64);
        break;
      case 0x23:
        v55 = swift_task_alloc();
        v0[109] = v55;
        *v55 = v0;
        v55[1] = sub_2275FC7F8;
        v56 = v0[35];

        result = sub_22761C3F8(100, v56);
        break;
      case 0x24:
        v57 = swift_task_alloc();
        v0[111] = v57;
        *v57 = v0;
        v57[1] = sub_2275FC90C;
        v58 = v0[35];

        result = sub_22761CD30(100, v58);
        break;
      case 0x25:
        v45 = swift_task_alloc();
        v0[113] = v45;
        *v45 = v0;
        v45[1] = sub_2275FCA20;
        v46 = v0[35];

        result = sub_22761D668(100, v46);
        break;
      case 0x26:
        v177 = swift_task_alloc();
        v0[115] = v177;
        *v177 = v0;
        v177[1] = sub_2275FCB34;
        v178 = v0[35];

        result = sub_22761DFA0(100, v178);
        break;
      case 0x27:
        v162 = swift_task_alloc();
        v0[117] = v162;
        *v162 = v0;
        v162[1] = sub_2275FCC48;
        v163 = v0[35];

        result = sub_22761E8AC(100, v163);
        break;
      case 0x28:
        v89 = swift_task_alloc();
        v0[119] = v89;
        *v89 = v0;
        v89[1] = sub_2275FCD5C;
        v90 = v0[35];

        result = sub_22761F1E4(100, v90);
        break;
      case 0x29:
        v125 = swift_task_alloc();
        v0[121] = v125;
        *v125 = v0;
        v125[1] = sub_2275FCE70;
        v126 = v0[35];

        result = sub_22761FB1C(100, v126);
        break;
      case 0x2A:
        v168 = swift_task_alloc();
        v0[123] = v168;
        *v168 = v0;
        v168[1] = sub_2275FCF84;
        v169 = v0[35];

        result = sub_227620454(100, v169);
        break;
      case 0x2B:
        v35 = swift_task_alloc();
        v0[125] = v35;
        *v35 = v0;
        v35[1] = sub_2275FD098;
        v36 = v0[35];

        result = sub_227620D8C(100, v36);
        break;
      case 0x2C:
        v69 = swift_task_alloc();
        v0[127] = v69;
        *v69 = v0;
        v69[1] = sub_2275FD1AC;
        v70 = v0[35];

        result = sub_2276216C4(100, v70);
        break;
      case 0x2D:
        v154 = swift_task_alloc();
        v0[129] = v154;
        *v154 = v0;
        v154[1] = sub_2275FD2C0;
        v155 = v0[35];

        result = sub_227621F8C(100, v155);
        break;
      case 0x2E:
        v189 = swift_task_alloc();
        v0[131] = v189;
        *v189 = v0;
        v189[1] = sub_2275FD3D4;
        v190 = v0[35];

        result = sub_2276228C4(100, v190);
        break;
      case 0x2F:
        v49 = swift_task_alloc();
        v0[133] = v49;
        *v49 = v0;
        v49[1] = sub_2275FD4E8;
        v50 = v0[35];

        result = sub_2276231FC(100, v50);
        break;
      case 0x30:
        v75 = swift_task_alloc();
        v0[135] = v75;
        *v75 = v0;
        v75[1] = sub_2275FD5FC;
        v76 = v0[35];

        result = sub_227623B34(100, v76);
        break;
      case 0x31:
        v85 = swift_task_alloc();
        v0[137] = v85;
        *v85 = v0;
        v85[1] = sub_2276007A4;
        v86 = v0[35];

        result = sub_2276243FC(100, v86);
        break;
      case 0x32:
        v31 = swift_task_alloc();
        v0[139] = v31;
        *v31 = v0;
        v31[1] = sub_2276008B8;
        v32 = v0[35];

        result = sub_227624D34(100, v32);
        break;
      case 0x33:
        v199 = swift_task_alloc();
        v0[141] = v199;
        *v199 = v0;
        v199[1] = sub_2276009CC;
        v200 = v0[35];

        result = sub_2276255FC(100, v200);
        break;
      case 0x34:
        v187 = swift_task_alloc();
        v0[145] = v187;
        *v187 = v0;
        v187[1] = sub_227600BF4;
        v188 = v0[35];

        result = sub_22762686C(100, v188);
        break;
      case 0x35:
        v47 = swift_task_alloc();
        v0[147] = v47;
        *v47 = v0;
        v47[1] = sub_227600D08;
        v48 = v0[35];

        result = sub_2276271A4(100, v48);
        break;
      case 0x36:
        v181 = swift_task_alloc();
        v0[143] = v181;
        *v181 = v0;
        v181[1] = sub_227600AE0;
        v182 = v0[35];

        result = sub_227625F34(100, v182);
        break;
      case 0x37:
        v185 = swift_task_alloc();
        v0[149] = v185;
        *v185 = v0;
        v185[1] = sub_227600E1C;
        v186 = v0[35];

        result = sub_227627ADC(100, v186);
        break;
      case 0x38:
        v51 = swift_task_alloc();
        v0[151] = v51;
        *v51 = v0;
        v51[1] = sub_227600F30;
        v52 = v0[35];

        result = sub_227628414(100, v52);
        break;
      case 0x39:
        v166 = swift_task_alloc();
        v0[153] = v166;
        *v166 = v0;
        v166[1] = sub_227601044;
        v167 = v0[35];

        result = sub_227628D4C(100, v167);
        break;
      case 0x3A:
        v77 = swift_task_alloc();
        v0[155] = v77;
        *v77 = v0;
        v77[1] = sub_227601158;
        v78 = v0[35];

        result = sub_227629684(100, v78);
        break;
      case 0x3B:
        v109 = swift_task_alloc();
        v0[157] = v109;
        *v109 = v0;
        v110 = sub_22760126C;
LABEL_244:
        v109[1] = v110;
        v170 = v0[35];

        result = sub_22760A6F8(100, v170);
        break;
      case 0x3C:
        v91 = swift_task_alloc();
        v0[159] = v91;
        *v91 = v0;
        v91[1] = sub_227601380;
        v92 = v0[35];

        result = sub_227629FBC(100, v92);
        break;
      case 0x3D:
        v131 = swift_task_alloc();
        v0[161] = v131;
        *v131 = v0;
        v131[1] = sub_227601494;
        v132 = v0[35];

        result = sub_22762A8F4(100, v132);
        break;
      case 0x3E:
        v137 = swift_task_alloc();
        v0[163] = v137;
        *v137 = v0;
        v137[1] = sub_2276015A8;
        v138 = v0[35];

        result = sub_22762B1BC(100, v138);
        break;
      case 0x3F:
        v107 = swift_task_alloc();
        v0[165] = v107;
        *v107 = v0;
        v107[1] = sub_2276016BC;
        v108 = v0[35];

        result = sub_22762BAF4(100, v108);
        break;
      case 0x40:
        v93 = swift_task_alloc();
        v0[167] = v93;
        *v93 = v0;
        v93[1] = sub_2276017D0;
        v94 = v0[35];

        result = sub_22762C3BC(100, v94);
        break;
      case 0x41:
        v135 = swift_task_alloc();
        v0[169] = v135;
        *v135 = v0;
        v135[1] = sub_2276018E4;
        v136 = v0[35];

        result = sub_22762CCF4(100, v136);
        break;
      case 0x42:
        v39 = swift_task_alloc();
        v0[171] = v39;
        *v39 = v0;
        v39[1] = sub_2276019F8;
        v40 = v0[35];

        result = sub_22762D5BC(100, v40);
        break;
      case 0x43:
        v67 = swift_task_alloc();
        v0[173] = v67;
        *v67 = v0;
        v67[1] = sub_227601B0C;
        v68 = v0[35];

        result = sub_22762DEF4(100, v68);
        break;
      case 0x44:
        v207 = swift_task_alloc();
        v0[175] = v207;
        *v207 = v0;
        v207[1] = sub_227601C20;
        v208 = v0[35];

        result = sub_22762E82C(100, v208);
        break;
      case 0x45:
        v59 = swift_task_alloc();
        v0[177] = v59;
        *v59 = v0;
        v59[1] = sub_227601D34;
        v60 = v0[35];

        result = sub_22762F164(100, v60);
        break;
      case 0x46:
        v25 = swift_task_alloc();
        v0[179] = v25;
        *v25 = v0;
        v25[1] = sub_227601E48;
        v26 = v0[35];

        result = sub_22762FA9C(100, v26);
        break;
      case 0x47:
        v43 = swift_task_alloc();
        v0[181] = v43;
        *v43 = v0;
        v43[1] = sub_227601F5C;
        v44 = v0[35];

        result = sub_2276303D4(100, v44);
        break;
      case 0x48:
        v183 = swift_task_alloc();
        v0[183] = v183;
        *v183 = v0;
        v183[1] = sub_227602070;
        v184 = v0[35];

        result = sub_227630D0C(100, v184);
        break;
      case 0x49:
        v191 = swift_task_alloc();
        v0[185] = v191;
        *v191 = v0;
        v191[1] = sub_227602184;
        v192 = v0[35];

        result = sub_227631644(100, v192);
        break;
      case 0x4A:
        v195 = swift_task_alloc();
        v0[187] = v195;
        *v195 = v0;
        v195[1] = sub_227602298;
        v196 = v0[35];

        result = sub_227631F7C(100, v196);
        break;
      case 0x4B:
        v53 = swift_task_alloc();
        v0[189] = v53;
        *v53 = v0;
        v53[1] = sub_2276023AC;
        v54 = v0[35];

        result = sub_2276328B4(100, v54);
        break;
      case 0x4C:
        v127 = swift_task_alloc();
        v0[191] = v127;
        *v127 = v0;
        v127[1] = sub_2276024C0;
        v128 = v0[35];

        result = sub_2276331EC(100, v128);
        break;
      case 0x4D:
        v27 = swift_task_alloc();
        v0[193] = v27;
        *v27 = v0;
        v27[1] = sub_2276025D4;
        v28 = v0[35];

        result = sub_227633B24(100, v28);
        break;
      case 0x4E:
        v203 = swift_task_alloc();
        v0[195] = v203;
        *v203 = v0;
        v203[1] = sub_2276026E8;
        v204 = v0[35];

        result = sub_22763445C(100, v204);
        break;
      case 0x4F:
        v19 = swift_task_alloc();
        v0[197] = v19;
        *v19 = v0;
        v19[1] = sub_2276027FC;
        v20 = v0[35];

        result = sub_227634D94(100, v20);
        break;
      case 0x50:
        v41 = swift_task_alloc();
        v0[199] = v41;
        *v41 = v0;
        v41[1] = sub_227602910;
        v42 = v0[35];

        result = sub_2276356CC(100, v42);
        break;
      case 0x51:
        v83 = swift_task_alloc();
        v0[201] = v83;
        *v83 = v0;
        v83[1] = sub_227602A24;
        v84 = v0[35];

        result = sub_227636004(100, v84);
        break;
      case 0x52:
        v79 = swift_task_alloc();
        v0[203] = v79;
        *v79 = v0;
        v79[1] = sub_227602B38;
        v80 = v0[35];

        result = sub_2276368CC(100, v80);
        break;
      case 0x53:
        v15 = swift_task_alloc();
        v0[205] = v15;
        *v15 = v0;
        v15[1] = sub_227602C4C;
        v16 = v0[35];

        result = sub_227637204(100, v16);
        break;
      case 0x54:
        v13 = swift_task_alloc();
        v0[207] = v13;
        *v13 = v0;
        v13[1] = sub_227602D60;
        v14 = v0[35];

        result = sub_227637ACC(100, v14);
        break;
      case 0x55:
        v156 = swift_task_alloc();
        v0[209] = v156;
        *v156 = v0;
        v156[1] = sub_227602E74;
        v157 = v0[35];

        result = sub_227638404(100, v157);
        break;
      case 0x56:
        v160 = swift_task_alloc();
        v0[211] = v160;
        *v160 = v0;
        v160[1] = sub_227602F88;
        v161 = v0[35];

        result = sub_227638D3C(100, v161);
        break;
      case 0x57:
        v193 = swift_task_alloc();
        v0[213] = v193;
        *v193 = v0;
        v193[1] = sub_22760309C;
        v194 = v0[35];

        result = sub_227639674(100, v194);
        break;
      case 0x58:
        v33 = swift_task_alloc();
        v0[215] = v33;
        *v33 = v0;
        v33[1] = sub_2276031B0;
        v34 = v0[35];

        result = sub_227639FAC(100, v34);
        break;
      case 0x59:
        v215 = swift_task_alloc();
        v0[217] = v215;
        *v215 = v0;
        v215[1] = sub_2276032C4;
        v216 = v0[35];

        result = sub_22763A874(100, v216);
        break;
      case 0x5A:
        v213 = swift_task_alloc();
        v0[219] = v213;
        *v213 = v0;
        v213[1] = sub_2276033D8;
        v214 = v0[35];

        result = sub_22763B1AC(100, v214);
        break;
      case 0x5B:
        v17 = swift_task_alloc();
        v0[221] = v17;
        *v17 = v0;
        v17[1] = sub_2276034EC;
        v18 = v0[35];

        result = sub_22763BA74(100, v18);
        break;
      case 0x5C:
        v115 = swift_task_alloc();
        v0[223] = v115;
        *v115 = v0;
        v115[1] = sub_227603600;
        v116 = v0[35];

        result = sub_22763C3AC(100, v116);
        break;
      case 0x5D:
        v29 = swift_task_alloc();
        v0[225] = v29;
        *v29 = v0;
        v29[1] = sub_227603714;
        v30 = v0[35];

        result = sub_22763CCE4(100, v30);
        break;
      case 0x5E:
        v123 = swift_task_alloc();
        v0[227] = v123;
        *v123 = v0;
        v123[1] = sub_227603828;
        v124 = v0[35];

        result = sub_22763D61C(100, v124);
        break;
      case 0x5F:
        v209 = swift_task_alloc();
        v0[229] = v209;
        *v209 = v0;
        v209[1] = sub_22760393C;
        v210 = v0[35];

        result = sub_22763DEF8(100, v210);
        break;
      case 0x60:
        v21 = swift_task_alloc();
        v0[231] = v21;
        *v21 = v0;
        v21[1] = sub_227603A50;
        v22 = v0[35];

        result = sub_22763E7C0(100, v22);
        break;
      case 0x61:
        v217 = swift_task_alloc();
        v0[233] = v217;
        *v217 = v0;
        v217[1] = sub_227603B64;
        v218 = v0[35];

        result = sub_22763F0F8(100, v218);
        break;
      case 0x62:
        v117 = swift_task_alloc();
        v0[235] = v117;
        *v117 = v0;
        v117[1] = sub_227603C78;
        v118 = v0[35];

        result = sub_22763FA3C(100, v118);
        break;
      case 0x63:
        v219 = swift_task_alloc();
        v0[247] = v219;
        *v219 = v0;
        v219[1] = sub_2276042F0;
        v220 = v0[35];

        result = sub_22764311C(100, v220);
        break;
      case 0x64:
        v211 = swift_task_alloc();
        v0[243] = v211;
        *v211 = v0;
        v211[1] = sub_2276040C8;
        v212 = v0[35];

        result = sub_227641EAC(100, v212);
        break;
      case 0x65:
        v205 = swift_task_alloc();
        v0[237] = v205;
        *v205 = v0;
        v205[1] = sub_227603D8C;
        v206 = v0[35];

        result = sub_227640374(100, v206);
        break;
      case 0x66:
        v37 = swift_task_alloc();
        v0[239] = v37;
        *v37 = v0;
        v37[1] = sub_227603EA0;
        v38 = v0[35];

        result = sub_227640CAC(100, v38);
        break;
      case 0x67:
        v201 = swift_task_alloc();
        v0[245] = v201;
        *v201 = v0;
        v201[1] = sub_2276041DC;
        v202 = v0[35];

        result = sub_2276427E4(100, v202);
        break;
      case 0x68:
        v197 = swift_task_alloc();
        v0[241] = v197;
        *v197 = v0;
        v197[1] = sub_227603FB4;
        v198 = v0[35];

        result = sub_227641574(100, v198);
        break;
      case 0x69:
        v23 = swift_task_alloc();
        v0[249] = v23;
        *v23 = v0;
        v23[1] = sub_227604404;
        v24 = v0[35];

        result = sub_2276439E4(100, v24);
        break;
      default:
        v11 = swift_task_alloc();
        v0[39] = v11;
        *v11 = v0;
        v11[1] = sub_2275FA23C;
        v12 = v0[35];

        result = sub_227608B50(100, v12);
        break;
    }
  }

  return result;
}

uint64_t sub_2276007A4()
{
  v2 = *(*v1 + 1096);
  v5 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v3 = sub_2276065E8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276008B8()
{
  v2 = *(*v1 + 1112);
  v5 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v3 = sub_227606690;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276009CC()
{
  v2 = *(*v1 + 1128);
  v5 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v3 = sub_227606738;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227600AE0()
{
  v2 = *(*v1 + 1144);
  v5 = *v1;
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v3 = sub_2276067E0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227600BF4()
{
  v2 = *(*v1 + 1160);
  v5 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v3 = sub_227606888;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227600D08()
{
  v2 = *(*v1 + 1176);
  v5 = *v1;
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v3 = sub_227606930;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227600E1C()
{
  v2 = *(*v1 + 1192);
  v5 = *v1;
  *(*v1 + 1200) = v0;

  if (v0)
  {
    v3 = sub_2276069D8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227600F30()
{
  v2 = *(*v1 + 1208);
  v5 = *v1;
  *(*v1 + 1216) = v0;

  if (v0)
  {
    v3 = sub_227606A80;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227601044()
{
  v2 = *(*v1 + 1224);
  v5 = *v1;
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v3 = sub_227606B28;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227601158()
{
  v2 = *(*v1 + 1240);
  v5 = *v1;
  *(*v1 + 1248) = v0;

  if (v0)
  {
    v3 = sub_227606BD0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22760126C()
{
  v2 = *(*v1 + 1256);
  v5 = *v1;
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v3 = sub_227606C78;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227601380()
{
  v2 = *(*v1 + 1272);
  v5 = *v1;
  *(*v1 + 1280) = v0;

  if (v0)
  {
    v3 = sub_227606D20;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227601494()
{
  v2 = *(*v1 + 1288);
  v5 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v3 = sub_227606DC8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276015A8()
{
  v2 = *(*v1 + 1304);
  v5 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v3 = sub_227606E70;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276016BC()
{
  v2 = *(*v1 + 1320);
  v5 = *v1;
  *(*v1 + 1328) = v0;

  if (v0)
  {
    v3 = sub_227606F18;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276017D0()
{
  v2 = *(*v1 + 1336);
  v5 = *v1;
  *(*v1 + 1344) = v0;

  if (v0)
  {
    v3 = sub_227606FC0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276018E4()
{
  v2 = *(*v1 + 1352);
  v5 = *v1;
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v3 = sub_227607068;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276019F8()
{
  v2 = *(*v1 + 1368);
  v5 = *v1;
  *(*v1 + 1376) = v0;

  if (v0)
  {
    v3 = sub_227607110;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227601B0C()
{
  v2 = *(*v1 + 1384);
  v5 = *v1;
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v3 = sub_2276071B8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227601C20()
{
  v2 = *(*v1 + 1400);
  v5 = *v1;
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v3 = sub_227607260;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227601D34()
{
  v2 = *(*v1 + 1416);
  v5 = *v1;
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v3 = sub_227607308;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227601E48()
{
  v2 = *(*v1 + 1432);
  v5 = *v1;
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v3 = sub_2276073B0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227601F5C()
{
  v2 = *(*v1 + 1448);
  v5 = *v1;
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v3 = sub_227607458;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602070()
{
  v2 = *(*v1 + 1464);
  v5 = *v1;
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v3 = sub_227607500;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602184()
{
  v2 = *(*v1 + 1480);
  v5 = *v1;
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v3 = sub_2276075A8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602298()
{
  v2 = *(*v1 + 1496);
  v5 = *v1;
  *(*v1 + 1504) = v0;

  if (v0)
  {
    v3 = sub_227607650;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276023AC()
{
  v2 = *(*v1 + 1512);
  v5 = *v1;
  *(*v1 + 1520) = v0;

  if (v0)
  {
    v3 = sub_2276076F8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276024C0()
{
  v2 = *(*v1 + 1528);
  v5 = *v1;
  *(*v1 + 1536) = v0;

  if (v0)
  {
    v3 = sub_2276077A0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276025D4()
{
  v2 = *(*v1 + 1544);
  v5 = *v1;
  *(*v1 + 1552) = v0;

  if (v0)
  {
    v3 = sub_227607848;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276026E8()
{
  v2 = *(*v1 + 1560);
  v5 = *v1;
  *(*v1 + 1568) = v0;

  if (v0)
  {
    v3 = sub_2276078F0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276027FC()
{
  v2 = *(*v1 + 1576);
  v5 = *v1;
  *(*v1 + 1584) = v0;

  if (v0)
  {
    v3 = sub_227607998;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602910()
{
  v2 = *(*v1 + 1592);
  v5 = *v1;
  *(*v1 + 1600) = v0;

  if (v0)
  {
    v3 = sub_227607A40;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602A24()
{
  v2 = *(*v1 + 1608);
  v5 = *v1;
  *(*v1 + 1616) = v0;

  if (v0)
  {
    v3 = sub_227607AE8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602B38()
{
  v2 = *(*v1 + 1624);
  v5 = *v1;
  *(*v1 + 1632) = v0;

  if (v0)
  {
    v3 = sub_227607B90;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602C4C()
{
  v2 = *(*v1 + 1640);
  v5 = *v1;
  *(*v1 + 1648) = v0;

  if (v0)
  {
    v3 = sub_227607C38;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602D60()
{
  v2 = *(*v1 + 1656);
  v5 = *v1;
  *(*v1 + 1664) = v0;

  if (v0)
  {
    v3 = sub_227607CE0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602E74()
{
  v2 = *(*v1 + 1672);
  v5 = *v1;
  *(*v1 + 1680) = v0;

  if (v0)
  {
    v3 = sub_227607D88;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227602F88()
{
  v2 = *(*v1 + 1688);
  v5 = *v1;
  *(*v1 + 1696) = v0;

  if (v0)
  {
    v3 = sub_227607E30;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22760309C()
{
  v2 = *(*v1 + 1704);
  v5 = *v1;
  *(*v1 + 1712) = v0;

  if (v0)
  {
    v3 = sub_227607ED8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276031B0()
{
  v2 = *(*v1 + 1720);
  v5 = *v1;
  *(*v1 + 1728) = v0;

  if (v0)
  {
    v3 = sub_227607F80;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276032C4()
{
  v2 = *(*v1 + 1736);
  v5 = *v1;
  *(*v1 + 1744) = v0;

  if (v0)
  {
    v3 = sub_227608028;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276033D8()
{
  v2 = *(*v1 + 1752);
  v5 = *v1;
  *(*v1 + 1760) = v0;

  if (v0)
  {
    v3 = sub_2276080D0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276034EC()
{
  v2 = *(*v1 + 1768);
  v5 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v3 = sub_227608178;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227603600()
{
  v2 = *(*v1 + 1784);
  v5 = *v1;
  *(*v1 + 1792) = v0;

  if (v0)
  {
    v3 = sub_227608220;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227603714()
{
  v2 = *(*v1 + 1800);
  v5 = *v1;
  *(*v1 + 1808) = v0;

  if (v0)
  {
    v3 = sub_2276082C8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227603828()
{
  v2 = *(*v1 + 1816);
  v5 = *v1;
  *(*v1 + 1824) = v0;

  if (v0)
  {
    v3 = sub_227608370;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22760393C()
{
  v2 = *(*v1 + 1832);
  v5 = *v1;
  *(*v1 + 1840) = v0;

  if (v0)
  {
    v3 = sub_227608418;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227603A50()
{
  v2 = *(*v1 + 1848);
  v5 = *v1;
  *(*v1 + 1856) = v0;

  if (v0)
  {
    v3 = sub_2276084C0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227603B64()
{
  v2 = *(*v1 + 1864);
  v5 = *v1;
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v3 = sub_227608568;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227603C78()
{
  v2 = *(*v1 + 1880);
  v5 = *v1;
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v3 = sub_227608610;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227603D8C()
{
  v2 = *(*v1 + 1896);
  v5 = *v1;
  *(*v1 + 1904) = v0;

  if (v0)
  {
    v3 = sub_2276086B8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227603EA0()
{
  v2 = *(*v1 + 1912);
  v5 = *v1;
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v3 = sub_227608760;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227603FB4()
{
  v2 = *(*v1 + 1928);
  v5 = *v1;
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v3 = sub_227608808;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276040C8()
{
  v2 = *(*v1 + 1944);
  v5 = *v1;
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v3 = sub_2276088B0;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276041DC()
{
  v2 = *(*v1 + 1960);
  v5 = *v1;
  *(*v1 + 1968) = v0;

  if (v0)
  {
    v3 = sub_227608958;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2276042F0()
{
  v2 = *(*v1 + 1976);
  v5 = *v1;
  *(*v1 + 1984) = v0;

  if (v0)
  {
    v3 = sub_227608A00;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227604404()
{
  v2 = *(*v1 + 1992);
  v5 = *v1;
  *(*v1 + 2000) = v0;

  if (v0)
  {
    v3 = sub_227608AA8;
  }

  else
  {
    v3 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227604518()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];

  v4 = v0[37];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276045C0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[40];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604668()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[42];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604710()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[44];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276047B8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[46];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604860()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[48];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604908()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[50];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276049B0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[52];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604A58()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[54];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604B00()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[56];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604BA8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[58];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604C50()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[60];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604CF8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[62];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604DA0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[64];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604E48()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[66];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604EF0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[68];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227604F98()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[70];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605040()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[72];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276050E8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[74];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605190()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[76];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605238()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[78];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276052E0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[80];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605388()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[82];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605430()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[84];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276054D8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[86];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605580()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[88];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605628()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[90];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276056D0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[92];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605778()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[94];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605820()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[96];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276058C8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[98];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605970()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[100];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605A18()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[102];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605AC0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[104];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605B68()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[106];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605C10()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[108];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605CB8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[110];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605D60()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[112];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605E08()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[114];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605EB0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[116];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227605F58()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[118];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606000()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[120];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276060A8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[122];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606150()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[124];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276061F8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[126];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276062A0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[128];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606348()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[130];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276063F0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[132];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606498()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[134];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606540()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[136];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276065E8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[138];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606690()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[140];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606738()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[142];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276067E0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[144];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606888()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[146];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606930()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[148];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276069D8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[150];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606A80()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[152];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606B28()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[154];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606BD0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[156];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606C78()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[158];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606D20()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[160];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606DC8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[162];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606E70()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[164];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606F18()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[166];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227606FC0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[168];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607068()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[170];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607110()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[172];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276071B8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[174];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607260()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[176];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607308()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[178];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276073B0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[180];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607458()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[182];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607500()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[184];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276075A8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[186];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607650()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[188];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276076F8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[190];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276077A0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[192];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607848()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[194];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276078F0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[196];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607998()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[198];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607A40()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[200];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607AE8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[202];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607B90()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[204];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607C38()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[206];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607CE0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[208];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607D88()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[210];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607E30()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[212];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607ED8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[214];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227607F80()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[216];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608028()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[218];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276080D0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[220];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608178()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[222];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608220()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[224];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276082C8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[226];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608370()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[228];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608418()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[230];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276084C0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[232];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608568()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[234];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608610()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[236];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276086B8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[238];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608760()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[240];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608808()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[242];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2276088B0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[244];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608958()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[246];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608A00()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[248];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608AA8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[250];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227608B50(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227667A70();

  return MEMORY[0x2822009F8](sub_227608C1C, 0, 0);
}

uint64_t sub_227608C1C()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AchievementEnvironmentCache.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF818, &qword_22768DF50);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_227609064;

    return sub_22708E1D4(sub_22708E1D4, sub_227645C60, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_227609064()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_227609180;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227609180()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_227609064;

    return sub_22708E1D4(sub_22708E1D4, sub_227645C60, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_227609488(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276682A0();

  return MEMORY[0x2822009F8](sub_227609554, 0, 0);
}

uint64_t sub_227609554()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AchievementNotificationRecord.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF820, &qword_22768DF58);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22760999C;

    return sub_22708E1D4(sub_22708E1D4, sub_227645C8C, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22760999C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_227609AB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227609AB8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22760999C;

    return sub_22708E1D4(sub_22708E1D4, sub_227645C8C, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_227609DC0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276667B0();

  return MEMORY[0x2822009F8](sub_227609E8C, 0, 0);
}

uint64_t sub_227609E8C()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AchievementWeeklyStreak.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF828, &qword_22768DF60);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22760A2D4;

    return sub_22708E1D4(sub_22708E1D4, sub_227645CB8, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22760A2D4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22760A3F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760A3F0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22760A2D4;

    return sub_22708E1D4(sub_22708E1D4, sub_227645CB8, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22760A6F8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);

  return MEMORY[0x2822009F8](sub_22760A7D0, 0, 0);
}

uint64_t sub_22760A7D0()
{
  v37 = v0;
  v1 = v0[7];
  sub_227666520();
  v2 = MEMORY[0x277D52360];
  sub_22764662C(&unk_27D7BE7E0, MEMORY[0x277D52360]);
  sub_22764662C(&qword_28139B668, v2);
  v3 = sub_227663B50();
  v0[9] = v3;
  sub_22766A770();

  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v35 = v0[7];
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 134218242;
    *(v9 + 4) = *(v3 + 16);

    *(v9 + 12) = 2080;
    v0[2] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9E0, &qword_22768E140);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, &v36);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Inserting %ld samples for type %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    result = (*(v7 + 8))(v35, v8);
  }

  else
  {
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];

    result = (*(v16 + 8))(v15, v17);
  }

  v18 = v0[3];
  v19 = *(v3 + 16);
  v0[10] = v19;
  if (!v18)
  {
    __break(1u);
    goto LABEL_20;
  }

  v20 = v0[4];
  v21 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v18 < 1 || !v19)
  {
    v28 = v0[9];
    v29 = v0[7];

    v30 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v18;
  if (v18 >= v19)
  {
    v18 = v19;
  }

  v22 = v0[9];
  if (*(v22 + 16) < v18)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v23 = v22 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v24 = (2 * v18) | 1;
  v25 = swift_allocObject();
  v0[13] = v25;
  v25[2] = v22;
  v25[3] = v23;
  v25[4] = 0;
  v25[5] = v24;
  v26 = *(v20 + v21);
  v0[14] = v26;
  swift_bridgeObjectRetain_n();
  if (v26)
  {

    v27 = swift_task_alloc();
    v0[15] = v27;
    *v27 = v0;
    v27[1] = sub_22760AC98;

    return sub_22708E1D4(sub_22708E1D4, sub_227646674, v25);
  }

  v31 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51008], v31);
  swift_willThrow();

  v33 = v0[9];
  v34 = v0[7];

  v30 = v0[1];
LABEL_16:

  return v30();
}

uint64_t sub_22760AC98()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22760ADB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760ADB4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22760AC98;

    return sub_22708E1D4(sub_22708E1D4, sub_227646674, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22760B0BC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664530();

  return MEMORY[0x2822009F8](sub_22760B188, 0, 0);
}

uint64_t sub_22760B188()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static ArchivedSession.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF830, &qword_22768DF68);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22760B5D0;

    return sub_22708E1D4(sub_22708E1D4, sub_227645CE4, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22760B5D0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22760B6EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760B6EC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22760B5D0;

    return sub_22708E1D4(sub_22708E1D4, sub_227645CE4, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22760B9F4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227667780();

  return MEMORY[0x2822009F8](sub_22760BAC0, 0, 0);
}

uint64_t sub_22760BAC0()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static ArchivedWorkoutPlanSession.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF838, &qword_22768DF70);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22760BF08;

    return sub_22708E1D4(sub_22708E1D4, sub_227645D10, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22760BF08()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22760C024;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760C024()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22760BF08;

    return sub_22708E1D4(sub_22708E1D4, sub_227645D10, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22760C32C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663480();

  return MEMORY[0x2822009F8](sub_22760C3F8, 0, 0);
}

uint64_t sub_22760C3F8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AssetBundle.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF840, &qword_22768DF78);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22760C840;

    return sub_22708E1D4(sub_22708E1D4, sub_227645D3C, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22760C840()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22760C95C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760C95C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22760C840;

    return sub_22708E1D4(sub_22708E1D4, sub_227645D3C, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22760CC64(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663180();

  return MEMORY[0x2822009F8](sub_22760CD30, 0, 0);
}

uint64_t sub_22760CD30()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AssetEntry.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF848, &qword_22768DF80);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22760D178;

    return sub_22708E1D4(sub_22708E1D4, sub_227645D68, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22760D178()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_22760D59C;
  }

  else
  {
    v5 = sub_22760D294;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760D294()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22760D178;

    return sub_22708E1D4(sub_22708E1D4, sub_227645D68, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22760D59C()
{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[16];
  v4 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22760D61C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664B30();

  return MEMORY[0x2822009F8](sub_22760D6E8, 0, 0);
}

uint64_t sub_22760D6E8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AssetLoadFailure.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF850, &qword_22768DF88);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22760DB30;

    return sub_22708E1D4(sub_22708E1D4, sub_227645D94, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}