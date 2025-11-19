char *sub_227122904(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22766CD20();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_226F1EED0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA991A0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 value];

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_226F1EED0((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8 & ~(v8 >> 63);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

size_t sub_227122A4C(unint64_t a1)
{
  v2 = v1;
  v22 = sub_227665100();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v19)
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v10;
    }

    v11 = v6;
    v23 = MEMORY[0x277D84F90];
    result = sub_226F20208(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v14 = v11;
    v20 = v2;
    v21 = v11 & 0xC000000000000001;
    v10 = v23;
    while (1)
    {
      v15 = v21 ? MEMORY[0x22AA991A0](v13) : *(v14 + 8 * v13 + 32);
      v16 = v15;
      if (([v15 activityType] & 0x80000000) != 0)
      {
        break;
      }

      [v16 activeCalorieRate];
      [v16 basalCalorieRate];
      sub_2276650B0();

      v23 = v10;
      v2 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v2 >= v17 >> 1)
      {
        sub_226F20208(v17 > 1, v2 + 1, 1);
        v10 = v23;
      }

      ++v13;
      *(v10 + 16) = v2 + 1;
      (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2, v8, v22);
      v14 = v11;
      if (i == v13)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_15:
    v18 = v6;
    v19 = sub_22766CD20();
    v6 = v18;
  }

  __break(1u);
  return result;
}

size_t sub_227122C98(unint64_t a1)
{
  v2 = v1;
  v63 = sub_227662750();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v63);
  v62 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = v47 - v9;
  MEMORY[0x28223BE20](v8);
  v60 = v47 - v10;
  v11 = sub_2276627D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v65 = v47 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v47 - v18;
  v58 = sub_227667440();
  v66 = *(v58 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x28223BE20](v58);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v46)
  {
    v25 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v25;
    }

    v26 = v21;
    v69 = MEMORY[0x277D84F90];
    result = sub_226F200A8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v47[1] = v2;
    v2 = 0;
    v28 = v26;
    v64 = v26 & 0xC000000000000001;
    v25 = v69;
    v52 = (v12 + 16);
    v53 = (v4 + 32);
    v50 = (v4 + 8);
    v51 = (v4 + 16);
    v56 = (v12 + 8);
    v57 = (v12 + 32);
    v48 = v26 & 0xFFFFFFFFFFFFFF8;
    v49 = v66 + 32;
    v54 = i;
    v55 = v26;
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v64)
      {
        v29 = MEMORY[0x22AA991A0](v2, v28);
      }

      else
      {
        if (v2 >= *(v48 + 16))
        {
          goto LABEL_21;
        }

        v29 = *(v28 + 8 * v2 + 32);
      }

      v30 = v29;
      v31 = [v29 planIdentifier];
      if (!v31)
      {
        goto LABEL_18;
      }

      v32 = v31;
      v68 = v2 + 1;
      v33 = v65;
      sub_2276627B0();

      (*v57)(v19, v33, v11);
      v34 = [v30 dateViewed];
      if (!v34)
      {
        (*v56)(v19, v11);
LABEL_18:
        v43 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51028], v43);
        swift_willThrow();

        return v25;
      }

      v35 = v34;
      v67 = v2;
      v36 = v61;
      sub_227662710();

      v37 = v11;
      v38 = v60;
      v39 = v63;
      (*v53)(v60, v36, v63);
      (*v52)(v59, v19, v37);
      (*v51)(v62, v38, v39);
      sub_227667420();

      v40 = v38;
      v11 = v37;
      (*v50)(v40, v39);
      (*v56)(v19, v37);
      v69 = v25;
      v42 = *(v25 + 16);
      v41 = *(v25 + 24);
      v12 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        sub_226F200A8(v41 > 1, v42 + 1, 1);
        v25 = v69;
      }

      *(v25 + 16) = v12;
      (*(v66 + 32))(v25 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v42, v23, v58);
      v2 = v67 + 1;
      v28 = v55;
      if (v68 == v54)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v45 = v21;
    v46 = sub_22766CD20();
    v21 = v45;
  }

  __break(1u);
  return result;
}

size_t sub_227123294(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v35 - v6;
  v48 = sub_227668D10();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v46 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = v35 - v11;
  v44 = sub_227666F20();
  v49 = *(v44 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v44);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v16 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v16;
    }

    v56 = MEMORY[0x277D84F90];
    result = sub_226F20308(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v35[1] = v2;
    v18 = 0;
    v16 = v56;
    v47 = a1 & 0xC000000000000001;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = (v7 + 48);
    v39 = (v7 + 16);
    v40 = (v7 + 32);
    v38 = (v7 + 8);
    v37 = v49 + 32;
    v41 = i;
    v42 = a1;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v47)
      {
        v19 = MEMORY[0x22AA991A0](v18, a1);
      }

      else
      {
        if (v18 >= *(v36 + 16))
        {
          goto LABEL_24;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 behavior];
      if (!v21)
      {
        goto LABEL_21;
      }

      v22 = v21;
      v51 = v18;
      v23 = sub_22766C000();
      v2 = v24;

      v52 = v20;
      v25 = [v20 modalityConstraint];
      if (!v25)
      {

LABEL_20:
        v20 = v52;
LABEL_21:
        v33 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
        swift_willThrow();

        return v16;
      }

      v26 = v25;
      v50 = v7;
      v27 = v16;
      sub_22766C000();
      v28 = v53;

      sub_227668CF0();
      v29 = v48;
      if ((*v43)(v28, 1, v48) == 1)
      {

        sub_226E97D1C(v53, &qword_27D7B9BA0, &qword_2276754B8);
        v16 = v27;
        goto LABEL_20;
      }

      v30 = v45;
      (*v40)(v45, v53, v29);
      v54 = v23;
      v55 = v2;
      sub_227125D94();
      sub_227663AE0();
      (*v39)(v46, v30, v29);
      sub_227666F00();

      (*v38)(v30, v29);
      v16 = v27;
      v56 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F20308(v31 > 1, v32 + 1, 1);
        v16 = v56;
      }

      *(v16 + 16) = v32 + 1;
      (*(v49 + 32))(v16 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32, v14, v44);
      v18 = v51 + 1;
      a1 = v42;
      if (v50 == v41)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227123814(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v35 - v6;
  v48 = sub_227668D10();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v46 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = v35 - v11;
  v44 = sub_227667170();
  v49 = *(v44 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v44);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v16 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v16;
    }

    v56 = MEMORY[0x277D84F90];
    result = sub_226F20328(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v35[1] = v2;
    v18 = 0;
    v16 = v56;
    v47 = a1 & 0xC000000000000001;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = (v7 + 48);
    v39 = (v7 + 16);
    v40 = (v7 + 32);
    v38 = (v7 + 8);
    v37 = v49 + 32;
    v41 = i;
    v42 = a1;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v47)
      {
        v19 = MEMORY[0x22AA991A0](v18, a1);
      }

      else
      {
        if (v18 >= *(v36 + 16))
        {
          goto LABEL_24;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 behavior];
      if (!v21)
      {
        goto LABEL_21;
      }

      v22 = v21;
      v51 = v18;
      v23 = sub_22766C000();
      v2 = v24;

      v52 = v20;
      v25 = [v20 modalityConstraint];
      if (!v25)
      {

LABEL_20:
        v20 = v52;
LABEL_21:
        v33 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
        swift_willThrow();

        return v16;
      }

      v26 = v25;
      v50 = v7;
      v27 = v16;
      sub_22766C000();
      v28 = v53;

      sub_227668CF0();
      v29 = v48;
      if ((*v43)(v28, 1, v48) == 1)
      {

        sub_226E97D1C(v53, &qword_27D7B9BA0, &qword_2276754B8);
        v16 = v27;
        goto LABEL_20;
      }

      v30 = v45;
      (*v40)(v45, v53, v29);
      v54 = v23;
      v55 = v2;
      sub_227125D40();
      sub_227663AE0();
      (*v39)(v46, v30, v29);
      sub_227667150();

      (*v38)(v30, v29);
      v16 = v27;
      v56 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F20328(v31 > 1, v32 + 1, 1);
        v16 = v56;
      }

      *(v16 + 16) = v32 + 1;
      (*(v49 + 32))(v16 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32, v14, v44);
      v18 = v51 + 1;
      a1 = v42;
      if (v50 == v41)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227123D94(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v35 - v6;
  v48 = sub_227668D10();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v46 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = v35 - v11;
  v44 = sub_2276675F0();
  v49 = *(v44 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v44);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v16 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v16;
    }

    v56 = MEMORY[0x277D84F90];
    result = sub_226F20348(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v35[1] = v2;
    v18 = 0;
    v16 = v56;
    v47 = a1 & 0xC000000000000001;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = (v7 + 48);
    v39 = (v7 + 16);
    v40 = (v7 + 32);
    v38 = (v7 + 8);
    v37 = v49 + 32;
    v41 = i;
    v42 = a1;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v47)
      {
        v19 = MEMORY[0x22AA991A0](v18, a1);
      }

      else
      {
        if (v18 >= *(v36 + 16))
        {
          goto LABEL_24;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 behavior];
      if (!v21)
      {
        goto LABEL_21;
      }

      v22 = v21;
      v51 = v18;
      v23 = sub_22766C000();
      v2 = v24;

      v52 = v20;
      v25 = [v20 modalityConstraint];
      if (!v25)
      {

LABEL_20:
        v20 = v52;
LABEL_21:
        v33 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
        swift_willThrow();

        return v16;
      }

      v26 = v25;
      v50 = v7;
      v27 = v16;
      sub_22766C000();
      v28 = v53;

      sub_227668CF0();
      v29 = v48;
      if ((*v43)(v28, 1, v48) == 1)
      {

        sub_226E97D1C(v53, &qword_27D7B9BA0, &qword_2276754B8);
        v16 = v27;
        goto LABEL_20;
      }

      v30 = v45;
      (*v40)(v45, v53, v29);
      v54 = v23;
      v55 = v2;
      sub_227125CEC();
      sub_227663AE0();
      (*v39)(v46, v30, v29);
      sub_2276675D0();

      (*v38)(v30, v29);
      v16 = v27;
      v56 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F20348(v31 > 1, v32 + 1, 1);
        v16 = v56;
      }

      *(v16 + 16) = v32 + 1;
      (*(v49 + 32))(v16 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32, v14, v44);
      v18 = v51 + 1;
      a1 = v42;
      if (v50 == v41)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227124314(unint64_t a1)
{
  v2 = v1;
  v55 = sub_227662750();
  v4 = *(v55 - 8);
  v5 = *(v4 + 8);
  v6 = MEMORY[0x28223BE20](v55);
  v54 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v52 = &v42 - v10;
  v51 = sub_227669360();
  v57 = *(v51 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v51);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v15 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v15;
    }

    v64 = MEMORY[0x277D84F90];
    result = sub_226F20488(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v42 = v2;
    v17 = 0;
    v15 = v64;
    v56 = a1 & 0xC000000000000001;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v47 = (v4 + 16);
    v48 = (v4 + 32);
    v46 = (v4 + 8);
    v45 = v57 + 32;
    v49 = i;
    v50 = a1;
    v44 = v13;
    while (1)
    {
      v2 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v56)
      {
        v18 = MEMORY[0x22AA991A0](v17, a1);
      }

      else
      {
        if (v17 >= *(v43 + 16))
        {
          goto LABEL_23;
        }

        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [v18 referenceIdentifier];
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = v20;
      v61 = v17;
      sub_22766C000();
      v23 = v22;

      v24 = [v19 referenceType];
      if (!v24)
      {
        goto LABEL_19;
      }

      v25 = v24;
      v26 = sub_22766C000();
      v28 = v27;

      v29 = [v19 dateBookmarked];
      if (!v29)
      {

LABEL_19:

LABEL_20:
        v40 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51028], v40);
        swift_willThrow();

        return v15;
      }

      v30 = v29;
      v59 = v17 + 1;
      v60 = v15;
      v31 = v53;
      sub_227662710();

      v32 = *v48;
      v58 = v23;
      v33 = v52;
      v34 = v31;
      v35 = v55;
      v32(v52, v34, v55);
      v62 = v26;
      v63 = v28;
      sub_227125DE8();
      sub_227663AE0();
      v36 = v19;
      v4 = v54;
      (*v47)(v54, v33, v35);
      sub_227669340();

      v37 = v35;
      v15 = v60;
      (*v46)(v33, v37);
      v64 = v15;
      v39 = *(v15 + 16);
      v38 = *(v15 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_226F20488(v38 > 1, v39 + 1, 1);
        v15 = v64;
      }

      *(v15 + 16) = v39 + 1;
      v13 = v44;
      (*(v57 + 32))(v15 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v39, v44, v51);
      v17 = v61 + 1;
      a1 = v50;
      if (v59 == v49)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_22712484C(unint64_t a1)
{
  v2 = v1;
  v31 = sub_227666710();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v31);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v34 = MEMORY[0x277D84F90];
    result = sub_226F1FF48(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v11 = 0;
    v9 = v34;
    v29 = v7;
    v30 = a1 & 0xC000000000000001;
    v25 = v2;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = v4 + 32;
    v28 = i;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v30)
      {
        v13 = MEMORY[0x22AA991A0](v11, a1);
      }

      else
      {
        if (v11 >= *(v26 + 16))
        {
          goto LABEL_19;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 feature];
      if (!v15)
      {
        v23 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
        swift_willThrow();

        return v9;
      }

      v16 = v15;
      v17 = a1;
      v18 = sub_22766C000();
      v20 = v19;

      v32 = v18;
      v33 = v20;
      sub_227071084();
      sub_227663AE0();
      v2 = v29;
      sub_2276666F0();

      v34 = v9;
      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      v7 = (v22 + 1);
      if (v22 >= v21 >> 1)
      {
        sub_226F1FF48(v21 > 1, v22 + 1, 1);
        v9 = v34;
      }

      *(v9 + 16) = v7;
      (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v2, v31);
      ++v11;
      a1 = v17;
      if (v12 == v28)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227124B78(unint64_t a1)
{
  v2 = sub_227662190();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2276658B0();
  v36 = *(v34 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v40 = MEMORY[0x277D84F90];
    result = sub_226F1FF28(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v11 = 0;
    v35 = a1 & 0xC000000000000001;
    v9 = v40;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = a1;
    v31 = v36 + 32;
    v32 = i;
    while (!__OFADD__(v11, 1))
    {
      if (v35)
      {
        v12 = MEMORY[0x22AA991A0](v11, a1);
      }

      else
      {
        if (v11 >= *(v29 + 16))
        {
          goto LABEL_23;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 identifier];
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = v14;
      v38 = v9;
      v16 = v5;
      sub_22766C000();
      v9 = v17;

      v18 = [v13 dateReleased];
      if (!v18)
      {

        v9 = v38;
LABEL_19:
        v25 = v13;
        v26 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51028], v26);
        swift_willThrow();

        return v9;
      }

      v19 = v18;
      v37 = v11 + 1;
      sub_22766C000();

      v20 = [v13 categoryIdentifiers];
      v21 = v39;
      sub_226ED4548(v20);
      if (v21)
      {

        return v9;
      }

      sub_227662100();
      v39 = 0;
      v22 = v33;
      sub_227665870();

      v9 = v38;
      v40 = v38;
      v24 = *(v38 + 16);
      v23 = *(v38 + 24);
      v5 = v16;
      if (v24 >= v23 >> 1)
      {
        sub_226F1FF28(v23 > 1, v24 + 1, 1);
        v9 = v40;
      }

      *(v9 + 16) = v24 + 1;
      (*(v36 + 32))(v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v24, v22, v34);
      ++v11;
      a1 = v30;
      if (v37 == v32)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227124FB0(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v30 - v6;
  v40 = sub_227662750();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2276682A0();
  v43 = *(v38 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v38);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v14 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v14;
    }

    v45 = MEMORY[0x277D84F90];
    result = sub_226F1FAC8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    v14 = v45;
    v42 = a1 & 0xC000000000000001;
    v30[1] = v2;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = (v7 + 56);
    v35 = (v7 + 16);
    v32 = v43 + 32;
    v33 = (v7 + 8);
    v36 = i;
    v37 = a1;
    while (!__OFADD__(v16, 1))
    {
      if (v42)
      {
        v17 = MEMORY[0x22AA991A0](v16, a1);
      }

      else
      {
        if (v16 >= *(v31 + 16))
        {
          goto LABEL_21;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 templateUniqueName];
      if (!v19)
      {
        goto LABEL_18;
      }

      v20 = v19;
      sub_22766C000();

      v21 = [v18 datePresented];
      if (!v21)
      {

LABEL_18:
        v28 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51028], v28);
        swift_willThrow();

        return v14;
      }

      v22 = v21;
      v44 = v16 + 1;
      v23 = v14;
      v24 = v39;
      sub_227662710();

      v25 = v40;
      v2 = v41;
      (*v35)(v41, v24, v40);
      (*v34)(v2, 0, 1, v25);
      sub_227668280();

      v26 = v24;
      v14 = v23;
      (*v33)(v26, v25);
      v45 = v23;
      v7 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v7 >= v27 >> 1)
      {
        sub_226F1FAC8(v27 > 1, v7 + 1, 1);
        v14 = v45;
      }

      *(v14 + 16) = v7 + 1;
      (*(v43 + 32))(v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v7, v12, v38);
      ++v16;
      a1 = v37;
      if (v44 == v36)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227125440(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v41 - v6;
  v54 = sub_227662750();
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v54);
  v53 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v51 = &v41 - v13;
  v50 = sub_2276662D0();
  v57 = *(v50 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v17 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v17;
    }

    v62 = MEMORY[0x277D84F90];
    result = sub_226F20848(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v41 = v2;
    v2 = 0;
    v56 = a1 & 0xC000000000000001;
    v17 = v62;
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = a1;
    v46 = (v7 + 16);
    v47 = (v7 + 32);
    v44 = v57 + 32;
    v45 = (v7 + 8);
    v48 = i;
    while (1)
    {
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v56)
      {
        v19 = MEMORY[0x22AA991A0](v2, a1);
      }

      else
      {
        if (v2 >= *(v42 + 16))
        {
          goto LABEL_23;
        }

        v19 = *(a1 + 8 * v2 + 32);
      }

      v20 = v19;
      v21 = [v19 bundleIdentifier];
      if (!v21)
      {
        goto LABEL_20;
      }

      v22 = v21;
      sub_22766C000();

      v23 = [v20 reason];
      v24 = v20;
      if (!v23)
      {
        goto LABEL_19;
      }

      v25 = v23;
      v26 = sub_22766C000();
      v28 = v27;

      v29 = [v24 date];
      if (!v29)
      {

LABEL_19:

        v20 = v24;
LABEL_20:
        v39 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D51028], v39);
        swift_willThrow();

        return v17;
      }

      v30 = v29;
      v58 = v2 + 1;
      v59 = v17;
      v31 = v52;
      sub_227662710();

      v32 = v51;
      v33 = v31;
      v34 = v54;
      (*v47)(v51, v33, v54);
      v60 = v26;
      v61 = v28;
      sub_2276662B0();
      sub_227125F6C(&qword_27D7BB2C8, MEMORY[0x277D52240]);
      sub_227663AE0();
      (*v46)(v53, v32, v34);
      v35 = v49;
      sub_227666270();

      v36 = v34;
      v17 = v59;
      (*v45)(v32, v36);
      v62 = v17;
      v38 = *(v17 + 16);
      v37 = *(v17 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_226F20848(v37 > 1, v38 + 1, 1);
        v17 = v62;
      }

      *(v17 + 16) = v38 + 1;
      (*(v57 + 32))(v17 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v38, v35, v50);
      ++v2;
      a1 = v43;
      if (v58 == v48)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_227125A04(uint64_t a1)
{
  v2 = sub_2276660A0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      v14 = MEMORY[0x277D52060];
      sub_227125EA4(v12, v6, MEMORY[0x277D52060]);
      sub_2270B8C34(v10, v6);
      result = sub_227125F0C(v10, v14);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

id sub_227125B34(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([a1 save_])
  {
    result = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_2276622C0();

    result = swift_willThrow();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_227125BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  sub_22711E690(a1, a2, *(v2 + 32));
}

uint64_t sub_227125BF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_227125C68()
{
  result = qword_281398C48;
  if (!qword_281398C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB2A0, &qword_22767A148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C48);
  }

  return result;
}

unint64_t sub_227125CEC()
{
  result = qword_27D7BB2A8;
  if (!qword_27D7BB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB2A8);
  }

  return result;
}

unint64_t sub_227125D40()
{
  result = qword_27D7BB2B0;
  if (!qword_27D7BB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB2B0);
  }

  return result;
}

unint64_t sub_227125D94()
{
  result = qword_27D7BB2B8;
  if (!qword_27D7BB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB2B8);
  }

  return result;
}

unint64_t sub_227125DE8()
{
  result = qword_28139B730;
  if (!qword_28139B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B730);
  }

  return result;
}

uint64_t sub_227125E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227125EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227125F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227125F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227125FB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v94 - v4;
  v6 = sub_2276624A0();
  v115 = *(v6 - 8);
  v7 = *(v115 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v121 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v108 = &v94 - v10;
  v101 = sub_2276622D0();
  v100 = *(v101 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9328, &qword_227673988);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v104 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v94 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v94 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v113 = &v94 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v94 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v94 - v29;
  if ((sub_2276622E0() & 1) == 0)
  {
    v40 = sub_227663190();
    sub_226EB0ED8(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D4FD00], v40);
    swift_willThrow();
    return v40;
  }

  v107 = v23;
  v99 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9320, &qword_227673980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  v32 = *MEMORY[0x277CBE8A8];
  v102 = v30;
  *(inited + 32) = v32;
  v33 = *MEMORY[0x277CBE910];
  *(inited + 40) = *MEMORY[0x277CBE910];
  v34 = v32;
  v35 = v33;
  v36 = sub_226F4C634(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  v37 = v102;
  swift_arrayDestroy();
  v111 = v36;
  v38 = v114;
  sub_2276623A0();
  v98 = v13;
  if (v38)
  {

    v39 = 1;
  }

  else
  {
    v39 = 0;
  }

  v114 = v1;
  v42 = sub_2276621F0();
  v43 = *(v42 - 8);
  v44 = v43;
  v106 = *(v43 + 56);
  v105 = v43 + 56;
  v106(v37, v39, 1, v42);
  sub_227126CF4(v37, v28);
  v45 = *(v44 + 48);
  v110 = v44 + 48;
  v109 = v45;
  v46 = v45(v28, 1, v42);
  v112 = v42;
  v97 = v44;
  if (v46 == 1)
  {
    sub_226E97D1C(v28, &qword_27D7B9328, &qword_227673988);
    v47 = v113;
  }

  else
  {
    v48 = sub_2276621D0();
    v49 = *(v44 + 8);
    v49(v28, v42);
    v47 = v113;
    if (v48 != 2 && (v48 & 1) != 0)
    {

      v50 = v102;
      v51 = v104;
      sub_227126CF4(v102, v104);
      v52 = v112;
      if (v109(v51, 1, v112) != 1)
      {
        v40 = sub_2276621E0();
        v93 = v92;
        sub_226E97D1C(v50, &qword_27D7B9328, &qword_227673988);
        v49(v51, v52);
        if (v93)
        {
          return 0;
        }

        return v40;
      }

      sub_226E97D1C(v50, &qword_27D7B9328, &qword_227673988);
      sub_226E97D1C(v51, &qword_27D7B9328, &qword_227673988);
      return 0;
    }
  }

  v104 = [objc_opt_self() defaultManager];
  v53 = v111;
  v54 = *(v111 + 16);
  if (v54)
  {
    v55 = sub_2274CDA4C(*(v111 + 16), 0);
    v56 = sub_2274CEE68(&v117, v55 + 4, v54, v53);
    v103 = v118;
    v96 = v119;
    v95 = v120;

    sub_226EBB21C();
    v57 = v56 == v54;
    v58 = v98;
    if (v57)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v58 = v98;
LABEL_16:
  v59 = v104;
  v60 = sub_22766C860();

  v61 = v60;
  v62 = v101;
  if (!v61)
  {
    sub_226E97D1C(v102, &qword_27D7B9328, &qword_227673988);

    return 0;
  }

  v96 = 0;
  v95 = v61;
  sub_22766C810();
  v63 = sub_226EB0ED8(&qword_28139BDF0, MEMORY[0x277CC9178]);
  sub_22766CBB0();
  if (v119)
  {
    v64 = (v115 + 56);
    v65 = (v115 + 48);
    v104 = v115 + 32;
    v114 = MEMORY[0x277D84F90];
    v103 = v63;
    do
    {
      sub_226F04970(&v117, &v116);
      v66 = swift_dynamicCast();
      (*v64)(v5, v66 ^ 1u, 1, v6);
      if ((*v65)(v5, 1, v6) == 1)
      {
        sub_226E97D1C(v5, &unk_27D7BB570, &unk_227670FC0);
      }

      else
      {
        v67 = v6;
        v68 = v62;
        v69 = v58;
        v70 = *v104;
        v71 = v67;
        (*v104)(v108, v5);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v72 = v114;
        }

        else
        {
          v72 = sub_2273A4ECC(0, v114[2] + 1, 1, v114);
        }

        v74 = v72[2];
        v73 = v72[3];
        if (v74 >= v73 >> 1)
        {
          v72 = sub_2273A4ECC(v73 > 1, v74 + 1, 1, v72);
        }

        v72[2] = v74 + 1;
        v75 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v114 = v72;
        (v70)(v72 + v75 + *(v115 + 72) * v74, v108, v71);
        v47 = v113;
        v58 = v69;
        v62 = v68;
        v6 = v71;
      }

      sub_22766CBB0();
    }

    while (v119);
  }

  else
  {
    v114 = MEMORY[0x277D84F90];
  }

  (*(v100 + 8))(v58, v62);
  v76 = v114[2];
  if (!v76)
  {

    v40 = 0;
LABEL_50:

    sub_226E97D1C(v102, &qword_27D7B9328, &qword_227673988);
    return v40;
  }

  v101 = 0;
  v108 = *(v115 + 16);
  v77 = v114 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
  v104 = *(v115 + 72);
  v103 = (v97 + 8);
  v115 += 16;
  v78 = (v115 - 8);
  v79 = v96;
  (v108)(v121, v77, v6);
  while (1)
  {
    sub_2276623A0();
    if (v79)
    {

      v80 = 1;
    }

    else
    {
      v80 = 0;
    }

    v81 = v107;
    v82 = v112;
    v106(v47, v80, 1, v112);
    sub_227126CF4(v47, v81);
    if (v109(v81, 1, v82) == 1)
    {
      sub_226E97D1C(v81, &qword_27D7B9328, &qword_227673988);
LABEL_34:
      sub_226E97D1C(v47, &qword_27D7B9328, &qword_227673988);
      (*v78)(v121, v6);
      v79 = 0;
      goto LABEL_35;
    }

    v83 = sub_2276621D0();
    v84 = v81;
    v85 = *v103;
    (*v103)(v84, v82);
    v47 = v113;
    if (v83 == 2 || (v83 & 1) == 0)
    {
      goto LABEL_34;
    }

    v86 = v113;
    v87 = v99;
    sub_227126CF4(v113, v99);
    if (v109(v87, 1, v112) == 1)
    {
      sub_226E97D1C(v86, &qword_27D7B9328, &qword_227673988);
      (*v78)(v121, v6);
      sub_226E97D1C(v87, &qword_27D7B9328, &qword_227673988);
      v79 = 0;
      v47 = v86;
      goto LABEL_35;
    }

    v100 = sub_2276621E0();
    v89 = v88;
    sub_226E97D1C(v86, &qword_27D7B9328, &qword_227673988);
    (*v78)(v121, v6);
    result = v85(v87, v112);
    if ((v89 & 1) == 0)
    {
      v91 = __OFADD__(v100, v101);
      v101 += v100;
      if (v91)
      {
        break;
      }
    }

    v79 = 0;
    v47 = v113;
LABEL_35:
    v77 += v104;
    if (!--v76)
    {

      v40 = v101;
      goto LABEL_50;
    }

    (v108)(v121, v77, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_227126CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9328, &qword_227673988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227126D64()
{
  v1 = v0;
  v2 = sub_227669910();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669A70();
  v54 = v5;
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = *(v1 + 16);
  v52 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v59 = v15;
  v16 = v6[13];
  v16(v9, *MEMORY[0x277D4E590], v5);
  v53 = v16;
  v58 = v6 + 13;
  swift_allocObject();
  v56 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v17 = v6[1];
  v55 = v6 + 1;
  v57 = v17;
  v18 = v54;
  v17(v9, v54);
  swift_unknownObjectRelease();
  v59 = v15;
  LODWORD(v47) = *MEMORY[0x277D4E790];
  (v16)(v9);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2D0, &unk_22768B2E0);
  v46 = sub_227664460();
  v50 = sub_227128FA8();
  v49 = sub_22712902C();
  v41 = v9;
  sub_227669EC0();

  v57(v9, v18);
  swift_unknownObjectRelease();
  v59 = v15;
  v20 = v43;
  v19 = v44;
  v21 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277D4E1E0], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669E70();

  (*(v19 + 8))(v20, v21);

  swift_unknownObjectRelease();
  v59 = v15;
  v22 = v41;
  v23 = v53;
  v24 = v54;
  v53(v41, *MEMORY[0x277D4E678], v54);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v25 = v57;
  v57(v22, v24);
  swift_unknownObjectRelease();
  v59 = v15;
  v23(v22, *MEMORY[0x277D4E570], v24);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v26 = v54;
  v25(v22, v54);
  swift_unknownObjectRelease();
  v59 = v15;
  v27 = v26;
  v28 = v53;
  v53(v22, *MEMORY[0x277D4E5C8], v27);
  swift_allocObject();
  v29 = v56;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v30 = v54;
  v57(v22, v54);
  swift_unknownObjectRelease();
  v31 = v29;
  v32 = *(v29 + 64);
  v45 = *(v31 + 80);
  swift_getObjectType();
  v59 = v32;
  v28(v22, v47, v30);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v33 = v54;
  v34 = v57;
  v57(v22, v54);
  swift_unknownObjectRelease();
  v59 = v15;
  v35 = v53;
  v53(v22, *MEMORY[0x277D4E640], v33);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EF0();

  v34(v22, v33);

  swift_unknownObjectRelease();
  v59 = v15;
  v42 = v15;
  v35(v22, *MEMORY[0x277D4E458], v33);
  swift_allocObject();
  v36 = v56;
  swift_weakInit();

  sub_227669EF0();

  v37 = v57;
  v57(v22, v33);

  swift_unknownObjectRelease();
  v38 = *(v36 + 40);
  v47 = *(v36 + 56);
  swift_getObjectType();
  v59 = v38;
  v39 = v53;
  v53(v22, *MEMORY[0x277D4E540], v33);
  swift_allocObject();
  swift_weakInit();
  sub_227665230();
  sub_2276655F0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v37(v22, v33);
  swift_unknownObjectRelease();
  v59 = v42;
  v39(v22, *MEMORY[0x277D4E758], v33);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v37(v22, v33);
  return swift_unknownObjectRelease();
}

uint64_t sub_2271278CC(_BYTE *a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  *(v2 + 104) = *a1;
  return MEMORY[0x2822009F8](sub_2271278F4, 0, 0);
}

uint64_t sub_2271278F4()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 56), *(*v3 + 80));
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_227127A18;
    v6 = *(v0 + 104);

    return sub_226F0B0C8(v6);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_227127A18()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_226F60544;
  }

  else
  {
    v3 = sub_226F62210;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227127B2C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_227127B54, 0, 0);
}

uint64_t sub_227127B54()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 56), *(*v3 + 80));
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_227127CBC;
    v6 = v0[12];
    v7 = v0[10];

    return sub_226F127E4(v7, v6);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_227664460();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_227127CBC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_227127DD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227127DD0()
{
  v1 = v0[10];
  v2 = sub_227664460();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_227127E78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 88, v2);

    v1 = *(*__swift_project_boxed_opaque_existential_0(v2, v2[3]) + 96);
    sub_2271D7EE8();
    return __swift_destroy_boxed_opaque_existential_0(v2);
  }

  return result;
}

uint64_t sub_227127EF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_227127F18, 0, 0);
}

uint64_t sub_227127F18()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = __swift_project_boxed_opaque_existential_0((*v3 + 56), *(*v3 + 80));
    __swift_project_boxed_opaque_existential_0((*v4 + 16), *(*v4 + 40));
    v5 = off_283AB4FA0;
    type metadata accessor for AccountSyncStatusObserver();
    v6 = v5();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    v6 = 5;
  }

  **(v0 + 80) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22712802C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22712804C, 0, 0);
}

uint64_t sub_22712804C()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 56), *(*v3 + 80));
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_227128174;

    return sub_226F09E40();
  }

  else
  {
    **(v0 + 80) = 2;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_227128174(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_226F618C8;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v7 = sub_2271282A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2271282A0()
{
  **(v0 + 80) = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227128310(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_227128334, 0, 0);
}

uint64_t sub_227128334()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 56), *(*v3 + 80));
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_226F623A8;
    v6 = v0[11];

    return sub_226F12F60(v6);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_227128458(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_227128480, 0, 0);
}

uint64_t sub_227128480()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 56), *(*v3 + 80));
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_2271285E8;
    v6 = v0[12];
    v7 = v0[10];

    return sub_226F127E4(v7, v6);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_227664460();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2271285E8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_2271295F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22712871C()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 56), *(*v3 + 80));
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_226FAA0A0;

    return sub_226F133B8();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227128858()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 16), *(*v3 + 40));
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_226FAA0A0;

    return sub_2275E8000();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227128974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_227128998, 0, 0);
}

uint64_t sub_227128998()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 16), *(*v3 + 40));
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_227128AFC;
    v6 = v0[10];
    v7 = v0[11];

    return sub_2275EB590(v6, v7);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_2276655F0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_227128AFC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F60D40;
  }

  else
  {
    v3 = sub_227128C10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227128C10()
{
  v1 = v0[10];
  v2 = sub_2276655F0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_227128CB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_227128CDC, 0, 0);
}

uint64_t sub_227128CDC()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[11];

    return sub_22713D014(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227128DF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[8];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 11);

  return swift_deallocClassInstance();
}

uint64_t sub_227128E64(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271278CC(a1, v1);
}

uint64_t sub_227128EFC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227127B2C(a1, a2, v2);
}

unint64_t sub_227128FA8()
{
  result = qword_281398C10;
  if (!qword_281398C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB2D0, &unk_22768B2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C10);
  }

  return result;
}

unint64_t sub_22712902C()
{
  result = qword_281398C08;
  if (!qword_281398C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB2D0, &unk_22768B2E0);
    sub_2271290B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C08);
  }

  return result;
}

unint64_t sub_2271290B0()
{
  result = qword_28139B250;
  if (!qword_28139B250)
  {
    sub_2276694E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B250);
  }

  return result;
}

uint64_t sub_227129110(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227127EF8(a1, v1);
}

uint64_t sub_2271291AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22712802C(a1, v1);
}

uint64_t sub_227129248(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227128310(a1, v1);
}

uint64_t sub_2271292E0(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227128458(a1, a2, v2);
}

uint64_t sub_22712938C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2271286FC(v0);
}

uint64_t sub_22712941C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_227128838(v0);
}

uint64_t sub_2271294AC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_227128974(a1, a2, v2);
}

uint64_t sub_227129558(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227128CB8(a1, v1);
}

uint64_t sub_2271295F4()
{
  v1 = sub_227669A70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[12];
  v11[0] = v0[14];
  swift_getObjectType();
  v11[1] = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D4E730], v1);
  swift_allocObject();
  swift_weakInit();
  sub_227667900();
  sub_227665AD0();
  swift_unknownObjectRetain();
  sub_227669E80();

  (*(v2 + 8))(v5, v1);
  swift_unknownObjectRelease();
  v7 = __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *v7;
  sub_22712A264(11, sub_226E9239C, v8);
}

uint64_t sub_227129828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v9);

    v5 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_226E923DC(a1, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_227129958()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2271299E0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2D8, &qword_22767A270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  a2(a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7BB2D8, &qword_22767A270);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a3, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_226ED9FBC(v14, a3);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a3, v15, 1, v10);
}

uint64_t sub_227129C10@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB300, &qword_22767A298);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  v18 = a1;
  a2(&v18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7BB300, &qword_22767A298);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a3, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_2272A4624(v14, a3);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a3, v15, 1, v10);
}

uint64_t sub_227129E44@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E0, &qword_22767A278);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  a2(a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7BB2E0, &qword_22767A278);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a3, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_2272A7FD0(v14, a3);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a3, v15, 1, v10);
}

uint64_t sub_22712A074(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226ED35BC;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226ED35B0, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226ED35CC;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226ED35B8, v17);
}

uint64_t sub_22712A264(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226ED9F0C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226ED9DB0, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226ED9F94;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226ED9E34, v17);
}

uint64_t sub_22712A454(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22712BEE0;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22712BEF0, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22712BFCC;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22712BFE0, v17);
}

uint64_t sub_22712A644(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22712BBE0;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22712BBEC, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22712BFC4;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22712BFD4, v17);
}

uint64_t sub_22712A834(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22712BD94;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22712BDA4, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22712BFC8;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22712BFD8, v17);
}

uint64_t sub_22712AA24(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22712BFC8;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_22712BED8, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22712BFC8;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_22712BFDC, v17);
}

uint64_t sub_22712AC14@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB300, &qword_22767A298);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  if (a1)
  {
    v28 = v13;
    sub_226F62704();

    v27 = sub_22766C2F0();
    v30 = v27;
    a2(&v30);
    v18 = v28;
    if ((*(v28 + 48))(v8, 1, v9) != 1)
    {
      v21 = *(v18 + 32);
      v21(v15, v8, v9);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22712BBF4;
      *(v22 + 24) = 0;
      (*(v18 + 16))(v12, v15, v9);
      v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v24 = swift_allocObject();
      v21((v24 + v23), v12, v9);
      v25 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v25 = sub_22712BEF8;
      v25[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v18 + 8))(v15, v9);
    }

    sub_226E97D1C(v8, &qword_27D7BB300, &qword_22767A298);
    sub_226F6649C();
    v16 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22712AFE0@<X0>(uint64_t a1@<X1>, void (*a2)(char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = a2;
  v34 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E0, &qword_22767A278);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = sub_227662750();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v18;

    sub_227667720();
    v33(v20);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v33 = *(v10 + 32);
      (v33)(v15, v8, v9);
      v25 = swift_allocObject();
      v32 = v25;
      *(v25 + 16) = sub_22712BC48;
      *(v25 + 24) = 0;
      (*(v10 + 16))(v13, v15, v9);
      v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v27 = swift_allocObject();
      (v33)(v27 + v26, v13, v9);
      v28 = (v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
      v29 = v32;
      *v28 = sub_22712BCF0;
      v28[1] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v10 + 8))(v15, v9);
      return (*(v31 + 8))(v20, v16);
    }

    sub_226E97D1C(v8, &qword_27D7BB2E0, &qword_22767A278);
    sub_226F6649C();
    v21 = swift_allocError();
    *v22 = 2;
    swift_willThrow();
    (*(v31 + 8))(v20, v16);
  }

  else
  {
    sub_226F6649C();
    v21 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22712B448@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F0, &qword_22767A288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  if (a1)
  {
    v28 = v13;
    sub_22712BDAC();

    v27 = sub_22766C2F0();
    v30 = v27;
    a2(&v30);
    v18 = v28;
    if ((*(v28 + 48))(v8, 1, v9) != 1)
    {
      v21 = *(v18 + 32);
      v21(v15, v8, v9);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22712BFAC;
      *(v22 + 24) = 0;
      (*(v18 + 16))(v12, v15, v9);
      v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v24 = swift_allocObject();
      v21((v24 + v23), v12, v9);
      v25 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v25 = sub_22712BE00;
      v25[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v18 + 8))(v15, v9);
    }

    sub_226E97D1C(v8, &qword_27D7BB2F0, &qword_22767A288);
    sub_226F6649C();
    v16 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22712B814@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F0, &qword_22767A288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  if (a1)
  {
    v28 = v13;
    sub_226F62704();

    v27 = sub_22766C2F0();
    v30 = v27;
    a2(&v30);
    v18 = v28;
    if ((*(v28 + 48))(v8, 1, v9) != 1)
    {
      v21 = *(v18 + 32);
      v21(v15, v8, v9);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22712BFAC;
      *(v22 + 24) = 0;
      (*(v18 + 16))(v12, v15, v9);
      v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v24 = swift_allocObject();
      v21((v24 + v23), v12, v9);
      v25 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v25 = sub_22712BFA8;
      v25[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v18 + 8))(v15, v9);
    }

    sub_226E97D1C(v8, &qword_27D7BB2F0, &qword_22767A288);
    sub_226F6649C();
    v16 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22712BBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_227129E44(a1, *(v2 + 16), a2);
}

uint64_t sub_22712BBF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_226F62704();
  result = sub_22766C2E0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_22712BC48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_227666B60();
  sub_22712BD50(&qword_28139B5C0);
  sub_22712BD50(&qword_28139B5D8);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_22712BD50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227666B60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22712BD94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_226EEA09C(*a1, *(v2 + 16), a2);
}

unint64_t sub_22712BDAC()
{
  result = qword_28139B900;
  if (!qword_28139B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B900);
  }

  return result;
}

uint64_t sub_22712BE60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_227666B60();
  sub_22712BD50(&qword_28139B5C0);
  result = sub_22766C2E0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_22712BEE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_227129C10(*a1, *(v2 + 16), a2);
}

uint64_t objectdestroy_7Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_22712BFEC(uint64_t a1)
{
  v37 = sub_2276694E0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_2276694C0();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EFF0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_22704FE58(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_22704FE58(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22712C328@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8468, &unk_22767A340);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_2276694C0();
  v15 = v14;
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v41[0] = v13;
  v41[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v41, v39, &unk_27D7BC990, &qword_227670A30);
  v17 = v40;
  if (v40)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v39, v40);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    v21 = MEMORY[0x28223BE20](v18);
    v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v23, v21);
    v24 = sub_22766D170();
    (*(v19 + 8))(v23, v17);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8478 &qword_227670A38))];

  sub_226E97D1C(v41, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v38 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v41, 0);
  swift_endAccess();

  v31 = MEMORY[0x22AA99A00]();
  sub_227544464(v10, v42);
  objc_autoreleasePoolPop(v31);
  swift_setDeallocating();

  v32 = *(v10 + 40);

  v33 = qword_2813B2078;
  v34 = sub_22766A100();
  (*(*(v34 - 8) + 8))(v10 + v33, v34);
  v35 = *(*v10 + 48);
  v36 = *(*v10 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_22712C75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a5;
  v7 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB318, &qword_22767A380);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v71 = v64;
  v69 = a1;
  v70 = a2;
  v18 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v63 = v18;
  v19 = sub_22766C820();
  sub_226E93170(&v69, v67, &unk_27D7BC990, &qword_227670A30);
  v20 = v68;
  if (v68)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v67, v68);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    v24 = MEMORY[0x28223BE20](v21);
    v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v26, v24);
    v27 = sub_22766D170();
    (*(v22 + 8))(v26, v20);
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_self();
  v29 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB320, qword_22767A3B0);
  v31 = [objc_allocWithZone(v30) initWithLeftExpression:v19 rightExpression:v29 modifier:0 type:4 options:0];

  sub_226E97D1C(&v69, &unk_27D7BC990, &qword_227670A30);
  v32 = qword_2813B2078;
  swift_beginAccess();
  v33 = v31;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(&v69, 0);
  swift_endAccess();

  swift_getKeyPath();
  v37 = sub_2276694C0();
  v71 = v64;
  v69 = v37;
  v70 = v38;

  v39 = sub_22766C820();
  sub_226E93170(&v69, v67, &unk_27D7BC990, &qword_227670A30);
  v40 = v68;
  if (v68)
  {
    v41 = __swift_project_boxed_opaque_existential_0(v67, v68);
    v64 = v28;
    v65 = v32;
    v42 = v30;
    v43 = *(v40 - 8);
    v44 = *(v43 + 64);
    v45 = MEMORY[0x28223BE20](v41);
    v47 = &v63 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v47, v45);
    v48 = sub_22766D170();
    (*(v43 + 8))(v47, v40);
    v30 = v42;
    v28 = v64;
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
    v48 = 0;
  }

  v49 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v50 = [objc_allocWithZone(v30) initWithLeftExpression:v39 rightExpression:v49 modifier:0 type:4 options:0];

  sub_226E97D1C(&v69, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v51 = v50;
  v52 = sub_22766A080();
  v54 = v53;
  MEMORY[0x22AA985C0]();
  if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v62 = *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v52(&v69, 0);
  swift_endAccess();

  v55 = MEMORY[0x22AA99A00]();
  sub_227544944(v15, v66);
  objc_autoreleasePoolPop(v55);
  swift_setDeallocating();

  v56 = *(v15 + 40);

  v57 = qword_2813B2078;
  v58 = sub_22766A100();
  (*(*(v58 - 8) + 8))(v15 + v57, v58);
  v59 = *(*v15 + 48);
  v60 = *(*v15 + 52);
  return swift_deallocClassInstance();
}

void sub_22712CDF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v79 = a1;
  v80 = a3;
  v6 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  v77 = v16;
  v78 = v15;
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v82 = v9;
  *(v14 + 32) = v9;
  v81 = v10;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v17 = *(v4 + 16);
  v18 = sub_2276633C0();
  v90 = MEMORY[0x277D849A8];
  LODWORD(v88) = v18;
  v19 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v91 = v19;
  v20 = sub_22766C820();
  sub_226E93170(&v88, v86, &unk_27D7BC990, &qword_227670A30);
  v21 = v87;
  if (v87)
  {
    v22 = __swift_project_boxed_opaque_existential_0(v86, v87);
    v23 = *(v21 - 8);
    v24 = *(v23 + 64);
    MEMORY[0x28223BE20](v22);
    v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26);
    v27 = sub_22766D170();
    (*(v23 + 8))(v26, v21);
    __swift_destroy_boxed_opaque_existential_0(v86);
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_self();
  v29 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330, qword_227681240);
  v30 = [objc_allocWithZone(v85) initWithLeftExpression:v20 rightExpression:v29 modifier:0 type:4 options:0];

  sub_226E97D1C(&v88, &unk_27D7BC990, &qword_227670A30);
  v31 = qword_2813B2078;
  swift_beginAccess();
  v32 = v30;
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(&v88, 0);
  swift_endAccess();

  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v90 = v36;
  v88 = v79;
  v89 = a2;

  v37 = sub_22766C820();
  sub_226E93170(&v88, v86, &unk_27D7BC990, &qword_227670A30);
  v38 = v87;
  v84 = v14;
  if (v87)
  {
    v39 = __swift_project_boxed_opaque_existential_0(v86, v87);
    v79 = v31;
    v40 = v36;
    v41 = *(v38 - 8);
    v42 = *(v41 + 64);
    MEMORY[0x28223BE20](v39);
    v44 = &v76 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44);
    v45 = sub_22766D170();
    (*(v41 + 8))(v44, v38);
    v36 = v40;
    v31 = v79;
    v14 = v84;
    __swift_destroy_boxed_opaque_existential_0(v86);
  }

  else
  {
    v45 = 0;
  }

  v46 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v47 = [objc_allocWithZone(v85) initWithLeftExpression:v37 rightExpression:v46 modifier:0 type:4 options:0];

  sub_226E97D1C(&v88, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v48 = v47;
  v49 = sub_22766A080();
  v51 = v50;
  MEMORY[0x22AA985C0]();
  if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v74 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v49(&v88, 0);
  swift_endAccess();

  swift_getKeyPath();
  v52 = sub_2276694C0();
  v90 = v36;
  v88 = v52;
  v89 = v53;

  v54 = sub_22766C820();
  sub_226E93170(&v88, v86, &unk_27D7BC990, &qword_227670A30);
  v55 = v87;
  if (v87)
  {
    v56 = __swift_project_boxed_opaque_existential_0(v86, v87);
    v57 = *(v55 - 8);
    v58 = *(v57 + 64);
    MEMORY[0x28223BE20](v56);
    v60 = &v76 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v60);
    v61 = sub_22766D170();
    (*(v57 + 8))(v60, v55);
    v14 = v84;
    __swift_destroy_boxed_opaque_existential_0(v86);
  }

  else
  {
    v61 = 0;
  }

  v62 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v63 = [objc_allocWithZone(v85) initWithLeftExpression:v54 rightExpression:v62 modifier:0 type:4 options:0];

  sub_226E97D1C(&v88, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v64 = v63;
  v65 = sub_22766A080();
  v67 = v66;
  MEMORY[0x22AA985C0]();
  if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v75 = *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v65(&v88, 0);
  swift_endAccess();

  v68 = sub_227542300(v14 + v31, v82, v81);
  if (v68)
  {
    if (v68 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_20;
  }

  v69 = v83;
  v70 = sub_22728497C(0);
  if (v69)
  {
LABEL_20:

    return;
  }

  v71 = v70;
  [v70 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v72 = sub_22766C9E0();
  v73 = sub_226EDAB24(v72);

  sub_226EDAB78(v73, v77);
}

void sub_22712D728(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, double a5)
{
  v103 = a3;
  v104 = *&a1;
  v105 = a2;
  v7 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  v101 = v17;
  v102 = v16;
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  v107 = v10;
  *(v15 + 32) = v10;
  v106 = v11;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v18 = *(v5 + 16);
  v19 = sub_2276633C0();
  v116 = MEMORY[0x277D849A8];
  LODWORD(v114) = v19;
  v20 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v111 = v20;
  v21 = sub_22766C820();
  sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
  v22 = v113;
  if (v113)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v112, v113);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64);
    v26 = MEMORY[0x28223BE20](v23);
    v28 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v28, v26);
    v29 = sub_22766D170();
    (*(v24 + 8))(v28, v22);
    __swift_destroy_boxed_opaque_existential_0(v112);
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_self();
  v31 = [v30 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330, qword_227681240);
  v32 = [objc_allocWithZone(v110) initWithLeftExpression:v21 rightExpression:v31 modifier:0 type:4 options:0];

  sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
  v33 = qword_2813B2078;
  swift_beginAccess();
  v34 = v32;
  v35 = sub_22766A080();
  v37 = v36;
  MEMORY[0x22AA985C0]();
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v96 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v35(&v114, 0);
  swift_endAccess();

  swift_getKeyPath();
  v116 = MEMORY[0x277D839F8];
  v114 = a5;

  v38 = sub_22766C820();
  sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
  v39 = v113;
  v109 = v30;
  if (v113)
  {
    v40 = __swift_project_boxed_opaque_existential_0(v112, v113);
    v41 = *(v39 - 8);
    v42 = *(v41 + 64);
    v43 = MEMORY[0x28223BE20](v40);
    v45 = &v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v45, v43);
    v46 = sub_22766D170();
    (*(v41 + 8))(v45, v39);
    v30 = v109;
    __swift_destroy_boxed_opaque_existential_0(v112);
  }

  else
  {
    v46 = 0;
  }

  v47 = [v30 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v48 = [objc_allocWithZone(v110) initWithLeftExpression:v38 rightExpression:v47 modifier:0 type:1 options:0];

  sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v49 = v48;
  v50 = sub_22766A080();
  v52 = v51;
  MEMORY[0x22AA985C0]();
  if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v97 = *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v50(&v114, 0);
  swift_endAccess();

  swift_getKeyPath();
  *&v53 = COERCE_DOUBLE(sub_2276694C0());
  v55 = v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v116 = v56;
  v114 = *&v53;
  v115 = v55;

  v57 = sub_22766C820();
  sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
  v58 = v113;
  if (v113)
  {
    v59 = __swift_project_boxed_opaque_existential_0(v112, v113);
    v103 = &v100;
    v60 = v15;
    v61 = v33;
    v62 = v56;
    v63 = *(v58 - 8);
    v64 = *(v63 + 64);
    v65 = MEMORY[0x28223BE20](v59);
    v67 = &v100 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v63 + 16))(v67, v65);
    v68 = sub_22766D170();
    (*(v63 + 8))(v67, v58);
    v56 = v62;
    v33 = v61;
    v15 = v60;
    v30 = v109;
    __swift_destroy_boxed_opaque_existential_0(v112);
  }

  else
  {
    v68 = 0;
  }

  v69 = [v30 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v70 = [objc_allocWithZone(v110) initWithLeftExpression:v57 rightExpression:v69 modifier:0 type:4 options:0];

  sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v71 = v70;
  v72 = sub_22766A080();
  v74 = v73;
  MEMORY[0x22AA985C0]();
  if (*((*v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v98 = *((*v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v72(&v114, 0);
  swift_endAccess();

  swift_getKeyPath();
  v116 = v56;
  v114 = v104;
  v115 = v105;

  v75 = sub_22766C820();
  sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
  v76 = v113;
  if (v113)
  {
    v77 = __swift_project_boxed_opaque_existential_0(v112, v113);
    v78 = *(v76 - 8);
    v79 = *(v78 + 64);
    v80 = MEMORY[0x28223BE20](v77);
    v82 = &v100 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 16))(v82, v80);
    v83 = sub_22766D170();
    (*(v78 + 8))(v82, v76);
    v30 = v109;
    __swift_destroy_boxed_opaque_existential_0(v112);
  }

  else
  {
    v83 = 0;
  }

  v84 = [v30 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v85 = [objc_allocWithZone(v110) initWithLeftExpression:v75 rightExpression:v84 modifier:0 type:4 options:0];

  sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v86 = v85;
  v87 = sub_22766A080();
  v89 = v88;
  MEMORY[0x22AA985C0]();
  if (*((*v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v99 = *((*v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v87(&v114, 0);
  swift_endAccess();

  v90 = sub_227542300(v15 + v33, v107, v106);
  if (v90)
  {
    if (v90 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_25;
  }

  v91 = v108;
  v92 = sub_22728497C(0);
  if (v91)
  {
LABEL_25:

    return;
  }

  v93 = v92;
  [v92 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v94 = sub_22766C9E0();
  v95 = sub_226EDAB24(v94);

  sub_226EDAB78(v95, v101);
}

uint64_t sub_22712E2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2276694E0();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *(type metadata accessor for DirtySyncZone() + 20);
  v8 = sub_227662750();
  return (*(*(v8 - 8) + 16))(a3 + v7, a2, v8);
}

uint64_t sub_22712E360(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB340, &qword_22767A548);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  v13 = sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  v14 = MEMORY[0x22AA99A00](v13);
  sub_227544230(v10);
  if (v1)
  {
    objc_autoreleasePoolPop(v14);
    swift_setDeallocating();

    v16 = *(v10 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
    v19 = *(*v10 + 48);
    v20 = *(*v10 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    objc_autoreleasePoolPop(v14);
    swift_setDeallocating();

    v23 = *(v10 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v10 + v24, v25);
    v26 = *(*v10 + 48);
    v27 = *(*v10 + 52);
    swift_deallocClassInstance();
    return v22 & 1;
  }
}

char *sub_22712E580(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB308, qword_22767A2F8);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_22712BFEC(a1);
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v37[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v37, v35, &unk_27D7BC990, &qword_227670A30);
  v16 = v36;
  if (v36)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB310 &qword_22767A338))];

  sub_226E97D1C(v37, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v37, 0);
  swift_endAccess();

  v27 = sub_2272310B8(100);
  swift_setDeallocating();

  v28 = *(v11 + 40);

  v29 = qword_2813B2078;
  v30 = sub_22766A100();
  (*(*(v30 - 8) + 8))(v11 + v29, v30);
  v31 = *(*v11 + 48);
  v32 = *(*v11 + 52);
  swift_deallocClassInstance();
  return v27;
}

uint64_t sub_22712E9A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v100 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v99 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v94 - v9;
  v98 = type metadata accessor for DirtySyncZone();
  v97 = *(v98 - 8);
  v10 = *(v97 + 64);
  v11 = MEMORY[0x28223BE20](v98);
  v116 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v94 - v13;
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v101 = a1;

  v20 = 0;
  v95 = a1 + 56;
  v94 = v18;
  while (v17)
  {
    v108 = v3;
LABEL_12:
    v28 = v96;
    sub_227130270(*(v101 + 48) + *(v97 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v96);
    v29 = v116;
    sub_2271302D4(v28, v116);
    v30 = __swift_project_boxed_opaque_existential_0(v100, v100[3]);
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v30 + 16);
    v34 = v30[3];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8480, &qword_22767A4E0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v38 = swift_allocObject();
    v39 = v31;
    v40 = v32;

    sub_22766A070();
    v106 = v40;
    v107 = v39;
    *(v38 + 16) = v39;
    *(v38 + 24) = v40;
    v105 = v33;
    *(v38 + 32) = v33;
    v110 = v34;
    v111 = v38;
    *(v38 + 40) = v34;
    swift_getKeyPath();
    v41 = *(v98 + 20);
    v42 = sub_227662750();
    v43 = *(v42 - 8);
    v44 = v29 + v41;
    v45 = v109;
    (*(v43 + 16))(v109, v44, v42);
    (*(v43 + 56))(v45, 0, 1, v42);
    v46 = v45;
    v47 = v99;
    sub_226E93170(v46, v99, &qword_27D7B9690, qword_227670B50);
    if ((*(v43 + 48))(v47, 1, v42) == 1)
    {
      sub_226E97D1C(v47, &qword_27D7B9690, qword_227670B50);
      v114 = 0u;
      v115 = 0u;
    }

    else
    {
      *(&v115 + 1) = v42;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v114);
      (*(v43 + 32))(boxed_opaque_existential_0, v47, v42);
    }

    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v49 = sub_22766C820();
    sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
    v50 = v113;
    if (v113)
    {
      v51 = __swift_project_boxed_opaque_existential_0(v112, v113);
      v104 = &v94;
      v52 = *(v50 - 8);
      v53 = *(v52 + 64);
      MEMORY[0x28223BE20](v51);
      v55 = &v94 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v55);
      v56 = sub_22766D170();
      (*(v52 + 8))(v55, v50);
      __swift_destroy_boxed_opaque_existential_0(v112);
    }

    else
    {
      v56 = 0;
    }

    v103 = objc_opt_self();
    v57 = [v103 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB338, &qword_22767A510);
    v58 = [objc_allocWithZone(v102) initWithLeftExpression:v49 rightExpression:v57 modifier:0 type:1 options:0];

    sub_226E97D1C(v109, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
    v59 = qword_2813B2078;
    swift_beginAccess();
    v60 = v58;
    v104 = v59;
    v61 = sub_22766A080();
    v63 = v62;
    MEMORY[0x22AA985C0]();
    if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v61(&v114, 0);
    swift_endAccess();

    swift_getKeyPath();
    v64 = sub_2276694C0();
    v66 = v65;
    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    *&v114 = v64;
    *(&v114 + 1) = v66;

    v67 = sub_22766C820();
    sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
    v68 = v113;
    if (v113)
    {
      v69 = __swift_project_boxed_opaque_existential_0(v112, v113);
      v70 = *(v68 - 8);
      v71 = *(v70 + 64);
      MEMORY[0x28223BE20](v69);
      v73 = &v94 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v70 + 16))(v73);
      v74 = sub_22766D170();
      (*(v70 + 8))(v73, v68);
      __swift_destroy_boxed_opaque_existential_0(v112);
    }

    else
    {
      v74 = 0;
    }

    v75 = [v103 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v76 = [objc_allocWithZone(v102) initWithLeftExpression:v67 rightExpression:v75 modifier:0 type:4 options:0];

    sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
    v77 = v111;
    v78 = v104;
    swift_beginAccess();
    v79 = v76;
    v80 = sub_22766A080();
    v82 = v81;
    MEMORY[0x22AA985C0]();
    if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v89 = *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v80(&v114, 0);
    swift_endAccess();

    v83 = sub_2275422B8(v78 + v77, v105, v110);
    if (v83)
    {
      v21 = v107;
      v3 = v108;
      v22 = v106;
      if (v83 != 1)
      {
        swift_willThrow();
LABEL_30:
        sub_227130338(v116);

        swift_setDeallocating();
        v90 = qword_2813B2078;
        v91 = sub_22766A100();
        (*(*(v91 - 8) + 8))(v77 + v90, v91);
        v92 = *(*v77 + 48);
        v93 = *(*v77 + 52);
        return swift_deallocClassInstance();
      }
    }

    else
    {
      v84 = v108;
      v85 = sub_227284634(0);
      v3 = v84;
      v22 = v106;
      v21 = v107;
      if (v84)
      {
        goto LABEL_30;
      }

      v86 = v85;
      [v85 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v87 = sub_22766C9E0();
      v88 = sub_226EDAB24(v87);

      sub_226EDAB78(v88, v22);
    }

    v17 &= v17 - 1;
    sub_227130338(v116);

    swift_setDeallocating();
    v23 = qword_2813B2078;
    v24 = sub_22766A100();
    (*(*(v24 - 8) + 8))(v77 + v23, v24);
    v25 = *(*v77 + 48);
    v26 = *(*v77 + 52);
    result = swift_deallocClassInstance();
    v14 = v95;
    v18 = v94;
  }

  while (1)
  {
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v27 >= v18)
    {
    }

    v17 = *(v14 + 8 * v27);
    ++v20;
    if (v17)
    {
      v108 = v3;
      v20 = v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_22712F4F0(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB318, &qword_22767A380);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  v41 = v12;
  v42 = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_2276694C0();
  v15 = v14;
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v46[0] = v13;
  v46[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v46, v44, &unk_27D7BC990, &qword_227670A30);
  v17 = v45;
  if (v45)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v44, v45);
    v43 = &v40;
    v19 = v6;
    v20 = v5;
    v21 = *(v17 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x28223BE20](v18);
    v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v21 + 8))(v25, v17);
    v5 = v20;
    v6 = v19;
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB320 qword_22767A3B0))];

  sub_226E97D1C(v46, &unk_27D7BC990, &qword_227670A30);
  v29 = qword_2813B2078;
  swift_beginAccess();
  v30 = v28;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v46, 0);
  swift_endAccess();

  v34 = sub_227542348(v10 + v29, v5, v6);
  v35 = v46[5];
  if (v34)
  {
    if (v34 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v36 = sub_2272847E4(0);
  if (v35)
  {
LABEL_10:

    return;
  }

  v37 = v36;
  [v36 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v38 = sub_22766C9E0();
  v39 = sub_226EDAB24(v38);

  sub_226EDAB78(v39, v41);
}

void sub_22712F964(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8468, &unk_22767A340);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  v41 = v12;
  v42 = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_2276694C0();
  v15 = v14;
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v46[0] = v13;
  v46[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v46, v44, &unk_27D7BC990, &qword_227670A30);
  v17 = v45;
  if (v45)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v44, v45);
    v43 = &v40;
    v19 = v6;
    v20 = v5;
    v21 = *(v17 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x28223BE20](v18);
    v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v21 + 8))(v25, v17);
    v5 = v20;
    v6 = v19;
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8478 &qword_227670A38))];

  sub_226E97D1C(v46, &unk_27D7BC990, &qword_227670A30);
  v29 = qword_2813B2078;
  swift_beginAccess();
  v30 = v28;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v46, 0);
  swift_endAccess();

  v34 = sub_227542390(v10 + v29, v5, v6);
  v35 = v46[5];
  if (v34)
  {
    if (v34 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v36 = sub_22728464C(0);
  if (v35)
  {
LABEL_10:

    return;
  }

  v37 = v36;
  [v36 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v38 = sub_22766C9E0();
  v39 = sub_226EDAB24(v38);

  sub_226EDAB78(v39, v41);
}

void sub_22712FDD8(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB308, qword_22767A2F8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  v41 = v12;
  v42 = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_2276694C0();
  v15 = v14;
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v46[0] = v13;
  v46[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v46, v44, &unk_27D7BC990, &qword_227670A30);
  v17 = v45;
  if (v45)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v44, v45);
    v43 = &v40;
    v19 = v6;
    v20 = v5;
    v21 = *(v17 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x28223BE20](v18);
    v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v21 + 8))(v25, v17);
    v5 = v20;
    v6 = v19;
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB310 &qword_22767A338))];

  sub_226E97D1C(v46, &unk_27D7BC990, &qword_227670A30);
  v29 = qword_2813B2078;
  swift_beginAccess();
  v30 = v28;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v46, 0);
  swift_endAccess();

  v34 = sub_2275423D8(v10 + v29, v5, v6);
  v35 = v46[5];
  if (v34)
  {
    if (v34 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v36 = sub_22723B7F8(0);
  if (v35)
  {
LABEL_10:

    return;
  }

  v37 = v36;
  [v36 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v38 = sub_22766C9E0();
  v39 = sub_226EDAB24(v38);

  sub_226EDAB78(v39, v41);
}

uint64_t sub_227130270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirtySyncZone();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271302D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirtySyncZone();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227130338(uint64_t a1)
{
  v2 = type metadata accessor for DirtySyncZone();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KeyCertificate.remoteURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2276624A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t KeyCertificate.data.getter()
{
  v1 = v0 + *(type metadata accessor for KeyCertificate() + 20);
  v2 = *v1;
  sub_226F5E0B4(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for KeyCertificate()
{
  result = qword_28139AE88;
  if (!qword_28139AE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KeyCertificate.init(remoteURL:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2276624A0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for KeyCertificate();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static KeyCertificate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_227662420() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for KeyCertificate() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *v7;
  v9 = v7[1];

  return sub_227130B5C(v5, v6, v8, v9);
}

uint64_t KeyCertificate.hash(into:)()
{
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260]);
  sub_22766BF60();
  v1 = (v0 + *(type metadata accessor for KeyCertificate() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_2276625A0();
}

uint64_t KeyCertificate.hashValue.getter()
{
  sub_22766D370();
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260]);
  sub_22766BF60();
  v1 = (v0 + *(type metadata accessor for KeyCertificate() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_2271306BC(uint64_t a1)
{
  sub_22766D370();
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260]);
  sub_22766BF60();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_227130764(uint64_t a1, uint64_t a2)
{
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260]);
  sub_22766BF60();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_2276625A0();
}

uint64_t sub_227130800(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260]);
  sub_22766BF60();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_2271308A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_227662420() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_227130B5C(v7, v8, v10, v11);
}

uint64_t sub_227130914(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_227130AA4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_226EDC420(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2275BA344(v14, a3, a4, &v13);
  v10 = v4;
  sub_226EDC420(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_227130AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_227662060();
  v11 = result;
  if (result)
  {
    result = sub_227662090();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_227662080();
  sub_2275BA344(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_227130B5C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_226F5E0B4(a3, a4);
          return sub_227130914(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227130D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227130D7C()
{
  result = sub_2276624A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_227130DF0(uint64_t a1, void *a2)
{
  v4 = a1;
  v5 = *(a1 + 16);

  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *(v4 + 32);
  v6 = *(v4 + 40);

  sub_226EA9E3C(0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = a2;
  v9 = sub_226E92000(v7, v6);
  v11 = a2[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v2) = v10;
  if (a2[3] >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_8;
  }

  sub_226FE2228(v14, isUniquelyReferenced_nonNull_native);
  v9 = sub_226E92000(v7, v6);
  if ((v2 & 1) == (v15 & 1))
  {
LABEL_8:
    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    while (1)
    {
      v20 = a2[7];
      v21 = *(v20 + 8 * v9);
      v13 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (!v13)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      while (1)
      {
        __break(1u);
LABEL_32:
        v38 = v9;
        sub_226FF016C();
        v9 = v38;
        a2 = v39;
        if (v2)
        {
          break;
        }

LABEL_9:
        a2[(v9 >> 6) + 8] |= 1 << v9;
        v17 = (a2[6] + 16 * v9);
        *v17 = v7;
        v17[1] = v6;
        *(a2[7] + 8 * v9) = 0;
        v18 = a2[2];
        v13 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (!v13)
        {
          a2[2] = v19;
          v7 = v9;

          v9 = v7;
          goto LABEL_11;
        }
      }
    }

    *(v20 + 8 * v9) = v22;

    v23 = v5 - 1;
    if (v5 == 1)
    {
LABEL_13:
      v16 = sub_226F04A6C;
      goto LABEL_14;
    }

    v5 = (v4 + 56);
    while (1)
    {
      v6 = *(v5 - 1);
      v4 = *v5;

      sub_226EA9E3C(sub_226F04A6C);
      LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
      v39 = a2;
      v9 = sub_226E92000(v6, v4);
      v28 = a2[2];
      v29 = (v27 & 1) == 0;
      v13 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v13)
      {
        goto LABEL_29;
      }

      v7 = v27;
      if (a2[3] < v30)
      {
        break;
      }

      if (v2)
      {
        goto LABEL_21;
      }

      v2 = v9;
      sub_226FF016C();
      v9 = v2;
      if ((v7 & 1) == 0)
      {
LABEL_22:
        a2[(v9 >> 6) + 8] |= 1 << v9;
        v32 = (a2[6] + 16 * v9);
        *v32 = v6;
        v32[1] = v4;
        *(a2[7] + 8 * v9) = 0;
        v33 = a2[2];
        v13 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v13)
        {
          goto LABEL_31;
        }

        a2[2] = v34;
        v6 = v9;

        v9 = v6;
      }

LABEL_24:
      v35 = a2[7];
      v36 = *(v35 + 8 * v9);
      v13 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v13)
      {
        goto LABEL_30;
      }

      *(v35 + 8 * v9) = v37;

      v5 += 2;
      if (!--v23)
      {
        goto LABEL_13;
      }
    }

    sub_226FE2228(v30, v2);
    v9 = sub_226E92000(v6, v4);
    if ((v7 & 1) != (v31 & 1))
    {
      goto LABEL_5;
    }

LABEL_21:
    if ((v7 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

LABEL_5:
  sub_22766D220();
  __break(1u);
LABEL_6:
  v16 = 0;
LABEL_14:

  v25 = sub_22746B5DC(v24);
  swift_bridgeObjectRelease_n();
  sub_226EA9E3C(v16);
  return v25;
}

uint64_t sub_227131120(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_226F1FD28(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v27 = v3 + 72;
  v28 = v1;
  v29 = v3 + 64;
  v30 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v31 = v8;
    v32 = *(v3 + 36);
    v11 = *(v3 + 56) + 40 * v7;
    v12 = *(v11 + 8);
    v33 = *v11;
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);

    result = sub_226EB396C(v13, v14, v15);
    v17 = *(v34 + 16);
    v16 = *(v34 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      result = sub_226F1FD28((v16 > 1), v17 + 1, 1);
      v18 = v17 + 1;
    }

    *(v34 + 16) = v18;
    v19 = v34 + 40 * v17;
    *(v19 + 32) = v33;
    *(v19 + 40) = v12;
    *(v19 + 48) = v13;
    *(v19 + 56) = v14;
    *(v19 + 64) = v15;
    v3 = v30;
    v9 = 1 << *(v30 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = v29;
    v20 = *(v29 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v32 != *(v30 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_226EB526C(v7, v32, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v32, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v9;
    if (v31 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

BOOL sub_22713139C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
    v10 = a3(v9);
  }

  while (v10 != a3(a1));
  return v7 != 0;
}

uint64_t sub_227131410@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227667380();
  *a2 = result;
  a2[1] = v6;
  return result;
}

SeymourServices::CandidateSamplingMode_optional __swiftcall CandidateSamplingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22766D030();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CandidateSamplingMode.rawValue.getter()
{
  if (*v0)
  {
    result = 0x676E696C706D6173;
  }

  else
  {
    result = 7889261;
  }

  *v0;
  return result;
}

uint64_t sub_2271314D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x676E696C706D6173;
  }

  else
  {
    v4 = 7889261;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x676E696C706D6173;
  }

  else
  {
    v6 = 7889261;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22766D190();
  }

  return v9 & 1;
}

unint64_t sub_22713157C()
{
  result = qword_27D7BB348;
  if (!qword_27D7BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB348);
  }

  return result;
}

uint64_t sub_2271315D0()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22713164C()
{
  *v0;
  sub_22766C100();
}

uint64_t sub_2271316B4()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22713172C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22766D030();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22713178C(uint64_t *a1@<X8>)
{
  v2 = 7889261;
  if (*v1)
  {
    v2 = 0x676E696C706D6173;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_2271317D4(uint64_t a1)
{
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667240();
  sub_227667F00();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v9 = sub_22713AAA4(a1, v8);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = (v9 + 32);
    v13 = MEMORY[0x277D84F90];
    v14 = *(v9 + 16);
    do
    {
      v17 = *v12;
      if (*v12 > 0.0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1FCE8(0, *(v13 + 16) + 1, 1);
          v13 = v33;
        }

        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_226F1FCE8((v15 > 1), v16 + 1, 1);
          v13 = v33;
        }

        *(v13 + 16) = v16 + 1;
        *(v13 + 8 * v16 + 32) = v17;
      }

      ++v12;
      --v14;
    }

    while (v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v19 = *(v13 + 16);
  if (!v19)
  {

LABEL_27:

    return;
  }

  if (v19 <= 3)
  {
    v20 = 0;
    v21 = 0.0;
LABEL_18:
    v25 = v19 - v20;
    v26 = (v13 + 8 * v20 + 32);
    do
    {
      v27 = *v26++;
      v21 = v21 + v27;
      --v25;
    }

    while (v25);
    goto LABEL_20;
  }

  v20 = v19 & 0x7FFFFFFFFFFFFFFCLL;
  v22 = (v13 + 48);
  v21 = 0.0;
  v23 = v19 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v24 = *v22;
    v21 = v21 + *(v22 - 2) + *(v22 - 1) + *v22 + v22[1];
    v22 += 4;
    v23 -= 4;
  }

  while (v23);
  if (v19 != v20)
  {
    goto LABEL_18;
  }

LABEL_20:

  if (v21 <= 0.0)
  {
    goto LABEL_27;
  }

  v28 = 0.0;
  sub_227131AA0(0.0, 1.0);
  if (!v11)
  {
    goto LABEL_27;
  }

  v30 = 0;
  while (*(v10 + 16) != v30)
  {
    v31 = *(v10 + 8 * v30 + 32);
    if (v31 <= 0.0 || (v28 = v28 + v31 / v21, v29 > v28))
    {
      if (v11 != ++v30)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  __break(1u);
}

void sub_227131AA0(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_227664440();
  sub_22713CF20(&qword_27D7BB388, MEMORY[0x277D508E8]);
    ;
  }
}

void sub_227131B70(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = v4;
  v72 = a3;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v70 = &v66[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v66[-v16];
  MEMORY[0x28223BE20](v15);
  v20 = &v66[-v19];
  v21 = *(a1 + 16);
  if (v21)
  {
    v69 = v18;
    v73 = v10;
    LODWORD(a4) = *a4;
    sub_22766A630();
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    v24 = os_log_type_enabled(v22, v23);
    v71 = v5;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v68 = v25;
      *&v75 = swift_slowAlloc();
      v76 = v75;
      *v25 = 136315138;
      if (a4)
      {
        v26 = 0x676E696C706D6173;
      }

      else
      {
        v26 = 7889261;
      }

      if (a4)
      {
        v27 = 0xE800000000000000;
      }

      else
      {
        v27 = 0xE300000000000000;
      }

      v28 = sub_226E97AE8(v26, v27, &v76);
      v67 = v23;
      v29 = a4;
      a4 = a1;
      v30 = v28;

      v31 = v68;
      *(v68 + 1) = v30;
      a1 = a4;
      LOBYTE(a4) = v29;
      v32 = v31;
      _os_log_impl(&dword_226E8E000, v22, v67, "Calculating objective value for each daily schedule candidate: samplingMode == %s", v31, 0xCu);
      v33 = v75;
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v32, -1, -1);
    }

    v34 = *(v74 + 8);
    v35 = (v34)(v17, v73);
    if (a4)
    {
      MEMORY[0x28223BE20](v35);
      *&v66[-16] = v6;
      *&v66[-8] = a2;
      v36 = sub_2275F1D68(sub_22713CEDC, &v66[-32], a1);
      sub_2271317D4(v36);
      if (v37 >= v21)
      {
        __break(1u);
      }

      else if (v37 < *(v36 + 16))
      {
        v38 = *(a1 + 8 * v37 + 32);
        v39 = *(v36 + 8 * v37 + 32);
LABEL_39:

        goto LABEL_40;
      }

      __break(1u);
    }

    else
    {
      v68 = v34;
      v45 = (a1 + 32);
      v46 = MEMORY[0x277D84F90];
      v47 = -INFINITY;
      v75 = xmmword_227670CD0;
      do
      {
        v48 = *v45;

        v50 = sub_22713824C(v49, a2);
        if (v50 == v47)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_2273A58B0(0, v46[2] + 1, 1, v46);
          }

          v52 = v46[2];
          v51 = v46[3];
          if (v52 >= v51 >> 1)
          {
            v46 = sub_2273A58B0((v51 > 1), v52 + 1, 1, v46);
          }

          v46[2] = v52 + 1;
          v46[v52 + 4] = v48;
        }

        else if (v47 >= v50)
        {
        }

        else
        {
          v47 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
          v53 = swift_allocObject();
          *(v53 + 16) = v75;
          *(v53 + 32) = v48;

          v46 = v53;
        }

        ++v45;
        --v21;
      }

      while (v21);
      v54 = v46[2];
      if (v54 >= 2)
      {
        v55 = v70;
        sub_22766A630();
        v56 = sub_22766B380();
        v57 = sub_22766C8B0();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 134218240;
          *(v58 + 4) = v46[2];
          *(v58 + 12) = 2048;
          *(v58 + 14) = v47;
          _os_log_impl(&dword_226E8E000, v56, v57, "%ld candidates result in same gain (%f) to objective", v58, 0x16u);
          MEMORY[0x22AA9A450](v58, -1, -1);
        }

        (v68)(v55, v73);
        sub_22766A630();
        v59 = sub_22766B380();
        v60 = sub_22766C8B0();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_226E8E000, v59, v60, "Stochastically breaking ties when selecting amongst candidates", v61, 2u);
          MEMORY[0x22AA9A450](v61, -1, -1);
        }

        (v68)(v69, v73);
        v62 = v46[2];
        if (!v62)
        {
          goto LABEL_46;
        }

        v63 = sub_2274580D4(v62);
        if ((v63 & 0x8000000000000000) == 0)
        {
          if (v63 < v46[2])
          {
            v64 = v46[v63 + 4];

LABEL_40:

            return;
          }

          goto LABEL_45;
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

      if (v54 == 1)
      {
        v65 = v46[4];
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  sub_22766A630();
  v40 = sub_22766B380();
  v41 = sub_22766C890();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_226E8E000, v40, v41, "Could not select daily schedule due to 0 schedule candidates.", v42, 2u);
    MEMORY[0x22AA9A450](v42, -1, -1);
  }

  (*(v74 + 8))(v20, v10);
  v43 = sub_227664EC0();
  sub_22713CF20(&qword_28139B898, MEMORY[0x277D51210]);
  swift_allocError();
  (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51188], v43);
  swift_willThrow();
}

unint64_t sub_2271322AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v143 = a6;
  v179 = a5;
  v173 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v137 - v10;
  v153 = sub_227662190();
  v167 = *(v153 - 8);
  v12 = *(v167 + 64);
  MEMORY[0x28223BE20](v153);
  v152 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v151 = &v137 - v15;
  MEMORY[0x28223BE20](v16);
  v150 = &v137 - v17;
  v172 = sub_2276681F0();
  v178 = *(v172 - 8);
  v18 = *(v178 + 64);
  MEMORY[0x28223BE20](v172);
  v171 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_227666B60();
  v20 = *(v180 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v180);
  v23 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v141 = &v137 - v25;
  MEMORY[0x28223BE20](v26);
  v181 = &v137 - v27;
  MEMORY[0x28223BE20](v28);
  v170 = &v137 - v29;
  v160 = sub_227663540();
  v30 = *(v160 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v160);
  v33 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v176 = &v137 - v35;
  v155 = sub_22766B390();
  v159 = *(v155 - 8);
  v36 = *(v159 + 64);
  MEMORY[0x28223BE20](v155);
  MEMORY[0x28223BE20](v37);
  v146 = &v137 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v137 - v40;
  MEMORY[0x28223BE20](v42);
  v45 = &v137 - v44;
  v177 = a2;
  if (!*(a2 + 16))
  {
    sub_22766A630();
    v131 = sub_22766B380();
    v132 = sub_22766C890();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_226E8E000, v131, v132, "Could not select workout due to 0 workout candidates.", v133, 2u);
      MEMORY[0x22AA9A450](v133, -1, -1);
    }

    (*(v159 + 8))(v45, v155);
    v134 = sub_227664EC0();
    sub_22713CF20(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v134 - 8) + 104))(v135, *MEMORY[0x277D51188], v134);
    return swift_willThrow();
  }

  v145 = v43;
  v139 = v23;
  v140 = v11;
  v144 = a1;
  sub_22766A630();
  v46 = sub_22766B380();
  v47 = sub_22766C8B0();
  v48 = os_log_type_enabled(v46, v47);
  v169 = v20;
  if (v48)
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_226E8E000, v46, v47, "Calculating objective value for each workout candidate", v49, 2u);
    v50 = v49;
    v20 = v169;
    MEMORY[0x22AA9A450](v50, -1, -1);
  }

  v51 = *(v159 + 8);
  v159 += 8;
  v142 = v51;
  v51(v41, v155);
  sub_227663500();
  v52 = v177 + 56;
  v53 = 1 << *(v177 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v177 + 56);
  v56 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_trainerFrequencies;
  v57 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_musicGenreFrequencies;
  v164 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;

  v166 = v56;
  swift_beginAccess();
  v165 = v57;
  result = swift_beginAccess();
  v59 = 0;
  v60 = (v53 + 63) >> 6;
  v175 = v20 + 16;
  v61 = (v20 + 32);
  v162 = (v178 + 8);
  v161 = (v20 + 8);
  v148 = (v167 + 8);
  v154 = (v30 + 8);
  v138 = (v30 + 32);
  v62 = MEMORY[0x277D84F90];
  v63 = -INFINITY;
  v137 = xmmword_227670CD0;
  v149 = v33;
  v167 = v52;
  v163 = v60;
  v168 = (v20 + 32);
LABEL_7:
  v64 = v63;
  v147 = v62;
  if (v55)
  {
    goto LABEL_14;
  }

  while (1)
  {
LABEL_10:
    v65 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v65 >= v60)
    {
      break;
    }

    v55 = *(v52 + 8 * v65);
    ++v59;
    if (v55)
    {
      v59 = v65;
      while (1)
      {
LABEL_14:
        while (1)
        {
          v178 = (v55 - 1) & v55;
          v66 = *(v177 + 48);
          v157 = *(v20 + 72);
          v67 = v170;
          v68 = v180;
          v156 = *(v20 + 16);
          v156(v170, v66 + v157 * (__clz(__rbit64(v55)) | (v59 << 6)), v180);
          v69 = v181;
          v158 = *(v20 + 32);
          v158(v181, v67, v68);
          v70 = sub_227666AA0();
          v71 = *(v179 + v166);
          v72 = v179;

          v73 = sub_227130DF0(v70, v71);

          v74 = sub_227666AE0();
          v75 = *(v72 + v165);

          v76 = sub_227130DF0(v74, v75);

          v77 = v174;
          v78 = v164;
          v79 = v171;
          sub_227667240();
          sub_227667F50();
          v81 = v80;
          v82 = *v162;
          v83 = v172;
          (*v162)(v79, v172);
          v84 = v73 * v81;
          sub_227667240();
          sub_227667F80();
          v86 = v85;
          v82(v79, v83);
          v87 = v76 * v86;
          v88 = v179;
          v89 = sub_22713A0A8(v179);
          v91 = v90 + v84 + v87 + v89;
          sub_227139E60(v88);
          v93 = v92 + v91;
          sub_227139134(v69);
          v95 = v94 + sub_227139B88(v173, v69);
          sub_2271399F8(v88);
          v63 = v93 - (v95 + v96 + sub_22735B0EC(v69, v77 + v78, v89 > 0.0));
          if (v64 <= v63)
          {
            break;
          }

          result = (*v161)(v181, v180);
          v61 = v168;
          v20 = v169;
          v52 = v167;
          v60 = v163;
          v55 = v178;
          if (!v178)
          {
            goto LABEL_10;
          }
        }

        v97 = v150;
        sub_227666A60();
        sub_227662140();
        v98 = *v148;
        v99 = v97;
        v100 = v153;
        (*v148)(v99, v153);
        v101 = v151;
        sub_227666A60();
        sub_227662150();
        v98(v101, v100);
        v102 = v152;
        sub_227666A60();
        sub_227662120();
        v98(v102, v100);
        v103 = v149;
        sub_227663500();
        if (v63 == v64)
        {
          v104 = sub_2276634C0();
          v105 = v160;
          v61 = v168;
          v55 = v178;
          if (v104)
          {
            v156(v141, v181, v180);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v20 = v169;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v147 = sub_2273A55CC(0, v147[2] + 1, 1, v147);
            }

            v108 = v147[2];
            v107 = v147[3];
            if (v108 >= v107 >> 1)
            {
              v147 = sub_2273A55CC(v107 > 1, v108 + 1, 1, v147);
            }

            (*v154)(v103);
            v109 = v180;
            (*(v20 + 8))(v181, v180);
            v110 = v147;
            v147[2] = v108 + 1;
            result = (v158)(v110 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + v108 * v157, v141, v109);
            goto LABEL_22;
          }

          v20 = v169;
          if (v64 < v63 || (sub_22713CF20(&qword_28139BCD0, MEMORY[0x277D4FFA8]), (sub_22766BF80() & 1) != 0))
          {
LABEL_29:
            v111 = v105;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E00, &qword_227679AB0);
            v112 = (*(v20 + 80) + 32) & ~*(v20 + 80);
            v62 = swift_allocObject();
            *(v62 + 16) = v137;
            v158((v62 + v112), v181, v180);
            v113 = v176;
            (*v154)(v176, v111);

            result = (*v138)(v113, v103, v111);
            v52 = v167;
            v60 = v163;
            goto LABEL_7;
          }
        }

        else
        {
          v20 = v169;
          v105 = v160;
          v61 = v168;
          v55 = v178;
          if (v64 < v63)
          {
            goto LABEL_29;
          }
        }

        (*v154)(v103, v105);
        result = (*v161)(v181, v180);
LABEL_22:
        v52 = v167;
        v60 = v163;
        if (!v55)
        {
          goto LABEL_10;
        }
      }
    }
  }

  v114 = v147;
  v115 = v147[2];
  if (v115 <= 1)
  {
    if (v115 == 1)
    {
      (*(v20 + 16))(v144, v147 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v180);
      (*v154)(v176, v160);
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v116 = v146;
  sub_22766A630();
  v117 = sub_22766B380();
  v118 = sub_22766C8B0();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 134218240;
    *(v119 + 4) = v114[2];
    *(v119 + 12) = 2048;
    *(v119 + 14) = v64;
    _os_log_impl(&dword_226E8E000, v117, v118, "%ld candidates result in same gain (%f) to objective", v119, 0x16u);
    MEMORY[0x22AA9A450](v119, -1, -1);
  }

  v120 = v142;
  v142(v116, v155);
  sub_22766A630();
  v121 = sub_22766B380();
  v122 = sub_22766C8B0();
  v123 = os_log_type_enabled(v121, v122);
  v124 = v140;
  v125 = v139;
  if (v123)
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_226E8E000, v121, v122, "Stochastically breaking ties when selecting amongst candidates", v126, 2u);
    v127 = v126;
    v120 = v142;
    MEMORY[0x22AA9A450](v127, -1, -1);
  }

  v120(v145, v155);
  v128 = v147;
  v129 = v147[2];
  if (!v129)
  {
    result = (*(v20 + 56))(v124, 1, 1, v180);
    if (!v128[2])
    {
      goto LABEL_53;
    }

    v136 = v180;
    (*(v20 + 16))(v125, v128 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v180);
    (*v154)(v176, v160);
    if ((*(v20 + 48))(v124, 1, v136) != 1)
    {
      sub_226E97D1C(v124, &qword_27D7B8F20, &qword_2276767D0);
    }

LABEL_47:
    (*v61)(v144, v125, v180);
  }

  result = sub_2274580D4(v129);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (result < v128[2])
  {
    v130 = v180;
    (*(v20 + 16))(v124, v128 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * result, v180);

    (*v154)(v176, v160);
    (*(v20 + 56))(v124, 0, 1, v130);
    (*(v20 + 32))(v125, v124, v130);
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_22713350C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276681F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 32 + 8 * v10 - 8);

    sub_22713B1B4(11, v12, a2);

    sub_227667240();
    v13 = sub_227668090();
    result = (*(v5 + 8))(v9, v4);
    if (__OFSUB__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      if (v10 == v13 - 1)
      {
        sub_22713B1B4(11, v11, a2);
      }
    }
  }

  return result;
}

uint64_t sub_227133698(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276681F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 32 + 8 * v10 - 8);

    sub_22713B1B4(6, v12, a2);

    sub_227667240();
    v13 = sub_227668090();
    result = (*(v5 + 8))(v9, v4);
    if (__OFSUB__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      if (v10 == v13 - 1)
      {
        sub_22713B1B4(6, v11, a2);
      }
    }
  }

  return result;
}

uint64_t sub_22713381C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2276681F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v11 = sub_226F491D8(6, 0, 1);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(*(a1 + 56) + 8 * v11);
  if (a2)
  {
    v35 = *(*(a1 + 56) + 8 * v11);
    v36 = v10;
    v37 = v3;
    v38 = v7;
    v14 = *(a2 + 16);
    v39 = a2;

    if (v14)
    {
      v15 = v39;
      v16 = v39 + 32;
      sub_226F48150();
      sub_226EC1E18();
      v17 = 0;
      v18 = (v15 + 64);
      v40 = xmmword_22767A610;
      while (1)
      {
        v19 = *v18;
        v43 = *(v18 - 1);
        v44 = v19;
        v41 = v40;
        v42 = 1;
        result = sub_227663B20();
        if (result)
        {
          break;
        }

        ++v17;
        v18 += 40;
        if (v14 == v17)
        {
          goto LABEL_8;
        }
      }

      v34 = v6;
      v21 = 1;
      while (2)
      {
        if (v17 != v14)
        {
          do
          {
            v24 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_28;
            }

            if (v24 == v14)
            {
              goto LABEL_22;
            }

            if (v24 >= v14)
            {
              goto LABEL_29;
            }

            v25 = v16 + 40 * v24;
            v26 = *(v25 + 32);
            v43 = *(v25 + 16);
            v44 = v26;
            v41 = v40;
            v42 = 1;
            result = sub_227663B20();
            ++v17;
          }

          while ((result & 1) == 0);
          v17 = v24;
          if (!__OFADD__(v21++, 1))
          {
            continue;
          }

          __break(1u);
LABEL_22:

          if (!v21)
          {
            return v21;
          }

          v28 = v36;
          sub_227667240();
          v29 = sub_227668020();
          v30 = *(v38 + 8);
          v31 = v34;
          result = v30(v28, v34);
          if (v29 < v35)
          {
            return v21;
          }

          v32 = v35 + v21;
          if (__OFADD__(v35, v21))
          {
            goto LABEL_32;
          }

          sub_227667240();
          v33 = sub_227668020();
          result = v30(v28, v31);
          v23 = v32 - v33;
          if (__OFSUB__(v32, v33))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            break;
          }

          return v23 & ~(v23 >> 63);
        }

        break;
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_8:

    return 0;
  }

  sub_227667240();
  v22 = sub_227668020();
  result = (*(v7 + 8))(v10, v6);
  v23 = v13 - v22;
  if (!__OFSUB__(v13, v22))
  {
    return v23 & ~(v23 >> 63);
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_227133B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276681F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22713C864(a2, a3);
  v12 = v11;
  sub_227136CC4(a1, a3);
  v14 = v13;
  sub_22713AF20(a3);
  v16 = v15;
  sub_2271343E4(a3);
  v18 = v17;
  sub_22713C9B0(a3);
  v20 = v19;
  sub_2271349A4(a3);
  v22 = v21;
  sub_227134FE0(a3);
  v24 = v23;
  sub_227667240();
  sub_227668040();
  v26 = v25;
  v27 = *(v7 + 8);
  v27(v10, v6);
  v28 = v12 * v26;
  sub_227667240();
  sub_227668080();
  v30 = v29;
  v27(v10, v6);
  v31 = v28 + v14 * v30;
  sub_227667240();
  sub_227667EC0();
  v33 = v32;
  v27(v10, v6);
  v34 = v31 + v16 * v33;
  sub_227667240();
  sub_227667FB0();
  v36 = v35;
  v27(v10, v6);
  v37 = v34 + v18 * v36;
  sub_227667240();
  sub_2276680A0();
  v39 = v38;
  v27(v10, v6);
  v40 = v37 + v20 * v39;
  sub_227667240();
  sub_227668100();
  v42 = v41;
  v27(v10, v6);
  v43 = v40 + v22 * v42;
  sub_227667240();
  sub_2276681E0();
  v45 = v44;
  v27(v10, v6);
  return v43 + v24 * v45;
}

uint64_t sub_227133E08@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v8 = sub_227668240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *a2;
  result = type metadata accessor for WorkoutPlanGenerationScaffold();
  v16 = *(a3 + *(result + 20));
  if (*(v16 + 16))
  {
    result = sub_226F491D8(a2[2], a2[3], *(a2 + 32));
    if (v17)
    {
      (*(v9 + 16))(v12, *(v16 + 56) + *(v9 + 72) * result, v8);
      v18 = sub_227668230();
      (*(v9 + 8))(v12, v8);
      v19 = v18;
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = 0;
        while (*(v19 + 8 * v21 + 32) != v14)
        {
          if (v20 == ++v21)
          {

            v22 = -10.0;
            goto LABEL_10;
          }
        }

        v22 = 2.0 / (v21 + 1.0);
LABEL_10:
        v13 = v13 + v22;
      }

      else
      {
      }
    }
  }

  *a4 = v13;
  return result;
}

uint64_t sub_227133FB4@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v47 = a5;
  v10 = sub_227668240();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v18 = *a1;
  v19 = *a2;
  result = type metadata accessor for WorkoutPlanGenerationScaffold();
  v21 = *(a3 + *(result + 20));
  if (!*(v21 + 16))
  {
    goto LABEL_33;
  }

  result = sub_226F491D8(a2[2], a2[3], *(a2 + 32));
  if ((v22 & 1) == 0)
  {
    goto LABEL_33;
  }

  (*(v11 + 16))(v15, *(v21 + 56) + *(v11 + 72) * result, v10);
  (*(v11 + 32))(v17, v15, v10);
  v23 = *(sub_227668200() + 16);

  if (!v23)
  {
    result = (*(v11 + 8))(v17, v10);
    goto LABEL_33;
  }

  v24 = sub_227668200();
  v25 = sub_22713139C(a4, v24, MEMORY[0x277D53B38]);

  v26 = sub_227668230();
  v27 = *(v26 + 16);
  v28 = 32;
  while (v27)
  {
    v29 = *(v26 + v28);
    v28 += 8;
    --v27;
    if (v29 == v19)
    {

      if (v25)
      {
        v46[1] = v5;
        result = sub_227668200();
        v30 = result;
        v31 = *(result + 16);
        if (v31)
        {
          v32 = 0;
          while (v32 < *(v30 + 16))
          {
            v33 = *(v30 + v32 + 32);
            v34 = sub_227669310();
            result = sub_227669310();
            if (v34 == result)
            {

              v35 = 10.0 / (v32 + 1.0);
              goto LABEL_26;
            }

            if (v31 == ++v32)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_35;
        }

LABEL_13:

        v35 = 5.0;
LABEL_26:
        v42 = sub_227668230();
        v43 = *(v42 + 16);
        if (v43)
        {
          v44 = 0;
          while (*(v42 + 8 * v44 + 32) != v19)
          {
            if (v43 == ++v44)
            {
              goto LABEL_30;
            }
          }

          (*(v11 + 8))(v17, v10);

          v45 = 5.0 / (v44 + 1.0);
        }

        else
        {
LABEL_30:
          (*(v11 + 8))(v17, v10);

          v45 = 1.0;
        }

        v18 = v18 + 10.0 + v35 + v45;
LABEL_33:
        *v47 = v18;
        return result;
      }

LABEL_22:
      result = (*(v11 + 8))(v17, v10);
      v18 = v18 + -100.0;
      goto LABEL_33;
    }
  }

  if (!v25)
  {
    goto LABEL_22;
  }

  result = sub_227668200();
  v36 = result;
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_21:
    (*(v11 + 8))(v17, v10);

    v41 = 3.0;
LABEL_24:
    v18 = v18 + 3.0 + v41;
    goto LABEL_33;
  }

  v38 = 0;
  while (v38 < *(v36 + 16))
  {
    v39 = *(v36 + v38 + 32);
    v40 = sub_227669310();
    result = sub_227669310();
    if (v40 == result)
    {
      (*(v11 + 8))(v17, v10);

      v41 = 10.0 / (v38 + 1.0);
      goto LABEL_24;
    }

    if (v37 == ++v38)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2271343E4(uint64_t a1)
{
  v54 = sub_227666900();
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v42 - v10;
  v11 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_shorterCardioCache;
  swift_beginAccess();
  v55 = v1;
  v12 = *(v1 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_226F3ACCC(a1);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }
  }

  v17 = *(a1 + 16);
  if (!v17)
  {
    goto LABEL_23;
  }

  v42 = v11;
  v47 = 0;
  v48 = 0;
  v49 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
  v45 = (v3 + 8);
  v46 = (v3 + 104);
  v44 = *MEMORY[0x277D52720];
  v43 = a1;
  v18 = (a1 + 64);
  do
  {
    v19 = *(v18 - 4);
    v20 = *(v18 - 2);
    v21 = *(v18 - 1);
    v22 = *v18;
    sub_226EB396C(v20, v21, *v18);
    v23 = sub_2276672C0();
    if (!*(v23 + 16))
    {
      sub_226EB2DFC(v20, v21, v22);
LABEL_16:

      v32 = v55;
      v33 = v42;
      swift_beginAccess();
      v34 = *(v32 + v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *(v32 + v33);
      *(v32 + v33) = 0x8000000000000000;
      sub_22736AA00(v43, isUniquelyReferenced_nonNull_native, 0.0);
      *(v32 + v33) = v56;
      return swift_endAccess();
    }

    v24 = sub_226F491D8(v20, v21, v22);
    v26 = v25;
    sub_226EB2DFC(v20, v21, v22);
    if ((v26 & 1) == 0)
    {
      goto LABEL_16;
    }

    v27 = v51;
    sub_226E93170(*(v23 + 56) + *(v52 + 72) * v24, v51, &qword_27D7B88C0, &unk_22767A720);

    v28 = v50;
    sub_226F50B4C(v27, v50);
    v30 = v53;
    v29 = v54;
    (*v46)(v53, v44, v54);
    v31 = MEMORY[0x277D52730];
    sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730]);
    sub_22713CF20(&qword_27D7B88E0, v31);
    LOBYTE(v31) = sub_227663B30();
    (*v45)(v30, v29);
    result = sub_226E97D1C(v28, &qword_27D7B88C0, &unk_22767A720);
    if (v31)
    {
      if (__OFADD__(v48, v19))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v48 += v19;
    }

    else
    {
      if (__OFADD__(v47, v19))
      {
        goto LABEL_27;
      }

      v47 += v19;
    }

    v18 += 40;
    --v17;
  }

  while (v17);
  a1 = v43;
  v11 = v42;
  if (v48 && v47)
  {
    if (v48 >= v47)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = 1.0;
    }

    v37 = v55;
    swift_beginAccess();
    v38 = *(v37 + v11);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v37 + v11);
    *(v37 + v11) = 0x8000000000000000;
    v40 = v36;
  }

  else
  {
LABEL_23:
    v37 = v55;
    swift_beginAccess();
    v41 = *(v37 + v11);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v37 + v11);
    *(v37 + v11) = 0x8000000000000000;
    v40 = 0.0;
  }

  sub_22736AA00(a1, v39, v40);
  *(v37 + v11) = v56;
  return swift_endAccess();
}

BOOL sub_2271348F4(uint64_t a1)
{
  v1 = (a1 + 64);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 40;
    v4 = *(v1 - 4);
    v7 = *(v1 - 1);
    v8 = *v1;
    sub_226F48150();
    sub_226EC1E18();
    v5 = sub_227663B30();
    v1 = v3;
    if (v5)
    {
      v1 = v3;
      if (v4 >= 11)
      {
        break;
      }
    }
  }

  return v2 != 0;
}

uint64_t sub_2271349A4(uint64_t a1)
{
  v69 = sub_227666900();
  v3 = *(v69 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = &v54 - v10;
  v11 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_longNonEquipmentCardioCache;
  result = swift_beginAccess();
  v70 = v1;
  v13 = *(v1 + v11);
  if (*(v13 + 16))
  {

    v14 = sub_226F3ACCC(a1);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
    }
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v64 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
    v63 = (v3 + 104);
    v62 = *MEMORY[0x277D52720];
    v61 = (v3 + 8);
    v21 = a1 + 64;
    v22 = &qword_27D7B88C0;
    v58 = a1;
    v57 = v11;
    v60 = v17;
    v54 = a1 + 64;
LABEL_7:
    v55 = v20;
    v56 = v19;
    v23 = (v21 + 40 * v18);
    v24 = &unk_22767A720;
    while (v18 < v17)
    {
      v25 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_33;
      }

      v75 = v18;
      v26 = v24;
      v27 = *(v23 - 4);
      v28 = *(v23 - 2);
      v29 = *(v23 - 1);
      v30 = *v23;
      sub_226EB396C(v28, v29, *v23);
      v31 = sub_2276672C0();
      if (!*(v31 + 16) || (v32 = sub_226F491D8(v28, v29, v30), (v33 & 1) == 0))
      {
        sub_226EB2DFC(v28, v29, v30);

        v45 = v70;
        v46 = v57;
        swift_beginAccess();
        v47 = *(v45 + v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v45 + v46);
        *(v45 + v46) = 0x8000000000000000;
        sub_22736AA00(v58, isUniquelyReferenced_nonNull_native, 0.0);
        *(v45 + v46) = v76;
        return swift_endAccess();
      }

      v72 = v28;
      v73 = v29;
      v74 = v30;
      v59 = v27;
      v71 = v25;
      v34 = v66;
      sub_226E93170(*(v31 + 56) + *(v67 + 72) * v32, v66, v22, v26);

      v35 = v65;
      sub_226F50B4C(v34, v65);
      v36 = v68;
      v37 = v69;
      (*v63)(v68, v62, v69);
      v38 = MEMORY[0x277D52730];
      sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730]);
      v39 = v22;
      v24 = v26;
      sub_22713CF20(&qword_27D7B88E0, v38);
      LOBYTE(v38) = sub_227663B30();
      (*v61)(v36, v37);
      if (v38)
      {
        v40 = sub_227667330();
        v41 = v72;
        v42 = v73;
        v43 = v74;
        v44 = sub_22718C9FC(v72, v73, v74, v40);
        sub_226EB2DFC(v41, v42, v43);

        v22 = v39;
        result = sub_226E97D1C(v35, v39, v26);
        if (v44)
        {
          v19 = v56 + v59;
          a1 = v58;
          v11 = v57;
          v20 = v55;
          v21 = v54;
          if (!__OFADD__(v56, v59))
          {
            goto LABEL_20;
          }

LABEL_35:
          __break(1u);
          return result;
        }

        v20 = v55 + v59;
        a1 = v58;
        v11 = v57;
        v19 = v56;
        v21 = v54;
        if (!__OFADD__(v55, v59))
        {
LABEL_20:
          v17 = v60;
          v18 = v71;
          if (v71 != v60)
          {
            goto LABEL_7;
          }

          goto LABEL_24;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_226E97D1C(v35, v22, v26);
      result = sub_226EB2DFC(v72, v73, v74);
      v18 = v75 + 1;
      v23 += 40;
      v17 = v60;
      if (v71 == v60)
      {
        a1 = v58;
        v11 = v57;
        v19 = v56;
        v20 = v55;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v20 = 0;
  v19 = 0;
LABEL_24:
  if (v19 >= v20 || v19 <= 0)
  {
    v50 = 0.0;
  }

  else
  {
    v50 = 1.0;
  }

  v51 = v70;
  swift_beginAccess();
  v52 = *(v51 + v11);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v51 + v11);
  *(v51 + v11) = 0x8000000000000000;
  sub_22736AA00(a1, v53, v50);
  *(v51 + v11) = v76;
  return swift_endAccess();
}

uint64_t sub_227134FE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_cardioWithDifferentEquipmentSameDayCache;
  result = swift_beginAccess();
  v37 = v1;
  v31 = v3;
  v5 = *(v1 + v3);
  if (*(v5 + 16))
  {

    v6 = sub_226F3ACCC(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
    }
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_25:
    v25 = v37;
    v26 = v31;
    swift_beginAccess();
    v27 = *(v37 + v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v37 + v31);
    *(v37 + v31) = 0x8000000000000000;
    v29 = 0.0;
LABEL_26:
    sub_22736AA00(a1, isUniquelyReferenced_nonNull_native, v29);
    *(v25 + v26) = v42;
    return swift_endAccess();
  }

  v32 = 0;
  v33 = 0;
  v34 = *(a1 + 16);
  v10 = 0;
  v36 = a1 + 32;
  v35 = a1;
  while (v10 < v9)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_29;
    }

    v12 = v36 + 40 * v10;
    v38 = *v12;
    v39 = v10 + 1;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *(v12 + 32);
    sub_226EB396C(v13, v14, v15);
    v16 = sub_227667330();
    v17 = v16;
    if (!*(v16 + 16))
    {
      goto LABEL_7;
    }

    v18 = *(v16 + 40);
    sub_22766D370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v19 = sub_22766D3F0();
    v20 = -1 << *(v17 + 32);
    v21 = v19 & ~v20;
    if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      sub_226F48150();
      sub_226EC1E18();
      while (1)
      {
        v23 = *(v17 + 48) + 24 * v21;
        v40 = *v23;
        v41 = *(v23 + 16);
        if (sub_227663B20())
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      result = sub_226EB2DFC(v13, v14, v15);
      v24 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_30;
      }

      ++v33;
      if (v38 > 19)
      {
        a1 = v35;
        v10 = v39;
        if ((v32 & 1) == 0)
        {
          v32 = 0;
          goto LABEL_24;
        }

        if (v24 > 1)
        {
LABEL_27:
          v25 = v37;
          v26 = v31;
          swift_beginAccess();
          v30 = *(v37 + v31);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *(v37 + v31);
          *(v37 + v31) = 0x8000000000000000;
          v29 = 1.0;
          goto LABEL_26;
        }
      }

      else
      {
        a1 = v35;
        v10 = v39;
        if (v24 >= 2)
        {
          goto LABEL_27;
        }
      }

      v32 = 1;
LABEL_24:
      v9 = v34;
      if (v11 == v34)
      {
        goto LABEL_25;
      }
    }

    else
    {
LABEL_7:
      sub_226EB2DFC(v13, v14, v15);

      v9 = v34;
      a1 = v35;
      v10 = v39;
      if (v11 == v34)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_227135360(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v94 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB370, &unk_227686440);
  v2 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v118 = &v93 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v111 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v112 = &v93 - v9;
  MEMORY[0x28223BE20](v8);
  v130 = &v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v108 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v99 = &v93 - v18;
  MEMORY[0x28223BE20](v17);
  v124 = &v93 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB380, &qword_22767A738);
  v20 = *(v12 + 72);
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_227675BD0;
  v23 = v22 + v21;
  v24 = *MEMORY[0x277D52720];
  v25 = sub_227666900();
  v26 = *(*(v25 - 8) + 104);
  v26(v23, v24, v25);
  swift_storeEnumTagMultiPayload();
  v26(v23 + v20, *MEMORY[0x277D52728], v25);
  v115 = v20;
  swift_storeEnumTagMultiPayload();
  v27 = *MEMORY[0x277D52718];
  v114 = v25;
  v26(v23 + 2 * v20, v27, v25);
  swift_storeEnumTagMultiPayload();
  v28 = sub_226F4D394(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v105 = *(v129 + 16);
  if (!v105)
  {
  }

  v122 = v11;
  v29 = 0;
  v123 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
  v104 = v129 + 32;
  v113 = v28;
  v110 = v28 + 56;
  v117 = (v13 + 56);
  v116 = (v13 + 48);
  v30 = 0.0;
  v31 = v112;
  v32 = v130;
  v33 = v108;
  while (1)
  {
    v109 = v29;
    v34 = v104 + 40 * v29;
    v36 = *(v34 + 16);
    v35 = *(v34 + 24);
    v37 = *(v34 + 32);
    sub_226EB396C(v36, v35, *(v34 + 32));
    v38 = sub_2276672C0();
    if (*(v38 + 16))
    {
      v39 = sub_226F491D8(v36, v35, v37);
      if (v40)
      {
        break;
      }
    }

    sub_226EB2DFC(v36, v35, v37);

LABEL_4:
    v29 = v109 + 1;
    if (v109 + 1 == v105)
    {
    }
  }

  v101 = v36;
  v102 = v35;
  v103 = v37;
  v41 = v99;
  sub_226E93170(*(v38 + 56) + v39 * v115, v99, &qword_27D7B88C0, &unk_22767A720);

  sub_226F50B4C(v41, v124);
  if (!*(v113 + 16))
  {
    goto LABEL_12;
  }

  v42 = *(v113 + 40);
  sub_22766D370();
  sub_22713CF20(&qword_27D7B88D0, MEMORY[0x277D52730]);
  sub_227663B10();
  v43 = sub_22766D3F0();
  v44 = v113;
  v45 = -1 << *(v113 + 32);
  v46 = v43 & ~v45;
  if (((*(v110 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
  {
LABEL_12:
    sub_226EB2DFC(v101, v102, v103);
    sub_226E97D1C(v124, &qword_27D7B88C0, &unk_22767A720);
    goto LABEL_4;
  }

  v47 = ~v45;
  while (1)
  {
    sub_226E93170(*(v44 + 48) + v46 * v115, v33, &qword_27D7B88C0, &unk_22767A720);
    v48 = MEMORY[0x277D52730];
    v49 = sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730]);
    v50 = sub_22713CF20(&qword_27D7B88E0, v48);
    v51 = sub_227663B20();
    sub_226E97D1C(v33, &qword_27D7B88C0, &unk_22767A720);
    if (v51)
    {
      break;
    }

    v46 = (v46 + 1) & v47;
    v44 = v113;
    if (((*(v110 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v106 = v50;
  v107 = v49;
  v52 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v53 = *(v94 + *(v52 + 44));
  v54 = &qword_22767A730;
  if (!*(v53 + 16))
  {
    goto LABEL_45;
  }

  v55 = v52;
  result = sub_226F3ADC4(v124);
  if ((v57 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (*(*(v53 + 56) + 8 * result) < 2)
  {
    sub_226E97D1C(v124, &qword_27D7B88C0, &unk_22767A720);
    sub_226EB2DFC(v101, v102, v103);
    goto LABEL_4;
  }

  v58 = *(v94 + *(v55 + 60));
  v59 = *(v58 + 16);
  if (!v59)
  {
LABEL_45:
    sub_226EB2DFC(v101, v102, v103);
LABEL_46:
    sub_226E97D1C(v124, &qword_27D7B88C0, &unk_22767A720);
    goto LABEL_4;
  }

  v96 = v58 + 32;
  v95 = v58;
LABEL_20:
  if (v59 <= *(v58 + 16))
  {
    --v59;
    v60 = *(v96 + 8 * v59);
    v61 = *(v60 + 16);
    if (!v61)
    {
      goto LABEL_19;
    }

    v98 = v59;

    v100 = 0;
    v62 = 0;
    v120 = -v61;
    v63 = v60 + 64;
    v121 = v60;
    v97 = v60 + 64;
LABEL_23:
    v64 = (v63 + 40 * v62);
    v65 = v62 + 1;
    while (1)
    {
      if ((v65 - 1) >= *(v60 + 16))
      {
        __break(1u);
        break;
      }

      v72 = *(v64 - 2);
      v73 = *(v64 - 1);
      v125 = v64;
      v74 = *v64;
      sub_226EB396C(v72, v73, *v64);
      v75 = sub_2276672C0();
      v76 = *(v75 + 16);
      v128 = v72;
      v129 = v65;
      v127 = v73;
      v126 = v74;
      if (v76 && (v77 = sub_226F491D8(v72, v73, v74), (v78 & 1) != 0))
      {
        sub_226E93170(*(v75 + 56) + v77 * v115, v32, &qword_27D7B88C0, &unk_22767A720);
        v79 = 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = *v117;
      v81 = v130;
      v82 = v122;
      (*v117)(v130, v79, 1, v122);
      sub_226E93170(v124, v31, &qword_27D7B88C0, &unk_22767A720);
      v80(v31, 0, 1, v82);
      v83 = *(v119 + 48);
      v84 = v118;
      sub_226E93170(v81, v118, &qword_27D7BB378, v54);
      sub_226E93170(v31, v84 + v83, &qword_27D7BB378, v54);
      v85 = v54;
      v86 = *v116;
      if ((*v116)(v84, 1, v82) == 1)
      {
        v66 = v31;
        sub_226E97D1C(v31, &qword_27D7BB378, v54);
        sub_226E97D1C(v81, &qword_27D7BB378, v54);
        v67 = v86(v84 + v83, 1, v82) == 1;
        v68 = v84;
        v69 = v128;
        v62 = v129;
        v70 = v127;
        v71 = v126;
        if (v67)
        {
          v54 = &qword_22767A730;
          sub_226E97D1C(v68, &qword_27D7BB378, &qword_22767A730);
LABEL_38:
          v134 = v69;
          v135 = v70;
          v136 = v71;
          v131 = v101;
          v132 = v102;
          v133 = v103;
          sub_226F48150();
          sub_226EC1E18();
          v92 = sub_227663B20();
          result = sub_226EB2DFC(v69, v70, v71);
          v32 = v130;
          v60 = v121;
          if (v92)
          {
            v30 = v30 + 1.0;
            v100 = 1;
            v63 = v97;
            if (v120 + v62)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v100 = 1;
            v63 = v97;
            if (v120 + v62)
            {
              goto LABEL_23;
            }
          }

          sub_226EB2DFC(v101, v102, v103);

          v33 = v108;
          goto LABEL_46;
        }
      }

      else
      {
        v87 = v111;
        sub_226E93170(v84, v111, &qword_27D7BB378, v54);
        if (v86(v84 + v83, 1, v82) != 1)
        {
          v88 = v84;
          v89 = v84 + v83;
          v90 = v108;
          sub_226F50B4C(v89, v108);
          v91 = sub_227663B20();
          sub_226E97D1C(v90, &qword_27D7B88C0, &unk_22767A720);
          v31 = v112;
          sub_226E97D1C(v112, &qword_27D7BB378, v85);
          sub_226E97D1C(v130, &qword_27D7BB378, v85);
          sub_226E97D1C(v87, &qword_27D7B88C0, &unk_22767A720);
          sub_226E97D1C(v88, &qword_27D7BB378, v85);
          v54 = v85;
          v69 = v128;
          v62 = v129;
          v70 = v127;
          v71 = v126;
          if (v91)
          {
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        v66 = v112;
        sub_226E97D1C(v112, &qword_27D7BB378, v54);
        sub_226E97D1C(v130, &qword_27D7BB378, v54);
        sub_226E97D1C(v87, &qword_27D7B88C0, &unk_22767A720);
        v68 = v84;
        v69 = v128;
        v62 = v129;
        v70 = v127;
        v71 = v126;
      }

      sub_226E97D1C(v68, &qword_27D7BB370, &unk_227686440);
      v54 = &qword_22767A730;
      v31 = v66;
LABEL_26:
      result = sub_226EB2DFC(v69, v70, v71);
      v65 = v62 + 1;
      v64 = v125 + 40;
      v32 = v130;
      v60 = v121;
      if (v120 + v65 == 1)
      {

        v33 = v108;
        if (v100)
        {
          goto LABEL_45;
        }

        v58 = v95;
        v59 = v98;
LABEL_19:
        if (!v59)
        {
          goto LABEL_45;
        }

        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2271360DC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 2)
  {
    v2 = (result + 64);
    v3 = MEMORY[0x277D84F98];
    while (1)
    {
      v10 = *(v2 - 4);
      v9 = *(v2 - 3);
      v12 = *(v2 - 2);
      v11 = *(v2 - 1);
      v13 = *v2;

      sub_226EB396C(v12, v11, v13);

      sub_226EB396C(v12, v11, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_226F491D8(v12, v11, v13);
      v17 = v3[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        break;
      }

      v21 = v16;
      if (v3[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = v15;
          sub_226FF2AA8();
          v15 = v27;
        }
      }

      else
      {
        sub_226FE7A78(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_226F491D8(v12, v11, v13);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_18;
        }
      }

      v30 = v1;
      if (v21)
      {
        v4 = v3[7] + 40 * v15;
        v5 = *(v4 + 8);
        v6 = *(v4 + 16);
        v7 = *(v4 + 24);
        v8 = *(v4 + 32);
        *v4 = v10;
        *(v4 + 8) = v9;
        *(v4 + 16) = v12;
        *(v4 + 24) = v11;
        *(v4 + 32) = v13;

        sub_226EB2DFC(v6, v7, v8);

        sub_226EB2DFC(v12, v11, v13);
      }

      else
      {
        v3[(v15 >> 6) + 8] |= 1 << v15;
        v23 = v3[6] + 24 * v15;
        *v23 = v12;
        *(v23 + 8) = v11;
        *(v23 + 16) = v13;
        v24 = v3[7] + 40 * v15;
        *v24 = v10;
        *(v24 + 8) = v9;
        *(v24 + 16) = v12;
        *(v24 + 24) = v11;
        *(v24 + 32) = v13;
        sub_226EB396C(v12, v11, v13);

        sub_226EB2DFC(v12, v11, v13);
        v25 = v3[2];
        v19 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v19)
        {
          goto LABEL_17;
        }

        v3[2] = v26;
      }

      v2 += 40;
      v1 = v30 - 1;
      if (v30 == 1)
      {
        v28 = sub_227131120(v3);

        v29 = sub_2276672C0();
        sub_2274E8BB4(v28, v29);
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    result = sub_22766D220();
    __break(1u);
  }

  return result;
}

double sub_227136394(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_repetitionCache;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_226F3ACCC(a1);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = *(v8 + 1);

      return v9;
    }
  }

  v11 = *(a1 + 16);
  if (v11 < 2 || (v12 = , v13 = sub_226F43E68(v12, sub_2274E8434, 0), , v14 = *(v13 + 16), , v11 == v14) || (v15 = cbrt((v11 - v14)), v15 == 0.0))
  {
    sub_2271360DC(a1);
    v17 = v16;
    swift_beginAccess();
    v18 = *(v2 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    v9 = 0.0;
    v20 = 0.0;
    v21 = v17;
  }

  else
  {
    v9 = v15;
    swift_beginAccess();
    v23 = *(v2 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    v21 = 0.0;
    v20 = v9;
  }

  sub_22736A898(a1, isUniquelyReferenced_nonNull_native, v20, v21);
  *(v2 + v4) = v24;
  swift_endAccess();
  return v9;
}

double sub_22713654C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  v19 = 0.0;
  if (*(a2 + 16) != 1)
  {
    return v19;
  }

  v20 = *(a1 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 60));
  v21 = *(v20 + 16);
  if (!v21)
  {
    return v19;
  }

  v22 = v20 + 24;
  do
  {
    if (!v21)
    {
      return v19;
    }

    v23 = *(v22 + 8 * v21);
    v24 = *(v23 + 16);
    if (v24 > 1)
    {
      return v19;
    }

    --v21;
  }

  while (!v24);
  v50 = v13;
  v51 = v6;
  v25 = *(v23 + 40);
  v26 = *(v23 + 48);
  v27 = *(v23 + 56);
  v28 = *(v23 + 64);

  v53 = v26;
  v54 = v27;
  v55 = v28;
  sub_226EB396C(v26, v27, v28);
  v52 = v2;
  v29 = sub_2276672C0();
  if (!*(v29 + 16))
  {

    v47 = v53;
    v48 = v54;
LABEL_16:
    sub_226EB2DFC(v47, v48, v55);
    return v19;
  }

  v31 = v53;
  v30 = v54;
  v32 = sub_226F491D8(v53, v54, v55);
  if ((v33 & 1) == 0)
  {

    v47 = v31;
    v48 = v30;
    goto LABEL_16;
  }

  v34 = *(v51 + 72);
  sub_226E93170(*(v29 + 56) + v34 * v32, v16, &qword_27D7B88C0, &unk_22767A720);

  sub_226EB2DFC(v31, v30, v55);

  sub_226F50B4C(v16, v18);
  v35 = sub_2276672C0();
  if (!*(v35 + 16))
  {
    goto LABEL_17;
  }

  v36 = v34;
  v37 = *(a2 + 64);
  v40 = a2 + 48;
  v38 = *(a2 + 48);
  v39 = *(v40 + 8);
  sub_226EB396C(v38, v39, v37);
  v41 = sub_226F491D8(v38, v39, v37);
  v43 = v42;
  sub_226EB2DFC(v38, v39, v37);
  if (v43)
  {
    sub_226E93170(*(v35 + 56) + v41 * v36, v10, &qword_27D7B88C0, &unk_22767A720);

    v44 = v50;
    sub_226F50B4C(v10, v50);
    sub_227666900();
    v45 = MEMORY[0x277D52730];
    sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730]);
    sub_22713CF20(&qword_27D7B88E0, v45);
    v46 = sub_227663B20();
    sub_226E97D1C(v44, &qword_27D7B88C0, &unk_22767A720);
    sub_226E97D1C(v18, &qword_27D7B88C0, &unk_22767A720);
    if (v46)
    {
      return 1.0;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
LABEL_17:

    sub_226E97D1C(v18, &qword_27D7B88C0, &unk_22767A720);
  }

  return v19;
}

uint64_t sub_22713694C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v7 = *(a1 + *(v6 + 24));

  v9 = sub_22713B9BC(v8, v3);

  v10 = *(v9 + 16);

  if (v10 >= 2)
  {

    v13 = sub_22713C0E8(v12, v3);

    v14 = *(v13 + 16);

    if (v14)
    {
      v15 = *(a1 + *(v6 + 60));
      v16 = *(v15 + 16);
      if (v16)
      {
        v57 = *(a1 + *(v6 + 60));
        while (v16)
        {
          if (*(*(v15 + 24 + 8 * v16--) + 16))
          {
            MEMORY[0x28223BE20](result);
            v52 = v18;
            result = sub_22713CF80(&v52, &v55);
            v19 = v55;
            if (v55)
            {
              result = sub_227667250();
              v20 = 0;
              v21 = result + 56;
              v50 = result;
              v22 = 1 << *(result + 32);
              v23 = -1;
              if (v22 < 64)
              {
                v23 = ~(-1 << v22);
              }

              v24 = v23 & *(result + 56);
              v25 = (v22 + 63) >> 6;
              v46 = a2;
              v47 = (v19 + 64);
              v45 = (a2 + 64);
              v26 = 0.0;
              v48 = v25;
              v49 = result + 56;
              v51 = v19;
              while (v24)
              {
LABEL_19:
                v28 = __clz(__rbit64(v24));
                v24 &= v24 - 1;
                v29 = *(v50 + 48) + 24 * (v28 | (v20 << 6));
                v30 = *v29;
                v31 = *(v29 + 8);
                v32 = *(v29 + 16);
                v33 = *(v19 + 16);
                sub_226EB396C(*v29, v31, v32);

                v34 = v33 + 1;
                v35 = v47;
                do
                {
                  if (!--v34)
                  {
                    v19 = v51;
                    goto LABEL_12;
                  }

                  v36 = v35 + 40;
                  v37 = *v35;
                  v55 = *(v35 - 1);
                  v56 = v37;
                  v52 = v30;
                  v53 = v31;
                  v54 = v32;
                  sub_226F48150();
                  sub_226EC1E18();
                  v38 = sub_227663B20();
                  v35 = v36;
                }

                while ((v38 & 1) == 0);

                v39 = *(v46 + 16);

                v40 = v39 + 1;
                v41 = v45;
                while (--v40)
                {
                  v42 = v41 + 40;
                  v43 = *v41;
                  v55 = *(v41 - 1);
                  v56 = v43;
                  v52 = v30;
                  v53 = v31;
                  v54 = v32;
                  v44 = sub_227663B20();
                  v41 = v42;
                  if (v44)
                  {

                    result = sub_226EB2DFC(v30, v31, v32);
                    v26 = v26 + 1.0;
                    v19 = v51;
                    goto LABEL_13;
                  }
                }

                v19 = v51;
LABEL_12:

                result = sub_226EB2DFC(v30, v31, v32);
LABEL_13:
                v25 = v48;
                v21 = v49;
              }

              while (1)
              {
                v27 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                if (v27 >= v25)
                {
                }

                v24 = *(v21 + 8 * v27);
                ++v20;
                if (v24)
                {
                  v20 = v27;
                  goto LABEL_19;
                }
              }

              __break(1u);
              __break(1u);
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_227136CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276681F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_227666900();
  v9 = *(v51 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v48 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v47 = &v38 - v17;
  v18 = *(a2 + 16);
  if (!v18)
  {
    return result;
  }

  v41 = a1;
  v38 = v8;
  v39 = v5;
  v40 = v4;
  v45 = 0;
  v46 = 0;
  v19 = 0;
  v52 = 0;
  v54 = 0;
  v55 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
  v44 = *MEMORY[0x277D52720];
  v42 = (v9 + 8);
  v43 = (v9 + 104);
  v20 = (a2 + 64);
  do
  {
    v21 = *(v20 - 4);
    v23 = *(v20 - 2);
    v22 = *(v20 - 1);
    v24 = *v20;
    v57 = v23;
    v58 = v22;
    v59 = v24;
    v56 = 13;
    sub_226EB396C(v23, v22, v24);
    sub_226F48150();
    sub_226EC1E18();
    result = sub_227663B30();
    if (result)
    {
      if (__OFADD__(v54, v21))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v54 += v21;
      v52 = 1;
    }

    v57 = v23;
    v58 = v22;
    v59 = v24;
    v56 = 3;
    v25 = sub_227663B30();
    v26 = sub_2276672C0();
    if (!*(v26 + 16))
    {
      sub_226EB2DFC(v23, v22, v24);
LABEL_4:

      goto LABEL_5;
    }

    v53 = v21;
    v27 = sub_226F491D8(v23, v22, v24);
    v29 = v28;
    sub_226EB2DFC(v23, v22, v24);
    if ((v29 & 1) == 0)
    {
      goto LABEL_4;
    }

    v30 = *(v26 + 56) + *(v49 + 72) * v27;
    v31 = v48;
    sub_226E93170(v30, v48, &qword_27D7B88C0, &unk_22767A720);

    v32 = v47;
    sub_226F50B4C(v31, v47);
    v34 = v50;
    v33 = v51;
    (*v43)(v50, v44, v51);
    v35 = MEMORY[0x277D52730];
    sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730]);
    sub_22713CF20(&qword_27D7B88E0, v35);
    LOBYTE(v35) = sub_227663B30();
    (*v42)(v34, v33);
    result = sub_226E97D1C(v32, &qword_27D7B88C0, &unk_22767A720);
    if (v35)
    {
      if (__OFADD__(v46, 1))
      {
        goto LABEL_24;
      }

      if (__OFADD__(v45, v53))
      {
        goto LABEL_25;
      }

      v45 += v53;
      ++v46;
    }

LABEL_5:
    v19 |= v25;
    v20 += 40;
    --v18;
  }

  while (v18);
  if ((v52 & 1) == 0)
  {
    return result;
  }

  if (v41 > 89)
  {
    if (v46 < 2)
    {
      return result;
    }
  }

  else if (v19 & 1 | (v46 < 1))
  {
    return result;
  }

  v36 = v38;
  sub_227667240();
  v37 = sub_227667F60();
  result = (*(v39 + 8))(v36, v40);
  if (__OFSUB__(v45, v37))
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_227137238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v196 = sub_22766B390();
  v6 = *(v196 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v196);
  v198 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_2276681F0();
  v9 = *(v218 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v218);
  v195 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v217 = *(a1 + v12[12]);
  v13 = sub_227668780();
  v14 = sub_227668780();
  v15 = 0.0;
  v16 = &unk_27D7CE000;
  v193 = a2;
  v197 = v12;
  if (v13 == v14)
  {
    v17 = v12[16];
    v18 = *(a1 + v12[17]);
    v19 = a1;
    v20 = *(a1 + v17);
    v21 = 0.0;
    if (*(v20 + 16))
    {
      v22 = *(a1 + v17);
      v23 = sub_226F491D8(6, 0, 1);
      if (v24)
      {
        v25 = *(*(v20 + 56) + 8 * v23);
        v26 = v195;
        sub_227667240();
        v27 = sub_227668020();
        result = (*(v9 + 8))(v26, v218);
        if (__OFSUB__(v25, v27))
        {
LABEL_33:
          __break(1u);
          return result;
        }

        v21 = ((v25 - v27) & ~((v25 - v27) >> 63));
      }
    }

    v29 = sub_22713A724(v20);
    v219 = 0;
    v30 = *(v29 + 16);

    v31 = v30;
    sub_22713ACCC(*(v19 + v12[15]), 0);
    v33 = v32;
    v34 = v195;
    sub_227667240();
    sub_227667F20();
    v36 = v35;
    v37 = v6;
    v38 = *(v9 + 8);
    v39 = v218;
    v38(v34, v218);
    v40 = v18 * v36 + 0.0;
    sub_227667240();
    sub_227667EE0();
    v42 = v41;
    v38(v34, v39);
    v43 = v40 - v21 * v42;
    sub_227667240();
    sub_227667EF0();
    v45 = v44;
    v38(v34, v39);
    v46 = v43 + v45 * v31;
    sub_227667240();
    sub_227668000();
    v48 = v47;
    v38(v34, v39);
    v16 = &unk_27D7CE000;
    v6 = v37;
    v15 = v46 - v33 * v48;
  }

  else
  {
    v19 = a1;
    v219 = 0;
    v39 = v218;
    v34 = v195;
  }

  v215 = v16[89];
  sub_227667240();
  v49 = sub_227668090();
  v50 = *(v9 + 8);
  v216 = v9 + 8;
  v214 = v50;
  result = (v50)(v34, v39);
  if (v49 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v49)
  {
    v52 = 0.0;
    v53 = v19;
    v221 = *(v19 + v197[15]);
    v220 = v221 + 32;
    v194 = (v6 + 8);
    *&v51 = 134218754;
    v192 = v51;
    v54 = v195;
    v191 = v3;
    v190 = v19;
    v213 = v49;
    while (*&v52 < *(v221 + 16))
    {
      if (*(*(v220 + 8 * *&v52) + 16))
      {
        result = MEMORY[0x22AA95620](*&v52);
        if (result != 7)
        {
          if (*&v52 >= *(v221 + 16))
          {
            goto LABEL_31;
          }

          v138 = result;
          v139 = *(v220 + 8 * *&v52);
          MEMORY[0x28223BE20](result);
          *(&v190 - 2) = v53;
          *(&v190 - 1) = v3;

          v140 = v53;
          v141 = v219;
          v142 = sub_2270A83F4(sub_22713CF68, 0.0, (&v190 - 4), *&v139);
          MEMORY[0x28223BE20](v143);
          *(&v190 - 4) = v140;
          *(&v190 - 24) = v138;
          *(&v190 - 2) = v3;
          v144 = sub_2270A83F4(sub_22713CEB8, 0.0, (&v190 - 6), *&v139);
          v219 = v141;
          v145 = sub_227136394(*&v139);
          v147 = v146;
          v148 = sub_227668780();
          if (v148 == sub_227668780())
          {
            sub_22713AF20(*&v139);
            v202 = v55;
            sub_2271343E4(*&v139);
            v208 = v56;
            sub_22713B008(*&v139);
            v203 = v57;
            v58 = v221;
            sub_22713350C(v221, *&v139);
            v60 = v59;
            sub_227133698(v58, *&v139);
            v207 = v61;
            v53 = v140;
            v62 = sub_22713654C(v140, *&v139);
            sub_227135360(v140, *&v139);
            v212 = v15;
            v64 = v63;
            sub_22713B4A4(*&v139);
            v211 = v142;
            v66 = v65;
            sub_22713694C(v140, *&v139);
            v199 = v67;
            sub_22713C53C(*&v139);
            v200 = v68;
            sub_22713C714(v58, *&v139);
            v204 = v69;
            sub_22713C864(v58, *&v139);
            v201 = v70;
            sub_22713C9B0(*&v139);
            v205 = v71;
            sub_2271349A4(*&v139);
            v206 = v72;
            sub_227134FE0(*&v139);
            v209 = v73;
            sub_227136CC4(*(v140 + v197[7]), *&v139);
            v75 = v74;

            sub_227667240();
            sub_227668030();
            v210 = v144;
            v77 = v76;
            v78 = v218;
            v79 = v214;
            v214(v54, v218);
            v80 = v60 * v77;
            sub_227667240();
            sub_2276680E0();
            v82 = v81;
            v79(v54, v78);
            v83 = v80 + v62 * v82;
            sub_227667240();
            sub_2276681D0();
            v85 = v84;
            v79(v54, v78);
            v86 = v83 + v64 * v85;
            sub_227667240();
            sub_2276681A0();
            v88 = v87;
            v79(v54, v78);
            v89 = v86 + v145 * v88;
            sub_227667240();
            sub_227668180();
            v91 = v90;
            v79(v54, v78);
            v92 = v89 + v147 * v91;
            sub_227667240();
            sub_227668150();
            v94 = v93;
            v79(v54, v78);
            v95 = v92 + v66 * v94;
            v96 = v212;
            sub_227667240();
            sub_227668190();
            v98 = v97;
            v79(v54, v78);
            v99 = v95 + v199 * v98;
            sub_227667240();
            sub_2276680B0();
            v101 = v100;
            v79(v54, v78);
            v102 = v99 + v200 * v101;
            sub_227667240();
            sub_227668080();
            v104 = v103;
            v79(v54, v78);
            v105 = v102 + v75 * v104;
            sub_227667240();
            sub_227668040();
            v107 = v106;
            v79(v54, v78);
            v108 = v105 + v201 * v107;
            sub_227667240();
            sub_227667EC0();
            v110 = v109;
            v79(v54, v78);
            v111 = v108 + v202 * v110;
            sub_227667240();
            sub_227667FE0();
            v113 = v112;
            v79(v54, v78);
            v114 = v111 + v203 * v113;
            sub_227667240();
            sub_227667FB0();
            v116 = v115;
            v79(v54, v78);
            v117 = v114 + v208 * v116;
            sub_227667240();
            sub_227667F90();
            v119 = v118;
            v79(v54, v78);
            v120 = v117 + v207 * v119;
            sub_227667240();
            sub_227668070();
            v122 = v121;
            v79(v54, v78);
            v123 = v120 + v204 * v122;
            sub_227667240();
            sub_2276680A0();
            v125 = v124;
            v79(v54, v78);
            v126 = v123 + v205 * v125;
            sub_227667240();
            sub_227668100();
            v128 = v127;
            v79(v54, v78);
            v129 = v126 + v206 * v128;
            sub_227667240();
            sub_2276681E0();
            v131 = v130;
            v79(v54, v78);
            v132 = v129 + v209 * v131;
            sub_227667240();
            sub_227668140();
            v134 = v133;
            v79(v54, v78);
            v135 = v132 + v211 * v134;
            sub_227667240();
            sub_227668130();
            v137 = v136;
            result = (v79)(v54, v78);
            v15 = v96 - (v135 + v210 * v137);
            v49 = v213;
          }

          else
          {
            v53 = v140;
            v212 = v52;
            sub_227667240();
            sub_227668140();
            v150 = v149;
            v151 = v218;
            v152 = v214;
            v214(v54, v218);
            v153 = v142 * v150;
            sub_227667240();
            sub_227668130();
            v155 = v154;
            v152(v54, v151);
            v156 = v153 + v144 * v155;
            sub_227667240();
            sub_2276681A0();
            v158 = v157;
            v152(v54, v151);
            v15 = v15 - (v156 + v145 * v158);
            v159 = v198;
            sub_22766A630();

            v160 = COERCE_DOUBLE(sub_22766B380());
            v161 = sub_22766C880();

            if (os_log_type_enabled(*&v160, v161))
            {
              LODWORD(v210) = v161;
              v162 = COERCE_DOUBLE(swift_slowAlloc());
              v209 = COERCE_DOUBLE(swift_slowAlloc());
              v227 = v209;
              **&v162 = v192;
              *(*&v162 + 4) = v193;
              v211 = v139;
              *(*&v162 + 12) = 2080;
              v163 = sub_2276692E0();
              v165 = sub_226E97AE8(v163, v164, &v227);

              *(*&v162 + 14) = v165;
              *(*&v162 + 22) = 2080;
              v166 = v211;
              v167 = *(*&v211 + 16);
              if (v167)
              {
                v207 = v162;
                v208 = v160;
                v226 = MEMORY[0x277D84F90];
                sub_226F1EF90(0, v167, 0);
                v168 = v226;
                v169 = (*&v166 + 64);
                do
                {
                  v171 = *(v169 - 4);
                  v170 = *(v169 - 3);
                  v173 = *(v169 - 1);
                  v174 = *v169;
                  v223 = *(v169 - 2);
                  v172 = v223;
                  v224 = v173;
                  v225 = v174;

                  sub_226EB396C(v172, v173, v174);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
                  sub_22713A9EC();
                  v223 = sub_227663B60();
                  v224 = v175;
                  MEMORY[0x22AA98450](40, 0xE100000000000000);
                  v222 = v171;
                  v176 = sub_22766D140();
                  MEMORY[0x22AA98450](v176);

                  MEMORY[0x22AA98450](41, 0xE100000000000000);

                  sub_226EB2DFC(v172, v173, v174);
                  v177 = v223;
                  v178 = v224;
                  v226 = v168;
                  v180 = *(v168 + 16);
                  v179 = *(v168 + 24);
                  if (v180 >= v179 >> 1)
                  {
                    sub_226F1EF90(v179 > 1, v180 + 1, 1);
                    v168 = v226;
                  }

                  *(v168 + 16) = v180 + 1;
                  v181 = v168 + 16 * v180;
                  *(v181 + 32) = v177;
                  *(v181 + 40) = v178;
                  v169 += 40;
                  --v167;
                }

                while (v167);

                v3 = v191;
                v182 = v168;
                v53 = v190;
                v183 = v196;
                v184 = v198;
                v54 = v195;
                v160 = v208;
                v162 = v207;
              }

              else
              {

                v182 = MEMORY[0x277D84F90];
                v183 = v196;
                v184 = v198;
              }

              v223 = v182;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
              sub_22713AA40();
              v185 = sub_22766BF70();
              v187 = v186;

              v188 = sub_226E97AE8(v185, v187, &v227);

              *(*&v162 + 24) = v188;
              *(*&v162 + 32) = 2048;
              *(*&v162 + 34) = v15;
              _os_log_impl(&dword_226E8E000, *&v160, LOBYTE(v210), "[Algorithm.Scoring]: %ld Personalized Candidate %s -> %s: -%f", *&v162, 0x2Au);
              v189 = v209;
              swift_arrayDestroy();
              MEMORY[0x22AA9A450](*&v189, -1, -1);
              MEMORY[0x22AA9A450](*&v162, -1, -1);

              result = (*v194)(v184, v183);
            }

            else
            {

              result = (*v194)(v159, v196);
            }

            v49 = v213;
            v52 = v212;
          }
        }
      }

      if (++*&v52 == v49)
      {
        return result;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return result;
}

double sub_22713824C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22766B390();
  v196 = *(v6 - 8);
  v7 = *(v196 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v177 - v11;
  v195 = sub_2276681F0();
  isa = v195[-1].isa;
  v14 = *(isa + 8);
  MEMORY[0x28223BE20](v195);
  v16 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = a2;
  v199 = v3;
  v17 = a1;
  v18 = sub_2270A83F4(sub_22713A9D0, 0.0, v197, a1);
  v19 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v20 = *(a2 + *(v19 + 48));
  v21 = sub_227668780();
  if (v21 == sub_227668780())
  {
    v193 = v6;
    v22 = v17;
    sub_22713CD14(a2, v17);
    v24 = v23;
    v192 = v12;
    v25 = WorkoutPlanGenerationScaffold.incrementalEntropy(for:)(v17);
    v191 = v18;
    v26 = v25;
    sub_227667240();
    sub_227667EF0();
    v28 = v27;
    v194 = v19;
    v29 = *(isa + 1);
    v30 = v195;
    v29(v16, v195);
    v31 = v24 * v28 + 0.0;
    sub_227667240();
    sub_227667F20();
    v33 = v32;
    v29(v16, v30);
    v190 = v31 + v26 * v33;
    v34 = *(a2 + *(v19 + 60));
    sub_22713350C(v34, v22);
    v36 = v35;
    sub_227133698(v34, v22);
    v189 = v37;
    v38 = sub_22713654C(a2, v22);
    sub_227135360(a2, v22);
    v40 = v39;
    v41 = sub_227136394(v22);
    v43 = v42;
    sub_22713B4A4(v22);
    v45 = v44;
    sub_22713694C(a2, v22);
    v177 = v46;
    sub_22713C53C(v22);
    v178 = v47;
    v179 = sub_22713381C(*(a2 + *(v194 + 16)), v22);
    sub_22713B008(v22);
    v183 = v48;
    sub_22713C864(v34, v22);
    v180 = v49;
    sub_22713C714(v34, v22);
    v186 = v50;
    sub_22713AF20(v22);
    v181 = v51;
    sub_22713ACCC(v34, v22);
    v184 = v52;
    sub_2271343E4(v22);
    v182 = v53;
    sub_22713C9B0(v22);
    v185 = v54;
    sub_2271349A4(v22);
    v187 = v55;
    sub_227134FE0(v22);
    v188 = v56;
    sub_227136CC4(*(a2 + *(v194 + 7)), v22);
    v58 = v57;
    sub_227667240();
    sub_227668030();
    v60 = v59;
    v29(v16, v30);
    v61 = v36 * v60;
    sub_227667240();
    sub_2276680E0();
    v63 = v62;
    v29(v16, v30);
    v64 = v61 + v38 * v63;
    sub_227667240();
    sub_2276681D0();
    v66 = v65;
    v29(v16, v30);
    v67 = v64 + v40 * v66;
    sub_227667240();
    sub_2276681A0();
    v69 = v68;
    v29(v16, v30);
    v70 = v67 + v41 * v69;
    sub_227667240();
    sub_227668180();
    v72 = v71;
    v29(v16, v30);
    v73 = v70 + v43 * v72;
    sub_227667240();
    sub_227668150();
    v75 = v74;
    v29(v16, v30);
    v76 = v73 + v45 * v75;
    sub_227667240();
    sub_227668190();
    v78 = v77;
    v29(v16, v30);
    v79 = v76 + v177 * v78;
    sub_227667240();
    sub_2276680B0();
    v81 = v80;
    v29(v16, v30);
    v82 = v79 + v178 * v81;
    sub_227667240();
    sub_227668080();
    v84 = v83;
    v29(v16, v30);
    v85 = v82 + v58 * v84;
    sub_227667240();
    sub_227667EE0();
    v87 = v86;
    v29(v16, v30);
    v88 = v85 + v87 * v179;
    sub_227667240();
    sub_227668040();
    v90 = v89;
    v29(v16, v30);
    v91 = v88 + v180 * v90;
    sub_227667240();
    sub_227667EC0();
    v93 = v92;
    v29(v16, v30);
    v94 = v91 + v181 * v93;
    sub_227667240();
    sub_227667FE0();
    v96 = v95;
    v29(v16, v30);
    v97 = v94 + v183 * v96;
    sub_227667240();
    sub_227667FB0();
    v99 = v98;
    v29(v16, v30);
    v100 = v97 + v182 * v99;
    sub_227667240();
    sub_227668000();
    v102 = v101;
    v29(v16, v30);
    v103 = v100 + v184 * v102;
    sub_227667240();
    sub_227667F90();
    v105 = v104;
    v29(v16, v30);
    v106 = v103 + v189 * v105;
    sub_227667240();
    sub_227668070();
    v108 = v107;
    v29(v16, v30);
    v109 = v106 + v186 * v108;
    sub_227667240();
    sub_2276680A0();
    v111 = v110;
    v29(v16, v30);
    v112 = v109 + v185 * v111;
    sub_227667240();
    sub_227668100();
    v114 = v113;
    v29(v16, v30);
    v115 = v112 + v187 * v114;
    sub_227667240();
    sub_2276681E0();
    v117 = v116;
    v29(v16, v30);
    v118 = v115 + v188 * v117;
    sub_227667240();
    sub_227668140();
    v120 = v119;
    v29(v16, v30);
    v121 = v190 - (v118 + v191 * v120);
    v122 = v192;
    sub_22766A630();

    v123 = sub_22766B380();
    v124 = sub_22766C880();

    v195 = v123;
    if (os_log_type_enabled(v123, v124))
    {
      v125 = COERCE_DOUBLE(swift_slowAlloc());
      *&v126 = COERCE_DOUBLE(swift_slowAlloc());
      v127 = v126;
      v205[0] = v126;
      **&v125 = 136315394;
      v128 = *(v22 + 16);
      v129 = MEMORY[0x277D84F90];
      if (v128)
      {
        v190 = *&v126;
        v191 = v125;
        LODWORD(v194) = v124;
        v204 = MEMORY[0x277D84F90];
        sub_226F1EF90(0, v128, 0);
        v129 = v204;
        v130 = (v22 + 64);
        do
        {
          v131 = *(v130 - 4);
          v132 = *(v130 - 3);
          v133 = *(v130 - 1);
          v135 = *v130;
          v201 = *(v130 - 2);
          v134 = v201;
          v202 = v133;
          v203 = v135;

          sub_226EB396C(v134, v133, v135);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_22713A9EC();
          v201 = sub_227663B60();
          v202 = v136;
          MEMORY[0x22AA98450](40, 0xE100000000000000);
          v200 = v131;
          v137 = sub_22766D140();
          MEMORY[0x22AA98450](v137);

          MEMORY[0x22AA98450](41, 0xE100000000000000);

          sub_226EB2DFC(v134, v133, v135);
          v138 = v201;
          v139 = v202;
          v204 = v129;
          v141 = *(v129 + 16);
          v140 = *(v129 + 24);
          if (v141 >= v140 >> 1)
          {
            sub_226F1EF90(v140 > 1, v141 + 1, 1);
            v129 = v204;
          }

          *(v129 + 16) = v141 + 1;
          v142 = v129 + 16 * v141;
          *(v142 + 32) = v138;
          *(v142 + 40) = v139;
          v130 += 40;
          --v128;
        }

        while (v128);
        v122 = v192;
        LOBYTE(v124) = v194;
        v125 = v191;
        v127 = *&v190;
      }

      v201 = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      sub_22713AA40();
      v165 = sub_22766BF70();
      v167 = v166;

      v168 = sub_226E97AE8(v165, v167, v205);

      *(*&v125 + 4) = v168;
      *(*&v125 + 12) = 2048;
      *(*&v125 + 14) = v121;
      v169 = v195;
      _os_log_impl(&dword_226E8E000, v195, v124, "[Algorithm.Scoring]: Calculated scaffold penalty for daily schedule: %s => %f", *&v125, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x22AA9A450](v127, -1, -1);
      MEMORY[0x22AA9A450](*&v125, -1, -1);
    }

    else
    {
    }

    (*(v196 + 8))(v122, v193);
  }

  else
  {
    sub_227667240();
    sub_227668140();
    v144 = v143;
    (*(isa + 1))(v16, v195);
    v121 = 0.0 - v18 * v144;
    sub_22766A630();
    v145 = v17;

    v146 = sub_22766B380();
    v147 = sub_22766C880();

    v195 = v146;
    v148 = v10;
    if (os_log_type_enabled(v146, v147))
    {
      v149 = COERCE_DOUBLE(swift_slowAlloc());
      v194 = swift_slowAlloc();
      v205[0] = v194;
      **&v149 = 136315394;
      v150 = *(v145 + 16);
      v151 = MEMORY[0x277D84F90];
      if (v150)
      {
        v190 = v149;
        LODWORD(v191) = v147;
        v192 = v148;
        v193 = v6;
        v204 = MEMORY[0x277D84F90];
        sub_226F1EF90(0, v150, 0);
        v151 = v204;
        v152 = (v145 + 64);
        do
        {
          v153 = *(v152 - 4);
          v154 = *(v152 - 3);
          v156 = *(v152 - 1);
          v157 = *v152;
          v201 = *(v152 - 2);
          v155 = v201;
          v202 = v156;
          v203 = v157;

          sub_226EB396C(v155, v156, v157);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_22713A9EC();
          v201 = sub_227663B60();
          v202 = v158;
          MEMORY[0x22AA98450](40, 0xE100000000000000);
          v200 = v153;
          v159 = sub_22766D140();
          MEMORY[0x22AA98450](v159);

          MEMORY[0x22AA98450](41, 0xE100000000000000);

          sub_226EB2DFC(v155, v156, v157);
          v160 = v201;
          v161 = v202;
          v204 = v151;
          v163 = *(v151 + 16);
          v162 = *(v151 + 24);
          if (v163 >= v162 >> 1)
          {
            sub_226F1EF90(v162 > 1, v163 + 1, 1);
            v151 = v204;
          }

          *(v151 + 16) = v163 + 1;
          v164 = v151 + 16 * v163;
          *(v164 + 32) = v160;
          *(v164 + 40) = v161;
          v152 += 40;
          --v150;
        }

        while (v150);
        v6 = v193;
        v148 = v192;
        LOBYTE(v147) = LOBYTE(v191);
        v149 = v190;
      }

      v201 = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      sub_22713AA40();
      v170 = sub_22766BF70();
      v172 = v171;

      v173 = sub_226E97AE8(v170, v172, v205);

      *(*&v149 + 4) = v173;
      *(*&v149 + 12) = 2048;
      *(*&v149 + 14) = v121;
      v174 = v195;
      _os_log_impl(&dword_226E8E000, v195, v147, "[Algorithm.Scoring]: Calculated personalized scaffold penalty for daily schedule: %s => %f", *&v149, 0x16u);
      v175 = v194;
      __swift_destroy_boxed_opaque_existential_0(v194);
      MEMORY[0x22AA9A450](v175, -1, -1);
      MEMORY[0x22AA9A450](*&v149, -1, -1);
    }

    else
    {
    }

    (*(v196 + 8))(v148, v6);
  }

  return v121;
}

uint64_t sub_227139134(uint64_t a1)
{
  v2 = sub_227666B60();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v2);
  v75 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = *(v79 + 64);
  MEMORY[0x28223BE20](v5);
  v78 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276681F0();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227662190();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = sub_227662940();
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v64 - v24;
  v26 = sub_227662750();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v69 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v64 - v31;
  sub_227662740();
  sub_227662920();
  v74 = a1;
  sub_227666A60();
  sub_2276628D0();
  v33 = *(v12 + 8);
  v34 = v17;
  v35 = v27;
  v73 = v11;
  v70 = v12 + 8;
  v33(v34, v11);
  v36 = *(v81 + 8);
  v71 = v18;
  v36(v21, v18);
  v37 = (*(v35 + 48))(v25, 1, v26);
  v82 = v26;
  if (v37 == 1)
  {
    v73 = v32;
    sub_226E97D1C(v25, &qword_27D7B9690, qword_227670B50);
  }

  else
  {
    v38 = v69;
    (*(v35 + 32))(v69, v25, v26);
    sub_227662920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
    v65 = v33;
    v39 = sub_227662930();
    v40 = *(v39 - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_227670CD0;
    (*(v40 + 104))(v43 + v42, *MEMORY[0x277CC9968], v39);
    sub_226F4CE68(v43);
    v81 = v35;
    swift_setDeallocating();
    (*(v40 + 8))(v43 + v42, v39);
    swift_deallocClassInstance();
    v44 = v72;
    sub_2276628A0();

    v36(v21, v71);
    v45 = sub_227662120();
    LOBYTE(v39) = v46;
    v65(v44, v73);
    if ((v39 & 1) == 0)
    {
      exp(-fabs((v45 / 7)));
      v61 = v66;
      sub_227667240();
      sub_227667FD0();
      (*(v67 + 8))(v61, v68);
      v62 = v82;
      v63 = *(v81 + 8);
      v63(v38, v82);
      return (v63)(v32, v62);
    }

    v73 = v32;
    v35 = v81;
    (*(v81 + 8))(v38, v82);
  }

  v47 = v78;
  sub_22766A630();
  v48 = v75;
  v49 = v76;
  v50 = v77;
  (*(v76 + 16))(v75, v74, v77);
  v51 = sub_22766B380();
  v52 = sub_22766C890();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v81 = v35;
    v55 = v54;
    v83 = v54;
    *v53 = 136315138;
    sub_22713CF20(&qword_27D7BB360, MEMORY[0x277D52828]);
    v56 = sub_22766D140();
    v58 = v57;
    (*(v49 + 8))(v48, v50);
    v59 = sub_226E97AE8(v56, v58, &v83);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_226E8E000, v51, v52, "Unable to compute contentRecencyObjective for candidate: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x22AA9A450](v55, -1, -1);
    MEMORY[0x22AA9A450](v53, -1, -1);

    (*(v79 + 8))(v47, v80);
    return (*(v81 + 8))(v73, v82);
  }

  else
  {

    (*(v49 + 8))(v48, v50);
    (*(v79 + 8))(v47, v80);
    return (*(v35 + 8))(v73, v82);
  }
}

uint64_t sub_2271399F8(uint64_t a1)
{
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v8 = sub_227666A50();
  if (!*(v7 + 16))
  {
  }

  v10 = sub_226E92000(v8, v9);
  v12 = v11;

  if (v12)
  {
    v14 = *(*(v7 + 56) + 8 * v10);
    sub_227667240();
    v15 = sub_227667EB0();
    v16 = *(v3 + 8);
    result = v16(v6, v2);
    if (v15 < 1)
    {
      __break(1u);
    }

    else if (v14 >= 1 && v15 >= v14)
    {
      sub_227667240();
      sub_227667EA0();
      return v16(v6, v2);
    }
  }

  return result;
}