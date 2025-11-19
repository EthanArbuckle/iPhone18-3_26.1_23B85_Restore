void sub_20BDA6DB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v4 = a2 + 41;
    do
    {
      v5 = *(v4 - 9);
      v6 = *(v4 - 1);
      v4 += 16;
      v7 = v5;
      sub_20C13D604();
      MEMORY[0x20F2F58E0](v6);
      v8 = sub_20C137F94();
      MEMORY[0x20F2F58E0](v8);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_20BDA6E4C(__int128 *a1, uint64_t a2)
{
  v39 = type metadata accessor for ButtonAction(0);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_20C137C24();
  v6 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v35 - v9;
  v10 = type metadata accessor for RootShowcaseItem();
  v11 = *(v10 - 1);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v15, v12);
  v47 = v15;
  if (v15)
  {
    v17 = v10[9];
    v45 = &v14[v10[10]];
    v46 = v17;
    v18 = *(v11 + 80);
    v19 = v10[11];
    v43 = v10[12];
    v44 = v19;
    v20 = 0;
    v42 = a2 + ((v18 + 32) & ~v18);
    v41 = *(v11 + 72);
    v40 = (v6 + 48);
    v36 = (v6 + 32);
    v35 = (v6 + 8);
    do
    {
      v50 = v20;
      sub_20BDAAE68(v42 + v41 * v20, v14, type metadata accessor for RootShowcaseItem);
      sub_20C13CA64();
      sub_20C13CA64();

      v21 = v14[40];
      v51 = *(v14 + 24);
      v52 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
      sub_20B654574();
      sub_20C133BE4();
      v22 = *(v14 + 7);
      if (v22 == 1)
      {
        sub_20C13E184();
        v23 = v49;
        goto LABEL_20;
      }

      v24 = *(v14 + 9);
      v25 = *(v14 + 10);
      v26 = *(v14 + 44);
      sub_20C13E184();
      if (v22)
      {
        sub_20C13E184();
        sub_20C13CA64();
        if (v24)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_20C13E184();
        if (v24)
        {
LABEL_8:
          sub_20C13E184();
          sub_20C13CA64();
          if ((v26 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_9;
        }
      }

      sub_20C13E184();
      if ((v26 & 1) == 0)
      {
LABEL_12:
        sub_20C13E184();
        MEMORY[0x20F2F58E0](v25);
        goto LABEL_13;
      }

LABEL_9:
      sub_20C13E184();
LABEL_13:
      v23 = v49;
      if (v26 >> 8 == 2)
      {
        v27 = 0;
      }

      else if (v26 >> 8 == 3)
      {
        v27 = 2;
      }

      else
      {
        MEMORY[0x20F2F58E0](1);
        v27 = (v26 >> 8) & 1;
      }

      MEMORY[0x20F2F58E0](v27);
LABEL_20:
      v28 = *(v14 + 7);
      v53 = *(v14 + 6);
      v54 = v28;
      v55 = *(v14 + 8);
      sub_20B653898();
      v29 = v48;
      sub_20B52F9E8(&v14[v46], v48, &unk_27C766680);
      if ((*v40)(v29, 1, v23) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v30 = v37;
        (*v36)(v37, v29, v23);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C762F08, MEMORY[0x277D53A78]);
        sub_20C13C7C4();
        (*v35)(v30, v23);
      }

      if (*(v45 + 1))
      {
        sub_20C13E184();
        sub_20C13CA64();
      }

      else
      {
        sub_20C13E184();
      }

      v31 = *&v14[v44];
      v32 = *(v31 + 16);
      MEMORY[0x20F2F58E0](v32);
      if (v32)
      {
        v33 = v31 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v34 = *(v38 + 72);
        do
        {
          sub_20BDAAE68(v33, v5, type metadata accessor for ButtonAction);
          if (v5[1])
          {
            sub_20C13E184();
            sub_20C13CA64();
            if (!v5[3])
            {
              goto LABEL_28;
            }
          }

          else
          {
            sub_20C13E184();
            if (!v5[3])
            {
LABEL_28:
              sub_20C13E184();
              if (!v5[5])
              {
                goto LABEL_36;
              }

              goto LABEL_29;
            }
          }

          sub_20C13E184();
          sub_20C13CA64();
          if (!v5[5])
          {
LABEL_36:
            sub_20C13E184();
            goto LABEL_30;
          }

LABEL_29:
          sub_20C13E184();
          sub_20C13CA64();
LABEL_30:
          sub_20BDA4D9C(a1);
          sub_20BDAAE08(v5, type metadata accessor for ButtonAction);
          v33 += v34;
          --v32;
        }

        while (v32);
      }

      v20 = v50 + 1;
      sub_20C135184();
      sub_20C13CA64();

      result = sub_20BDAAE08(v14, type metadata accessor for RootShowcaseItem);
    }

    while (v20 != v47);
  }

  return result;
}

uint64_t sub_20BDA75A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v8);
  if (v8)
  {
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_20BDAAE68(v10, v7, type metadata accessor for ButtonAction);
      if (v7[1])
      {
        sub_20C13E184();
        sub_20C13CA64();
        if (v7[3])
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_20C13E184();
        if (v7[3])
        {
LABEL_7:
          sub_20C13E184();
          sub_20C13CA64();
          if (!v7[5])
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_20C13E184();
      if (!v7[5])
      {
LABEL_11:
        sub_20C13E184();
        goto LABEL_4;
      }

LABEL_3:
      sub_20C13E184();
      sub_20C13CA64();
LABEL_4:
      sub_20BDA4D9C(a1);
      result = sub_20BDAAE08(v7, type metadata accessor for ButtonAction);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_20BDA779C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MetadataEntry();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v8, v5);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      sub_20BDAAE68(v10, v7, type metadata accessor for MetadataEntry);
      sub_20C13D604();
      v12 = *(v7 + 1);
      if (!(v12 >> 62))
      {
        break;
      }

      if (v12 >> 62 == 1)
      {
        v13 = 2;
        goto LABEL_9;
      }

      if (v12 == 0x8000000000000000 && *(v7 + 1) == 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = 3;
      }

      MEMORY[0x20F2F58E0](v15);
      if (!*(v7 + 5))
      {
LABEL_18:
        sub_20C13E184();
        goto LABEL_4;
      }

LABEL_3:
      sub_20C13E184();
      sub_20C13CA64();
LABEL_4:
      sub_20C132EE4();
      sub_20BDA65F4(&qword_27C7675A0, MEMORY[0x277CC95F0]);
      sub_20C13C7C4();
      result = sub_20BDAAE08(v7, type metadata accessor for MetadataEntry);
      v10 += v11;
      if (!--v8)
      {
        return result;
      }
    }

    v13 = 1;
LABEL_9:
    MEMORY[0x20F2F58E0](v13);
    MEMORY[0x20F2F58E0](v12 & 1);
    sub_20C13CA64();
    if (!*(v7 + 5))
    {
      goto LABEL_18;
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t sub_20BDA79E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v5 = a2 + 72;
    do
    {
      MEMORY[0x20F2F58E0](*(v5 - 40));
      sub_20C13E184();

      sub_20C13CA64();
      sub_20C13CA64();

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_20BDA7A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      MEMORY[0x20F2F58E0](0);
      if (v6)
      {
        sub_20C13E184();

        sub_20C13CA64();
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_20C13E184();

        if (!v7)
        {
LABEL_9:
          sub_20C13E184();
          goto LABEL_4;
        }
      }

      sub_20C13E184();
      sub_20C13CA64();
LABEL_4:

      v5 += 4;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_20BDA7B8C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageAlertAction();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v8, v5);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = &v7[*(v3 + 24)];
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_20BDAAE68(v12, v7, type metadata accessor for PageAlertAction);
      sub_20C132EE4();
      sub_20BDA65F4(&qword_27C7675A0, MEMORY[0x277CC95F0]);
      sub_20C13C7C4();
      MEMORY[0x20F2F58E0](v7[v10]);
      if (*(v11 + 1))
      {
        sub_20C13E184();
        sub_20C13CA64();
      }

      else
      {
        sub_20C13E184();
      }

      result = sub_20BDAAE08(v7, type metadata accessor for PageAlertAction);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_20BDA7D60(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      if (v6)
      {
        sub_20C13E184();

        sub_20C13CA64();
      }

      else
      {
        result = sub_20C13E184();
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_20BDA7DFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      v8 = *(v5 + 32);
      v10 = *(v5 + 40);
      MEMORY[0x20F2F58E0](*(v5 - 16));
      sub_20C13E184();
      sub_20C13E184();

      sub_20C13CA64();
      MEMORY[0x20F2F58E0](v6);
      MEMORY[0x20F2F58E0](v7);
      MEMORY[0x20F2F58E0](v8);
      MEMORY[0x20F2F58E0](v10);
      v9 = sub_20C137F94();
      MEMORY[0x20F2F58E0](v9);

      v5 += 64;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_20BDA7EF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_20C13DB34();
    MEMORY[0x20F2F58E0](v8);
    v3 = sub_20C13DB34();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x20F2F58E0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x20F2F5430](i, a2);
      sub_20C13D604();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_20C13D604();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_20BDA7FE0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8 || (a1[2] != a2[2] || v7 != v8) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (v9)
  {
    if (v10 && (a1[4] == a2[4] && v9 == v10 || (sub_20C13DFF4() & 1) != 0))
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_22:
  v11 = *(type metadata accessor for ButtonAction(0) + 28);

  return sub_20BDA80E4(a1 + v11, a2 + v11);
}

uint64_t sub_20BDA80E4(uint64_t a1, uint64_t a2)
{
  v372 = a1;
  v373 = a2;
  v2 = sub_20C132C14();
  v358 = *(v2 - 8);
  v359 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v332 = &v305 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v357 = &v305 - v5;
  v6 = sub_20C134284();
  v355 = *(v6 - 8);
  v356 = v6;
  MEMORY[0x28223BE20](v6);
  v331 = &v305 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_20C135C54();
  v326 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v312 = &v305 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EDF8);
  v9 = MEMORY[0x28223BE20](v325);
  v320 = &v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v315 = &v305 - v11;
  v12 = sub_20C137254();
  v370 = *(v12 - 8);
  v371 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v337 = &v305 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v362 = &v305 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v333 = &v305 - v18;
  MEMORY[0x28223BE20](v17);
  v363 = &v305 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v314 = &v305 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v336 = &v305 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v366 = &v305 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v309 = &v305 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v342 = &v305 - v30;
  MEMORY[0x28223BE20](v29);
  v361 = &v305 - v31;
  started = type metadata accessor for StartWorkoutSessionRequest();
  v33 = MEMORY[0x28223BE20](started - 8);
  v339 = &v305 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v334 = &v305 - v35;
  v354 = sub_20C133954();
  v353 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v330 = &v305 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = sub_20C134014();
  v351 = *(v352 - 8);
  MEMORY[0x28223BE20](v352);
  v328 = &v305 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_20C138894();
  v365 = *(v367 - 8);
  v38 = MEMORY[0x28223BE20](v367);
  v329 = &v305 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v360 = &v305 - v41;
  MEMORY[0x28223BE20](v40);
  v306 = &v305 - v42;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE00);
  MEMORY[0x28223BE20](v311);
  v319 = &v305 - v43;
  v44 = sub_20C138B94();
  v368 = *(v44 - 8);
  v369 = v44;
  v45 = MEMORY[0x28223BE20](v44);
  v338 = &v305 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v308 = &v305 - v47;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE08);
  MEMORY[0x28223BE20](v317);
  v318 = &v305 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  v50 = MEMORY[0x28223BE20](v49 - 8);
  v307 = &v305 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v340 = &v305 - v53;
  MEMORY[0x28223BE20](v52);
  v341 = &v305 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v313 = &v305 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v335 = &v305 - v59;
  MEMORY[0x28223BE20](v58);
  v364 = &v305 - v60;
  v324 = sub_20C135814();
  v323 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v310 = &v305 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  MEMORY[0x28223BE20](v62 - 8);
  v316 = &v305 - v63;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768160);
  MEMORY[0x28223BE20](v321);
  v322 = &v305 - v64;
  v65 = type metadata accessor for ButtonAction.ActionType(0);
  v66 = MEMORY[0x28223BE20](v65);
  v347 = &v305 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v66);
  v350 = &v305 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v345 = &v305 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v346 = &v305 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v348 = &v305 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v343 = (&v305 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v349 = &v305 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v82 = (&v305 - v81);
  v83 = MEMORY[0x28223BE20](v80);
  v85 = &v305 - v84;
  v86 = MEMORY[0x28223BE20](v83);
  v344 = &v305 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v90 = &v305 - v89;
  v91 = MEMORY[0x28223BE20](v88);
  v93 = (&v305 - v92);
  v94 = MEMORY[0x28223BE20](v91);
  v96 = &v305 - v95;
  MEMORY[0x28223BE20](v94);
  v98 = &v305 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE10);
  v100 = MEMORY[0x28223BE20](v99 - 8);
  v102 = &v305 - v101;
  v103 = &v305 + *(v100 + 56) - v101;
  sub_20BDAAE68(v372, &v305 - v101, type metadata accessor for ButtonAction.ActionType);
  v104 = v373;
  v373 = v103;
  sub_20BDAAE68(v104, v103, type metadata accessor for ButtonAction.ActionType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v305 = v102;
      sub_20BDAAE68(v102, v96, type metadata accessor for ButtonAction.ActionType);
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
      v186 = *(v185 + 48);
      v187 = *(v185 + 64);
      v188 = v373;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_20B520158(&v96[v187], &unk_27C768660);
        sub_20B520158(&v96[v186], &qword_27C7622F0);
        goto LABEL_72;
      }

      v189 = *v96;
      v190 = *v188;
      sub_20B5DF134(&v96[v186], v364, &qword_27C7622F0);
      v191 = &v96[v187];
      v192 = v341;
      sub_20B5DF134(v191, v341, &unk_27C768660);
      v193 = &v188[v186];
      v194 = v335;
      sub_20B5DF134(v193, v335, &qword_27C7622F0);
      v195 = &v188[v187];
      v196 = v340;
      sub_20B5DF134(v195, v340, &unk_27C768660);
      if (v189 != v190)
      {
        sub_20B520158(v196, &unk_27C768660);
        sub_20B520158(v194, &qword_27C7622F0);
        sub_20B520158(v192, &unk_27C768660);
        sub_20B520158(v364, &qword_27C7622F0);
        goto LABEL_102;
      }

      v244 = *(v317 + 48);
      v245 = v364;
      v246 = v318;
      sub_20B52F9E8(v364, v318, &qword_27C7622F0);
      sub_20B52F9E8(v194, v246 + v244, &qword_27C7622F0);
      v247 = v369;
      v248 = *(v368 + 48);
      v249 = v248(v246, 1, v369);
      v102 = v305;
      v250 = v367;
      if (v249 == 1)
      {
        v251 = v248(v246 + v244, 1, v247);
        v252 = v319;
        if (v251 == 1)
        {
          sub_20B520158(v246, &qword_27C7622F0);
          goto LABEL_126;
        }

        goto LABEL_105;
      }

      v261 = v313;
      sub_20B52F9E8(v246, v313, &qword_27C7622F0);
      v262 = v248(v246 + v244, 1, v247);
      v252 = v319;
      if (v262 == 1)
      {
        (*(v368 + 8))(v261, v247);
LABEL_105:
        sub_20B520158(v246, &qword_27C76EE08);
LABEL_106:
        sub_20B520158(v340, &unk_27C768660);
        sub_20B520158(v335, &qword_27C7622F0);
        sub_20B520158(v341, &unk_27C768660);
        sub_20B520158(v245, &qword_27C7622F0);
        goto LABEL_117;
      }

      v281 = v261;
      v282 = v368;
      v283 = v246 + v244;
      v284 = v308;
      (*(v368 + 32))(v308, v283, v247);
      sub_20BDA65F4(&qword_27C76EE20, MEMORY[0x277D54150]);
      v285 = sub_20C13C894();
      v286 = *(v282 + 8);
      v286(v284, v247);
      v287 = v281;
      v250 = v367;
      v286(v287, v247);
      sub_20B520158(v246, &qword_27C7622F0);
      if ((v285 & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_126:
      v288 = *(v311 + 48);
      v289 = v341;
      sub_20B52F9E8(v341, v252, &unk_27C768660);
      v290 = v340;
      sub_20B52F9E8(v340, v252 + v288, &unk_27C768660);
      v291 = *(v365 + 48);
      if (v291(v252, 1, v250) == 1)
      {
        sub_20B520158(v290, &unk_27C768660);
        sub_20B520158(v335, &qword_27C7622F0);
        sub_20B520158(v289, &unk_27C768660);
        sub_20B520158(v364, &qword_27C7622F0);
        if (v291(v252 + v288, 1, v250) == 1)
        {
          sub_20B520158(v252, &unk_27C768660);
LABEL_57:
          v223 = v305;
          goto LABEL_66;
        }

        goto LABEL_131;
      }

      v292 = v307;
      sub_20B52F9E8(v252, v307, &unk_27C768660);
      if (v291(v252 + v288, 1, v250) == 1)
      {
        sub_20B520158(v340, &unk_27C768660);
        sub_20B520158(v335, &qword_27C7622F0);
        sub_20B520158(v341, &unk_27C768660);
        sub_20B520158(v364, &qword_27C7622F0);
        (*(v365 + 8))(v292, v250);
LABEL_131:
        sub_20B520158(v252, &qword_27C76EE00);
        v223 = v305;
LABEL_132:
        sub_20BDAAE08(v223, type metadata accessor for ButtonAction.ActionType);
        goto LABEL_77;
      }

      v301 = v365;
      v302 = v306;
      (*(v365 + 32))(v306, v252 + v288, v250);
      sub_20BDA65F4(&qword_27C76EE18, MEMORY[0x277D540B0]);
      v303 = sub_20C13C894();
      v304 = *(v301 + 8);
      v304(v302, v250);
      sub_20B520158(v340, &unk_27C768660);
      sub_20B520158(v335, &qword_27C7622F0);
      sub_20B520158(v341, &unk_27C768660);
      sub_20B520158(v364, &qword_27C7622F0);
      v304(v292, v250);
      sub_20B520158(v252, &unk_27C768660);
      v223 = v305;
      if ((v303 & 1) == 0)
      {
        goto LABEL_132;
      }

LABEL_66:
      sub_20BDAAE08(v223, type metadata accessor for ButtonAction.ActionType);
      v156 = 1;
      return v156 & 1;
    case 2u:
      sub_20BDAAE68(v102, v93, type metadata accessor for ButtonAction.ActionType);
      v158 = *v93;
      v159 = v373;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    case 3u:
      sub_20BDAAE68(v102, v90, type metadata accessor for ButtonAction.ActionType);
      v160 = v373;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v111 = v351;
        v112 = v328;
        v113 = v352;
        (*(v351 + 32))(v328, v160, v352);
        v114 = MEMORY[0x20F2EB730](v90, v112);
        goto LABEL_27;
      }

      (*(v351 + 8))(v90, v352);
      goto LABEL_76;
    case 4u:
      v90 = v344;
      sub_20BDAAE68(v102, v344, type metadata accessor for ButtonAction.ActionType);
      v110 = v373;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v353 + 8))(v90, v354);
        goto LABEL_76;
      }

      v111 = v353;
      v112 = v330;
      v113 = v354;
      (*(v353 + 32))(v330, v110, v354);
      v114 = MEMORY[0x20F2EAFF0](v90, v112);
LABEL_27:
      v156 = v114;
      v161 = *(v111 + 8);
      v161(v112, v113);
      v161(v90, v113);
      goto LABEL_28;
    case 5u:
      sub_20BDAAE68(v102, v85, type metadata accessor for ButtonAction.ActionType);
      v197 = v373;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_76;
      }

      v109 = *v85 ^ *v197;
      goto LABEL_43;
    case 6u:
      sub_20BDAAE68(v102, v82, type metadata accessor for ButtonAction.ActionType);
      v158 = *v82;
      v159 = v373;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
LABEL_22:
        v156 = sub_20BDA4218(v158, *v159);

        goto LABEL_28;
      }

LABEL_49:

      goto LABEL_76;
    case 7u:
      v115 = v349;
      sub_20BDAAE68(v102, v349, type metadata accessor for ButtonAction.ActionType);
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
      v163 = v162[12];
      v164 = *(v115 + v163);
      v117 = v162[16];
      v118 = v162[20];
      v165 = v373;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_35;
      }

      v305 = v102;
      v166 = *(v165 + v163);
      v167 = v334;
      sub_20BDAAED0(v165, v334, type metadata accessor for StartWorkoutSessionRequest);
      sub_20B5DF134(v115 + v117, v361, &qword_27C76A410);
      v168 = v370;
      v169 = v371;
      v170 = *(v370 + 32);
      v170(v363, v115 + v118, v371);
      v171 = v165 + v117;
      v172 = v165;
      v173 = v342;
      sub_20B5DF134(v171, v342, &qword_27C76A410);
      v174 = v172 + v118;
      v128 = v167;
      v175 = v333;
      v170(v333, v174, v169);
      LOBYTE(v170) = sub_20C0782AC(v115, v167);
      sub_20BDAAE08(v115, type metadata accessor for StartWorkoutSessionRequest);
      if ((v170 & 1) == 0)
      {
        v242 = *(v168 + 8);
        v242(v175, v169);
        sub_20B520158(v173, &qword_27C76A410);
        v242(v363, v169);
        v243 = v361;
        goto LABEL_101;
      }

      v176 = v363;
      v177 = v305;
      if (v164 != v166)
      {
        v266 = *(v168 + 8);
        v266(v175, v169);
        sub_20B520158(v342, &qword_27C76A410);
        v266(v176, v169);
        sub_20B520158(v361, &qword_27C76A410);
        v267 = v128;
LABEL_122:
        sub_20BDAAE08(v267, type metadata accessor for StartWorkoutSessionRequest);
        sub_20BDAAE08(v177, type metadata accessor for ButtonAction.ActionType);
        goto LABEL_77;
      }

      v178 = *(v325 + 48);
      v179 = v361;
      v180 = v315;
      sub_20B52F9E8(v361, v315, &qword_27C76A410);
      sub_20B52F9E8(v342, v180 + v178, &qword_27C76A410);
      v181 = v326;
      v182 = *(v326 + 48);
      v183 = v327;
      if (v182(v180, 1, v327) == 1)
      {
        if (v182(v180 + v178, 1, v183) == 1)
        {
          sub_20B520158(v180, &qword_27C76A410);
          v184 = v342;
LABEL_134:
          v297 = v176;
          v298 = v333;
          v156 = MEMORY[0x20F2EE970](v176, v333);
          v299 = *(v168 + 8);
          v300 = v371;
          v299(v298, v371);
          sub_20B520158(v184, &qword_27C76A410);
          v299(v297, v300);
          sub_20B520158(v179, &qword_27C76A410);
          sub_20BDAAE08(v334, type metadata accessor for StartWorkoutSessionRequest);
          sub_20BDAAE08(v177, type metadata accessor for ButtonAction.ActionType);
          return v156 & 1;
        }
      }

      else
      {
        v272 = v309;
        sub_20B52F9E8(v180, v309, &qword_27C76A410);
        if (v182(v180 + v178, 1, v183) != 1)
        {
          v293 = v180 + v178;
          v294 = v312;
          (*(v181 + 32))(v312, v293, v183);
          sub_20BDA65F4(&qword_27C7640F0, MEMORY[0x277D51FE0]);
          v295 = sub_20C13C894();
          v296 = *(v181 + 8);
          v296(v294, v183);
          v296(v272, v183);
          sub_20B520158(v180, &qword_27C76A410);
          v184 = v342;
          v177 = v305;
          if (v295)
          {
            goto LABEL_134;
          }

          goto LABEL_121;
        }

        (*(v181 + 8))(v272, v183);
        v177 = v305;
      }

      sub_20B520158(v180, &qword_27C76EDF8);
      v184 = v342;
LABEL_121:
      v273 = *(v168 + 8);
      v274 = v371;
      v273(v333, v371);
      sub_20B520158(v184, &qword_27C76A410);
      v273(v176, v274);
      sub_20B520158(v179, &qword_27C76A410);
      v267 = v334;
      goto LABEL_122;
    case 8u:
      v224 = v102;
      v225 = v343;
      sub_20BDAAE68(v102, v343, type metadata accessor for ButtonAction.ActionType);
      v227 = *v225;
      v226 = v225[1];
      v228 = v225[2];
      v229 = v373;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        v102 = v224;
        goto LABEL_76;
      }

      v231 = v229[1];
      v230 = v229[2];
      if (v226)
      {
        if (v231)
        {
          if (v227 == *v229 && v226 == v231)
          {

LABEL_112:
            v156 = sub_20BB808A4(v228, v230);

            sub_20BDAAE08(v224, type metadata accessor for ButtonAction.ActionType);
            return v156 & 1;
          }

          v265 = sub_20C13DFF4();

          if (v265)
          {
            goto LABEL_112;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v231)
        {
          goto LABEL_112;
        }
      }

      sub_20BDAAE08(v224, type metadata accessor for ButtonAction.ActionType);
      goto LABEL_77;
    case 9u:
      v141 = v348;
      sub_20BDAAE68(v102, v348, type metadata accessor for ButtonAction.ActionType);
      v142 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8) + 48);
      v143 = v373;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        (*(v365 + 8))(v141 + v142, v367);
        v233 = v368;
        v232 = v369;
        goto LABEL_74;
      }

      v144 = v368;
      v145 = v338;
      (*(v368 + 32))(v338, v143, v369);
      v146 = v365;
      v147 = *(v365 + 32);
      v148 = v367;
      v147(v360, v141 + v142, v367);
      v149 = v143 + v142;
      v150 = v329;
      v147(v329, v149, v148);
      v151 = MEMORY[0x20F2F02B0](v141, v145);
      v152 = *(v144 + 8);
      v153 = v141;
      v154 = v369;
      v152(v153, v369);
      if ((v151 & 1) == 0)
      {
        v241 = *(v146 + 8);
        v241(v150, v148);
        v241(v360, v148);
        v152(v145, v154);
        goto LABEL_117;
      }

      v155 = v360;
      v156 = MEMORY[0x20F2EFFB0](v360, v150);
      v157 = *(v146 + 8);
      v157(v150, v148);
      v157(v155, v148);
      v152(v338, v154);
LABEL_28:
      sub_20BDAAE08(v102, type metadata accessor for ButtonAction.ActionType);
      return v156 & 1;
    case 0xAu:
      v141 = v346;
      sub_20BDAAE68(v102, v346, type metadata accessor for ButtonAction.ActionType);
      v212 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200) + 48);
      v214 = *(v141 + v212);
      v213 = *(v141 + v212 + 8);
      v215 = v373;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        v233 = v355;
        v232 = v356;
LABEL_74:
        (*(v233 + 8))(v141, v232);
        goto LABEL_76;
      }

      v305 = v102;
      v217 = *(v215 + v212);
      v216 = *(v215 + v212 + 8);
      v219 = v355;
      v218 = v356;
      v220 = v331;
      (*(v355 + 32))(v331, v215, v356);
      v221 = MEMORY[0x20F2EB9E0](v141, v220);
      v222 = *(v219 + 8);
      v222(v141, v218);
      if ((v221 & 1) == 0)
      {
        v222(v220, v218);

        goto LABEL_102;
      }

      if (v214 == v217 && v213 == v216)
      {

        v222(v220, v218);
        goto LABEL_57;
      }

      v264 = sub_20C13DFF4();

      v222(v220, v218);
      v223 = v305;
      if (v264)
      {
        goto LABEL_66;
      }

      goto LABEL_132;
    case 0xBu:
      v106 = v345;
      sub_20BDAAE68(v102, v345, type metadata accessor for ButtonAction.ActionType);
      v107 = v106[1];
      v108 = v373;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_76;
      }

      if (*v106 != *v108)
      {
        goto LABEL_117;
      }

      v109 = v107 ^ v108[1];
LABEL_43:
      sub_20BDAAE08(v102, type metadata accessor for ButtonAction.ActionType);
      v156 = v109 ^ 1;
      return v156 & 1;
    case 0xCu:
      v115 = v350;
      sub_20BDAAE68(v102, v350, type metadata accessor for ButtonAction.ActionType);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
      v117 = *(v116 + 48);
      v118 = *(v116 + 64);
      v119 = v373;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
LABEL_35:
        (*(v370 + 8))(v115 + v118, v371);
        sub_20B520158(v115 + v117, &qword_27C76A410);
        sub_20BDAAE08(v115, type metadata accessor for StartWorkoutSessionRequest);
        goto LABEL_76;
      }

      v305 = v102;
      v120 = v339;
      sub_20BDAAED0(v119, v339, type metadata accessor for StartWorkoutSessionRequest);
      sub_20B5DF134(v115 + v117, v366, &qword_27C76A410);
      v121 = v370;
      v122 = v371;
      v123 = *(v370 + 32);
      v123(v362, v115 + v118, v371);
      v124 = v119 + v117;
      v125 = v119;
      v126 = v336;
      sub_20B5DF134(v124, v336, &qword_27C76A410);
      v127 = v125 + v118;
      v128 = v120;
      v129 = v337;
      v123(v337, v127, v122);
      LOBYTE(v120) = sub_20C0782AC(v115, v120);
      sub_20BDAAE08(v115, type metadata accessor for StartWorkoutSessionRequest);
      if ((v120 & 1) == 0)
      {
        v240 = *(v121 + 8);
        v240(v129, v122);
        sub_20B520158(v126, &qword_27C76A410);
        v240(v362, v122);
LABEL_100:
        v243 = v366;
LABEL_101:
        sub_20B520158(v243, &qword_27C76A410);
        sub_20BDAAE08(v128, type metadata accessor for StartWorkoutSessionRequest);
LABEL_102:
        sub_20BDAAE08(v305, type metadata accessor for ButtonAction.ActionType);
        goto LABEL_77;
      }

      v130 = v362;
      v131 = v121;
      v132 = *(v325 + 48);
      v133 = v320;
      sub_20B52F9E8(v366, v320, &qword_27C76A410);
      sub_20B52F9E8(v126, v133 + v132, &qword_27C76A410);
      v134 = v326;
      v135 = *(v326 + 48);
      v136 = v327;
      if (v135(v133, 1, v327) == 1)
      {
        v137 = v135(v133 + v132, 1, v136);
        v138 = v337;
        v128 = v339;
        if (v137 == 1)
        {
          sub_20B520158(v133, &qword_27C76A410);
          v139 = v336;
          v140 = v130;
LABEL_124:
          v278 = MEMORY[0x20F2EE970](v140, v138);
          v279 = v138;
          v156 = v278;
          v280 = *(v131 + 8);
          v280(v279, v122);
          sub_20B520158(v139, &qword_27C76A410);
          v280(v140, v122);
          sub_20B520158(v366, &qword_27C76A410);
          sub_20BDAAE08(v128, type metadata accessor for StartWorkoutSessionRequest);
          sub_20BDAAE08(v305, type metadata accessor for ButtonAction.ActionType);
          return v156 & 1;
        }
      }

      else
      {
        v257 = v314;
        sub_20B52F9E8(v133, v314, &qword_27C76A410);
        v258 = v135(v133 + v132, 1, v136);
        v259 = v339;
        if (v258 != 1)
        {
          v275 = v133 + v132;
          v276 = v312;
          (*(v134 + 32))(v312, v275, v136);
          sub_20BDA65F4(&qword_27C7640F0, MEMORY[0x277D51FE0]);
          LODWORD(v373) = sub_20C13C894();
          v277 = *(v134 + 8);
          v277(v276, v136);
          v277(v257, v136);
          sub_20B520158(v133, &qword_27C76A410);
          v138 = v337;
          v139 = v336;
          v140 = v130;
          v128 = v259;
          if (v373)
          {
            goto LABEL_124;
          }

          goto LABEL_99;
        }

        (*(v134 + 8))(v257, v136);
        v138 = v337;
        v128 = v259;
      }

      sub_20B520158(v133, &qword_27C76EDF8);
      v139 = v336;
      v140 = v130;
LABEL_99:
      v260 = *(v131 + 8);
      v260(v138, v122);
      sub_20B520158(v139, &qword_27C76A410);
      v260(v140, v122);
      goto LABEL_100;
    case 0xDu:
      v305 = v102;
      v198 = v347;
      sub_20BDAAE68(v102, v347, type metadata accessor for ButtonAction.ActionType);
      v200 = *v198;
      v199 = *(v198 + 1);
      v201 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210) + 48);
      v202 = v373;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        (*(v358 + 8))(&v198[v201], v359);

LABEL_72:
        v102 = v305;
LABEL_76:
        sub_20B520158(v102, &qword_27C76EE10);
        goto LABEL_77;
      }

      v204 = *v202;
      v203 = v202[1];
      v205 = v358;
      v206 = *(v358 + 32);
      v207 = &v198[v201];
      v208 = v359;
      v206(v357, v207, v359);
      v209 = v202 + v201;
      v210 = v332;
      v206(v332, v209, v208);
      if (v200 == v204 && v199 == v203)
      {

        v211 = v305;
LABEL_89:
        v254 = v357;
        v156 = sub_20C132B84();
        v255 = *(v205 + 8);
        v255(v210, v208);
        v255(v254, v208);
        sub_20BDAAE08(v211, type metadata accessor for ButtonAction.ActionType);
        return v156 & 1;
      }

      v253 = sub_20C13DFF4();

      v211 = v305;
      if (v253)
      {
        goto LABEL_89;
      }

      v263 = *(v205 + 8);
      v263(v210, v208);
      v263(v357, v208);
      sub_20BDAAE08(v211, type metadata accessor for ButtonAction.ActionType);
      goto LABEL_77;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_65;
      }

      goto LABEL_76;
    default:
      sub_20BDAAE68(v102, v98, type metadata accessor for ButtonAction.ActionType);
      v105 = v373;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_20B520158(v98, &unk_27C762300);
        goto LABEL_76;
      }

      v235 = *(v321 + 48);
      v236 = v322;
      sub_20B5DF134(v98, v322, &unk_27C762300);
      sub_20B5DF134(v105, v236 + v235, &unk_27C762300);
      v237 = v323;
      v238 = *(v323 + 48);
      v239 = v324;
      if (v238(v236, 1, v324) == 1)
      {
        if (v238(v236 + v235, 1, v239) == 1)
        {
          sub_20B520158(v236, &unk_27C762300);
LABEL_65:
          v223 = v102;
          goto LABEL_66;
        }
      }

      else
      {
        v256 = v316;
        sub_20B52F9E8(v236, v316, &unk_27C762300);
        if (v238(v236 + v235, 1, v239) != 1)
        {
          v268 = v236 + v235;
          v269 = v310;
          (*(v237 + 32))(v310, v268, v239);
          sub_20BDA65F4(&qword_27C768188, MEMORY[0x277D51CF0]);
          v270 = sub_20C13C894();
          v271 = *(v237 + 8);
          v271(v269, v239);
          v271(v256, v239);
          sub_20B520158(v236, &unk_27C762300);
          if (v270)
          {
            goto LABEL_65;
          }

LABEL_117:
          sub_20BDAAE08(v102, type metadata accessor for ButtonAction.ActionType);
LABEL_77:
          v156 = 0;
          return v156 & 1;
        }

        (*(v237 + 8))(v256, v239);
      }

      sub_20B520158(v236, &qword_27C768160);
      goto LABEL_117;
  }
}

uint64_t sub_20BDAAE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BDAAE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BDAAED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_20BDAAF4C(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v106 = a4;
  v103 = a1;
  v104 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  MEMORY[0x28223BE20](v7);
  v9 = &v95 - v8;
  v108 = sub_20C133244();
  v105 = *(v108 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v95 - v15;
  MEMORY[0x28223BE20](v17);
  v21 = &v95 - v20;
  v22 = 0;
  v23 = (a2 >> 57) & 0x78 | a2 & 7;
  if (v23 <= 29)
  {
    if (v23 == 28)
    {
      if (((*((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) >> 57) & 0x78 | *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) & 7) == 0x20)
      {
        v98 = v5;
        v101 = v18;
        v102 = v19;
        v29 = swift_projectBox();
        sub_20B52F9E8(v29, v9, &unk_27C772250);
        v30 = &v9[*(v7 + 64)];
        v31 = *(v30 + 1);
        v103 = *v30;
        v99 = *(v30 + 2);
        v100 = v31;

        v32 = v102;

        sub_20B6222E8(*&v9[*(v7 + 80)], *&v9[*(v7 + 80) + 8]);

        v33 = *(v32 + 32);
        v34 = v9;
        v35 = v101;
        v33(v16, v34);

        v36 = sub_20C133FF4();
        if (v38 == -1)
        {
          (*(v32 + 8))(v16, v35);
        }

        else
        {
          v39 = v32;
          if (v38)
          {
            v40 = sub_20C138104();
            v41 = sub_20C138104();
            v43 = (v32 + 16);
            v42 = *(v39 + 16);
            v103 = v42;
            v97 = v33;
            if (v40 == v41)
            {
              v99 = 0;
              v100 = 0;
            }

            else
            {
              (v103)(v13, v16, v35);
              v78 = (*(v39 + 80) + 24) & ~*(v39 + 80);
              v79 = swift_allocObject();
              v96 = v43;
              v80 = v98;
              v79[2] = v98;
              v100 = v79;
              (v33)(v79 + v78, v13, v35);
              v81 = v80;
              v42 = v103;
              v99 = sub_20BDC75B8;
            }

            v82 = v35;
            (v42)(v13, v16, v35);
            sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8]);
            sub_20C13DC04();
            v83 = type metadata accessor for ContextMenuItemIdentifier();
            v84 = objc_allocWithZone(v83);
            sub_20B51D968(v111, v84 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
            v110.receiver = v84;
            v110.super_class = v83;
            v96 = objc_msgSendSuper2(&v110, sel_init);
            sub_20B51D9C4(v111);
            v95 = sub_20B51C88C(0, &qword_27C768D70);
            v85 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (v103)(v13, v16, v82);
            v86 = v105;
            (*(v105 + 16))(v107, v104, v108);
            v87 = (*(v102 + 80) + 24) & ~*(v102 + 80);
            v88 = (v12 + *(v86 + 80) + v87) & ~*(v86 + 80);
            v89 = (v10 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
            v90 = swift_allocObject();
            *(v90 + 16) = v85;
            v91 = v13;
            v92 = v101;
            v97(v90 + v87, v91, v101);
            (*(v86 + 32))(v90 + v88, v107, v108);
            v93 = v106;
            *(v90 + v89) = v106;
            *(v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
            v94 = v93;

            v22 = sub_20B9DE930(v96, v99, v100, sub_20BDC75C4, v90);
            (*(v102 + 8))(v16, v92);
            goto LABEL_22;
          }

          sub_20B584078(v36, v37, v38);
          (*(v32 + 8))(v16, v35);
        }
      }

      return 0;
    }
  }

  else
  {
    v24 = v23 - 31;
    if (v24 > 0x2E)
    {
      v25 = v19;
      v26 = v18;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
      v27 = swift_projectBox() + *(v44 + 48);
      goto LABEL_13;
    }

    if (((1 << v24) & 0x77FFFFFFFFFDLL) == 0)
    {
      v25 = v19;
      v26 = v18;
      v27 = swift_projectBox();
LABEL_13:
      v45 = *(v25 + 16);
      v45(v21, v27, v26);
      v46 = sub_20C133FF4();
      if (v48 != -1)
      {
        if (v48)
        {
          v49 = sub_20C138104();
          v50 = sub_20C138104();
          v102 = v25;
          if (v49 == v50)
          {
            v99 = 0;
            v100 = 0;
          }

          else
          {
            v51 = v26;
            v45(v13, v21, v26);
            v52 = v25;
            v53 = *(v25 + 80);
            v54 = v45;
            v55 = (v53 + 24) & ~v53;
            v56 = swift_allocObject();
            v56[2] = v5;
            v57 = *(v52 + 32);
            v100 = v56;
            v58 = v56 + v55;
            v45 = v54;
            v26 = v51;
            v57(v58, v13, v51);
            v59 = v5;
            v99 = sub_20BDC8CFC;
          }

          v60 = v26;
          v45(v13, v21, v26);
          sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8]);
          v101 = v26;
          sub_20C13DC04();
          v61 = type metadata accessor for ContextMenuItemIdentifier();
          v62 = v45;
          v63 = objc_allocWithZone(v61);
          sub_20B51D968(v111, v63 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
          v109.receiver = v63;
          v109.super_class = v61;
          v98 = objc_msgSendSuper2(&v109, sel_init);
          sub_20B51D9C4(v111);
          v97 = sub_20B51C88C(0, &qword_27C768D70);
          v64 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v62(v13, v21, v60);
          v65 = v105;
          (*(v105 + 16))(v107, v104, v108);
          v66 = v102;
          v67 = (*(v102 + 80) + 24) & ~*(v102 + 80);
          v68 = (v12 + *(v65 + 80) + v67) & ~*(v65 + 80);
          v69 = (v10 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
          v71 = swift_allocObject();
          *(v71 + 16) = v64;
          v72 = v13;
          v73 = v101;
          (*(v66 + 32))(v71 + v67, v72, v101);
          (*(v65 + 32))(v71 + v68, v107, v108);
          v74 = v106;
          *(v71 + v69) = v106;
          v75 = v103;
          *(v71 + v70) = v103;

          v76 = v74;
          v77 = v75;
          v22 = sub_20B9DE930(v98, v99, v100, sub_20BDC8D58, v71);
          (*(v66 + 8))(v21, v73);
LABEL_22:

          return v22;
        }

        sub_20B584078(v46, v47, v48);
      }

      (*(v25 + 8))(v21, v26);
      return 0;
    }
  }

  return v22;
}

id sub_20BDAB948(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v106 = a4;
  v103 = a1;
  v104 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  MEMORY[0x28223BE20](v7);
  v9 = &v95 - v8;
  v108 = sub_20C133244();
  v105 = *(v108 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v95 - v15;
  MEMORY[0x28223BE20](v17);
  v21 = &v95 - v20;
  v22 = 0;
  v23 = (a2 >> 57) & 0x78 | a2 & 7;
  if (v23 <= 29)
  {
    if (v23 == 28)
    {
      if (((*((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) >> 57) & 0x78 | *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) & 7) == 0x20)
      {
        v98 = v5;
        v101 = v18;
        v102 = v19;
        v29 = swift_projectBox();
        sub_20B52F9E8(v29, v9, &unk_27C772250);
        v30 = &v9[*(v7 + 64)];
        v31 = *(v30 + 1);
        v103 = *v30;
        v99 = *(v30 + 2);
        v100 = v31;

        v32 = v102;

        sub_20B6222E8(*&v9[*(v7 + 80)], *&v9[*(v7 + 80) + 8]);

        v33 = *(v32 + 32);
        v34 = v9;
        v35 = v101;
        v33(v16, v34);

        v36 = sub_20C133FF4();
        if (v38 == -1)
        {
          (*(v32 + 8))(v16, v35);
        }

        else
        {
          v39 = v32;
          if (v38)
          {
            v40 = sub_20C138104();
            v41 = sub_20C138104();
            v43 = (v32 + 16);
            v42 = *(v39 + 16);
            v103 = v42;
            v97 = v33;
            if (v40 == v41)
            {
              v99 = 0;
              v100 = 0;
            }

            else
            {
              (v103)(v13, v16, v35);
              v78 = (*(v39 + 80) + 24) & ~*(v39 + 80);
              v79 = swift_allocObject();
              v96 = v43;
              v80 = v98;
              v79[2] = v98;
              v100 = v79;
              (v33)(v79 + v78, v13, v35);
              v81 = v80;
              v42 = v103;
              v99 = sub_20BDC6DAC;
            }

            v82 = v35;
            (v42)(v13, v16, v35);
            sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8]);
            sub_20C13DC04();
            v83 = type metadata accessor for ContextMenuItemIdentifier();
            v84 = objc_allocWithZone(v83);
            sub_20B51D968(v111, v84 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
            v110.receiver = v84;
            v110.super_class = v83;
            v96 = objc_msgSendSuper2(&v110, sel_init);
            sub_20B51D9C4(v111);
            v95 = sub_20B51C88C(0, &qword_27C768D70);
            v85 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (v103)(v13, v16, v82);
            v86 = v105;
            (*(v105 + 16))(v107, v104, v108);
            v87 = (*(v102 + 80) + 24) & ~*(v102 + 80);
            v88 = (v12 + *(v86 + 80) + v87) & ~*(v86 + 80);
            v89 = (v10 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
            v90 = swift_allocObject();
            *(v90 + 16) = v85;
            v91 = v13;
            v92 = v101;
            v97(v90 + v87, v91, v101);
            (*(v86 + 32))(v90 + v88, v107, v108);
            v93 = v106;
            *(v90 + v89) = v106;
            *(v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
            v94 = v93;

            v22 = sub_20B9DE930(v96, v99, v100, sub_20BDC6DB8, v90);
            (*(v102 + 8))(v16, v92);
            goto LABEL_22;
          }

          sub_20B584078(v36, v37, v38);
          (*(v32 + 8))(v16, v35);
        }
      }

      return 0;
    }
  }

  else
  {
    v24 = v23 - 31;
    if (v24 > 0x2E)
    {
      v25 = v19;
      v26 = v18;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
      v27 = swift_projectBox() + *(v44 + 48);
      goto LABEL_13;
    }

    if (((1 << v24) & 0x77FFFFFFFFFDLL) == 0)
    {
      v25 = v19;
      v26 = v18;
      v27 = swift_projectBox();
LABEL_13:
      v45 = *(v25 + 16);
      v45(v21, v27, v26);
      v46 = sub_20C133FF4();
      if (v48 != -1)
      {
        if (v48)
        {
          v49 = sub_20C138104();
          v50 = sub_20C138104();
          v102 = v25;
          if (v49 == v50)
          {
            v99 = 0;
            v100 = 0;
          }

          else
          {
            v51 = v26;
            v45(v13, v21, v26);
            v52 = v25;
            v53 = *(v25 + 80);
            v54 = v45;
            v55 = (v53 + 24) & ~v53;
            v56 = swift_allocObject();
            v56[2] = v5;
            v57 = *(v52 + 32);
            v100 = v56;
            v58 = v56 + v55;
            v45 = v54;
            v26 = v51;
            v57(v58, v13, v51);
            v59 = v5;
            v99 = sub_20BDC8CF8;
          }

          v60 = v26;
          v45(v13, v21, v26);
          sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8]);
          v101 = v26;
          sub_20C13DC04();
          v61 = type metadata accessor for ContextMenuItemIdentifier();
          v62 = v45;
          v63 = objc_allocWithZone(v61);
          sub_20B51D968(v111, v63 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
          v109.receiver = v63;
          v109.super_class = v61;
          v98 = objc_msgSendSuper2(&v109, sel_init);
          sub_20B51D9C4(v111);
          v97 = sub_20B51C88C(0, &qword_27C768D70);
          v64 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v62(v13, v21, v60);
          v65 = v105;
          (*(v105 + 16))(v107, v104, v108);
          v66 = v102;
          v67 = (*(v102 + 80) + 24) & ~*(v102 + 80);
          v68 = (v12 + *(v65 + 80) + v67) & ~*(v65 + 80);
          v69 = (v10 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
          v71 = swift_allocObject();
          *(v71 + 16) = v64;
          v72 = v13;
          v73 = v101;
          (*(v66 + 32))(v71 + v67, v72, v101);
          (*(v65 + 32))(v71 + v68, v107, v108);
          v74 = v106;
          *(v71 + v69) = v106;
          v75 = v103;
          *(v71 + v70) = v103;

          v76 = v74;
          v77 = v75;
          v22 = sub_20B9DE930(v98, v99, v100, sub_20BDC8D44, v71);
          (*(v66 + 8))(v21, v73);
LABEL_22:

          return v22;
        }

        sub_20B584078(v46, v47, v48);
      }

      (*(v25 + 8))(v21, v26);
      return 0;
    }
  }

  return v22;
}

id sub_20BDAC344(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v106 = a4;
  v103 = a1;
  v104 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  MEMORY[0x28223BE20](v7);
  v9 = &v95 - v8;
  v108 = sub_20C133244();
  v105 = *(v108 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v95 - v15;
  MEMORY[0x28223BE20](v17);
  v21 = &v95 - v20;
  v22 = 0;
  v23 = (a2 >> 57) & 0x78 | a2 & 7;
  if (v23 <= 29)
  {
    if (v23 == 28)
    {
      if (((*((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) >> 57) & 0x78 | *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) & 7) == 0x20)
      {
        v98 = v5;
        v101 = v18;
        v102 = v19;
        v29 = swift_projectBox();
        sub_20B52F9E8(v29, v9, &unk_27C772250);
        v30 = &v9[*(v7 + 64)];
        v31 = *(v30 + 1);
        v103 = *v30;
        v99 = *(v30 + 2);
        v100 = v31;

        v32 = v102;

        sub_20B6222E8(*&v9[*(v7 + 80)], *&v9[*(v7 + 80) + 8]);

        v33 = *(v32 + 32);
        v34 = v9;
        v35 = v101;
        v33(v16, v34);

        v36 = sub_20C133FF4();
        if (v38 == -1)
        {
          (*(v32 + 8))(v16, v35);
        }

        else
        {
          v39 = v32;
          if (v38)
          {
            v40 = sub_20C138104();
            v41 = sub_20C138104();
            v43 = (v32 + 16);
            v42 = *(v39 + 16);
            v103 = v42;
            v97 = v33;
            if (v40 == v41)
            {
              v99 = 0;
              v100 = 0;
            }

            else
            {
              (v103)(v13, v16, v35);
              v78 = (*(v39 + 80) + 24) & ~*(v39 + 80);
              v79 = swift_allocObject();
              v96 = v43;
              v80 = v98;
              v79[2] = v98;
              v100 = v79;
              (v33)(v79 + v78, v13, v35);
              v81 = v80;
              v42 = v103;
              v99 = sub_20BDC6658;
            }

            v82 = v35;
            (v42)(v13, v16, v35);
            sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8]);
            sub_20C13DC04();
            v83 = type metadata accessor for ContextMenuItemIdentifier();
            v84 = objc_allocWithZone(v83);
            sub_20B51D968(v111, v84 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
            v110.receiver = v84;
            v110.super_class = v83;
            v96 = objc_msgSendSuper2(&v110, sel_init);
            sub_20B51D9C4(v111);
            v95 = sub_20B51C88C(0, &qword_27C768D70);
            v85 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (v103)(v13, v16, v82);
            v86 = v105;
            (*(v105 + 16))(v107, v104, v108);
            v87 = (*(v102 + 80) + 24) & ~*(v102 + 80);
            v88 = (v12 + *(v86 + 80) + v87) & ~*(v86 + 80);
            v89 = (v10 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
            v90 = swift_allocObject();
            *(v90 + 16) = v85;
            v91 = v13;
            v92 = v101;
            v97(v90 + v87, v91, v101);
            (*(v86 + 32))(v90 + v88, v107, v108);
            v93 = v106;
            *(v90 + v89) = v106;
            *(v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
            v94 = v93;

            v22 = sub_20B9DE930(v96, v99, v100, sub_20BDC6664, v90);
            (*(v102 + 8))(v16, v92);
            goto LABEL_22;
          }

          sub_20B584078(v36, v37, v38);
          (*(v32 + 8))(v16, v35);
        }
      }

      return 0;
    }
  }

  else
  {
    v24 = v23 - 31;
    if (v24 > 0x2E)
    {
      v25 = v19;
      v26 = v18;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
      v27 = swift_projectBox() + *(v44 + 48);
      goto LABEL_13;
    }

    if (((1 << v24) & 0x77FFFFFFFFFDLL) == 0)
    {
      v25 = v19;
      v26 = v18;
      v27 = swift_projectBox();
LABEL_13:
      v45 = *(v25 + 16);
      v45(v21, v27, v26);
      v46 = sub_20C133FF4();
      if (v48 != -1)
      {
        if (v48)
        {
          v49 = sub_20C138104();
          v50 = sub_20C138104();
          v102 = v25;
          if (v49 == v50)
          {
            v99 = 0;
            v100 = 0;
          }

          else
          {
            v51 = v26;
            v45(v13, v21, v26);
            v52 = v25;
            v53 = *(v25 + 80);
            v54 = v45;
            v55 = (v53 + 24) & ~v53;
            v56 = swift_allocObject();
            v56[2] = v5;
            v57 = *(v52 + 32);
            v100 = v56;
            v58 = v56 + v55;
            v45 = v54;
            v26 = v51;
            v57(v58, v13, v51);
            v59 = v5;
            v99 = sub_20BDC8CF4;
          }

          v60 = v26;
          v45(v13, v21, v26);
          sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8]);
          v101 = v26;
          sub_20C13DC04();
          v61 = type metadata accessor for ContextMenuItemIdentifier();
          v62 = v45;
          v63 = objc_allocWithZone(v61);
          sub_20B51D968(v111, v63 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
          v109.receiver = v63;
          v109.super_class = v61;
          v98 = objc_msgSendSuper2(&v109, sel_init);
          sub_20B51D9C4(v111);
          v97 = sub_20B51C88C(0, &qword_27C768D70);
          v64 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v62(v13, v21, v60);
          v65 = v105;
          (*(v105 + 16))(v107, v104, v108);
          v66 = v102;
          v67 = (*(v102 + 80) + 24) & ~*(v102 + 80);
          v68 = (v12 + *(v65 + 80) + v67) & ~*(v65 + 80);
          v69 = (v10 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
          v71 = swift_allocObject();
          *(v71 + 16) = v64;
          v72 = v13;
          v73 = v101;
          (*(v66 + 32))(v71 + v67, v72, v101);
          (*(v65 + 32))(v71 + v68, v107, v108);
          v74 = v106;
          *(v71 + v69) = v106;
          v75 = v103;
          *(v71 + v70) = v103;

          v76 = v74;
          v77 = v75;
          v22 = sub_20B9DE930(v98, v99, v100, sub_20BDC8D38, v71);
          (*(v66 + 8))(v21, v73);
LABEL_22:

          return v22;
        }

        sub_20B584078(v46, v47, v48);
      }

      (*(v25 + 8))(v21, v26);
      return 0;
    }
  }

  return v22;
}

id sub_20BDACD40(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = a6;
  v49 = a7;
  v46 = a4;
  v47 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_20C134014();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  v23 = 0;
  v24 = (a2 >> 57) & 0x78 | a2 & 7;
  if (v24 <= 29)
  {
    if (v24 == 28)
    {
      if (((*((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) >> 57) & 0x78 | *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) & 7) != 0x20)
      {
        return 0;
      }

      v42 = v8;
      v45 = v20;
      v29 = swift_projectBox();
      sub_20B52F9E8(v29, v14, &unk_27C772250);
      v30 = &v14[*(v12 + 64)];
      v31 = *v30;
      v43 = *(v30 + 1);
      v44 = v31;
      v32 = *(v30 + 2);

      sub_20B6222E8(*&v14[*(v12 + 80)], *&v14[*(v12 + 80) + 8]);

      v33 = v45;
      (*(v16 + 32))(v18, v14);

      v34 = sub_20C133FF4();
      if (v36 == -1)
      {
        (*(v16 + 8))(v18, v33);
        return 0;
      }

      v37 = (v16 + 8);
      if ((v36 & 1) == 0)
      {
        sub_20B584078(v34, v35, v36);
        (*v37)(v18, v33);
        return 0;
      }

      v23 = sub_20BDAD5F4(v18, a3, v46, 0, v47, v48, v49);
      (*v37)(v18, v33);
    }
  }

  else
  {
    v25 = v24 - 31;
    if (v25 > 0x2E)
    {
      v26 = v20;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
      v27 = swift_projectBox() + *(v38 + 48);
      goto LABEL_12;
    }

    if (((1 << v25) & 0x77FFFFFFFFFDLL) == 0)
    {
      v26 = v20;
      v27 = swift_projectBox();
LABEL_12:
      (*(v16 + 16))(v22, v27, v26);
      v39 = sub_20C133FF4();
      if (v41 != -1)
      {
        if (v41)
        {
          v23 = sub_20BDAD5F4(v22, a3, v46, a1, v47, v48, v49);
          (*(v16 + 8))(v22, v26);
          return v23;
        }

        sub_20B584078(v39, v40, v41);
      }

      (*(v16 + 8))(v22, v26);
      return 0;
    }
  }

  return v23;
}

id sub_20BDAD180(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  WitnessTable = swift_getWitnessTable();

  return sub_20BDACD40(a1, a2, a3, a4, a5, WitnessTable, a6);
}

uint64_t sub_20BDAD214(uint64_t a1, void *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_20BDC5150(a2, a3, WitnessTable);
}

uint64_t sub_20BDAD280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20B51F1D8(a1, v8);
  type metadata accessor for ContextMenuItemIdentifier();
  if (swift_dynamicCast())
  {
    sub_20C13DBD4();

    v3 = sub_20C134014();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a2, v4 ^ 1u, 1, v3);
  }

  else
  {
    v6 = sub_20C134014();
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

uint64_t sub_20BDAD46C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_20BDC558C, v4);
}

void sub_20BDAD500(uint64_t a1, uint64_t a2)
{
  sub_20B51C88C(0, &qword_27C764F30);
  v3 = sub_20C13CC54();
  (*(a2 + 16))(a2, v3);
}

id sub_20BDAD5F4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v56 = a4;
  v57 = a3;
  v54 = a2;
  v51 = sub_20C133244();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v52 = v11;
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C134014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v60 = a5;
  v61 = v7;
  v65[0] = v7;
  v16 = *(a6 + 48);
  v58 = a6;
  v16(a5, a6, v15);
  v17 = sub_20C138104();
  v18 = sub_20C138104();
  v19 = 0;
  v59 = 0;
  v63 = v13;
  v20 = *(v13 + 16);
  if (v17 != v18)
  {
    v20(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
    v21 = v63;
    v22 = (*(v63 + 80) + 48) & ~*(v63 + 80);
    v23 = swift_allocObject();
    v24 = v58;
    v23[2] = v60;
    v23[3] = v24;
    v25 = a1;
    v26 = v61;
    v23[4] = v62;
    v23[5] = v26;
    v27 = *(v21 + 32);
    v59 = v23;
    v27(v23 + v22, &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    a1 = v25;
    swift_unknownObjectRetain();
    v19 = sub_20BDC5334;
  }

  v50 = v19;
  v20(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8]);
  v46 = v12;
  sub_20C13DC04();
  v28 = type metadata accessor for ContextMenuItemIdentifier();
  v29 = objc_allocWithZone(v28);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v29;
  sub_20B51D968(v65, v29 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
  v64.receiver = v30;
  v64.super_class = v28;
  v49 = objc_msgSendSuper2(&v64, sel_init);
  sub_20B51D9C4(v65);
  v48 = sub_20B51C88C(0, &qword_27C768D70);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v32 = v53;
  v33 = v55;
  v34 = v51;
  (*(v53 + 16))(v55, v54, v51);
  v35 = v63;
  v36 = (*(v63 + 80) + 48) & ~*(v63 + 80);
  v37 = (v14 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v52 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v58;
  *(v39 + 2) = v60;
  *(v39 + 3) = v40;
  *(v39 + 4) = v62;
  *(v39 + 5) = v31;
  (*(v35 + 32))(&v39[v36], v47, v46);
  (*(v32 + 32))(&v39[v37], v33, v34);
  v41 = v56;
  v42 = v57;
  *&v39[v38] = v57;
  *&v39[(v38 + 15) & 0xFFFFFFFFFFFFFFF8] = v41;
  v43 = v41;
  v44 = v42;
  return sub_20B9DE930(v49, v50, v59, sub_20BDC53BC, v39);
}

uint64_t sub_20BDADA70()
{
  v21 = type metadata accessor for NavigationRequested();
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C133E94();
  v8 = v7;
  v10 = v9;
  v25 = 1;
  v22 = v6;
  v23 = v7;
  v11 = v9 & 1;
  v24 = v9 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v6, v8, v11);
    *v5 = sub_20C133E44();
    v5[1] = v12;
  }

  else
  {
    v25 = 2;
    v22 = v6;
    v23 = v8;
    v24 = v11;
    if (sub_20C133C14() & 1) != 0 || (v25 = 4, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()) || (v25 = 7, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()))
    {
      sub_20B583F4C(v6, v8, v10 & 1);
      *v5 = sub_20C133E44();
      v5[1] = v13;
    }

    else
    {
      v25 = 8;
      v22 = v6;
      v23 = v8;
      v24 = v10 & 1;
      v14 = sub_20C133C14();
      result = sub_20B583F4C(v6, v8, v10 & 1);
      if ((v14 & 1) == 0)
      {
        return result;
      }

      *v5 = sub_20C133E44();
      v5[1] = v16;
      type metadata accessor for WorkoutNavigationResource();
      swift_storeEnumTagMultiPayload();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v5, v3, type metadata accessor for NavigationResource);
  v3[v1[5]] = 1;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  v3[v1[7]] = 0;
  v3[v1[8]] = 0;
  *&v3[v1[9]] = 0;
  swift_getObjectType();
  v17 = v20;
  sub_20BDC6590(v3, v20, type metadata accessor for NavigationRequest);
  sub_20BDC6A24(&unk_27C7706F0, type metadata accessor for NavigationRequested);
  sub_20C13A764();
  sub_20BDC65F8(v17, type metadata accessor for NavigationRequested);
  sub_20BDC65F8(v3, type metadata accessor for NavigationRequest);
  return sub_20BDC65F8(v5, type metadata accessor for NavigationResource);
}

uint64_t sub_20BDADEE4()
{
  v21 = type metadata accessor for NavigationRequested();
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C133E94();
  v8 = v7;
  v10 = v9;
  v25 = 1;
  v22 = v6;
  v23 = v7;
  v11 = v9 & 1;
  v24 = v9 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v6, v8, v11);
    *v5 = sub_20C133E44();
    v5[1] = v12;
  }

  else
  {
    v25 = 2;
    v22 = v6;
    v23 = v8;
    v24 = v11;
    if (sub_20C133C14() & 1) != 0 || (v25 = 4, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()) || (v25 = 7, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()))
    {
      sub_20B583F4C(v6, v8, v10 & 1);
      *v5 = sub_20C133E44();
      v5[1] = v13;
    }

    else
    {
      v25 = 8;
      v22 = v6;
      v23 = v8;
      v24 = v10 & 1;
      v14 = sub_20C133C14();
      result = sub_20B583F4C(v6, v8, v10 & 1);
      if ((v14 & 1) == 0)
      {
        return result;
      }

      *v5 = sub_20C133E44();
      v5[1] = v16;
      type metadata accessor for WorkoutNavigationResource();
      swift_storeEnumTagMultiPayload();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v5, v3, type metadata accessor for NavigationResource);
  v3[v1[5]] = 1;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  v3[v1[7]] = 0;
  v3[v1[8]] = 0;
  *&v3[v1[9]] = 0;
  swift_getObjectType();
  v17 = v20;
  sub_20BDC6590(v3, v20, type metadata accessor for NavigationRequest);
  sub_20BDC6A24(&unk_27C7706F0, type metadata accessor for NavigationRequested);
  sub_20C13A764();
  sub_20BDC65F8(v17, type metadata accessor for NavigationRequested);
  sub_20BDC65F8(v3, type metadata accessor for NavigationRequest);
  return sub_20BDC65F8(v5, type metadata accessor for NavigationResource);
}

uint64_t sub_20BDAE358()
{
  v21 = type metadata accessor for NavigationRequested();
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C133E94();
  v8 = v7;
  v10 = v9;
  v25 = 1;
  v22 = v6;
  v23 = v7;
  v11 = v9 & 1;
  v24 = v9 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v6, v8, v11);
    *v5 = sub_20C133E44();
    v5[1] = v12;
  }

  else
  {
    v25 = 2;
    v22 = v6;
    v23 = v8;
    v24 = v11;
    if (sub_20C133C14() & 1) != 0 || (v25 = 4, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()) || (v25 = 7, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()))
    {
      sub_20B583F4C(v6, v8, v10 & 1);
      *v5 = sub_20C133E44();
      v5[1] = v13;
    }

    else
    {
      v25 = 8;
      v22 = v6;
      v23 = v8;
      v24 = v10 & 1;
      v14 = sub_20C133C14();
      result = sub_20B583F4C(v6, v8, v10 & 1);
      if ((v14 & 1) == 0)
      {
        return result;
      }

      *v5 = sub_20C133E44();
      v5[1] = v16;
      type metadata accessor for WorkoutNavigationResource();
      swift_storeEnumTagMultiPayload();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v5, v3, type metadata accessor for NavigationResource);
  v3[v1[5]] = 1;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  v3[v1[7]] = 0;
  v3[v1[8]] = 0;
  *&v3[v1[9]] = 0;
  swift_getObjectType();
  v17 = v20;
  sub_20BDC6590(v3, v20, type metadata accessor for NavigationRequest);
  sub_20BDC6A24(&unk_27C7706F0, type metadata accessor for NavigationRequested);
  sub_20C13A764();
  sub_20BDC65F8(v17, type metadata accessor for NavigationRequested);
  sub_20BDC65F8(v3, type metadata accessor for NavigationRequest);
  return sub_20BDC65F8(v5, type metadata accessor for NavigationResource);
}

uint64_t sub_20BDAE7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v3 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v23);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20C133E94();
  v10 = v9;
  v12 = v11;
  v30 = 1;
  v27 = v8;
  v28 = v9;
  v13 = v11 & 1;
  v29 = v11 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v8, v10, v13);
    *v7 = sub_20C133E44();
    v7[1] = v14;
  }

  else
  {
    v30 = 2;
    v27 = v8;
    v28 = v10;
    v29 = v13;
    if (sub_20C133C14() & 1) != 0 || (v30 = 4, v27 = v8, v28 = v10, v29 = v12 & 1, (sub_20C133C14()) || (v30 = 7, v27 = v8, v28 = v10, v29 = v12 & 1, (sub_20C133C14()))
    {
      sub_20B583F4C(v8, v10, v12 & 1);
      *v7 = sub_20C133E44();
      v7[1] = v15;
    }

    else
    {
      v30 = 8;
      v27 = v8;
      v28 = v10;
      v29 = v12 & 1;
      v16 = sub_20C133C14();
      result = sub_20B583F4C(v8, v10, v12 & 1);
      if ((v16 & 1) == 0)
      {
        return result;
      }

      *v7 = sub_20C133E44();
      v7[1] = v18;
      type metadata accessor for WorkoutNavigationResource();
      swift_storeEnumTagMultiPayload();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v7, v5, type metadata accessor for NavigationResource);
  v5[v3[5]] = 1;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  v5[v3[7]] = 0;
  v5[v3[8]] = 0;
  *&v5[v3[9]] = 0;
  v27 = v24;
  (*(v25 + 32))(v26, v25);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 336);
  v21 = swift_checkMetadataState();
  v20(v5, v21, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  sub_20BDC65F8(v5, type metadata accessor for NavigationRequest);
  return sub_20BDC65F8(v7, type metadata accessor for NavigationResource);
}

id sub_20BDAEBF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_20C134014();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *a3);
  (*(v11 + 16))(v9, a2, v7);

  LODWORD(a2) = sub_20C1380F4();
  v12 = objc_allocWithZone(type metadata accessor for CatalogLockupPreviewProvider());
  v13 = sub_20BCA5398(v10, v9, a2);

  return v13;
}

id sub_20BDAED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C134014();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = a1;
  v13 = (*(a4 + 40))(a3, a4, v10);
  (*(v9 + 16))(v12, a2, v8);
  LODWORD(a1) = sub_20C1380F4();
  v14 = objc_allocWithZone(type metadata accessor for CatalogLockupPreviewProvider());
  v15 = sub_20BCA5398(v13, v12, a1);

  return v15;
}

uint64_t sub_20BDAEE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v13 = Strong;
  v14 = a7(a3, a4, a5, a6);

  return v14;
}

uint64_t sub_20BDAEEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v15 = sub_20BDB04D8(a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_20BDAEF9C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v55 = a2;
  v54 = sub_20C134014();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = v9;
  v52 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20BDB09BC(a1);
  v11 = sub_20BDB1998(a1);
  v56 = a1;
  v12 = sub_20BDB31B0(a1);
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  v14 = 0;
  if (v13 && v4)
  {
    v15 = v13;
    v49 = sub_20B51C88C(0, &qword_27C7713A0);
    v50 = a4;
    __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer], *&v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24]);
    v45 = a3;
    v53 = v4;
    v48 = v4;
    v47 = sub_20C138D34();
    v46 = v16;
    v17 = sub_20C13C914();
    v44[1] = [objc_opt_self() systemImageNamed_];

    v18 = swift_allocObject();
    *(v18 + 24) = v15;
    swift_unknownObjectWeakInit();
    v19 = v52;
    v20 = v54;
    (*(v8 + 16))(v52, v56, v54);
    v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v22 = (v51 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    (*(v8 + 32))(v23 + v21, v19, v20);
    v24 = v45;
    *(v23 + v22) = v45;
    v25 = v24;
    a4 = v50;
    v26 = sub_20C13D624();
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20C14F580;
    *(v27 + 32) = v26;
    v14 = sub_20C13D554();
  }

  if (a4)
  {
    v28 = a4;
    v29 = sub_20BDB44B0(v56, v55, v28);

    v30 = v29;
  }

  else
  {
    v29 = 0;
  }

  v58[4] = 0;
  v58[5] = v10;
  v58[6] = v11;
  v58[7] = v12;
  v58[8] = v14;
  v58[9] = v29;
  v31 = v12;
  v32 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v33 = v11;
  v34 = v14;
  v35 = v10;
  v36 = v33;
  v37 = v31;
  v38 = 0;
LABEL_8:
  if (v38 <= 6)
  {
    v39 = 6;
  }

  else
  {
    v39 = v38;
  }

  while (v38 != 6)
  {
    if (v39 == v38)
    {
      __break(1u);
LABEL_22:
      if (sub_20C13DB34())
      {
        sub_20B51C88C(0, &qword_27C764F30);

        sub_20C13DE34();

        goto LABEL_20;
      }

      goto LABEL_24;
    }

    v40 = v58[v38++ + 4];
    if (v40)
    {
      v41 = v40;
      MEMORY[0x20F2F43B0]();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v32 = v57;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE58);
  swift_arrayDestroy();
  if (v32 >> 62)
  {
    goto LABEL_22;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
LABEL_20:

    sub_20B51C88C(0, &unk_27C76FED0);
    v42 = sub_20C13D554();

    return v42;
  }

LABEL_24:

  return 0;
}

uint64_t sub_20BDAF5A0(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v51 = sub_20C134014();
  v10 = *(v51 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v51);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider];
  v62 = type metadata accessor for TVWorkoutPlanDetailPageDataProvider();
  v63 = &off_2822EA050;
  v61[0] = v13;
  __swift_project_boxed_opaque_existential_1(v61, v62);

  v14 = sub_20BE1BB60(a1);
  v58 = a4;
  v52 = a3;
  v50 = v11;
  if (v14 >> 62)
  {
LABEL_23:
    sub_20B51C88C(0, &qword_27C764F30);
    sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
  }

  v59 = sub_20B51C88C(0, &unk_27C76FED0);
  v57 = sub_20C13D554();
  v53 = v57;
  __swift_destroy_boxed_opaque_existential_1(v61);
  v56 = sub_20BDB0D80(a1);
  v55 = sub_20BDB1FC4(a1);
  v54 = sub_20BDB3558(a1);
  swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (!v15)
  {
    v29 = 0;
    v30 = v58;
    if (v58)
    {
      goto LABEL_5;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v16 = v15;
  v48 = sub_20B51C88C(0, &qword_27C7713A0);
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer], *&v5[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer + 24]);
  v49 = a2;
  v45 = v5;
  v47 = sub_20C138D34();
  v46 = v17;
  v18 = sub_20C13C914();
  v19 = [objc_opt_self() systemImageNamed_];

  v20 = swift_allocObject();
  *(v20 + 24) = v16;
  swift_unknownObjectWeakInit();
  v21 = v51;
  (v10[2])(v12, a1, v51);
  v22 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v23 = (v50 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (v10[4])(v24 + v22, v12, v21);
  v25 = v52;
  *(v24 + v23) = v52;
  v26 = v25;
  a2 = v49;
  v27 = sub_20C13D624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14F580;
  *(v28 + 32) = v27;
  v29 = sub_20C13D554();

  v30 = v58;
  if (!v58)
  {
    goto LABEL_7;
  }

LABEL_5:
  v31 = v30;
  v5 = sub_20BDB473C(a1, a2, v31);

  v32 = v5;
LABEL_8:
  v33 = v56;
  v60[4] = v57;
  v60[5] = v56;
  v35 = v54;
  v34 = v55;
  v60[6] = v55;
  v60[7] = v54;
  v60[8] = v29;
  v60[9] = v5;
  a1 = MEMORY[0x277D84F90];
  v61[0] = MEMORY[0x277D84F90];
  v10 = v29;
  v36 = v33;
  v37 = v34;
  v38 = v35;
  v12 = 0;
  a2 = 6;
LABEL_9:
  if (v12 <= 6)
  {
    v39 = 6;
  }

  else
  {
    v39 = v12;
  }

  while (v12 != 6)
  {
    if (v39 == v12)
    {
      __break(1u);
      goto LABEL_23;
    }

    v40 = v60[v12++ + 4];
    if (v40)
    {
      v41 = v40;
      MEMORY[0x20F2F43B0]();
      if (*((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v58 = *((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      a1 = v61[0];
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE58);
  swift_arrayDestroy();
  if (a1 >> 62)
  {
    if (sub_20C13DB34())
    {
      sub_20B51C88C(0, &qword_27C764F30);

      sub_20C13DE34();

      goto LABEL_21;
    }

LABEL_26:

    return 0;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

  sub_20C13E004();
  sub_20B51C88C(0, &qword_27C764F30);
LABEL_21:

  v42 = sub_20C13D554();

  return v42;
}

uint64_t sub_20BDAFCD4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = sub_20C134014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *&v4[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider];
  type metadata accessor for PlaylistDetailDataProvider();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE48);
  v12 = swift_dynamicCast();
  v53 = v10;
  if (v12)
  {
    sub_20B51C710(v60, v63);
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    if (sub_20BE1BB60(a1) >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30);
      sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30);
    }

    sub_20B51C88C(0, &unk_27C76FED0);
    v58 = sub_20C13D554();
    v13 = v58;
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    sub_20B520158(v60, &qword_27C76EE50);
    v58 = 0;
  }

  v57 = sub_20BDB1144(a1);
  v56 = sub_20BDB25F0(a1);
  v55 = sub_20BDB3900(a1);
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  v54 = a1;
  if (v14)
  {
    v15 = v14;
    v49 = sub_20B51C88C(0, &qword_27C7713A0);
    __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer], *&v4[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer + 24]);
    v50 = a4;
    v51 = a2;
    v16 = v4;
    v47[0] = v11;
    v48 = v16;
    v47[2] = sub_20C138D34();
    v47[1] = v17;
    v18 = sub_20C13C914();
    v19 = [objc_opt_self() systemImageNamed_];

    v20 = swift_allocObject();
    *(v20 + 24) = v15;
    swift_unknownObjectWeakInit();
    v21 = v53;
    v22 = v52;
    (*(v53 + 16))(v52, a1, v9);
    v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v24 = (v47[0] + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    a2 = v51;
    (*(v21 + 32))(v25 + v23, v22, v9);
    *(v25 + v24) = a3;
    v26 = a3;
    a4 = v50;
    v27 = sub_20C13D624();
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C14F580;
    *(v28 + 32) = v27;
    v29 = sub_20C13D554();

    if (a4)
    {
LABEL_8:
      v30 = a4;
      v31 = sub_20BDB49C8(v54, a2, v30);

      v32 = v31;
      goto LABEL_11;
    }
  }

  else
  {
    v29 = 0;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  v31 = 0;
LABEL_11:
  v33 = v57;
  v59[4] = v58;
  v59[5] = v57;
  v34 = v56;
  v35 = v55;
  v59[6] = v56;
  v59[7] = v55;
  v59[8] = v29;
  v59[9] = v31;
  v36 = MEMORY[0x277D84F90];
  v63[0] = MEMORY[0x277D84F90];
  v37 = v29;
  v38 = v33;
  v39 = v34;
  v40 = v35;
  v41 = 0;
LABEL_12:
  if (v41 <= 6)
  {
    v42 = 6;
  }

  else
  {
    v42 = v41;
  }

  while (v41 != 6)
  {
    if (v42 == v41)
    {
      __break(1u);
LABEL_26:
      if (sub_20C13DB34())
      {
        sub_20B51C88C(0, &qword_27C764F30);

        sub_20C13DE34();

        goto LABEL_24;
      }

      goto LABEL_28;
    }

    v43 = v59[v41++ + 4];
    if (v43)
    {
      v44 = v43;
      MEMORY[0x20F2F43B0]();
      if (*((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v57 = *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v36 = v63[0];
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE58);
  swift_arrayDestroy();
  if (v36 >> 62)
  {
    goto LABEL_26;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
LABEL_24:

    sub_20B51C88C(0, &unk_27C76FED0);
    v45 = sub_20C13D554();

    return v45;
  }

LABEL_28:

  return 0;
}

uint64_t sub_20BDB04D8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v40 = (*(a6 + 32))(a5, a6);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE48);
  v33 = a3;
  if (swift_dynamicCast())
  {
    sub_20B51C710(v38, v41);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    if (sub_20BE1BB60(a1) >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30);
      sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30);
    }

    sub_20B51C88C(0, &unk_27C76FED0);
    v36 = sub_20C13D554();
    v13 = v36;
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    sub_20B520158(v38, &qword_27C76EE50);
    v36 = 0;
  }

  v14 = sub_20BDB1508(a1, a5, a6, a7);
  v15 = sub_20BDB2C1C(a1, a5, a6, a7);
  v16 = sub_20BDB3CA8(a1, a5, a6, a7);
  v17 = a2;
  v18 = sub_20BDB4144(a1, a2, v33, a5, a6);
  if (a4)
  {
    v19 = a4;
    v20 = a7;
    v21 = v19;
    v22 = sub_20BDB4C54(a1, v17, v19, a5, a6, v20);

    v23 = v22;
  }

  else
  {
    v22 = 0;
  }

  v37[4] = v36;
  v37[5] = v14;
  v37[6] = v15;
  v37[7] = v16;
  v37[8] = v18;
  v37[9] = v22;
  v24 = MEMORY[0x277D84F90];
  v41[0] = MEMORY[0x277D84F90];
  v25 = v18;
  v35 = v14;
  v26 = v15;
  v27 = v16;
  v28 = 0;
LABEL_10:
  if (v28 <= 6)
  {
    v29 = 6;
  }

  else
  {
    v29 = v28;
  }

  while (v28 != 6)
  {
    if (v29 == v28)
    {
      __break(1u);
LABEL_24:
      if (sub_20C13DB34())
      {
        sub_20B51C88C(0, &qword_27C764F30);

        sub_20C13DE34();

        goto LABEL_22;
      }

      goto LABEL_26;
    }

    v30 = v37[v28++ + 4];
    if (v30)
    {
      MEMORY[0x20F2F43B0](v30);
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v24 = v41[0];
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE58);
  swift_arrayDestroy();
  if (v24 >> 62)
  {
    goto LABEL_24;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
LABEL_22:

    sub_20B51C88C(0, &unk_27C76FED0);
    v31 = sub_20C13D554();

    return v31;
  }

LABEL_26:

  return 0;
}

uint64_t sub_20BDB09BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  if (v12)
  {
    v25 = v10;
    v13 = sub_20C138104();
    if (v13 == sub_20C138104())
    {
      sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider) + 280, aBlock);
      __swift_project_boxed_opaque_existential_1(aBlock, v27);
      sub_20C13B184();
      v14 = sub_20C135174();
      v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
      sub_20B520158(v9, &unk_27C76BC00);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (v15 == 1)
      {
        return 0;
      }
    }

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v5 + 32))(v20 + v19, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v20 + v19 + v6) = v25;
    v28 = sub_20BDC831C;
    v29 = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    v27 = &block_descriptor_706;
    v21 = _Block_copy(aBlock);

    v22 = [v17 elementWithUncachedProvider_];
    _Block_release(v21);
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F580;
    *(v23 + 32) = v22;
    return sub_20C13D554();
  }

  else
  {
    sub_20B584078(v10, v11, v12);
    return 0;
  }
}

uint64_t sub_20BDB0D80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  if (v12)
  {
    v25 = v10;
    v13 = sub_20C138104();
    if (v13 == sub_20C138104())
    {
      sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider) + 344, aBlock);
      __swift_project_boxed_opaque_existential_1(aBlock, v27);
      sub_20C13B184();
      v14 = sub_20C135174();
      v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
      sub_20B520158(v9, &unk_27C76BC00);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (v15 == 1)
      {
        return 0;
      }
    }

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v5 + 32))(v20 + v19, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v20 + v19 + v6) = v25;
    v28 = sub_20BDC737C;
    v29 = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    v27 = &block_descriptor_515;
    v21 = _Block_copy(aBlock);

    v22 = [v17 elementWithUncachedProvider_];
    _Block_release(v21);
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F580;
    *(v23 + 32) = v22;
    return sub_20C13D554();
  }

  else
  {
    sub_20B584078(v10, v11, v12);
    return 0;
  }
}

uint64_t sub_20BDB1144(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  if (v12)
  {
    v25 = v10;
    v13 = sub_20C138104();
    if (v13 == sub_20C138104())
    {
      sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + 312, aBlock);
      __swift_project_boxed_opaque_existential_1(aBlock, v27);
      sub_20C13B184();
      v14 = sub_20C135174();
      v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
      sub_20B520158(v9, &unk_27C76BC00);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (v15 == 1)
      {
        return 0;
      }
    }

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v5 + 32))(v20 + v19, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v20 + v19 + v6) = v25;
    v28 = sub_20BDC6C90;
    v29 = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    v27 = &block_descriptor_324;
    v21 = _Block_copy(aBlock);

    v22 = [v17 elementWithUncachedProvider_];
    _Block_release(v21);
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F580;
    *(v23 + 32) = v22;
    return sub_20C13D554();
  }

  else
  {
    sub_20B584078(v10, v11, v12);
    return 0;
  }
}

uint64_t sub_20BDB1508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C134014();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_20C133FF4();
  if (v16 == -1)
  {
    return 0;
  }

  if (v16)
  {
    v38 = a4;
    v39 = v14;
    v17 = v40;
    aBlock[0] = v40;
    (*(a3 + 48))(a2, a3);
    v18 = sub_20C138104();
    if (v18 == sub_20C138104())
    {
      v41 = v17;
      (*(a3 + 32))(a2, a3);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = v9;
      v37 = a2;
      v20 = AssociatedConformanceWitness;
      v35 = *(AssociatedConformanceWitness + 56);
      v21 = swift_checkMetadataState();
      v22 = v20;
      a2 = v37;
      v35(aBlock, v21, v22);
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_1(aBlock, v43);
      v9 = v36;
      sub_20C13B184();
      v23 = sub_20C135174();
      v24 = (*(*(v23 - 8) + 48))(v13, 1, v23);
      sub_20B520158(v13, &unk_27C76BC00);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (v24 == 1)
      {
        return 0;
      }
    }

    v26 = objc_opt_self();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v28 = a2;
    v29 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v30 = swift_allocObject();
    *(v30 + 2) = v28;
    *(v30 + 3) = a3;
    *(v30 + 4) = v38;
    *(v30 + 5) = v27;
    (*(v9 + 32))(&v30[v29], &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v30[v29 + v10] = v39;
    v44 = sub_20BDC5E1C;
    v45 = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    v43 = &block_descriptor_135_0;
    v31 = _Block_copy(aBlock);

    v32 = [v26 elementWithUncachedProvider_];
    _Block_release(v31);
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_20C14F580;
    *(v33 + 32) = v32;
    return sub_20C13D554();
  }

  else
  {
    sub_20B584078(v14, v15, v16);
    return 0;
  }
}

uint64_t sub_20BDB1998(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v38 - v5;
  v7 = sub_20C136F94();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = sub_20C134014();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v38 - v16;
  v18 = sub_20C133FF4();
  if (v20 == -1)
  {
    return 0;
  }

  if ((v20 & 1) == 0)
  {
    sub_20B584078(v18, v19, v20);
    return 0;
  }

  v42 = v18;
  if (sub_20C134B74())
  {
    return 0;
  }

  v41 = a1;
  v22 = sub_20C138104();
  if (v22 == sub_20C138104())
  {
    v23 = *(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider);
    v38[1] = v2;
    v39 = v23;
    sub_20B51CC64(v23 + 280, aBlock);
    v40 = v47;
    __swift_project_boxed_opaque_existential_1(aBlock, v46);
    sub_20C13B184();
    v24 = sub_20C135174();
    v25 = (*(*(v24 - 8) + 48))(v17, 1, v24);
    sub_20B520158(v17, &unk_27C76BC00);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v25 == 1)
    {
      return 0;
    }

    sub_20C136F34();
    __swift_project_boxed_opaque_existential_1((v39 + 280), *(v39 + 304));
    sub_20C13B174();
    v26 = sub_20C136C64();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v6, 1, v26) == 1)
    {
      (*(v43 + 8))(v12, v7);
      sub_20B520158(v6, &qword_27C768690);
      return 0;
    }

    sub_20C1369E4();
    (*(v27 + 8))(v6, v26);
    sub_20BDC6A24(&qword_27C767AF0, MEMORY[0x277D53030]);
    v28 = sub_20C13DA74();
    v29 = *(v43 + 8);
    v29(v9, v7);
    v29(v12, v7);
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = objc_opt_self();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v44;
  (*(v44 + 16))(v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v13);
  v33 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  (*(v32 + 32))(v34 + v33, v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  *(v34 + v33 + v14) = v42;
  v47 = sub_20BDC7D24;
  v48 = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v46 = &block_descriptor_655;
  v35 = _Block_copy(aBlock);

  v36 = [v30 elementWithUncachedProvider_];
  _Block_release(v35);
  sub_20B51C88C(0, &unk_27C76FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_20C14F580;
  *(v37 + 32) = v36;
  return sub_20C13D554();
}

uint64_t sub_20BDB1FC4(uint64_t a1)
{
  v2 = sub_20C134014();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_20C136F94();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_20C133FF4();
  if (v18 == -1)
  {
    return 0;
  }

  if ((v18 & 1) == 0)
  {
    sub_20B584078(v16, v17, v18);
    return 0;
  }

  v41 = v16;
  if ((sub_20C134B74() & 1) == 0)
  {
    v40 = v2;
    v19 = v44;
    v20 = sub_20C138104();
    if (v20 != sub_20C138104())
    {
      goto LABEL_12;
    }

    v38 = *(v19 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider);
    sub_20B51CC64(v38 + 344, aBlock);
    v39 = v47;
    __swift_project_boxed_opaque_existential_1(aBlock, v46);
    sub_20C13B184();
    v21 = sub_20C135174();
    v22 = (*(*(v21 - 8) + 48))(v15, 1, v21);
    sub_20B520158(v15, &unk_27C76BC00);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v22 != 1)
    {
      sub_20C136F34();
      __swift_project_boxed_opaque_existential_1((v38 + 344), *(v38 + 368));
      sub_20C13B174();
      v23 = sub_20C136C64();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v6, 1, v23) == 1)
      {
        (*(v42 + 8))(v12, v7);
        sub_20B520158(v6, &qword_27C768690);
        return 0;
      }

      sub_20C1369E4();
      (*(v24 + 8))(v6, v23);
      sub_20BDC6A24(&qword_27C767AF0, MEMORY[0x277D53030]);
      v26 = sub_20C13DA74();
      v27 = *(v42 + 8);
      v27(v9, v7);
      v27(v12, v7);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      v28 = objc_opt_self();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v43;
      v31 = v40;
      (*(v43 + 16))(&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v40);
      v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v29;
      (*(v30 + 32))(v33 + v32, &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      *(v33 + v32 + v3) = v41;
      v47 = sub_20BDC717C;
      v48 = v33;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20BDAD46C;
      v46 = &block_descriptor_464;
      v34 = _Block_copy(aBlock);

      v35 = [v28 elementWithUncachedProvider_];
      _Block_release(v34);
      sub_20B51C88C(0, &unk_27C76FED0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_20C14F580;
      *(v36 + 32) = v35;
      return sub_20C13D554();
    }
  }

  return 0;
}

uint64_t sub_20BDB25F0(uint64_t a1)
{
  v2 = sub_20C134014();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_20C136F94();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_20C133FF4();
  if (v18 == -1)
  {
    return 0;
  }

  if ((v18 & 1) == 0)
  {
    sub_20B584078(v16, v17, v18);
    return 0;
  }

  v41 = v16;
  if ((sub_20C134B74() & 1) == 0)
  {
    v40 = v2;
    v19 = v44;
    v20 = sub_20C138104();
    if (v20 != sub_20C138104())
    {
      goto LABEL_12;
    }

    v38 = *(v19 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
    sub_20B51CC64(v38 + 312, aBlock);
    v39 = v47;
    __swift_project_boxed_opaque_existential_1(aBlock, v46);
    sub_20C13B184();
    v21 = sub_20C135174();
    v22 = (*(*(v21 - 8) + 48))(v15, 1, v21);
    sub_20B520158(v15, &unk_27C76BC00);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v22 != 1)
    {
      sub_20C136F34();
      __swift_project_boxed_opaque_existential_1((v38 + 312), *(v38 + 336));
      sub_20C13B174();
      v23 = sub_20C136C64();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v6, 1, v23) == 1)
      {
        (*(v42 + 8))(v12, v7);
        sub_20B520158(v6, &qword_27C768690);
        return 0;
      }

      sub_20C1369E4();
      (*(v24 + 8))(v6, v23);
      sub_20BDC6A24(&qword_27C767AF0, MEMORY[0x277D53030]);
      v26 = sub_20C13DA74();
      v27 = *(v42 + 8);
      v27(v9, v7);
      v27(v12, v7);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      v28 = objc_opt_self();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v43;
      v31 = v40;
      (*(v43 + 16))(&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v40);
      v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v29;
      (*(v30 + 32))(v33 + v32, &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      *(v33 + v32 + v3) = v41;
      v47 = sub_20BDC6A0C;
      v48 = v33;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20BDAD46C;
      v46 = &block_descriptor_273;
      v34 = _Block_copy(aBlock);

      v35 = [v28 elementWithUncachedProvider_];
      _Block_release(v34);
      sub_20B51C88C(0, &unk_27C76FED0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_20C14F580;
      *(v36 + 32) = v35;
      return sub_20C13D554();
    }
  }

  return 0;
}

uint64_t sub_20BDB2C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_20C134014();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_20C136F94();
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - v16;
  v50 = a1;
  v18 = sub_20C133FF4();
  if (v20 == -1)
  {
    return 0;
  }

  if ((v20 & 1) == 0)
  {
    sub_20B584078(v18, v19, v20);
    return 0;
  }

  v48 = v18;
  if (sub_20C134B74())
  {
    return 0;
  }

  aBlock[0] = v5;
  v22 = *(a3 + 48);
  v23 = a2;
  v24 = a3;
  v46 = a4;
  v47 = v23;
  v22(v23, a3);
  v25 = sub_20C138104();
  if (v25 == sub_20C138104())
  {
    v41 = v5;
    v53 = v5;
    v43 = *(a3 + 32);
    v44 = a3 + 32;
    v43(v47, a3);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v45 = *(AssociatedConformanceWitness + 56);
    v40 = swift_checkMetadataState();
    v42 = AssociatedConformanceWitness;
    v45(aBlock, v40, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(aBlock, v55);
    sub_20C13B184();
    v27 = sub_20C135174();
    v28 = (*(*(v27 - 8) + 48))(v17, 1, v27);
    sub_20B520158(v17, &unk_27C76BC00);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v28 == 1)
    {
      return 0;
    }

    aBlock[0] = v41;
    v43(v47, v24);
    sub_20C136F34();
    v29 = (*(v42 + 344))(v14, v40);
    swift_unknownObjectRelease();
    (v49)[1](v14, v12);
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v49 = objc_opt_self();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v51;
  v32 = v52;
  (*(v51 + 16))(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v52);
  v33 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 2) = v47;
  *(v34 + 3) = v24;
  *(v34 + 4) = v35;
  *(v34 + 5) = v30;
  (*(v31 + 32))(&v34[v33], &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  v34[v33 + v11] = v48;
  v56 = sub_20BDC58AC;
  v57 = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v55 = &block_descriptor_84_1;
  v36 = _Block_copy(aBlock);

  v37 = [v49 elementWithUncachedProvider_];
  _Block_release(v36);
  sub_20B51C88C(0, &unk_27C76FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C14F580;
  *(v38 + 32) = v37;
  return sub_20C13D554();
}

uint64_t sub_20BDB31B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  sub_20B584078(v10, v11, v12);
  v13 = sub_20C138104();
  if (v13 == sub_20C138104())
  {
    sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider) + 280, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v25);
    sub_20C13B184();
    v14 = sub_20C135174();
    v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
    sub_20B520158(v9, &unk_27C76BC00);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v15 == 1)
    {
      return 0;
    }
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v5 + 32))(v20 + v19, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v26 = sub_20BDC7B80;
  v27 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v25 = &block_descriptor_612;
  v21 = _Block_copy(aBlock);

  v22 = [v17 elementWithUncachedProvider_];
  _Block_release(v21);
  sub_20B51C88C(0, &unk_27C76FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F580;
  *(v23 + 32) = v22;
  return sub_20C13D554();
}

uint64_t sub_20BDB3558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  sub_20B584078(v10, v11, v12);
  v13 = sub_20C138104();
  if (v13 == sub_20C138104())
  {
    sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider) + 344, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v25);
    sub_20C13B184();
    v14 = sub_20C135174();
    v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
    sub_20B520158(v9, &unk_27C76BC00);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v15 == 1)
    {
      return 0;
    }
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v5 + 32))(v20 + v19, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v26 = sub_20BDC6FA0;
  v27 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v25 = &block_descriptor_421;
  v21 = _Block_copy(aBlock);

  v22 = [v17 elementWithUncachedProvider_];
  _Block_release(v21);
  sub_20B51C88C(0, &unk_27C76FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F580;
  *(v23 + 32) = v22;
  return sub_20C13D554();
}

uint64_t sub_20BDB3900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  sub_20B584078(v10, v11, v12);
  v13 = sub_20C138104();
  if (v13 == sub_20C138104())
  {
    sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + 312, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v25);
    sub_20C13B184();
    v14 = sub_20C135174();
    v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
    sub_20B520158(v9, &unk_27C76BC00);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v15 == 1)
    {
      return 0;
    }
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v5 + 32))(v20 + v19, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v26 = sub_20BDC6900;
  v27 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v25 = &block_descriptor_232;
  v21 = _Block_copy(aBlock);

  v22 = [v17 elementWithUncachedProvider_];
  _Block_release(v21);
  sub_20B51C88C(0, &unk_27C76FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F580;
  *(v23 + 32) = v22;
  return sub_20C13D554();
}

uint64_t sub_20BDB3CA8(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v5 = v4;
  v10 = sub_20C134014();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = v12;
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_20C133FF4();
  if (v19 == -1)
  {
    return 0;
  }

  v45 = v10;
  sub_20B584078(v17, v18, v19);
  aBlock[0] = v4;
  (*(a3 + 48))(a2, a3);
  v20 = sub_20C138104();
  if (v20 == sub_20C138104())
  {
    v47 = v5;
    (*(a3 + 32))(a2, a3);
    swift_getAssociatedTypeWitness();
    v44 = a4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = v5;
    v43 = a3;
    v22 = a1;
    v23 = AssociatedConformanceWitness;
    v24 = v11;
    v25 = v13;
    v26 = a2;
    v27 = *(AssociatedConformanceWitness + 56);
    v28 = swift_checkMetadataState();
    v29 = v23;
    a1 = v22;
    a3 = v43;
    v27(aBlock, v28, v29);
    a2 = v26;
    v13 = v25;
    v11 = v24;
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(aBlock, v49);
    a4 = v44;
    sub_20C13B184();
    v30 = sub_20C135174();
    v31 = (*(*(v30 - 8) + 48))(v16, 1, v30);
    sub_20B520158(v16, &unk_27C76BC00);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v31 == 1)
    {
      return 0;
    }
  }

  v44 = objc_opt_self();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v45;
  (*(v11 + 16))(v13, a1, v45);
  v35 = v13;
  v36 = a2;
  v37 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = v36;
  *(v38 + 3) = a3;
  *(v38 + 4) = a4;
  *(v38 + 5) = v33;
  (*(v11 + 32))(&v38[v37], v35, v34);
  v50 = sub_20BDC5740;
  v51 = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v49 = &block_descriptor_61_1;
  v39 = _Block_copy(aBlock);

  v40 = [v44 elementWithUncachedProvider_];
  _Block_release(v39);
  sub_20B51C88C(0, &unk_27C76FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C14F580;
  *(v41 + 32) = v40;
  return sub_20C13D554();
}

uint64_t sub_20BDB4144(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_20C134014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  result = 0;
  if (v14)
  {
    if (v6)
    {
      v33 = sub_20B51C88C(0, &qword_27C7713A0);
      v34[5] = v6;
      v29 = v11;
      v30 = a1;
      v16 = *(a5 + 56);
      swift_unknownObjectRetain();
      v32 = a3;
      v16(v34, a4, a5);
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      v31 = sub_20C138D34();
      v17 = sub_20C13C914();
      v18 = [objc_opt_self() systemImageNamed_];

      v19 = swift_allocObject();
      *(v19 + 24) = v14;
      swift_unknownObjectWeakInit();
      v20 = v29;
      (*(v12 + 16))(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v29);
      v21 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      (*(v12 + 32))(v22 + v21, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
      v23 = v32;
      *(v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
      v24 = v23;
      v25 = sub_20C13D624();
      __swift_destroy_boxed_opaque_existential_1(v34);
      sub_20B51C88C(0, &unk_27C76FED0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_20C14F580;
      *(v26 + 32) = v25;
      v27 = sub_20C13D554();
      swift_unknownObjectRelease();
      return v27;
    }
  }

  return result;
}

uint64_t sub_20BDB44B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  result = 0;
  if (*(v3 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_platform) == 3)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a3;
    (*(v7 + 32))(v13 + v12, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    aBlock[4] = sub_20BDC79B8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    aBlock[3] = &block_descriptor_567;
    v14 = _Block_copy(aBlock);
    v15 = a3;

    v16 = [v10 elementWithUncachedProvider_];
    _Block_release(v14);
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C14F580;
    *(v17 + 32) = v16;
    return sub_20C13D554();
  }

  return result;
}

uint64_t sub_20BDB473C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  result = 0;
  if (*(v3 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_platform) == 3)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a3;
    (*(v7 + 32))(v13 + v12, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    aBlock[4] = sub_20BDC6DD0;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    aBlock[3] = &block_descriptor_376;
    v14 = _Block_copy(aBlock);
    v15 = a3;

    v16 = [v10 elementWithUncachedProvider_];
    _Block_release(v14);
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C14F580;
    *(v17 + 32) = v16;
    return sub_20C13D554();
  }

  return result;
}

uint64_t sub_20BDB49C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  result = 0;
  if (*(v3 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_platform) == 3)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a3;
    (*(v7 + 32))(v13 + v12, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    aBlock[4] = sub_20BDC68AC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    aBlock[3] = &block_descriptor_187;
    v14 = _Block_copy(aBlock);
    v15 = a3;

    v16 = [v10 elementWithUncachedProvider_];
    _Block_release(v14);
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C14F580;
    *(v17 + 32) = v16;
    return sub_20C13D554();
  }

  return result;
}

uint64_t sub_20BDB4C54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v11 = sub_20C133244();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v28 = v6;
  v15 = (*(a5 + 48))(a4, a5, v14);
  result = 0;
  if (v15 == 3)
  {
    v25 = objc_opt_self();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
    v18 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = a4;
    *(v19 + 3) = a5;
    *(v19 + 4) = v26;
    *(v19 + 5) = v17;
    *(v19 + 6) = a3;
    (*(v12 + 32))(&v19[v18], &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    aBlock[4] = sub_20BDC54EC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    aBlock[3] = &block_descriptor_129;
    v20 = _Block_copy(aBlock);
    v21 = a3;

    v22 = [v25 elementWithUncachedProvider_];
    _Block_release(v20);
    sub_20B51C88C(0, &unk_27C76FED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F580;
    *(v23 + 32) = v22;
    return sub_20C13D554();
  }

  return result;
}

uint64_t sub_20BDB4F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB61CC(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC84C4;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

uint64_t sub_20BDB53B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB6594(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC7394;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

uint64_t sub_20BDB5858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB695C(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC6CA8;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

uint64_t sub_20BDB5CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a6;
  v58 = a8;
  v53 = a5;
  v48 = a4;
  v54 = a2;
  v52 = a1;
  v9 = sub_20C134014();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v56);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v55 = &v44 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = a7;
    v47 = v15;
    v19 = v15;
    v20 = v9;
    sub_20BDB6D28(v57, a7, v19);
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v22 = v49;
    v23 = *(v49 + 16);
    v24 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v12;
    v23(v24, v48, v20);
    v25 = *(v22 + 80);
    v48 = v16;
    v26 = (v25 + 48) & ~v25;
    v27 = v26 + v10;
    v28 = v54;
    v29 = swift_allocObject();
    v30 = v46;
    *(v29 + 2) = v57;
    *(v29 + 3) = v30;
    *(v29 + 4) = v58;
    *(v29 + 5) = v21;
    (*(v22 + 32))(&v29[v26], v24, v20);
    v29[v27] = v53;
    v31 = &v29[v27 & 0xFFFFFFFFFFFFFFF8];
    *(v31 + 1) = v52;
    *(v31 + 2) = v28;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20BDC5FE0;
    *(v32 + 24) = v29;
    v33 = v51;
    v34 = v47;
    v35 = v56;
    (*(v11 + 16))(v51, v47, v56);
    v36 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v37 = (v45 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v11 + 32))(v38 + v36, v33, v35);
    v39 = (v38 + v37);
    *v39 = sub_20B5DF4B8;
    v39[1] = v32;

    v40 = v55;
    sub_20C137C94();
    (*(v11 + 8))(v34, v35);
    v41 = v48;
    v42 = sub_20C137CB4();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    v42(sub_20B5DF6DC, v43);

    return (*(v50 + 8))(v40, v41);
  }

  return result;
}

uint64_t sub_20BDB61CC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - v10;
  v11 = off_28228F330[0];
  type metadata accessor for WorkoutPlanWeekdayDetailPageDataProvider();
  v11();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BDC3488;
  *(v12 + 24) = 0;
  v13 = v28;
  (*(v1 + 16))(v3, v6, v28);
  v14 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v15 = (v2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v1 + 32))(v16 + v14, v3, v13);
  v17 = (v16 + v15);
  *v17 = sub_20BDC8CEC;
  v17[1] = v12;
  v18 = v27;
  sub_20C137C94();
  (*(v1 + 8))(v6, v13);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20BDC3574;
  *(v19 + 24) = 0;
  v21 = v29;
  v20 = v30;
  (*(v7 + 16))(v29, v18, v30);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BDC8CF0;
  v24[1] = v19;
  sub_20C137C94();
  return (*(v7 + 8))(v18, v20);
}

uint64_t sub_20BDB6594@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - v10;
  v11 = off_2822EA148[0];
  type metadata accessor for TVWorkoutPlanDetailPageDataProvider();
  v11();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BDC3488;
  *(v12 + 24) = 0;
  v13 = v28;
  (*(v1 + 16))(v3, v6, v28);
  v14 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v15 = (v2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v1 + 32))(v16 + v14, v3, v13);
  v17 = (v16 + v15);
  *v17 = sub_20BDC8CEC;
  v17[1] = v12;
  v18 = v27;
  sub_20C137C94();
  (*(v1 + 8))(v6, v13);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20BDC3574;
  *(v19 + 24) = 0;
  v21 = v29;
  v20 = v30;
  (*(v7 + 16))(v29, v18, v30);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BDC8CF0;
  v24[1] = v19;
  sub_20C137C94();
  return (*(v7 + 8))(v18, v20);
}

uint64_t sub_20BDB695C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v26 = &v26 - v12;
  __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_subscriptionCache), *(*(v1 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_subscriptionCache + 24));
  sub_20C1392F4();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20BDC3488;
  *(v13 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = (v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v14, v5, v2);
  v17 = (v16 + v15);
  *v17 = sub_20BDC8CEC;
  v17[1] = v13;
  v18 = v26;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20BDC3574;
  *(v19 + 24) = 0;
  v21 = v27;
  v20 = v28;
  (*(v9 + 16))(v27, v18, v28);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BDC8CF0;
  v24[1] = v19;
  sub_20C137C94();
  return (*(v9 + 8))(v18, v20);
}

uint64_t sub_20BDB6D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v12 = *(v40 - 8);
  v38 = *(v12 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v36 = &v35 - v16;
  v42 = v3;
  (*(a2 + 32))(a1, a2, v15);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 232);
  v19 = swift_checkMetadataState();
  v18(v19, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20BDC3488;
  *(v20 + 24) = 0;
  v21 = v37;
  (*(v6 + 16))(v8, v11, v37);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v8, v21);
  v24 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BDC56C8;
  v24[1] = v20;
  v25 = v36;
  sub_20C137C94();
  (*(v6 + 8))(v11, v21);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_20BDC3574;
  *(v26 + 24) = 0;
  v28 = v39;
  v27 = v40;
  v29 = v25;
  (*(v12 + 16))(v39, v25, v40);
  v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v31 = (v38 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v12 + 32))(v32 + v30, v28, v27);
  v33 = (v32 + v31);
  *v33 = sub_20BDC56F8;
  v33[1] = v26;
  sub_20C137C94();
  return (*(v12 + 8))(v29, v27);
}

uint64_t sub_20BDB7168(char a1, uint64_t a2, void *a3, char a4, uint64_t (*a5)(uint64_t))
{
  if ((a1 & 1) == 0)
  {
    return a5(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a5(MEMORY[0x277D84F90]);
  }

  v9 = Strong;
  v10 = sub_20BEA5B80();
  MEMORY[0x28223BE20](v10);
  LOBYTE(v17) = a4;
  v18 = v9;
  v19 = a3;
  v20 = sub_20B622D24(sub_20BDC8670, v16, v10);

  v11 = sub_20BEA5B80();
  MEMORY[0x28223BE20](v11);
  v17 = v9;
  v18 = a3;
  LOBYTE(v19) = a4;
  v12 = sub_20B622D24(sub_20BDC86EC, v16, v11);

  v21 = v20;
  sub_20B8DAD68(v12);

  v13 = v21;
  if (v21 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v14 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v14 = v13;
  }

  a5(v14);
}

uint64_t sub_20BDB73B0(char a1, uint64_t a2, void *a3, char a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t (*a8)(void *), void *(*a9)(uint64_t *__return_ptr, unint64_t), void *(*a10)(uint64_t *__return_ptr, unint64_t))
{
  if ((a1 & 1) == 0)
  {
    return (a5)(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (a5)(MEMORY[0x277D84F90]);
  }

  v30 = a6;
  v31 = a5;
  v29 = a10;
  v16 = Strong;
  v17 = a8(a3);
  MEMORY[0x28223BE20](v17);
  LOBYTE(v26) = a4;
  v27 = v16;
  v28 = a3;
  v18 = sub_20B622D24(a9, v25, v17);

  v19 = a8(a3);
  MEMORY[0x28223BE20](v19);
  v26 = v16;
  v27 = a3;
  LOBYTE(v28) = a4;
  v20 = sub_20B622D24(v29, v25, v19);

  v32 = v18;
  sub_20B8DAD68(v20);

  v21 = v32;
  if (v32 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v22 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v22 = v21;
  }

  v23 = v31;

  v23(v22);
}

void *sub_20BDB75E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *(a4 + 32);
  v21(a3, a4);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 296);
  v16 = v9;
  v15 = swift_checkMetadataState();
  v10 = v9(a1, v15, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a2;
  v34 = v19;
  v35 = a1;
  v18 = sub_20B622D24(sub_20BDC60EC, v29, v10);

  v36 = v19;
  v21(a3, a4);
  v11 = v16(a1, v15, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = v19;
  v27 = a1;
  v28 = a2;
  v12 = sub_20B622D24(sub_20BDC6148, v22, v11);

  v36 = v18;
  sub_20B8DAD68(v12);
  return v36;
}

uint64_t sub_20BDB77EC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v40 = a7;
  v38 = a6;
  v31 = a5;
  v34 = a4;
  v39 = sub_20C137254();
  v9 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = v10;
  v37 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134014();
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v12;
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_20C1371C4();
  v14 = &a3[*v31];
  v28 = a3;
  __swift_project_boxed_opaque_existential_1(v14, *(v14 + 3));
  v15 = sub_20C138D34();
  v30 = v16;
  v31 = v15;

  v29 = CatalogMediaType.startWorkoutActionImage(activityType:)();
  v27 = sub_20B51C88C(0, &qword_27C7713A0);
  v17 = v33;
  (*(v11 + 16))(v13, v34, v33);
  v18 = v37;
  v19 = v39;
  (*(v9 + 16))(v37, v36, v39);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = (v32 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  v23 = v11;
  v24 = v28;
  *(v22 + 16) = v28;
  (*(v23 + 32))(v22 + v20, v13, v17);
  (*(v9 + 32))(v22 + v21, v18, v19);
  v25 = v24;
  return sub_20C13D624();
}

uint64_t sub_20BDB7B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v43 = a4;
  v40 = a6;
  v34 = a3;
  v42 = a7;
  v41 = sub_20C137254();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = v10;
  v38 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20C134014();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v35);
  v33 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_20C1371C4();
  v44[7] = a2;
  (*(a5 + 56))(v44, v43, a5);
  v28 = a5;
  v29 = a2;
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v13 = sub_20C138D34();
  v31 = v14;
  v32 = v13;

  __swift_destroy_boxed_opaque_existential_1(v44);
  v30 = CatalogMediaType.startWorkoutActionImage(activityType:)();
  v27 = sub_20B51C88C(0, &qword_27C7713A0);
  v15 = v33;
  v16 = v35;
  (*(v11 + 16))(v33, v34, v35);
  v18 = v38;
  v17 = v39;
  v19 = v41;
  (*(v39 + 16))(v38, v37, v41);
  v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v21 = (v12 + *(v17 + 80) + v20) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 2) = v43;
  *(v22 + 3) = v23;
  v24 = v11;
  v25 = v29;
  *(v22 + 4) = v40;
  *(v22 + 5) = v25;
  (*(v24 + 32))(&v22[v20], v15, v16);
  (*(v17 + 32))(&v22[v21], v18, v19);
  swift_unknownObjectRetain();
  result = sub_20C13D624();
  *v42 = result;
  return result;
}

uint64_t sub_20BDB7F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 32))(a5, a6);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 304);
  v10 = swift_checkMetadataState();
  v9(a3, a4, v10, AssociatedConformanceWitness, 0.0);
  return swift_unknownObjectRelease();
}

uint64_t sub_20BDB8050(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  LODWORD(v45) = a4;
  v56 = sub_20C137254();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = v7;
  v55 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C134014();
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v46 = v8;
  v53 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134D54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v11;
  MEMORY[0x28223BE20](v12);
  v58 = v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v40 - v18;
  v57 = a2;
  v48 = a3;
  v20 = sub_20C133E44();
  v22 = v21;
  v49 = a1;
  v23 = sub_20C1371C4();
  sub_20BEA1EC4(v20, v22, v23, v19);

  sub_20B52F9E8(v19, v16, &unk_27C7623D0);
  v24 = *(v10 + 48);
  v59 = v9;
  if (v24(v16, 1, v9) == 1)
  {
    sub_20B520158(v19, &unk_27C7623D0);
    sub_20B520158(v16, &unk_27C7623D0);
    return 0;
  }

  else
  {
    v43 = v19;
    v41 = *(v10 + 32);
    v42 = v10 + 32;
    v41(v58, v16, v59);
    v26 = v49;
    sub_20C1371C4();
    __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer], *&v57[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24]);
    v27 = sub_20C138D34();
    v40[2] = v28;
    v40[3] = v27;

    v45 = CatalogMediaType.startWorkoutActionImage(activityType:)();
    v40[1] = sub_20B51C88C(0, &qword_27C7713A0);
    v29 = v50;
    (*(v50 + 16))(v53, v48, v54);
    v30 = v52;
    (*(v52 + 16))(v55, v26, v56);
    v31 = v47;
    (*(v10 + 16))(v47, v58, v59);
    v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v33 = (v46 + *(v30 + 80) + v32) & ~*(v30 + 80);
    v34 = (v51 + *(v10 + 80) + v33) & ~*(v10 + 80);
    v35 = swift_allocObject();
    v36 = v57;
    *(v35 + 16) = v57;
    (*(v29 + 32))(v35 + v32, v53, v54);
    (*(v30 + 32))(v35 + v33, v55, v56);
    v37 = v59;
    v41((v35 + v34), v31, v59);
    v38 = v36;
    v39 = sub_20C13D624();
    (*(v10 + 8))(v58, v37);
    sub_20B520158(v43, &unk_27C7623D0);
    return v39;
  }
}

uint64_t sub_20BDB867C(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  LODWORD(v45) = a4;
  v56 = sub_20C137254();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = v7;
  v55 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C134014();
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v46 = v8;
  v53 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134D54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v11;
  MEMORY[0x28223BE20](v12);
  v58 = v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v40 - v18;
  v57 = a2;
  v48 = a3;
  v20 = sub_20C133E44();
  v22 = v21;
  v49 = a1;
  v23 = sub_20C1371C4();
  sub_20BEA1ED0(v20, v22, v23, v19);

  sub_20B52F9E8(v19, v16, &unk_27C7623D0);
  v24 = *(v10 + 48);
  v59 = v9;
  if (v24(v16, 1, v9) == 1)
  {
    sub_20B520158(v19, &unk_27C7623D0);
    sub_20B520158(v16, &unk_27C7623D0);
    return 0;
  }

  else
  {
    v43 = v19;
    v41 = *(v10 + 32);
    v42 = v10 + 32;
    v41(v58, v16, v59);
    v26 = v49;
    sub_20C1371C4();
    __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer], *&v57[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer + 24]);
    v27 = sub_20C138D34();
    v40[2] = v28;
    v40[3] = v27;

    v45 = CatalogMediaType.startWorkoutActionImage(activityType:)();
    v40[1] = sub_20B51C88C(0, &qword_27C7713A0);
    v29 = v50;
    (*(v50 + 16))(v53, v48, v54);
    v30 = v52;
    (*(v52 + 16))(v55, v26, v56);
    v31 = v47;
    (*(v10 + 16))(v47, v58, v59);
    v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v33 = (v46 + *(v30 + 80) + v32) & ~*(v30 + 80);
    v34 = (v51 + *(v10 + 80) + v33) & ~*(v10 + 80);
    v35 = swift_allocObject();
    v36 = v57;
    *(v35 + 16) = v57;
    (*(v29 + 32))(v35 + v32, v53, v54);
    (*(v30 + 32))(v35 + v33, v55, v56);
    v37 = v59;
    v41((v35 + v34), v31, v59);
    v38 = v36;
    v39 = sub_20C13D624();
    (*(v10 + 8))(v58, v37);
    sub_20B520158(v43, &unk_27C7623D0);
    return v39;
  }
}

uint64_t sub_20BDB8CA8(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  LODWORD(v45) = a4;
  v56 = sub_20C137254();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = v7;
  v55 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C134014();
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v46 = v8;
  v53 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134D54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v11;
  MEMORY[0x28223BE20](v12);
  v58 = v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v40 - v18;
  v57 = a2;
  v48 = a3;
  v20 = sub_20C133E44();
  v22 = v21;
  v49 = a1;
  v23 = sub_20C1371C4();
  sub_20BEA1EDC(v20, v22, v23, v19);

  sub_20B52F9E8(v19, v16, &unk_27C7623D0);
  v24 = *(v10 + 48);
  v59 = v9;
  if (v24(v16, 1, v9) == 1)
  {
    sub_20B520158(v19, &unk_27C7623D0);
    sub_20B520158(v16, &unk_27C7623D0);
    return 0;
  }

  else
  {
    v43 = v19;
    v41 = *(v10 + 32);
    v42 = v10 + 32;
    v41(v58, v16, v59);
    v26 = v49;
    sub_20C1371C4();
    __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer], *&v57[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer + 24]);
    v27 = sub_20C138D34();
    v40[2] = v28;
    v40[3] = v27;

    v45 = CatalogMediaType.startWorkoutActionImage(activityType:)();
    v40[1] = sub_20B51C88C(0, &qword_27C7713A0);
    v29 = v50;
    (*(v50 + 16))(v53, v48, v54);
    v30 = v52;
    (*(v52 + 16))(v55, v26, v56);
    v31 = v47;
    (*(v10 + 16))(v47, v58, v59);
    v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v33 = (v46 + *(v30 + 80) + v32) & ~*(v30 + 80);
    v34 = (v51 + *(v10 + 80) + v33) & ~*(v10 + 80);
    v35 = swift_allocObject();
    v36 = v57;
    *(v35 + 16) = v57;
    (*(v29 + 32))(v35 + v32, v53, v54);
    (*(v30 + 32))(v35 + v33, v55, v56);
    v37 = v59;
    v41((v35 + v34), v31, v59);
    v38 = v36;
    v39 = sub_20C13D624();
    (*(v10 + 8))(v58, v37);
    sub_20B520158(v43, &unk_27C7623D0);
    return v39;
  }
}

uint64_t sub_20BDB92D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v59 = a7;
  LODWORD(v52) = a4;
  v70 = a8;
  v68 = sub_20C137254();
  v58 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v56 = v13;
  v65 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_20C134014();
  v57 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v53 = v14;
  v62 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20C134D54();
  v61 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v54 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v15;
  MEMORY[0x28223BE20](v16);
  v72 = v48 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v48 - v23;
  v69 = a2;
  v73[0] = a2;
  (*(a6 + 32))(a5, a6, v22);
  v55 = a3;
  v60 = sub_20C133E44();
  v26 = v25;
  v63 = a1;
  v27 = sub_20C1371C4();
  swift_getAssociatedTypeWitness();
  v66 = a5;
  v67 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = *(AssociatedConformanceWitness + 264);
  v30 = swift_checkMetadataState();
  v29(v60, v26, v27, v30, AssociatedConformanceWitness);
  v31 = v71;
  swift_unknownObjectRelease();
  v32 = v61;

  sub_20B52F9E8(v24, v20, &unk_27C7623D0);
  if ((*(v32 + 48))(v20, 1, v31) == 1)
  {
    sub_20B520158(v24, &unk_27C7623D0);
    result = sub_20B520158(v20, &unk_27C7623D0);
    v34 = 0;
  }

  else
  {
    v60 = v24;
    v35 = *(v32 + 32);
    v50 = v32 + 32;
    v49 = v35;
    v35(v72, v20, v31);
    sub_20C1371C4();
    v73[7] = v69;
    (*(v67 + 56))(v73, v66);
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    v48[2] = sub_20C138D34();
    v48[1] = v36;

    __swift_destroy_boxed_opaque_existential_1(v73);
    v52 = CatalogMediaType.startWorkoutActionImage(activityType:)();
    v48[0] = sub_20B51C88C(0, &qword_27C7713A0);
    v37 = v57;
    (*(v57 + 16))(v62, v55, v64);
    v38 = v58;
    (*(v58 + 16))(v65, v63, v68);
    v39 = v54;
    (*(v32 + 16))(v54, v72, v31);
    v40 = (*(v37 + 80) + 48) & ~*(v37 + 80);
    v41 = (v53 + *(v38 + 80) + v40) & ~*(v38 + 80);
    v42 = (v56 + *(v32 + 80) + v41) & ~*(v32 + 80);
    v43 = swift_allocObject();
    v44 = v67;
    *(v43 + 2) = v66;
    *(v43 + 3) = v44;
    v45 = v69;
    *(v43 + 4) = v59;
    *(v43 + 5) = v45;
    (*(v37 + 32))(&v43[v40], v62, v64);
    (*(v38 + 32))(&v43[v41], v65, v68);
    v46 = v39;
    v47 = v71;
    v49(&v43[v42], v46, v71);
    swift_unknownObjectRetain();
    v34 = sub_20C13D624();
    (*(v32 + 8))(v72, v47);
    result = sub_20B520158(v60, &unk_27C7623D0);
  }

  *v70 = v34;
  return result;
}

uint64_t sub_20BDB9A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 32))(a6, a7);
  sub_20C134D44();
  v10 = v9;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 304);
  v13 = swift_checkMetadataState();
  v12(a3, a4, v13, AssociatedConformanceWitness, v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_20BDB9B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB61CC(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC7D3C;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

uint64_t sub_20BDBA008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB6594(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC7194;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

uint64_t sub_20BDBA4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB695C(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC6A6C;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

uint64_t sub_20BDBA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a6;
  v58 = a8;
  v53 = a5;
  v48 = a4;
  v54 = a2;
  v52 = a1;
  v9 = sub_20C134014();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v56);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v55 = &v44 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = a7;
    v47 = v15;
    v19 = v15;
    v20 = v9;
    sub_20BDB6D28(v57, a7, v19);
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v22 = v49;
    v23 = *(v49 + 16);
    v24 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v12;
    v23(v24, v48, v20);
    v25 = *(v22 + 80);
    v48 = v16;
    v26 = (v25 + 48) & ~v25;
    v27 = v26 + v10;
    v28 = v54;
    v29 = swift_allocObject();
    v30 = v46;
    *(v29 + 2) = v57;
    *(v29 + 3) = v30;
    *(v29 + 4) = v58;
    *(v29 + 5) = v21;
    (*(v22 + 32))(&v29[v26], v24, v20);
    v29[v27] = v53;
    v31 = &v29[v27 & 0xFFFFFFFFFFFFFFF8];
    *(v31 + 1) = v52;
    *(v31 + 2) = v28;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20BDC58C4;
    *(v32 + 24) = v29;
    v33 = v51;
    v34 = v47;
    v35 = v56;
    (*(v11 + 16))(v51, v47, v56);
    v36 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v37 = (v45 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v11 + 32))(v38 + v36, v33, v35);
    v39 = (v38 + v37);
    *v39 = sub_20B5DF4B8;
    v39[1] = v32;

    v40 = v55;
    sub_20C137C94();
    (*(v11 + 8))(v34, v35);
    v41 = v48;
    v42 = sub_20C137CB4();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    v42(sub_20B5DF6DC, v43);

    return (*(v50 + 8))(v40, v41);
  }

  return result;
}

uint64_t sub_20BDBAE1C(char a1, uint64_t a2, void *a3, int a4, uint64_t (*a5)(uint64_t))
{
  if ((a1 & 1) == 0)
  {
    return a5(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a5(MEMORY[0x277D84F90]);
  }

  v9 = Strong;
  v10 = sub_20BDBB230(a3, a4);

  if (v10 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v11 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v11 = v10;
  }

  a5(v11);
}

uint64_t sub_20BDBAF64(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  if ((a1 & 1) == 0)
  {
    return a5(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a5(MEMORY[0x277D84F90]);
  }

  v12 = Strong;
  v13 = a7(a3, a4);

  if (v13 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v14 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v14 = v13;
  }

  a5(v14);
}

uint64_t sub_20BDBB0BC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*a1 != 1)
  {
    return a5(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a5(MEMORY[0x277D84F90]);
  }

  v15 = a10(a3, a4, a7, a8, a9);
  swift_unknownObjectRelease();
  if (v15 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v16 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v16 = v15;
  }

  a5(v16);
}

uint64_t sub_20BDBB230(void *a1, int a2)
{
  v51 = a2;
  v4 = sub_20C134014();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = v5;
  v54 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C134B14();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = MEMORY[0x277D84F90];
  v58 = a1;
  v59 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider);
  v11 = sub_20C133E44();
  v13 = v12;
  v57 = v10;
  v52 = OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_upNextQueueItems;
  v14 = *(v10 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_upNextQueueItems);
  v15 = v14[2];
  v60 = v7 + 16;
  v61 = v15;
  v16 = (v7 + 8);

  v17 = 0;
  while (v61 != v17)
  {
    if (v17 >= v14[2])
    {
      __break(1u);
      goto LABEL_19;
    }

    (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
    if (sub_20C134AB4() == v11 && v19 == v13)
    {

      (*v16)(v9, v6);
LABEL_8:

      v61 = sub_20B51C88C(0, &qword_27C7713A0);
      v6 = v59;
      __swift_project_boxed_opaque_existential_1((v59 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer), *(v59 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24));
      sub_20C138D34();
      v20 = sub_20C13C914();
      v21 = [objc_opt_self() smm:v20 systemImageNamed:?];

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = v54;
      v24 = v55;
      v25 = v56;
      (*(v55 + 16))(v54, v58, v56);
      v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      (*(v24 + 32))(v27 + v26, v23, v25);
      v48 = sub_20BDC7E34;
      v49 = v27;
      v46 = 2;
      v47 = 0;
      v45 = 0;
      v14 = sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        sub_20C13CCE4();

        goto LABEL_11;
      }

LABEL_19:
      sub_20C13CCA4();
      goto LABEL_9;
    }

    ++v17;
    v18 = sub_20C13DFF4();

    (*v16)(v9, v6);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v28 = v58;
  v29 = sub_20BEA5B80();
  MEMORY[0x28223BE20](v29);
  LOBYTE(v47) = v51;
  v6 = v59;
  v48 = v59;
  v49 = v28;
  v30 = sub_20B622D24(sub_20BDC7F68, &v45, v29);

  sub_20B8DAD68(v30);
LABEL_11:
  swift_getObjectType();
  v31 = swift_conformsToProtocol2();
  if (v31)
  {
    if (v6)
    {
      v32 = *(*(v57 + v52) + 16);
      if (v32)
      {
        v33 = v31;
        sub_20B51C88C(0, &qword_27C7713A0);
        __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer), *(v6 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
        v34 = swift_allocObject();
        v35 = MEMORY[0x277D83B88];
        *(v34 + 16) = xmmword_20C14F980;
        v36 = MEMORY[0x277D83C10];
        *(v34 + 56) = v35;
        *(v34 + 64) = v36;
        *(v34 + 32) = v32;
        v37 = v6;
        sub_20C138D24();

        v38 = sub_20C13C914();
        v39 = [objc_opt_self() smm:v38 systemImageNamed:?];

        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = v37;
        v41[4] = v33;
        v42 = v37;
        v45 = 0;
        v46 = 0;
        v48 = sub_20BDC7F2C;
        v49 = v41;
        v47 = 0;
        v43 = sub_20C13D624();
        MEMORY[0x20F2F43B0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();
      }
    }
  }

  return v62;
}

uint64_t sub_20BDBB988(void *a1, int a2)
{
  v51 = a2;
  v4 = sub_20C134014();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = v5;
  v54 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C134B14();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = MEMORY[0x277D84F90];
  v58 = a1;
  v59 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider);
  v11 = sub_20C133E44();
  v13 = v12;
  v57 = v10;
  v52 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_upNextQueueItems;
  v14 = *(v10 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_upNextQueueItems);
  v15 = v14[2];
  v60 = v7 + 16;
  v61 = v15;
  v16 = (v7 + 8);

  v17 = 0;
  while (v61 != v17)
  {
    if (v17 >= v14[2])
    {
      __break(1u);
      goto LABEL_19;
    }

    (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
    if (sub_20C134AB4() == v11 && v19 == v13)
    {

      (*v16)(v9, v6);
LABEL_8:

      v61 = sub_20B51C88C(0, &qword_27C7713A0);
      v6 = v59;
      __swift_project_boxed_opaque_existential_1((v59 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer), *(v59 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer + 24));
      sub_20C138D34();
      v20 = sub_20C13C914();
      v21 = [objc_opt_self() smm:v20 systemImageNamed:?];

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = v54;
      v24 = v55;
      v25 = v56;
      (*(v55 + 16))(v54, v58, v56);
      v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      (*(v24 + 32))(v27 + v26, v23, v25);
      v48 = sub_20BDC7278;
      v49 = v27;
      v46 = 2;
      v47 = 0;
      v45 = 0;
      v14 = sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        sub_20C13CCE4();

        goto LABEL_11;
      }

LABEL_19:
      sub_20C13CCA4();
      goto LABEL_9;
    }

    ++v17;
    v18 = sub_20C13DFF4();

    (*v16)(v9, v6);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v28 = v58;
  v29 = sub_20BEA5DF4();
  MEMORY[0x28223BE20](v29);
  LOBYTE(v47) = v51;
  v6 = v59;
  v48 = v59;
  v49 = v28;
  v30 = sub_20B622D24(sub_20BDC72E0, &v45, v29);

  sub_20B8DAD68(v30);
LABEL_11:
  swift_getObjectType();
  v31 = swift_conformsToProtocol2();
  if (v31)
  {
    if (v6)
    {
      v32 = *(*(v57 + v52) + 16);
      if (v32)
      {
        v33 = v31;
        sub_20B51C88C(0, &qword_27C7713A0);
        __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer), *(v6 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
        v34 = swift_allocObject();
        v35 = MEMORY[0x277D83B88];
        *(v34 + 16) = xmmword_20C14F980;
        v36 = MEMORY[0x277D83C10];
        *(v34 + 56) = v35;
        *(v34 + 64) = v36;
        *(v34 + 32) = v32;
        v37 = v6;
        sub_20C138D24();

        v38 = sub_20C13C914();
        v39 = [objc_opt_self() smm:v38 systemImageNamed:?];

        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = v37;
        v41[4] = v33;
        v42 = v37;
        v45 = 0;
        v46 = 0;
        v48 = sub_20BDC72A4;
        v49 = v41;
        v47 = 0;
        v43 = sub_20C13D624();
        MEMORY[0x20F2F43B0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();
      }
    }
  }

  return v62;
}

uint64_t sub_20BDBC0E0(void *a1, int a2)
{
  v51 = a2;
  v4 = sub_20C134014();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = v5;
  v54 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C134B14();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = MEMORY[0x277D84F90];
  v58 = a1;
  v59 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
  v11 = sub_20C133E44();
  v13 = v12;
  v57 = v10;
  v52 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueItems;
  v14 = *(v10 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueItems);
  v15 = v14[2];
  v60 = v7 + 16;
  v61 = v15;
  v16 = (v7 + 8);

  v17 = 0;
  while (v61 != v17)
  {
    if (v17 >= v14[2])
    {
      __break(1u);
      goto LABEL_19;
    }

    (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
    if (sub_20C134AB4() == v11 && v19 == v13)
    {

      (*v16)(v9, v6);
LABEL_8:

      v61 = sub_20B51C88C(0, &qword_27C7713A0);
      v6 = v59;
      __swift_project_boxed_opaque_existential_1((v59 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer), *(v59 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer + 24));
      sub_20C138D34();
      v20 = sub_20C13C914();
      v21 = [objc_opt_self() smm:v20 systemImageNamed:?];

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = v54;
      v24 = v55;
      v25 = v56;
      (*(v55 + 16))(v54, v58, v56);
      v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      (*(v24 + 32))(v27 + v26, v23, v25);
      v48 = sub_20BDC6A98;
      v49 = v27;
      v46 = 2;
      v47 = 0;
      v45 = 0;
      v14 = sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        sub_20C13CCE4();

        goto LABEL_11;
      }

LABEL_19:
      sub_20C13CCA4();
      goto LABEL_9;
    }

    ++v17;
    v18 = sub_20C13DFF4();

    (*v16)(v9, v6);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v28 = v58;
  v29 = sub_20BEA6068();
  MEMORY[0x28223BE20](v29);
  LOBYTE(v47) = v51;
  v6 = v59;
  v48 = v59;
  v49 = v28;
  v30 = sub_20B622D24(sub_20BDC6B00, &v45, v29);

  sub_20B8DAD68(v30);
LABEL_11:
  swift_getObjectType();
  v31 = swift_conformsToProtocol2();
  if (v31)
  {
    if (v6)
    {
      v32 = *(*(v57 + v52) + 16);
      if (v32)
      {
        v33 = v31;
        sub_20B51C88C(0, &qword_27C7713A0);
        __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer), *(v6 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
        v34 = swift_allocObject();
        v35 = MEMORY[0x277D83B88];
        *(v34 + 16) = xmmword_20C14F980;
        v36 = MEMORY[0x277D83C10];
        *(v34 + 56) = v35;
        *(v34 + 64) = v36;
        *(v34 + 32) = v32;
        v37 = v6;
        sub_20C138D24();

        v38 = sub_20C13C914();
        v39 = [objc_opt_self() smm:v38 systemImageNamed:?];

        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = v37;
        v41[4] = v33;
        v42 = v37;
        v45 = 0;
        v46 = 0;
        v48 = sub_20BDC6AC4;
        v49 = v41;
        v47 = 0;
        v43 = sub_20C13D624();
        MEMORY[0x20F2F43B0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();
      }
    }
  }

  return v62;
}

uint64_t sub_20BDBC838(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  LODWORD(v59) = a2;
  v9 = sub_20C134014();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v60 = v11;
  v61 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x277D84F90];
  v12 = v5;
  v69[0] = v5;
  v68 = *(a4 + 32);
  v68(a3, a4, v10);
  v66 = a1;
  v13 = sub_20C133E44();
  v15 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v65 = AssociatedConformanceWitness;
  LOBYTE(v13) = sub_20BEAAC4C(v13, v15, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_unknownObjectRelease();

  v64 = v18;
  if (v13)
  {
    v57[3] = a4 + 32;
    v58 = AssociatedTypeWitness;
    v57[2] = sub_20B51C88C(0, &qword_27C7713A0);
    v71 = v12;
    (*(a4 + 56))(v69, a3, a4);
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v57[1] = sub_20C138D34();
    v57[0] = v19;
    v20 = sub_20C13C914();
    v21 = [objc_opt_self() smm:v20 systemImageNamed:?];

    v22 = swift_allocObject();
    v59 = v12;
    swift_unknownObjectWeakInit();
    v23 = v61;
    v24 = v62;
    v25 = v63;
    (*(v62 + 16))(v61, v66, v63);
    v26 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v27 = swift_allocObject();
    v60 = a3;
    *(v27 + 2) = a3;
    *(v27 + 3) = a4;
    v66 = a4;
    *(v27 + 4) = v67;
    *(v27 + 5) = v22;
    (*(v24 + 32))(&v27[v26], v23, v25);
    v54 = sub_20BDC5A70;
    v55 = v27;
    v52 = 2;
    v53 = 0;
    v51 = 0;
    v28 = sub_20C13D624();
    __swift_destroy_boxed_opaque_existential_1(v69);
    v29 = v28;
    MEMORY[0x20F2F43B0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();

    AssociatedTypeWitness = v58;
    v12 = v59;
    a3 = v60;
    v30 = v68;
    a4 = v66;
  }

  else
  {
    v69[0] = v12;
    (v68)(a3, a4);
    v31 = v66;
    v32 = (*(v18 + 296))(v66, AssociatedTypeWitness, v18);
    v33 = swift_unknownObjectRelease();
    MEMORY[0x28223BE20](v33);
    v51 = a3;
    v52 = a4;
    v53 = v67;
    LOBYTE(v54) = v59;
    v55 = v12;
    v56 = v31;
    v34 = sub_20B622D24(sub_20BDC58F0, &v57[-8], v32);

    sub_20B8DAD68(v34);
    v30 = v68;
  }

  swift_getObjectType();
  sub_20B51C88C(0, &qword_281100550);
  v35 = dynamic_cast_existential_1_superclass_conditional(v12);
  if (v35)
  {
    v37 = v35;
    v38 = v36;
    v69[0] = v12;
    swift_unknownObjectRetain();
    v30(a3, a4);
    v39 = sub_20BEAAE38(AssociatedTypeWitness, v65, v64);
    swift_unknownObjectRelease();
    if (v39 >= 1)
    {
      v68 = sub_20B51C88C(0, &qword_27C7713A0);
      v71 = v12;
      (*(a4 + 56))(v69, a3, a4);
      v66 = a4;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_20C14F980;
      v41 = MEMORY[0x277D83C10];
      *(v40 + 56) = MEMORY[0x277D83B88];
      *(v40 + 64) = v41;
      *(v40 + 32) = v39;
      sub_20C138D24();

      v42 = sub_20C13C914();
      v43 = [objc_opt_self() smm:v42 systemImageNamed:?];

      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      v47 = v66;
      v46 = v67;
      v45[2] = a3;
      v45[3] = v47;
      v45[4] = v46;
      v45[5] = v44;
      v45[6] = v37;
      v45[7] = v38;
      swift_unknownObjectRetain();
      v51 = 0;
      v52 = 0;
      v54 = sub_20BDC598C;
      v55 = v45;
      v53 = 0;
      v48 = sub_20C13D624();
      __swift_destroy_boxed_opaque_existential_1(v69);
      v49 = v48;
      MEMORY[0x20F2F43B0]();
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
    }

    swift_unknownObjectRelease();
  }

  return v72;
}

uint64_t sub_20BDBCFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v8;
    v12 = result;

    sub_20BEA415C(a3, v10);

    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20BDC8194;
    *(v18 + 24) = v16;

    v17(sub_20B5DF6DC, v18);

    return (*(v20 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20BDBD2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v8;
    v12 = result;

    sub_20BEA4718(a3, v10);

    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20BDC735C;
    *(v18 + 24) = v16;

    v17(sub_20B5DF6DC, v18);

    return (*(v20 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20BDBD5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v8;
    v12 = result;

    sub_20BEA4CD4(a3, v10);

    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20BDC6C70;
    *(v18 + 24) = v16;

    v17(sub_20B5DF6DC, v18);

    return (*(v20 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20BDBD8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a3;
  v9 = sub_20C134014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v40 = &v33 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = result;
    v16 = *(a5 + 32);
    v37 = v13;
    v16(a4, a5);
    swift_unknownObjectRelease();
    swift_getAssociatedTypeWitness();
    v36 = v12;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = a6;
    v33 = v9;
    v18 = *(AssociatedConformanceWitness + 280);
    v19 = swift_checkMetadataState();
    v34 = a5;
    v20 = v38;
    v18(v38, v19, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v22 = v39;
    v23 = v20;
    v24 = v33;
    (*(v10 + 16))(v39, v23, v33);
    v25 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v26 = swift_allocObject();
    v28 = v34;
    v27 = v35;
    *(v26 + 2) = a4;
    *(v26 + 3) = v28;
    *(v26 + 4) = v27;
    (*(v10 + 32))(&v26[v25], v22, v24);
    *&v26[(v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v21;
    v29 = v36;
    v30 = v40;
    v31 = sub_20C137CB4();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20BDC5B08;
    *(v32 + 24) = v26;

    v31(sub_20B5DF6DC, v32);

    return (*(v37 + 8))(v30, v29);
  }

  return result;
}

uint64_t sub_20BDBDC7C(uint64_t a1, void *a2)
{
  v4 = sub_20C134B94();
  v6 = v5;
  if (v4 != sub_20C134B94() || v6 != v7)
  {
    sub_20C13DFF4();
  }

  v9 = [objc_allocWithZone(SMUBulletinInfo) init];
  v10 = sub_20C13C914();
  [v9 setImageSymbolName_];

  __swift_project_boxed_opaque_existential_1((v2 + *a2), *(v2 + *a2 + 24));
  sub_20C138D34();

  v11 = sub_20C13C914();

  [v9 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];

  return swift_unknownObjectRelease();
}

uint64_t sub_20BDBDE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134B94();
  v8 = v7;
  if (v6 != sub_20C134B94() || v8 != v9)
  {
    sub_20C13DFF4();
  }

  v11 = [objc_allocWithZone(SMUBulletinInfo) init];
  v12 = sub_20C13C914();
  [v11 setImageSymbolName_];

  v15[5] = v3;
  (*(a3 + 56))(v15, a2, a3);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_20C138D34();

  v13 = sub_20C13C914();

  __swift_destroy_boxed_opaque_existential_1(v15);
  [v11 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];
  return swift_unknownObjectRelease();
}

uint64_t sub_20BDBE088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26 = a6;
  v27 = a4;
  v24 = a5;
  v23[1] = a3;
  v25 = sub_20C134014();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C1371C4();
  __swift_project_boxed_opaque_existential_1((a3 + *v24), *(a3 + *v24 + 24));
  v13 = sub_20C138D34();
  v23[3] = v14;
  v24 = v13;

  v23[2] = sub_20B51C88C(0, &qword_27C7713A0);
  v15 = sub_20C13C914();
  v16 = [objc_opt_self() smm:v15 systemImageNamed:?];

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v25;
  (*(v9 + 16))(v11, v27, v25);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  (*(v9 + 32))(v21 + v19, v11, v18);
  *(v21 + v20) = v12;
  return sub_20C13D624();
}

uint64_t sub_20BDBE338@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v34 = a6;
  v32 = a2;
  v33 = a5;
  v24 = a3;
  v31 = sub_20C134014();
  v9 = *(v31 - 8);
  v29 = *(v9 + 64);
  MEMORY[0x28223BE20](v31);
  v28 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C1371C4();
  v35[6] = a1;
  v25 = a4;
  (*(a4 + 56))(v35, a3, a4);
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v11 = sub_20C138D34();
  v26 = v12;
  v27 = v11;

  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_20B51C88C(0, &qword_27C7713A0);
  v13 = sub_20C13C914();
  v14 = [objc_opt_self() smm:v13 systemImageNamed:?];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v28;
  v17 = v31;
  (*(v9 + 16))(v28, v32, v31);
  v18 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v19 = (v29 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v25;
  *(v20 + 2) = v24;
  *(v20 + 3) = v21;
  *(v20 + 4) = v33;
  *(v20 + 5) = v15;
  (*(v9 + 32))(&v20[v18], v16, v17);
  *&v20[v19] = v30;
  result = sub_20C13D624();
  *v34 = result;
  return result;
}

uint64_t sub_20BDBE648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C134014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = v9;
    v23 = v10;
    v14 = result;

    sub_20BEA2488(a3, a4, v12);

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v19 = v22;
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_20BDC80D8;
    *(v21 + 24) = v18;

    v20(sub_20B5DF6DC, v21);

    return (*(v23 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_20BDBE94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C134014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = v9;
    v23 = v10;
    v14 = result;

    sub_20BEA2B88(a3, a4, v12);

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v19 = v22;
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_20BDC733C;
    *(v21 + 24) = v18;

    v20(sub_20B5DF6DC, v21);

    return (*(v23 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_20BDBEC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C134014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = v9;
    v23 = v10;
    v14 = result;

    sub_20BEA3288(a3, a4, v12);

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v19 = v22;
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_20BDC6B5C;
    *(v21 + 24) = v18;

    v20(sub_20B5DF6DC, v21);

    return (*(v23 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_20BDBEF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a4;
  v39 = a3;
  v41 = sub_20C134014();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v42 = result;
    v17 = *(a6 + 32);
    v37 = v13;
    v17(a5, a6);
    swift_unknownObjectRelease();
    swift_getAssociatedTypeWitness();
    v36 = v12;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = a5;
    v34 = a7;
    v19 = *(AssociatedConformanceWitness + 272);
    v20 = swift_checkMetadataState();
    v35 = v15;
    v21 = v39;
    v19(v39, v38, v20, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v22 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v24 = v40;
    v23 = v41;
    (*(v10 + 16))(v40, v21, v41);
    v25 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v26 = swift_allocObject();
    v27 = v34;
    *(v26 + 2) = v33;
    *(v26 + 3) = a6;
    *(v26 + 4) = v27;
    (*(v10 + 32))(&v26[v25], v24, v23);
    *&v26[(v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v22;
    v29 = v35;
    v28 = v36;
    v30 = sub_20C137CB4();
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20BDC5C80;
    *(v31 + 24) = v26;

    v30(sub_20B5DF6DC, v31);

    return (*(v37 + 8))(v29, v28);
  }

  return result;
}

uint64_t sub_20BDBF2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  result = sub_20C133FF4();
  if (v13 != -1)
  {
    v14 = result;
    v15 = v12;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00);
    sub_20C133BD4();
    result = sub_20B584078(v14, v15, v16);
    if (v17 != 4)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        a7(v17, a4, a5, a6);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20BDBF40C(uint64_t a1, void *a2)
{
  v4 = sub_20C134B94();
  v6 = v5;
  if (v4 != sub_20C134B94() || v6 != v7)
  {
    sub_20C13DFF4();
  }

  v9 = [objc_allocWithZone(SMUBulletinInfo) init];
  v10 = sub_20C13C914();
  [v9 setImageSymbolName_];

  __swift_project_boxed_opaque_existential_1((v2 + *a2), *(v2 + *a2 + 24));
  sub_20C138D34();

  v11 = sub_20C13C914();

  [v9 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];

  return swift_unknownObjectRelease();
}

uint64_t sub_20BDBF5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134B94();
  v8 = v7;
  if (v6 != sub_20C134B94() || v8 != v9)
  {
    sub_20C13DFF4();
  }

  v11 = [objc_allocWithZone(SMUBulletinInfo) init];
  v12 = sub_20C13C914();
  [v11 setImageSymbolName_];

  v15[5] = v3;
  (*(a3 + 56))(v15, a2, a3);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_20C138D34();

  v13 = sub_20C13C914();

  __swift_destroy_boxed_opaque_existential_1(v15);
  [v11 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];
  return swift_unknownObjectRelease();
}

uint64_t sub_20BDBF818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t, unint64_t, char *))
{
  v23 = a6;
  v25 = a3;
  v26 = a4;
  v24 = sub_20C135ED4();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1352E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C134F24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;

    (*(v14 + 104))(v16, *MEMORY[0x277D51488], v13);
    (*(v10 + 104))(v12, *MEMORY[0x277D51768], v9);
    v19 = v24;
    (*(v6 + 104))(v8, *MEMORY[0x277D523D8], v24);
    v23(v16, v12, 0x6361745377656956, 0xE90000000000006BLL, v8);

    (*(v6 + 8))(v8, v19);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
  }

  v20 = v25;
  ObjectType = swift_getObjectType();
  v27 = v20;
  return sub_20B683148(ObjectType, v26);
}

uint64_t sub_20BDBFB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(a6 + 32))(a5, a6);
    swift_unknownObjectRelease();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(AssociatedConformanceWitness + 288);
    v11 = swift_checkMetadataState();
    v10(v11, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }

  ObjectType = swift_getObjectType();
  return sub_20B683148(ObjectType, a4);
}

uint64_t sub_20BDBFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v38 = a1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v39 = &v34 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v34 = v11;
    sub_20BDB61CC(v11);

    v16 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v4);
    v18 = *(v5 + 80);
    v35 = v12;
    v19 = v36;
    v20 = (v18 + 24) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    (*(v5 + 32))(v21 + v20, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v38;
    v22[1] = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20BDC7C74;
    *(v23 + 24) = v21;
    v24 = v37;
    v25 = v34;
    v26 = v40;
    (*(v7 + 16))(v37, v34, v40);
    v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v28 = swift_allocObject();
    (*(v7 + 32))(v28 + v27, v24, v26);
    v29 = (v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_20B5DF4B8;
    v29[1] = v23;

    v30 = v39;
    sub_20C137C94();
    (*(v7 + 8))(v25, v26);
    v31 = v35;
    v32 = sub_20C137CB4();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_20B5DF6DC, v33);

    return (*(v41 + 8))(v30, v31);
  }

  return result;
}

uint64_t sub_20BDC00DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v38 = a1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v39 = &v34 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v34 = v11;
    sub_20BDB6594(v11);

    v16 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v4);
    v18 = *(v5 + 80);
    v35 = v12;
    v19 = v36;
    v20 = (v18 + 24) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    (*(v5 + 32))(v21 + v20, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v38;
    v22[1] = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20BDC7050;
    *(v23 + 24) = v21;
    v24 = v37;
    v25 = v34;
    v26 = v40;
    (*(v7 + 16))(v37, v34, v40);
    v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v28 = swift_allocObject();
    (*(v7 + 32))(v28 + v27, v24, v26);
    v29 = (v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_20B5DF4B8;
    v29[1] = v23;

    v30 = v39;
    sub_20C137C94();
    (*(v7 + 8))(v25, v26);
    v31 = v35;
    v32 = sub_20C137CB4();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_20B5DF6DC, v33);

    return (*(v41 + 8))(v30, v31);
  }

  return result;
}

uint64_t sub_20BDC0564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v38 = a1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v39 = &v34 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v34 = v11;
    sub_20BDB695C(v11);

    v16 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v4);
    v18 = *(v5 + 80);
    v35 = v12;
    v19 = v36;
    v20 = (v18 + 24) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    (*(v5 + 32))(v21 + v20, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v38;
    v22[1] = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20BDC6918;
    *(v23 + 24) = v21;
    v24 = v37;
    v25 = v34;
    v26 = v40;
    (*(v7 + 16))(v37, v34, v40);
    v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v28 = swift_allocObject();
    (*(v7 + 32))(v28 + v27, v24, v26);
    v29 = (v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_20B5DF4B8;
    v29[1] = v23;

    v30 = v39;
    sub_20C137C94();
    (*(v7 + 8))(v25, v26);
    v31 = v35;
    v32 = sub_20C137CB4();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_20B5DF6DC, v33);

    return (*(v41 + 8))(v30, v31);
  }

  return result;
}

uint64_t sub_20BDC09EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v45 = a5;
  v43 = a4;
  v47 = a1;
  v48 = a2;
  v8 = sub_20C134014();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v44 = *(v50 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v49 = &v41 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = a6;
    v42 = v14;
    v18 = v14;
    v19 = v8;
    v20 = v45;
    sub_20BDB6D28(v45, a6, v18);
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v22 = v19;
    (*(v9 + 16))(&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v19);
    v23 = *(v9 + 80);
    v43 = v15;
    v24 = v48;
    v25 = (v23 + 48) & ~v23;
    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 2) = v20;
    *(v26 + 3) = v27;
    *(v26 + 4) = v52;
    *(v26 + 5) = v21;
    (*(v9 + 32))(&v26[v25], &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
    v28 = &v26[(v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v28 = v47;
    *(v28 + 1) = v24;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_20BDC57E0;
    *(v29 + 24) = v26;
    v30 = v44;
    v31 = v46;
    v32 = v42;
    v33 = v50;
    (*(v44 + 16))(v46, v42, v50);
    v34 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v35 = swift_allocObject();
    (*(v30 + 32))(v35 + v34, v31, v33);
    v36 = (v35 + ((v11 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_20B5DF4B8;
    v36[1] = v29;

    v37 = v49;
    sub_20C137C94();
    (*(v30 + 8))(v32, v33);
    v38 = v43;
    v39 = sub_20C137CB4();
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    v39(sub_20B5DF6DC, v40);

    return (*(v51 + 8))(v37, v38);
  }

  return result;
}

uint64_t sub_20BDC0EB4(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if ((a1 & 1) == 0)
  {
    return a4(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a4(MEMORY[0x277D84F90]);
  }

  v7 = Strong;
  v8 = sub_20BDC3770(*(Strong + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider), a3, (Strong + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer), *(Strong + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_platform));

  if (v8 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v9 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v9 = v8;
  }

  a4(v9);
}

uint64_t sub_20BDC1024(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void *a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, void))
{
  if ((a1 & 1) == 0)
  {
    return a4(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a4(MEMORY[0x277D84F90]);
  }

  v15 = *(Strong + *a7);
  v16 = Strong;
  v17 = a9(v15, a3, Strong + *a8, *(Strong + *a6));

  if (v17 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v18 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v18 = v17;
  }

  a4(v18);
}

uint64_t sub_20BDC1198(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*a1 != 1)
  {
    return a4(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a4(MEMORY[0x277D84F90]);
  }

  v11 = sub_20BDC1304(a3, a6, a7);
  swift_unknownObjectRelease();
  if (v11 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v12 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v12 = v11;
  }

  a4(v12);
}

uint64_t sub_20BDC1304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a3 + 48))(a2, a3);
  v16 = v3;
  v8 = (*(a3 + 32))(a2, a3);
  v15 = v3;
  (*(a3 + 56))(v14, a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = sub_20B654CB0(v8, a1, v14, v7, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

uint64_t sub_20BDC1464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_20C134F24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(a2 + 24);
    v13 = result;
    ObjectType = swift_getObjectType();
    v15 = v13;
    (*(v8 + 104))(v10, *MEMORY[0x277D51418], v7);
    (*(v12 + 56))(a3, v10, a4, 1, ObjectType, v12);
    (*(v8 + 8))(v10, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BDC15D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v49 = a1;
  v50 = a2;
  v46 = sub_20C133244();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v40 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v43 = v11;
    sub_20BDB61CC(v11);

    v41 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v46;
    (*(v5 + 16))(v19, v45, v46);
    v21 = *(v5 + 80);
    v44 = v12;
    v45 = v13;
    v42 = v8;
    v22 = v50;
    v23 = (v21 + 24) & ~v21;
    v24 = v47;
    v40 = v7;
    v25 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v41;
    (*(v5 + 32))(v26 + v23, v19, v20);
    *(v26 + v25) = v18;
    v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v49;
    v27[1] = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BDC7AC4;
    *(v28 + 24) = v26;
    v29 = v48;
    v30 = v43;
    v31 = v40;
    (*(v24 + 16))(v48, v43, v40);
    v32 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v24 + 32))(v34 + v32, v29, v31);
    v35 = (v34 + v33);
    *v35 = sub_20B5DF4B8;
    v35[1] = v28;

    v36 = v51;
    sub_20C137C94();
    (*(v24 + 8))(v30, v31);
    v37 = v44;
    v38 = sub_20C137CB4();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v38(sub_20B5DF6DC, v39);

    return (*(v45 + 8))(v36, v37);
  }

  return result;
}

uint64_t sub_20BDC1AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v49 = a1;
  v50 = a2;
  v46 = sub_20C133244();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v40 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v43 = v11;
    sub_20BDB6594(v11);

    v41 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v46;
    (*(v5 + 16))(v19, v45, v46);
    v21 = *(v5 + 80);
    v44 = v12;
    v45 = v13;
    v42 = v8;
    v22 = v50;
    v23 = (v21 + 24) & ~v21;
    v24 = v47;
    v40 = v7;
    v25 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v41;
    (*(v5 + 32))(v26 + v23, v19, v20);
    *(v26 + v25) = v18;
    v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v49;
    v27[1] = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BDC6E80;
    *(v28 + 24) = v26;
    v29 = v48;
    v30 = v43;
    v31 = v40;
    (*(v24 + 16))(v48, v43, v40);
    v32 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v24 + 32))(v34 + v32, v29, v31);
    v35 = (v34 + v33);
    *v35 = sub_20B5DF4B8;
    v35[1] = v28;

    v36 = v51;
    sub_20C137C94();
    (*(v24 + 8))(v30, v31);
    v37 = v44;
    v38 = sub_20C137CB4();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v38(sub_20B5DF6DC, v39);

    return (*(v45 + 8))(v36, v37);
  }

  return result;
}

uint64_t sub_20BDC1F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v49 = a1;
  v50 = a2;
  v46 = sub_20C133244();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v40 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v43 = v11;
    sub_20BDB695C(v11);

    v41 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v46;
    (*(v5 + 16))(v19, v45, v46);
    v21 = *(v5 + 80);
    v44 = v12;
    v45 = v13;
    v42 = v8;
    v22 = v50;
    v23 = (v21 + 24) & ~v21;
    v24 = v47;
    v40 = v7;
    v25 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v41;
    (*(v5 + 32))(v26 + v23, v19, v20);
    *(v26 + v25) = v18;
    v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v49;
    v27[1] = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BDC68C4;
    *(v28 + 24) = v26;
    v29 = v48;
    v30 = v43;
    v31 = v40;
    (*(v24 + 16))(v48, v43, v40);
    v32 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v24 + 32))(v34 + v32, v29, v31);
    v35 = (v34 + v33);
    *v35 = sub_20B5DF4B8;
    v35[1] = v28;

    v36 = v51;
    sub_20C137C94();
    (*(v24 + 8))(v30, v31);
    v37 = v44;
    v38 = sub_20C137CB4();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v38(sub_20B5DF6DC, v39);

    return (*(v45 + 8))(v36, v37);
  }

  return result;
}

uint64_t sub_20BDC2460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v52 = a4;
  v53 = a5;
  v58 = a1;
  v59 = a2;
  v9 = sub_20C133244();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v60 = &v46 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v50 = a6;
    v51 = v15;
    sub_20BDB6D28(a6, v61, v15);
    swift_unknownObjectRelease();
    v48 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = v54;
    v22 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v55;
    (*(v54 + 16))(v22, v53, v55);
    v24 = *(v21 + 80);
    v52 = v16;
    v25 = (v24 + 48) & ~v24;
    v47 = v11;
    v26 = v56;
    v49 = v12;
    v27 = v59;
    v28 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = v17;
    v29 = swift_allocObject();
    v30 = v61;
    v31 = v62;
    *(v29 + 2) = v50;
    *(v29 + 3) = v30;
    v32 = v48;
    *(v29 + 4) = v31;
    *(v29 + 5) = v32;
    (*(v21 + 32))(&v29[v25], v22, v23);
    *&v29[v28] = v20;
    v33 = &v29[(v28 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v33 = v58;
    *(v33 + 1) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20BDC5594;
    *(v34 + 24) = v29;
    v35 = v57;
    v36 = v51;
    v37 = v47;
    (*(v26 + 16))(v57, v51, v47);
    v38 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v39 = (v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    (*(v26 + 32))(v40 + v38, v35, v37);
    v41 = (v40 + v39);
    *v41 = sub_20B5D9FF4;
    v41[1] = v34;

    v42 = v60;
    sub_20C137C94();
    (*(v26 + 8))(v36, v37);
    v43 = v52;
    v44 = sub_20C137CB4();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    v44(sub_20B52347C, v45);

    return (*(v53 + 8))(v42, v43);
  }

  return result;
}

uint64_t sub_20BDC2968(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v27 = a3;
  v7 = sub_20C133244();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return (a5)(MEMORY[0x277D84F90], v10);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (a5)(MEMORY[0x277D84F90], v10);
  }

  v13 = Strong;
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  v26 = a5;
  v15 = v14;
  v25[3] = sub_20B51C88C(0, &qword_27C7713A0);
  __swift_project_boxed_opaque_existential_1(&v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer], *&v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24]);
  v16 = sub_20B5E107C();
  v25[1] = v17;
  v25[2] = v16;
  v18 = sub_20C13C914();
  v25[0] = [objc_opt_self() systemImageNamed_];

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v7);
  v20 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v8 + 32))(v21 + v20, v11, v7);
  v22 = sub_20C13D624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F580;
  *(v23 + 32) = v22;

  v26(v23);
}

uint64_t sub_20BDC2C88(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v33 = a8;
  v34 = a5;
  v32 = a3;
  v12 = sub_20C133244();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return (v34)(MEMORY[0x277D84F90], v15);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (v34)(MEMORY[0x277D84F90], v15);
  }

  v18 = Strong;
  v31[3] = a9;
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  v31[4] = a6;
  v20 = v19;
  v31[2] = sub_20B51C88C(0, &qword_27C7713A0);
  __swift_project_boxed_opaque_existential_1(&v18[*a7], *&v18[*a7 + 24]);
  v21 = sub_20B5E107C();
  v31[0] = v22;
  v31[1] = v21;
  v23 = sub_20C13C914();
  v24 = [objc_opt_self() systemImageNamed_];

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v12);
  v26 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  (*(v13 + 32))(v27 + v26, v16, v12);
  v28 = sub_20C13D624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C14F580;
  *(v29 + 32) = v28;

  v34(v29);
}

uint64_t sub_20BDC2FA0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    return a5(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a5(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_20BDC313C(a3, Strong, a7, a8);
  v14 = v13;
  swift_unknownObjectRelease();

  if (v14 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v15 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v15 = v14;
  }

  a5(v15);
}

double sub_20BDC313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C133244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v19[1] = sub_20B51C88C(0, &qword_27C7713A0);
  v21 = v4;
  (*(a4 + 56))(v20, a3, a4);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_20B5E107C();
  v11 = sub_20C13C914();
  v12 = [objc_opt_self() systemImageNamed_];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v9 + 32))(v15 + v14, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v16 = sub_20C13D624();
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v17 = swift_allocObject();
  *&result = 1;
  *(v17 + 16) = xmmword_20C14F580;
  *(v17 + 32) = v16;
  return result;
}

void sub_20BDC33EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v3 = sub_20C1331B4();
    [v1 collectionView:v2 didSelectItemAtIndexPath:v3];
  }
}

uint64_t sub_20BDC3488@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_20C132E94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v6 = sub_20C135704();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6 & 1;
  return result;
}

uint64_t sub_20BDC36D4(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;

  return sub_20C137C94();
}

uint64_t sub_20BDC3770(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v63 = a1;
  v64 = a2;
  v58 = a4;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v66 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20B51C88C(0, &qword_27C7713A0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v59 = sub_20C138D34();
  v57 = v9;
  v10 = sub_20C13C914();
  v65 = objc_opt_self();
  v11 = [v65 smm:v10 systemImageNamed:?];

  v12 = swift_allocObject();
  *(v12 + 24) = &off_28228F3A8;
  *(v12 + 32) = &off_28228F248;
  swift_unknownObjectWeakInit();
  v13 = *(v6 + 16);
  v61 = v6 + 16;
  v62 = v13;
  v14 = v64;
  v13(v8, v64, v5);
  v69 = *(v6 + 80);
  v15 = (v69 + 24) & ~v69;
  v60 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = *(v6 + 32);
  v67 = v6 + 32;
  v68 = v17;
  v17(v16 + v15, v8, v5);
  v59 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v18 = sub_20C138D34();
  v56 = v19;
  v57 = v18;
  v20 = sub_20C13C914();
  v55 = [v65 smm:v20 systemImageNamed:?];

  v21 = swift_allocObject();
  *(v21 + 24) = &off_28228F3A8;
  *(v21 + 32) = &off_28228F248;
  swift_unknownObjectWeakInit();
  v22 = v62;
  v62(v8, v14, v5);
  v23 = v60;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = v5;
  v68(v24 + v23, v8, v5);
  v57 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v56 = sub_20C138D34();
  v26 = sub_20C13C914();
  v27 = [v65 systemImageNamed_];

  v28 = swift_allocObject();
  *(v28 + 24) = &off_28228F3A8;
  *(v28 + 32) = &off_28228F248;
  swift_unknownObjectWeakInit();
  v29 = v64;
  v22(v8, v64, v5);
  v30 = v60;
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v68(v31 + v30, v8, v5);
  v56 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_20C138D34();
  v32 = sub_20C13C914();
  v33 = [v65 systemImageNamed_];

  v34 = swift_allocObject();
  *(v34 + 24) = &off_28228F3A8;
  *(v34 + 32) = &off_28228F248;
  swift_unknownObjectWeakInit();
  v62(v8, v29, v5);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v68(v35 + v30, v8, v25);
  v36 = sub_20C13D624();
  v37 = sub_20C133E44();
  v39 = sub_20BEA9314(v37, v38);

  if (v58 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v40 = swift_allocObject();
    v41 = v40;
    *(v40 + 16) = xmmword_20C14F580;
    if (v39)
    {
      *(v40 + 32) = v57;
      v42 = v59;
LABEL_12:

      v53 = v56;
      goto LABEL_13;
    }

    *(v40 + 32) = v59;
LABEL_11:
    v42 = v57;
    goto LABEL_12;
  }

  v43 = sub_20C133E44();
  v45 = sub_20BEB1778(v43, v44);
  v47 = v46;
  v48 = ~v46;

  v49 = sub_20C133FF4();
  sub_20B584078(v49, v50, v51);
  if (v48 && (v47 & 1) != 0 && ((1 << v45) & 0x1DD) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v36;

    v36 = v56;
    v53 = v57;
    goto LABEL_13;
  }

  if ((v39 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v59;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C151490;
  v52 = v56;
  *(v41 + 32) = v57;
  *(v41 + 40) = v52;
  v53 = v59;
LABEL_13:

  return v41;
}

uint64_t sub_20BDC4010(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v63 = a1;
  v64 = a2;
  v58 = a4;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v66 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20B51C88C(0, &qword_27C7713A0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v59 = sub_20C138D34();
  v57 = v9;
  v10 = sub_20C13C914();
  v65 = objc_opt_self();
  v11 = [v65 smm:v10 systemImageNamed:?];

  v12 = swift_allocObject();
  *(v12 + 24) = &off_2822EA1C0;
  *(v12 + 32) = &off_2822EA060;
  swift_unknownObjectWeakInit();
  v13 = *(v6 + 16);
  v61 = v6 + 16;
  v62 = v13;
  v14 = v64;
  v13(v8, v64, v5);
  v69 = *(v6 + 80);
  v15 = (v69 + 24) & ~v69;
  v60 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = *(v6 + 32);
  v67 = v6 + 32;
  v68 = v17;
  v17(v16 + v15, v8, v5);
  v59 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v18 = sub_20C138D34();
  v56 = v19;
  v57 = v18;
  v20 = sub_20C13C914();
  v55 = [v65 smm:v20 systemImageNamed:?];

  v21 = swift_allocObject();
  *(v21 + 24) = &off_2822EA1C0;
  *(v21 + 32) = &off_2822EA060;
  swift_unknownObjectWeakInit();
  v22 = v62;
  v62(v8, v14, v5);
  v23 = v60;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = v5;
  v68(v24 + v23, v8, v5);
  v57 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v56 = sub_20C138D34();
  v26 = sub_20C13C914();
  v27 = [v65 systemImageNamed_];

  v28 = swift_allocObject();
  *(v28 + 24) = &off_2822EA1C0;
  *(v28 + 32) = &off_2822EA060;
  swift_unknownObjectWeakInit();
  v29 = v64;
  v22(v8, v64, v5);
  v30 = v60;
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v68(v31 + v30, v8, v5);
  v56 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_20C138D34();
  v32 = sub_20C13C914();
  v33 = [v65 systemImageNamed_];

  v34 = swift_allocObject();
  *(v34 + 24) = &off_2822EA1C0;
  *(v34 + 32) = &off_2822EA060;
  swift_unknownObjectWeakInit();
  v62(v8, v29, v5);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v68(v35 + v30, v8, v25);
  v36 = sub_20C13D624();
  v37 = sub_20C133E44();
  v39 = sub_20BEA9320(v37, v38);

  if (v58 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v40 = swift_allocObject();
    v41 = v40;
    *(v40 + 16) = xmmword_20C14F580;
    if (v39)
    {
      *(v40 + 32) = v57;
      v42 = v59;
LABEL_12:

      v53 = v56;
      goto LABEL_13;
    }

    *(v40 + 32) = v59;
LABEL_11:
    v42 = v57;
    goto LABEL_12;
  }

  v43 = sub_20C133E44();
  v45 = sub_20BEB1784(v43, v44);
  v47 = v46;
  v48 = ~v46;

  v49 = sub_20C133FF4();
  sub_20B584078(v49, v50, v51);
  if (v48 && (v47 & 1) != 0 && ((1 << v45) & 0x1DD) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v36;

    v36 = v56;
    v53 = v57;
    goto LABEL_13;
  }

  if ((v39 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v59;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C151490;
  v52 = v56;
  *(v41 + 32) = v57;
  *(v41 + 40) = v52;
  v53 = v59;
LABEL_13:

  return v41;
}

uint64_t sub_20BDC48B0(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v63 = a1;
  v64 = a2;
  v58 = a4;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v66 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20B51C88C(0, &qword_27C7713A0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v59 = sub_20C138D34();
  v57 = v9;
  v10 = sub_20C13C914();
  v65 = objc_opt_self();
  v11 = [v65 smm:v10 systemImageNamed:?];

  v12 = swift_allocObject();
  *(v12 + 24) = &off_2822A7A58;
  *(v12 + 32) = &off_2822A78F8;
  swift_unknownObjectWeakInit();
  v13 = *(v6 + 16);
  v61 = v6 + 16;
  v62 = v13;
  v14 = v64;
  v13(v8, v64, v5);
  v69 = *(v6 + 80);
  v15 = (v69 + 24) & ~v69;
  v60 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = *(v6 + 32);
  v67 = v6 + 32;
  v68 = v17;
  v17(v16 + v15, v8, v5);
  v59 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v18 = sub_20C138D34();
  v56 = v19;
  v57 = v18;
  v20 = sub_20C13C914();
  v55 = [v65 smm:v20 systemImageNamed:?];

  v21 = swift_allocObject();
  *(v21 + 24) = &off_2822A7A58;
  *(v21 + 32) = &off_2822A78F8;
  swift_unknownObjectWeakInit();
  v22 = v62;
  v62(v8, v14, v5);
  v23 = v60;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = v5;
  v68(v24 + v23, v8, v5);
  v57 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v56 = sub_20C138D34();
  v26 = sub_20C13C914();
  v27 = [v65 systemImageNamed_];

  v28 = swift_allocObject();
  *(v28 + 24) = &off_2822A7A58;
  *(v28 + 32) = &off_2822A78F8;
  swift_unknownObjectWeakInit();
  v29 = v64;
  v22(v8, v64, v5);
  v30 = v60;
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v68(v31 + v30, v8, v5);
  v56 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_20C138D34();
  v32 = sub_20C13C914();
  v33 = [v65 systemImageNamed_];

  v34 = swift_allocObject();
  *(v34 + 24) = &off_2822A7A58;
  *(v34 + 32) = &off_2822A78F8;
  swift_unknownObjectWeakInit();
  v62(v8, v29, v5);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v68(v35 + v30, v8, v25);
  v36 = sub_20C13D624();
  v37 = sub_20C133E44();
  v39 = sub_20BEA96A8(v37, v38);

  if (v58 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v40 = swift_allocObject();
    v41 = v40;
    *(v40 + 16) = xmmword_20C14F580;
    if (v39)
    {
      *(v40 + 32) = v57;
      v42 = v59;
LABEL_12:

      v53 = v56;
      goto LABEL_13;
    }

    *(v40 + 32) = v59;
LABEL_11:
    v42 = v57;
    goto LABEL_12;
  }

  v43 = sub_20C133E44();
  v45 = sub_20BEB1B94(v43, v44);
  v47 = v46;
  v48 = ~v46;

  v49 = sub_20C133FF4();
  sub_20B584078(v49, v50, v51);
  if (v48 && (v47 & 1) != 0 && ((1 << v45) & 0x1DD) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v36;

    v36 = v56;
    v53 = v57;
    goto LABEL_13;
  }

  if ((v39 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v59;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C151490;
  v52 = v56;
  *(v41 + 32) = v57;
  *(v41 + 40) = v52;
  v53 = v59;
LABEL_13:

  return v41;
}

uint64_t sub_20BDC5150(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  v9 = sub_20C134014();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 identifier];
  v16[3] = swift_getObjectType();
  v16[0] = v14;
  sub_20BDAD280(v16, v8);
  __swift_destroy_boxed_opaque_existential_1(v16);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20B520158(v8, &unk_27C769C20);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_20BDAE7CC(v13, a2, a3);
  return (*(v10 + 8))(v13, v9);
}

id sub_20BDC5334()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_20C134014() - 8);
  v4 = v0[5];
  v5 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_20BDAED00(v4, v5, v1, v2);
}

uint64_t sub_20BDC53BC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_20C134014() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_20C133244() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BDAEEE4(a1, v1[5], v1 + v7, v1 + v10, *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5);
}

uint64_t sub_20BDC54EC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(sub_20C133244() - 8);
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return sub_20BDC2460(a1, a2, v9, v10, v11, v5, v6, v7);
}

uint64_t sub_20BDC5594(_BYTE *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_20C133244() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BDC2FA0(a1, v1[5], v1 + v6, *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v3, v4);
}

uint64_t sub_20BDC5740(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(sub_20C134014() - 8);
  v9 = v2[5];
  v10 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_20BDC09EC(a1, a2, v9, v10, v5, v6, v7);
}

uint64_t sub_20BDC57E0(_BYTE *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_20C134014() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_20BDC1198(a1, v1[5], v1 + v6, *v7, *(v7 + 1), v3, v4);
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_13(void (*a1)(void))
{
  v3 = sub_20C134014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  a1(*(v1 + 40));
  (*(v4 + 8))(v1 + v6, v3);

  return MEMORY[0x2821FE8E8](v1, v6 + v7, v5 | 7);
}

uint64_t sub_20BDC5A70(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_20C134014() - 8);
  v7 = v1[5];
  v8 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_20BDBD8C4(a1, v7, v8, v3, v4, v5);
}

uint64_t sub_20BDC5B20(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_20C134014() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[5];
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BDBEF54(a1, v8, v1 + v7, v9, v3, v4, v5);
}

uint64_t objectdestroy_111Tm_0()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20BDC5C98(uint64_t a1, void (*a2)(void, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(sub_20C134014() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  return sub_20BDBF2FC(a1, v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6, v7, a2);
}

uint64_t objectdestroy_80Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_20BDC5E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_20C134014();
  v6 = *(v3 + 40);

  return a3(a1, a2, v6);
}

uint64_t objectdestroy_87Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20BDC600C(_BYTE *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(sub_20C134014() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  return sub_20BDBB0BC(a1, v2[5], v2 + v9, *(v2 + v9 + *(v8 + 64)), *(v2 + ((v9 + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v9 + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), v5, v6, v7, a2);
}

uint64_t sub_20BDC6170(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_20C134014() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C137254() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C134D54() - 8);
  v12 = v1[5];
  v13 = v1 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_20BDB9A54(a1, v12, v1 + v6, v1 + v9, v13, v3, v4);
}

uint64_t sub_20BDC62C8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_20C134014() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C137254() - 8);
  v9 = v1[5];
  v10 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_20BDB7F58(a1, v9, v1 + v6, v10, v3, v4);
}

uint64_t sub_20BDC63C4(void *a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v7 = sub_20C134014();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 identifier];
  v14[3] = swift_getObjectType();
  v14[0] = v12;
  sub_20BDAD280(v14, v6);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_20B520158(v6, &unk_27C769C20);
  }

  (*(v8 + 32))(v11, v6, v7);
  a2(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_20BDC6590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BDC65F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BDC66E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(sub_20C134014() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C133244() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BDAEE44(a1, *(v2 + 16), v2 + v6, v2 + v9, *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_20BDC67F8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_20C134014() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_20BDC6A24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20BDC6B7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t))
{
  v6 = sub_20C133FF4();
  if (v8 != -1)
  {
    v9 = v6;
    v10 = v7;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00);
    sub_20C133BD4();
    sub_20B584078(v9, v10, v11);
    if (v14 != 4)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        a4(v14, a3);
      }
    }
  }
}

uint64_t sub_20BDC6DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_20C133244() - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8, v9);
}

uint64_t sub_20BDC6EBC(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_20C133244() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BDC2C88(*a1, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3, a4);
}

uint64_t sub_20BDC6FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_20C134014() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_20BDC7094(char *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  v11 = *(sub_20C134014() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_20BDC1024(*a1, *(v5 + 16), v5 + v12, *v13, *(v13 + 8), a2, a3, a4, a5);
}

uint64_t sub_20BDC71C0(char *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(sub_20C134014() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_20BDBAF64(*a1, *(v2 + 16), v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), a2);
}

uint64_t sub_20BDC73F0(char *a1, uint64_t a2, uint64_t (*a3)(void *), void *(*a4)(uint64_t *__return_ptr, unint64_t), void *(*a5)(uint64_t *__return_ptr, unint64_t))
{
  v11 = *(sub_20C134014() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  return sub_20BDB73B0(*a1, *(v5 + 16), (v5 + v12), *(v5 + v12 + *(v11 + 64)), *(v5 + ((v12 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v5 + ((v12 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), a2, a3, a4, a5);
}

uint64_t sub_20BDC753C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t objectdestroy_159Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_165Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v10 | 7);
}

uint64_t objectdestroy_53Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_183Tm()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_191Tm()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20BDC7AC4(char *a1)
{
  v3 = *(sub_20C133244() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BDC2968(*a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_235Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20BDC7C74(char *a1)
{
  v3 = *(sub_20C134014() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_20BDC0EB4(*a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_35Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_20BDC7E60(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t objectdestroy_296Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20BDC7FAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_20BDBE088(a1, *(v6 + 16), *(v6 + 24), *(v6 + 32), a2, a3, a4, a5);
  if (!v7)
  {
    *a6 = result;
  }

  return result;
}

uint64_t objectdestroy_300Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_304Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_20BDC81B4(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  v6 = *(sub_20C134014() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  sub_20BDC6B7C(v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t objectdestroy_269Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_20BDC8334(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_20C134014() - 8);
  v7 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));
  v8 = *(v7 + *(v6 + 64));
  v9 = *(v3 + 16);

  return a3(a1, a2, v9, v7, v8);
}

uint64_t objectdestroy_276Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20BDC84F0(unsigned __int8 *a1, uint64_t (*a2)(void, void, unint64_t, void, void, void))
{
  v5 = *(sub_20C134014() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return a2(*a1, *(v2 + 16), v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20BDC85A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BDC86AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_20BDB77EC(a1, *(v5 + 16), *(v5 + 24), *(v5 + 32), a2, a3, a4);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}