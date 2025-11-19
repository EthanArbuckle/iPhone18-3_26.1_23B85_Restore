uint64_t sub_22F3C3070(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22F741BD0();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22F13A100(i, v6);
    sub_22F170D8C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22F741BA0();
    v4 = *(v7 + 16);
    sub_22F741BE0();
    sub_22F741BF0();
    sub_22F741BB0();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_22F3C315C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

size_t sub_22F3C319C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 80);

  sub_22F741C40();

  sub_22F741E10();
  v10 = *(v5 + 48);
  v38 = v5 + 48;
  v40 = v10;
  v11 = v10(v3, 1, v4);
  v12 = MEMORY[0x277D84F90];
  if (v11 != 1)
  {
    v13 = 0;
    v36 = v5;
    v37 = v9;
    v39 = (v9 + 32) & ~v9;
    v19 = MEMORY[0x277D84F90] + v39;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      result = sub_22F15CB04(v3, v8);
      if (v13)
      {
        v12 = v20;
        v17 = __OFSUB__(v13--, 1);
        if (v17)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v21 = v20[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0570, &qword_22F770810);
        v24 = *(v5 + 72);
        v25 = v39;
        v12 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v12);
        if (!v24)
        {
          goto LABEL_34;
        }

        v26 = result - v25;
        if (result - v25 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_35;
        }

        v28 = v4;
        v29 = v26 / v24;
        v12[2] = v23;
        v12[3] = 2 * (v26 / v24);
        v30 = v12 + v25;
        v31 = v20[3] >> 1;
        v32 = v31 * v24;
        if (v20[2])
        {
          if (v12 < v20 || v30 >= v20 + v39 + v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20[2] = 0;
        }

        v19 = &v30[v32];
        v34 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v4 = v28;
        v5 = v36;
        v17 = __OFSUB__(v34, 1);
        v13 = v34 - 1;
        if (v17)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_22F15CB04(v8, v19);
      v19 += *(v5 + 72);
      sub_22F741E10();
      v20 = v12;
      if (v40(v3, 1, v4) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v13 = 0;
LABEL_3:

  result = sub_22F120ADC(v3, &qword_27DAB1250, &qword_22F781A10);
  v15 = v12[3];
  if (v15 >= 2)
  {
    v16 = v15 >> 1;
    v17 = __OFSUB__(v16, v13);
    v18 = v16 - v13;
    if (v17)
    {
      goto LABEL_36;
    }

    v12[2] = v18;
  }

  return v12;
}

size_t sub_22F3C34E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 80);
  sub_22F3BECB8(v3);
  v10 = *(v5 + 48);
  v38 = v5 + 48;
  v40 = v10;
  v11 = v10(v3, 1, v4);
  v12 = MEMORY[0x277D84F90];
  if (v11 != 1)
  {
    v13 = 0;
    v36 = v5;
    v37 = v9;
    v39 = (v9 + 32) & ~v9;
    v19 = MEMORY[0x277D84F90] + v39;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      result = sub_22F15CB04(v3, v8);
      if (v13)
      {
        v12 = v20;
        v17 = __OFSUB__(v13--, 1);
        if (v17)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v21 = v20[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0570, &qword_22F770810);
        v24 = *(v5 + 72);
        v25 = v39;
        v12 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v12);
        if (!v24)
        {
          goto LABEL_34;
        }

        v26 = result - v25;
        if (result - v25 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_35;
        }

        v28 = v4;
        v29 = v26 / v24;
        v12[2] = v23;
        v12[3] = 2 * (v26 / v24);
        v30 = v12 + v25;
        v31 = v20[3] >> 1;
        v32 = v31 * v24;
        if (v20[2])
        {
          if (v12 < v20 || v30 >= v20 + v39 + v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20[2] = 0;
        }

        v19 = &v30[v32];
        v34 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v4 = v28;
        v5 = v36;
        v17 = __OFSUB__(v34, 1);
        v13 = v34 - 1;
        if (v17)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_22F15CB04(v8, v19);
      v19 += *(v5 + 72);
      sub_22F3BECB8(v3);
      v20 = v12;
      if (v40(v3, 1, v4) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v13 = 0;
LABEL_3:
  result = sub_22F120ADC(v3, &qword_27DAB1250, &qword_22F781A10);
  v15 = v12[3];
  if (v15 >= 2)
  {
    v16 = v15 >> 1;
    v17 = __OFSUB__(v16, v13);
    v18 = v16 - v13;
    if (v17)
    {
      goto LABEL_36;
    }

    v12[2] = v18;
  }

  return v12;
}

void sub_22F3C3800(uint64_t a1)
{
  v35 = type metadata accessor for Song();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v6 < v8)
  {
    v10 = 0;
    v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v12 = MEMORY[0x277D84F90] + v11;
    v38 = *(v2 + 80);
    v39 = v11;
    v40 = v7 + v11;
    v13 = MEMORY[0x277D84F90];
    v36 = v5;
    v37 = v7;
    while ((v6 & 0x8000000000000000) == 0)
    {
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_36;
      }

      v15 = *(v2 + 72);
      v16 = v40 + v15 * v6;
      *(a1 + 24) = v6 + 1;
      sub_22F15CAA0(v16, v5);
      if (v10)
      {
        v9 = v13;
        v14 = __OFSUB__(v10--, 1);
        if (v14)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v17 = v13[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_37;
        }

        v18 = a1;
        v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0570, &qword_22F770810);
        v21 = v39;
        v9 = swift_allocObject();
        v22 = _swift_stdlib_malloc_size(v9);
        if (!v15)
        {
          goto LABEL_38;
        }

        v23 = v22 - v21;
        if (v22 - v21 == 0x8000000000000000 && v15 == -1)
        {
          goto LABEL_39;
        }

        v25 = v2;
        v26 = v23 / v15;
        v9[2] = v20;
        v9[3] = 2 * (v23 / v15);
        v27 = v9 + v21;
        v28 = v13[3] >> 1;
        v29 = v28 * v15;
        if (v13[2])
        {
          if (v9 < v13 || v27 >= v13 + v39 + v29)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v13)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v13[2] = 0;
        }

        v12 = &v27[v29];
        v31 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

        v2 = v25;
        a1 = v18;
        v5 = v36;
        v7 = v37;
        v14 = __OFSUB__(v31, 1);
        v10 = v31 - 1;
        if (v14)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      sub_22F15CB04(v5, v12);
      v12 += v15;
      v6 = *(a1 + 24);
      v13 = v9;
      if (v6 >= v8)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_30:
  v10 = 0;
LABEL_31:
  *(a1 + 24) = 0;
  v32 = v9[3];
  if (v32 >= 2)
  {
    v33 = v32 >> 1;
    v14 = __OFSUB__(v33, v10);
    v34 = v33 - v10;
    if (v14)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v9[2] = v34;
  }
}

uint64_t sub_22F3C3A9C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v6 = (63 - v3) >> 6;

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90] + 32; ; i = (v35 + 1))
  {
    v35 = i;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v8 >> 62)
    {
      result = sub_22F741A00();
      if (v9 == result)
      {
LABEL_8:
        while (v5)
        {
          v14 = v11;
LABEL_15:
          v16 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
          v17 = *(*(a1 + 56) + ((v14 << 9) | (8 * v16)));

          v9 = 0;
          v8 = v17;
          if (v17)
          {
            goto LABEL_6;
          }
        }

        v15 = v11;
        v9 = v10;
        while (1)
        {
          v14 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v14 >= v6)
          {
            goto LABEL_40;
          }

          v5 = *(v2 + 8 * v14);
          ++v15;
          if (v5)
          {
            v11 = v14;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == result)
      {
        goto LABEL_8;
      }
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v18 = *(v8 + 8 * v9 + 32);

    v19 = __OFADD__(v9++, 1);
    if (v19)
    {
      goto LABEL_39;
    }

LABEL_22:
    if (!v10)
    {
      v34 = result;
      v20 = v12[3];
      if (((v20 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_49;
      }

      v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      v36 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v23 = swift_allocObject();
      v24 = _swift_stdlib_malloc_size(v23);
      v25 = v24 - 32;
      if (v24 < 32)
      {
        v25 = v24 - 25;
      }

      v26 = v25 >> 3;
      v23[2] = v36;
      v23[3] = (2 * (v25 >> 3)) | 1;
      v27 = (v23 + 4);
      v28 = v12[3] >> 1;
      if (v12[2])
      {
        v29 = v12 + 4;
        if (v23 != v12 || v27 >= v29 + 8 * v28)
        {
          v33 = v12[3] >> 1;
          memmove(v23 + 4, v29, 8 * v28);
          v28 = v33;
          v27 = (v23 + 4);
        }

        v12[2] = 0;
      }

      v35 = (v27 + 8 * v28);
      v10 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

      v12 = v23;
      result = v34;
    }

    v19 = __OFSUB__(v10--, 1);
    if (v19)
    {
      goto LABEL_48;
    }

    *v35 = result;
  }

  result = MEMORY[0x2319016F0](v9, v8);
  v19 = __OFADD__(v9++, 1);
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  sub_22F0FF590();

  v30 = v12[3];
  if (v30 < 2)
  {
    return v12;
  }

  v31 = v30 >> 1;
  v19 = __OFSUB__(v31, v9);
  v32 = v31 - v9;
  if (!v19)
  {
    v12[2] = v32;
    return v12;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void sub_22F3C3D98(uint64_t a1)
{
  v3 = v1;
  v5 = [v1 adamID];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_22F740E20();
  v9 = v8;

  if (v7 == *a1 && v9 == *(a1 + 8))
  {
  }

  else
  {
    v11 = sub_22F742040();

    if ((v11 & 1) == 0)
    {
LABEL_7:
      sub_22F3C4B9C();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
      return;
    }
  }

  if (*(a1 + 24))
  {
    v13 = *(a1 + 16);
    v14 = sub_22F740DF0();
  }

  else
  {
    v14 = 0;
  }

  [v3 setTitle_];

  if (*(a1 + 40))
  {
    v15 = *(a1 + 32);
    v16 = sub_22F740DF0();
  }

  else
  {
    v16 = 0;
  }

  [v3 setArtist_];

  if (*(a1 + 56))
  {
    v17 = *(a1 + 48);
    v18 = sub_22F740DF0();
  }

  else
  {
    v18 = 0;
  }

  [v3 setAlbum_];

  if (*(a1 + 72) == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_22F7412C0();
  }

  [v3 setIsExplicit_];

  if (*(a1 + 88))
  {
    v20 = 0;
  }

  else
  {
    v21 = *(a1 + 80);
    v20 = sub_22F741350();
  }

  [v3 setDuration_];

  if (*(a1 + 112))
  {
    v22 = *(a1 + 104);
    v23 = sub_22F740DF0();
  }

  else
  {
    v23 = 0;
  }

  [v3 setArtworkURLFormat_];

  if (*(a1 + 128))
  {
    v24 = *(a1 + 120);
    v25 = sub_22F740DF0();
  }

  else
  {
    v25 = 0;
  }

  [v3 setSongURLPath_];

  if (*(a1 + 144))
  {
    v26 = *(a1 + 136);
    v27 = sub_22F740DF0();
  }

  else
  {
    v27 = 0;
  }

  [v3 setIntroPreviewPath_];

  v28 = type metadata accessor for Song();
  v29 = a1 + v28[26];
  if (*v29 != 1)
  {
    v30 = *(v29 + 40);
    v31 = *(v29 + 44);
    v32 = sub_22F73F350();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    sub_22F73F340();
    v57 = *(v29 + 24);
    v56 = *(v29 + 8);
    sub_22F3C4BF0();
    v35 = sub_22F73F330();
    v37 = v36;

    if (v2)
    {
      return;
    }

    v38 = sub_22F73F4F0();
    sub_22F133BF0(v35, v37);
    [v3 setFlexMLAnalysisAsData_];
  }

  v39 = (a1 + v28[18]);
  if (v39[1])
  {
    v40 = 0;
  }

  else
  {
    v41 = *v39;
    v40 = sub_22F7413C0();
  }

  [v3 setArousal_];

  v42 = (a1 + v28[19]);
  if (v42[1])
  {
    v43 = 0;
  }

  else
  {
    v44 = *v42;
    v43 = sub_22F7413C0();
  }

  [v3 setValence_];

  v45 = (a1 + v28[22]);
  if (v45[1])
  {
    v46 = 0;
  }

  else
  {
    v47 = *v45;
    v46 = sub_22F7413C0();
  }

  [v3 setLoudnessMainPeak_];

  v48 = (a1 + v28[23]);
  if (v48[1])
  {
    v49 = 0;
  }

  else
  {
    v50 = *v48;
    v49 = sub_22F7413C0();
  }

  [v3 setLoudnessMainValue_];

  sub_22F170D8C();
  v51 = sub_22F7417E0();
  [v3 setClearedForPhotosMemoriesExport_];

  v52 = (a1 + v28[25]);
  if (v52[1])
  {
    v53 = *v52;
    v54 = sub_22F740DF0();
  }

  else
  {
    v54 = 0;
  }

  [v3 setContentProvider_];

  v55 = sub_22F73F5B0();
  [v3 setCacheDate_];
}

uint64_t sub_22F3C428C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v96 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v96 - v11;
  v13 = [v1 adamID];
  if (!v13)
  {
    sub_22F3C4B9C();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  v14 = v13;
  v118 = sub_22F740E20();
  v119 = v15;

  v16 = [v3 duration];
  v17 = v16;
  if (v16)
  {
    [v16 floatValue];
    v19 = v18;

    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  v23 = [v3 flexMLAnalysisAsData];
  if (v23)
  {
    v24 = v17;
    v25 = v23;
    v26 = sub_22F73F510();
    v28 = v27;

    v29 = sub_22F73F310();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_22F73F300();
    sub_22F39A024();
    sub_22F73F2F0();
    if (v2)
    {
      sub_22F133BF0(v26, v28);
    }

    sub_22F133BF0(v26, v28);

    v110 = v121;
    v111 = v120;
    v112 = v123 | (v124 << 32);
    v113 = v122;
    v17 = v24;
  }

  else
  {
    v112 = 0;
    v113 = 0;
    v111 = xmmword_22F781B40;
    v110 = 0u;
  }

  v114 = v17;
  v32 = [v3 title];
  if (v32)
  {
    v33 = v32;
    v109 = sub_22F740E20();
    v108 = v34;
  }

  else
  {
    v109 = 0;
    v108 = 0;
  }

  v35 = [v3 artist];
  if (v35)
  {
    v36 = v35;
    v107 = sub_22F740E20();
    v106 = v37;
  }

  else
  {
    v107 = 0;
    v106 = 0;
  }

  v38 = [v3 album];
  if (v38)
  {
    v39 = v38;
    v105 = sub_22F740E20();
    v104 = v40;
  }

  else
  {
    v105 = 0;
    v104 = 0;
  }

  v41 = [v3 isExplicit];
  if (v41)
  {
    v42 = v41;
    v103 = [v41 BOOLValue];
  }

  else
  {
    v103 = 2;
  }

  v43 = [v3 artworkURLFormat];
  if (v43)
  {
    v44 = v43;
    v102 = sub_22F740E20();
    v101 = v45;
  }

  else
  {
    v102 = 0;
    v101 = 0;
  }

  v46 = [v3 songURLPath];
  if (v46)
  {
    v47 = v46;
    v100 = sub_22F740E20();
    v99 = v48;
  }

  else
  {
    v100 = 0;
    v99 = 0;
  }

  v49 = [v3 introPreviewPath];
  if (v49)
  {
    v50 = v49;
    v98 = sub_22F740E20();
    v97 = v51;
  }

  else
  {
    v98 = 0;
    v97 = 0;
  }

  v52 = sub_22F73F7C0();
  (*(*(v52 - 8) + 56))(v12, 1, 1, v52);
  v53 = sub_22F73F690();
  v54 = *(*(v53 - 8) + 56);
  v116 = v8;
  v54(v8, 1, 1, v53);
  v55 = [v3 arousal];
  v56 = v55;
  v57 = 0;
  v58 = 0;
  if (v55)
  {
    [v55 floatValue];
    v58 = v59;
  }

  v60 = [v3 valence];
  v61 = v60;
  if (v60)
  {
    [v60 floatValue];
    v57 = v62;
  }

  v115 = v12;
  v63 = [v3 loudnessMainPeak];
  v64 = v63;
  v65 = 0;
  v66 = 0;
  if (v63)
  {
    [v63 floatValue];
    v66 = v67;
  }

  v68 = [v3 loudnessMainValue];
  v69 = v68;
  if (v68)
  {
    [v68 floatValue];
    v65 = v70;
  }

  v71 = [v3 contentProvider];
  v117 = v2;
  if (v71)
  {
    v72 = v71;
    v73 = sub_22F740E20();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0;
  }

  v76 = v69 == 0;
  v77 = v119;
  *a1 = v118;
  *(a1 + 8) = v77;
  v78 = v64 == 0;
  v79 = v108;
  *(a1 + 16) = v109;
  *(a1 + 24) = v79;
  LOBYTE(v79) = v114 == 0;
  v80 = v106;
  *(a1 + 32) = v107;
  *(a1 + 40) = v80;
  v81 = v104;
  *(a1 + 48) = v105;
  *(a1 + 56) = v81;
  *(a1 + 64) = 0;
  *(a1 + 72) = v103;
  *(a1 + 80) = v20;
  *(a1 + 88) = v79;
  *(a1 + 92) = 0;
  *(a1 + 96) = 1;
  v82 = v101;
  *(a1 + 104) = v102;
  *(a1 + 112) = v82;
  v83 = v99;
  *(a1 + 120) = v100;
  *(a1 + 128) = v83;
  v84 = v97;
  *(a1 + 136) = v98;
  *(a1 + 144) = v84;
  v85 = type metadata accessor for Song();
  sub_22F1207AC(v115, a1 + v85[15], &qword_27DAB0C90, &unk_22F785B70);
  v86 = a1 + v85[26];
  v87 = v110;
  *v86 = v111;
  *(v86 + 16) = v87;
  v88 = v112;
  *(v86 + 32) = v113;
  *(v86 + 44) = BYTE4(v88);
  *(v86 + 40) = v88;
  result = sub_22F1207AC(v116, a1 + v85[16], &qword_27DAB0920, &qword_22F770B20);
  *(a1 + v85[17]) = 0;
  v89 = a1 + v85[18];
  *v89 = v58;
  *(v89 + 4) = v56 == 0;
  v90 = a1 + v85[19];
  *v90 = v57;
  *(v90 + 4) = v61 == 0;
  v91 = a1 + v85[20];
  *v91 = 0;
  *(v91 + 4) = 1;
  v92 = a1 + v85[21];
  *v92 = 0;
  *(v92 + 4) = 1;
  v93 = a1 + v85[22];
  *v93 = v66;
  *(v93 + 4) = v78;
  v94 = a1 + v85[23];
  *v94 = v65;
  *(v94 + 4) = v76;
  *(a1 + v85[24]) = 0;
  v95 = (a1 + v85[25]);
  *v95 = v73;
  v95[1] = v75;
  return result;
}

id sub_22F3C4B0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MemoryDisplaySongEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F3C4B64()
{
  v0 = qword_27DAB4028;

  return v0;
}

unint64_t sub_22F3C4B9C()
{
  result = qword_27DAB4038;
  if (!qword_27DAB4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4038);
  }

  return result;
}

unint64_t sub_22F3C4BF0()
{
  result = qword_2810ABB90;
  if (!qword_2810ABB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABB90);
  }

  return result;
}

id sub_22F3C4C44(uint64_t a1, uint64_t *a2)
{
  v5 = objc_opt_self();

  v6 = sub_22F740DF0();

  v7 = [v5 entityForName:v6 inManagedObjectContext:a1];

  if (v7)
  {
    v5 = [objc_allocWithZone(type metadata accessor for MemoryDisplaySongEntry()) initWithEntity:v7 insertIntoManagedObjectContext:a1];

    v8 = *a2;
    v9 = a2[1];
    v10 = sub_22F740DF0();
    [v5 setAdamID_];

    if (a2[3])
    {
      v11 = a2[2];
      v12 = sub_22F740DF0();
    }

    else
    {
      v12 = 0;
    }

    [v5 setTitle_];

    if (a2[5])
    {
      v13 = a2[4];
      v14 = sub_22F740DF0();
    }

    else
    {
      v14 = 0;
    }

    [v5 setArtist_];

    if (a2[7])
    {
      v15 = a2[6];
      v16 = sub_22F740DF0();
    }

    else
    {
      v16 = 0;
    }

    [v5 setAlbum_];

    if (*(a2 + 72) == 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_22F7412C0();
    }

    [v5 setIsExplicit_];

    if (a2[11])
    {
      v18 = 0;
    }

    else
    {
      v19 = a2[10];
      v18 = sub_22F741350();
    }

    [v5 setDuration_];

    if (a2[14])
    {
      v20 = a2[13];
      v21 = sub_22F740DF0();
    }

    else
    {
      v21 = 0;
    }

    [v5 setArtworkURLFormat_];

    if (a2[16])
    {
      v22 = a2[15];
      v23 = sub_22F740DF0();
    }

    else
    {
      v23 = 0;
    }

    [v5 setSongURLPath_];

    if (a2[18])
    {
      v24 = a2[17];
      v25 = sub_22F740DF0();
    }

    else
    {
      v25 = 0;
    }

    [v5 setIntroPreviewPath_];

    v26 = type metadata accessor for Song();
    v27 = (a2 + v26[26]);
    v28 = *v27;
    if (*v27 != 1)
    {
      v29 = *(v27 + 10);
      v30 = *(v27 + 44);
      v31 = sub_22F73F350();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      sub_22F73F340();
      v57 = v28;
      v59 = *(v27 + 3);
      v58 = *(v27 + 1);
      BYTE4(v60) = v30;
      LODWORD(v60) = v29;
      sub_22F3C4BF0();
      v34 = sub_22F73F330();
      if (v2)
      {

        return v5;
      }

      v36 = v34;
      v37 = v35;

      v38 = sub_22F73F4F0();
      sub_22F133BF0(v36, v37);
      [v5 setFlexMLAnalysisAsData_];
    }

    v39 = (a2 + v26[18]);
    if (v39[1])
    {
      v40 = 0;
    }

    else
    {
      v41 = *v39;
      v40 = sub_22F7413C0();
    }

    [v5 setArousal_];

    v42 = (a2 + v26[19]);
    if (v42[1])
    {
      v43 = 0;
    }

    else
    {
      v44 = *v42;
      v43 = sub_22F7413C0();
    }

    [v5 setValence_];

    v45 = (a2 + v26[22]);
    if (v45[1])
    {
      v46 = 0;
    }

    else
    {
      v47 = *v45;
      v46 = sub_22F7413C0();
    }

    [v5 setLoudnessMainPeak_];

    v48 = (a2 + v26[23]);
    if (v48[1])
    {
      v49 = 0;
    }

    else
    {
      v50 = *v48;
      v49 = sub_22F7413C0();
    }

    [v5 setLoudnessMainValue_];

    sub_22F170D8C();
    v51 = sub_22F7417E0();
    [v5 setClearedForPhotosMemoriesExport_];

    v52 = (a2 + v26[25]);
    if (v52[1])
    {
      v53 = *v52;
      v54 = sub_22F740DF0();
    }

    else
    {
      v54 = 0;
    }

    [v5 setContentProvider_];

    v55 = sub_22F73F5B0();
    [v5 setCacheDate_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

unint64_t sub_22F3C5198()
{
  result = qword_27DAB4040;
  if (!qword_27DAB4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4040);
  }

  return result;
}

id sub_22F3C51EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v30 = MEMORY[0x277D84F90];
  sub_22F146E84(0, v1, 0);
  v2 = v30;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_22F741980();
  v7 = result;
  v8 = 0;
  v29 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v29 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v3 + 48) + 8 * v7);
    v28 = *(*(v3 + 56) + 8 * v7);
    v13 = v3;
    v15 = *(v30 + 16);
    v14 = *(v30 + 24);
    result = v12;
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_22F146E84((v14 > 1), v15 + 1, 1);
      result = v24;
    }

    *(v30 + 16) = v15 + 1;
    v16 = v30 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v28;
    v9 = 1 << *(v13 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v27;
    v17 = *(v27 + 8 * v11);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v13;
    if (v29 != *(v13 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v26;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v10 = v26;
      v21 = (v25 + 8 * v11);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_22F107D18(v7, v29, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v7, v29, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22F3C5440(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v37 = *MEMORY[0x277D3B188];

  v7 = 0;
  v35 = v6;
  v36 = v2;
  while (v5)
  {
LABEL_11:
    v10 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *a2;
    if ((*a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x2319016F0](v10);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = sub_22F740E20();
    v16 = v15;
    v42 = MEMORY[0x277D839B0];
    LOBYTE(v41) = 0;
    v17 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
    swift_beginAccess();
    sub_22F107D08(&v41, v40);
    v18 = *&v13[v17];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *&v13[v17];
    v20 = v43;
    v21 = sub_22F1229E8(v14, v16);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_29;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      sub_22F125CA4(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_22F1229E8(v14, v16);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_32;
      }

LABEL_20:
      v29 = v43;
      if (v27)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v33 = v21;
    sub_22F1344D4();
    v21 = v33;
    v29 = v43;
    if (v27)
    {
LABEL_4:
      v8 = (v29[7] + 32 * v21);
      __swift_destroy_boxed_opaque_existential_0(v8);
      sub_22F107D08(v40, v8);

      goto LABEL_5;
    }

LABEL_21:
    v29[(v21 >> 6) + 8] |= 1 << v21;
    v30 = (v29[6] + 16 * v21);
    *v30 = v14;
    v30[1] = v16;
    sub_22F107D08(v40, (v29[7] + 32 * v21));
    v31 = v29[2];
    v25 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v25)
    {
      goto LABEL_31;
    }

    v29[2] = v32;
LABEL_5:
    v5 &= v5 - 1;
    *&v13[v17] = v29;
    swift_endAccess();

    v6 = v35;
    v2 = v36;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F3C5704(unint64_t a1, unint64_t *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_26:
    v4 = sub_22F741A00();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v28 = v3 & 0xFFFFFFFFFFFFFF8;
      v29 = v3 & 0xC000000000000001;
      v27 = v3;
      do
      {
        if (v29)
        {
          v6 = MEMORY[0x2319016F0](v5, v3);
        }

        else
        {
          if (v5 >= *(v28 + 16))
          {
            goto LABEL_22;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v9 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3 = *a2;
        v30 = *a2;
        *a2 = 0x8000000000000000;
        v12 = sub_22F122BD4(v7);
        v13 = *(v3 + 16);
        v14 = (v11 & 1) == 0;
        v15 = v13 + v14;
        if (__OFADD__(v13, v14))
        {
          goto LABEL_23;
        }

        v16 = v11;
        if (*(v3 + 24) >= v15)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F13969C();
            v3 = v30;
          }
        }

        else
        {
          sub_22F12ED54(v15, isUniquelyReferenced_nonNull_native);
          sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
          v3 = v30;
          v17 = sub_22F122BD4(v7);
          if ((v16 & 1) != (v18 & 1))
          {
            sub_22F7420C0();
            __break(1u);
            return;
          }

          v12 = v17;
        }

        v19 = *a2;
        *a2 = v3;

        v3 = *a2;
        if ((v16 & 1) == 0)
        {
          *(v3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
          *(*(v3 + 48) + 8 * v12) = v7;
          *(*(v3 + 56) + 8 * v12) = 0;
          v20 = *(v3 + 16);
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_25;
          }

          *(v3 + 16) = v22;
          v23 = v7;
        }

        v24 = *(v3 + 56);
        v25 = *(v24 + 8 * v12);
        v21 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v21)
        {
          goto LABEL_24;
        }

        *(v24 + 8 * v12) = v26;

        ++v5;
        v3 = v27;
      }

      while (v8 != v4);
    }
  }
}

id PlaceZeroKeywordGenerator.__allocating_init(with:photoLibrary:searchComputationCache:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken;
  *&v9[v10] = [objc_allocWithZone(MEMORY[0x277CCAB00]) init];
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph] = a1;
  v11 = objc_allocWithZone(PGGraphLocationHelper);
  v12 = a1;
  v13 = [v11 initWithGraph_];
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper] = v13;
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary] = a2;
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_searchComputationCache] = a3;
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_options] = a4;
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

id PlaceZeroKeywordGenerator.init(with:photoLibrary:searchComputationCache:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22F3CF06C(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_22F3C5AF0()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    if (byte_2843DE800[v1 + 32] > 1u)
    {
      v3 = byte_2843DE800[v1 + 32] == 2 ? sub_22F3C971C() : sub_22F3C6E6C();
    }

    else
    {
      v3 = byte_2843DE800[v1 + 32] ? sub_22F3C8DA4() : sub_22F3C7E5C();
    }

    v4 = v3;
    v5 = v3 >> 62;
    v6 = v3 >> 62 ? sub_22F741A00() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      break;
    }

    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    isUniquelyReferenced_nonNull_native = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      goto LABEL_41;
    }

LABEL_15:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v7)
      {
        goto LABEL_22;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (isUniquelyReferenced_nonNull_native <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v7)
      {
LABEL_22:
        sub_22F741A00();
        goto LABEL_23;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_23:
    v2 = sub_22F741B50();
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    isUniquelyReferenced_nonNull_native = *(v10 + 16);
    v90 = v10;
    v12 = (*(v10 + 24) >> 1) - isUniquelyReferenced_nonNull_native;
    if (v5)
    {
      v14 = sub_22F741A00();
      if (v14)
      {
        v0 = v14;
        v15 = sub_22F741A00();
        if (v12 < v15)
        {
          goto LABEL_131;
        }

        if (v0 < 1)
        {
          goto LABEL_133;
        }

        v13 = v15;
        v94 = v2;
        v16 = v90 + 8 * isUniquelyReferenced_nonNull_native + 32;
        sub_22F3CF394(&unk_27DAB4088, &qword_27DAB4080, &unk_22F78A510);
        for (i = 0; i != v0; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4080, &unk_22F78A510);
          isUniquelyReferenced_nonNull_native = sub_22F14E004(&v97, i, v4);
          v19 = *v18;
          (isUniquelyReferenced_nonNull_native)(&v97, 0);
          *(v16 + 8 * i) = v19;
        }

        v2 = v94;
        v0 = v90;
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        if (v12 < v13)
        {
          goto LABEL_132;
        }

        v0 = v10;
        isUniquelyReferenced_nonNull_native = v10 + 8 * isUniquelyReferenced_nonNull_native;
        type metadata accessor for PlaceZeroKeyword();
        swift_arrayInitWithCopy();
LABEL_34:

        if (v13 < v6)
        {
          goto LABEL_126;
        }

        if (v13 > 0)
        {
          v20 = *(v0 + 16);
          v21 = __OFADD__(v20, v13);
          v22 = v20 + v13;
          if (v21)
          {
            goto LABEL_128;
          }

          *(v0 + 16) = v22;
        }

        goto LABEL_3;
      }
    }

    v0 = v90;
    if (v6 > 0)
    {
      goto LABEL_126;
    }

LABEL_3:
    if (++v1 == 4)
    {
      goto LABEL_42;
    }
  }

  v23 = sub_22F741A00();
  isUniquelyReferenced_nonNull_native = v23 + v6;
  if (!__OFADD__(v23, v6))
  {
    goto LABEL_15;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  sub_22F3CA834(v2);

  v99[0] = v2;
  v85 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_134;
  }

  v24 = *(v0 + 16);
  while (2)
  {
    v87 = 0;
    v25 = v2 & 0xC000000000000001;
    v95 = *MEMORY[0x277D3B188];
    v88 = v24;
    v89 = v2 & 0xC000000000000001;
    while (2)
    {
      if (v24)
      {
        v93 = 0;
        v26 = 0;
        v92 = byte_2843DE828[v87 + 32];
        v27 = 15;
        if ((v92 - 1) < 2)
        {
          v27 = 5;
        }

        v91 = v27;
        do
        {
          if (v25)
          {
            v30 = *(MEMORY[0x2319016F0](v26, v2) + OBJC_IVAR___PGPlaceZeroKeyword_placeKind);
            swift_unknownObjectRelease();
            if (v30 <= 1)
            {
              if (v30)
              {
                goto LABEL_60;
              }

              goto LABEL_56;
            }

            v33 = v92;
            if (v30 == 2)
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (v26 >= *(v0 + 16))
            {
              goto LABEL_123;
            }

            if (*(*(v2 + 8 * v26 + 32) + OBJC_IVAR___PGPlaceZeroKeyword_placeKind) <= 1u)
            {
              if (*(*(v2 + 8 * v26 + 32) + OBJC_IVAR___PGPlaceZeroKeyword_placeKind))
              {
LABEL_60:
                v32 = 0x6E69727275636572;
                v31 = 0xED00007069725467;
LABEL_61:
                v33 = v92;
                if (v92 <= 1)
                {
                  goto LABEL_62;
                }

                goto LABEL_72;
              }

LABEL_56:
              v31 = 0xE800000000000000;
              v32 = 0x7465737265707573;
              goto LABEL_61;
            }

            v33 = v92;
            if (*(*(v2 + 8 * v26 + 32) + OBJC_IVAR___PGPlaceZeroKeyword_placeKind) == 2)
            {
LABEL_66:
              v31 = 0xE600000000000000;
              v32 = 0x696F41706F74;
              if (v33 <= 1)
              {
                goto LABEL_62;
              }

              goto LABEL_72;
            }
          }

          v31 = 0xE400000000000000;
          v32 = 1701670760;
          if (v33 <= 1)
          {
LABEL_62:
            if (v33)
            {
              v34 = 0xED00007069725467;
              if (v32 != 0x6E69727275636572)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v34 = 0xE800000000000000;
              if (v32 != 0x7465737265707573)
              {
                goto LABEL_81;
              }
            }

            goto LABEL_79;
          }

LABEL_72:
          if (v33 == 2)
          {
            v35 = 0x696F41706F74;
          }

          else
          {
            v35 = 1701670760;
          }

          if (v33 == 2)
          {
            v34 = 0xE600000000000000;
          }

          else
          {
            v34 = 0xE400000000000000;
          }

          if (v32 != v35)
          {
LABEL_81:
            isUniquelyReferenced_nonNull_native = sub_22F742040();

            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_82;
          }

LABEL_79:
          if (v31 != v34)
          {
            goto LABEL_81;
          }

LABEL_82:
          if (v25)
          {
            v36 = MEMORY[0x2319016F0](v26, v2);
          }

          else
          {
            if (v26 >= *(v0 + 16))
            {
              goto LABEL_124;
            }

            v36 = *(v2 + 8 * v26 + 32);
          }

          v37 = v36;
          isUniquelyReferenced_nonNull_native = sub_22F740E20();
          v39 = v38;
          v40 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
          swift_beginAccess();
          v41 = *&v37[v40];
          if (*(v41 + 16) && (, isUniquelyReferenced_nonNull_native = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v39), v43 = v42, , (v43 & 1) != 0))
          {
            sub_22F13A100(*(v41 + 56) + 32 * isUniquelyReferenced_nonNull_native, &v97);

            if (swift_dynamicCast() & 1) != 0 && (v96[0])
            {
              v21 = __OFADD__(v93++, 1);
              if (v21)
              {
                goto LABEL_127;
              }
            }
          }

          else
          {
          }

LABEL_94:
          if (v91 >= v93)
          {
            goto LABEL_52;
          }

          if (v25)
          {
            v44 = v2;
            v45 = MEMORY[0x2319016F0](v26, v2);
          }

          else
          {
            if (v26 >= *(v0 + 16))
            {
              goto LABEL_122;
            }

            v44 = v2;
            v45 = *(v2 + 8 * v26 + 32);
          }

          v46 = v45;
          v2 = sub_22F740E20();
          v0 = v47;
          v98 = MEMORY[0x277D839B0];
          LOBYTE(v97) = 0;
          v48 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
          swift_beginAccess();
          sub_22F107D08(&v97, v96);
          v49 = *&v46[v48];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = *&v46[v48];
          *&v46[v48] = 0x8000000000000000;
          v52 = sub_22F1229E8(v2, v0);
          v53 = v50[2];
          v54 = (v51 & 1) == 0;
          v55 = v53 + v54;
          if (__OFADD__(v53, v54))
          {
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
            goto LABEL_129;
          }

          v56 = v51;
          if (v50[3] >= v55)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v51 & 1) == 0)
              {
                goto LABEL_105;
              }
            }

            else
            {
              sub_22F1344D4();
              if ((v56 & 1) == 0)
              {
                goto LABEL_105;
              }
            }
          }

          else
          {
            sub_22F125CA4(v55, isUniquelyReferenced_nonNull_native);
            v57 = sub_22F1229E8(v2, v0);
            if ((v56 & 1) != (v58 & 1))
            {
              goto LABEL_149;
            }

            v52 = v57;
            if ((v56 & 1) == 0)
            {
LABEL_105:
              v50[(v52 >> 6) + 8] |= 1 << v52;
              v59 = (v50[6] + 16 * v52);
              *v59 = v2;
              v59[1] = v0;
              sub_22F107D08(v96, (v50[7] + 32 * v52));
              v60 = v50[2];
              v21 = __OFADD__(v60, 1);
              v61 = v60 + 1;
              if (v21)
              {
                goto LABEL_125;
              }

              v50[2] = v61;
              goto LABEL_51;
            }
          }

          v28 = (v50[7] + 32 * v52);
          __swift_destroy_boxed_opaque_existential_0(v28);
          sub_22F107D08(v96, v28);
LABEL_51:
          v29 = *&v46[v48];
          *&v46[v48] = v50;

          swift_endAccess();

          v2 = v44;
          v25 = v89;
          v0 = v90;
          v24 = v88;
LABEL_52:
          ++v26;
        }

        while (v24 != v26);
      }

      if (++v87 != 4)
      {
        continue;
      }

      break;
    }

    isUniquelyReferenced_nonNull_native = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
    if (v85)
    {
      while (1)
      {
        v62 = sub_22F741A00();
        if (!v62)
        {
          break;
        }

LABEL_112:
        v63 = 0;
        while (1)
        {
          if (v89)
          {
            v64 = MEMORY[0x2319016F0](v63, v2);
          }

          else
          {
            if (v63 >= *(v0 + 16))
            {
              goto LABEL_130;
            }

            v64 = *(v2 + 8 * v63 + 32);
          }

          v65 = v64;
          v0 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            break;
          }

          v66 = [*&v64[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] elementIdentifiers];
          [isUniquelyReferenced_nonNull_native unionWithIdentifierSet_];

          ++v63;
          v67 = v0 == v62;
          v0 = v90;
          if (v67)
          {
            goto LABEL_137;
          }
        }

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
        v68 = sub_22F741A00();
        if ((v68 & 0x8000000000000000) == 0)
        {
          goto LABEL_151;
        }

        __break(1u);
      }
    }

    else
    {
      v62 = *(v0 + 16);
      if (v62)
      {
        goto LABEL_112;
      }
    }

LABEL_137:
    v69 = [objc_allocWithZone(PGGraphAddressNodeCollection) initWithGraph:*(v86 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph) elementIdentifiers:isUniquelyReferenced_nonNull_native];
    v70 = objc_opt_self();
    v71 = v69;
    v72 = [v70 momentOfAddress];
    v73 = [objc_msgSend(v71 graph)];
    swift_unknownObjectRelease();
    v74 = [v73 concreteGraph];

    if (!v74)
    {
LABEL_150:
      v68 = sub_22F741D40();
      __break(1u);
LABEL_151:
      v24 = v68;
      continue;
    }

    break;
  }

  v75 = [v71 elementIdentifiers];
  v76 = [v74 adjacencyWithSources:v75 relation:v72];

  v77 = v76;
  swift_unknownObjectRetain();
  sub_22F3CEF8C(v99, v77, v74);
  swift_unknownObjectRelease();

  v78 = v99[0];
  if (!(v99[0] >> 62))
  {
    v79 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v79 > 0xF)
    {
      goto LABEL_140;
    }

    goto LABEL_145;
  }

  if (sub_22F741A00() <= 15)
  {
    goto LABEL_145;
  }

  v84 = sub_22F741A00();
  if (v84 < 15)
  {
    __break(1u);
LABEL_149:
    sub_22F7420C0();
    __break(1u);
    goto LABEL_150;
  }

  v79 = v84;
LABEL_140:
  v80 = MEMORY[0x231901000](v79 - 15, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  *&v97 = v80;
  if (v79 != 15)
  {
    v81 = 15;
    do
    {
      v82 = v81 + 1;
      sub_22F10F624(v96, v81);
      v81 = v82;
    }

    while (v79 != v82);
    v80 = v97;
  }

  sub_22F3C5440(v80, v99);

LABEL_145:
  swift_unknownObjectRelease();

  return v78;
}

uint64_t sub_22F3C669C(uint64_t *a1, char **a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v88 = &v78 - v12;
  MEMORY[0x28223BE20](v13);
  v90 = &v78 - v14;
  MEMORY[0x28223BE20](v15);
  v91 = &v78 - v16;
  v17 = sub_22F73F690();
  v93 = *(v17 - 8);
  v94 = v17;
  v18 = *(v93 + 64);
  MEMORY[0x28223BE20](v17);
  v82 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v78 - v21;
  MEMORY[0x28223BE20](v22);
  v85 = &v78 - v23;
  *&v25 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v92 = &v78 - v26;
  v27 = *a1;
  v28 = *a2;
  v87 = OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection;
  v29 = [*(v27 + OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection) elementIdentifiers];
  v30 = [a3 targetsForSources_];

  v31 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a4 elementIdentifiers:v30];
  v32 = OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection;
  v33 = [*&v28[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] elementIdentifiers];
  v34 = [a3 targetsForSources_];

  v35 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a4 elementIdentifiers:v34];
  v36 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  v37 = *(v27 + v36);
  v38 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  if (v37 != *&v28[v38])
  {

    v46 = *&v28[v38] < *(v27 + v36);
    goto LABEL_18;
  }

  v89 = v35;
  v81 = v27;
  v39 = [v31 universalDateInterval];
  v40 = v31;
  v84 = v32;
  if (v39)
  {
    v41 = v90;
    v42 = v39;
    sub_22F73F020();

    v43 = 0;
    v44 = v94;
  }

  else
  {
    v43 = 1;
    v44 = v94;
    v41 = v90;
  }

  v45 = v91;
  v47 = sub_22F73F090();
  v48 = *(v47 - 8);
  v49 = v48;
  v94 = *(v48 + 56);
  v91 = (v48 + 56);
  v94(v41, v43, 1, v47);
  sub_22F299354(v41, v45);
  v50 = *(v49 + 48);
  if (v50(v45, 1, v47) == 1)
  {
    goto LABEL_12;
  }

  v90 = v28;
  v51 = v85;
  sub_22F73F030();
  v80 = *(v49 + 8);
  v80(v45, v47);
  v85 = *(v93 + 32);
  (v85)(v92, v51, v44);
  v52 = [v89 universalDateInterval];
  if (v52)
  {
    v79 = v40;
    v53 = v86;
    v54 = v52;
    sub_22F73F020();

    v55 = v53;
    v40 = v79;
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v55 = v86;
  }

  v94(v55, v56, 1, v47);
  v57 = v55;
  v45 = v88;
  sub_22F299354(v57, v88);
  if (v50(v45, 1, v47) == 1)
  {
    (*(v93 + 8))(v92, v44);
    v28 = v90;
LABEL_12:
    sub_22F120ADC(v45, &qword_27DAB40E0, &unk_22F779200);
    v58 = v40;
    v59 = [v58 count];
    v60 = v89;
    v61 = [v60 count];
    v62 = v84;
    if (v59 != v61)
    {
      v67 = [v58 count];

      v68 = [v60 count];
      v69 = v68 < v67;
      return v69 & 1;
    }

    [*(v81 + v87) centroidCoordinate];
    v64 = v63;
    [*&v28[v62] centroidCoordinate];
    v66 = v65;

    goto LABEL_17;
  }

  v70 = v82;
  sub_22F73F030();
  v80(v45, v47);
  v71 = v83;
  (v85)(v83, v70, v44);
  v72 = v92;
  if ((sub_22F73F630() & 1) == 0)
  {
    v69 = sub_22F73F5C0();

    v77 = *(v93 + 8);
    v77(v71, v44);
    v77(v72, v44);
    return v69 & 1;
  }

  [*(v81 + v87) centroidCoordinate];
  v64 = v73;
  [*&v90[v84] centroidCoordinate];
  v66 = v74;

  v75 = *(v93 + 8);
  v75(v71, v44);
  v75(v72, v44);
LABEL_17:
  v46 = v66 < v64;
LABEL_18:
  v69 = v46;
  return v69 & 1;
}

uint64_t sub_22F3C6E6C()
{
  v1 = sub_22F73F690();
  v106 = *(v1 - 8);
  v107 = v1;
  v2 = *(v106 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A9038, off_27887B068);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v99 = v0;
  v104 = [ObjCClassFromMetadata nodesInGraph_];
  v6 = [v104 homeNodes];
  v7 = objc_opt_self();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F771350;
  *(v8 + 32) = [objc_opt_self() addressOfHomeWork];
  v9 = objc_opt_self();
  *(v8 + 40) = [v9 frequentLocationOfAddress];
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v10 = sub_22F741160();

  v11 = [v7 chain_];

  v12 = v6;
  v13 = v11;
  v14 = [objc_msgSend(v12 graph)];
  swift_unknownObjectRelease();
  v15 = [v14 concreteGraph];

  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = [v12 elementIdentifiers];
  v17 = [v15 adjacencyWithSources:v16 relation:v13];

  v103 = v13;
  v18 = sub_22F73F550();
  v118 = 0;
  MEMORY[0x28223BE20](v18);
  v105 = v4;
  v89 = v4;
  v90 = &v118;
  v19 = swift_allocObject();
  v19[2] = sub_22F3CF22C;
  v19[3] = &v91 - 4;
  v19[4] = v17;
  v19[5] = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F3CF234;
  *(v20 + 24) = v19;
  v116 = sub_22F15A3B8;
  v117 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v114 = sub_22F107F34;
  v115 = &block_descriptor_55;
  v21 = _Block_copy(&aBlock);

  v22 = v17;
  swift_unknownObjectRetain();

  v102 = v22;
  [v22 enumerateTargetsBySourceWith_];
  _Block_release(v21);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v118)
  {

    swift_unknownObjectRelease();
    v84 = v102;
    goto LABEL_13;
  }

  v101 = v118;
  v23 = [v101 addressNodes];
  v24 = [v9 momentOfAddress];
  v25 = [objc_msgSend(v23 graph)];
  swift_unknownObjectRelease();
  v26 = [v25 concreteGraph];

  if (v26)
  {
    v27 = [v23 elementIdentifiers];
    v28 = [v26 adjacencyWithSources:v27 relation:v24];

    v100 = v23;
    v111 = 0;
    v112 = 0;
    MEMORY[0x28223BE20](v29);
    v89 = &v112;
    v90 = &v111;
    v30 = swift_allocObject();
    v30[2] = sub_22F3CF258;
    v30[3] = &v91 - 4;
    v30[4] = v28;
    v30[5] = v26;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_22F3CF260;
    *(v31 + 24) = v30;
    v116 = sub_22F15A9A4;
    v117 = v31;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v114 = sub_22F107F34;
    v115 = &block_descriptor_16_2;
    v32 = _Block_copy(&aBlock);

    v33 = v28;
    swift_unknownObjectRetain();

    v34 = v33;
    [v33 enumerateTargetsBySourceWith_];
    _Block_release(v32);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (v111)
      {
        v36 = [v111 anyNode];
        if (v36)
        {
          v37 = v36;
          v97 = v34;
          v38 = PLSearchLocalizedHomeString();
          if (!v38)
          {
            sub_22F740E20();
            v38 = sub_22F740DF0();
          }

          v96 = sub_22F740E20();
          v95 = v39;
          v40 = v37;
          v41 = [v40 fullname];
          v42 = sub_22F740E20();
          v92 = v42;
          v44 = v43;

          v45 = v99;
          v94 = *(v99 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary);
          v46 = objc_allocWithZone(MEMORY[0x277D3ADA8]);
          v47 = v40;
          v93 = [v46 initWithText:v38 userCategory:10 matchType:2];

          v48 = *MEMORY[0x277D3B1A8];
          v49 = sub_22F740E20();
          v51 = v50;
          v115 = MEMORY[0x277D837D0];
          *&aBlock = v42;
          *(&aBlock + 1) = v44;
          sub_22F107D08(&aBlock, v110);

          v52 = MEMORY[0x277D84F98];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v52;
          v54 = v45;
          sub_22F130630(v110, v49, v51, isUniquelyReferenced_nonNull_native);

          v55 = v109;
          v56 = *MEMORY[0x277D3B188];
          v57 = sub_22F740E20();
          v59 = v58;
          v115 = MEMORY[0x277D839B0];
          LOBYTE(aBlock) = 1;
          sub_22F107D08(&aBlock, v110);
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v109 = v55;
          sub_22F130630(v110, v57, v59, v60);

          v61 = v109;
          v62 = *MEMORY[0x277D3B1C8];
          v63 = sub_22F740E20();
          v65 = v64;
          v115 = MEMORY[0x277D837D0];
          *&aBlock = 1701670760;
          *(&aBlock + 1) = 0xE400000000000000;
          sub_22F107D08(&aBlock, v110);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v109 = v61;
          sub_22F130630(v110, v63, v65, v66);

          v67 = v109;
          v68 = [v47 locationOrAreaNodeCollection];

          v69 = [v68 addressNodes];
          swift_unknownObjectRelease();
          v70 = type metadata accessor for PlaceZeroKeyword();
          v71 = objc_allocWithZone(v70);
          *&v71[OBJC_IVAR___PGPlaceZeroKeyword_type] = 6;
          v72 = &v71[OBJC_IVAR___PGPlaceZeroKeyword_title];
          v73 = v95;
          *v72 = v96;
          v72[1] = v73;
          v74 = &v71[OBJC_IVAR___PGPlaceZeroKeyword_address];
          *v74 = v92;
          v74[1] = v44;
          *&v71[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v67;
          v75 = v93;
          *&v71[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v93;
          *&v71[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v69;
          v71[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = 3;
          *&v71[OBJC_IVAR___PGPlaceZeroKeyword_score] = 0x7FEFFFFFFFFFFFFFLL;
          v76 = v94;
          *&v71[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = v94;
          v108.receiver = v71;
          v108.super_class = v70;
          v77 = v75;
          v78 = v69;
          v79 = v76;
          v80 = objc_msgSendSuper2(&v108, sel_init);

          v81 = *(v54 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken);
          v82 = *&v80[OBJC_IVAR___PGPlaceZeroKeyword_queryToken];
          [v81 setObject:v47 forKey:v82];
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_22F771EB0;
          *(v83 + 32) = v80;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_14;
        }
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v84 = v111;
LABEL_13:

      v83 = MEMORY[0x277D84F90];
LABEL_14:
      v86 = v106;
      v85 = v107;
      v87 = v105;

      (*(v86 + 8))(v87, v85);
      return v83;
    }

    goto LABEL_16;
  }

LABEL_17:
  LODWORD(v90) = 0;
  v89 = 40;
  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F3C7AC0(void *a1, void *a2, uint64_t a3, char *a4, void **a5)
{
  v30 = a5;
  v31 = a4;
  v29 = a1;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_22F73F550();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22F3CF26C;
  *(v18 + 24) = v17;
  aBlock[4] = sub_22F26B650;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_25_0;
  v19 = _Block_copy(aBlock);

  [a2 enumerateNodesAsCollectionsSortedByUniversalEndDateWithOrderAscending:0 usingBlock:v19];
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v21 = *(v7 + 16);
    v21(v13, v16, v6);
    v22 = v31;
    v21(v10, v31, v6);
    v23 = sub_22F73F5C0();
    v24 = *(v7 + 8);
    v24(v10, v6);
    v24(v13, v6);
    if (v23)
    {
      (*(v7 + 24))(v22, v16, v6);
      v25 = v29;
      v26 = *v30;
      *v30 = v29;
      v27 = v25;
    }

    v24(v16, v6);
  }

  return result;
}

void sub_22F3C7DB0(void *a1, id a2, uint64_t a3, void *a4, id *a5)
{
  if (*a4 < [a2 count])
  {
    *a4 = [a2 count];
    v10 = *a5;
    *a5 = a1;
    v9 = a1;
  }
}

uint64_t sub_22F3C7E5C()
{
  v34 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  v1 = *(v0 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph);
  v25 = [v1 supersetCityNodes];
  v26 = sub_22F120634(0, &qword_2810A8F60, off_27887AF78);
  v27 = 16;
  v28 = [v1 supersetStateNodes];
  v29 = sub_22F120634(0, &qword_2810A8F58, off_27887B028);
  v30 = 64;
  v31 = [v1 supersetCountryNodes];
  v32 = sub_22F120634(0, &qword_2810A8F30, off_27887AFA8);
  v33 = 128;
  v2 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
  v3 = 0;
  v15 = v2;
  v4 = 32;
  while (1)
  {
    sub_22F3CF288(&v24[v4], v22);
    v5 = v23;
    sub_22F107D08(v22, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB40D0, &qword_22F78A598);
    if (swift_dynamicCast())
    {
      v6 = v21;
      v7 = swift_allocObject();
      v7[2] = v14;
      v7[3] = v5;
      v7[4] = v15;
      v7[5] = &v34;
      v7[6] = &v35;
      v8 = v14;
      v9 = v15;
      sub_22F107E14(v3);
      v10 = swift_allocObject();
      v3 = sub_22F3CF2F8;
      *(v10 + 16) = sub_22F3CF2F8;
      *(v10 + 24) = v7;
      v19 = sub_22F26B650;
      v20 = v10;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v17 = sub_22F322D74;
      v18 = &block_descriptor_34;
      v11 = _Block_copy(&aBlock);

      [v6 enumerateUsingBlock_];

      _Block_release(v11);
      LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

      if (v6)
      {
        break;
      }
    }

    v4 += 40;
    if (v4 == 152)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40C8, &qword_22F78A590);
      swift_arrayDestroy();
      v13 = v35;

      sub_22F107E14(v3);
      return v13;
    }
  }

  __break(1u);
  return result;
}

void sub_22F3C81DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v12 = sub_22F3CB664(a1, a4, a5);
  v90 = a7;
  v91 = a3;
  v13 = *a6;
  v92 = a6;
  v94 = a5;
  if (*a6 >> 62)
  {
LABEL_62:
    v84 = v12;
    v14 = sub_22F741A00();
    v12 = v84;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  log = v12;

  for (i = 0; v14 != i; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x2319016F0](i, v13);
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v12 = *(v13 + 8 * i + 32);
    }

    v16 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
    v17 = sub_22F741810();

    if (v17)
    {

      return;
    }
  }

  v18 = log;
  MEMORY[0x231900D00]();
  if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v85 = *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();
  v19 = [v18 locationMask];
  v20 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
  if (v19 < 0x11)
  {
    goto LABEL_31;
  }

  v21 = v19;
  v22 = [a1 name];
  loga = sub_22F740E20();
  v24 = v23;

  v25 = [a1 locationNodeCollection];
  v26 = [v25 nearestDeepChildLocationNodesWithLabel_];

  v27 = [v26 anyNode];
  if (!v27)
  {
    goto LABEL_24;
  }

  v28 = [v27 name];
  if (!v28)
  {

LABEL_24:

    goto LABEL_30;
  }

  v29 = v28;
  v30 = sub_22F740E20();
  v32 = v31;

  if (v30 == loga && v32 == v24)
  {
  }

  else
  {
    v33 = sub_22F742040();

    if ((v33 & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  v34 = v27;
  MEMORY[0x231900D00]();
  if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v89 = *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();

LABEL_30:
  v20 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
  if (v21 > 0x3F)
  {
    if (v21 > 0x7F)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_31:
  v35 = [a1 locationNodeCollection];
  v36 = [v35 v20[382]];

  v37 = [v36 anyNode];
  if (v37)
  {
    v38 = v37;
    MEMORY[0x231900D00]();
    if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v87 = *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
  }

LABEL_36:
  v39 = [a1 locationNodeCollection];
  v40 = [v39 v20[382]];

  v41 = [v40 anyNode];
  if (v41)
  {
    v42 = v41;
    MEMORY[0x231900D00]();
    if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v86 = *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
  }

LABEL_40:
  v43 = [v18 fullname];
  v44 = sub_22F740E20();
  v46 = v45;

  v47 = [objc_opt_self() beautifiedLocationNodeStringWithPlaceNode:v18 locationHelper:v94];
  if (v47 || (v47 = [v18 name]) != 0)
  {
    v48 = v47;
    v49 = sub_22F740E20();
    v51 = v50;

    if (sub_22F740F10() < 1)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v52 = sub_22F740F10();

      if (v52 > 0)
      {
        v53 = *(v91 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary);
        v54 = v18;
        logb = v53;
        v55 = [v54 locationNodeCollection];
        v56 = [v55 parentLocationNodes];

        v57 = [v56 anyNode];
        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          v59 = v58;
          v60 = v54;
          v61 = [v59 stateOrBiggerParentLocationNode];

          v57 = v61;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22F7707D0;
        v63 = *MEMORY[0x277D3B1A8];
        *(inited + 32) = sub_22F740E20();
        v64 = MEMORY[0x277D837D0];
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v65;
        *(inited + 48) = v44;
        *(inited + 56) = v46;
        v66 = *MEMORY[0x277D3B188];
        *(inited + 80) = sub_22F740E20();
        *(inited + 88) = v67;
        *(inited + 120) = MEMORY[0x277D839B0];
        *(inited + 96) = 1;
        v68 = *MEMORY[0x277D3B1C8];
        *(inited + 128) = sub_22F740E20();
        *(inited + 136) = v69;
        *(inited + 168) = v64;
        *(inited + 144) = 0x7465737265707573;
        *(inited + 152) = 0xE800000000000000;

        v93 = sub_22F14EA28(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
        swift_arrayDestroy();
        v95 = v57;
        if (v57)
        {
          v70 = v57;
          v71 = _s11PhotosGraph16PlaceZeroKeywordC22locationNameByCategory3forSDySo8NSNumberCSSGSo19PGGraphLocationNodeC_tFZ_0(v70);

          v72 = sub_22F740DF0();
          if (v71)
          {
            sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
            sub_22F16C010();
            v57 = sub_22F740C80();
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          v72 = sub_22F740DF0();
        }

        v73 = [objc_allocWithZone(MEMORY[0x277D3ADA0]) initWithText:v72 locationNameByCategory:v57];

        [v73 setUserControlledCategoriesUseWildcard_];
        v74 = [-[NSObject locationOrAreaNodeCollection](v54 locationOrAreaNodeCollection)];
        swift_unknownObjectRelease();

        v75 = type metadata accessor for PlaceZeroKeyword();
        v76 = objc_allocWithZone(v75);
        *&v76[OBJC_IVAR___PGPlaceZeroKeyword_type] = 2;
        v77 = &v76[OBJC_IVAR___PGPlaceZeroKeyword_title];
        *v77 = v49;
        v77[1] = v51;
        v78 = &v76[OBJC_IVAR___PGPlaceZeroKeyword_address];
        *v78 = v44;
        v78[1] = v46;
        *&v76[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v93;
        *&v76[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v73;
        *&v76[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v74;
        v76[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = 0;
        *&v76[OBJC_IVAR___PGPlaceZeroKeyword_score] = 0x3FF0000000000000;
        *&v76[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = logb;
        v99.receiver = v76;
        v99.super_class = v75;
        v79 = logb;
        v80 = v73;
        v81 = v74;
        v82 = objc_msgSendSuper2(&v99, sel_init);

        v83 = v82;
        MEMORY[0x231900D00]();
        if (*((*v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v88 = *((*v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F7411C0();
        }

        sub_22F741220();
        [*(v91 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken) setObject:v54 forKey:*&v83[OBJC_IVAR___PGPlaceZeroKeyword_queryToken]];

        return;
      }
    }
  }

  else
  {
  }
}

uint64_t sub_22F3C8DA4()
{
  v1 = objc_opt_self();
  v2 = *&v0[OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph];
  v3 = [v1 concludedTripTypeNodesInGraph_];
  v47 = MEMORY[0x277D84F98];
  v4 = [v3 highlightGroupNodes];
  v5 = swift_allocObject();
  *(v5 + 16) = &v47;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22F3CF308;
  *(v6 + 24) = v5;
  v45 = sub_22F20AE34;
  v46 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_22F107F34;
  v44 = &block_descriptor_43_0;
  v7 = _Block_copy(&aBlock);

  [v4 enumerateIdentifiersAsCollectionsWithBlock_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
LABEL_20:
    __break(1u);
  }

  else
  {
    v38 = v2;
    v39 = v3;

    v10 = sub_22F3C51EC(v9);

    v11 = 0;
    v12 = v10[2];
    v13 = MEMORY[0x277D84F90];
LABEL_3:
    v14 = &v10[2 * v11 + 5];
    while (v12 != v11)
    {
      if (v11 >= v10[2])
      {
        __break(1u);
        goto LABEL_20;
      }

      ++v11;
      v15 = v14 + 2;
      v16 = *v14;
      v14 += 2;
      if (v16 > 1)
      {
        v17 = *(v15 - 3);
        result = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v13;
        if ((result & 1) == 0)
        {
          result = sub_22F146E84(0, *(v13 + 16) + 1, 1);
          v13 = aBlock;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_22F146E84((v18 > 1), v19 + 1, 1);
          v13 = aBlock;
        }

        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v16;
        goto LABEL_3;
      }
    }

    v21 = *(v13 + 16);
    if (v21)
    {
      aBlock = MEMORY[0x277D84F90];
      sub_22F741BD0();
      v22 = 32;
      v24 = v39;
      v23 = v0;
      v25 = v38;
      do
      {
        v26 = *(v13 + v22);
        sub_22F741BA0();
        v27 = *(aBlock + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v22 += 16;
        --v21;
      }

      while (v21);
    }

    else
    {

      v24 = v39;
      v23 = v0;
      v25 = v38;
    }

    v28 = objc_allocWithZone(MEMORY[0x277D22BB0]);
    sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
    v29 = v25;
    v30 = sub_22F741160();

    v31 = [v28 initWithIndexArray_];

    v32 = [objc_allocWithZone(PGGraphNodeCollection) initWithGraph:v29 elementIdentifiers:v31];
    v40 = MEMORY[0x277D84F90];
    v33 = swift_allocObject();
    *(v33 + 16) = v23;
    *(v33 + 24) = 1;
    *(v33 + 32) = &v40;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_22F3CF310;
    *(v34 + 24) = v33;
    v45 = sub_22F1F68E8;
    v46 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_22F322D74;
    v44 = &block_descriptor_52_0;
    v35 = _Block_copy(&aBlock);
    v36 = v23;

    [v32 enumerateUsingBlock_];

    _Block_release(v35);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      v37 = v40;

      return v37;
    }
  }

  __break(1u);
  return result;
}

void sub_22F3C92F4(int a1, id a2, uint64_t a3, unint64_t *a4)
{
  v8 = [a2 featuredLocationOrAreaNodes];
  v5 = [v8 elementIdentifiers];
  v6 = [v5 indexArray];

  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v7 = sub_22F741180();

  sub_22F3C5704(v7, a4);
}

void sub_22F3C93CC(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {
      return;
    }

    v9 = v18;
    v35 = a5;
    v19 = a1;
    v20 = [v9 fullname];
    v12 = sub_22F740E20();
    v17 = v21;

    v22 = [objc_opt_self() beautifiedLocationNodeStringWithPlaceNode:v9 locationHelper:*(a3 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper)];
    if (v22)
    {
      v16 = v22;
      v23 = sub_22F740E20();
      v25 = v24;

LABEL_12:
      type metadata accessor for PlaceZeroKeyword();
      swift_getObjectType();
      v37 = a4;
      v27 = a3;
      v28 = *(a3 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary);
      v29 = a1;
      v30 = v28;
      v31 = sub_22F16ACE0(v23, v25, v12, v17, v9, 1, &v37, MEMORY[0x277D84F98], v30);
      MEMORY[0x231900D00]();
      if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
      v32 = *(v27 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken);
      v33 = *&v31[OBJC_IVAR___PGPlaceZeroKeyword_queryToken];
      [v32 setObject:v9 forKey:v33];

      goto LABEL_15;
    }

    v16 = [v9 name];

LABEL_11:
    v23 = sub_22F740E20();
    v25 = v26;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = a1;
  v11 = [v9 fullname];
  v12 = sub_22F740E20();
  v14 = v13;

  v15 = [objc_opt_self() beautifiedLocationNodeStringWithPlaceNode:v9 locationHelper:*(a3 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper)];
  if (v15)
  {
    v16 = v15;
    v35 = a5;
    v17 = v14;

    goto LABEL_11;
  }

  v16 = [v9 name];

  if (v16)
  {
    v35 = a5;
    v17 = v14;
    goto LABEL_11;
  }

LABEL_15:
}

uint64_t sub_22F3C971C()
{
  v44 = sub_22F73F690();
  v1 = *(v44 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v44);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v38 - v6;
  sub_22F120634(0, &qword_2810A8FF8, off_27887ABE0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v0;
  v9 = *(v0 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph);
  v10 = [ObjCClassFromMetadata nodesInGraph_];
  v11 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v52 = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &v52;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22F3CF320;
  *(v13 + 24) = v12;
  v50 = sub_22F21F0D4;
  v51 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_22F3618B8;
  v49 = &block_descriptor_61_0;
  v14 = _Block_copy(&aBlock);
  v15 = v11;

  v43 = v10;
  [v10 enumerateIdentifiersSortedByPopularityScoreWithBlock_];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = v12;
  v16 = objc_allocWithZone(PGGraphAreaNodeCollection);
  v41 = v15;
  v17 = [v16 initWithGraph:v9 elementIdentifiers:v15];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22F771350;
  *(v19 + 32) = [objc_opt_self() addressOfArea];
  *(v19 + 40) = [objc_opt_self() momentOfAddress];
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v20 = sub_22F741160();

  v21 = [v18 chain_];

  v22 = v17;
  v23 = v21;
  v24 = [objc_msgSend(v22 graph)];
  swift_unknownObjectRelease();
  v25 = [v24 concreteGraph];

  if (v25)
  {
    v26 = [v22 elementIdentifiers];
    v27 = [v25 adjacencyWithSources:v26 relation:v23];

    v45 = MEMORY[0x277D84F90];
    sub_22F73F650();
    sub_22F73F5E0();
    v39 = *(v1 + 8);
    v28 = v39(v4, v44);
    v38[1] = v38;
    MEMORY[0x28223BE20](v28);
    v29 = v42;
    v38[-4] = v7;
    v38[-3] = v29;
    LOBYTE(v36) = 2;
    v37 = &v45;
    v30 = swift_allocObject();
    v30[2] = sub_22F3CF378;
    v30[3] = &v38[-6];
    v30[4] = v27;
    v30[5] = v25;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_22F3CF388;
    *(v31 + 24) = v30;
    v50 = sub_22F15A9A4;
    v51 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22F107F34;
    v49 = &block_descriptor_71_0;
    v32 = _Block_copy(&aBlock);
    v33 = v27;
    swift_unknownObjectRetain();

    [v33 enumerateTargetsBySourceWith_];
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();
    swift_unknownObjectRelease();

    if ((v32 & 1) == 0)
    {
      v34 = v45;

      v39(v7, v44);

      return v34;
    }

    goto LABEL_6;
  }

LABEL_7:
  LODWORD(v37) = 0;
  v36 = 40;
  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F3C9DC4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v91 = a7;
  v90 = a6;
  v92 = a5;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - v15;
  sub_22F73F550();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = swift_allocObject();
  v18[2] = sub_22F3CF470;
  v18[3] = v17;
  v93 = v17;
  aBlock[4] = sub_22F26B650;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_80_0;
  v19 = _Block_copy(aBlock);

  [a2 enumerateNodesAsCollectionsSortedByUniversalStartDateWithOrderAscending:0 usingBlock:v19];
  _Block_release(v19);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
LABEL_30:
    sub_22F7411C0();
LABEL_27:
    sub_22F741220();
    v78 = *(v92 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken);
    v79 = *&v19[*v13];
    [v78 setObject:v18 forKey:v79];

    v21 = v85;
    goto LABEL_28;
  }

  (*(v10 + 16))(v13, v16, v9);
  v20 = sub_22F73F5C0();
  v21 = *(v10 + 8);
  v21(v13, v9);
  if (v20)
  {
    v22 = [a1 anyNode];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 fullname];
      v25 = sub_22F740E20();
      v27 = v26;

      v28 = [objc_opt_self() beautifiedLocationNodeStringWithPlaceNode:v23 locationHelper:*(v92 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper)];
      if (!v28)
      {
        v28 = [v23 name];
      }

      v29 = v28;
      v30 = sub_22F740E20();
      v32 = v31;

      if (sub_22F740F10() < 1)
      {

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v89 = v27;
        v88 = v30;
        v33 = sub_22F740F10();

        if (v33 > 0)
        {
          v87 = v25;
          v85 = v21;
          v34 = *(v92 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary);
          objc_opt_self();
          v35 = swift_dynamicCastObjCClass();
          v36 = v23;
          v37 = v36;
          v38 = v89;
          v84 = v34;
          if (v35)
          {
            v39 = v36;
            v40 = v34;
            v41 = [v35 locationNodeCollection];
            v42 = [v41 parentLocationNodes];

            v43 = [v42 anyNode];
          }

          else
          {
            v44 = v34;
            v43 = 0;
          }

          v45 = v37;
          v86 = [v45 stateOrBiggerParentLocationNode];
          v83 = v45;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22F7707D0;
          v47 = *MEMORY[0x277D3B1A8];
          *(inited + 32) = sub_22F740E20();
          v48 = MEMORY[0x277D837D0];
          *(inited + 72) = MEMORY[0x277D837D0];
          v49 = v87;
          *(inited + 40) = v50;
          *(inited + 48) = v49;
          *(inited + 56) = v38;
          v51 = *MEMORY[0x277D3B188];
          *(inited + 80) = sub_22F740E20();
          *(inited + 88) = v52;
          *(inited + 120) = MEMORY[0x277D839B0];
          *(inited + 96) = 1;
          v53 = *MEMORY[0x277D3B1C8];
          *(inited + 128) = sub_22F740E20();
          *(inited + 136) = v54;
          v55 = v90;
          if (v90 > 1u)
          {
            v56 = v88;
            if (v90 == 2)
            {
              v57 = 0xE600000000000000;
              v58 = 0x696F41706F74;
            }

            else
            {
              v57 = 0xE400000000000000;
              v58 = 1701670760;
            }
          }

          else
          {
            v56 = v88;
            if (v90)
            {
              v57 = 0xED00007069725467;
              v58 = 0x6E69727275636572;
            }

            else
            {
              v57 = 0xE800000000000000;
              v58 = 0x7465737265707573;
            }
          }

          *(inited + 168) = v48;
          *(inited + 144) = v58;
          *(inited + 152) = v57;

          v82 = sub_22F14EA28(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
          swift_arrayDestroy();
          if (v86)
          {
            v59 = v86;
            v60 = _s11PhotosGraph16PlaceZeroKeywordC22locationNameByCategory3forSDySo8NSNumberCSSGSo19PGGraphLocationNodeC_tFZ_0(v59);

            v61 = sub_22F740DF0();
            if (v60)
            {
              sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
              sub_22F16C010();
              v62 = sub_22F740C80();
            }

            else
            {
              v62 = 0;
            }

            v63 = v88;
          }

          else
          {
            v61 = sub_22F740DF0();
            v63 = v56;
            v62 = 0;
          }

          v64 = [objc_allocWithZone(MEMORY[0x277D3ADA0]) initWithText:v61 locationNameByCategory:v62];

          [v64 setUserControlledCategoriesUseWildcard_];
          v18 = v83;
          v65 = [objc_msgSend(v83 locationOrAreaNodeCollection)];
          swift_unknownObjectRelease();

          v66 = qword_22F78A6C0[v55];
          v67 = type metadata accessor for PlaceZeroKeyword();
          v68 = objc_allocWithZone(v67);
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_type] = 2;
          v69 = &v68[OBJC_IVAR___PGPlaceZeroKeyword_title];
          *v69 = v63;
          v69[1] = v32;
          v70 = &v68[OBJC_IVAR___PGPlaceZeroKeyword_address];
          v71 = v89;
          *v70 = v87;
          v70[1] = v71;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v82;
          v13 = &OBJC_IVAR___PGPlaceZeroKeyword_queryToken;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v64;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v65;
          v68[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = v55;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_score] = v66;
          v72 = v84;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = v84;
          v94.receiver = v68;
          v94.super_class = v67;
          v73 = v72;
          v74 = v64;
          v75 = v65;
          v76 = objc_msgSendSuper2(&v94, sel_init);

          v19 = v76;
          v77 = v91;
          MEMORY[0x231900D00]();
          if (*((*v77 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_27;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_28:
  v21(v16, v9);
}

void sub_22F3CA70C(void *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  *&v9 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 anyNode];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 universalEndDate];
    sub_22F73F640();

    (*(v7 + 40))(a3, v11, v6);
    *a2 = 1;
  }
}

uint64_t sub_22F3CA834(unint64_t a1)
{
  v170 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_132;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v155 = a1;
  if (v1)
  {
LABEL_3:
    v2 = 0;
    v158 = OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken;
    v3 = a1 & 0xC000000000000001;
    v165 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = a1 + 32;
    v5 = MEMORY[0x277D84F98];
    v162 = a1 & 0xC000000000000001;
    v163 = a1 + 32;
    v153 = v1;
    while (!v2)
    {
LABEL_4:
      if (++v2 == v153)
      {
        v111 = v170;
        v112 = v155;
        goto LABEL_137;
      }
    }

    v6 = 0;
    while (1)
    {
      v7 = v170;
      if (*(v170 + 16))
      {
        v8 = *(v170 + 40);
        a1 = sub_22F742160();
        v9 = v7 + 56;
        v10 = -1 << *(v7 + 32);
        v11 = a1 & ~v10;
        if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (*(*(v7 + 48) + 8 * v11) != v2)
          {
            v11 = (v11 + 1) & v12;
            if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_9;
        }

LABEL_15:
        v13 = *(v7 + 40);
        a1 = sub_22F742160();
        v14 = -1 << *(v7 + 32);
        v15 = a1 & ~v14;
        if ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (*(*(v7 + 48) + 8 * v15) != v6)
          {
            v15 = (v15 + 1) & v16;
            if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_9;
        }
      }

LABEL_19:
      if (v5[2])
      {
        v17 = sub_22F13A8F4(v2);
        if (v18)
        {
          v19 = *(v5[7] + 8 * v17);
          v20 = v19;
        }

        else
        {
          v19 = 0;
        }

        a1 = sub_22F13A8F4(v6);
        if (v22)
        {
          v21 = *(v5[7] + 8 * a1);
          a1 = v21;
          if (v19)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v21 = 0;
          if (v19)
          {
LABEL_26:
            if (v21)
            {
              goto LABEL_27;
            }

            goto LABEL_60;
          }
        }
      }

      else
      {
        v21 = 0;
      }

      if (v3)
      {
        v30 = MEMORY[0x2319016F0](v2, v155);
      }

      else
      {
        if (v2 >= *(v165 + 16))
        {
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
          v33 = a1;
          v113 = sub_22F741A00();
          if (v113 < 0)
          {
            __break(1u);
LABEL_134:
            v113 = sub_22F7420C0();
            __break(1u);
          }

          v1 = v113;
          a1 = v33;
          v155 = v33;
          if (!v1)
          {
            break;
          }

          goto LABEL_3;
        }

        v30 = *(v4 + 8 * v2);
      }

      v31 = v30;
      v32 = *&v30[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection];

      v19 = [v32 centroidLocation];
      if (v19)
      {
        v33 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v168 = v5;
        a1 = sub_22F13A8F4(v2);
        v36 = v5[2];
        v37 = (v35 & 1) == 0;
        v38 = __OFADD__(v36, v37);
        v39 = v36 + v37;
        if (v38)
        {
          goto LABEL_125;
        }

        v40 = v35;
        if (v5[3] >= v39)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v109 = a1;
            sub_22F139394();
            a1 = v109;
          }
        }

        else
        {
          sub_22F12E81C(v39, isUniquelyReferenced_nonNull_native);
          a1 = sub_22F13A8F4(v2);
          if ((v40 & 1) != (v41 & 1))
          {
            goto LABEL_134;
          }
        }

        v4 = v163;
        v5 = v168;
        if (v40)
        {
          v45 = *(v168 + 56);
          v46 = *(v45 + 8 * a1);
          *(v45 + 8 * a1) = v33;

          if (v21)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(v168 + 8 * (a1 >> 6) + 64) |= 1 << a1;
          *(v5[6] + 8 * a1) = v2;
          *(v5[7] + 8 * a1) = v33;
          v47 = v5[2];
          v38 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v38)
          {
            goto LABEL_130;
          }

          v5[2] = v48;
          if (v21)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        a1 = sub_22F13A8F4(v2);
        if (v42)
        {
          v43 = a1;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *&v168 = v5;
          if (!v44)
          {
            sub_22F139394();
            v5 = v168;
          }

          a1 = sub_22F3BA884(v43, v5);
        }

        v19 = 0;
        if (v21)
        {
          goto LABEL_27;
        }
      }

LABEL_60:
      if (v3)
      {
        v49 = MEMORY[0x2319016F0](v6, v155);
      }

      else
      {
        if (v6 >= *(v165 + 16))
        {
          goto LABEL_126;
        }

        v49 = *(v4 + 8 * v6);
      }

      v50 = v49;
      v51 = *&v49[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection];

      v21 = [v51 centroidLocation];
      if (v21)
      {
        v33 = v21;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        *&v168 = v5;
        a1 = sub_22F13A8F4(v6);
        v54 = v5[2];
        v55 = (v53 & 1) == 0;
        v38 = __OFADD__(v54, v55);
        v56 = v54 + v55;
        if (v38)
        {
          goto LABEL_128;
        }

        v57 = v53;
        if (v5[3] >= v56)
        {
          if ((v52 & 1) == 0)
          {
            v110 = a1;
            sub_22F139394();
            a1 = v110;
          }
        }

        else
        {
          sub_22F12E81C(v56, v52);
          a1 = sub_22F13A8F4(v6);
          if ((v57 & 1) != (v58 & 1))
          {
            goto LABEL_134;
          }
        }

        v4 = v163;
        v5 = v168;
        if (v57)
        {
          v63 = *(v168 + 56);
          v64 = *(v63 + 8 * a1);
          *(v63 + 8 * a1) = v33;
        }

        else
        {
          *(v168 + 8 * (a1 >> 6) + 64) |= 1 << a1;
          *(v5[6] + 8 * a1) = v6;
          *(v5[7] + 8 * a1) = v33;
          v65 = v5[2];
          v38 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v38)
          {
            goto LABEL_131;
          }

          v5[2] = v66;
        }
      }

      else
      {
        v59 = sub_22F13A8F4(v6);
        if (v60)
        {
          v61 = v59;
          v62 = swift_isUniquelyReferenced_nonNull_native();
          *&v168 = v5;
          if (!v62)
          {
            sub_22F139394();
            v5 = v168;
          }

          sub_22F3BA884(v61, v5);
        }

        v21 = 0;
      }

LABEL_27:
      if (v19)
      {
        if (v21)
        {
          a1 = [v19 distanceFromLocation_];
          if (v23 >= 15000.0)
          {
            goto LABEL_92;
          }

          if (v3)
          {
            v107 = *(MEMORY[0x2319016F0](v2, v155) + OBJC_IVAR___PGPlaceZeroKeyword_type);
            swift_unknownObjectRelease();
            v108 = *(MEMORY[0x2319016F0](v6, v155) + OBJC_IVAR___PGPlaceZeroKeyword_type);
            swift_unknownObjectRelease();
            if (v107 != 6 && v108 != 6)
            {
              v25 = MEMORY[0x2319016F0](v2, v155);
LABEL_35:
              v26 = v25;
              v27 = OBJC_IVAR___PGPlaceZeroKeyword_score;
              swift_beginAccess();
              v28 = *&v26[v27];

              if (v3)
              {
                v29 = MEMORY[0x2319016F0](v6, v155);
              }

              else
              {
                v29 = *(v4 + 8 * v6);
              }

              v67 = v29;
              v68 = OBJC_IVAR___PGPlaceZeroKeyword_score;
              swift_beginAccess();
              v69 = *&v67[v68];

              if (v28 == v69)
              {
                if (v3)
                {
                  v70 = MEMORY[0x2319016F0](v2, v155);
                }

                else
                {
                  v70 = *(v4 + 8 * v2);
                }

                v72 = v70;
                v73 = *&v70[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection];

                v74 = [v73 momentNodes];
                v75 = [v74 count];

                if (v3)
                {
                  v76 = MEMORY[0x2319016F0](v6, v155);
                }

                else
                {
                  v76 = *(v4 + 8 * v6);
                }

                v77 = v76;
                v78 = *&v76[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection];

                v79 = [v78 momentNodes];
                v80 = [v79 count];

                if (v80 < v75)
                {
LABEL_90:
                  v71 = v6;
                  goto LABEL_91;
                }
              }

              else if (v69 < v28)
              {
                goto LABEL_90;
              }

              v71 = v2;
LABEL_91:
              a1 = sub_22F10F624(&v168, v71);
LABEL_92:
              if (v3)
              {
                v82 = MEMORY[0x2319016F0](v2, v155);
                v83 = MEMORY[0x2319016F0](v6, v155);
              }

              else
              {
                if (v2 >= *(v165 + 16))
                {
                  goto LABEL_127;
                }

                v81 = *(v4 + 8 * v6);
                v82 = *(v4 + 8 * v2);
                v83 = v81;
              }

              v84 = v83;
              v85 = *(v160 + v158);
              v86 = [v85 objectForKey_];
              if (v86)
              {
                v87 = v86;
                objc_opt_self();
                v88 = swift_dynamicCastObjCClass();
                if (v88)
                {
                  v89 = v88;
                  v90 = [v85 objectForKey_];
                  if (!v90)
                  {

                    goto LABEL_114;
                  }

                  v91 = v90;
                  v156 = v84;
                  objc_opt_self();
                  v92 = swift_dynamicCastObjCClass();
                  if (v92)
                  {
                    v93 = v92;
                    v152 = v91;
                    v94 = [v89 label];
                    if (!v94)
                    {
                      goto LABEL_113;
                    }

                    v150 = v94;
                    v95 = v93;
                    v96 = [v93 label];
                    if (!v96)
                    {
                      goto LABEL_112;
                    }

                    v148 = v96;
                    v97 = [v89 locationMask];
                    v98 = [v95 locationMask];
                    v99 = v95;
                    if (v97 < v98)
                    {

                      v151 = [v89 locationNodeCollection];
                      v100 = [v151 nearestDeepParentLocationNodesWithLabel_];

                      v101 = v100;
                      LODWORD(v100) = [v100 containsNode_];

                      if (v100)
                      {
                        v102 = v6;
                        goto LABEL_111;
                      }

                      goto LABEL_113;
                    }

                    v103 = v97;
                    v147 = v99;
                    v104 = v98;

                    if (v104 >= v103)
                    {
LABEL_112:

                      goto LABEL_113;
                    }

                    v149 = [v147 locationNodeCollection];
                    v105 = [v149 nearestDeepParentLocationNodesWithLabel_];

                    v106 = [v105 containsNode_];
                    if (v106)
                    {
                      v102 = v2;
LABEL_111:
                      sub_22F10F624(&v168, v102);
                    }

LABEL_113:

LABEL_114:
LABEL_115:
                  }

                  else
                  {
                  }
                }

                else
                {
                }

                v3 = v162;
                v4 = v163;
                goto LABEL_9;
              }

              goto LABEL_115;
            }
          }

          else
          {
            if (v2 >= *(v165 + 16))
            {
              goto LABEL_129;
            }

            v24 = *(v4 + 8 * v2);
            if (*&v24[OBJC_IVAR___PGPlaceZeroKeyword_type] != 6 && *(*(v4 + 8 * v6) + OBJC_IVAR___PGPlaceZeroKeyword_type) != 6)
            {
              v25 = v24;
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
      }

LABEL_9:
      if (++v6 == v2)
      {
        goto LABEL_4;
      }
    }
  }

  v162 = a1 & 0xC000000000000001;
  v165 = a1 & 0xFFFFFFFFFFFFFF8;
  v112 = a1;
  v111 = MEMORY[0x277D84FA0];
LABEL_137:
  v114 = v111 + 56;
  v115 = 1 << *(v111 + 32);
  v116 = -1;
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  v117 = v116 & *(v111 + 56);
  v118 = (v115 + 63) >> 6;
  v161 = v112 + 32;
  v164 = *MEMORY[0x277D3B188];

  v119 = 0;
  v157 = v111 + 56;
  v159 = v111;
  v154 = v118;
  while (v117)
  {
LABEL_147:
    v125 = *(*(v111 + 48) + ((v119 << 9) | (8 * __clz(__rbit64(v117)))));
    if (v162)
    {
      v126 = MEMORY[0x2319016F0](v125, v155);
    }

    else
    {
      if ((v125 & 0x8000000000000000) != 0)
      {
        goto LABEL_164;
      }

      if (v125 >= *(v165 + 16))
      {
        goto LABEL_166;
      }

      v126 = *(v161 + 8 * v125);
    }

    v127 = v126;
    v128 = sub_22F740E20();
    v130 = v129;
    v169 = MEMORY[0x277D839B0];
    LOBYTE(v168) = 0;
    v131 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
    swift_beginAccess();
    sub_22F107D08(&v168, v167);
    v132 = *&v127[v131];
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v134 = *&v127[v131];
    v166 = v134;
    *&v127[v131] = 0x8000000000000000;
    v135 = sub_22F1229E8(v128, v130);
    v137 = v134[2];
    v138 = (v136 & 1) == 0;
    v38 = __OFADD__(v137, v138);
    v139 = v137 + v138;
    if (v38)
    {
      goto LABEL_165;
    }

    v140 = v136;
    if (v134[3] < v139)
    {
      sub_22F125CA4(v139, v133);
      v135 = sub_22F1229E8(v128, v130);
      if ((v140 & 1) != (v141 & 1))
      {
        goto LABEL_168;
      }

LABEL_156:
      if (v140)
      {
        goto LABEL_140;
      }

      goto LABEL_157;
    }

    if (v133)
    {
      goto LABEL_156;
    }

    v145 = v135;
    sub_22F1344D4();
    v135 = v145;
    if (v140)
    {
LABEL_140:
      v120 = v135;

      v121 = v166;
      v122 = (v166[7] + 32 * v120);
      __swift_destroy_boxed_opaque_existential_0(v122);
      sub_22F107D08(v167, v122);
      goto LABEL_141;
    }

LABEL_157:
    v121 = v134;
    v134[(v135 >> 6) + 8] |= 1 << v135;
    v142 = (v134[6] + 16 * v135);
    *v142 = v128;
    v142[1] = v130;
    sub_22F107D08(v167, (v134[7] + 32 * v135));
    v143 = v134[2];
    v38 = __OFADD__(v143, 1);
    v144 = v143 + 1;
    if (v38)
    {
      goto LABEL_167;
    }

    v134[2] = v144;
LABEL_141:
    v117 &= v117 - 1;
    v123 = *&v127[v131];
    *&v127[v131] = v121;

    swift_endAccess();

    v114 = v157;
    v111 = v159;
    v118 = v154;
  }

  while (1)
  {
    v124 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      break;
    }

    if (v124 >= v118)
    {

      return v155;
    }

    v117 = *(v114 + 8 * v124);
    ++v119;
    if (v117)
    {
      v119 = v124;
      goto LABEL_147;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void *sub_22F3CB664(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v84 = *(v3 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_searchComputationCache);
  v10 = [v84 locationInformationForLocationNode:a1 locationMask:a2];
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v3 = sub_22F740CA0();

  v76 = 0x696669746E656469;
  v77 = 0xEA00000000007265;
  sub_22F741A90();
  if (!v3[2] || (v12 = sub_22F122B24(&v80), (v13 & 1) == 0))
  {

    sub_22F139E70(&v80);
    goto LABEL_22;
  }

  sub_22F13A100(v3[7] + 32 * v12, &v78);
  sub_22F139E70(&v80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_22;
  }

  v14 = v76;
  v76 = 0x6C6562616CLL;
  v77 = 0xE500000000000000;
  sub_22F741A90();
  if (!v3[2])
  {
    goto LABEL_31;
  }

  v15 = sub_22F122B24(&v80);
  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_22F13A100(v3[7] + 32 * v15, &v78);
  sub_22F139E70(&v80);
  if (swift_dynamicCast())
  {
    v74 = v76;
    v75 = v77;
    v76 = 0x6E69616D6F64;
    v77 = 0xE600000000000000;
    sub_22F741A90();
    if (!v3[2] || (v17 = sub_22F122B24(&v80), (v18 & 1) == 0))
    {
LABEL_32:

LABEL_31:

      sub_22F139E70(&v80);
      v5 = v4;
      goto LABEL_22;
    }

    sub_22F13A100(v3[7] + 32 * v17, &v78);
    sub_22F139E70(&v80);
    if (swift_dynamicCast())
    {
      v73 = v76;
      v76 = 0x69747265706F7270;
      v77 = 0xEA00000000007365;
      sub_22F741A90();
      if (v3[2])
      {
        v19 = sub_22F122B24(&v80);
        if (v20)
        {
          sub_22F13A100(v3[7] + 32 * v19, &v78);
          sub_22F139E70(&v80);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB40A8, &qword_22F78A578);
          if (swift_dynamicCast())
          {
            v72 = v76;
            v71 = *(v6 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph);
            v21 = [v71 nodeForIdentifier_];
            if (v21)
            {
              objc_opt_self();
              v22 = swift_dynamicCastObjCClass();
              if (v22)
              {
                v3 = v22;
                v70 = v21;
                if ([v3 domain] == v73)
                {
                  v23 = [v3 label];
                  if (v23)
                  {
                    v24 = v23;
                    v68 = sub_22F740E20();
                    v69 = v25;

                    if (v68 == v74 && v69 == v75)
                    {

                      goto LABEL_37;
                    }

                    LODWORD(v68) = sub_22F742040();

                    if (v68)
                    {
LABEL_37:
                      v68 = sub_22F214E90(v72);
                      v69 = sub_22F740C80();

                      v63 = [v3 hasProperties_];

                      if (v63)
                      {

                        return v3;
                      }

                      goto LABEL_40;
                    }
                  }
                }
              }
            }

LABEL_40:
            v3 = sub_22F740DF0();

            sub_22F215124(v72);

            v64 = sub_22F740C80();

            v65 = [v71 anyNodeForLabel:v3 domain:v73 properties:v64];

            v5 = v4;
            if (v65)
            {
              objc_opt_self();
              v66 = swift_dynamicCastObjCClass();
              if (v66)
              {
                return v66;
              }
            }

            goto LABEL_22;
          }

          goto LABEL_34;
        }
      }

      goto LABEL_32;
    }
  }

LABEL_34:

  v5 = v4;
LABEL_22:
  v26 = [a3 densestCloseLocationNodeFromLocationNode:a1 withDateInterval:0 locationMask:a2];
  if (v26)
  {
    v3 = v26;
    v27 = [v3 label];
    if (v27)
    {
      v75 = v5;
      v28 = v27;
      v29 = sub_22F740E20();
      v31 = v30;

      v32 = [v3 name];
      if (v32)
      {
        v33 = v32;
        v34 = sub_22F740E20();
        v36 = v35;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E40, &unk_22F78A560);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22F771340;
        *(inited + 32) = sub_22F740E20();
        *(inited + 40) = v38;
        *(inited + 48) = v34;
        *(inited + 56) = v36;
        v74 = sub_22F14F0AC(inited);
        swift_setDeallocating();
        sub_22F120ADC(inited + 32, &qword_27DAB0E48, &unk_22F7711F0);
        v3 = v3;
        v39 = [v3 identifier];
        v82 = MEMORY[0x277D83EB0];
        v83 = MEMORY[0x277D83E90];
        v81 = MEMORY[0x277D83E88];
        *&v80 = v39;
        sub_22F139F28(&v80, &v78);
        v40 = MEMORY[0x277D84F98];
        LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
        v76 = v40;
        v41 = __swift_mutable_project_boxed_opaque_existential_1(&v78, v79);
        sub_22F3CDA38(*v41, 0x696669746E656469, 0xEA00000000007265, v36, &v76);
        __swift_destroy_boxed_opaque_existential_0(&v78);
        v42 = v76;
        v81 = MEMORY[0x277D837D0];
        v82 = MEMORY[0x277D83808];
        v83 = MEMORY[0x277D837D8];
        *&v80 = v29;
        *(&v80 + 1) = v31;
        sub_22F139F28(&v80, &v78);
        LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
        v76 = v42;
        v43 = v79;
        v44 = __swift_mutable_project_boxed_opaque_existential_1(&v78, v79);
        v45 = *(*(v43 - 8) + 64);
        v46 = MEMORY[0x28223BE20](v44);
        v48 = (&v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v49 + 16))(v48, v46);
        sub_22F3CDBA8(*v48, v48[1], 0x6C6562616CLL, 0xE500000000000000, v36, &v76);
        __swift_destroy_boxed_opaque_existential_0(&v78);
        v50 = v76;
        LOWORD(v36) = [v3 domain];

        v81 = MEMORY[0x277D84C58];
        v82 = MEMORY[0x277D84C88];
        v83 = MEMORY[0x277D84C60];
        LOWORD(v80) = v36;
        sub_22F139F28(&v80, &v78);
        LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
        v76 = v50;
        v51 = __swift_mutable_project_boxed_opaque_existential_1(&v78, v79);
        sub_22F3CDDA4(*v51, 0x6E69616D6F64, 0xE600000000000000, v36, &v76);
        __swift_destroy_boxed_opaque_existential_0(&v78);
        v52 = v76;
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
        v82 = sub_22F222E48(&qword_2810A93A8);
        v83 = sub_22F222E48(&qword_2810A93B0);
        *&v80 = v74;
        sub_22F139F28(&v80, &v78);
        LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
        v76 = v52;
        v53 = v79;
        v54 = __swift_mutable_project_boxed_opaque_existential_1(&v78, v79);
        v55 = *(*(v53 - 8) + 64);
        v56 = MEMORY[0x28223BE20](v54);
        v58 = (&v67 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v59 + 16))(v58, v56);
        sub_22F3CDF14(*v58, 0x69747265706F7270, 0xEA00000000007365, v36, &v76);
        __swift_destroy_boxed_opaque_existential_0(&v78);
        sub_22F215124(v76);

        v60 = sub_22F740C80();

        [v84 setLocationInformation:v60 forLocationNode:a1 locationMask:a2];
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    sub_22F3CF1D8();
    swift_allocError();
    *v61 = 0;
    swift_willThrow();
  }

  return v3;
}

id PlaceZeroKeywordGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceZeroKeywordGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceZeroKeywordGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F3CC38C(char *__src, char **a2, id *a3, char *__dst, void *a5, uint64_t a6)
{
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v15 = a2;
    if (__dst != __src || &__src[8 * v11] <= __dst)
    {
      v16 = __dst;
      memmove(__dst, __src, 8 * v11);
      __dst = v16;
    }

    v17 = &__dst[8 * v11];
    v18 = __dst;
    if (v9 < 8 || v15 >= v7)
    {
LABEL_21:
      v27 = v8;
      goto LABEL_53;
    }

    v19 = v15;
    while (1)
    {
      v56 = *v19;
      v55 = *v18;
      v20 = v55;
      v21 = v56;
      v22 = v20;
      v23 = sub_22F3C669C(&v56, &v55, a5, a6);
      if (v6)
      {

        v43 = v17 - v18 + 7;
        if (v17 - v18 >= 0)
        {
          v43 = v17 - v18;
        }

        if (v8 < v18 || v8 >= (v18 + (v43 & 0xFFFFFFFFFFFFFFF8)) || v8 != v18)
        {
          v44 = 8 * (v43 >> 3);
          v27 = v8;
          goto LABEL_59;
        }

        goto LABEL_61;
      }

      v24 = v23;

      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = v19;
      v26 = v8 == v19++;
      if (!v26)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v8;
      if (v18 >= v17 || v19 >= v7)
      {
        goto LABEL_21;
      }
    }

    v25 = v18;
    v26 = v8 == v18++;
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v8 = *v25;
    goto LABEL_19;
  }

  v18 = __dst;
  if (__dst != a2 || &a2[v14] <= __dst)
  {
    v28 = a2;
    memmove(__dst, a2, 8 * v14);
    a2 = v28;
  }

  v27 = a2;
  v17 = &v18[v14];
  if (v12 < 8 || a2 <= v8)
  {
LABEL_53:
    v48 = v17 - v18 + 7;
    if (v17 - v18 >= 0)
    {
      v48 = v17 - v18;
    }

    if (v27 >= v18 && v27 < (v18 + (v48 & 0xFFFFFFFFFFFFFFF8)) && v27 == v18)
    {
      goto LABEL_61;
    }

    v44 = 8 * (v48 >> 3);
LABEL_59:
    v47 = v18;
LABEL_60:
    memmove(v27, v47, v44);
    goto LABEL_61;
  }

  v52 = v18;
  v29 = -v18;
  v50 = -v18;
LABEL_28:
  v51 = v27;
  v30 = v27 - 1;
  v31 = v17 + v29;
  --v7;
  v32 = v17;
  v33 = v17;
  while (1)
  {
    v34 = *--v33;
    v56 = v34;
    v35 = v30;
    v55 = *v30;
    v36 = v55;
    v37 = v34;
    v38 = v36;
    v39 = sub_22F3C669C(&v56, &v55, a5, a6);
    if (v6)
    {
      break;
    }

    v40 = v39;

    v41 = v7 + 1;
    if (v40)
    {
      v42 = v35;
      if (v41 != v51)
      {
        *v7 = *v35;
      }

      v18 = v52;
      v17 = v32;
      if (v32 <= v52 || (v27 = v42, v29 = v50, v42 <= v8))
      {
        v27 = v42;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v41 != v32)
    {
      *v7 = *v33;
    }

    v31 -= 8;
    --v7;
    v32 = v33;
    v30 = v35;
    if (v33 <= v52)
    {
      v17 = v33;
      v27 = v51;
      v18 = v52;
      goto LABEL_53;
    }
  }

  if (v31 >= 0)
  {
    v45 = v31;
  }

  else
  {
    v45 = v31 + 7;
  }

  v46 = v45 >> 3;
  v27 = v51;
  v47 = v52;
  if (v51 < v52 || v51 >= v52 + (v45 & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(v51, v52, 8 * v46);
    goto LABEL_61;
  }

  if (v51 != v52)
  {
    v44 = 8 * v46;
    goto LABEL_60;
  }

LABEL_61:
  swift_unknownObjectRelease();

  return 1;
}

uint64_t sub_22F3CC72C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB41A0, &qword_27DAB4198, &qword_22F78A5E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4198, &qword_22F78A5E8);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CC8CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB4168, &qword_27DAB4160, &qword_22F78A5D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4160, &qword_22F78A5D0);
            v9 = sub_22F14E104(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ImportantEntitiesGraphInferenceMoment();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CCA5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_27DAB4188, &qword_27DAB4180, &qword_22F78A5E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4180, &qword_22F78A5E0);
            v9 = sub_22F14E084(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ImportantEntitiesChildrenProcessorEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CCBEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB4178, &qword_27DAB4170, &qword_22F78A5D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4170, &qword_22F78A5D8);
            v9 = sub_22F14E084(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ImportantEntitiesPetProcessorEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CCD7C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB4158, &qword_27DAB4150, &qword_22F78A5C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4150, &qword_22F78A5C8);
            v9 = sub_22F14DF7C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CCF18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_27DAB4140, &qword_27DAB4138, &qword_22F78A5C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4138, &qword_22F78A5C0);
            v9 = sub_22F14E084(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ImportantEntitiesTuningEvent();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD0A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_2810A9290, &unk_27DAB4128, &unk_22F78A5B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB4128, &unk_22F78A5B0);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD248(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB4120, &qword_27DAB32A8, &unk_22F7868C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32A8, &unk_22F7868C0);
            v9 = sub_22F14E18C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GraphSearchEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD3D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_27DAB4110, &qword_27DAB35D0, &unk_22F784740);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35D0, &unk_22F784740);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TripLocationScore();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD568(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_27DAB4100, &qword_27DAB40F8, &qword_22F78A5A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40F8, &qword_22F78A5A8);
            v9 = sub_22F14E084(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PGSharedLibrarySimulationEvent();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD6F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB40F0, &qword_27DAB40E8, &qword_22F78A5A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E8, &qword_22F78A5A0);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F120634(0, &qword_2810A91D0, 0x277CD99E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD898(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB40C0, &qword_27DAB40B8, &unk_22F78A580);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40B8, &unk_22F78A580);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F120634(0, &qword_27DAB0590, off_27887B2F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *sub_22F3CDA38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83E88];
  v26 = MEMORY[0x277D83EB0];
  v27 = MEMORY[0x277D83E90];
  v9 = *a5;
  v11 = sub_22F1229E8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_22F139F28(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_22F1394F4();
    goto LABEL_7;
  }

  sub_22F12EA90(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_22F1229E8(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D83E88]);
  sub_22F3CE3AC(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_22F3CDBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D83808];
  v34 = MEMORY[0x277D837D8];
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v11 = *a6;
  v13 = sub_22F1229E8(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_22F139F28(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_22F1394F4();
    goto LABEL_7;
  }

  sub_22F12EA90(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_22F1229E8(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  sub_22F3CE310(v13, a3, a4, *v29, v29[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v31);
}

_OWORD *sub_22F3CDDA4(__int16 a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOWORD(v24) = a1;
  v25 = MEMORY[0x277D84C58];
  v26 = MEMORY[0x277D84C88];
  v27 = MEMORY[0x277D84C60];
  v9 = *a5;
  v11 = sub_22F1229E8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_22F139F28(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_22F1394F4();
    goto LABEL_7;
  }

  sub_22F12EA90(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_22F1229E8(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D84C58]);
  sub_22F3CE274(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_22F3CDF14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
  v32 = v10;
  v33 = sub_22F222E48(&qword_2810A93A8);
  v34 = sub_22F222E48(&qword_2810A93B0);
  *&v31 = a1;
  v11 = *a5;
  v13 = sub_22F1229E8(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_22F139F28(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_22F1394F4();
    goto LABEL_7;
  }

  sub_22F12EA90(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_22F1229E8(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  sub_22F3CE168(v13, a2, a3, *v29, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v31);
}

_OWORD *sub_22F3CE168(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
  v17 = sub_22F222E48(&qword_2810A93A8);
  v18 = sub_22F222E48(&qword_2810A93B0);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_22F139F28(&v15, (a5[7] + 48 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_22F3CE274(unint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  LOWORD(v11) = a4;
  v12 = MEMORY[0x277D84C58];
  v13 = MEMORY[0x277D84C88];
  v14 = MEMORY[0x277D84C60];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22F139F28(&v11, (a5[7] + 48 * a1));
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

_OWORD *sub_22F3CE310(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D83808];
  v15 = MEMORY[0x277D837D8];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_22F139F28(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_22F3CE3AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83E88];
  v13 = MEMORY[0x277D83EB0];
  v14 = MEMORY[0x277D83E90];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22F139F28(&v11, (a5[7] + 48 * a1));
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

void sub_22F3CE448(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v10 = a3[1];
  v11 = a5;
  v124 = a6;
  swift_unknownObjectRetain_n();
  v123 = v11;
  if (v10 < 1)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_91:
    __dst = *a1;
    if (*a1)
    {
      v104 = v123;
      swift_unknownObjectRetain_n();
      v121 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_93;
    }

    goto LABEL_134;
  }

  v12 = v10;
  v114 = a4;
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = v13;
    v16 = v13 + 1;
    v121 = v12;
    if (v13 + 1 >= v12)
    {
      goto LABEL_20;
    }

    v17 = *a3;
    v18 = *(*a3 + 8 * v16);
    v19 = v15;
    v20 = *(*a3 + 8 * v15);
    v125 = v20;
    v126 = v18;
    v21 = v18;
    v22 = v20;
    v23 = sub_22F3C669C(&v126, &v125, v123, v124);
    if (v7)
    {
      swift_unknownObjectRelease_n();

LABEL_105:

      return;
    }

    v24 = v23;
    __dst = v14;

    v25 = v19 + 2;
    v115 = v19;
    v26 = 8 * v19;
    v27 = (v17 + 8 * v19 + 16);
    while (v121 != v25)
    {
      v28 = *v27;
      v125 = *(v27 - 1);
      v29 = v125;
      v126 = v28;
      v30 = v28;
      v31 = v29;
      LODWORD(v29) = sub_22F3C669C(&v126, &v125, v123, v124);

      ++v25;
      ++v27;
      if ((v24 ^ v29))
      {
        v121 = v25 - 1;
        break;
      }
    }

    v15 = v115;
    if (v24)
    {
      v16 = v121;
      if (v121 < v115)
      {
        goto LABEL_128;
      }

      if (v115 >= v121)
      {
        goto LABEL_19;
      }

      v32 = 8 * v121 - 8;
      v33 = v115;
      do
      {
        if (v33 != --v16)
        {
          v34 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v35 = *(v34 + v26);
          *(v34 + v26) = *(v34 + v32);
          *(v34 + v32) = v35;
        }

        ++v33;
        v32 -= 8;
        v26 += 8;
      }

      while (v33 < v16);
    }

    v16 = v121;
LABEL_19:
    v7 = 0;
LABEL_20:
    v36 = a3[1];
    if (v16 >= v36)
    {
      goto LABEL_30;
    }

    v37 = v16;
    v55 = __OFSUB__(v16, v15);
    v38 = v16 - v15;
    if (v55)
    {
      goto LABEL_124;
    }

    if (v38 >= v114)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v15, v114))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      swift_unknownObjectRelease_n();

      __break(1u);
LABEL_130:
      swift_unknownObjectRelease_n();

      __break(1u);
      goto LABEL_131;
    }

    if (v15 + v114 >= v36)
    {
      v39 = a3[1];
    }

    else
    {
      v39 = v15 + v114;
    }

    if (v39 < v15)
    {
      goto LABEL_127;
    }

    if (v37 == v39)
    {
LABEL_29:
      v16 = v37;
LABEL_30:
      if (v16 < v15)
      {
        goto LABEL_123;
      }

      goto LABEL_31;
    }

    __dst = v14;
    v92 = *a3;
    v93 = *a3 + 8 * v37 - 8;
    v116 = v15;
    v94 = v15 - v37;
    v113 = v39;
    do
    {
      v119 = v37;
      v95 = *(v92 + 8 * v37);
      v121 = v94;
      v96 = v93;
      do
      {
        v125 = *v93;
        v97 = v125;
        v126 = v95;
        v98 = v95;
        v99 = v97;
        v100 = sub_22F3C669C(&v126, &v125, v123, v124);
        if (v7)
        {
          swift_unknownObjectRelease_n();

          return;
        }

        v101 = v100;

        if ((v101 & 1) == 0)
        {
          break;
        }

        if (!v92)
        {
          goto LABEL_130;
        }

        v102 = *v93;
        v95 = *(v93 + 8);
        *v93 = v95;
        *(v93 + 8) = v102;
        v93 -= 8;
      }

      while (!__CFADD__(v94++, 1));
      v37 = v119 + 1;
      v93 = v96 + 8;
      v94 = v121 - 1;
    }

    while (v119 + 1 != v113);
    v16 = v113;
    v14 = __dst;
    v15 = v116;
    if (v113 < v116)
    {
      goto LABEL_123;
    }

LABEL_31:
    v118 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22F13D970(0, *(v14 + 2) + 1, 1, v14);
    }

    v41 = *(v14 + 2);
    v40 = *(v14 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v14 = sub_22F13D970((v40 > 1), v41 + 1, 1, v14);
    }

    *(v14 + 2) = v42;
    v43 = &v14[16 * v41];
    *(v43 + 4) = v15;
    *(v43 + 5) = v118;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v41)
    {
      break;
    }

LABEL_3:
    v12 = a3[1];
    v13 = v118;
    if (v118 >= v12)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v44 = v42 - 1;
    if (v42 >= 4)
    {
      v49 = &v14[16 * v42 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v14[16 * v42];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v14[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_122;
        }

        if (v47 < v81)
        {
          v44 = v42 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

    if (v42 == 3)
    {
      v45 = *(v14 + 4);
      v46 = *(v14 + 5);
      v55 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      v48 = v55;
LABEL_50:
      if (v48)
      {
        goto LABEL_112;
      }

      v61 = &v14[16 * v42];
      v63 = *v61;
      v62 = *(v61 + 1);
      v64 = __OFSUB__(v62, v63);
      v65 = v62 - v63;
      v66 = v64;
      if (v64)
      {
        goto LABEL_115;
      }

      v67 = &v14[16 * v44 + 32];
      v69 = *v67;
      v68 = *(v67 + 1);
      v55 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v55)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v65, v70))
      {
        goto LABEL_119;
      }

      if (v65 + v70 >= v47)
      {
        if (v47 < v70)
        {
          v44 = v42 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v71 = &v14[16 * v42];
    v73 = *v71;
    v72 = *(v71 + 1);
    v55 = __OFSUB__(v72, v73);
    v65 = v72 - v73;
    v66 = v55;
LABEL_64:
    if (v66)
    {
      goto LABEL_114;
    }

    v74 = &v14[16 * v44];
    v76 = *(v74 + 4);
    v75 = *(v74 + 5);
    v55 = __OFSUB__(v75, v76);
    v77 = v75 - v76;
    if (v55)
    {
      goto LABEL_117;
    }

    if (v77 < v65)
    {
      goto LABEL_3;
    }

LABEL_71:
    v82 = v44 - 1;
    if (v44 - 1 >= v42)
    {
      break;
    }

    v83 = *a3;
    if (!*a3)
    {
      goto LABEL_129;
    }

    v84 = v14;
    v85 = *&v14[16 * v82 + 32];
    v121 = v44;
    v86 = *&v14[16 * v44 + 32];
    v87 = *&v14[16 * v44 + 40];
    v14 = (v83 + 8 * v85);
    v88 = (v83 + 8 * v86);
    v89 = (v83 + 8 * v87);
    v90 = v123;
    swift_unknownObjectRetain();
    sub_22F3CC38C(v14, v88, v89, __dst, v90, v124);
    if (v7)
    {
      swift_unknownObjectRelease_n();

      return;
    }

    if (v87 < v85)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_22F3F5F98(v84);
    }

    if (v82 >= *(v84 + 2))
    {
      goto LABEL_109;
    }

    v91 = &v84[16 * v82];
    *(v91 + 4) = v85;
    *(v91 + 5) = v87;
    v127 = v84;
    sub_22F3F5F0C(v121);
    v14 = v127;
    v42 = *(v127 + 2);
    if (v42 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  v14 = sub_22F3F5F98(v14);
LABEL_93:
  v127 = v14;
  v105 = *(v14 + 2);
  if (v105 < 2)
  {
LABEL_101:

    swift_unknownObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v106 = *a3;
      if (!*a3)
      {
        break;
      }

      v107 = *&v14[16 * v105];
      v108 = v14;
      v123 = (v105 - 1);
      v109 = *&v14[16 * v105 + 24];
      v110 = (v106 + 8 * v107);
      v14 = (v106 + 8 * *&v14[16 * v105 + 16]);
      v111 = (v106 + 8 * v109);
      v22 = v121;
      swift_unknownObjectRetain();
      sub_22F3CC38C(v110, v14, v111, __dst, v22, v124);
      if (v7)
      {

        swift_unknownObjectRelease_n();

        goto LABEL_105;
      }

      if (v109 < v107)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_22F3F5F98(v108);
      }

      if (v105 - 2 >= *(v108 + 2))
      {
        goto LABEL_121;
      }

      v112 = &v108[16 * v105];
      *v112 = v107;
      *(v112 + 1) = v109;
      v127 = v108;
      sub_22F3F5F0C(v123);
      v14 = v127;
      v105 = *(v127 + 2);
      if (v105 <= 1)
      {
        goto LABEL_101;
      }
    }

LABEL_131:
    swift_unknownObjectRelease();

    __break(1u);
LABEL_132:
    swift_unknownObjectRelease_n();

    __break(1u);
LABEL_133:
    swift_unknownObjectRelease_n();

    __break(1u);
LABEL_134:
    swift_unknownObjectRelease_n();

    __break(1u);
  }
}

void sub_22F3CECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v9 = *a4;
    v10 = *a4 + 8 * a3 - 8;
    v11 = a1 - a3;
LABEL_4:
    v21 = v10;
    v22 = a3;
    v12 = *(v9 + 8 * a3);
    v20 = v11;
    while (1)
    {
      v24 = v12;
      v23 = *v10;
      v13 = v23;
      v14 = v12;
      v15 = v13;
      v16 = sub_22F3C669C(&v24, &v23, a5, a6);

      if (v6)
      {
        break;
      }

      if (v16)
      {
        if (!v9)
        {
          __break(1u);
          return;
        }

        v17 = *v10;
        v12 = *(v10 + 8);
        *v10 = v12;
        *(v10 + 8) = v17;
        v10 -= 8;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      a3 = v22 + 1;
      v10 = v21 + 8;
      v11 = v20 - 1;
      if (v22 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_22F3CEDEC(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = a2;
  swift_unknownObjectRetain_n();
  v7 = v6;
  v8 = sub_22F742000();
  if (v8 < v5)
  {
    if (v5 >= -1)
    {
      v9 = v8;
      v10 = v5 / 2;
      if (v5 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PlaceZeroKeyword();
        v11 = sub_22F741200();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
      }

      v13[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v13[1] = v10;
      v12 = v7;
      swift_unknownObjectRetain();
      sub_22F3CE448(v13, v14, a1, v9, v12, a3);
      swift_unknownObjectRelease();

      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_unknownObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v7 = v7;
    swift_unknownObjectRetain();
    sub_22F3CECEC(0, v5, 1, a1, v7, a3);
    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease_n();
  }
}

void sub_22F3CEF8C(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a2;
  swift_unknownObjectRetain_n();
  v7 = v6;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    v5 = sub_22F2F45E0(v5);
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10[0] = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  v10[1] = v8;
  v9 = v7;
  swift_unknownObjectRetain();
  sub_22F3CEDEC(v10, v9, a3);
  swift_unknownObjectRelease();

  *a1 = v5;
  swift_unknownObjectRelease_n();
}

id sub_22F3CF06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CCAB00]) init];
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph] = a1;
  v10 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper] = v10;
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary] = a2;
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_searchComputationCache] = a3;
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_options] = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for PlaceZeroKeywordGenerator();
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_22F3CF1D8()
{
  result = qword_27DAB4098;
  if (!qword_27DAB4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4098);
  }

  return result;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3CF288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40C8, &qword_22F78A590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22F3CF320(uint64_t a1, _BYTE *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = [v5 addIdentifier_];
  v8 = *v6 + 1;
  if (__OFADD__(*v6, 1))
  {
    __break(1u);
  }

  else
  {
    *v6 = v8;
    if (v8 >= 50)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t sub_22F3CF394(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F3CF3FC()
{
  result = qword_27DAB41A8;
  if (!qword_27DAB41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41A8);
  }

  return result;
}

PhotosGraph::GraphEntityType_optional __swiftcall GraphEntityType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ScoredGraphEntity.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ScoredGraphEntity.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ScoredGraphEntity.localeIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_22F3CF638()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x696669746E656469;
  v4 = 0x65726F6373;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6562616CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F3CF6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F3D04CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F3CF6F4(uint64_t a1)
{
  v2 = sub_22F3CFFFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3CF730(uint64_t a1)
{
  v2 = sub_22F3CFFFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScoredGraphEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB41B0, &qword_22F78A6E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v16[5] = *(v1 + 2);
  v16[6] = v10;
  v11 = *(v1 + 3);
  v16[3] = *(v1 + 4);
  v16[4] = v11;
  v12 = *(v1 + 5);
  v13 = *(v1 + 6);
  v16[1] = *(v1 + 7);
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3CFFFC();
  sub_22F742210();
  v22 = v9;
  v21 = 0;
  sub_22F3D0050();
  sub_22F741FE0();
  if (!v2)
  {
    v20 = 1;
    sub_22F741F80();
    v19 = 2;
    sub_22F741F20();
    v18 = 3;
    sub_22F741FA0();
    v17 = 4;
    sub_22F741F20();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ScoredGraphEntity.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  MEMORY[0x231901D30](*v0);
  sub_22F740D60();
  sub_22F742190();
  if (v4)
  {
    sub_22F740D60();
  }

  v8 = 0.0;
  if (v5 != 0.0)
  {
    v8 = v5;
  }

  MEMORY[0x231901D70](*&v8);
  if (!v7)
  {
    return sub_22F742190();
  }

  sub_22F742190();

  return sub_22F740D60();
}

uint64_t ScoredGraphEntity.hashValue.getter()
{
  sub_22F742170();
  ScoredGraphEntity.hash(into:)();
  return sub_22F7421D0();
}

uint64_t ScoredGraphEntity.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB41C8, &qword_22F78A6E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3CFFFC();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v31) = 0;
  sub_22F3D00A4();
  sub_22F741F10();
  v11 = v35[0];
  v35[0] = 1;
  v12 = sub_22F741EB0();
  v14 = v13;
  v30 = v11;
  v29 = v12;
  v35[0] = 2;
  v27 = sub_22F741E50();
  v28 = v15;
  v35[0] = 3;
  sub_22F741ED0();
  v17 = v16;
  v43 = 4;
  v18 = sub_22F741E50();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  LOBYTE(v31) = v30;
  v22 = v28;
  v21 = v29;
  *(&v31 + 1) = v29;
  *&v32 = v14;
  v23 = v27;
  *(&v32 + 1) = v27;
  *&v33 = v28;
  *(&v33 + 1) = v17;
  *&v34 = v18;
  *(&v34 + 1) = v20;
  v24 = v32;
  *a2 = v31;
  a2[1] = v24;
  v25 = v34;
  a2[2] = v33;
  a2[3] = v25;
  sub_22F3229A4(&v31, v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35[0] = v30;
  v36 = v21;
  v37 = v14;
  v38 = v23;
  v39 = v22;
  v40 = v17;
  v41 = v18;
  v42 = v20;
  return sub_22F322A00(v35);
}

uint64_t sub_22F3CFE08()
{
  sub_22F742170();
  ScoredGraphEntity.hash(into:)();
  return sub_22F7421D0();
}

uint64_t sub_22F3CFE4C()
{
  sub_22F742170();
  ScoredGraphEntity.hash(into:)();
  return sub_22F7421D0();
}

BOOL _s11PhotosGraph06ScoredB6EntityV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v8 = *(a2 + 3);
  v7 = *(a2 + 4);
  v9 = *(a2 + 5);
  v11 = *(a2 + 6);
  v10 = *(a2 + 7);
  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    if (v2 == v8 && v3 == v7)
    {
      if (v4 != v9)
      {
        return 0;
      }

      goto LABEL_16;
    }

    v13 = sub_22F742040();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    if (v4 != v9)
    {
      return result;
    }

LABEL_16:
    if (v6)
    {
      return v10 && (v5 == v11 && v6 == v10 || (sub_22F742040() & 1) != 0);
    }

    return !v10;
  }

  result = 0;
  if (!v7)
  {
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_22F3CFFFC()
{
  result = qword_27DAB41B8;
  if (!qword_27DAB41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41B8);
  }

  return result;
}

unint64_t sub_22F3D0050()
{
  result = qword_27DAB41C0;
  if (!qword_27DAB41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41C0);
  }

  return result;
}

unint64_t sub_22F3D00A4()
{
  result = qword_27DAB41D0;
  if (!qword_27DAB41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41D0);
  }

  return result;
}

unint64_t sub_22F3D00FC()
{
  result = qword_27DAB41D8;
  if (!qword_27DAB41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41D8);
  }

  return result;
}

unint64_t sub_22F3D0154()
{
  result = qword_27DAB41E0;
  if (!qword_27DAB41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphEntityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F3D030C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F3D0354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22F3D03C8()
{
  result = qword_27DAB41E8;
  if (!qword_27DAB41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41E8);
  }

  return result;
}

unint64_t sub_22F3D0420()
{
  result = qword_27DAB41F0;
  if (!qword_27DAB41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41F0);
  }

  return result;
}

unint64_t sub_22F3D0478()
{
  result = qword_27DAB41F8;
  if (!qword_27DAB41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41F8);
  }

  return result;
}

uint64_t sub_22F3D04CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F791B00 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_22F3D0684()
{
  result = qword_27DAB4200;
  if (!qword_27DAB4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4200);
  }

  return result;
}

_BYTE *sub_22F3D0714@<X0>(double **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_22F3D26E4(*a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_22F3D0764(double *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v183 - v13;
  v15 = *(a2 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
  result = [v15 location];
  if (result)
  {
    v17 = result;
    v187 = v7;
    v18 = sub_22F16EEC4();
    v19 = *(v18 + 2);
    v188 = a1;
    if (v19)
    {
      v20 = 0;
      v21 = a1[12];
      v22 = 1;
      while (2)
      {
        v23 = &v18[16 * v20 + 32];
        v24 = v20;
        while (1)
        {
          if (v24 >= v19)
          {
            __break(1u);
LABEL_227:
            __break(1u);
            goto LABEL_228;
          }

          v20 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_227;
          }

          if (*v23 < v21)
          {
            break;
          }

          ++v24;
          v23 += 2;
          if (v20 == v19)
          {
            v25 = v22;
            v26 = v22;
            goto LABEL_13;
          }
        }

        v25 = 0;
        v26 = 0;
        v22 = 0;
        if (v20 != v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v25 = 0;
      v26 = 1;
    }

LABEL_13:

    v27 = sub_22F16EB3C();
    v28 = *(v27 + 2);
    if (v28)
    {
      v29 = 0;
LABEL_15:
      v30 = 16 * v29 + 32;
      while (v29 < v28)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_229;
        }

        if (*&v27[v30] < v188[12])
        {
          v26 = 0;
          ++v29;
          if (v31 != v28)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }

        ++v29;
        v30 += 16;
        if (v31 == v28)
        {

          if ((v26 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }
      }

LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:

      v60 = *(a3 + 24);
      if (!v60)
      {
        goto LABEL_244;
      }

      goto LABEL_65;
    }

    if (v25)
    {
LABEL_24:

      return 0;
    }

LABEL_26:
    v32 = sub_22F16EEC4();
    v33 = *(v32 + 2);
    if (v33)
    {
      v34 = 0;
      v35 = 1;
      while (2)
      {
        v36 = &v32[16 * v34 + 32];
        v37 = v34;
        while (1)
        {
          if (v37 >= v33)
          {
            __break(1u);
LABEL_239:
            __break(1u);
            goto LABEL_240;
          }

          v34 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_239;
          }

          if (*v36 < v188[12])
          {
            break;
          }

          ++v37;
          v36 += 2;
          if (v34 == v33)
          {
            v38 = v35;
            v39 = v35;
            goto LABEL_37;
          }
        }

        v38 = 0;
        v39 = 0;
        v35 = 0;
        if (v34 != v33)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v38 = 0;
      v39 = 1;
    }

LABEL_37:
    v186 = v17;

    v40 = sub_22F16EB3C();
    v41 = *(v40 + 2);
    if (v41)
    {
      v42 = 0;
LABEL_39:
      v43 = 16 * v42 + 32;
      while (v42 < v41)
      {
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_241;
        }

        if (*&v40[v43] < v188[12])
        {
          v39 = 0;
          ++v42;
          if (v44 != v41)
          {
            goto LABEL_39;
          }

          goto LABEL_50;
        }

        ++v42;
        v43 += 16;
        if (v44 == v41)
        {

          if ((v39 & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_64;
        }
      }

LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
      goto LABEL_242;
    }

    if ((v38 & 1) == 0)
    {
LABEL_50:
      if (*(a3 + 24))
      {
        v45 = *(a3 + 24);

        if (sub_22F16DA54())
        {
          sub_22F16CC5C(v14);
          sub_22F16CC5C(v10);
          sub_22F73F590();
          v47 = v46;
          v48 = *(v187 + 8);
          v48(v10, v6);
          v48(v14, v6);

          if (fabs(v47) <= v188[6])
          {
            v49 = v188[4];
            sub_22F16D08C();
            sub_22F16CC5C(v10);
            sub_22F73F590();
            v51 = v50;
            v48(v10, v6);
            v48(v14, v6);
            if (v49 <= fabs(v51))
            {
              v189 = 0;
              v190 = 0xE000000000000000;
              sub_22F741B00();
              MEMORY[0x231900B10](0xD000000000000053, 0x800000022F79E380);
              sub_22F7413B0();
              MEMORY[0x231900B10](540884512, 0xE400000000000000);
              sub_22F7413B0();
              v166 = v189;
              v165 = v190;
              if (qword_27DAAFE08 != -1)
              {
                swift_once();
              }

              if (byte_27DAD0FC8 != 1)
              {

                return 1;
              }

              if (qword_27DAAFD40 != -1)
              {
                swift_once();
              }

              v167 = sub_22F740B90();
              __swift_project_value_buffer(v167, qword_27DAD0E10);

              v168 = sub_22F740B70();
              v169 = sub_22F7415F0();

              if (os_log_type_enabled(v168, v169))
              {
                v170 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v189 = v171;
                *v170 = 136315138;
                *(v170 + 4) = sub_22F145F20(v166, v165, &v189);
                _os_log_impl(&dword_22F0FC000, v168, v169, "%s", v170, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v171);
                MEMORY[0x2319033A0](v171, -1, -1);
                MEMORY[0x2319033A0](v170, -1, -1);
              }

              if (qword_27DAAFD40 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v167, qword_27DAD0E10);
              v83 = sub_22F740B70();
              v172 = sub_22F7415F0();
              if (os_log_type_enabled(v83, v172))
              {
                v173 = swift_slowAlloc();
                v174 = swift_slowAlloc();
                v189 = v174;
                *v173 = 136315138;
                *(v173 + 4) = sub_22F145F20(0xD0000000000000B1, 0x800000022F79E810, &v189);
                _os_log_impl(&dword_22F0FC000, v83, v172, "%s", v173, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v174);
                MEMORY[0x2319033A0](v174, -1, -1);
                MEMORY[0x2319033A0](v173, -1, -1);
              }

              goto LABEL_224;
            }

            v189 = 0;
            v190 = 0xE000000000000000;
            sub_22F741B00();
            MEMORY[0x231900B10](0xD000000000000057, 0x800000022F79DFC0);
            sub_22F7413B0();
            MEMORY[0x231900B10](540884512, 0xE400000000000000);
            sub_22F7413B0();
            v52 = v189;
            v53 = v190;
            if (qword_27DAAFE08 != -1)
            {
              swift_once();
            }

            if (byte_27DAD0FC8 == 1)
            {
              v185 = v52;
              if (qword_27DAAFD40 != -1)
              {
                swift_once();
              }

              v54 = sub_22F740B90();
              __swift_project_value_buffer(v54, qword_27DAD0E10);

              v55 = sub_22F740B70();
              v56 = sub_22F7415F0();

              if (os_log_type_enabled(v55, v56))
              {
                v57 = swift_slowAlloc();
                LODWORD(v184) = v56;
                v58 = v57;
                v59 = swift_slowAlloc();
                v189 = v59;
                *v58 = 136315138;
                *(v58 + 4) = sub_22F145F20(v185, v53, &v189);
                _os_log_impl(&dword_22F0FC000, v55, v184, "%s", v58, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v59);
                MEMORY[0x2319033A0](v59, -1, -1);
                MEMORY[0x2319033A0](v58, -1, -1);
              }

              v60 = *(a3 + 24);
              if (!v60)
              {
                goto LABEL_244;
              }

              goto LABEL_65;
            }

            goto LABEL_230;
          }
        }

        else
        {
        }
      }
    }

LABEL_64:
    v60 = *(a3 + 24);
    if (!v60)
    {
LABEL_244:

      return 0;
    }

LABEL_65:

    v61 = sub_22F16EB3C();
    v62 = *(v61 + 2);
    v63 = v188;
    if (v62)
    {
      v64 = (v61 + 40);
      while (1)
      {
        v65 = *v64;
        if (*v64 <= v188[10])
        {
          v65 = v188[10];
        }

        if (v65 >= v188[11])
        {
          v65 = v188[11];
        }

        if (*(v64 - 1) < v65)
        {
          break;
        }

        v64 += 2;
        if (!--v62)
        {
          goto LABEL_73;
        }
      }

      v72 = 1;
    }

    else
    {
LABEL_73:

      v66 = sub_22F16EEC4();
      v67 = *(v66 + 2);
      if (v67)
      {
        v68 = v67 - 1;
        v69 = (v66 + 40);
        do
        {
          v71 = *(v69 - 1);
          v70 = *v69;
          if (*v69 <= *(v63 + 80))
          {
            v70 = *(v63 + 80);
          }

          if (v70 >= *(v63 + 88))
          {
            v70 = *(v63 + 88);
          }

          v72 = v71 < v70;
          v73 = v71 < v70 || v68-- == 0;
          v69 += 2;
        }

        while (!v73);
      }

      else
      {
        v72 = 0;
      }
    }

    v74 = sub_22F16EB3C();
    v75 = *(v74 + 2);
    if (v75)
    {
      v76 = (v74 + 40);
      while (1)
      {
        v77 = *v76;
        if (*v76 <= *(v63 + 80))
        {
          v77 = *(v63 + 80);
        }

        if (v77 >= *(v63 + 88))
        {
          v77 = *(v63 + 88);
        }

        if (*(v76 - 1) < v77)
        {
          break;
        }

        v76 += 2;
        if (!--v75)
        {
          goto LABEL_95;
        }
      }
    }

    else
    {
LABEL_95:

      v78 = sub_22F16EEC4();
      v79 = *(v78 + 2);
      if (!v79)
      {
LABEL_103:

        if (v72)
        {
          if (qword_27DAAFE08 != -1)
          {
            swift_once();
          }

          if (byte_27DAD0FC8 == 1)
          {
            if (qword_27DAAFD40 != -1)
            {
              swift_once();
            }

            v82 = sub_22F740B90();
            __swift_project_value_buffer(v82, qword_27DAD0E10);
            v83 = sub_22F740B70();
            v84 = sub_22F7415F0();
            if (!os_log_type_enabled(v83, v84))
            {
              goto LABEL_223;
            }

            v85 = "d at the same location: ";
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v189 = v87;
            *v86 = 136315138;
            v88 = 0xD000000000000072;
LABEL_222:
            *(v86 + 4) = sub_22F145F20(v88, v85 | 0x8000000000000000, &v189);
            _os_log_impl(&dword_22F0FC000, v83, v84, "%s", v86, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v87);
            MEMORY[0x2319033A0](v87, -1, -1);
            MEMORY[0x2319033A0](v86, -1, -1);
LABEL_223:

LABEL_224:

            return 1;
          }

LABEL_225:

          return 1;
        }

        goto LABEL_117;
      }

      v80 = (v78 + 40);
      while (1)
      {
        v81 = *v80;
        if (*v80 <= *(v63 + 80))
        {
          v81 = *(v63 + 80);
        }

        if (v81 >= *(v63 + 88))
        {
          v81 = *(v63 + 88);
        }

        if (*(v80 - 1) < v81)
        {
          break;
        }

        v80 += 2;
        if (!--v79)
        {
          goto LABEL_103;
        }
      }
    }

    if (v72)
    {
      v89 = [v15 location];
      v90 = [*(v60 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset) location];
      v91 = v90;
      if (v89)
      {
        if (v90)
        {
          sub_22F3D4054();
          v92 = sub_22F741810();

          if ((v92 & 1) == 0)
          {
LABEL_215:
            if (qword_27DAAFE08 != -1)
            {
              swift_once();
            }

            if (byte_27DAD0FC8 == 1)
            {
              if (qword_27DAAFD40 != -1)
              {
                swift_once();
              }

              v175 = sub_22F740B90();
              __swift_project_value_buffer(v175, qword_27DAD0E10);
              v83 = sub_22F740B70();
              v84 = sub_22F7415F0();
              if (!os_log_type_enabled(v83, v84))
              {
                goto LABEL_223;
              }

              v85 = " frequent location";
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v189 = v87;
              *v86 = 136315138;
              v88 = 0xD000000000000081;
              goto LABEL_222;
            }

            goto LABEL_225;
          }

          goto LABEL_117;
        }

        v91 = v89;
LABEL_214:

        goto LABEL_215;
      }

      if (v90)
      {
        goto LABEL_214;
      }
    }

LABEL_117:
    [v186 horizontalAccuracy];
    v94 = v93;
    sub_22F16D388();
    v96 = v95 - v94;
    if (v96 < 0.0)
    {
      v97 = 0.0;
    }

    else
    {
      v97 = v96;
    }

    sub_22F16CC5C(v14);
    sub_22F16D08C();
    sub_22F73F590();
    v99 = v98;
    v100 = v187 + 8;
    v101 = *(v187 + 8);
    v101(v10, v6);
    v187 = v100;
    v185 = v101;
    v101(v14, v6);
    v189 = 0;
    v190 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD00000000000004CLL, 0x800000022F79E480);
    sub_22F16D388();
    sub_22F7413B0();
    MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F79E4D0);
    sub_22F7413B0();
    MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79E4F0);
    sub_22F7413B0();
    MEMORY[0x231900B10](46, 0xE100000000000000);
    v102 = v189;
    v103 = v190;
    if (qword_27DAAFE08 != -1)
    {
      goto LABEL_251;
    }

    while (1)
    {
      v104 = byte_27DAD0FC8;
      if (byte_27DAD0FC8 == 1)
      {
        v184 = v102;
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v105 = sub_22F740B90();
        __swift_project_value_buffer(v105, qword_27DAD0E10);

        v106 = sub_22F740B70();
        v107 = sub_22F7415F0();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v183 = v60;
          v110 = v109;
          v189 = v109;
          *v108 = 136315138;
          *(v108 + 4) = sub_22F145F20(v184, v103, &v189);
          _os_log_impl(&dword_22F0FC000, v106, v107, "%s", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v110);
          v111 = v110;
          v60 = v183;
          MEMORY[0x2319033A0](v111, -1, -1);
          v112 = v108;
          v63 = v188;
          MEMORY[0x2319033A0](v112, -1, -1);
        }
      }

      else
      {
      }

      v113 = *(v63 + 72);
      v102 = a2;
      v114 = sub_22F16EEC4();
      v115 = *(v114 + 2);
      v103 = v104;
      if (v115)
      {
        v116 = 0;
        v117 = *(v63 + 96);
        v118 = 1;
        while (2)
        {
          v119 = &v114[16 * v116 + 32];
          v120 = v116;
          while (1)
          {
            if (v120 >= v115)
            {
              __break(1u);
LABEL_248:
              __break(1u);
              goto LABEL_249;
            }

            v116 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              goto LABEL_248;
            }

            if (*v119 < v117)
            {
              break;
            }

            ++v120;
            v119 += 2;
            if (v116 == v115)
            {
              v121 = v118;
              v63 = v118;
              goto LABEL_139;
            }
          }

          v121 = 0;
          v63 = 0;
          v118 = 0;
          if (v116 != v115)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v121 = 0;
        v63 = 1;
      }

LABEL_139:

      v102 = a2;
      v122 = sub_22F16EB3C();
      v123 = *(v122 + 2);
      if (!v123)
      {
        break;
      }

      v124 = 0;
LABEL_141:
      v125 = 16 * v124 + 32;
      while (v124 < v123)
      {
        v126 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          goto LABEL_250;
        }

        if (*&v122[v125] < v188[12])
        {
          v63 = 0;
          ++v124;
          if (v126 != v123)
          {
            goto LABEL_141;
          }

          if (v97 <= v113)
          {
            v127 = 7;
            goto LABEL_155;
          }

          goto LABEL_154;
        }

        ++v124;
        v125 += 16;
        if (v126 == v123)
        {

          v128 = v63 | (v97 <= v113);
          v129 = (v63 & 1) == 0;
          goto LABEL_151;
        }
      }

LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      swift_once();
    }

    v128 = v121 | (v97 <= v113);
    v129 = (v121 & 1) == 0;
LABEL_151:
    v127 = 7;
    if (!v129)
    {
      v127 = 6;
    }

    if ((v128 & 1) == 0)
    {
LABEL_154:
      v127 = 4;
    }

LABEL_155:
    v130 = v188[v127];
    sub_22F16D08C();
    sub_22F16CC5C(v10);
    sub_22F73F590();
    v132 = v131;
    v133 = v185;
    v185(v10, v6);
    v133(v14, v6);
    if (v130 <= fabs(v132))
    {
      v189 = 0;
      v190 = 0xE000000000000000;
      sub_22F741B00();
      MEMORY[0x231900B10](0xD000000000000053, 0x800000022F79E380);
      sub_22F7413B0();
      MEMORY[0x231900B10](540884512, 0xE400000000000000);
      sub_22F7413B0();
      v141 = v190;
      if (v103)
      {
        v142 = v189;
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v143 = sub_22F740B90();
        __swift_project_value_buffer(v143, qword_27DAD0E10);

        v144 = sub_22F740B70();
        v145 = sub_22F7415F0();

        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v189 = v147;
          *v146 = 136315138;
          *(v146 + 4) = sub_22F145F20(v142, v141, &v189);
          _os_log_impl(&dword_22F0FC000, v144, v145, "%s", v146, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v147);
          MEMORY[0x2319033A0](v147, -1, -1);
          MEMORY[0x2319033A0](v146, -1, -1);
        }
      }

      else
      {
      }

      v189 = 0;
      v190 = 0xE000000000000000;
      sub_22F741B00();
      MEMORY[0x231900B10](0xD000000000000088, 0x800000022F79E670);
      if (v97 > v113)
      {
        v157 = 0x65736C6166;
      }

      else
      {
        v157 = 1702195828;
      }

      if (v97 > v113)
      {
        v158 = 0xE500000000000000;
      }

      else
      {
        v158 = 0xE400000000000000;
      }

      MEMORY[0x231900B10](v157, v158);

      MEMORY[0x231900B10](0x6E6174736964202CLL, 0xEC000000203A6563);
      sub_22F7413B0();
      MEMORY[0x231900B10](0x203A656D6974202CLL, 0xE800000000000000);
      sub_22F7413B0();
      v159 = v190;
      if ((v103 & 1) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_189;
    }

    v189 = 0;
    v190 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000057, 0x800000022F79DFC0);
    sub_22F7413B0();
    MEMORY[0x231900B10](540884512, 0xE400000000000000);
    sub_22F7413B0();
    v134 = v190;
    if (v104)
    {
      v135 = v189;
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v136 = sub_22F740B90();
      __swift_project_value_buffer(v136, qword_27DAD0E10);

      v137 = sub_22F740B70();
      v138 = sub_22F7415F0();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v189 = v140;
        *v139 = 136315138;
        *(v139 + 4) = sub_22F145F20(v135, v134, &v189);
        _os_log_impl(&dword_22F0FC000, v137, v138, "%s", v139, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v140);
        MEMORY[0x2319033A0](v140, -1, -1);
        MEMORY[0x2319033A0](v139, -1, -1);
      }
    }

    else
    {
    }

    v189 = 0;
    v190 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000075, 0x800000022F79E510);
    if (v97 > v113)
    {
      v148 = 0x65736C6166;
    }

    else
    {
      v148 = 1702195828;
    }

    if (v97 > v113)
    {
      v149 = 0xE500000000000000;
    }

    else
    {
      v149 = 0xE400000000000000;
    }

    MEMORY[0x231900B10](v148, v149);

    MEMORY[0x231900B10](0x6E6174736964202CLL, 0xEC000000203A6563);
    sub_22F7413B0();
    MEMORY[0x231900B10](0x203A656D6974202CLL, 0xE800000000000000);
    sub_22F7413B0();
    v150 = v190;
    if (v104)
    {
      v151 = v189;
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v152 = sub_22F740B90();
      __swift_project_value_buffer(v152, qword_27DAD0E10);

      v153 = sub_22F740B70();
      v154 = sub_22F7415F0();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v189 = v156;
        *v155 = 136315138;
        *(v155 + 4) = sub_22F145F20(v151, v150, &v189);
        _os_log_impl(&dword_22F0FC000, v153, v154, "%s", v155, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v156);
        MEMORY[0x2319033A0](v156, -1, -1);
        MEMORY[0x2319033A0](v155, -1, -1);
      }
    }

    else
    {
    }

    if (v97 <= v113 || v97 <= 0.0 || v99 <= 0.0)
    {
      goto LABEL_243;
    }

    if (v188[8] < v97 / v99 * 3.6)
    {
      v189 = 0;
      v190 = 0xE000000000000000;
      sub_22F741B00();
      MEMORY[0x231900B10](0xD00000000000007ELL, 0x800000022F79E5F0);
      sub_22F7413B0();
      v159 = v190;
      if (!v103)
      {
LABEL_200:

        goto LABEL_225;
      }

LABEL_189:
      v160 = v189;
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v161 = sub_22F740B90();
      __swift_project_value_buffer(v161, qword_27DAD0E10);

      v83 = sub_22F740B70();
      v162 = sub_22F7415F0();

      if (os_log_type_enabled(v83, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v189 = v164;
        *v163 = 136315138;
        *(v163 + 4) = sub_22F145F20(v160, v159, &v189);
        _os_log_impl(&dword_22F0FC000, v83, v162, "%s", v163, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v164);
        MEMORY[0x2319033A0](v164, -1, -1);
        MEMORY[0x2319033A0](v163, -1, -1);
      }

      goto LABEL_223;
    }

    v189 = 0;
    v190 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000059, 0x800000022F79E590);
    sub_22F7413B0();
    v176 = v190;
    if (v103)
    {
      v177 = v189;
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v178 = sub_22F740B90();
      __swift_project_value_buffer(v178, qword_27DAD0E10);

      v179 = sub_22F740B70();
      v180 = sub_22F7415F0();

      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v189 = v182;
        *v181 = 136315138;
        *(v181 + 4) = sub_22F145F20(v177, v176, &v189);
        _os_log_impl(&dword_22F0FC000, v179, v180, "%s", v181, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v182);
        MEMORY[0x2319033A0](v182, -1, -1);
        MEMORY[0x2319033A0](v181, -1, -1);
      }

      return 0;
    }

LABEL_242:

LABEL_243:

    goto LABEL_244;
  }

  return result;
}

uint64_t sub_22F3D2324(uint64_t a1)
{
  sub_22F16E154();
  v2 = PFCanAccessLocationWithAuthorizationStatus();
  v3 = sub_22F16E7C4();
  v4 = v3;
  v5 = 0;
  if (((v2 ^ 1) & 1) == 0 && v3)
  {
    v6 = sub_22F16EEC4();
    v7 = *(v6 + 2);
    if (v7)
    {
      v8 = v7 - 1;
      v9 = (v6 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        if (*v9 <= *(a1 + 80))
        {
          v10 = *(a1 + 80);
        }

        if (v10 >= *(a1 + 88))
        {
          v10 = *(a1 + 88);
        }

        v5 = v11 < v10;
        v12 = v11 < v10 || v8-- == 0;
        v9 += 2;
      }

      while (!v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v13 = v5 & sub_22F16D74C();
  v14 = sub_22F16DD60();
  v15 = v14;
  v16 = v13 | !v14;
  if ((v16 | v2 ^ 1))
  {
    v17 = v13 | v16 ^ 1;
  }

  else
  {
    v18 = *(sub_22F16EEC4() + 2);

    if (v18)
    {
      v17 = (sub_22F16D74C() & 1) != 0 || v4 && !v5;
    }

    else
    {
      v17 = 1;
    }
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000003ALL, 0x800000022F79E3E0);
  v35 = v17;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v17)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v19, v20);

  MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F79E420);
  if (v2)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v2)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v21, v22);

  MEMORY[0x231900B10](0xD00000000000001ELL, 0x800000022F79E440);
  if (v5)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v5)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v23, v24);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F79E460);
  if (v15)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v15)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v25, v26);

  v28 = v36;
  v27 = v37;
  if (qword_27DAAFE08 != -1)
  {
    swift_once();
  }

  if (byte_27DAD0FC8 == 1)
  {
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v29 = sub_22F740B90();
    __swift_project_value_buffer(v29, qword_27DAD0E10);

    v30 = sub_22F740B70();
    v31 = sub_22F7415F0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_22F145F20(v28, v27, &v36);
      _os_log_impl(&dword_22F0FC000, v30, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x2319033A0](v33, -1, -1);
      MEMORY[0x2319033A0](v32, -1, -1);
    }
  }

  else
  {
  }

  return v35 & 1;
}