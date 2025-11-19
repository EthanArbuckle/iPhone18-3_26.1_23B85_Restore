uint64_t sub_261BD06C0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD18, &qword_261D083E0);
  swift_getKeyPath();
  result = sub_261CFD204();
  a1[1] = result;
  return result;
}

uint64_t sub_261BD0738(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BD0760, 0, 0);
}

uint64_t sub_261BD0760()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_261BADD64;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_261C60018("EarlyAlertEntityQuery.entitiesForIdentifiers", 44, 2, v5, v6, v7);
}

uint64_t sub_261BD0844(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BD086C, 0, 0);
}

uint64_t sub_261BD086C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_261BD093C;
  v4 = v0[3];
  v5 = v0[4];

  return (sub_261C604A8)("EarlyAlertEntityQuery.suggestedEntities", 39, 2, v4, v5);
}

uint64_t sub_261BD093C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *v2;

  if (v1)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_261BD0ACC, 0, 0);
  }
}

uint64_t sub_261BD0AF0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261BD1D54();
  *v6 = v2;
  v6[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

void *sub_261BD0BA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB200, &unk_261D085F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_261BD0C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_261BD1E80();
  sub_261CFD104();
  result = sub_261CFFBE4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_261BD11B0();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_261D00364();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_261BD11B0()
{
  v0 = sub_261CFFBF4();
  v4 = sub_261BD1230(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_261BD1230(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_261CFFB04();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_261D00164();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_261BD0BA4(v9, 0);
  v12 = sub_261BD1388(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_261CFD104();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_261CFFB04();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_261D00364();
LABEL_4:

  return sub_261CFFB04();
}

unint64_t sub_261BD1388(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_261BD15A8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_261CFFBA4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_261D00364();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_261BD15A8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_261CFFB74();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_261BD15A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_261CFFBB4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26671C250](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_261BD1624(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_261D00364();
  }

  result = sub_261BD16F0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_261BD16F0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_261BD15A8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_261CFFB94();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_261BD15A8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_261BD15A8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_261CFFB94();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_261BD1B60()
{
  result = qword_27FEDBD20;
  if (!qword_27FEDBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD20);
  }

  return result;
}

unint64_t sub_261BD1BB8()
{
  result = qword_27FEDBD28;
  if (!qword_27FEDBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD28);
  }

  return result;
}

unint64_t sub_261BD1C14()
{
  result = qword_27FEDBD30;
  if (!qword_27FEDBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD30);
  }

  return result;
}

unint64_t sub_261BD1C68()
{
  result = qword_280D22120;
  if (!qword_280D22120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22120);
  }

  return result;
}

unint64_t sub_261BD1CC0()
{
  result = qword_27FEDBD38;
  if (!qword_27FEDBD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDBD40, qword_261D08498);
    sub_261BD1C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD38);
  }

  return result;
}

unint64_t sub_261BD1D54()
{
  result = qword_27FEDBD48;
  if (!qword_27FEDBD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD48);
  }

  return result;
}

unint64_t sub_261BD1DA8()
{
  result = qword_27FEDBD50;
  if (!qword_27FEDBD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDBD58, &qword_261D085C8);
    sub_261BD1E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD50);
  }

  return result;
}

unint64_t sub_261BD1E2C()
{
  result = qword_280D21E30;
  if (!qword_280D21E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E30);
  }

  return result;
}

unint64_t sub_261BD1E80()
{
  result = qword_27FEDBD70;
  if (!qword_27FEDBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD70);
  }

  return result;
}

uint64_t sub_261BD1ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261BD1F1C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBD80);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBD80);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.perform(_:)(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3[12] = a1;
  v3[13] = v2;
  v5 = type metadata accessor for ListEntity();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v3[16] = v8;
  v3[17] = v9;
  sub_261CFFD24();
  v3[18] = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BD2114, v10, v11);
}

uint64_t sub_261BD2114()
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[13];

  v4 = *(v3 + 16);
  v70 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_261CFCBB4();
  v71 = v0[2];
  v67 = *(v71 + 16);
  if (v67)
  {
    v5 = 0;
    v6 = v0[14];
    v69 = v0[15];
    v68 = v71 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v66 = v6;
    do
    {
      if (v5 >= *(v71 + 16))
      {
        __break(1u);
      }

      v8 = v0[16];
      sub_261B0A18C(v68 + *(v69 + 72) * v5, v8);
      v9 = (v8 + *(v6 + 20));
      v10 = *(type metadata accessor for AppEntityID() + 20);
      v11 = *v9;
      v12 = v9[1];
      v13 = objc_allocWithZone(MEMORY[0x277D44700]);
      v14 = sub_261CFD814();
      v15 = sub_261CFFA54();
      v16 = [v13 initWithUUID:v14 entityName:v15];

      if (qword_27FED9A70 != -1)
      {
        swift_once();
      }

      v17 = sub_261CFF7A4();
      __swift_project_value_buffer(v17, qword_27FEDBD80);
      v18 = v16;
      v19 = sub_261CFF784();
      v20 = sub_261CFFE84();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138543362;
        *(v21 + 4) = v18;
        *v22 = v18;
        v23 = v18;
        _os_log_impl(&dword_261AE2000, v19, v20, "[DeleteListsAppIntent] Delete list with id: %{public}@", v21, 0xCu);
        sub_261BD28E8(v22);
        MEMORY[0x26671D560](v22, -1, -1);
        MEMORY[0x26671D560](v21, -1, -1);
      }

      v24 = v0[16];

      if (*(v24 + *(v6 + 84)))
      {
        v0[3] = 0;
        v25 = [v4 fetchCustomSmartListWithObjectID:v18 error:v0 + 3];
        v26 = v0[3];
        if (!v25)
        {
          goto LABEL_20;
        }

        v27 = v25;
        v28 = v26;
        v29 = [v27 accountID];
        v0[4] = 0;
        v30 = [v4 fetchAccountWithObjectID:v29 error:v0 + 4];

        v31 = v0[4];
        if (!v30)
        {
LABEL_21:
          v51 = v0[16];
          v53 = v31;

          sub_261CFD654();

          swift_willThrow();
          goto LABEL_22;
        }

        sub_261CFDE94();
        v0[6] = v30;
        v32 = v70;
        v33 = v31;
        v34 = v30;
        sub_261CFDF34();
        v35 = v0[5];
        sub_261CFDE84();
      }

      else
      {
        v0[8] = 0;
        v36 = [v4 fetchListWithObjectID:v18 error:v0 + 8];
        v26 = v0[8];
        if (!v36)
        {
LABEL_20:
          v51 = v0[16];
          v52 = v26;

          sub_261CFD654();

          swift_willThrow();
LABEL_22:

          v54 = v51;
          goto LABEL_23;
        }

        v27 = v36;
        v37 = v26;
        v38 = [v27 accountID];
        v0[9] = 0;
        v39 = [v4 fetchAccountWithObjectID:v38 error:v0 + 9];

        v31 = v0[9];
        if (!v39)
        {
          goto LABEL_21;
        }

        sub_261CFDE94();
        v0[11] = v39;
        v40 = v31;
        v34 = v39;
        v41 = v70;
        sub_261CFDF34();
        v42 = v0[10];
        if ([v27 isGroup])
        {

          v58 = v18;
          v59 = sub_261CFF784();
          v60 = sub_261CFFE64();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = 138543362;
            *(v61 + 4) = v58;
            *v62 = v58;
            v63 = v58;
            _os_log_impl(&dword_261AE2000, v59, v60, "[DeleteListsAppIntent] Attempt to delete a group with id: %{public}@", v61, 0xCu);
            sub_261BD28E8(v62);
            MEMORY[0x26671D560](v62, -1, -1);
            MEMORY[0x26671D560](v61, -1, -1);
          }

          v64 = v0[16];

          sub_261B01D70();
          swift_allocError();
          *v65 = 22;
          swift_willThrow();

          v54 = v64;
LABEL_23:
          sub_261B0A1F0(v54);
LABEL_24:
          v55 = v0[16];

          v48 = v0[1];
          v56 = *MEMORY[0x277D85DE8];
          goto LABEL_25;
        }

        sub_261CFDE64();
      }

      ++v5;
      v7 = v0[16];

      sub_261B0A1F0(v7);
      v6 = v66;
    }

    while (v67 != v5);
  }

  v0[7] = 0;
  v43 = [v70 saveSynchronouslyWithError_];
  v44 = v0[7];
  if (!v43)
  {
    v50 = v44;
    sub_261CFD654();

    swift_willThrow();
    goto LABEL_24;
  }

  v45 = v0[16];
  v46 = v0[12];
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  v46[4] = sub_261B730AC();
  __swift_allocate_boxed_opaque_existential_1(v46);
  v47 = v44;
  sub_261CFC9A4();

  v48 = v0[1];
  v49 = *MEMORY[0x277D85DE8];
LABEL_25:

  return v48();
}

uint64_t sub_261BD283C(uint64_t a1, uint64_t *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BD28E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LocationAlarmEntity.mobileSpace.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_261CFCA14();
}

void LocationAlarmEntity.placemark.setter(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1;
  sub_261CFCA14();
}

uint64_t LocationAlarmEntity.event.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCA14();
}

uint64_t LocationAlarmEntity.placemark.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCA04();
  return v3;
}

uint64_t sub_261BD2A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDBD98);
  __swift_project_value_buffer(v15, qword_27FEDBD98);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t sub_261BD2D80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v30 - v5;
  v37 = sub_261CFD674();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_261CFFA44();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFD6A4();
  v30 = v13;
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF18, &qword_261D08EA8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF20, &qword_261D08EB0);
  v43 = v15;
  v16 = *(v15 - 8);
  v39 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v34 = v18;
  *(v18 + 16) = xmmword_261D01400;
  v33 = *(v15 + 48);
  *(v18 + v17) = 0;
  v19 = v18 + v17;
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v36 = v6 + 104;
  v38 = v20;
  v20(v42);
  sub_261CFD6C4();
  v21 = *(v44 + 56);
  v44 += 56;
  v31 = v21;
  v22 = v40;
  v21(v40, 1, 1, v13);
  v23 = sub_261CFD074();
  v24 = *(*(v23 - 8) + 56);
  v25 = v41;
  v24(v41, 1, 1, v23);
  v32 = v19;
  v26 = v25;
  sub_261CFD0A4();
  v27 = (v19 + v39);
  v39 = *(v43 + 48);
  *v27 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v38(v42, v35, v37);
  sub_261CFD6C4();
  v31(v22, 1, 1, v30);
  v24(v26, 1, 1, v23);
  sub_261CFD0A4();
  v28 = sub_261C3A7A8(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDBDB0 = v28;
  return result;
}

RemindersAppIntents::LocationAlarmEntity::MobileSpace_optional __swiftcall LocationAlarmEntity.MobileSpace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

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

uint64_t LocationAlarmEntity.MobileSpace.rawValue.getter()
{
  if (*v0)
  {
    result = 7496035;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_261BD33A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7496035;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7496035;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D00614();
  }

  return v9 & 1;
}

uint64_t sub_261BD3444()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BD34C0()
{
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261BD3528()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BD35A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D00554();

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

void sub_261BD3600(uint64_t *a1@<X8>)
{
  v2 = 7496035;
  if (!*v1)
  {
    v2 = 0x746C7561666564;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261BD366C(uint64_t a1)
{
  v2 = sub_261B54038();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261BD36DC(uint64_t a1)
{
  v2 = sub_261BD5BF8();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261BD3728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDBDB8);
  __swift_project_value_buffer(v15, qword_27FEDBDB8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t sub_261BD3A30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v48 = v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v40 - v5;
  v56 = sub_261CFD674();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v56);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = sub_261CFD6A4();
  v15 = *(v57 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF08, &qword_261D08E98);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF10, &qword_261D08EA0);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v45 = 2 * v18;
  v20 = swift_allocObject();
  v47 = v20;
  *(v20 + 16) = xmmword_261D01420;
  v21 = (v20 + v19);
  v58 = v20 + v19;
  v41 = *(v17 + 48);
  v22 = v17;
  v54 = v17;
  *v21 = 0;
  sub_261CFF9B4();
  v40[1] = v12;
  sub_261CFD874();
  v55 = *MEMORY[0x277CC9110];
  v23 = *(v6 + 104);
  v42 = v6 + 104;
  v43 = v23;
  v24 = v44;
  v23(v44);
  v25 = v24;
  sub_261CFD6C4();
  v26 = *(v15 + 56);
  v52 = v15 + 56;
  v53 = v26;
  v27 = v46;
  v26(v46, 1, 1, v57);
  v50 = sub_261CFD074();
  v28 = *(v50 - 8);
  v49 = *(v28 + 56);
  v51 = v28 + 56;
  v29 = v48;
  v49(v48, 1, 1, v50);
  v30 = v58;
  v31 = v27;
  v32 = v29;
  sub_261CFD0A4();
  v41 = *(v22 + 48);
  *(v30 + v18) = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v33 = v43;
  v43(v25, v55, v56);
  sub_261CFD6C4();
  v34 = v31;
  v35 = v31;
  v36 = v57;
  v53(v35, 1, 1, v57);
  v49(v32, 1, 1, v50);
  sub_261CFD0A4();
  v37 = (v58 + v45);
  v45 = *(v54 + 48);
  *v37 = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  v33(v25, v55, v56);
  sub_261CFD6C4();
  v53(v34, 1, 1, v36);
  v49(v32, 1, 1, v50);
  sub_261CFD0A4();
  v38 = sub_261C3A990(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDBDD0 = v38;
  return result;
}

RemindersAppIntents::LocationAlarmEntity::SpatialEvent_optional __swiftcall LocationAlarmEntity.SpatialEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LocationAlarmEntity.SpatialEvent.rawValue.getter()
{
  v1 = 0x657669727261;
  if (*v0 != 1)
  {
    v1 = 0x747261706564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_261BD4174(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657669727261;
  if (v2 != 1)
  {
    v3 = 0x747261706564;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x657669727261;
  if (*a2 != 1)
  {
    v6 = 0x747261706564;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D00614();
  }

  return v9 & 1;
}

uint64_t sub_261BD4268()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BD4304()
{
  *v0;
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261BD438C()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261BD4430(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x657669727261;
  if (v2 != 1)
  {
    v4 = 0x747261706564;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_261BD44BC(uint64_t a1)
{
  v2 = sub_261B5408C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261BD452C(uint64_t a1)
{
  v2 = sub_261BD603C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t (*LocationAlarmEntity.mobileSpace.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t (*LocationAlarmEntity.event.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BD46A8(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*LocationAlarmEntity.placemark.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BD47B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDBDD8);
  __swift_project_value_buffer(v15, qword_27FEDBDD8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t static LocationAlarmEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBDD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LocationAlarmEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBDD8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static LocationAlarmEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FEDBDD8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BD4CDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBDD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BD4D9C(uint64_t a1)
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBDD8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t LocationAlarmEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_261CFD6A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_261CFCA04();
  if (v27)
  {
    v16 = 7496035;
  }

  else
  {
    v16 = 0x746C7561666564;
  }

  if (v27)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  MEMORY[0x26671C210](v16, v17);

  MEMORY[0x26671C210](32, 0xE100000000000000);
  sub_261CFCA04();
  v18 = 0x657669727261;
  if (v27 != 1)
  {
    v18 = 0x747261706564;
  }

  if (v27)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x6E776F6E6B6E75;
  }

  if (v27)
  {
    v20 = 0xE600000000000000;
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  MEMORY[0x26671C210](v19, v20);

  MEMORY[0x26671C210](32, 0xE100000000000000);
  sub_261CFCA04();
  v21 = v27;
  v22 = [v27 region];

  v27 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBDF0, &unk_261D08650);
  v23 = sub_261CFFAB4();
  MEMORY[0x26671C210](v23);

  sub_261CFD664();
  (*(v11 + 56))(v9, 1, 1, v10);
  v24 = sub_261CFD074();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  return sub_261CFD0A4();
}

uint64_t LocationAlarmEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_261CFD674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFFA44();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v3 + 104);
  v17 = v2;
  v14(v6, v13, v2);
  sub_261CFD6C4();
  sub_261B54038();
  v18 = sub_261CFCA34();
  *a1 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
  sub_261CFF9B4();
  sub_261CFD874();
  v14(v6, v13, v2);
  sub_261CFD6C4();
  sub_261B5408C();
  a1[1] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v14(v6, v13, v17);
  sub_261CFD6C4();
  a1[2] = sub_261CFCB64();
  v20 = 0;
  sub_261CFCA14();
  v19 = 0;
  return sub_261CFCA14();
}

void LocationAlarmEntity.init(mobileSpace:event:placemark:)(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a3;
  v7 = sub_261CFD674();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_261CFFA44();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_261CFD6A4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = *a2;
  v24 = *a1;
  v25 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v8 + 104);
  v22 = v7;
  v20(v11, v19, v7);
  sub_261CFD6C4();
  sub_261B54038();
  v23 = sub_261CFCA34();
  *a4 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v11, v19, v7);
  sub_261CFD6C4();
  sub_261B5408C();
  a4[1] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v11, v19, v22);
  sub_261CFD6C4();
  a4[2] = sub_261CFCB64();
  v29 = v24;
  sub_261CFCA14();
  v28 = v25;
  sub_261CFCA14();
  v27 = v26;
  v21 = v26;
  sub_261CFCA14();
}

unint64_t sub_261BD58D8()
{
  result = qword_27FEDBDF8;
  if (!qword_27FEDBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBDF8);
  }

  return result;
}

unint64_t sub_261BD592C(uint64_t a1)
{
  result = sub_261BD5954();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261BD5954()
{
  result = qword_27FEDBE00;
  if (!qword_27FEDBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE00);
  }

  return result;
}

unint64_t sub_261BD59AC()
{
  result = qword_27FEDBE08;
  if (!qword_27FEDBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE08);
  }

  return result;
}

unint64_t sub_261BD5A04()
{
  result = qword_27FEDBE10;
  if (!qword_27FEDBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE10);
  }

  return result;
}

unint64_t sub_261BD5A5C()
{
  result = qword_27FEDBE18;
  if (!qword_27FEDBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE18);
  }

  return result;
}

unint64_t sub_261BD5AF8()
{
  result = qword_27FEDBE30;
  if (!qword_27FEDBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE30);
  }

  return result;
}

unint64_t sub_261BD5B4C()
{
  result = qword_27FEDBE38;
  if (!qword_27FEDBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE38);
  }

  return result;
}

unint64_t sub_261BD5BA0()
{
  result = qword_27FEDBE40;
  if (!qword_27FEDBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE40);
  }

  return result;
}

unint64_t sub_261BD5BF8()
{
  result = qword_27FEDBE48;
  if (!qword_27FEDBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE48);
  }

  return result;
}

unint64_t sub_261BD5C68()
{
  result = qword_27FEDBE50;
  if (!qword_27FEDBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE50);
  }

  return result;
}

unint64_t sub_261BD5CC4()
{
  result = qword_27FEDBE58;
  if (!qword_27FEDBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE58);
  }

  return result;
}

unint64_t sub_261BD5D1C()
{
  result = qword_27FEDBE60;
  if (!qword_27FEDBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE60);
  }

  return result;
}

unint64_t sub_261BD5D70(uint64_t a1)
{
  result = sub_261BD5D98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261BD5D98()
{
  result = qword_27FEDBE68;
  if (!qword_27FEDBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE68);
  }

  return result;
}

unint64_t sub_261BD5DF0()
{
  result = qword_27FEDBE70;
  if (!qword_27FEDBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE70);
  }

  return result;
}

unint64_t sub_261BD5E48()
{
  result = qword_27FEDBE78;
  if (!qword_27FEDBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE78);
  }

  return result;
}

unint64_t sub_261BD5EA0()
{
  result = qword_27FEDBE80;
  if (!qword_27FEDBE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE80);
  }

  return result;
}

unint64_t sub_261BD5F3C()
{
  result = qword_27FEDBE98;
  if (!qword_27FEDBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE98);
  }

  return result;
}

unint64_t sub_261BD5F90()
{
  result = qword_27FEDBEA0;
  if (!qword_27FEDBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEA0);
  }

  return result;
}

unint64_t sub_261BD5FE4()
{
  result = qword_27FEDBEA8;
  if (!qword_27FEDBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEA8);
  }

  return result;
}

unint64_t sub_261BD603C()
{
  result = qword_27FEDBEB0;
  if (!qword_27FEDBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEB0);
  }

  return result;
}

unint64_t sub_261BD6100()
{
  result = qword_27FEDBEB8;
  if (!qword_27FEDBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEB8);
  }

  return result;
}

unint64_t sub_261BD615C()
{
  result = qword_27FEDBEC0;
  if (!qword_27FEDBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEC0);
  }

  return result;
}

unint64_t sub_261BD61BC()
{
  result = qword_27FEDBEC8;
  if (!qword_27FEDBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEC8);
  }

  return result;
}

unint64_t sub_261BD6214()
{
  result = qword_27FEDBED0;
  if (!qword_27FEDBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBED0);
  }

  return result;
}

uint64_t sub_261BD62B0()
{
  v1 = *(v0 + 16);
  sub_261CFCA04();
  return v3;
}

unint64_t sub_261BD62E8()
{
  result = qword_280D22118;
  if (!qword_280D22118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22118);
  }

  return result;
}

unint64_t sub_261BD6340()
{
  result = qword_280D22100;
  if (!qword_280D22100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22100);
  }

  return result;
}

unint64_t sub_261BD6398()
{
  result = qword_280D220D8;
  if (!qword_280D220D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220D8);
  }

  return result;
}

uint64_t sub_261BD643C(uint64_t a1)
{
  v2 = sub_261BD67F0();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_261BD648C()
{
  result = qword_280D220F8;
  if (!qword_280D220F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220F8);
  }

  return result;
}

unint64_t sub_261BD64E0()
{
  result = qword_280D220F0;
  if (!qword_280D220F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220F0);
  }

  return result;
}

unint64_t sub_261BD6534()
{
  result = qword_280D22108;
  if (!qword_280D22108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22108);
  }

  return result;
}

unint64_t sub_261BD658C()
{
  result = qword_280D220E8;
  if (!qword_280D220E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220E8);
  }

  return result;
}

unint64_t sub_261BD65E4()
{
  result = qword_27FEDBEE8;
  if (!qword_27FEDBEE8)
  {
    sub_261CFD844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEE8);
  }

  return result;
}

uint64_t sub_261BD663C(uint64_t a1)
{
  v2 = sub_261BD67F0();

  return MEMORY[0x28210B2F8](a1, v2);
}

uint64_t sub_261BD66CC(uint64_t a1)
{
  v2 = sub_261B5186C();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_261BD671C()
{
  result = qword_280D220E0;
  if (!qword_280D220E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220E0);
  }

  return result;
}

uint64_t sub_261BD6774(uint64_t a1)
{
  v2 = sub_261BD658C();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_261BD67F0()
{
  result = qword_27FEDBF00;
  if (!qword_27FEDBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBF00);
  }

  return result;
}

uint64_t sub_261BD685C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBF28);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBF28);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BD6A84()
{
  v51 = v0;
  if (qword_27FED9AA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDBF28);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136446210;
    v9 = MEMORY[0x26671C340](v6, v5);
    v11 = sub_261B879C8(v9, v10, &v50);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_261AE2000, v3, v4, "[ReminderEntityReminderQueryPerforming] Search reminder with identifiers %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v12 = *(v0 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v0 + 80);
    v48 = *(v0 + 88);
    v50 = MEMORY[0x277D84F90];
    v15 = *(v0 + 72);
    sub_261D003A4();
    v16 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v14 + 72);
    v46 = v13;
    v18 = v13;
    do
    {
      v19 = *(v0 + 88);
      sub_261B7C0F0(v16, v19);
      v20 = *(v15 + 20);
      v21 = *v19;
      v22 = *(v48 + 8);
      v23 = objc_allocWithZone(MEMORY[0x277D44700]);
      v24 = sub_261CFD814();
      v25 = sub_261CFFA54();
      [v23 initWithUUID:v24 entityName:v25];

      sub_261B3B9DC(v19, type metadata accessor for AppEntityID);
      sub_261D00374();
      v26 = v50[2];
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v16 += v17;
      --v18;
    }

    while (v18);
    v13 = v46;
  }

  v27 = *(*(v0 + 24) + 24);
  v28 = sub_261CFC0B8();

  if (v13)
  {
    v29 = *(v0 + 80);
    v49 = *(v0 + 48);
    v30 = (*(v0 + 16) + ((*(v29 + 80) + 32) & ~*(v29 + 80)));
    v31 = *(v29 + 72);
    v32 = MEMORY[0x277D84F90];
    v47 = v28;
    do
    {
      v33 = *(v0 + 24);
      sub_261BD6F80(v30, v28, *(v0 + 32));
      v34 = *(v0 + 32);
      if ((*(v49 + 48))(v34, 1, *(v0 + 40)) == 1)
      {
        sub_261AE6A40(v34, &unk_27FEDE110, &unk_261D035B0);
      }

      else
      {
        v36 = *(v0 + 56);
        v35 = *(v0 + 64);
        sub_261B837B0(v34, v35);
        sub_261B837B0(v35, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_261B41560(0, v32[2] + 1, 1, v32);
        }

        v38 = v32[2];
        v37 = v32[3];
        if (v38 >= v37 >> 1)
        {
          v32 = sub_261B41560(v37 > 1, v38 + 1, 1, v32);
        }

        v39 = *(v0 + 56);
        v32[2] = v38 + 1;
        sub_261B837B0(v39, v32 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v38);
        v28 = v47;
      }

      v30 = (v30 + v31);
      --v13;
    }

    while (v13);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v40 = *(v0 + 88);
  v42 = *(v0 + 56);
  v41 = *(v0 + 64);
  v43 = *(v0 + 32);

  v44 = *(v0 + 8);

  return v44(v32);
}

void sub_261BD6F80(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v61 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  v14 = type metadata accessor for AppEntityID();
  v15 = *(v14 + 20);
  v17 = *a1;
  v16 = a1[1];
  v18 = objc_allocWithZone(MEMORY[0x277D44700]);
  v19 = sub_261CFD814();
  v20 = sub_261CFFA54();
  v21 = [v18 initWithUUID:v19 entityName:v20];

  v22 = *(v14 + 24);
  v23 = v13;
  sub_261AFB668(a1 + v22, v13, &qword_27FEDA108, &unk_261D020C0);
  v62 = v21;
  v24 = sub_261CADDB4(v21, a2);
  if (!v24)
  {
    if (qword_27FED9AA0 != -1)
    {
      swift_once();
    }

    v27 = sub_261CFF7A4();
    __swift_project_value_buffer(v27, qword_27FEDBF28);
    v28 = v62;
    v29 = sub_261CFF784();
    v30 = sub_261CFFE64();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_261AE2000, v29, v30, "[ReminderEntityReminderQueryPerforming] Unable to fetch reminder entity for id: %{public}@", v31, 0xCu);
      sub_261AE6A40(v32, &unk_27FEDA730, &unk_261D035C0);
      v34 = v32;
      v23 = v13;
      MEMORY[0x26671D560](v34, -1, -1);
      MEMORY[0x26671D560](v31, -1, -1);
    }

    else
    {
      v33 = v29;
      v29 = v28;
    }

    v41 = v61;

    v42 = 1;
    goto LABEL_27;
  }

  v25 = v24;
  v26 = sub_261CFC488(v24);
  if (v3)
  {
    sub_261AE6A40(v13, &qword_27FEDA108, &unk_261D020C0);

    return;
  }

  v35 = v26;
  v58 = v23;
  sub_261AFB668(v23, v60, &qword_27FEDA108, &unk_261D020C0);
  v36 = [v25 storage];
  v37 = [v25 list];
  v56 = [v37 storage];

  v38 = sub_261CFFDF4();
  v39 = [v25 parentReminder];
  if (v39)
  {
    v40 = v39;
    v54 = [v39 storage];
  }

  else
  {
    v54 = 0;
  }

  v57 = v36;
  v55 = v38;
  if (!v35)
  {
    v49 = 0;
LABEL_26:
    v50 = v60;
    v41 = v61;
    v23 = v58;
    v51 = v59;
    sub_261AFB668(v60, v59, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v57, v56, v55, v54, v49, v51, v41);

    sub_261AE6A40(v50, &qword_27FEDA108, &unk_261D020C0);
    v42 = 0;
LABEL_27:
    sub_261AE6A40(v23, &qword_27FEDA108, &unk_261D020C0);
    v52 = type metadata accessor for ReminderEntity();
    (*(*(v52 - 8) + 56))(v41, v42, 1, v52);
    return;
  }

  if (!(v35 >> 62))
  {
    v43 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v43 = sub_261D00274();
  if (!v43)
  {
LABEL_25:

    v49 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_16:
  v53 = 0;
  v63 = MEMORY[0x277D84F90];
  sub_261D003A4();
  if ((v43 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    do
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x26671CA10](v44, v35);
      }

      else
      {
        v45 = *(v35 + 8 * v44 + 32);
      }

      v46 = v45;
      ++v44;
      v47 = [v45 storage];

      sub_261D00374();
      v48 = *(v63 + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v43 != v44);

    v49 = v63;
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t REMStoreIntentPerformer.entities(query:matching:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = *(type metadata accessor for ReminderEntity() - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = sub_261CFED74();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for AppEntityID();
  v5[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BD76C8, 0, 0);
}

size_t sub_261BD76C8()
{
  v97 = v0;
  v1 = v0[16];
  sub_261AFB668(v0[5], v1, &unk_27FEDE0C0, &unk_261D02500);
  v2 = type metadata accessor for ListEntity();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[16];
  if (v3 == 1)
  {
    sub_261AE6A40(v4, &unk_27FEDE0C0, &unk_261D02500);
    v5 = 0;
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = *(v2 + 20);
    v9 = v0[16];
    sub_261B7C0F0(v4 + v8, v6);
    sub_261B3B9DC(v9, type metadata accessor for ListEntity);
    v10 = *(v7 + 20);
    v11 = *v6;
    v12 = v6[1];
    v13 = objc_allocWithZone(MEMORY[0x277D44700]);
    v14 = sub_261CFD814();
    v15 = sub_261CFFA54();
    v5 = [v13 initWithUUID:v14 entityName:v15];

    sub_261B3B9DC(v6, type metadata accessor for AppEntityID);
  }

  if (qword_27FED9AA0 != -1)
  {
    swift_once();
  }

  v16 = v0[4];
  v17 = sub_261CFF7A4();
  __swift_project_value_buffer(v17, qword_27FEDBF28);
  v18 = v5;
  sub_261CFD104();
  v19 = sub_261CFF784();
  v20 = sub_261CFFE84();

  v86 = v18;

  v94 = v5;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[3];
    v21 = v0[4];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v96[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_261B879C8(v22, v21, v96);
    *(v23 + 12) = 2082;
    if (v5)
    {
      v0[2] = v86;
      sub_261B57A9C();
      v25 = v86;
      v26 = sub_261CFFAB4();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_261B879C8(v26, v28, v96);

    *(v23 + 14) = v29;
    _os_log_impl(&dword_261AE2000, v19, v20, "[ReminderEntityReminderQueryPerforming] Search reminders matching %s in list: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v24, -1, -1);
    MEMORY[0x26671D560](v23, -1, -1);
  }

  v30 = v0[11];
  v31 = v0[12];
  v33 = v0[3];
  v32 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7F8, &qword_261D03378);
  v34 = *(v31 + 72);
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = v35 + 2 * v34;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_261D01400;
  v38 = (v37 + v35);
  *v38 = 0;
  v39 = *(v31 + 104);
  v39(v38, *MEMORY[0x277D44EF0], v30);
  v40 = &v38[v34];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF40, &qword_261D08EC8) + 48);
  *v40 = v33;
  *(v40 + 1) = v32;
  v42 = *MEMORY[0x277D45270];
  v43 = sub_261CFEF44();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  v39(v40, *MEMORY[0x277D44F10], v30);
  if (v94)
  {
    v45 = v0[12];
    v44 = v0[13];
    v46 = v0[11];
    v92 = v0[4];
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF48, &qword_261D08ED0) + 48);
    *v44 = v86;
    v48 = *MEMORY[0x277D44F58];
    v49 = sub_261CFED64();
    (*(*(v49 - 8) + 104))(&v44[v47], v48, v49);
    v39(v44, *MEMORY[0x277D44F30], v46);
    sub_261CFD104();
    v50 = v86;
    v51 = sub_261B42380(1uLL, 3, 1, v37);
    *(v51 + 16) = 3;
    (*(v45 + 32))(v51 + v36, v44, v46);
  }

  else
  {
    v52 = v0[4];
    sub_261CFD104();
  }

  v53 = v0[6];
  sub_261CFEE84();
  v54 = *(v53 + 16);
  v55 = objc_opt_self();
  sub_261CFD104();
  v56 = [v55 fetchOptionsIncludingDueDateDeltaAlerts];
  v57 = sub_261CFEE74();

  if (v57 >> 62)
  {
    v58 = sub_261D00274();
    if (v58)
    {
      goto LABEL_16;
    }

LABEL_29:

    v61 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v58)
  {
    goto LABEL_29;
  }

LABEL_16:
  v96[0] = MEMORY[0x277D84F90];
  result = sub_261B39DB8(0, v58 & ~(v58 >> 63), 0);
  if (v58 < 0)
  {
    __break(1u);
    return result;
  }

  v60 = 0;
  v61 = v96[0];
  v62 = v57;
  v87 = v57 & 0xC000000000000001;
  v88 = v0[9];
  v63 = &unk_279AFB000;
  v89 = v58;
  v90 = v62;
  do
  {
    v95 = v61;
    if (v87)
    {
      v64 = MEMORY[0x26671CA10](v60);
    }

    else
    {
      v64 = *(v62 + 8 * v60 + 32);
    }

    v65 = v64;
    v66 = v0[8];
    v67 = type metadata accessor for RecurrentInstanceSpecifier(0);
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
    v93 = [v65 v63[84]];
    v68 = [v65 list];
    v91 = [v68 v63[84]];

    v69 = sub_261CFFDF4();
    v70 = [v65 parentReminder];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 v63[84]];
    }

    else
    {
      v72 = 0;
    }

    v73 = v0[10];
    v74 = v0[7];
    v75 = v0[8];
    sub_261AFB668(v75, v74, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v93, v91, v69, v72, 0, v74, v73);

    sub_261AE6A40(v75, &qword_27FEDA108, &unk_261D020C0);
    v61 = v95;
    v96[0] = v95;
    v77 = *(v95 + 16);
    v76 = *(v95 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_261B39DB8(v76 > 1, v77 + 1, 1);
      v61 = v96[0];
    }

    v78 = v0[10];
    ++v60;
    *(v61 + 16) = v77 + 1;
    sub_261B837B0(v78, v61 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v77);
    v62 = v90;
    v63 = &unk_279AFB000;
  }

  while (v89 != v60);

LABEL_30:
  v80 = v0[15];
  v79 = v0[16];
  v81 = v0[13];
  v82 = v0[10];
  v84 = v0[7];
  v83 = v0[8];

  v85 = v0[1];

  return v85(v61);
}

uint64_t REMStoreIntentPerformer.suggestedHashtagLabels(query:)()
{
  v1[2] = v0;
  v2 = sub_261CFF004();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BD80B0, 0, 0);
}

char *sub_261BD80B0()
{
  if (qword_27FED9AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDBF28);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ReminderEntityReminderQueryPerforming] Search suggested hashtag labels", v4, 2u);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  sub_261CFF014();
  v9 = *(v7 + 16);
  (*(v6 + 104))(v5, *MEMORY[0x277D45328], v8);
  v10 = sub_261CFEFF4();
  (*(v6 + 8))(v5, v8);
  if (v10 >> 62)
  {
    v11 = sub_261D00274();
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_17:

    v14 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_7:
  v26 = v0;
  v27 = MEMORY[0x277D84F90];
  result = sub_261B39FA4(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    return result;
  }

  v13 = 0;
  v14 = v27;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26671CA10](v13, v10);
    }

    else
    {
      v15 = *(v10 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = [v15 name];
    v18 = sub_261CFFA74();
    v20 = v19;

    v22 = *(v27 + 16);
    v21 = *(v27 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_261B39FA4((v21 > 1), v22 + 1, 1);
    }

    ++v13;
    *(v27 + 16) = v22 + 1;
    v23 = v27 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
  }

  while (v11 != v13);

  v0 = v26;
LABEL_18:
  v24 = v0[5];

  v25 = v0[1];

  return v25(v14);
}

uint64_t sub_261BD83D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:for:)(v6, a2);
}

uint64_t sub_261BD8468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:matching:in:)(v10, a2, a3, a4);
}

uint64_t sub_261BD8518()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261B0D584;

  return REMStoreIntentPerformer.suggestedHashtagLabels(query:)();
}

uint64_t sub_261BD85A8()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDBF50);
  __swift_project_value_buffer(v9, qword_27FEDBF50);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateSmartListIsHiddenAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBF50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateSmartListIsHiddenAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261BD8B50(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t UpdateSmartListIsHiddenAppIntent.entity.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*UpdateSmartListIsHiddenAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t UpdateSmartListIsHiddenAppIntent.property.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t (*UpdateSmartListIsHiddenAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateSmartListIsHiddenAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v66 = &v49[-v3];
  v70 = sub_261CFD184();
  v73 = *(v70 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v63 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v68 = &v49[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49[-v13];
  v15 = sub_261CFD674();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_261CFD884();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_261CFFA44();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_261CFD6A4();
  v55 = v24;
  v72 = *(v24 - 8);
  v25 = *(v72 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v65 = &v49[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v64 = &v49[-v29];
  MEMORY[0x28223BE20](v28);
  v67 = &v49[-v30];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB748, &qword_261D070E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v32 = *(v16 + 104);
  v50 = *MEMORY[0x277CC9110];
  v31 = v50;
  v51 = v15;
  v32(v19, v50, v15);
  v53 = v32;
  v52 = v16 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v19, v31, v15);
  v33 = v14;
  sub_261CFD6C4();
  v34 = *(v72 + 56);
  v72 += 56;
  v56 = v34;
  v34(v14, 0, 1, v24);
  v75 = 6;
  v35 = sub_261CFC834();
  v61 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v60 = v37;
  v38 = v36 + 56;
  v37(v68, 1, 1, v35);
  v62 = v38;
  v37(v63, 1, 1, v35);
  v58 = *MEMORY[0x277CBA308];
  v39 = *(v73 + 104);
  v73 += 104;
  v59 = v39;
  v39(v69);
  sub_261B94D00();
  v40 = v33;
  *v71 = sub_261CFCC04();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v41 = v50;
  v42 = v51;
  v43 = v53;
  v53(v19, v50, v51);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v43(v19, v41, v42);
  v54 = v40;
  sub_261CFD6C4();
  v56(v40, 0, 1, v55);
  v75 = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v43(v19, v41, v42);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v43(v19, v41, v42);
  sub_261CFD6B4();
  v44 = v66;
  sub_261CFFCD4();
  v45 = sub_261CFFCE4();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v60(v68, 1, 1, v61);
  v59(v69, v58, v70);
  v46 = sub_261CFCD44();
  v47 = v71;
  v71[1] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF68, &qword_261D08F08);
  v74 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v47[2] = result;
  return result;
}

uint64_t UpdateSmartListIsHiddenAppIntent.perform()(uint64_t a1)
{
  *(v2 + 104) = a1;
  v3 = sub_261CFC9D4();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF70, &qword_261D08F18);
  *(v2 + 136) = v6;
  v7 = *(v6 - 8);
  *(v2 + 144) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v9 = sub_261CFD754();
  *(v2 + 160) = v9;
  v10 = *(v9 - 8);
  *(v2 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = *v1;
  *(v2 + 208) = *(v1 + 16);
  *(v2 + 216) = sub_261CFFD24();
  *(v2 + 224) = sub_261CFFD14();
  v13 = sub_261CFFCF4();
  *(v2 + 232) = v13;
  *(v2 + 240) = v12;

  return MEMORY[0x2822009F8](sub_261BD9928, v13, v12);
}

uint64_t sub_261BD9928()
{
  v15 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  sub_261CFCBB4();
  LOBYTE(v13) = *(v0 + 312);
  sub_261CFCBB4();
  SmartListEntity.init(type:isHidden:)(&v13, *(v0 + 313), &v11);
  v13 = v11;
  v14 = v12;
  sub_261CFC664();
  sub_261CA8D78(&v13, v0 + 16, &v9);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  *(v0 + 248) = v9;
  *(v0 + 264) = v10;
  sub_261BDA2E0(v5);
  *(v0 + 272) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v0 + 280) = v7;
  *(v0 + 288) = v6;

  return MEMORY[0x2822009F8](sub_261BD9A78, v7, v6);
}

uint64_t sub_261BD9A78()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_261BD9B60;
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[31];
  v8 = v0[19];

  return sub_261C5C3E8(v8, "UpdateSmartListAppIntent", 24, 2, v7, v5, v6);
}

uint64_t sub_261BD9B60()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 280);
  if (v0)
  {
    v7 = sub_261BDA1A0;
  }

  else
  {
    v7 = sub_261BD9C9C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261BD9C9C()
{
  v1 = v0[34];

  v2 = v0[29];
  v3 = v0[30];

  return MEMORY[0x2822009F8](sub_261BD9D00, v2, v3);
}

uint64_t sub_261BD9D00()
{
  v51 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);

  sub_261B01D28(&qword_27FEDBF78, &qword_27FEDBF70, &qword_261D08F18);
  sub_261CFC964();
  v4 = *(v0 + 56);
  if (v4)
  {
    v44 = *(v0 + 248);
    v45 = *(v0 + 256);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v47 = *(v0 + 264);
    v49 = *(v0 + 152);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v43 = *(v0 + 104);
    v42 = *(v0 + 64);
    (*(*(v0 + 144) + 8))();
    *(v0 + 80) = v4;
    *(v0 + 88) = v42;
    (*(v8 + 16))(v6, v5, v7);
    sub_261CFC9E4();
    sub_261B84908();
    sub_261BDA810();
    sub_261CFC984();

    (*(v11 + 8))(v10, v12);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);

    (*(v8 + 8))(v5, v7);

    v16 = *(v0 + 8);
  }

  else
  {
    v18 = *(v0 + 168);
    v17 = *(v0 + 176);
    v19 = *(v0 + 160);
    sub_261CFD704();
    v20 = sub_261CFD714();
    v22 = v21;
    v48 = *(v18 + 8);
    v48(v17, v19);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v23 = sub_261CFF7A4();
    __swift_project_value_buffer(v23, qword_27FED9EF8);
    sub_261CFD104();
    v24 = sub_261CFF784();
    v25 = sub_261CFFE64();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50[0] = v27;
      *v26 = 136315650;
      v28 = sub_261B879C8(v20, v22, v50);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2048;
      *(v26 + 14) = 93;
      *(v26 + 22) = 2080;
      *(v26 + 24) = sub_261B879C8(0xD00000000000004ELL, 0x8000000261D1D390, v50);
      _os_log_impl(&dword_261AE2000, v24, v25, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v27, -1, -1);
      MEMORY[0x26671D560](v26, -1, -1);
    }

    else
    {
    }

    v29 = *(v0 + 256);
    v30 = *(v0 + 264);
    v31 = *(v0 + 248);
    v46 = *(v0 + 184);
    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v35 = *(v0 + 136);
    v34 = *(v0 + 144);
    sub_261B01D70();
    swift_allocError();
    *v36 = 20;
    swift_willThrow();

    (*(v34 + 8))(v33, v35);
    v48(v46, v32);
    v38 = *(v0 + 176);
    v37 = *(v0 + 184);
    v39 = *(v0 + 152);
    v40 = *(v0 + 128);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_261BDA1A0()
{
  v1 = v0[34];

  v2 = v0[29];
  v3 = v0[30];

  return MEMORY[0x2822009F8](sub_261BDA204, v2, v3);
}

uint64_t sub_261BDA204()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];

  (*(v7 + 8))(v5, v6);
  v8 = v0[38];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[19];
  v12 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_261BDA2E0@<X0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  if (v7 != 1)
  {
    sub_261CFCBB4();
    return sub_261BC0418(a1);
  }

  sub_261CFCBB4();
  if (v6 > 2u || v6)
  {
    v2 = sub_261D00614();

    if ((v2 & 1) == 0)
    {
      return sub_261BC0418(a1);
    }
  }

  else
  {
  }

  if (qword_27FED9A10 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFD754();
  v5 = __swift_project_value_buffer(v4, qword_27FEDB8A8);
  return (*(*(v4 - 8) + 16))(a1, v5, v4);
}

uint64_t static UpdateSmartListIsHiddenAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF80, &qword_261D08F20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF88, &qword_261D08F28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261BDA868();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF98, &qword_261D08F58);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBFA0, &unk_261D08F88);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BDA688@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBF50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BDA738(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateSmartListIsHiddenAppIntent.perform()(a1);
}

uint64_t sub_261BDA7D4(uint64_t a1)
{
  v2 = sub_261BDA868();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261BDA810()
{
  result = qword_27FEDA3C0;
  if (!qword_27FEDA3C0)
  {
    sub_261CFC9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA3C0);
  }

  return result;
}

unint64_t sub_261BDA868()
{
  result = qword_27FEDBF90;
  if (!qword_27FEDBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBF90);
  }

  return result;
}

unint64_t sub_261BDA8C0()
{
  result = qword_27FEDBFA8;
  if (!qword_27FEDBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBFA8);
  }

  return result;
}

unint64_t sub_261BDA918()
{
  result = qword_27FEDBFB0;
  if (!qword_27FEDBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBFB0);
  }

  return result;
}

uint64_t sub_261BDA9CC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBFD8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBFD8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BDAD90()
{
  v135 = v0;
  v134[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(*(v0 + 144) + 24);
  sub_261CFCBB4();
  v3 = sub_261B9A654(*(v0 + 80), 0);
  v5 = v4;

  v19 = sub_261B9C33C(3, v3, v5);

  *(v0 + 88) = MEMORY[0x277D84F90];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v0 + 288);
    log = *(v0 + 264);
    v22 = *(v0 + 224);
    v23 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v24 = *(v21 + 72);
    v25 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    do
    {
      v27 = *(v0 + 280);
      sub_261BDC470(v23, *(v0 + 296), _s20CategorizedRemindersV12EditableItemOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v29 = *(v0 + 296);
      if (EnumCaseMultiPayload == 1)
      {
        v31 = *(v0 + 248);
        v30 = *(v0 + 256);
        sub_261B579D4(v29, v30, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        sub_261BDC470(v30, v31, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_261B423A8(0, v25[2] + 1, 1, v25);
        }

        v33 = v25[2];
        v32 = v25[3];
        if (v33 >= v32 >> 1)
        {
          v25 = sub_261B423A8(v32 > 1, v33 + 1, 1, v25);
        }

        v26 = *(v0 + 248);
        sub_261BDC4D8(*(v0 + 256), _s20CategorizedRemindersV17RecurrentInstanceVMa);
        v25[2] = v33 + 1;
        sub_261B579D4(v26, v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v33, _s20CategorizedRemindersV17RecurrentInstanceVMa);
      }

      else
      {
        v34 = *(v0 + 272);
        sub_261B579D4(v29, v34, _s20CategorizedRemindersV15FetchedReminderVMa);
        v35 = *(v34 + SHIDWORD(log[2].isa));
        MEMORY[0x26671C310]();
        if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_261CFFC84();
        }

        v36 = *(v0 + 272);
        sub_261CFFCB4();
        sub_261BDC4D8(v36, _s20CategorizedRemindersV15FetchedReminderVMa);
        v123 = *(v0 + 88);
      }

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
  }

  if (qword_27FED9AB0 != -1)
  {
LABEL_65:
    swift_once();
  }

  v38 = sub_261CFF7A4();
  __swift_project_value_buffer(v38, qword_27FEDBFD8);
  sub_261CFD104();
  sub_261CFD104();
  v39 = sub_261CFF784();
  v40 = sub_261CFFE84();

  loga = v39;
  v122 = v25;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v134[0] = v124;
    *v41 = 136315394;
    v25 = v123;
    if (v123 >> 62)
    {
      v42 = sub_261D00274();
    }

    else
    {
      v42 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = MEMORY[0x277D84F90];
    v127 = v40;
    if (v42)
    {
      *&v132[0] = MEMORY[0x277D84F90];
      sub_261D003A4();
      if (v42 < 0)
      {
        __break(1u);
LABEL_68:
        v85 = sub_261D00274();
        if (v85)
        {
          goto LABEL_44;
        }

LABEL_69:
        v114 = *(v0 + 200);

        sub_261CFDD24();
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        v115 = MEMORY[0x26671A3E0](v42, v41, v0 + 16);
        *(v0 + 360) = v115;

        sub_261AE6A40(v0 + 16, &qword_27FEDC000, &qword_261D090C8);
        *(v0 + 112) = v115;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB720, &qword_261D09240);
        sub_261B01D28(&qword_27FEDB728, &qword_27FEDB720, &qword_261D09240);
        sub_261CFF7F4();
        v116 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](sub_261BDBB10, 0, 0);
      }

      v44 = 0;
      do
      {
        if ((v123 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x26671CA10](v44, v123);
        }

        else
        {
          v45 = *(v123 + 8 * v44 + 32);
        }

        v46 = v45;
        ++v44;
        v47 = [v45 objectID];

        sub_261D00374();
        v48 = *(*&v132[0] + 16);
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
      }

      while (v42 != v44);
      v43 = *&v132[0];
    }

    v49 = sub_261B57A9C();
    v50 = MEMORY[0x26671C340](v43, v49);
    v52 = v51;

    v53 = sub_261B879C8(v50, v52, v134);

    *(v41 + 4) = v53;
    *(v41 + 12) = 2080;
    v54 = v122[2];
    v55 = MEMORY[0x277D84F90];
    if (v54)
    {
      v120 = v49;
      v56 = *(v0 + 264);
      v57 = *(v0 + 224);
      *&v132[0] = MEMORY[0x277D84F90];
      sub_261D003A4();
      v58 = v122 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v59 = *(v57 + 72);
      do
      {
        v60 = *(v0 + 240);
        sub_261BDC470(v58, v60, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        v61 = [*(v60 + *(v56 + 20)) objectID];
        sub_261BDC4D8(v60, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        sub_261D00374();
        v62 = *(*&v132[0] + 16);
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
        v58 += v59;
        --v54;
      }

      while (v54);
      v55 = *&v132[0];
      v49 = v120;
    }

    v63 = MEMORY[0x26671C340](v55, v49);
    v65 = v64;

    v66 = sub_261B879C8(v63, v65, v134);

    *(v41 + 14) = v66;
    _os_log_impl(&dword_261AE2000, loga, v127, "[DeleteRemindersAppIntent] Delete reminders with ids: %s, recurrent instances: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v124, -1, -1);
    MEMORY[0x26671D560](v41, -1, -1);

    v25 = v122;
  }

  else
  {
  }

  v67 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  *(v0 + 352) = v67;
  loga = v67;
  [v67 setSaveIsNoopIfNoChangedKeys:1];
  v25 = v25[2];
  if (v25)
  {
    v68 = *(v0 + 264);
    v69 = *(v0 + 224);
    v70 = *(v0 + 232);
    v71 = *(v0 + 216);
    sub_261CFE144();
    v125 = *(v71 + 20);
    v128 = *(v68 + 20);
    v72 = v122 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v73 = *(v69 + 72);
    do
    {
      v74 = *(v0 + 232);
      v75 = *(v0 + 208);
      sub_261BDC470(v72, v74, _s20CategorizedRemindersV17RecurrentInstanceVMa);
      v76 = *(v70 + v128);
      *(v0 + 104) = v76;
      v133 = 0;
      memset(v132, 0, sizeof(v132));
      v77 = v76;
      v78 = loga;
      sub_261CFDF24();
      v79 = *(v0 + 96);
      v80 = [*(v70 + v125) date];
      sub_261CFD7C4();

      v81 = sub_261CFD7E4();
      (*(*(v81 - 8) + 56))(v75, 0, 1, v81);
      sub_261CFE014();

      sub_261AE6A40(v75, &qword_27FEDAB68, &unk_261D11C90);
      sub_261BDC4D8(v74, _s20CategorizedRemindersV17RecurrentInstanceVMa);
      v72 += v73;
      v25 = (v25 - 1);
    }

    while (v25);
  }

  v82 = *(v0 + 312);
  sub_261CFCBB4();
  v84 = *(v0 + 392);
  v42 = v123;
  v41 = loga;
  if (v84 == 2 || (v84 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (v123 >> 62)
  {
    goto LABEL_68;
  }

  v85 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v85)
  {
    goto LABEL_69;
  }

LABEL_44:
  v86 = 0;
  v87 = v42 & 0xC000000000000001;
  v129 = v42 & 0xFFFFFFFFFFFFFF8;
  *&v83 = 136315138;
  v117 = v83;
  v126 = v85;
  v121 = v42 & 0xC000000000000001;
  while (1)
  {
    if (v87)
    {
      v88 = MEMORY[0x26671CA10](v86, v42);
    }

    else
    {
      if (v86 >= *(v129 + 16))
      {
        goto LABEL_64;
      }

      v88 = *(v42 + 8 * v86 + 32);
    }

    v89 = v88;
    v25 = (v86 + 1);
    if (__OFADD__(v86, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v90 = [v88 subtaskContext];
    if (!v90)
    {

      goto LABEL_46;
    }

    v91 = v90;
    *(v0 + 120) = 0;
    v92 = [v90 hasSubtasksWithError_];
    v93 = *(v0 + 120);
    if (v93)
    {
      v94 = *(v0 + 120);
      swift_willThrow();
      v95 = v93;
      v96 = sub_261CFF784();
      v97 = sub_261CFFE64();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v132[0] = v99;
        *v98 = v117;
        swift_getErrorValue();
        v118 = v96;
        v101 = *(v0 + 56);
        v100 = *(v0 + 64);
        v102 = *(v0 + 72);
        v103 = sub_261D00674();
        v119 = v95;
        v105 = sub_261B879C8(v103, v104, v132);

        *(v98 + 4) = v105;
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x26671D560](v99, -1, -1);
        v106 = v98;
        v41 = loga;
        MEMORY[0x26671D560](v106, -1, -1);
      }

      else
      {
      }

      v85 = v126;
      v87 = v121;
      goto LABEL_46;
    }

    v107 = v92;

    if (v107)
    {
      break;
    }

LABEL_46:
    ++v86;
    v42 = v123;
    if (v25 == v85)
    {
      goto LABEL_69;
    }
  }

  v108 = *(v0 + 328);

  v109 = sub_261CFF784();
  v110 = sub_261CFFE84();
  if (os_log_type_enabled(v109, v110))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_261AE2000, v109, v110, "[DeleteRemindersAppIntent] Delete reminders called on a reminder with subtasks, but the delete subtasks was set to false. No reminders deleted.", v112, 2u);
    MEMORY[0x26671D560](v112, -1, -1);
  }

  sub_261B01D70();
  swift_allocError();
  *v113 = 16;
  swift_willThrow();

  v6 = *(v0 + 296);
  v7 = *(v0 + 272);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  v14 = *(v0 + 192);
  v15 = *(v0 + 168);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_261BDBB10()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[21];
  (*(v0[23] + 16))(v0[24], v0[25], v0[22]);
  sub_261B01D28(&qword_27FEDC008, &qword_27FEDBFF8, &qword_261D090C0);
  sub_261CFFD54();
  v2 = sub_261B01D28(&qword_27FEDC010, &qword_27FEDBFF0, &qword_261D090B8);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_261BDBC80;
  v5 = v0[21];
  v6 = v0[19];
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200308](v0 + 393, v6, v2);
}

uint64_t sub_261BDBC80()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);
  if (v0)
  {
    v5 = sub_261BDC058;
  }

  else
  {
    v5 = sub_261BDBE14;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261BDBE14()
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(v0 + 393))
  {
    (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
    v1 = *(v0 + 336);
    v2 = *(v0 + 344);
    v3 = *MEMORY[0x277D85DE8];
    v4 = sub_261BDC22C;
  }

  else
  {
    v5 = *(v0 + 320);
    *(v0 + 384) = sub_261CFFD14();
    v6 = sub_261CFFCF4();
    v7 = *MEMORY[0x277D85DE8];
    v8 = v6;
    v10 = v9;
    v4 = sub_261BDBF24;
    v1 = v8;
    v2 = v10;
  }

  return MEMORY[0x2822009F8](v4, v1, v2);
}

uint64_t sub_261BDBF24()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 384);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BDBFB8, 0, 0);
}

uint64_t sub_261BDBFB8()
{
  v5 = *MEMORY[0x277D85DE8];
  (*(v0[23] + 8))(v0[25], v0[22]);
  v1 = v0[42];
  v2 = v0[43];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BDC22C, v1, v2);
}

uint64_t sub_261BDC058()
{
  v5 = *MEMORY[0x277D85DE8];
  (*(v0[23] + 8))(v0[25], v0[22]);
  v1 = v0[42];
  v2 = v0[43];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BDC0F8, v1, v2);
}

uint64_t sub_261BDC0F8()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);

  v16 = *(v0 + 376);
  v3 = *(v0 + 296);
  v4 = *(v0 + 272);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v11 = *(v0 + 192);
  v12 = *(v0 + 168);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_261BDC22C()
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[41];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[30];
  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[21];
  v9 = v0[17];

  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  v9[4] = sub_261B01D28(&qword_27FEDAFD8, &qword_27FEDAFD0, &qword_261D072B0);
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_261CFC9A4();

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_261BDC3C4(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BDC470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BDC4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BDC538()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC018);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC018);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier.reminderID(_:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
  v4 = sub_261CFD4E4();
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  *a2 = a1;
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

id RemindersInCalendarUtilities.ReminderEditingConfiguration.reminderID.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261BDC810(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = [*v9 objectID];
  }

  else
  {
    sub_261BDD558(v9, v5, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v11 = *v5;
    sub_261BDCB40(v5, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  }

  return v11;
}

uint64_t sub_261BDC810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_261BDC874(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261BDC810(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = [*v11 objectID];
  }

  else
  {
    sub_261BDD558(v11, v7, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v13 = *v7;
    sub_261BDCB40(v7, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  }

  *a2 = v13;
}

uint64_t sub_261BDC9C4(id *a1, char *a2)
{
  v3 = *a1;
  sub_261BDCB40(a2, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
  v4 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
  v5 = sub_261CFD4E4();
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  *a2 = v3;
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.reminderID.setter(uint64_t a1)
{
  sub_261BDCB40(v1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
  v4 = sub_261CFD4E4();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *v1 = a1;
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_261BDCB40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*RemindersInCalendarUtilities.ReminderEditingConfiguration.reminderID.modify(uint64_t *a1))(void ***a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 8) = v2;
  v7 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  v6[2] = v7;
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[3] = v9;
  v11 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  v6[4] = v11;
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[5] = v13;
  sub_261BDC810(v2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = [*v14 objectID];
  }

  else
  {
    sub_261BDD558(v14, v10, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v16 = *v10;
    sub_261BDCB40(v10, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  }

  *v6 = v16;
  return sub_261BDCD24;
}

void sub_261BDCD24(void ***a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v9 = v8;
    sub_261BDCB40(v7, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    v10 = v6[5];
    v11 = sub_261CFD4E4();
    (*(*(v11 - 8) + 56))(&v7[v10], 1, 1, v11);
    *v7 = v9;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_261BDCB40((*a1)[1], type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    v12 = v6[5];
    v13 = sub_261CFD4E4();
    (*(*(v13 - 8) + 56))(&v7[v12], 1, 1, v13);
    *v7 = v8;
    swift_storeEnumTagMultiPayload();
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_261BDCEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *RemindersInCalendarUtilities.ReminderEditingConfiguration.undoManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 20));
  v2 = v1;
  return v1;
}

void RemindersInCalendarUtilities.ReminderEditingConfiguration.undoManager.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 20);

  *(v1 + v3) = a1;
}

double RemindersInCalendarUtilities.ReminderEditingConfiguration.layoutMargins.getter()
{
  v1 = v0 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 28);
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  return result;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  v10 = (v4 + *(result + 28));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

void (*RemindersInCalendarUtilities.ReminderEditingConfiguration.layoutMargins.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 28);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  *v4 = *v6;
  *(v4 + 16) = v7;
  return sub_261BDD104;
}

void sub_261BDD104(void **a1)
{
  v1 = *a1;
  v2 = (*(v1 + 4) + v1[10]);
  v3 = *(v1 + 1);
  *v2 = *v1;
  v2[1] = v3;
  free(v1);
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.isInResizableContainer.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*RemindersInCalendarUtilities.ReminderEditingConfiguration.isInResizableContainer.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_261BE0A88;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.hasCommitCancelButtons.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*RemindersInCalendarUtilities.ReminderEditingConfiguration.hasCommitCancelButtons.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_261BE0A88;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.autoCommitsEditingOnTextEditingReturnKey.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*RemindersInCalendarUtilities.ReminderEditingConfiguration.autoCommitsEditingOnTextEditingReturnKey.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_261BDD324;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.newUserInterfaceStyleEnabled.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.init(reminderID:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + v4[5]) = 0;
  *(a2 + v4[6]) = 0;
  v5 = (a2 + v4[7]);
  *v5 = xmmword_261D090F0;
  v5[1] = xmmword_261D09100;
  *(a2 + v4[8]) = 0;
  *(a2 + v4[9]) = 0;
  *(a2 + v4[10]) = 1;
  v6 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
  v7 = sub_261CFD4E4();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *a2 = a1;
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.init(reminderSpecifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + v4[5]) = 0;
  *(a2 + v4[6]) = 0;
  v5 = (a2 + v4[7]);
  *v5 = xmmword_261D090F0;
  v5[1] = xmmword_261D09100;
  *(a2 + v4[8]) = 0;
  *(a2 + v4[9]) = 0;
  *(a2 + v4[10]) = 1;
  return sub_261BDD558(a1, a2, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
}

uint64_t sub_261BDD558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingModule.moduleInterface.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t static RemindersInCalendarUtilities.makeReminderEditingModule(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC030, &qword_261D09110);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v50 - v6;
  v8 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC038, &qword_261D09118);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v50 - v18;
  sub_261BDC810(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v15;
    if (qword_27FED9AB8 != -1)
    {
      swift_once();
    }

    v21 = sub_261CFF7A4();
    __swift_project_value_buffer(v21, qword_27FEDC018);
    v22 = v20;
    v23 = sub_261CFF784();
    v24 = sub_261CFFE54();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v4;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = [v22 objectID];
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_261AE2000, v23, v24, "ReminderEditingUI: using optimistic reminder {reminderID: %@}", v26, 0xCu);
      sub_261AE6A40(v27, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v27, -1, -1);
      v29 = v26;
      v4 = v25;
      MEMORY[0x26671D560](v29, -1, -1);
    }

    v30 = sub_261BDE69C(v22);
    if (v30)
    {
      v52 = v30;
      v50[2] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC040, &unk_261D09120);
      sub_261B05020(0, &qword_27FEDB878, 0x277D44780);
      sub_261B01D28(&qword_27FEDC048, &qword_27FEDC040, &unk_261D09120);
      sub_261CFF834();

      sub_261B01D28(&qword_27FEDC050, &qword_27FEDC030, &qword_261D09110);
      sub_261CFF804();
      (*(v4 + 8))(v7, v3);
    }

    sub_261CFE454();
    v39 = [v22 store];
    v40 = sub_261CFE444();

    v41 = [v40 updateReminder_];
    sub_261CFE384();

    v43 = 0;
  }

  else
  {
    sub_261BDD558(v15, v11, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v31 = *v11;
    if (qword_27FED9AB8 != -1)
    {
      swift_once();
    }

    v32 = sub_261CFF7A4();
    __swift_project_value_buffer(v32, qword_27FEDC018);
    v33 = v31;
    v34 = sub_261CFF784();
    v35 = sub_261CFFE64();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_261AE2000, v34, v35, "ReminderEditingUI: fetching reminder for editing {reminderID: %@}", v36, 0xCu);
      sub_261AE6A40(v37, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v37, -1, -1);
      MEMORY[0x26671D560](v36, -1, -1);
    }

    sub_261CFE454();
    if (qword_280D21E90 != -1)
    {
      swift_once();
    }

    v42 = sub_261CFE434();
    v43 = sub_261B026B0(v42, 1);
    v44 = v43;
    v45 = [v42 store];
    v46 = sub_261CFE444();

    v47 = [v46 updateReminder_];
    sub_261CFE374();

    sub_261BDCB40(v11, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  }

  v48 = sub_261CFE394();
  (*(*(v48 - 8) + 56))(v19, 0, 1, v48);
  sub_261BDDF34(v19, v43, a1, v51);

  return sub_261AE6A40(v19, &qword_27FEDC038, &qword_261D09118);
}

void sub_261BDDEAC(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_261CFE454();
  v4 = [v3 store];
  v5 = sub_261CFE444();

  v6 = [v5 updateReminder_];
  *a2 = v6;
}

void sub_261BDDF34(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v57 = a4;
  v58 = a3;
  v6 = sub_261CFE834();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB248, &qword_261D05728);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC078, &qword_261D09200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - v14;
  v16 = sub_261CFE324();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC038, &qword_261D09118);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v51 - v23;
  v25 = sub_261CFE394();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261BE095C(a1, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_261AE6A40(v24, &qword_27FEDC038, &qword_261D09118);
    sub_261CFE3D4();
    v30 = sub_261CFE3C4();
    v31 = 0;
    v32 = 0;
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
    v33 = *(v58 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 24));
    v34 = a2;
    sub_261CFE744();
    v35 = *MEMORY[0x277D45D68];
    v36 = *(v17 + 104);
    v52 = v16;
    v36(v20, v35, v16);
    sub_261CFE3D4();
    v37 = sub_261CFDD44();
    v38 = v15;
    (*(*(v37 - 8) + 56))(v15, 1, 1, v37);
    v39 = sub_261CFE814();
    v40 = v53;
    (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
    v41 = v54;
    sub_261CFE824();
    v42 = sub_261CFE3B4();
    v51 = v20;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    (*(v55 + 8))(v41, v56);
    sub_261AE6A40(v40, &qword_27FEDB248, &qword_261D05728);
    sub_261AE6A40(v38, &qword_27FEDC078, &qword_261D09200);
    (*(v17 + 8))(v51, v52);
    (*(v26 + 8))(v29, v25);
  }

  v45 = *(v58 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 20));
  type metadata accessor for RemindersInCalendarIOSReminderEditingPresenter();
  v46 = swift_allocObject();
  v46[3] = 0;
  swift_unknownObjectWeakInit();
  v46[4] = v45;
  v46[5] = v31;
  v46[6] = v32;
  if (v31)
  {
    swift_getObjectType();
    sub_261BE09CC();
    v47 = v45;
    swift_unknownObjectRetain();
    sub_261CFCDA4();
    v48 = v30;
    sub_261CFE624();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = v45;
  }

  v50 = v57;
  *v57 = v30;
  v50[1] = v46;
  v50[2] = &off_287447638;
}

void sub_261BDE4C8(void *a1, uint64_t a2, void *a3)
{
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  sub_261CFFE34();
  v5 = [a3 titleAsString];
  if (v5)
  {
    v6 = v5;
    v7 = sub_261CFFA74();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  sub_261C92A18(v7, v9);

  v10 = sub_261CFFA54();

  [a1 setActionName_];
}

id sub_261BDE5D8@<X0>(id a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v4 = [a1 fetchReminderWithObjectID:a2 error:v9];
  v5 = v9[0];
  if (v4)
  {
    *a3 = v4;
    result = v5;
  }

  else
  {
    v7 = v9[0];
    sub_261CFD654();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_261BDE690@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_261BDE69C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC088, &qword_261D09208);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC090, &qword_261D09210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC098, &qword_261D09218);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0A0, &qword_261D09220);
  v72 = *(v74 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v69 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0A8, &qword_261D09228);
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v73 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0B0, &qword_261D09230);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0B8, &qword_261D09238);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  v27 = [a1 objectID];
  v28 = sub_261C14814();
  if (v28)
  {
    v59 = v14;
    v29 = v28;
    v67 = v28;
    v30 = [a1 store];
    v64 = v17;
    v31 = v30;
    v78 = v29;
    sub_261CFED04();
    v32 = sub_261CFECE4();
    v65 = v18;
    v33 = v32;
    v77 = v32;
    v34 = sub_261CFFEE4();
    (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
    v62 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB720, &qword_261D09240);
    v63 = v22;
    v58 = v21;
    sub_261B05020(0, &qword_280D21DD8, 0x277D85C78);
    v66 = v23;
    sub_261B01D28(&qword_27FEDB728, &qword_27FEDB720, &qword_261D09240);
    sub_261BE0A24(&qword_27FEDC0C0, &qword_280D21DD8, 0x277D85C78);
    v35 = v68;
    sub_261CFF854();
    sub_261AE6A40(v8, &qword_27FEDC090, &qword_261D09210);

    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    *(v36 + 24) = v27;
    v61 = v31;
    v60 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0C8, &qword_261D09248);
    sub_261B01D28(&qword_27FEDC0D0, &qword_27FEDC098, &qword_261D09218);
    v37 = v69;
    v38 = v71;
    sub_261CFF844();

    (*(v70 + 8))(v35, v38);
    v78 = 0;
    sub_261B01D28(&qword_27FEDC0D8, &qword_27FEDC0A0, &qword_261D09220);
    v40 = v73;
    v39 = v74;
    sub_261CFF824();
    (*(v72 + 8))(v37, v39);
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    sub_261B01D28(&qword_27FEDC0E0, &qword_27FEDC0A8, &qword_261D09228);
    v42 = v58;
    v41 = v59;
    sub_261CFF814();
    (*(v75 + 8))(v40, v41);
    v43 = [objc_opt_self() mainRunLoop];
    v78 = v43;
    v44 = sub_261D00134();
    v45 = v76;
    (*(*(v44 - 8) + 56))(v76, 1, 1, v44);
    sub_261B05020(0, &qword_27FEDC0E8, 0x277CBEB88);
    sub_261B01D28(&qword_27FEDC0F0, &qword_27FEDC0B0, &qword_261D09230);
    sub_261BE0A24(&qword_27FEDC0F8, &qword_27FEDC0E8, 0x277CBEB88);
    v46 = v62;
    v47 = v64;
    sub_261CFF854();
    sub_261AE6A40(v45, &qword_27FEDC088, &qword_261D09208);

    (*(v65 + 8))(v42, v47);
    sub_261B01D28(&qword_27FEDC100, &qword_27FEDC0B8, &qword_261D09238);
    v48 = v63;
    v49 = sub_261CFF804();

    (*(v66 + 8))(v46, v48);
  }

  else
  {
    if (qword_27FED9AB8 != -1)
    {
      swift_once();
    }

    v50 = sub_261CFF7A4();
    __swift_project_value_buffer(v50, qword_27FEDC018);
    v51 = v27;
    v52 = sub_261CFF784();
    v53 = sub_261CFFE64();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&dword_261AE2000, v52, v53, "ReminderCreationUI: reminder does not have saveByCreationModuleDidFinish {objectID: %@}", v54, 0xCu);
      sub_261AE6A40(v55, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v55, -1, -1);
      MEMORY[0x26671D560](v54, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v49;
}

char *_s28ReminderEditingConfigurationVwCP(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];
    sub_261CFCDA4();
  }

  else
  {
    type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = *a2;
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      v9 = v8;
    }

    else
    {
      v11 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
      v12 = sub_261CFD4E4();
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v8;
      if (v14(&a2[v11], 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(&a1[v11], &a2[v11], *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v13 + 16))(&a1[v11], &a2[v11], v12);
        (*(v13 + 56))(&a1[v11], 0, 1, v12);
      }
    }

    swift_storeEnumTagMultiPayload();
    v17 = a3[5];
    v18 = a3[6];
    v19 = *&a2[v17];
    *&a1[v17] = v19;
    a1[v18] = a2[v18];
    v20 = a3[7];
    v21 = a3[8];
    v23 = *&a2[v20];
    v22 = *&a2[v20 + 16];
    v24 = &a1[v20];
    *v24 = v23;
    *(v24 + 1) = v22;
    a1[v21] = a2[v21];
    v25 = a3[10];
    a1[a3[9]] = a2[a3[9]];
    a1[v25] = a2[v25];
    v26 = v19;
  }

  return a1;
}

void _s28ReminderEditingConfigurationVwxx(id *a1, uint64_t a2)
{
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v5 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
    v6 = sub_261CFD4E4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(a1 + v5, 1, v6))
    {
      (*(v7 + 8))(a1 + v5, v6);
    }
  }

  v8 = *(a1 + *(a2 + 20));
}

void **_s28ReminderEditingConfigurationVwcp(void **a1, void **a2, int *a3)
{
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *a2;
  *a1 = *a2;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = v7;
  }

  else
  {
    v9 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
    v10 = sub_261CFD4E4();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
    }
  }

  swift_storeEnumTagMultiPayload();
  v15 = a3[5];
  v16 = a3[6];
  v17 = *(a2 + v15);
  *(a1 + v15) = v17;
  *(a1 + v16) = *(a2 + v16);
  v18 = a3[7];
  v19 = a3[8];
  v21 = *(a2 + v18);
  v20 = *(a2 + v18 + 16);
  v22 = (a1 + v18);
  *v22 = v21;
  v22[1] = v20;
  *(a1 + v19) = *(a2 + v19);
  v23 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v23) = *(a2 + v23);
  v24 = v17;
  return a1;
}

void **_s28ReminderEditingConfigurationVwca(void **a1, void **a2, int *a3)
{
  if (a1 != a2)
  {
    sub_261BDCB40(a1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *a2;
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      v8 = v7;
    }

    else
    {
      v9 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
      v10 = sub_261CFD4E4();
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      v13 = v7;
      if (v12(a2 + v9, 1, v10))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
      }

      else
      {
        (*(v11 + 16))(a1 + v9, a2 + v9, v10);
        (*(v11 + 56))(a1 + v9, 0, 1, v10);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  v15 = a3[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  *(a1 + v15) = v17;
  v18 = v17;

  *(a1 + a3[6]) = *(a2 + a3[6]);
  v19 = a3[7];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  *v20 = *v21;
  v20[1] = v21[1];
  v20[2] = v21[2];
  v20[3] = v21[3];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

void *_s28ReminderEditingConfigurationVwtk(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
    v8 = sub_261CFD4E4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2 + v7, 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(a1 + v7, a2 + v7, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a1 + v7, a2 + v7, v8);
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  v11 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[7];
  v13 = a3[8];
  v14 = *(a2 + v12);
  v15 = *(a2 + v12 + 16);
  v16 = (a1 + v12);
  *v16 = v14;
  v16[1] = v15;
  *(a1 + v13) = *(a2 + v13);
  v17 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v17) = *(a2 + v17);
  return a1;
}

void *_s28ReminderEditingConfigurationVwta(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_261BDCB40(a1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v7 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
      v8 = sub_261CFD4E4();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(a2 + v7, 1, v8))
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(a1 + v7, a2 + v7, *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v9 + 32))(a1 + v7, a2 + v7, v8);
        (*(v9 + 56))(a1 + v7, 0, 1, v8);
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  v11 = a3[5];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  v13 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v17) = *(a2 + v17);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t sub_261BDFAE8()
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *_s28ReminderEditingConfigurationV17ReminderSpecifierOwCP(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];
    sub_261CFCDA4();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *a2;
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      v8 = v7;
    }

    else
    {
      v10 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
      v11 = sub_261CFD4E4();
      v12 = *(v11 - 8);
      v13 = *(v12 + 48);
      v14 = v7;
      if (v13(&a2[v10], 1, v11))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(&a1[v10], &a2[v10], *(*(v15 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(&a1[v10], &a2[v10], v11);
        (*(v12 + 56))(&a1[v10], 0, 1, v11);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void _s28ReminderEditingConfigurationV17ReminderSpecifierOwxx(id *a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
    v4 = sub_261CFD4E4();
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(a1 + v3, 1, v4))
    {
      v5 = *(v6 + 8);

      v5(a1 + v3, v4);
    }
  }
}

void **_s28ReminderEditingConfigurationV17ReminderSpecifierOwcp(void **a1, void **a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *a2;
  *a1 = *a2;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = v5;
  }

  else
  {
    v7 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
    v8 = sub_261CFD4E4();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v5;
    if (v10(a2 + v7, 1, v8))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(a1 + v7, a2 + v7, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(a1 + v7, a2 + v7, v8);
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **_s28ReminderEditingConfigurationV17ReminderSpecifierOwca(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_261BDCB40(a1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *a2;
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = v5;
    }

    else
    {
      v7 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
      v8 = sub_261CFD4E4();
      v9 = *(v8 - 8);
      v10 = *(v9 + 48);
      v11 = v5;
      if (v10(a2 + v7, 1, v8))
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(a1 + v7, a2 + v7, *(*(v12 - 8) + 64));
      }

      else
      {
        (*(v9 + 16))(a1 + v7, a2 + v7, v8);
        (*(v9 + 56))(a1 + v7, 0, 1, v8);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *_s28ReminderEditingConfigurationV17ReminderSpecifierOwtk(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
    v9 = sub_261CFD4E4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2 + v8, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(a1 + v8, a2 + v8, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 32))(a1 + v8, a2 + v8, v9);
      (*(v10 + 56))(a1 + v8, 0, 1, v9);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *_s28ReminderEditingConfigurationV17ReminderSpecifierOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_261BDCB40(a1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
    v9 = sub_261CFD4E4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&a2[v8], 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 32))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_261BE0448()
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t _s21ReminderEditingModuleVwxx(uint64_t a1)
{
  v2 = *(a1 + 8);

  return swift_unknownObjectRelease();
}

uint64_t _s21ReminderEditingModuleVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a1 + 8);
  *(a1 + 8) = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = v8;
  return a1;
}

uint64_t _s21ReminderEditingModuleVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 8);
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = v4;
  return a1;
}

void sub_261BE05D8(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    v22 = a3;
    if ([a2 canUndo])
    {
      if (qword_27FED9AB8 != -1)
      {
        swift_once();
      }

      v5 = sub_261CFF7A4();
      __swift_project_value_buffer(v5, qword_27FEDC018);
      v6 = sub_261CFF784();
      v7 = sub_261CFFE54();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_261AE2000, v6, v7, "ReminderEditingUI: register undo", v8, 2u);
        MEMORY[0x26671D560](v8, -1, -1);
      }

      MEMORY[0x28223BE20](v9);
      v10 = v22;
      v11 = [v10 groupsByEvent];
      if (v11)
      {
        if (qword_280D21E90 != -1)
        {
          swift_once();
        }

        sub_261CFFE34();
        v12 = [a1 titleAsString];
        if (v12)
        {
          v13 = v12;
          v14 = sub_261CFFA74();
          v16 = v15;
        }

        else
        {
          v14 = 0;
          v16 = 0xE000000000000000;
        }

        sub_261C92A18(v14, v16);

        v21 = sub_261CFFA54();

        [v10 setActionName_];
      }

      else
      {
        MEMORY[0x28223BE20](v11);
        sub_261CFFE44();
      }
    }

    else
    {
      if (qword_27FED9AB8 != -1)
      {
        swift_once();
      }

      v17 = sub_261CFF7A4();
      __swift_project_value_buffer(v17, qword_27FEDC018);
      v18 = sub_261CFF784();
      v19 = sub_261CFFE54();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261AE2000, v18, v19, "ReminderEditingUI: no undo actions to register", v20, 2u);
        MEMORY[0x26671D560](v20, -1, -1);
      }
    }
  }
}

uint64_t sub_261BE095C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC038, &qword_261D09118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261BE09CC()
{
  result = qword_27FEDC080;
  if (!qword_27FEDC080)
  {
    type metadata accessor for RemindersInCalendarIOSReminderEditingPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC080);
  }

  return result;
}

uint64_t sub_261BE0A24(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_261B05020(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261BE0A8C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC108);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC108);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BE0BE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_261BE0C08, 0, 0);
}

void sub_261BE0C08()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v39 = v1 + 40;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v40 = v4;
      v5 = (v39 + 16 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= v2)
        {
          __break(1u);
LABEL_114:
          __break(1u);
          return;
        }

        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_114;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        sub_261CFD104();
        v9 = byte_287440CF0;
        v10 = 0xD000000000000027;
        v11 = 0xD000000000000026;
        v12 = "ers.smartlist.completed";
        if (byte_287440CF0 != 4)
        {
          v11 = 0xD000000000000027;
          v12 = " Hidden Property Title";
        }

        if (byte_287440CF0 == 3)
        {
          v11 = 0xD000000000000025;
          v12 = "ers.smartlist.assigned";
        }

        if (byte_287440CF0 != 1)
        {
          v10 = 0xD000000000000021;
        }

        v13 = "ers.smartlist.all";
        if (byte_287440CF0 != 1)
        {
          v13 = "ers.smartlist.flagged";
        }

        if (!byte_287440CF0)
        {
          v10 = 0xD000000000000023;
          v13 = "ers.smartlist.scheduled";
        }

        v14 = byte_287440CF0 <= 2u ? v10 : v11;
        v15 = byte_287440CF0 <= 2u ? v13 : v12;
        if (v14 == v8 && (v15 | 0x8000000000000000) == v7)
        {
          break;
        }

        v16 = sub_261D00614();

        if (v16)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF1;
        if (byte_287440CF1 > 2u)
        {
          if (byte_287440CF1 == 3)
          {
            v19 = 0xD000000000000025;
            v20 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF1 == 4)
          {
            v19 = 0xD000000000000026;
            v20 = "ers.smartlist.completed";
          }

          else
          {
            v19 = 0xD000000000000027;
            v20 = " Hidden Property Title";
          }
        }

        else
        {
          v17 = 0xD000000000000021;
          if (byte_287440CF1 == 1)
          {
            v17 = 0xD000000000000027;
          }

          v18 = "ers.smartlist.all";
          if (byte_287440CF1 != 1)
          {
            v18 = "ers.smartlist.flagged";
          }

          if (byte_287440CF1)
          {
            v19 = v17;
          }

          else
          {
            v19 = 0xD000000000000023;
          }

          v20 = "ers.smartlist.scheduled";
          if (byte_287440CF1)
          {
            v20 = v18;
          }
        }

        if (v19 == v8 && (v20 | 0x8000000000000000) == v7)
        {
          break;
        }

        v21 = sub_261D00614();

        if (v21)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF2;
        if (byte_287440CF2 > 2u)
        {
          if (byte_287440CF2 == 3)
          {
            v22 = 0xD000000000000025;
            v23 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF2 == 4)
          {
            v22 = 0xD000000000000026;
            v23 = "ers.smartlist.completed";
          }

          else
          {
            v22 = 0xD000000000000027;
            v23 = " Hidden Property Title";
          }
        }

        else if (byte_287440CF2)
        {
          if (byte_287440CF2 == 1)
          {
            v22 = 0xD000000000000027;
            v23 = "ers.smartlist.all";
          }

          else
          {
            v22 = 0xD000000000000021;
            v23 = "ers.smartlist.flagged";
          }
        }

        else
        {
          v22 = 0xD000000000000023;
          v23 = "ers.smartlist.scheduled";
        }

        if (v22 == v8 && (v23 | 0x8000000000000000) == v7)
        {
          break;
        }

        v24 = sub_261D00614();

        if (v24)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF3;
        if (byte_287440CF3 > 2u)
        {
          if (byte_287440CF3 == 3)
          {
            v25 = 0xD000000000000025;
            v26 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF3 == 4)
          {
            v25 = 0xD000000000000026;
            v26 = "ers.smartlist.completed";
          }

          else
          {
            v25 = 0xD000000000000027;
            v26 = " Hidden Property Title";
          }
        }

        else if (byte_287440CF3)
        {
          if (byte_287440CF3 == 1)
          {
            v25 = 0xD000000000000027;
            v26 = "ers.smartlist.all";
          }

          else
          {
            v25 = 0xD000000000000021;
            v26 = "ers.smartlist.flagged";
          }
        }

        else
        {
          v25 = 0xD000000000000023;
          v26 = "ers.smartlist.scheduled";
        }

        if (v25 == v8 && (v26 | 0x8000000000000000) == v7)
        {
          break;
        }

        v27 = sub_261D00614();

        if (v27)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF4;
        if (byte_287440CF4 > 2u)
        {
          if (byte_287440CF4 == 3)
          {
            v28 = 0xD000000000000025;
            v29 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF4 == 4)
          {
            v28 = 0xD000000000000026;
            v29 = "ers.smartlist.completed";
          }

          else
          {
            v28 = 0xD000000000000027;
            v29 = " Hidden Property Title";
          }
        }

        else if (byte_287440CF4)
        {
          if (byte_287440CF4 == 1)
          {
            v28 = 0xD000000000000027;
            v29 = "ers.smartlist.all";
          }

          else
          {
            v28 = 0xD000000000000021;
            v29 = "ers.smartlist.flagged";
          }
        }

        else
        {
          v28 = 0xD000000000000023;
          v29 = "ers.smartlist.scheduled";
        }

        if (v28 == v8 && (v29 | 0x8000000000000000) == v7)
        {
          break;
        }

        v30 = sub_261D00614();

        if (v30)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF5;
        if (byte_287440CF5 > 2u)
        {
          if (byte_287440CF5 == 3)
          {
            v31 = 0xD000000000000025;
            v32 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF5 == 4)
          {
            v31 = 0xD000000000000026;
            v32 = "ers.smartlist.completed";
          }

          else
          {
            v31 = 0xD000000000000027;
            v32 = " Hidden Property Title";
          }
        }

        else if (byte_287440CF5)
        {
          if (byte_287440CF5 == 1)
          {
            v31 = 0xD000000000000027;
            v32 = "ers.smartlist.all";
          }

          else
          {
            v31 = 0xD000000000000021;
            v32 = "ers.smartlist.flagged";
          }
        }

        else
        {
          v31 = 0xD000000000000023;
          v32 = "ers.smartlist.scheduled";
        }

        if (v31 == v8 && (v32 | 0x8000000000000000) == v7)
        {
          break;
        }

        v33 = sub_261D00614();

        if (v33)
        {
          goto LABEL_103;
        }

        ++v6;
        v5 += 2;
        if (v3 == v2)
        {
          v4 = v40;
          goto LABEL_110;
        }
      }

LABEL_103:

      v4 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_261B42130(0, *(v40 + 2) + 1, 1, v40);
      }

      v35 = *(v4 + 2);
      v34 = *(v4 + 3);
      if (v35 >= v34 >> 1)
      {
        v4 = sub_261B42130((v34 > 1), v35 + 1, 1, v4);
      }

      *(v4 + 2) = v35 + 1;
      v4[v35 + 32] = v9;
    }

    while (v3 != v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_110:
  v38[4] = v4;
  v36 = swift_task_alloc();
  v38[5] = v36;
  *v36 = v38;
  v36[1] = sub_261BE1224;
  v37 = v38[3];

  sub_261BE15EC(v4);
}

uint64_t sub_261BE1224(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_261BE13B4;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_261BE134C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261BE134C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_261BE13B4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t REMStoreIntentPerformer.suggestedEntities(query:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261BE14B0;

  return sub_261BE15EC(&unk_287440CF8);
}

{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261B0D584;

  return sub_261C8ABA8();
}

uint64_t sub_261BE14B0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_261BE2F64, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_261BE15EC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC120, &unk_261D092B0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_261CFFE24();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BE1710, 0, 0);
}

uint64_t sub_261BE1710()
{
  v99 = v0;
  v98 = *MEMORY[0x277D85DE8];
  v1 = *(v0[4] + 16);
  v0[2] = 0;
  v2 = [v1 fetchPrimaryActiveCloudKitAccountWithError_];
  v3 = v0[2];
  v92 = v0;
  if (!v2)
  {
    v38 = v3;
    v39 = sub_261CFD654();

    swift_willThrow();
    goto LABEL_34;
  }

  v4 = v2;
  v5 = v3;
  v6 = [v4 capabilities];

  LODWORD(v4) = [v6 supportsPinnedLists];
  if (!v4)
  {
LABEL_34:
    v40 = v0[3];
    v41 = *(v40 + 16);
    if (!v41)
    {
      goto LABEL_171;
    }

    v42 = 0x656C756465686373;
    v43 = 0x7961646F74;
    v44 = (v40 + 32);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if (byte_287440CC8 > 2u)
      {
        if (byte_287440CC8 == 3)
        {
          v48 = 0xE700000000000000;
          v47 = 0x64656767616C66;
        }

        else if (byte_287440CC8 == 4)
        {
          v48 = 0xE800000000000000;
          v47 = 0x64656E6769737361;
        }

        else
        {
          v47 = 0x6574656C706D6F63;
          v48 = 0xE900000000000064;
        }
      }

      else
      {
        if (byte_287440CC8 == 1)
        {
          v45 = v42;
        }

        else
        {
          v45 = 7105633;
        }

        if (byte_287440CC8 == 1)
        {
          v46 = 0xE900000000000064;
        }

        else
        {
          v46 = 0xE300000000000000;
        }

        if (byte_287440CC8)
        {
          v47 = v45;
        }

        else
        {
          v47 = v43;
        }

        if (byte_287440CC8)
        {
          v48 = v46;
        }

        else
        {
          v48 = 0xE500000000000000;
        }
      }

      v50 = *v44++;
      v49 = v50;
      v51 = v50 == 4;
      v52 = 0x6574656C706D6F63;
      if (v50 == 4)
      {
        v52 = 0x64656E6769737361;
      }

      v53 = 0xE800000000000000;
      if (!v51)
      {
        v53 = 0xE900000000000064;
      }

      if (v49 == 3)
      {
        v52 = 0x64656767616C66;
        v53 = 0xE700000000000000;
      }

      v54 = v42;
      if (v49 == 1)
      {
        v55 = v42;
      }

      else
      {
        v55 = 7105633;
      }

      if (v49 == 1)
      {
        v56 = 0xE900000000000064;
      }

      else
      {
        v56 = 0xE300000000000000;
      }

      if (!v49)
      {
        v55 = v43;
        v56 = 0xE500000000000000;
      }

      if (v49 <= 2)
      {
        v57 = v55;
      }

      else
      {
        v57 = v52;
      }

      if (v49 <= 2)
      {
        v58 = v56;
      }

      else
      {
        v58 = v53;
      }

      v59 = v43;
      if (v47 == v57 && v48 == v58)
      {
LABEL_76:

LABEL_78:
        v95[0] = v49;
        SmartListEntity.init(type:isHidden:)(v95, 2, &v96);
        v94 = v96;
        v61 = v97;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_261B42010(0, *(v15 + 2) + 1, 1, v15);
        }

        v63 = *(v15 + 2);
        v62 = *(v15 + 3);
        if (v63 >= v62 >> 1)
        {
          v80 = sub_261B42010((v62 > 1), v63 + 1, 1, v15);
          v43 = v59;
          v15 = v80;
        }

        else
        {
          v43 = v59;
        }

        *(v15 + 2) = v63 + 1;
        v64 = &v15[24 * v63];
        *(v64 + 2) = v94;
        *(v64 + 6) = v61;
        goto LABEL_83;
      }

      v60 = sub_261D00614();

      if (v60)
      {
        goto LABEL_78;
      }

      if (byte_287440CC9 > 2u)
      {
        v65 = v54;
        if (byte_287440CC9 == 3)
        {
          v67 = 0xE700000000000000;
          v66 = 0x64656767616C66;
          if (v49 <= 2)
          {
            goto LABEL_104;
          }

          goto LABEL_96;
        }

        if (byte_287440CC9 == 4)
        {
          v67 = 0xE800000000000000;
          v66 = 0x64656E6769737361;
          if (v49 <= 2)
          {
            goto LABEL_104;
          }

          goto LABEL_96;
        }

        v66 = 0x6574656C706D6F63;
      }

      else
      {
        v65 = v54;
        if (!byte_287440CC9)
        {
          v67 = 0xE500000000000000;
          v66 = v59;
          if (v49 <= 2)
          {
            goto LABEL_104;
          }

          goto LABEL_96;
        }

        if (byte_287440CC9 != 1)
        {
          v67 = 0xE300000000000000;
          v66 = 7105633;
          if (v49 <= 2)
          {
            goto LABEL_104;
          }

          goto LABEL_96;
        }

        v66 = v54;
      }

      v67 = 0xE900000000000064;
      if (v49 <= 2)
      {
LABEL_104:
        if (v49)
        {
          if (v49 == 1)
          {
            goto LABEL_109;
          }

          v68 = 0xE300000000000000;
          v65 = 7105633;
        }

        else
        {
          v68 = 0xE500000000000000;
          v65 = v59;
        }

        goto LABEL_110;
      }

LABEL_96:
      if (v49 == 3)
      {
        v68 = 0xE700000000000000;
        v65 = 0x64656767616C66;
      }

      else
      {
        if (v49 != 4)
        {
          v65 = 0x6574656C706D6F63;
LABEL_109:
          v68 = 0xE900000000000064;
          goto LABEL_110;
        }

        v68 = 0xE800000000000000;
        v65 = 0x64656E6769737361;
      }

LABEL_110:
      if (v66 == v65 && v67 == v68)
      {
        goto LABEL_76;
      }

      v69 = sub_261D00614();

      if (v69)
      {
        goto LABEL_78;
      }

      if (byte_287440CCA > 2u)
      {
        v70 = v54;
        if (byte_287440CCA == 3)
        {
          v72 = 0xE700000000000000;
          v71 = 0x64656767616C66;
          if (v49 <= 2)
          {
            goto LABEL_132;
          }

          goto LABEL_124;
        }

        if (byte_287440CCA == 4)
        {
          v72 = 0xE800000000000000;
          v71 = 0x64656E6769737361;
          if (v49 <= 2)
          {
            goto LABEL_132;
          }

          goto LABEL_124;
        }

        v71 = 0x6574656C706D6F63;
      }

      else
      {
        v70 = v54;
        if (!byte_287440CCA)
        {
          v72 = 0xE500000000000000;
          v71 = v59;
          if (v49 <= 2)
          {
            goto LABEL_132;
          }

          goto LABEL_124;
        }

        if (byte_287440CCA != 1)
        {
          v72 = 0xE300000000000000;
          v71 = 7105633;
          if (v49 <= 2)
          {
            goto LABEL_132;
          }

          goto LABEL_124;
        }

        v71 = v54;
      }

      v72 = 0xE900000000000064;
      if (v49 <= 2)
      {
LABEL_132:
        if (v49)
        {
          if (v49 == 1)
          {
            goto LABEL_137;
          }

          v73 = 0xE300000000000000;
          v70 = 7105633;
        }

        else
        {
          v73 = 0xE500000000000000;
          v70 = v59;
        }

        goto LABEL_138;
      }

LABEL_124:
      if (v49 == 3)
      {
        v73 = 0xE700000000000000;
        v70 = 0x64656767616C66;
      }

      else
      {
        if (v49 != 4)
        {
          v70 = 0x6574656C706D6F63;
LABEL_137:
          v73 = 0xE900000000000064;
          goto LABEL_138;
        }

        v73 = 0xE800000000000000;
        v70 = 0x64656E6769737361;
      }

LABEL_138:
      if (v71 == v70 && v72 == v73)
      {
        goto LABEL_76;
      }

      v74 = sub_261D00614();

      if (v74)
      {
        goto LABEL_78;
      }

      if (byte_287440CCB > 2u)
      {
        v75 = v54;
        if (byte_287440CCB == 3)
        {
          v77 = 0xE700000000000000;
          v76 = 0x64656767616C66;
          if (v49 <= 2)
          {
            goto LABEL_160;
          }

          goto LABEL_152;
        }

        if (byte_287440CCB == 4)
        {
          v77 = 0xE800000000000000;
          v76 = 0x64656E6769737361;
          if (v49 <= 2)
          {
            goto LABEL_160;
          }

          goto LABEL_152;
        }

        v76 = 0x6574656C706D6F63;
      }

      else
      {
        v75 = v54;
        if (!byte_287440CCB)
        {
          v77 = 0xE500000000000000;
          v76 = v59;
          if (v49 <= 2)
          {
            goto LABEL_160;
          }

          goto LABEL_152;
        }

        if (byte_287440CCB != 1)
        {
          v77 = 0xE300000000000000;
          v76 = 7105633;
          if (v49 <= 2)
          {
            goto LABEL_160;
          }

          goto LABEL_152;
        }

        v76 = v54;
      }

      v77 = 0xE900000000000064;
      if (v49 <= 2)
      {
LABEL_160:
        if (v49)
        {
          if (v49 == 1)
          {
            goto LABEL_165;
          }

          v78 = 0xE300000000000000;
          v75 = 7105633;
        }

        else
        {
          v78 = 0xE500000000000000;
          v75 = v59;
        }

        goto LABEL_166;
      }

LABEL_152:
      if (v49 == 3)
      {
        v78 = 0xE700000000000000;
        v75 = 0x64656767616C66;
      }

      else
      {
        if (v49 != 4)
        {
          v75 = 0x6574656C706D6F63;
LABEL_165:
          v78 = 0xE900000000000064;
          goto LABEL_166;
        }

        v78 = 0xE800000000000000;
        v75 = 0x64656E6769737361;
      }

LABEL_166:
      if (v76 == v75 && v77 == v78)
      {
        goto LABEL_76;
      }

      v79 = sub_261D00614();

      if (v79)
      {
        goto LABEL_78;
      }

      v43 = v59;
LABEL_83:
      --v41;
      v42 = v54;
      if (!v41)
      {
        goto LABEL_172;
      }
    }
  }

  v7 = v0[3];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_171:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_172;
  }

  v9 = v0[7];
  v10 = (v7 + 32);
  v11 = *MEMORY[0x277D44B90];
  v12 = *MEMORY[0x277D44B88];
  v13 = *MEMORY[0x277D44BA0];
  v14 = *MEMORY[0x277D44B80];
  v93 = *MEMORY[0x277D44BA8];
  v87 = (v9 + 32);
  v88 = (v9 + 8);
  v90 = *MEMORY[0x277D44BC0];
  v91 = (v9 + 48);
  v15 = MEMORY[0x277D84F90];
  v86 = *MEMORY[0x277D44B80];
  do
  {
    while (1)
    {
      v17 = *v10++;
      v16 = v17;
      if (v17 == 4)
      {
        v18 = v12;
      }

      else
      {
        v18 = v11;
      }

      if (v16 == 3)
      {
        v18 = v13;
      }

      v19 = v93;
      if (v16 != 1)
      {
        v19 = v14;
      }

      if (!v16)
      {
        v19 = v90;
      }

      v20 = (v16 <= 2 ? v19 : v18);
      v22 = v92[5];
      v21 = v92[6];
      v23 = v20;
      sub_261CFFE14();
      if ((*v91)(v22, 1, v21) != 1)
      {
        break;
      }

      sub_261AE6A40(v92[5], &qword_27FEDC120, &unk_261D092B0);
      if (!--v8)
      {
        goto LABEL_172;
      }
    }

    v24 = v12;
    v25 = v11;
    (*v87)(v92[8], v92[5], v92[6]);
    v26 = sub_261D00124();
    v27 = v92[8];
    v28 = v92[6];
    v29 = v26;
    SmartListType.init(remSmartListType:)([v26 smartListType], &v96);
    v30 = v96;
    if (v96 == 6)
    {
      v30 = 0;
    }

    v95[0] = v30;
    v31 = sub_261CFFE04();
    if (v31 == 2)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    if (v31 == 1)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    SmartListEntity.init(type:isHidden:)(v95, v33, &v96);

    (*v88)(v27, v28);
    v89 = v96;
    v34 = v97;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_261B42010(0, *(v15 + 2) + 1, 1, v15);
    }

    v11 = v25;
    v36 = *(v15 + 2);
    v35 = *(v15 + 3);
    v12 = v24;
    if (v36 >= v35 >> 1)
    {
      v15 = sub_261B42010((v35 > 1), v36 + 1, 1, v15);
    }

    v14 = v86;
    *(v15 + 2) = v36 + 1;
    v37 = &v15[24 * v36];
    *(v37 + 2) = v89;
    *(v37 + 6) = v34;
    --v8;
  }

  while (v8);
LABEL_172:
  v81 = v92[8];
  v82 = v92[5];

  v83 = v92[1];
  v84 = *MEMORY[0x277D85DE8];

  return v83(v15);
}

uint64_t REMStoreIntentPerformer.allEntities(query:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261BE2300;

  return sub_261BE15EC(&unk_287440D20);
}

uint64_t sub_261BE2300(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_261BE243C, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t REMStoreIntentPerformer.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[8] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_261CFD0B4();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = sub_261CFD6A4();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BE25C4, 0, 0);
}

uint64_t sub_261BE25C4()
{
  v44 = v0;
  if (qword_27FED9AC0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDC108);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v43 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_261B879C8(v6, v5, &v43);
    _os_log_impl(&dword_261AE2000, v3, v4, "[SmartListEntityQueryPerforming] Query smart list matching string %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  if (qword_280D223E0 != -1)
  {
    swift_once();
  }

  v9 = 0;
  v10 = v0[16];
  v11 = off_280D223E8;
  v40 = v0[13];
  v39 = (v10 + 32);
  v37 = (v10 + 8);
  v38 = (v10 + 16);
  v12 = MEMORY[0x277D84F90];
  v41 = off_280D223E8;
  do
  {
    v42 = byte_287441648[v9 + 32];
    if (v11[2] && (v13 = sub_261B37E0C(byte_287441648[v9 + 32]), (v14 & 1) != 0))
    {
      v15 = v0[18];
      v16 = v0[19];
      v17 = v0[17];
      v18 = v0[14];
      v19 = v0[15];
      v20 = v0[12];
      (*(v40 + 16))(v18, v11[7] + *(v40 + 72) * v13, v20);
      sub_261CFD084();
      (*(v40 + 8))(v18, v20);
      (*v39)(v16, v15, v19);
      (*v38)(v17, v16, v19);
      v21 = sub_261CFFA94();
      v23 = v22;
      (*v37)(v16, v19);
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = v0[11];
    v25 = v0[8];
    v26 = v0[9];
    v0[2] = v21;
    v0[3] = v23;
    sub_261CFD874();
    v27 = sub_261CFD884();
    (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
    sub_261B3BA3C();
    v28 = sub_261D00194();
    v30 = v29;
    sub_261AE6A40(v24, &qword_27FEDA708, &qword_261D03298);

    v0[4] = v28;
    v0[5] = v30;
    v0[6] = v25;
    v0[7] = v26;
    LOBYTE(v28) = sub_261D00184();

    if (v28)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_261B3A33C(0, *(v12 + 16) + 1, 1);
        v12 = v43;
      }

      v11 = v41;
      v33 = *(v12 + 16);
      v32 = *(v12 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_261B3A33C((v32 > 1), v33 + 1, 1);
        v12 = v43;
      }

      *(v12 + 16) = v33 + 1;
      *(v12 + v33 + 32) = v42;
    }

    else
    {
      v11 = v41;
    }

    v0[22] = v12;
    ++v9;
  }

  while (v9 != 6);
  v34 = swift_task_alloc();
  v0[20] = v34;
  *v34 = v0;
  v34[1] = sub_261BE2A68;
  v35 = v0[10];

  return sub_261BE15EC(v12);
}

uint64_t sub_261BE2A68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_261BE2C40;
  }

  else
  {
    *(v4 + 184) = a1;
    v7 = sub_261BE2B90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261BE2B90()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];
  v8 = v0[23];

  return v7(v8);
}

uint64_t sub_261BE2C40()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];
  v8 = v0[21];

  return v7();
}

uint64_t sub_261BE2CEC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_261B4276C;

  return sub_261BE0BE8(a2);
}

uint64_t sub_261BE2D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:matching:)(v8, a2, a3);
}

uint64_t sub_261BE2E2C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261BE14B0;

  return sub_261BE15EC(&unk_287440CF8);
}

uint64_t sub_261BE2EC8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261BE14B0;

  return sub_261BE15EC(&unk_287440D20);
}

uint64_t OpenSearchAppIntent.searchPhrase.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261BE2FAC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC128);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC128);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t OpenSearchAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = sub_261CFD184();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v34 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v32 - v13;
  v15 = sub_261CFD674();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261CFD884();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_261CFFA44();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_261CFD6A4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v16 + 104))(v19, *MEMORY[0x277CC9110], v15);
  sub_261CFD6C4();
  (*(v25 + 56))(v14, 1, 1, v24);
  v27 = sub_261CFF994();
  v39 = 0;
  v40 = 0;
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v28 = sub_261CFC834();
  (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  v29 = sub_261CFCD24();
  v30 = v37;
  *v37 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC158, &qword_261D092E0);
  v38 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v30[1] = result;
  return result;
}

uint64_t sub_261BE3594()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDC140);
  __swift_project_value_buffer(v9, qword_27FEDC140);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenSearchAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC140);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenSearchAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261BE3B18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261BE3B54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenSearchAppIntent.searchPhrase.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenSearchAppIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *v1;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return MEMORY[0x2822009F8](sub_261BE3D1C, v4, v3);
}

uint64_t sub_261BE3D1C()
{
  v18 = v0;
  if (qword_27FED9AC8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_261CFF7A4();
  __swift_project_value_buffer(v3, qword_27FEDC128);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v4 = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    sub_261CFCBB4();
    v9 = sub_261B879C8(v0[2], v0[3], &v17);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_261AE2000, v4, v5, "[AppIntent] Open Reminders and search for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v10 = v0[5];
  v11 = v0[6];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_261B07CF8;
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[4];

  return sub_261C58B68(v15, "OpenSearchAppIntent", 19, 2, v13, v14);
}

uint64_t sub_261BE3F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_261CFFD24();
  v3[12] = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261BE3FD8, v5, v4);
}

uint64_t sub_261BE3FD8()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_261B1EB3C(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v1;
  v0[8] = v2;
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_261BB5674;
  v8 = v0[9];

  return (v10)(v8, v0 + 7, v3, v4);
}

uint64_t sub_261BE4144()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t (*sub_261BE41AC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261BE4220@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC140);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BE42CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return OpenSearchAppIntent.perform()(a1);
}

unint64_t sub_261BE4388()
{
  result = qword_27FEDC160;
  if (!qword_27FEDC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC160);
  }

  return result;
}

unint64_t sub_261BE43E4()
{
  result = qword_27FEDC168;
  if (!qword_27FEDC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC168);
  }

  return result;
}

unint64_t sub_261BE443C()
{
  result = qword_27FEDC170;
  if (!qword_27FEDC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC170);
  }

  return result;
}

uint64_t dispatch thunk of OpenSearchAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_261BE4640()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC180);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC180);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static RemindersInCalendarUtilities.itemProviderWriter(for:)(uint64_t a1)
{
  v2 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B04F14(a1, v5);
  v6 = _s16ReminderDragItemCMa();
  v7 = objc_allocWithZone(v6);
  sub_261B04F14(v5, v7 + OBJC_IVAR____TtCO19RemindersAppIntents28RemindersInCalendarUtilities16ReminderDragItem_reminderSpecifier);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_261B04F78(v5);
  return v8;
}

uint64_t sub_261BE4858(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_261CFCDA4();
    v7 = v4;
    v4 = sub_261CFD774();
    v9 = v8;
  }

  else
  {
    sub_261CFCDA4();
    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_261BE4E4C(v4, v9);
}

void sub_261BE49A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_261CFD644();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_261CFD764();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id sub_261BE4A3C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  sub_261BE4DE8();
  _Block_copy(a4);
  if (sub_261D00004())
  {
    sub_261B7161C();
    v8 = sub_261CFFA54();

    v9 = sub_261CFFA54();
    v31 = sub_261BE4DE0;
    v32 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_261BE4858;
    v30 = &block_descriptor_0;
    v10 = _Block_copy(&aBlock);
    sub_261CFCDA4();

    v11 = [v8 loadDataWithTypeIdentifier:v9 forItemProviderCompletionHandler:v10];
    _Block_release(v10);

    return v11;
  }

  else
  {
    v13 = objc_opt_self();
    sub_261D00334();

    aBlock = 0xD00000000000001CLL;
    v28 = 0x8000000261D1D660;
    MEMORY[0x26671C210](a1, a2);
    v14 = sub_261CFFA54();

    v15 = [v13 internalErrorWithDebugDescription_];

    swift_willThrow();
    if (qword_27FED9AD8 != -1)
    {
      swift_once();
    }

    v16 = sub_261CFF7A4();
    __swift_project_value_buffer(v16, qword_27FEDC180);
    v17 = v15;
    v18 = sub_261CFF784();
    v19 = sub_261CFFE64();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock = v21;
      *v20 = 136446210;
      swift_getErrorValue();
      v22 = sub_261D00674();
      v24 = sub_261B879C8(v22, v23, &aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_261AE2000, v18, v19, "RemindersInCalendar: failed to load data for ReminderDragItem {error: %{public}s}", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26671D560](v21, -1, -1);
      MEMORY[0x26671D560](v20, -1, -1);
    }

    v25 = v15;
    v26 = sub_261CFD644();
    (a4)[2](a4, 0, v26);

    return 0;
  }
}

unint64_t sub_261BE4DE8()
{
  result = qword_27FEDC1F8;
  if (!qword_27FEDC1F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEDC1F8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

uint64_t sub_261BE4E4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261BE4E60(a1, a2);
  }

  return a1;
}

uint64_t sub_261BE4E60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OpenListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = sub_261CFD184();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v37 = &v36 - v14;
  v15 = sub_261CFD674();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261CFD884();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_261CFFA44();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_261CFD6A4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v27 = *MEMORY[0x277CC9110];
  v28 = *(v16 + 104);
  v28(v19, v27, v15);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v19, v27, v15);
  v29 = v37;
  sub_261CFD6C4();
  (*(v25 + 56))(v29, 0, 1, v24);
  v30 = type metadata accessor for ListEntity();
  (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
  v31 = sub_261CFC834();
  v32 = *(*(v31 - 8) + 56);
  v32(v39, 1, 1, v31);
  v32(v40, 1, 1, v31);
  (*(v42 + 104))(v41, *MEMORY[0x277CBA308], v43);
  sub_261B5F3AC(&qword_280D227A0);
  v33 = sub_261CFCC34();
  v34 = v44;
  *v44 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC278, &qword_261D094A0);
  v45 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v34[1] = result;
  return result;
}

uint64_t sub_261BE54EC()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDC260);
  __swift_project_value_buffer(v9, qword_27FEDC260);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261BE5A70(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_261B0A18C(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t OpenListAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*OpenListAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261BE5D18, v4, v3);
}

uint64_t sub_261BE5D18()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_261BB52D8;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_261C58F48)(v6, "OpenListAppIntent", 17, 2, v4, v5);
}

unint64_t sub_261BE5DF0()
{
  result = qword_27FEDC280;
  if (!qword_27FEDC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC280);
  }

  return result;
}

uint64_t sub_261BE5E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_261CFFD24();
  v3[12] = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261BE5F14, v5, v4);
}

uint64_t sub_261BE5F14()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_261B1F8E4(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v1;
  v0[8] = v2;
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_261BB5674;
  v8 = v0[9];

  return (v10)(v8, v0 + 7, v3, v4);
}

uint64_t sub_261BE6080(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261BE6110(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

unint64_t sub_261BE6188()
{
  result = qword_280D22BB0;
  if (!qword_280D22BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BB0);
  }

  return result;
}

unint64_t sub_261BE61E0()
{
  result = qword_280D22BB8;
  if (!qword_280D22BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BB8);
  }

  return result;
}

uint64_t sub_261BE62A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BE634C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261BE63EC, v4, v3);
}

uint64_t sub_261BE63EC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_261BB5C4C;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_261C58F48)(v6, "OpenListAppIntent", 17, 2, v4, v5);
}

uint64_t dispatch thunk of OpenListAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_261BE6628()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDC288);
  __swift_project_value_buffer(v9, qword_27FEDC288);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateSectionDisplayNameAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC288);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateSectionDisplayNameAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261BE6BD0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SectionEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B2EAD0(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_261B2EAD0(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B2EB34(v10);
}

uint64_t UpdateSectionDisplayNameAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for SectionEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B2EAD0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*UpdateSectionDisplayNameAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateSectionDisplayNameAppIntent.property.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t (*UpdateSectionDisplayNameAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BE6EF4()
{
  result = swift_getKeyPath();
  qword_27FEDC2A0 = result;
  return result;
}

uint64_t static UpdateSectionDisplayNameAppIntent.binding.getter()
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateSectionDisplayNameAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDC2A0 = a1;
}

uint64_t (*static UpdateSectionDisplayNameAppIntent.binding.modify())()
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BE709C@<X0>(void *a1@<X8>)
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDC2A0;
  return sub_261CFCDA4();
}

uint64_t sub_261BE711C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9AF0;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDC2A0 = v1;
}

uint64_t UpdateSectionDisplayNameAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = v47 - v3;
  v67 = sub_261CFD184();
  v69 = *(v67 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = v47 - v16;
  v17 = sub_261CFD674();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFD884();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_261CFFA44();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = sub_261CFD6A4();
  v59 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v47[1] = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA398, &unk_261D02CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = *(v18 + 104);
  v48 = *MEMORY[0x277CC9110];
  v30 = v48;
  v49 = v17;
  v31(v21, v48, v17);
  v51 = v31;
  v50 = v18 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v21, v30, v17);
  v32 = v64;
  sub_261CFD6C4();
  v33 = *(v27 + 56);
  v58 = v27 + 56;
  v60 = v33;
  v33(v32, 0, 1, v26);
  v34 = type metadata accessor for SectionEntity();
  (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
  v35 = sub_261CFC834();
  v54 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v55 = v37;
  v56 = v36 + 56;
  v37(v65, 1, 1, v35);
  v37(v62, 1, 1, v35);
  v52 = *MEMORY[0x277CBA308];
  v38 = *(v69 + 104);
  v69 += 104;
  v53 = v38;
  v38(v66);
  sub_261AE82F4(&qword_280D224E0, type metadata accessor for SectionEntity);
  *v68 = sub_261CFCC34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  sub_261CFF9B4();
  sub_261CFD874();
  v39 = v48;
  v40 = v49;
  v41 = v51;
  v51(v21, v48, v49);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v41(v21, v39, v40);
  v42 = v64;
  sub_261CFD6C4();
  v60(v42, 0, 1, v59);
  v43 = sub_261CFF994();
  v71 = 0;
  v72 = 0;
  (*(*(v43 - 8) + 56))(v63, 1, 1, v43);
  v55(v65, 1, 1, v54);
  v53(v66, v52, v67);
  v44 = sub_261CFCD24();
  v45 = v68;
  v68[1] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A8, &qword_261D02CF0);
  v70 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v45[2] = result;
  return result;
}

uint64_t UpdateSectionDisplayNameAppIntent.perform()(uint64_t a1)
{
  *(v2 + 208) = a1;
  v3 = sub_261CFC9D4();
  *(v2 + 216) = v3;
  v4 = *(v3 - 8);
  *(v2 + 224) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300) - 8) + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3B0, &qword_261D02D00);
  *(v2 + 256) = v7;
  v8 = *(v7 - 8);
  *(v2 + 264) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  v10 = sub_261CFD754();
  *(v2 + 280) = v10;
  v11 = *(v10 - 8);
  *(v2 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  v13 = type metadata accessor for SectionEntity();
  *(v2 + 312) = v13;
  v14 = *(v13 - 8);
  *(v2 + 320) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = *v1;
  *(v2 + 360) = *(v1 + 16);
  *(v2 + 368) = sub_261CFFD24();
  *(v2 + 376) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v2 + 384) = v17;
  *(v2 + 392) = v16;

  return MEMORY[0x2822009F8](sub_261BE7D2C, v17, v16);
}

uint64_t sub_261BE7D2C()
{
  v15 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 304);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261C6FD40(v5, v0 + 56, v13);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_261B2EB34(v5);
  v7 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v7;
  *(v0 + 48) = v14;
  sub_261B30804(v0 + 16, v0 + 96);
  sub_261CFCBB4();
  v8 = *(v0 + 184);
  v9 = *(v0 + 32);
  *(v0 + 192) = *(v0 + 176);
  *(v0 + 200) = v8;
  sub_261CFCBC4();
  sub_261B30860(v0 + 16);
  sub_261CFCBB4();
  sub_261BBEA50(2u, v6);
  sub_261B2EB34(v5);
  sub_261B20688(0, v4, v3, v2);
  *(v0 + 400) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v0 + 408) = v11;
  *(v0 + 416) = v10;

  return MEMORY[0x2822009F8](sub_261BE7E94, v11, v10);
}

uint64_t sub_261BE7E94()
{
  sub_261B30804(v0 + 16, v0 + 136);
  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_261BE7F5C;
  v2 = *(v0 + 272);

  return sub_261C54060(v2, "UpdateSectionAppIntent", 22, 2, v0 + 16);
}

uint64_t sub_261BE7F5C()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 416);
  v6 = *(v2 + 408);
  if (v0)
  {
    v7 = sub_261BE8640;
  }

  else
  {
    v7 = sub_261BE8098;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261BE8098()
{
  v1 = v0[50];

  v2 = v0[48];
  v3 = v0[49];

  return MEMORY[0x2822009F8](sub_261BE80FC, v2, v3);
}

uint64_t sub_261BE80FC()
{
  v50 = v0;
  v1 = v0[47];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];

  sub_261B01D28(&qword_27FEDA3B8, &qword_27FEDA3B0, &qword_261D02D00);
  sub_261CFC964();
  sub_261B05584(v6, v7);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v9 = v0[36];
    v8 = v0[37];
    v10 = v0[35];
    sub_261B055F4(v0[30]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    v48 = *(v9 + 8);
    v48(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v49);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 134;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD00000000000004CLL, 0x8000000261D171B0, v49);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v31 = v0[33];
    v30 = v0[34];
    v33 = v0[31];
    v32 = v0[32];
    sub_261B01D70();
    swift_allocError();
    *v34 = 20;
    swift_willThrow();
    sub_261B30860((v0 + 2));
    sub_261B055F4(v33);
    (*(v31 + 8))(v30, v32);
    v36 = v0[41];
    v35 = v0[42];
    v37 = v0[37];
    v38 = v0[34];
    v40 = v0[30];
    v39 = v0[31];
    v41 = v0[29];
    v48(v0[38], v0[35]);

    v29 = v0[1];
  }

  else
  {
    v20 = v0[41];
    v21 = v0[36];
    v22 = v0[37];
    v23 = v0[34];
    v43 = v0[35];
    v44 = v0[38];
    v47 = v0[39];
    v24 = v0[32];
    v25 = v0[33];
    v26 = v0[31];
    v27 = v0[28];
    v28 = v0[29];
    v45 = v0[26];
    v46 = v0[27];
    sub_261B30EB0(v0[30], v20);
    sub_261B055F4(v26);
    (*(v25 + 8))(v23, v24);
    (*(v21 + 16))(v22, v44, v43);
    sub_261CFC9E4();
    sub_261AE82F4(&qword_280D224D0, type metadata accessor for SectionEntity);
    sub_261AE82F4(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC984();
    sub_261B30860((v0 + 2));
    (*(v27 + 8))(v28, v46);
    sub_261B2EB34(v20);
    (*(v21 + 8))(v44, v43);

    v29 = v0[1];
  }

  return v29();
}

uint64_t sub_261BE8640()
{
  v1 = v0[50];

  v2 = v0[48];
  v3 = v0[49];

  return MEMORY[0x2822009F8](sub_261BE86A4, v2, v3);
}

uint64_t sub_261BE86A4()
{
  v1 = v0[47];
  v2 = v0[36];

  sub_261B30860((v0 + 2));
  v12 = v0[54];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[37];
  v6 = v0[34];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[29];
  (*(v2 + 8))(v0[38], v0[35]);

  v10 = v0[1];

  return v10();
}

uint64_t static UpdateSectionDisplayNameAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2A8, &qword_261D09678);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2B0, &qword_261D09680);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B316FC();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2B8, &qword_261D096B0);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2C0, &qword_261D096E0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BE8998(uint64_t a1)
{
  v3 = type metadata accessor for SectionEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B2EAD0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*sub_261BE8A28(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261BE8A9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BE8B10()
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261BE8B88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC288);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}