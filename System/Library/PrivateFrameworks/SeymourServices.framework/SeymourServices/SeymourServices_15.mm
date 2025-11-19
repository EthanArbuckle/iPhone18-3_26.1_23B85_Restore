uint64_t sub_22700E184(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v27 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_22726A538(v25, a2, v27, a3);
  }

  else
  {
    v10 = a5;
    v11 = a3 + 56;
    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= v9)
      {
        goto LABEL_17;
      }

      v12 = *(v7 + v8 + 32);
      v10[1] = v8 + 1;
      v13 = *(a3 + 40);
      sub_22766D370();
      v14 = sub_227664570();
      MEMORY[0x22AA996B0](v14);
      result = sub_22766D3F0();
      v15 = -1 << *(a3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if (((1 << v16) & *(v11 + 8 * (v16 >> 6))) != 0)
      {
        v19 = ~v15;
        while (1)
        {
          v20 = *(*(a3 + 48) + v16);
          v21 = sub_227664570();
          result = sub_227664570();
          if (v21 == result)
          {
            break;
          }

          v16 = (v16 + 1) & v19;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v11 + 8 * (v16 >> 6))) == 0)
          {
            v10 = a5;
            goto LABEL_4;
          }
        }

        v10 = a5;
        v22 = v25[v17];
        v25[v17] = v22 & ~v18;
        if ((v22 & v18) != 0)
        {
          v23 = v27 - 1;
          if (__OFSUB__(v27, 1))
          {
            goto LABEL_18;
          }

          --v27;
          if (!v23)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

LABEL_4:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
      if (v8 == v9)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_22700E344(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_227666FF0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_226E97D1C(v12, &qword_27D7B8FA8, &unk_227672A50);
          v48 = v64;

          return sub_226EBAEF0(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_227010FF8(&unk_28139B578, MEMORY[0x277D52AF8]);
        v38 = sub_22766BF50();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_227010FF8(&qword_28139B570, MEMORY[0x277D52AF8]);
        v46 = sub_22766BFB0();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_22700E818(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        do
        {
          v11 = a5[3];
          v12 = a5[4];
          if (!v12)
          {
            v14 = (a5[2] + 64) >> 6;
            v15 = a5[3];
            while (1)
            {
              v13 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                __break(1u);
                goto LABEL_24;
              }

              if (v13 >= v14)
              {
                break;
              }

              v12 = *(a5[1] + 8 * v13);
              ++v15;
              if (v12)
              {
                goto LABEL_10;
              }
            }

            if (v14 <= v11 + 1)
            {
              v28 = v11 + 1;
            }

            else
            {
              v28 = (a5[2] + 64) >> 6;
            }

            a5[3] = v28 - 1;
            a5[4] = 0;

            return sub_22726AB18(v31, a2, v30, a3);
          }

          v13 = a5[3];
LABEL_10:
          v16 = *(*(*a5 + 48) + (__clz(__rbit64(v12)) | (v13 << 6)));
          a5[3] = v13;
          a5[4] = (v12 - 1) & v12;
          v17 = *(a3 + 40);
          sub_22766D370();
          v18 = sub_227669310();
          MEMORY[0x22AA996B0](v18);
          result = sub_22766D3F0();
          v19 = -1 << *(a3 + 32);
          v20 = result & ~v19;
          v21 = v20 >> 6;
          v22 = 1 << v20;
        }

        while (((1 << v20) & *(v9 + 8 * (v20 >> 6))) == 0);
        v23 = *(*(a3 + 48) + v20);
        v24 = sub_227669310();
        result = sub_227669310();
        if (v24 == result)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v9 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + v20);
          v27 = sub_227669310();
          result = sub_227669310();
          if (v27 == result)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v10 = v31[v21];
      v31[v21] = v10 & ~v22;
    }

    while ((v10 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_22700EA24(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_22726999C(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_22766D370();

        sub_22766C100();
        v17 = sub_22766D3F0();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_22766D190() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

void sub_22700EC08(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BC8, &qword_227675590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_227665F20();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13, v17);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_226E97D1C(v12, &qword_27D7B9BC8, &qword_227675590);
          v48 = v64;

          sub_22726B3A0(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_227010FF8(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
        v38 = sub_22766BF50();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        v24(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_227010FF8(&qword_27D7B8700, MEMORY[0x277D51FE0]);
        v46 = sub_22766BFB0();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v24(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22700F0DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v29 = a5;
  v30 = a3 + 56;
  while (2)
  {
    v27 = v6;
    do
    {
      while (1)
      {
        v7 = a5[3];
        v8 = a5[4];
        if (!v8)
        {
          v10 = (a5[2] + 64) >> 6;
          v11 = a5[3];
          while (1)
          {
            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
              goto LABEL_24;
            }

            if (v9 >= v10)
            {
              break;
            }

            v8 = *(a5[1] + 8 * v9);
            ++v11;
            if (v8)
            {
              goto LABEL_10;
            }
          }

          if (v10 <= v7 + 1)
          {
            v25 = v7 + 1;
          }

          else
          {
            v25 = (a5[2] + 64) >> 6;
          }

          a5[3] = v25 - 1;
          a5[4] = 0;

          return sub_22726A888(v28, a2, v27, a3);
        }

        v9 = a5[3];
LABEL_10:
        v12 = *(*a5 + 48) + 24 * (__clz(__rbit64(v8)) | (v9 << 6));
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        a5[3] = v9;
        a5[4] = (v8 - 1) & v8;
        v16 = *(a3 + 40);
        sub_22766D370();
        sub_226EB396C(v13, v14, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_226F480FC();
        sub_227663B10();
        v17 = sub_22766D3F0();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v30 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_226EB2DFC(v13, v14, v15);
        a5 = v29;
      }

      v22 = ~v18;
      sub_226F48150();
      sub_226EC1E18();
      while (1)
      {
        v23 = *(a3 + 48) + 24 * v19;
        v31 = *v23;
        v32 = *(v23 + 16);
        if (sub_227663B20())
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v30 + 8 * (v19 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      result = sub_226EB2DFC(v13, v14, v15);
      a5 = v29;
      v24 = v28[v20];
      v28[v20] = v24 & ~v21;
    }

    while ((v24 & v21) == 0);
    v6 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      if (v27 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_22700F384(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = sub_2276639B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v44 = &v37 - v16;
  result = MEMORY[0x28223BE20](v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_22726B9F0(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_227010FF8(&qword_28139BCA8, MEMORY[0x277D501C8]);
    v27 = sub_22766BF50();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_227010FF8(&qword_27D7B8678, MEMORY[0x277D501C8]);
      v34 = sub_22766BFB0();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_22700F778(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(void))
{
  v7 = a5;
  v9 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v37 = a3 + 56;
  while (2)
  {
    v33 = v10;
    do
    {
      while (1)
      {
        v11 = v7[3];
        v12 = v7[4];
        if (!v12)
        {
          v14 = (v7[2] + 64) >> 6;
          v15 = v7[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_24;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(v7[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v30 = v11 + 1;
          }

          else
          {
            v30 = (v7[2] + 64) >> 6;
          }

          v7[3] = v30 - 1;
          v7[4] = 0;

          a6(a1, a2, v33, a3);
          return;
        }

        v13 = v7[3];
LABEL_10:
        v16 = *(*(*v7 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
        v7[3] = v13;
        v7[4] = (v12 - 1) & v12;
        v17 = *(a3 + 40);
        v18 = v16;
        v19 = sub_22766CB20();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v7 = a5;
      }

      a7(0);
      v24 = *(*(a3 + 48) + 8 * v21);
      v25 = sub_22766CB30();

      if ((v25 & 1) == 0)
      {
        v26 = ~v20;
        do
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_22766CB30();
        }

        while ((v28 & 1) == 0);
      }

      v7 = a5;

      v29 = *(a1 + 8 * v22);
      *(a1 + 8 * v22) = v29 & ~v23;
    }

    while ((v29 & v23) == 0);
    v10 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
LABEL_24:
      __break(1u);
    }

    else if (v33 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22700F9BC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_227663480();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_226E97D1C(v12, &unk_27D7BD3F0, &unk_2276823F0);
          v48 = v64;

          return sub_22726AD50(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_227010FF8(&unk_2813A5800, MEMORY[0x277D4FF88]);
        v38 = sub_22766BF50();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_227010FF8(&qword_27D7B89E0, MEMORY[0x277D4FF88]);
        v46 = sub_22766BFB0();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_22700FE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t *a5)
{
  v9 = v5;
  v10 = *v5;

  v11 = sub_22766CD20();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v23 = v13;
  v14 = *(v13 + 40);

  v15 = sub_22766CB20();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_226E99364(0, a4, a5);
    while (1)
    {
      v19 = *(*(v13 + 48) + 8 * v17);
      v20 = sub_22766CB30();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v13 + 48) + 8 * v17);
  sub_22701087C(v17);
  result = sub_22766CB30();
  if (result)
  {
    *v9 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_227010000(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22766CCA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22766D370();

        sub_22766C100();
        v15 = sub_22766D3F0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2270101C4(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  result = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v13 = *v5;
  v14 = *v5 + 56;
  v15 = -1 << *(*v5 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;
    v18 = *v5;

    v19 = sub_22766CCA0();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v42 = (v19 + 1) & v17;
      v41 = v8[2];
      v47 = v8[9];
      v43 = v8 + 2;
      v20 = (v8 + 1);
      v21 = v13;
      v22 = v17;
      while (1)
      {
        v23 = v14;
        v24 = v47 * v16;
        v25 = v22;
        v41(v12, *(v21 + 48) + v47 * v16, v7);
        v26 = v21;
        v27 = *(v21 + 40);
        sub_227010FF8(v44, v45);
        v28 = sub_22766BF50();
        (*v20)(v12, v7);
        v22 = v25;
        v29 = v28 & v25;
        if (a1 >= v42)
        {
          if (v29 < v42 || a1 < v29)
          {
LABEL_4:
            v21 = v26;
            goto LABEL_5;
          }
        }

        else if (v29 < v42 && a1 < v29)
        {
          goto LABEL_4;
        }

        v21 = v26;
        v32 = *(v26 + 48);
        v33 = v47 * a1;
        v34 = v32 + v47 * a1;
        v35 = v32 + v24 + v47;
        if (v47 * a1 < v24 || v34 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v22 = v25;
          a1 = v16;
          goto LABEL_5;
        }

        a1 = v16;
        if (v33 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v16 = (v16 + 1) & v22;
        v14 = v23;
        if (((*(v23 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v13;
LABEL_28:
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v13;
  }

  v37 = *(v21 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v39;
    ++*(v21 + 36);
  }

  return result;
}

unint64_t sub_2270104C0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22766CCA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = 24 * v6;
        v13 = *(v3 + 40);
        v14 = *(v3 + 48) + 24 * v6;
        v22 = *v14;
        v23 = *(v14 + 16);
        sub_22766D370();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_226F480FC();
        sub_227663B10();
        v15 = sub_22766D3F0() & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = v16 + 24 * v2;
          v18 = (v16 + v12);
          if (24 * v2 < v12 || v17 >= v18 + 24 || v2 != v6)
          {
            v11 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2270106D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22766CCA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_22766D370();
        v13 = sub_227669310();
        MEMORY[0x22AA996B0](v13);
        v14 = sub_22766D3F0() & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + v2);
          v17 = (v15 + v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22701087C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22766CCA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_22766CB20();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

_OWORD *sub_227010A38(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  a2[2] = a1[2];
  a2[3] = v4;
  *a2 = v2;
  a2[1] = v3;
  return a2;
}

uint64_t sub_227010A6C(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_227662010();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x28223BE20](v10);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v45 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v46 = &v42 - v18;
  v19 = type metadata accessor for DateIntervalSessionThreshold();
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for PersistenceHandle;
  v50[4] = &off_283A9AF78;
  v24 = swift_allocObject();
  v50[0] = v24;
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  *(v24 + 32) = a4;
  *(v24 + 40) = a5;
  v25 = v11;
  v26 = *(v11 + 2);
  v43 = a1;
  v26(v23, a1, v10);
  *&v23[v20[7]] = 0x4072C00000000000;
  v27 = &v23[v20[8]];
  *v27 = 0;
  v27[8] = 1;
  *&v23[v20[9]] = 0x3FE0000000000000;
  v28 = a2;
  v29 = a3;

  v30 = sub_2274B8C4C(v23, v50);
  v45 = v25;
  sub_226F733F0(v23);
  sub_22766A610();
  v31 = v44;
  v26(v44, v43, v10);

  v32 = sub_22766B380();
  v33 = sub_22766C8B0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49 = v35;
    *v34 = 134218242;
    *(v34 + 4) = *(v30 + 16);

    *(v34 + 12) = 2080;
    sub_227010FF8(&qword_28139BDF8, MEMORY[0x277CC88A8]);
    v36 = sub_22766D140();
    v37 = v31;
    v39 = v38;
    v45[1](v37, v10);
    v40 = sub_226E97AE8(v36, v39, &v49);

    *(v34 + 14) = v40;
    _os_log_impl(&dword_226E8E000, v32, v33, "[AchievementEnvironmentProvider] Found [%ld] completed archived sessions for date interval: %s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {

    v45[1](v31, v10);
  }

  (*(v47 + 8))(v46, v48);
  __swift_destroy_boxed_opaque_existential_0(v50);
  return v30;
}

uint64_t sub_227010FE0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_226EB2DFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_227010FF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WorkoutPlanModalityDurationGroup.init(scheduledItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *a2 = *a1;
  sub_226EB396C(v4, v5, v6);

  result = sub_226EB2DFC(v4, v5, v6);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t static WorkoutPlanModalityDurationGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  sub_226F48150();
  sub_226EC1E18();
  return sub_227663B20() & 1;
}

uint64_t WorkoutPlanModalityDurationGroup.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x22AA996B0](*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  return sub_227663B10();
}

uint64_t WorkoutPlanModalityDurationGroup.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22766D370();
  sub_226F48338();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_22701123C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_2270112B0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x22AA996B0](*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  return sub_227663B10();
}

uint64_t sub_22701133C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

unint64_t sub_2270113B0()
{
  result = qword_27D7B9BD0;
  if (!qword_27D7B9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9BD0);
  }

  return result;
}

uint64_t sub_227011404(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  sub_226F48150();
  sub_226EC1E18();
  return sub_227663B20() & 1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2270114B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_227011500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_227011568(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(sub_227665E80() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = sub_22766A2F0();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = sub_22766B390();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270116BC, 0, 0);
}

uint64_t sub_2270116BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = sub_226FC52A4();
  v0[16] = v3;
  v4 = v1[3];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1, v4);
  v6 = *(MEMORY[0x277D4F240] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_22701178C;

  return MEMORY[0x2821AEDA8](v3, v4, v5);
}

uint64_t sub_22701178C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);

    v5 = sub_227011CFC;
  }

  else
  {
    v5 = sub_2270118A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2270118A8()
{
  v27 = v0;
  v2 = v0[15];
  v1 = v0[16];
  sub_22766A6D0();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  if (v5)
  {
    v25 = v0[15];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    v12 = sub_226E99364(0, &qword_281398A10, 0x277CCD8A8);
    v13 = MEMORY[0x22AA98660](v7, v12);
    v15 = v14;

    v16 = sub_226E97AE8(v13, v15, &v26);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v3, v4, "HealthKitMindfulSessionService: Successfully saved mindful session samples: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v17 = v0[16];

    (*(v8 + 8))(v6, v9);
  }

  v18 = v0[7];
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v21 = *(MEMORY[0x277D4F220] + 4);
  v22 = swift_task_alloc();
  v0[19] = v22;
  v23 = *(v20 + 8);
  *v22 = v0;
  v22[1] = sub_227011AC4;

  return MEMORY[0x2821AED88](v19, v23);
}

uint64_t sub_227011AC4(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v8 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v6 = sub_227011EF4;
  }

  else
  {
    *(v4 + 168) = a1;
    v6 = sub_227011BE8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227011BE8()
{
  v1 = v0[21];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  v7 = *(v6 + 64);
  v8 = *(v6 + 72);
  swift_getObjectType();
  sub_22766C500();
  sub_227665E70();
  sub_22766A2E0();
  sub_2276699D0();
  (*(v3 + 8))(v2, v5);
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[11];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_227011CFC()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[14];
  sub_22766A6D0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v23 = v0[14];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v11 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v13 = sub_226E97AE8(v11, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "HealthKitMindfulSessionService: Error processing mindfulness jobs: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v23, v7);
  }

  else
  {
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];

    (*(v15 + 8))(v14, v16);
  }

  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[11];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_227011EF4()
{
  v25 = v0;
  v1 = v0[20];
  v2 = v0[14];
  sub_22766A6D0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v23 = v0[14];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v11 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v13 = sub_226E97AE8(v11, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "HealthKitMindfulSessionService: Error processing mindfulness jobs: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v23, v7);
  }

  else
  {
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];

    (*(v15 + 8))(v14, v16);
  }

  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[11];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2270120EC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_227666BF0();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_227662750();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BD8, qword_22767DD50) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = sub_227662190();
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v15 = sub_227662940();
  v3[17] = v15;
  v16 = *(v15 - 8);
  v3[18] = v16;
  v17 = *(v16 + 64) + 15;
  v3[19] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227012378, 0, 0);
}

uint64_t sub_227012378()
{
  v1 = [objc_opt_self() categoryTypeForIdentifier_];
  v0[22] = v1;
  if (!v1)
  {
    return sub_22766CFB0();
  }

  v2 = v1;
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[3];
  sub_227662920();
  (*(v4 + 56))(v6, 1, 1, v5);
  v9 = sub_2276629D0();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_227668950();
  v18 = -v10;
  if (__OFSUB__(0, v10))
  {
    __break(1u);
  }

  else
  {
    v19 = v0[21];
    v70 = v0[20];
    v71 = v2;
    v21 = v0[18];
    v20 = v0[19];
    v22 = v0[16];
    v23 = v0[15];
    v68 = v0[14];
    v69 = v0[17];
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[10];
    v27 = v0[11];
    v67 = v0[9];
    LOBYTE(v66) = 1;
    LOBYTE(v65) = 1;
    LOBYTE(v64) = 1;
    LOBYTE(v63) = 1;
    LOBYTE(v62) = 1;
    LOBYTE(v61) = 1;
    LOBYTE(v60) = 1;
    LOBYTE(v59) = 1;
    LOBYTE(v58) = 1;
    LOBYTE(v57) = 1;
    LOBYTE(v56) = 0;
    v55 = v18;
    sub_227662180();
    sub_227662740();
    sub_2276628E0();
    v28 = *(v26 + 8);
    v28(v27, v67);
    (*(v23 + 8))(v22, v68);
    (*(v21 + 8))(v20, v69);
    sub_226EDDC60(v19, v70);
    v29 = 0;
    if ((*(v26 + 48))(v70, 1, v67) != 1)
    {
      v30 = v0[20];
      v31 = v0[9];
      v29 = sub_2276626A0();
      v28(v30, v31);
    }

    v32 = v0[11];
    v33 = v0[9];
    v34 = v0[4];
    v35 = v0[5];
    v36 = objc_opt_self();
    sub_227662740();
    v37 = sub_2276626A0();
    v28(v32, v33);
    v38 = [v36 predicateForSamplesWithStartDate:v29 endDate:v37 options:{0, v55, v56, 0, v57, 0, v58, 0, v59, 0, v60, 0, v61, 0, v62, 0, v63, 0, v64, 0, v65, 0, v66}];
    v0[23] = v38;

    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2276728D0;
    v40 = *MEMORY[0x277CCC7A8];
    v41 = sub_22766C000();
    v43 = v42;
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = sub_22701311C();
    *(v39 + 32) = v41;
    *(v39 + 40) = v43;
    *(v39 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
    *(v39 + 104) = sub_227013170();
    *(v39 + 72) = v34;

    v44 = sub_22766C7F0();
    v0[24] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2276756A0;
    *(v45 + 32) = v38;
    *(v45 + 40) = v44;
    v46 = v38;
    v47 = v44;
    v48 = sub_22766C2B0();

    v49 = [objc_opt_self() andPredicateWithSubpredicates_];
    v0[25] = v49;

    v50 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCCD50] ascending:0];
    v0[26] = v50;
    v51 = swift_task_alloc();
    v0[27] = v51;
    v51[2] = v71;
    v51[3] = v49;
    v51[4] = v50;
    v51[5] = v35;
    v52 = *(MEMORY[0x277D85A40] + 4);
    v53 = swift_task_alloc();
    v0[28] = v53;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BE8, &unk_227675760);
    *v53 = v0;
    v53[1] = sub_227012930;
    v15 = sub_2270131D4;
    v10 = (v0 + 2);
    v14 = 0x8000000227696DC0;
    v11 = 0;
    v12 = 0;
    v13 = 0xD000000000000030;
    v16 = v51;
  }

  return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227012930()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_227012D9C;
  }

  else
  {
    v4 = sub_227012A60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

size_t sub_227012A60()
{
  v1 = v0[2];
  v34 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA991A0](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      MEMORY[0x22AA985C0](v5);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      ++v4;
      if (v6 == i)
      {
        v7 = v34;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_15:

  if (v7 >> 62)
  {
    v8 = sub_22766CD20();
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_30:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_17:
  v35 = v3;
  result = sub_226F1F328(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = v0[7];
  v12 = v35;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AA991A0](v10, v7);
    }

    else
    {
      v13 = *(v7 + 8 * v10 + 32);
    }

    sub_227070868(v13, v0[8]);
    v15 = *(v35 + 16);
    v14 = *(v35 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_226F1F328(v14 > 1, v15 + 1, 1);
    }

    v16 = v0[8];
    v17 = v0[6];
    ++v10;
    *(v35 + 16) = v15 + 1;
    (*(v11 + 32))(v35 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, v16, v17);
  }

  while (v8 != v10);

LABEL_31:
  v19 = v0[25];
  v18 = v0[26];
  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[21];
  v23 = v0[22];
  v25 = v0[19];
  v24 = v0[20];
  v27 = v0[16];
  v28 = v0[13];
  v29 = v0[12];
  v30 = v0[11];
  v31 = v0[8];
  v33 = sub_226F3EF74(v12);

  sub_226EDDD40(v22);

  v26 = v0[1];

  return v26(v33);
}

uint64_t sub_227012D9C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  v13 = *(v0 + 96);
  v14 = *(v0 + 88);
  v15 = *(v0 + 64);

  sub_226EDDD40(v5);

  v10 = *(v0 + 8);
  v11 = *(v0 + 232);

  return v10();
}

void sub_227012E9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v25 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227670B30;
  *(v14 + 32) = a4;
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  v17 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
  v18 = a4;
  v19 = sub_22766C2B0();

  aBlock[4] = sub_2270131E0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2274FCD04;
  aBlock[3] = &block_descriptor_7;
  v20 = _Block_copy(aBlock);
  v21 = [v17 initWithSampleType:a2 predicate:v25 limit:0 sortDescriptors:v19 resultsHandler:v20];

  _Block_release(v20);

  v22 = a5[4];
  __swift_project_boxed_opaque_existential_0(a5, a5[3]);
  v23 = *(v22 + 8);
  sub_227669CD0();
}

unint64_t sub_22701311C()
{
  result = qword_2813991A0;
  if (!qword_2813991A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813991A0);
  }

  return result;
}

unint64_t sub_227013170()
{
  result = qword_27D7B9BE0;
  if (!qword_27D7B9BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84D0, &unk_227675750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9BE0);
  }

  return result;
}

uint64_t sub_2270131E0()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  return sub_22766C430();
}

uint64_t sub_22701328C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_226F1EFF0(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_22766CC90();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + v6);
    result = sub_227663FB0();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_226F1EFF0((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_226EB526C(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
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

uint64_t sub_227013520(uint64_t a1, int a2)
{
  v37 = a2;
  v4 = sub_2276660A0();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v31[1] = v2;
  v40 = MEMORY[0x277D84F90];
  sub_226F1FBA8(0, v8, 0);
  v9 = v40;
  v10 = a1 + 56;
  v11 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v13 = result;
  v14 = 0;
  v32 = a1 + 64;
  v33 = v8;
  v34 = a1 + 56;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v17 = *(a1 + 36);
    v38 = v14;
    v39 = v17;
    v18 = (*(a1 + 48) + 16 * v13);
    v19 = a1;
    v20 = v18[1];
    *v7 = *v18;
    v7[1] = v20;
    swift_storeEnumTagMultiPayload();
    v40 = v9;
    v21 = v7;
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);

    if (v23 >= v22 >> 1)
    {
      sub_226F1FBA8(v22 > 1, v23 + 1, 1);
      v9 = v40;
    }

    *(v9 + 16) = v23 + 1;
    result = sub_22701A9C0(v21, v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23);
    v15 = 1 << *(v19 + 32);
    if (v13 >= v15)
    {
      goto LABEL_23;
    }

    a1 = v19;
    v10 = v34;
    v24 = *(v34 + 8 * v16);
    if ((v24 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v7 = v21;
    v25 = v24 & (-2 << (v13 & 0x3F));
    if (v25)
    {
      v15 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v16 << 6;
      v27 = v16 + 1;
      v28 = (v32 + 8 * v16);
      while (v27 < (v15 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_226EB526C(v13, v39, 0);
          v15 = __clz(__rbit64(v29)) + v26;
          goto LABEL_19;
        }
      }

      result = sub_226EB526C(v13, v39, 0);
LABEL_19:
      v7 = v21;
    }

    v14 = v38 + 1;
    v13 = v15;
    if (v38 + 1 == v33)
    {
      return v9;
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
  return result;
}

uint64_t sub_22701380C(uint64_t a1)
{
  v3 = sub_2276660A0();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v40 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v35 = v1;
  v45 = MEMORY[0x277D84F90];
  sub_226F1FBA8(0, v8, 0);
  v9 = v45;
  v10 = a1 + 56;
  v11 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v13 = result;
  v14 = 0;
  v36 = a1 + 64;
  v37 = v8;
  v38 = a1 + 56;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v17 = *(a1 + 36);
    v43 = v14;
    v44 = v17;
    v18 = *(a1 + 48) + 24 * v13;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = v40;
    *v40 = *v18;
    v22[1] = v19;
    v23 = dword_227675770[v21];
    swift_storeEnumTagMultiPayload();
    v24 = v22;
    v25 = v39;
    sub_22701A9C0(v24, v39);
    sub_226F491FC(v20, v19, v21);
    v45 = v9;
    v27 = *(v9 + 16);
    v26 = *(v9 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_226F1FBA8(v26 > 1, v27 + 1, 1);
      v9 = v45;
    }

    *(v9 + 16) = v27 + 1;
    result = sub_22701A9C0(v25, v9 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v27);
    v15 = 1 << *(a1 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v10 = v38;
    v28 = *(v38 + 8 * v16);
    if ((v28 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v44 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v13 & 0x3F));
    if (v29)
    {
      v15 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v16 << 6;
      v31 = v16 + 1;
      v32 = (v36 + 8 * v16);
      while (v31 < (v15 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_226EB526C(v13, v44, 0);
          v15 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v13, v44, 0);
    }

LABEL_4:
    v14 = v43 + 1;
    v13 = v15;
    if (v43 + 1 == v37)
    {
      return v9;
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

uint64_t sub_227013B2C(uint64_t a1)
{
  v3 = sub_2276660A0();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v31 = v1;
  v39 = MEMORY[0x277D84F90];
  sub_226F1FBA8(0, v7, 0);
  v8 = v39;
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v12 = result;
  v13 = 0;
  v32 = a1 + 64;
  v33 = v7;
  v34 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v37 = v13;
    v38 = v16;
    v17 = *(a1 + 48) + 24 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = a1;
    v21 = *(v17 + 16);
    *v6 = *v17;
    *(v6 + 1) = v19;
    v6[16] = v21;
    swift_storeEnumTagMultiPayload();
    sub_226EB396C(v18, v19, v21);
    v39 = v8;
    v23 = *(v8 + 16);
    v22 = *(v8 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_226F1FBA8(v22 > 1, v23 + 1, 1);
      v8 = v39;
    }

    *(v8 + 16) = v23 + 1;
    result = sub_22701A9C0(v6, v8 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23);
    v14 = 1 << *(v20 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    a1 = v20;
    v9 = v34;
    v24 = *(v34 + 8 * v15);
    if ((v24 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v38 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v12 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_226EB526C(v12, v38, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v12, v38, 0);
    }

LABEL_4:
    v13 = v37 + 1;
    v12 = v14;
    if (v37 + 1 == v33)
    {
      return v8;
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

uint64_t sub_227013E10(uint64_t a1)
{
  v55 = sub_2276660A0();
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v55);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v57 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v54 = &v47 - v11;
  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v58 = MEMORY[0x277D84F98];
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v48 = xmmword_227670CD0;
  v49 = a1;
  v50 = v18;
  v51 = v8;
  v52 = v2;
  while (v17)
  {
LABEL_11:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = *(v2 + 72);
    v22 = v54;
    sub_22701A900(*(a1 + 48) + v21 * (v20 | (v12 << 6)), v54);
    v23 = v22;
    v24 = v57;
    sub_22701A9C0(v23, v57);
    sub_22701A900(v24, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v56 = v21;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22701A964(v8);
        v26 = 1;
        break;
      case 2:
        sub_22701A964(v8);
        v26 = 2;
        break;
      case 3:
        sub_22701A964(v8);
        v26 = 3;
        break;
      case 4:
        sub_22701A964(v8);
        v26 = 5;
        break;
      case 5:
        sub_22701A964(v8);
        v26 = 6;
        break;
      case 6:
        v27 = sub_227664010();
        (*(*(v27 - 8) + 8))(v8, v27);
        v26 = 4;
        break;
      case 7:
        sub_22701A964(v8);
        v26 = 7;
        break;
      case 8:
        sub_22701A964(v8);
        v26 = 8;
        break;
      case 9:
        sub_22701A964(v8);
        v26 = 9;
        break;
      case 10:
        sub_22701A964(v8);
        v26 = 10;
        break;
      case 11:
        sub_22701A964(v8);
        v26 = 11;
        break;
      case 12:
        sub_22701A964(v8);
        v26 = 12;
        break;
      default:
        sub_22701A964(v8);
        v26 = 0;
        break;
    }

    v29 = sub_226F3A9E4(v26);
    v30 = v13[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_38;
    }

    v33 = v28;
    if (v13[3] < v32)
    {
      sub_226FE4394(v32, 1);
      v13 = v58;
      v34 = sub_226F3A9E4(v26);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_40;
      }

      v29 = v34;
    }

    if (v33)
    {
      v36 = v13[7];
      sub_22701A9C0(v57, v53);
      v37 = *(v36 + 8 * v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + 8 * v29) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_2273A52C0(0, v37[2] + 1, 1, v37);
        *(v36 + 8 * v29) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_2273A52C0(v39 > 1, v40 + 1, 1, v37);
        *(v36 + 8 * v29) = v37;
      }

      v37[2] = v40 + 1;
      v2 = v52;
      sub_22701A9C0(v53, v37 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v40 * v56);
      a1 = v49;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
      v41 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = v48;
      sub_22701A9C0(v57, v42 + v41);
      v13[(v29 >> 6) + 8] |= 1 << v29;
      *(v13[6] + v29) = v26;
      *(v13[7] + 8 * v29) = v42;
      v43 = v13[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_39;
      }

      v13[2] = v45;
      v2 = v52;
    }

    v18 = v50;
    v8 = v51;
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return v13;
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2270142F4()
{
  v0 = sub_227663D30();
  v1 = sub_227013E10(v0);
  v2 = sub_227014900(v1, sub_22750E2B0, &selRef_orPredicateWithSubpredicates_);

  v3 = sub_227663D20();
  v4 = sub_227013E10(v3);
  v5 = sub_227014900(v4, sub_22750F174, &selRef_andPredicateWithSubpredicates_);

  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = sub_226ECC830(*(v2 + 16), 0);
  v8 = sub_2274CF834(v32, v7 + 32, v6, v2);
  result = sub_226EBB21C();
  if (v8 == v6)
  {
    v10 = *(v5 + 16);
    if (v10)
    {
      while (1)
      {
        v11 = sub_226ECC830(v10, 0);
        v5 = sub_2274CF834(v32, v11 + 32, v10, v5);
        sub_226EBB21C();
        if (v5 == v10)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v7 = MEMORY[0x277D84F90];
        v10 = *(v5 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v11 = MEMORY[0x277D84F90];
    }

    v32[0] = v7;
    sub_22745F2F8(v11);
    v12 = v32[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2276728D0;
    *(v13 + 32) = sub_227664C10();
    *(v13 + 40) = v14;
    *(v13 + 48) = sub_227664C10();
    *(v13 + 56) = v15;
    swift_getKeyPath();
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
    v32[0] = v13;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v16 = sub_22766C820();
    sub_226ED25F8(v32, v30);
    v17 = v31;
    if (v31)
    {
      v18 = __swift_project_boxed_opaque_existential_0(v30, v31);
      v19 = *(v17 - 8);
      v20 = *(v19 + 64);
      MEMORY[0x28223BE20](v18);
      v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
      (*(v19 + 16))(v22);
      v23 = sub_22766D170();
      (*(v19 + 8))(v22, v17);
      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
      v23 = 0;
    }

    v24 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v25 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

    sub_226EBC888(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670B30;
    *(inited + 32) = v25;
    v32[0] = v12;
    sub_22745F2F8(inited);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v27 = sub_22766C2B0();

    v28 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227014728()
{
  v0 = sub_227663D30();
  v1 = sub_227013E10(v0);
  v2 = sub_227014D38(v1, sub_227018428);

  v3 = sub_227663D20();
  v4 = sub_227013E10(v3);
  v5 = sub_227014D38(v4, sub_22701876C);

  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = sub_226ECC830(*(v2 + 16), 0);
  v8 = sub_2274CF834(&v14, v7 + 32, v6, v2);
  result = sub_226EBB21C();
  if (v8 == v6)
  {
    v10 = *(v5 + 16);
    if (v10)
    {
      while (1)
      {
        v11 = sub_226ECC830(v10, 0);
        v5 = sub_2274CF834(&v14, v11 + 32, v10, v5);
        sub_226EBB21C();
        if (v5 == v10)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v10 = *(v5 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v11 = MEMORY[0x277D84F90];
    }

    sub_22745F2F8(v11);
    sub_22745F2F8(MEMORY[0x277D84F90]);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v12 = sub_22766C2B0();

    v13 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227014900(uint64_t a1, uint64_t (*a2)(char *), SEL *a3)
{
  v44 = a3;
  v52 = a2;
  v4 = sub_2276660A0();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v50 = a1;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v48 = v12;
  v49 = a1 + 64;
  while (1)
  {
    v16 = v14;
    if (!v11)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v14 = v16;
LABEL_10:
      v17 = __clz(__rbit64(v11)) | (v14 << 6);
      v18 = *(v50 + 56);
      v47 = *(*(v50 + 48) + v17);
      v19 = *(v18 + 8 * v17);
      v53 = v15;
      v20 = *(v19 + 16);
      v51 = v19;
      if (v20)
      {
        v21 = v46;
        v22 = v19 + ((*(v46 + 80) + 32) & ~*(v46 + 80));

        v23 = *(v21 + 72);
        v24 = v15;
        do
        {
          sub_22701A900(v22, v7);
          v25 = v52(v7);
          v26 = sub_22701A964(v7);
          if (v25)
          {
            MEMORY[0x22AA985C0](v26);
            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22766C360();
            }

            sub_22766C3A0();
            v24 = v53;
          }

          v22 += v23;
          --v20;
        }

        while (v20);
      }

      else
      {

        v24 = v15;
      }

      v27 = v24 >> 62 ? sub_22766CD20() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 &= v11 - 1;
      if (v27)
      {
        break;
      }

      v16 = v14;
      v12 = v48;
      v8 = v49;
      v15 = MEMORY[0x277D84F90];
      if (!v11)
      {
LABEL_7:
        while (1)
        {
          v14 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v14 >= v12)
          {

            return v45;
          }

          v11 = *(v8 + 8 * v14);
          ++v16;
          if (v11)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() *v44];

    v30 = v45[2];
    v15 = MEMORY[0x277D84F90];
    if (v45[3] <= v30)
    {
      sub_226FE40EC(v30 + 1, 1);
    }

    v31 = v54;
    v32 = *(v54 + 40);
    sub_22766D370();
    sub_227667470();
    sub_22766C100();

    result = sub_22766D3F0();
    v33 = v31 + 64;
    v45 = v31;
    v34 = -1 << *(v31 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v31 + 64 + 8 * (v35 >> 6))) == 0)
    {
      break;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v31 + 64 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    v12 = v48;
    v8 = v49;
LABEL_36:
    *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v42 = v45;
    *(v45[6] + v37) = v47;
    *(v42[7] + 8 * v37) = v29;
    ++v42[2];
  }

  v38 = 0;
  v39 = (63 - v34) >> 6;
  v12 = v48;
  v8 = v49;
  while (++v36 != v39 || (v38 & 1) == 0)
  {
    v40 = v36 == v39;
    if (v36 == v39)
    {
      v36 = 0;
    }

    v38 |= v40;
    v41 = *(v33 + 8 * v36);
    if (v41 != -1)
    {
      v37 = __clz(__rbit64(~v41)) + (v36 << 6);
      goto LABEL_36;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_227014D38(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v29 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(a1 + 48) + v12);
    v14 = *(*(a1 + 56) + 8 * v12);

    v16 = a2(v15);
    if (v2)
    {

      return v29;
    }

    v17 = v16;
    v7 &= v7 - 1;

    if (v17)
    {
      v18 = *(v29 + 16);
      if (*(v29 + 24) <= v18)
      {
        sub_226FE40EC(v18 + 1, 1);
      }

      v29 = v31;
      v19 = *(v31 + 40);
      sub_22766D370();
      sub_227667470();
      sub_22766C100();

      result = sub_22766D3F0();
      v20 = v31 + 64;
      v21 = -1 << *(v31 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v31 + 64 + 8 * (v22 >> 6))) == 0)
      {
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
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_28;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v31 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v31 + 48) + v24) = v13;
      *(*(v31 + 56) + 8 * v24) = v17;
      ++*(v31 + 16);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v29;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_227014FB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v76 = a2;
  v4 = sub_227663D60();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v4);
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v72 - v12;
  v13 = sub_227664010();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v75 = v2;
  v22 = (v2 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_modalityIdentifierMap);
  v23 = *(v2 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_modalityIdentifierMap + 8);
  if (*(v23 + 16))
  {
    v74 = v15;
    v73 = *a1;
    v24 = *v22;

    v25 = sub_226F491D8(v19, v20, v21);
    if (v26)
    {
      v27 = (*(v23 + 56) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      inited = swift_initStackObject();
      v72 = xmmword_227670CD0;
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = v29;
      v31 = inited + 32;
      *(inited + 40) = v28;
      v32 = sub_226F3E6A8(inited);
      swift_setDeallocating();
      sub_226FA6DA4(v31);
      v33 = MEMORY[0x277D84F90];
      v83 = MEMORY[0x277D84F90];
      v34 = sub_227013520(v32, 4);

      sub_22745FA30(v34);
      v35 = sub_22701380C(v18);
      sub_22745FA30(v35);
      v86[0] = v73;
      sub_22766D140();
      sub_22766C540();
      sub_22766C540();
      sub_22766C540();
      sub_227663FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
      v36 = *(sub_2276660A0() - 8);
      v37 = *(v36 + 72);
      v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v72;
      v40 = v74;
      (*(v74 + 16))(v39 + v38, v17, v13);
      swift_storeEnumTagMultiPayload();
      sub_22745FA30(v39);
      (*(v40 + 8))(v17, v13);
      v41 = v83;
      v86[0] = v33;
      v42 = sub_2276672F0();
      v43 = sub_227013520(v42, 2);

      sub_22745FA30(v43);
      v44 = sub_2276672D0();
      v45 = sub_227013520(v44, 5);

      sub_22745FA30(v45);
      v46 = sub_227667280();
      v47 = sub_227013520(v46, 10);

      sub_22745FA30(v47);
      v48 = sub_227667260();
      v49 = sub_227013B2C(v48);

      sub_22745FA30(v49);
      sub_226F438E8(v86[0]);

      sub_226F438E8(v41);

      v50 = v76;
      sub_227663D10();
      v51 = v80;
      sub_22766A630();
      v53 = v77;
      v52 = v78;
      v54 = v79;
      (*(v78 + 16))(v77, v50, v79);
      v55 = sub_22766B380();
      v56 = sub_22766C8B0();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v86[0] = v76;
        *v57 = 136315138;
        sub_226EABF94(&qword_28139BC38, MEMORY[0x277D504B0]);
        v58 = sub_22766D140();
        v59 = v53;
        v61 = v60;
        (*(v52 + 8))(v59, v54);
        v62 = sub_226E97AE8(v58, v61, v86);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_226E8E000, v55, v56, "Filtering catalog using: %s", v57, 0xCu);
        v63 = v76;
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x22AA9A450](v63, -1, -1);
        MEMORY[0x22AA9A450](v57, -1, -1);
      }

      else
      {

        (*(v52 + 8))(v53, v54);
      }

      return (*(v81 + 8))(v51, v82);
    }
  }

  sub_22766A630();

  sub_226EB396C(v19, v20, v21);
  v64 = sub_22766B380();
  v65 = sub_22766C890();

  sub_226EB2DFC(v19, v20, v21);
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v88 = v67;
    *v66 = 136315138;
    v86[0] = v19;
    v86[1] = v20;
    v87 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_227663AD0();
    v68 = sub_226E97AE8(v84, v85, &v88);

    *(v66 + 4) = v68;
    _os_log_impl(&dword_226E8E000, v64, v65, "Could not find modalityIdentifier for modalityKind = %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x22AA9A450](v67, -1, -1);
    MEMORY[0x22AA9A450](v66, -1, -1);
  }

  (*(v81 + 8))(v10, v82);
  v69 = sub_227664EC0();
  sub_226EABF94(&qword_28139B898, MEMORY[0x277D51210]);
  swift_allocError();
  (*(*(v69 - 8) + 104))(v70, *MEMORY[0x277D51188], v69);
  return swift_willThrow();
}

uint64_t sub_227015900(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_227015930, 0, 0);
}

uint64_t sub_227015930()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = *(v1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore + 24);
  v4 = *(v1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore), v3);
  v5 = swift_allocObject();
  v0[15] = v5;
  *(v5 + 16) = v1;
  v7 = *v2;
  v6 = v2[1];
  *(v5 + 56) = *(v2 + 32);
  *(v5 + 24) = v7;
  *(v5 + 40) = v6;
  v8 = *(v4 + 24);

  sub_227019388((v0 + 2), (v0 + 7));
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[16] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
  *v10 = v0;
  v10[1] = sub_227015AF4;

  return (v13)(v0 + 12, sub_22701A8E0, v5, v11, v3, v4);
}

uint64_t sub_227015AF4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_227015E34;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_227015C10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227015C10()
{
  v1 = v0[3];
  v2 = v0[12];
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v7 = v0[3];

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = *(v1 + 48) + 24 * (v11 | (v9 << 6));
      if (*(v12 + 16) == 1)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v23 = *(v12 + 8);
    v24 = *v12;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_226EB3F78(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_226EB3F78((v14 > 1), v15 + 1, 1, v10);
      v16 = v15 + 1;
      v10 = result;
    }

    *(v10 + 16) = v16;
    v17 = v10 + 16 * v15;
    *(v17 + 32) = v24;
    *(v17 + 40) = v23;
  }

  while (v5);
  while (1)
  {
LABEL_6:
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v6)
    {
      break;
    }

    v5 = *(v1 + 56 + 8 * v13);
    ++v9;
    if (v5)
    {
      v9 = v13;
      goto LABEL_4;
    }
  }

  v18 = sub_226F3E6A8(v10);

  if (*(v18 + 16))
  {
    v19 = v0[17];

    v21 = sub_22701967C(v20, v18);

    if (*(v21 + 16))
    {

      v2 = v21;
    }

    else
    {
    }
  }

  else
  {
  }

  v22 = v0[1];

  return v22(v2);
}

uint64_t sub_227015E34()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_227015E98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v9 = sub_227663D60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_227014FB8(a3, v13);
  if (!v4)
  {
    v15 = *(a2 + 16);
    v16 = sub_2276672A0();
    v17 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_227019A10(v13, v15, v16, *v17, v17[1], *(v17 + 16), v17[3]);

    (*(v10 + 8))(v13, v9);
    v18 = sub_226EE010C(100);

    *a4 = v18;
  }

  return result;
}

uint64_t sub_227016004(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v4 = sub_22766B390();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v56 = *a2;
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_usedWorkoutsByGroup;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = *(v18 + 16);
  sub_226EB396C(v15, v14, v16);
  if (v19)
  {

    v20 = sub_226F3AB00(v56, v15, v14, v16);
    if (v21)
    {
      v22 = *(*(v18 + 56) + 8 * v20);

      if (*(v22 + 16))
      {
        v53 = v10;

        v24 = v58;
        v25 = sub_22701A480(v23, v22);
        v58 = v24;

        sub_22766A630();

        v26 = sub_22766B380();
        v27 = sub_22766C8B0();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134217984;
          *(v28 + 4) = *(v25 + 16);

          _os_log_impl(&dword_226E8E000, v26, v27, "%ld workouts left after filtering out used workouts", v28, 0xCu);
          MEMORY[0x22AA9A450](v28, -1, -1);
        }

        else
        {
        }

        v40 = v57 + 8;
        v39 = *(v57 + 8);
        v39(v13, v4);
        if (*(v25 + 16))
        {
          sub_226EB2DFC(v15, v14, v16);
        }

        else
        {
          v54 = v4;

          v25 = v53;
          sub_22766A630();
          sub_226EB396C(v15, v14, v16);
          v41 = sub_22766B380();
          v42 = sub_22766C890();
          sub_226EB2DFC(v15, v14, v16);
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v57 = v40;
            v44 = v43;
            v58 = swift_slowAlloc();
            v63 = v58;
            *v44 = 136315138;
            v59 = v56;
            v60 = v15;
            v61 = v14;
            v62 = v16;
            v45 = WorkoutPlanModalityDurationGroup.description.getter();
            v47 = v46;
            sub_226EB2DFC(v60, v61, v62);
            v48 = sub_226E97AE8(v45, v47, &v63);

            *(v44 + 4) = v48;
            _os_log_impl(&dword_226E8E000, v41, v42, "Could not find workout candidates for group: %s after filtering out used workouts", v44, 0xCu);
            v49 = v58;
            __swift_destroy_boxed_opaque_existential_0(v58);
            MEMORY[0x22AA9A450](v49, -1, -1);
            MEMORY[0x22AA9A450](v44, -1, -1);
          }

          else
          {
            sub_226EB2DFC(v15, v14, v16);
          }

          v39(v25, v54);
          v50 = sub_227664EC0();
          sub_226EABF94(&qword_28139B898, MEMORY[0x277D51210]);
          swift_allocError();
          (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D51170], v50);
          swift_willThrow();
        }

        return v25;
      }
    }
  }

  sub_22766A630();
  sub_226EB396C(v15, v14, v16);
  v29 = sub_22766B380();
  v30 = sub_22766C8B0();
  sub_226EB2DFC(v15, v14, v16);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v54 = v4;
    v32 = v31;
    v33 = swift_slowAlloc();
    v63 = v33;
    *v32 = 136315138;
    v59 = v56;
    v60 = v15;
    v61 = v14;
    v62 = v16;
    v34 = WorkoutPlanModalityDurationGroup.description.getter();
    v36 = v35;
    sub_226EB2DFC(v60, v61, v62);
    v37 = sub_226E97AE8(v34, v36, &v63);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_226E8E000, v29, v30, "No used workouts found for group: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v32, -1, -1);

    (*(v57 + 8))(v7, v54);
  }

  else
  {
    sub_226EB2DFC(v15, v14, v16);

    (*(v57 + 8))(v7, v4);
  }

  v25 = v55;

  return v25;
}

uint64_t sub_227016634(uint64_t a1)
{
  *(v2 + 344) = v1;
  v4 = sub_22766B390();
  *(v2 + 352) = v4;
  v5 = *(v4 - 8);
  *(v2 + 360) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  v7 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  *(v2 + 48) = *(a1 + 32);

  return MEMORY[0x2822009F8](sub_227016714, 0, 0);
}

uint64_t sub_227016714()
{
  v33 = v0;
  v1 = *(v0 + 344);
  v2 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_cachedCatalog;
  *(v0 + 384) = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_cachedCatalog;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_226F3ABA4((v0 + 16));
    if (v5)
    {
      v6 = *(v0 + 376);
      v7 = *(*(v3 + 56) + 8 * v4);

      sub_22766A630();

      sub_227019388(v0 + 16, v0 + 216);
      v8 = sub_22766B380();
      v9 = sub_22766C8B0();
      sub_2270193E4(v0 + 16);
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 376);
      v12 = *(v0 + 352);
      v13 = *(v0 + 360);
      if (v10)
      {
        v14 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v14 = 134218242;
        *(v14 + 4) = *(v7 + 16);

        *(v14 + 12) = 2080;
        v15 = *(v0 + 32);
        v30 = *(v0 + 16);
        v31 = v15;
        v32 = *(v0 + 48);
        sub_227019388(v0 + 16, v0 + 256);
        v27 = v11;
        v16 = WorkoutPlanGenerationScheduledItem.description.getter();
        v18 = v17;

        sub_226EB2DFC(v31, *(&v31 + 1), v32);
        v19 = sub_226E97AE8(v16, v18, &v29);

        *(v14 + 14) = v19;
        _os_log_impl(&dword_226E8E000, v8, v9, "Found %ld cached workouts for scheduled item: %s", v14, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x22AA9A450](v28, -1, -1);
        MEMORY[0x22AA9A450](v14, -1, -1);

        (*(v13 + 8))(v27, v12);
      }

      else
      {

        (*(v13 + 8))(v11, v12);
      }

      v25 = *(v0 + 368);
      v24 = *(v0 + 376);

      v26 = *(v0 + 8);

      return v26(v7);
    }
  }

  v20 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = v20;
  *(v0 + 88) = *(v0 + 48);
  v21 = swift_task_alloc();
  *(v0 + 392) = v21;
  *v21 = v0;
  v21[1] = sub_227016A34;
  v22 = *(v0 + 344);

  return sub_227015900(v0 + 56);
}

uint64_t sub_227016A34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v7 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v5 = sub_227016E00;
  }

  else
  {
    v5 = sub_227016B48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227016B48()
{
  v33 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  swift_beginAccess();
  sub_227019388(v0 + 16, v0 + 96);

  v5 = *(v4 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30 = *(v4 + v2);
  *(v4 + v2) = 0x8000000000000000;
  sub_22736A144(v1, v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_2270193E4(v0 + 16);
  *(v4 + v2) = v30;
  swift_endAccess();
  sub_22766A630();
  sub_227019388(v0 + 16, v0 + 136);

  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  sub_2270193E4(v0 + 16);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 400);
    v26 = *(v0 + 360);
    v27 = *(v0 + 352);
    v28 = *(v0 + 368);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 134218242;
    *(v10 + 4) = *(v9 + 16);

    *(v10 + 12) = 2080;
    v12 = *(v0 + 32);
    v30 = *(v0 + 16);
    v31 = v12;
    v32 = *(v0 + 48);
    sub_227019388(v0 + 16, v0 + 176);
    v13 = WorkoutPlanGenerationScheduledItem.description.getter();
    v15 = v14;

    sub_226EB2DFC(v31, *(&v31 + 1), v32);
    v16 = sub_226E97AE8(v13, v15, &v29);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_226E8E000, v7, v8, "Found %ld workouts for scheduled item: %s. Saved to cache.", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v17 = *(v0 + 400);
    v19 = *(v0 + 360);
    v18 = *(v0 + 368);
    v20 = *(v0 + 352);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 400);
  v23 = *(v0 + 368);
  v22 = *(v0 + 376);

  v24 = *(v0 + 8);

  return v24(v21);
}

uint64_t sub_227016E00()
{
  v2 = v0[46];
  v1 = v0[47];

  v3 = v0[1];
  v4 = v0[51];

  return v3();
}

uint64_t sub_227016E6C()
{
  v1 = v0;
  v2 = sub_227666AA0();
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_20:

    v31 = sub_227666AE0();
    v32 = *(v31 + 16);
    if (!v32)
    {
    }

    v33 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_musicGenreFrequencies;
    swift_beginAccess();
    v34 = 0;
    v35 = (v31 + 40);
    v61 = v31;
    while (1)
    {
      if (v34 >= *(v31 + 16))
      {
        goto LABEL_41;
      }

      v36 = *(v1 + v33);
      if (*(v36 + 16))
      {
        v38 = *(v35 - 1);
        v37 = *v35;

        v39 = sub_226E92000(v38, v37);
        if (v40)
        {
          v41 = *(*(v36 + 56) + 8 * v39);

          if (__OFADD__(v41, 1))
          {
            goto LABEL_44;
          }

          v63 = v41 + 1;
          v42 = v32;
          swift_beginAccess();
          v43 = *(v1 + v33);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = *(v1 + v33);
          v64 = v45;
          *(v1 + v33) = 0x8000000000000000;
          v46 = sub_226E92000(v38, v37);
          v48 = v45[2];
          v49 = (v47 & 1) == 0;
          v21 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v21)
          {
            goto LABEL_45;
          }

          v51 = v47;
          if (v45[3] >= v50)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_33;
            }

            v55 = v46;
            sub_226FF016C();
            v46 = v55;
            v32 = v42;
            if ((v51 & 1) == 0)
            {
              goto LABEL_36;
            }

LABEL_34:
            v53 = v46;

            v54 = v64;
            *(v64[7] + 8 * v53) = v63;
          }

          else
          {
            sub_226FE2228(v50, isUniquelyReferenced_nonNull_native);
            v46 = sub_226E92000(v38, v37);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_48;
            }

LABEL_33:
            v32 = v42;
            if (v51)
            {
              goto LABEL_34;
            }

LABEL_36:
            v54 = v45;
            v45[(v46 >> 6) + 8] |= 1 << v46;
            v56 = (v45[6] + 16 * v46);
            *v56 = v38;
            v56[1] = v37;
            *(v45[7] + 8 * v46) = v63;
            v57 = v45[2];
            v21 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v21)
            {
              goto LABEL_47;
            }

            v45[2] = v58;
          }

          *(v1 + v33) = v54;
          swift_endAccess();
          v31 = v61;
          goto LABEL_23;
        }
      }

LABEL_23:
      ++v34;
      v35 += 2;
      if (v32 == v34)
      {
      }
    }
  }

  v4 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_trainerFrequencies;
  swift_beginAccess();
  v5 = 0;
  v6 = (v2 + 40);
  v60 = v2;
  while (v5 < *(v2 + 16))
  {
    v7 = *(v1 + v4);
    if (*(v7 + 16))
    {
      v9 = *(v6 - 1);
      v8 = *v6;

      v10 = sub_226E92000(v9, v8);
      if (v11)
      {
        v12 = *(*(v7 + 56) + 8 * v10);

        if (__OFADD__(v12, 1))
        {
          goto LABEL_42;
        }

        v62 = v12 + 1;
        v13 = v3;
        swift_beginAccess();
        v14 = *(v1 + v4);
        v15 = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(v1 + v4);
        v65 = v16;
        *(v1 + v4) = 0x8000000000000000;
        v17 = sub_226E92000(v9, v8);
        v19 = v16[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_43;
        }

        v23 = v18;
        if (v16[3] >= v22)
        {
          if (v15)
          {
            goto LABEL_14;
          }

          v27 = v17;
          sub_226FF016C();
          v17 = v27;
          v3 = v13;
          if ((v23 & 1) == 0)
          {
            goto LABEL_17;
          }

LABEL_15:
          v25 = v17;

          v26 = v65;
          *(v65[7] + 8 * v25) = v62;
        }

        else
        {
          sub_226FE2228(v22, v15);
          v17 = sub_226E92000(v9, v8);
          if ((v23 & 1) != (v24 & 1))
          {
            goto LABEL_48;
          }

LABEL_14:
          v3 = v13;
          if (v23)
          {
            goto LABEL_15;
          }

LABEL_17:
          v26 = v16;
          v16[(v17 >> 6) + 8] |= 1 << v17;
          v28 = (v16[6] + 16 * v17);
          *v28 = v9;
          v28[1] = v8;
          *(v16[7] + 8 * v17) = v62;
          v29 = v16[2];
          v21 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v21)
          {
            goto LABEL_46;
          }

          v16[2] = v30;
        }

        *(v1 + v4) = v26;
        swift_endAccess();
        v2 = v60;
        goto LABEL_4;
      }
    }

LABEL_4:
    ++v5;
    v6 += 2;
    if (v3 == v5)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2270172E0(uint64_t a1, uint64_t *a2)
{
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  v5 = sub_227666B60();
  *(v3 + 216) = v5;
  v6 = *(v5 - 8);
  *(v3 + 224) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v8 = sub_22766B390();
  *(v3 + 248) = v8;
  v9 = *(v8 - 8);
  *(v3 + 256) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  *(v3 + 288) = v11;
  *(v3 + 296) = v12;
  *(v3 + 304) = v13;
  *(v3 + 312) = *(a2 + 1);
  *(v3 + 97) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_22701744C, 0, 0);
}

uint64_t sub_22701744C()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  *(v0 + 64) = *(v0 + 296);
  *(v0 + 72) = v4;
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  *(v0 + 96) = v1;
  sub_226EB396C(v2, v3, v1);
  v5 = swift_task_alloc();
  *(v0 + 328) = v5;
  *v5 = v0;
  v5[1] = sub_227017504;
  v6 = *(v0 + 208);

  return sub_227016634(v0 + 64);
}

uint64_t sub_227017504(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v7 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    sub_226EB2DFC(*(v3 + 312), *(v3 + 320), *(v3 + 97));
    v5 = sub_2270180F8;
  }

  else
  {
    v5 = sub_227017624;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227017624()
{
  v162 = v0;
  v1 = *(v0 + 208);
  v2 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_usedWorkoutsByGroup;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
LABEL_7:
    v41 = *(*(v0 + 336) + 16);

    v42 = *(v0 + 97);
    v44 = *(v0 + 312);
    v43 = *(v0 + 320);
    if (v41 == 1)
    {
      v45 = *(v0 + 272);
      sub_22766A630();
      sub_226EB396C(v44, v43, v42);
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();
      sub_226EB2DFC(v44, v43, v42);
      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 97);
      v51 = *(v0 + 312);
      v50 = *(v0 + 320);
      if (v48)
      {
        v52 = *(v0 + 296);
        v53 = *(v0 + 256);
        v149 = *(v0 + 248);
        v153 = *(v0 + 272);
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v157 = v55;
        v158 = v52;
        *v54 = 136315138;
        v159 = v51;
        v160 = v50;
        v161 = v49;
        v56 = WorkoutPlanModalityDurationGroup.description.getter();
        v58 = v57;
        sub_226EB2DFC(v51, v160, v161);
        v59 = sub_226E97AE8(v56, v58, &v157);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_226E8E000, v46, v47, "Skipping addition of used workouts for group: %s due to low workout count.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x22AA9A450](v55, -1, -1);
        MEMORY[0x22AA9A450](v54, -1, -1);

        (*(v53 + 8))(v153, v149);
      }

      else
      {
        v81 = *(v0 + 272);
        v82 = *(v0 + 248);
        v83 = *(v0 + 256);
        sub_226EB2DFC(*(v0 + 312), *(v0 + 320), *(v0 + 97));

        (*(v83 + 8))(v81, v82);
      }
    }

    else
    {
      v154 = v1;
      v60 = *(v0 + 264);
      v62 = *(v0 + 224);
      v61 = *(v0 + 232);
      v63 = *(v0 + 216);
      v64 = *(v0 + 200);
      sub_22766A630();
      (*(v62 + 16))(v61, v64, v63);
      sub_226EB396C(v44, v43, v42);
      v65 = sub_22766B380();
      v66 = sub_22766C8B0();
      sub_226EB2DFC(v44, v43, v42);
      if (os_log_type_enabled(v65, v66))
      {
        v67 = *(v0 + 97);
        v69 = *(v0 + 312);
        v68 = *(v0 + 320);
        v70 = *(v0 + 296);
        v144 = *(v0 + 256);
        v147 = *(v0 + 248);
        v150 = *(v0 + 264);
        v71 = *(v0 + 224);
        v135 = *(v0 + 232);
        v138 = *(v0 + 216);
        v72 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v157 = v141;
        v158 = v70;
        *v72 = 136315394;
        v159 = v69;
        v160 = v68;
        v161 = v67;
        sub_226EB396C(v69, v68, v67);
        v73 = WorkoutPlanModalityDurationGroup.description.getter();
        v75 = v74;
        sub_226EB2DFC(v69, v160, v161);
        v76 = sub_226E97AE8(v73, v75, &v157);

        *(v72 + 4) = v76;
        *(v72 + 12) = 2080;
        v77 = sub_227666A50();
        v79 = v78;
        (*(v71 + 8))(v135, v138);
        v80 = sub_226E97AE8(v77, v79, &v157);

        *(v72 + 14) = v80;
        _os_log_impl(&dword_226E8E000, v65, v66, "No used workouts found for group: %s. Adding %s.", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v141, -1, -1);
        MEMORY[0x22AA9A450](v72, -1, -1);

        (*(v144 + 8))(v150, v147);
      }

      else
      {
        v85 = *(v0 + 256);
        v84 = *(v0 + 264);
        v86 = *(v0 + 248);
        v88 = *(v0 + 224);
        v87 = *(v0 + 232);
        v89 = *(v0 + 216);

        (*(v88 + 8))(v87, v89);
        (*(v85 + 8))(v84, v86);
      }

      v90 = *(v0 + 97);
      v92 = *(v0 + 312);
      v91 = *(v0 + 320);
      v93 = *(v0 + 296);
      v94 = *(v0 + 200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = sub_227666A50();
      *(inited + 40) = v96;
      v97 = sub_226F3E6A8(inited);
      swift_setDeallocating();
      sub_226FA6DA4(inited + 32);
      swift_beginAccess();
      v98 = *(v154 + v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158 = *(v154 + v2);
      *(v154 + v2) = 0x8000000000000000;
      sub_22736A2BC(v97, v93, v92, v91, v90, isUniquelyReferenced_nonNull_native);
      sub_226EB2DFC(v92, v91, v90);
      *(v154 + v2) = v158;
      swift_endAccess();
    }

    goto LABEL_20;
  }

  v4 = *(v0 + 97);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  v8 = *(v1 + v2);

  v9 = sub_226F3AB00(v7, v6, v5, v4);
  if ((v10 & 1) == 0)
  {

    goto LABEL_7;
  }

  v12 = *(v0 + 336);
  v11 = *(v0 + 344);
  v13 = *(*(v3 + 56) + 8 * v9);

  v156 = v13;
  v14 = *(sub_227018AD4(v12, &v156) + 16);

  v15 = *(v0 + 97);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v151 = *(v0 + 296);
  if (v14 <= 1)
  {
    v100 = *(v0 + 288);
    swift_beginAccess();
    sub_226EB396C(v17, v16, v15);
    sub_227363610(0, v151, v17, v16, v4);
    swift_endAccess();
    sub_22766A630();
    sub_226EB396C(v17, v16, v15);
    v101 = sub_22766B380();
    v102 = sub_22766C8B0();
    sub_226EB2DFC(v17, v16, v15);
    v103 = os_log_type_enabled(v101, v102);
    v104 = *(v0 + 97);
    v105 = *(v0 + 312);
    v106 = *(v0 + 320);
    if (v103)
    {
      v107 = *(v0 + 296);
      v155 = *(v0 + 288);
      v108 = *(v0 + 256);
      v148 = *(v0 + 248);
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v157 = v110;
      v158 = v107;
      *v109 = 136315138;
      v159 = v105;
      v160 = v106;
      v161 = v104;
      v111 = WorkoutPlanModalityDurationGroup.description.getter();
      v113 = v112;
      sub_226EB2DFC(v159, v160, v161);
      v114 = sub_226E97AE8(v111, v113, &v157);

      *(v109 + 4) = v114;
      _os_log_impl(&dword_226E8E000, v101, v102, "Reset used workouts for group: %s due to <= 1 available workout left", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v110);
      MEMORY[0x22AA9A450](v110, -1, -1);
      MEMORY[0x22AA9A450](v109, -1, -1);

      (*(v108 + 8))(v155, v148);
    }

    else
    {
      v122 = *(v0 + 288);
      v124 = *(v0 + 248);
      v123 = *(v0 + 256);
      sub_226EB2DFC(*(v0 + 312), *(v0 + 320), *(v0 + 97));

      (*(v123 + 8))(v122, v124);
    }
  }

  else
  {
    v18 = *(v0 + 224);
    v142 = *(v0 + 216);
    v145 = *(v0 + 240);
    v136 = *(v0 + 280);
    v139 = *(v0 + 200);
    v19 = sub_227666A50();
    sub_2270AE890(&v158, v19, v20);

    v21 = v156;
    swift_beginAccess();
    sub_226EB396C(v17, v16, v15);

    v22 = *(v1 + v2);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v158 = *(v1 + v2);
    *(v1 + v2) = 0x8000000000000000;
    sub_22736A2BC(v21, v151, v17, v16, v4, v23);
    sub_226EB2DFC(v17, v16, v15);
    *(v1 + v2) = v158;
    swift_endAccess();
    sub_22766A630();
    (*(v18 + 16))(v145, v139, v142);
    sub_226EB396C(v17, v16, v15);
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    sub_226EB2DFC(v17, v16, v15);
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 97);
    v28 = *(v0 + 312);
    v29 = *(v0 + 320);
    if (v26)
    {
      v152 = *(v0 + 280);
      v143 = *(v0 + 256);
      v146 = *(v0 + 248);
      v140 = v25;
      v30 = *(v0 + 240);
      v31 = *(v0 + 224);
      v133 = *(v0 + 216);
      v134 = *(v0 + 296);
      v32 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v157 = v137;
      *v32 = 136315394;
      v33 = sub_227666A50();
      v35 = v34;
      (*(v31 + 8))(v30, v133);
      v36 = sub_226E97AE8(v33, v35, &v157);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v158 = v134;
      v159 = v28;
      v160 = v29;
      v161 = v27;
      v37 = WorkoutPlanModalityDurationGroup.description.getter();
      v39 = v38;
      sub_226EB2DFC(v159, v160, v161);
      v40 = sub_226E97AE8(v37, v39, &v157);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_226E8E000, v24, v140, "Added used workout %s to group: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v137, -1, -1);
      MEMORY[0x22AA9A450](v32, -1, -1);

      (*(v143 + 8))(v152, v146);
    }

    else
    {
      v115 = *(v0 + 280);
      v116 = *(v0 + 248);
      v117 = *(v0 + 256);
      v118 = *(v0 + 240);
      v119 = v24;
      v121 = *(v0 + 216);
      v120 = *(v0 + 224);

      sub_226EB2DFC(v28, v29, v27);
      (*(v120 + 8))(v118, v121);
      (*(v117 + 8))(v115, v116);
    }
  }

LABEL_20:
  v126 = *(v0 + 280);
  v125 = *(v0 + 288);
  v128 = *(v0 + 264);
  v127 = *(v0 + 272);
  v130 = *(v0 + 232);
  v129 = *(v0 + 240);

  v131 = *(v0 + 8);

  return v131();
}

uint64_t sub_2270180F8()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[29];
  v5 = v0[30];

  v7 = v0[1];
  v8 = v0[43];

  return v7();
}

void *sub_22701819C()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v3 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_configuration;
  v4 = sub_227667370();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_filterDurations);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore));
  v6 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_trainerFrequencies);

  v7 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_musicGenreFrequencies);

  v8 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredMusicGenres);

  v9 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredTrainers);

  v11 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_modalityIdentifierMap);
  v10 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_modalityIdentifierMap + 8);

  v12 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_cachedCatalog);

  v13 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_usedWorkoutsByGroup);

  return v0;
}

uint64_t sub_2270182B0()
{
  sub_22701819C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanContentCurator()
{
  result = qword_27D7B9C28;
  if (!qword_27D7B9C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22701835C()
{
  result = sub_227667370();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_227018428(uint64_t a1)
{
  v2 = sub_2276660A0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v9 = &v22 - v8;
  v10 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    v24 = "usedWorkoutsByGroup";
    v23 = xmmword_227670CD0;
    do
    {
      sub_22701A900(v12, v9);
      sub_22701A900(v9, v6);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 6u:
          sub_22701A964(v9);
          v14 = sub_227664010();
          (*(*(v14 - 8) + 8))(v6, v14);
          break;
        case 9u:
          v15 = *v6;
          v25 = v6[1];
          sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
          v16 = swift_allocObject();
          *(v16 + 16) = v23;
          *(v16 + 56) = MEMORY[0x277D837D0];
          *(v16 + 64) = sub_22701311C();
          v17 = v25;
          *(v16 + 32) = v15;
          *(v16 + 40) = v17;
          sub_22766C7F0();
          v18 = sub_22701A964(v9);
          MEMORY[0x22AA985C0](v18);
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22766C360();
          }

          sub_22766C3A0();
          v10 = v26;
          break;
        default:
          sub_22701A964(v9);
          sub_22701A964(v6);
          break;
      }

      v12 += v13;
      --v11;
    }

    while (v11);
  }

  if (v10 >> 62)
  {
    if (sub_22766CD20())
    {
      goto LABEL_12;
    }

LABEL_14:

    return 0;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v19 = sub_22766C2B0();

  v20 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v20;
}

id sub_22701876C(uint64_t a1)
{
  v2 = sub_2276660A0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  v10 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    v26 = "usedWorkoutsByGroup";
    v25 = xmmword_227670CD0;
    do
    {
      sub_22701A900(v12, v9);
      sub_22701A900(v9, v6);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 6u:
          v14 = sub_227664010();
          (*(*(v14 - 8) + 8))(v6, v14);
          goto LABEL_5;
        case 9u:
          v15 = *v6;
          v27 = v6[1];
          sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
          v16 = swift_allocObject();
          *(v16 + 16) = v25;
          *(v16 + 56) = MEMORY[0x277D837D0];
          *(v16 + 64) = sub_22701311C();
          v17 = v27;
          *(v16 + 32) = v15;
          *(v16 + 40) = v17;
          v18 = sub_22766C7F0();
          v19 = [objc_opt_self() notPredicateWithSubpredicate_];

          v20 = sub_22701A964(v9);
          MEMORY[0x22AA985C0](v20);
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22766C360();
          }

          sub_22766C3A0();
          v10 = v28;
          break;
        default:
          sub_22701A964(v6);
LABEL_5:
          sub_22701A964(v9);
          break;
      }

      v12 += v13;
      --v11;
    }

    while (v11);
  }

  if (v10 >> 62)
  {
    if (sub_22766CD20())
    {
      goto LABEL_14;
    }

LABEL_16:

    return 0;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_14:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v21 = sub_22766C2B0();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v22;
}

uint64_t sub_227018AD4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v51 = a2;
  v54 = *MEMORY[0x277D85DE8];
  v5 = sub_227666B60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v41 = v11;
    v42 = v3;
    v40[1] = v40;
    MEMORY[0x28223BE20](v8);
    v43 = v40 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v12);
    v11 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v46 = v6 + 16;
    v47 = v10;
    v44 = 0;
    v45 = (v6 + 8);
    v49 = v5;
    v50 = a1;
    v48 = v6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v53 = (v16 - 1) & v16;
LABEL_14:
      v21 = v18 | (v11 << 6);
      v22 = *(a1 + 48);
      v23 = *(v6 + 72);
      v52 = v21;
      (*(v6 + 16))(v10, v22 + v23 * v21, v5);
      v24 = *v51;

      v25 = sub_227666A50();
      v27 = v26;
      if (*(v24 + 16) && (v3 = v25, v28 = *(v24 + 40), sub_22766D370(), sub_22766C100(), v29 = sub_22766D3F0(), v30 = -1 << *(v24 + 32), v31 = v29 & ~v30, ((*(v24 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v32 = ~v30;
        while (1)
        {
          v33 = (*(v24 + 48) + 16 * v31);
          v34 = *v33 == v3 && v33[1] == v27;
          if (v34 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v24 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v10 = v47;
        v5 = v49;
        (*v45)(v47, v49);
        a1 = v50;
        v6 = v48;
        v16 = v53;
      }

      else
      {
LABEL_23:

        v10 = v47;
        v5 = v49;
        (*v45)(v47, v49);
        *&v43[(v52 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v52;
        v35 = __OFADD__(v44++, 1);
        a1 = v50;
        v6 = v48;
        v16 = v53;
        if (v35)
        {
          __break(1u);
LABEL_26:
          result = sub_22726A560(v43, v41, v44, a1);
          goto LABEL_27;
        }
      }
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        goto LABEL_26;
      }

      v20 = *(v13 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v53 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();
  v39 = sub_227019300(v38, v11, a1, v51);

  result = MEMORY[0x22AA9A450](v38, -1, -1);
  if (!v3)
  {
    result = v39;
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_227018F34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = a2;
  v48 = a4;
  v41 = a1;
  v5 = sub_227666B60();
  v6 = *(*(v5 - 8) + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v50 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v44 = v8 + 16;
  v45 = v11;
  v46 = v8;
  v47 = v7;
  v42 = 0;
  v43 = (v8 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v51 = (v18 - 1) & v18;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v50 + 48);
    v25 = *(v46 + 72);
    v49 = v23;
    (*(v46 + 16))(v11, v24 + v25 * v23, v5, v9);
    v26 = *v48;

    v27 = sub_227666A50();
    v29 = v28;
    if (*(v26 + 16) && (v30 = v27, v31 = *(v26 + 40), sub_22766D370(), sub_22766C100(), v32 = sub_22766D3F0(), v33 = -1 << *(v26 + 32), v34 = v32 & ~v33, ((*(v26 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      while (1)
      {
        v36 = (*(v26 + 48) + 16 * v34);
        v37 = *v36 == v30 && v36[1] == v29;
        if (v37 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v26 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v11 = v45;
      v5 = v47;
      (*v43)(v45, v47);
      v18 = v51;
    }

    else
    {
LABEL_22:

      v11 = v45;
      v5 = v47;
      (*v43)(v45, v47);
      *(v41 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v38 = __OFADD__(v42++, 1);
      v18 = v51;
      if (v38)
      {
        __break(1u);
LABEL_25:
        v39 = v50;

        sub_22726A560(v41, v40, v42, v39);
        return;
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_25;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v51 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_22701925C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_227019300(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

    sub_227018F34(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_227019438(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v36 = a4;
  v30 = a1;
  v35 = sub_227666B60();
  v5 = *(*(v35 - 8) + 64);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v35);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v37 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v33 = v6 + 16;
  v34 = v6;
  v31 = 0;
  v32 = v6 + 8;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v38 = (v16 - 1) & v16;
LABEL_11:
    v21 = v34;
    v22 = v35;
    v23 = v18 | (v10 << 6);
    (*(v34 + 16))(v9, *(v37 + 48) + *(v34 + 72) * v23, v35, v7);
    v24 = sub_227666AD0();
    v25 = sub_226F3E6A8(v24);

    v26 = sub_227035534(v25, v36);

    (*(v21 + 8))(v9, v22);
    v16 = v38;
    if (v26)
    {
      *(v30 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_15:
        v28 = v37;

        sub_22726A560(v30, v29, v31, v28);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_15;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v38 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22701967C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = *MEMORY[0x277D85DE8];
  v39 = sub_227666B60();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v41 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v32 = v10;
    v33 = v3;
    v31[1] = v31;
    MEMORY[0x28223BE20](v12);
    v34 = v31 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v11);
    v11 = 0;
    v40 = a1;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v37 = v6 + 16;
    v35 = 0;
    v36 = v6 + 8;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v42 = (v16 - 1) & v16;
LABEL_12:
      v21 = v39;
      v3 = v18 | (v11 << 6);
      v10 = v38;
      (*(v6 + 16))(v38, *(v40 + 48) + *(v6 + 72) * v3, v39);
      v22 = sub_227666AD0();
      a1 = v6;
      v23 = sub_226F3E6A8(v22);

      v24 = sub_227035534(v23, v41);
      v6 = a1;

      (*(a1 + 8))(v10, v21);
      v16 = v42;
      if (v24)
      {
        *&v34[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_16:
          v26 = sub_22726A560(v34, v32, v35, v40);

          goto LABEL_17;
        }
      }
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v13 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v41;

  v26 = sub_22701925C(v29, v10, a1, v30, sub_227019438);

  MEMORY[0x22AA9A450](v29, -1, -1);

LABEL_17:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t sub_227019A10(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, uint64_t a7)
{
  v70 = a2;
  v71 = a3;
  v69[1] = a1;
  v76[3] = &type metadata for PersistenceHandle;
  v76[4] = &off_283A9AF78;
  v11 = swift_allocObject();
  v76[0] = v11;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a6;
  *(v11 + 40) = a7;
  v12 = __swift_project_boxed_opaque_existential_0(v76, &type metadata for PersistenceHandle);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = a4;
  v22 = a5;

  v23 = v13;
  v24 = v14;

  sub_22766A070();
  *(v20 + 16) = v23;
  *(v20 + 24) = v24;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  v25 = sub_2270142F4();
  swift_beginAccess();
  v26 = sub_22766A080();
  v28 = v27;
  v29 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v67 = *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v74, 0);
  swift_endAccess();

  swift_getKeyPath();
  v30 = sub_22701328C(v70);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v74[0] = v30;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v31 = sub_22766C820();
  sub_226ED25F8(v74, v72);
  v32 = v73;
  if (v73)
  {
    v33 = __swift_project_boxed_opaque_existential_0(v72, v73);
    v34 = *(v32 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x28223BE20](v33);
    v37 = v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v37);
    v38 = sub_22766D170();
    (*(v34 + 8))(v37, v32);
    __swift_destroy_boxed_opaque_existential_0(v72);
  }

  else
  {
    v38 = 0;
  }

  v39 = objc_opt_self();
  v40 = [v39 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
  [objc_allocWithZone(v41) initWithLeftExpression:v31 rightExpression:v40 modifier:0 type:10 options:0];

  sub_226EBC888(v74);
  swift_beginAccess();
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v42(v74, 0);
  swift_endAccess();

  v45 = v71;
  if (v71)
  {
    swift_getKeyPath();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    v74[0] = v45;

    v46 = sub_22766C820();
    sub_226ED25F8(v74, v72);
    v47 = v73;
    if (v73)
    {
      v48 = __swift_project_boxed_opaque_existential_0(v72, v73);
      v71 = v69;
      v49 = v39;
      v50 = *(v47 - 8);
      v51 = *(v50 + 64);
      MEMORY[0x28223BE20](v48);
      v53 = v69 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 16))(v53);
      v54 = sub_22766D170();
      (*(v50 + 8))(v53, v47);
      v39 = v49;
      __swift_destroy_boxed_opaque_existential_0(v72);
    }

    else
    {
      v54 = 0;
    }

    v55 = [v39 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v56 = [objc_allocWithZone(v41) initWithLeftExpression:v46 rightExpression:v55 modifier:0 type:10 options:0];

    sub_226EBC888(v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_227670B30;
    *(v57 + 32) = v56;
    v58 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C38, qword_22768C260));
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v59 = v56;
    v60 = sub_22766C2B0();

    v61 = [v58 initWithType:0 subpredicates:v60];

    swift_beginAccess();
    v62 = v61;
    v63 = sub_22766A080();
    v65 = v64;
    MEMORY[0x22AA985C0]();
    if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v68 = *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v63(v74, 0);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(v76);
  return v20;
}

void sub_22701A178(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a1;
  v6 = sub_227666B60();
  v7 = *(*(v6 - 8) + 64);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v51 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46 = v9 + 16;
  v47 = v12;
  v21 = a4 + 56;
  v48 = v9;
  v49 = v8;
  v44 = 0;
  v45 = (v9 + 8);
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_13:
    v25 = v22 | (v13 << 6);
    v26 = *(v51 + 48);
    v27 = *(v48 + 72);
    v50 = v25;
    (*(v48 + 16))(v12, v26 + v27 * v25, v6, v10);
    v28 = sub_227666A50();
    v30 = v29;
    if (*(a4 + 16) && (v31 = v28, v32 = *(a4 + 40), sub_22766D370(), sub_22766C100(), v33 = sub_22766D3F0(), v34 = -1 << *(a4 + 32), v35 = v33 & ~v34, ((*(v21 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
    {
      v36 = ~v34;
      while (1)
      {
        v37 = (*(a4 + 48) + 16 * v35);
        v38 = *v37 == v31 && v37[1] == v30;
        if (v38 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v21 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v12 = v47;
      v6 = v49;
      (*v45)(v47, v49);
      v19 = v52;
    }

    else
    {
LABEL_22:

      v12 = v47;
      v6 = v49;
      (*v45)(v47, v49);
      *(v43 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v39 = __OFADD__(v44++, 1);
      v19 = v52;
      if (v39)
      {
        __break(1u);
LABEL_25:
        v40 = v51;

        sub_22726A560(v43, v42, v44, v40);
        return;
      }
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_25;
    }

    v24 = *(v15 + 8 * v13);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22701A480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_227666B60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v41 = v11;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v13);
    v43 = &v40 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v12);
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v46 = v7 + 16;
    v47 = v7;
    v12 = a2 + 56;
    v44 = 0;
    v45 = (v7 + 8);
    v48 = v6;
    v49 = a1;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v51 = (v17 - 1) & v17;
LABEL_14:
      v22 = v19 | (v11 << 6);
      v23 = *(a1 + 48);
      v24 = *(v7 + 72);
      v50 = v22;
      v3 = v52;
      (*(v7 + 16))(v52, v23 + v24 * v22, v6);
      v25 = sub_227666A50();
      v27 = v26;
      if (*(a2 + 16) && (v3 = v25, v28 = *(a2 + 40), sub_22766D370(), sub_22766C100(), v29 = sub_22766D3F0(), v30 = -1 << *(a2 + 32), v31 = v29 & ~v30, ((*(v12 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v32 = ~v30;
        while (1)
        {
          v33 = (*(a2 + 48) + 16 * v31);
          v34 = *v33 == v3 && v33[1] == v27;
          if (v34 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v12 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v6 = v48;
        (*v45)(v52, v48);
        a1 = v49;
        v7 = v47;
        v17 = v51;
      }

      else
      {
LABEL_23:

        v6 = v48;
        (*v45)(v52, v48);
        a1 = v49;
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        v7 = v47;
        v17 = v51;
        if (v35)
        {
          __break(1u);
LABEL_26:
          v36 = sub_22726A560(v43, v41, v44, a1);

          goto LABEL_27;
        }
      }
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_26;
      }

      v21 = *(v14 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v51 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();

  v36 = sub_22701925C(v39, v11, a1, a2, sub_22701A178);

  MEMORY[0x22AA9A450](v39, -1, -1);

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t sub_22701A900(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276660A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22701A964(uint64_t a1)
{
  v2 = sub_2276660A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22701A9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276660A0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22701AA24()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  type metadata accessor for SeymourServicesLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_2276621B0();

  v4 = sub_22766BFD0();

  [v0 setTitle_];

  v5 = [v2 bundleForClass_];
  sub_2276621B0();

  v6 = sub_22766BFD0();

  [v0 setBody_];

  v7 = sub_22766BFD0();
  [v0 setCategoryIdentifier_];

  [v0 setInterruptionLevel_];
  [v0 setShouldIgnoreDowntime_];
  [v0 setShouldIgnoreDoNotDisturb_];
  v8 = v0;
  v9 = sub_22766BFD0();
  v10 = [objc_opt_self() requestWithIdentifier:v9 content:v8 trigger:0];

  return v10;
}

id sub_22701ACB8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  type metadata accessor for SeymourServicesLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_2276621B0();

  v4 = sub_22766BFD0();

  [v0 setTitle_];

  v5 = [v2 bundleForClass_];
  sub_2276621B0();

  v6 = sub_22766BFD0();

  [v0 setBody_];

  v7 = sub_22766BFD0();
  [v0 setCategoryIdentifier_];

  [v0 setInterruptionLevel_];
  [v0 setShouldIgnoreDowntime_];
  [v0 setShouldIgnoreDoNotDisturb_];
  sub_227666D60();
  sub_22701B084();
  v8 = sub_2276683C0();
  v18 = MEMORY[0x277CC9318];
  *&v19[0] = 0xD000000000000017;
  *&v17 = v8;
  *(&v17 + 1) = v9;
  *(&v19[0] + 1) = 0x8000000227697090;
  sub_22766CDA0();
  v10 = [v0 userInfo];
  sub_22766BEB0();

  sub_2273C272C(&v17, v16, v19);
  sub_226E9B62C(v16);
  sub_226EBC888(v19);
  v11 = sub_22766BE90();

  [v0 setUserInfo_];

  v12 = v0;
  v13 = sub_22766BFD0();
  v14 = [objc_opt_self() requestWithIdentifier:v13 content:v12 trigger:0];

  return v14;
}

unint64_t sub_22701B084()
{
  result = qword_27D7B9C40;
  if (!qword_27D7B9C40)
  {
    sub_227666D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9C40);
  }

  return result;
}

uint64_t sub_22701B100@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C48, qword_227675970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v46 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91A0, &qword_2276732C0);
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
  v18 = sub_227666990();
  v20 = v19;
  v50[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v50[0] = v18;
  v50[1] = v20;
  sub_226F06498();

  v21 = sub_22766C820();
  sub_226ED25F8(v50, v48);
  v22 = v49;
  if (v49)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v48, v49);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v23);
    v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27);
    v28 = sub_22766D170();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v30 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C50 qword_2276759C0))];

  sub_226E97D1C(v50, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v31 = v30;
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v45 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v32(v50, 0);
  swift_endAccess();

  swift_getKeyPath();
  v35 = sub_227397FC8();

  v37 = MEMORY[0x22AA99A00](v36);
  v38 = v50[5];
  sub_2275446D4(v35, v6);
  if (v38)
  {
    objc_autoreleasePoolPop(v37);
  }

  else
  {
    objc_autoreleasePoolPop(v37);

    v40 = sub_2276652D0();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v6, 1, v40) == 1)
    {
      sub_226E97D1C(v6, &qword_27D7B9C48, qword_227675970);
      v42 = 1;
      v43 = v47;
    }

    else
    {
      v43 = v47;
      sub_2276652A0();
      (*(v41 + 8))(v6, v40);
      v42 = 0;
    }

    v44 = sub_227662750();
    return (*(*(v44 - 8) + 56))(v43, v42, 1, v44);
  }
}

uint64_t sub_22701B6B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CF8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22701B72C(uint64_t a1)
{
  v2 = MEMORY[0x277D51CF0];
  *(a1 + 24) = sub_22701B7B0(&qword_2813A56E0, MEMORY[0x277D51CF0]);
  result = sub_22701B7B0(&qword_2813A56D8, v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22701B7B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22701B7F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D28];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22701B878@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_227668D10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666EF0();
  v7 = sub_227668D00();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_22701B958(uint64_t a1)
{
  *(a1 + 24) = sub_22701B9C0(&qword_2813A5650);
  result = sub_22701B9C0(&unk_2813A5640);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22701B9C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227666F20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22701BA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v107 = a4;
  *&v106 = a1;
  *(&v106 + 1) = a2;
  v101 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = v99 - v8;
  v9 = sub_227664530();
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = *(v102 + 64);
  MEMORY[0x28223BE20](v9);
  v100 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662930();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227662750();
  v104 = *(v17 - 1);
  v18 = v104;
  v105 = v17;
  v19 = *(v104 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (v99 - v27);
  sub_227662740();
  (*(v13 + 104))(v16, *MEMORY[0x277CC9968], v12);
  v99[1] = a3;
  sub_2276676B0();
  sub_227662610();
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
  v29 = __swift_project_boxed_opaque_existential_0(v107, v107[3]);
  v30 = *v29;
  v31 = v29[1];
  LOBYTE(v21) = *(v29 + 16);
  v32 = v29[3];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v37 = v30;
  v38 = v31;

  sub_22766A070();
  *(v36 + 16) = v37;
  *(v36 + 24) = v38;
  *(v36 + 32) = v21;
  *(v36 + 40) = v32;
  v39 = v104;
  swift_getKeyPath();
  v107 = v28;
  v40 = v28;
  v41 = v105;
  sub_226E93170(v40, v26, &qword_27D7B9690, qword_227670B50);
  if ((*(v39 + 48))(v26, 1, v41) == 1)
  {
    sub_226E97D1C(v26, &qword_27D7B9690, qword_227670B50);
    v111 = 0u;
    v112 = 0u;
  }

  else
  {
    *(&v112 + 1) = v41;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v111);
    (*(v39 + 32))(boxed_opaque_existential_0, v26, v41);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v43 = sub_22766C820();
  sub_226E93170(&v111, v109, &unk_27D7BC990, &qword_227670A30);
  v44 = v110;
  if (v110)
  {
    v45 = __swift_project_boxed_opaque_existential_0(v109, v110);
    v46 = *(v44 - 8);
    v47 = *(v46 + 64);
    MEMORY[0x28223BE20](v45);
    v49 = v99 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v49);
    v50 = sub_22766D170();
    (*(v46 + 8))(v49, v44);
    __swift_destroy_boxed_opaque_existential_0(v109);
  }

  else
  {
    v50 = 0;
  }

  v51 = objc_opt_self();
  v52 = &off_2785D6000;
  v53 = [v51 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v54 = [objc_allocWithZone(v105) initWithLeftExpression:v43 rightExpression:v53 modifier:0 type:2 options:0];

  sub_226E97D1C(&v111, &unk_27D7BC990, &qword_227670A30);
  v55 = qword_2813B2078;
  swift_beginAccess();
  v56 = v54;
  v57 = sub_22766A080();
  v59 = v58;
  MEMORY[0x22AA985C0]();
  if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v104 = *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v57(&v111, 0);
  swift_endAccess();

  swift_getKeyPath();
  *(&v112 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v111 = v106;

  v60 = sub_22766C820();
  sub_226E93170(&v111, v109, &unk_27D7BC990, &qword_227670A30);
  v61 = v110;
  if (v110)
  {
    v62 = __swift_project_boxed_opaque_existential_0(v109, v110);
    *(&v106 + 1) = v55;
    v63 = v51;
    v64 = *(v61 - 8);
    v65 = *(v64 + 64);
    MEMORY[0x28223BE20](v62);
    v67 = v99 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v67);
    v68 = sub_22766D170();
    (*(v64 + 8))(v67, v61);
    v51 = v63;
    v52 = &off_2785D6000;
    __swift_destroy_boxed_opaque_existential_0(v109);
  }

  else
  {
    v68 = 0;
  }

  v69 = v113;
  v70 = [v51 v52[297]];
  swift_unknownObjectRelease();
  v71 = [objc_allocWithZone(v105) initWithLeftExpression:v60 rightExpression:v70 modifier:0 type:4 options:0];

  sub_226E97D1C(&v111, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v72 = v71;
  v73 = sub_22766A080();
  v75 = v74;
  MEMORY[0x22AA985C0]();
  if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v98 = *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v73(&v111, 0);
  swift_endAccess();

  swift_getKeyPath();
  v76 = sub_227397FC8();

  v78 = MEMORY[0x22AA99A00](v77);
  v79 = v108;
  sub_227544604(v76, v69);
  if (v79)
  {
    objc_autoreleasePoolPop(v78);

    return sub_226E97D1C(v107, &qword_27D7B9690, qword_227670B50);
  }

  objc_autoreleasePoolPop(v78);
  v82 = v102;
  v81 = v103;
  if ((*(v102 + 48))(v69, 1, v103) == 1)
  {
    sub_226E97D1C(v107, &qword_27D7B9690, qword_227670B50);

    sub_226E97D1C(v69, &qword_27D7B8E60, &unk_2276724B0);
LABEL_22:
    v97 = 1;
    v96 = v101;
    return (*(v82 + 56))(v96, v97, 1, v81);
  }

  v83 = *(v82 + 32);
  v83(v100, v69, v81);
  sub_2276644C0();
  v85 = v84;
  sub_227667690();
  v87 = v85 - v86;
  sub_227664510();
  v89 = v88;
  sub_227664510();
  v91 = v90;
  sub_227667680();
  v93 = v92;

  sub_226E97D1C(v107, &qword_27D7B9690, qword_227670B50);
  if (v89 >= v87 || v93 >= v91)
  {
    v82 = v102;
    v81 = v103;
    (*(v102 + 8))(v100, v103);
    goto LABEL_22;
  }

  v94 = v101;
  v95 = v103;
  v83(v101, v100, v103);
  v96 = v94;
  v81 = v95;
  v97 = 0;
  v82 = v102;
  return (*(v82 + 56))(v96, v97, 1, v81);
}

uint64_t sub_22701C560(uint64_t a1, void *a2)
{
  v4 = sub_227662930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v71 = *(v9 - 8);
  v10 = v71;
  v72 = v9;
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v69 - v19;
  sub_227662740();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9968], v4);
  v69[0] = a1;
  sub_2276676B0();
  sub_227662610();
  (*(v5 + 8))(v8, v4);
  v21 = *(v10 + 8);
  v22 = v72;
  v21(v13, v72);
  v23 = a2[3];
  v70 = a2;
  v24 = __swift_project_boxed_opaque_existential_0(a2, v23);
  v25 = *v24;
  v26 = v24[1];
  LODWORD(v78) = *(v24 + 16);
  v27 = v24[3];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v32 = v25;
  v33 = v26;

  sub_22766A070();
  *(v31 + 16) = v32;
  *(v31 + 24) = v33;
  *(v31 + 32) = v78;
  *(v31 + 40) = v27;
  v34 = v71;
  swift_getKeyPath();
  v78 = v20;
  sub_226E93170(v20, v18, &qword_27D7B9690, qword_227670B50);
  if ((*(v34 + 48))(v18, 1, v22) == 1)
  {
    sub_226E97D1C(v18, &qword_27D7B9690, qword_227670B50);
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v76);
    (*(v34 + 32))(boxed_opaque_existential_0, v18, v22);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v36 = sub_22766C820();
  sub_226E93170(&v76, v74, &unk_27D7BC990, &qword_227670A30);
  v37 = v75;
  if (v75)
  {
    v38 = __swift_project_boxed_opaque_existential_0(v74, v75);
    v39 = *(v37 - 8);
    v40 = *(v39 + 64);
    MEMORY[0x28223BE20](v38);
    v42 = v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42);
    v43 = sub_22766D170();
    (*(v39 + 8))(v42, v37);
    __swift_destroy_boxed_opaque_existential_0(v74);
  }

  else
  {
    v43 = 0;
  }

  v44 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v45 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(&v76, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v46 = v45;
  v47 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v68 = *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v47(&v76, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v51 = v73;
  v52 = sub_2273FC7CC(KeyPath);
  if (v51)
  {

    swift_setDeallocating();

    v53 = *(v31 + 40);

    v54 = qword_2813B2078;
    v55 = sub_22766A100();
    (*(*(v55 - 8) + 8))(v31 + v54, v55);
    v56 = *(*v31 + 48);
    v57 = *(*v31 + 52);
    swift_deallocClassInstance();
  }

  else
  {
    v58 = sub_226F3E6A8(v52);

    swift_setDeallocating();

    v59 = *(v31 + 40);

    v60 = qword_2813B2078;
    v61 = sub_22766A100();
    (*(*(v61 - 8) + 8))(v31 + v60, v61);
    v62 = *(*v31 + 48);
    v63 = *(*v31 + 52);
    v64 = swift_deallocClassInstance();
    MEMORY[0x28223BE20](v64);
    v65 = v69[0];
    v69[-4] = v69[1];
    v69[-3] = v65;
    v69[-2] = v70;
    v67 = sub_226FDEED8(sub_22701D424, &v69[-6], v58);

    KeyPath = sub_226F40EB0(v67);
  }

  sub_226E97D1C(v78, &qword_27D7B9690, qword_227670B50);
  return KeyPath;
}

uint64_t sub_22701CD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v57 - v11;
  v12 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = v13;
  v22 = v14;

  sub_22766A070();
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  swift_getKeyPath();
  v63[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v63[0] = a1;
  v63[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v23 = sub_22766C820();
  sub_226E93170(v63, v61, &unk_27D7BC990, &qword_227670A30);
  v24 = v62;
  if (v62)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v61, v62);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0(v61);
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v63, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v33 = v32;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  v37 = v64;
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v56 = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(v63, 0);
  swift_endAccess();

  v38 = MEMORY[0x22AA99A00]();
  v39 = v60;
  sub_227544604(v20, v37);
  if (v39)
  {
    objc_autoreleasePoolPop(v38);
    swift_setDeallocating();

    v40 = *(v20 + 40);

    v41 = qword_2813B2078;
    v42 = sub_22766A100();
    (*(*(v42 - 8) + 8))(v20 + v41, v42);
    v43 = *(*v20 + 48);
    v44 = *(*v20 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    objc_autoreleasePoolPop(v38);
    swift_setDeallocating();

    v46 = *(v20 + 40);

    v47 = qword_2813B2078;
    v48 = sub_22766A100();
    (*(*(v48 - 8) + 8))(v20 + v47, v48);
    v49 = *(*v20 + 48);
    v50 = *(*v20 + 52);
    swift_deallocClassInstance();
    v51 = v59;
    sub_226E93170(v37, v59, &qword_27D7B8E60, &unk_2276724B0);
    v52 = sub_227664530();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_226E97D1C(v51, &qword_27D7B8E60, &unk_2276724B0);
      v54 = sub_227665CB0();
      sub_22701E404();
      swift_allocError();
      (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D51D18], v54);
      swift_willThrow();
      return sub_226E97D1C(v37, &qword_27D7B8E60, &unk_2276724B0);
    }

    else
    {
      sub_226E97D1C(v37, &qword_27D7B8E60, &unk_2276724B0);
      return (*(v53 + 32))(v58, v51, v52);
    }
  }
}

uint64_t sub_22701D448(uint64_t a1, void *a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = sub_22742F870(a1, *v4, v4[1], *(v4 + 16), v4[3]);
  v6 = v5;
  v7 = sub_226EC6320(0);
  if (v2)
  {
  }

  else
  {
    v8 = v7;
    [v7 setResultType_];
    [v8 setFetchLimit_];
    [v8 setFetchOffset_];
    [v8 setIncludesSubentities_];
    v9 = *(v5 + 16);
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v6 = sub_22766C9D0();
  }

  return v6;
}

char *sub_22701D560(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
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
  v14 = sub_227230638(a1);
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
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
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

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

  v27 = sub_227232EB8(100);
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

char *sub_22701D97C(uint64_t a1, void *a2, double a3)
{
  v5 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v6;
  v15 = v7;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  swift_getKeyPath();
  v16 = sub_227230638(a1);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v57[0] = v16;
  v17 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v54 = v17;
  v18 = sub_22766C820();
  sub_226E93170(v57, v55, &unk_27D7BC990, &qword_227670A30);
  v19 = v56;
  if (v56)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v55, v56);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    v25 = 0;
  }

  v53 = objc_opt_self();
  v26 = [v53 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  [objc_allocWithZone(v52) initWithLeftExpression:v18 rightExpression:v26 modifier:0 type:10 options:0];

  sub_226E97D1C(v57, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v57, 0);
  swift_endAccess();

  swift_getKeyPath();
  v58 = MEMORY[0x277D839F8];
  *v57 = a3;

  v30 = sub_22766C820();
  sub_226E93170(v57, v55, &unk_27D7BC990, &qword_227670A30);
  v31 = v56;
  if (v56)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v55, v56);
    v33 = *(v31 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x28223BE20](v32);
    v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    v37 = 0;
  }

  v38 = [v53 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v39 = [objc_allocWithZone(v52) initWithLeftExpression:v30 rightExpression:v38 modifier:0 type:3 options:0];

  sub_226E97D1C(v57, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v40 = v39;
  v41 = sub_22766A080();
  v43 = v42;
  MEMORY[0x22AA985C0]();
  if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v51 = *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v41(v57, 0);
  swift_endAccess();

  v44 = sub_227232EB8(100);
  swift_setDeallocating();

  v45 = *(v13 + 40);

  v46 = qword_2813B2078;
  v47 = sub_22766A100();
  (*(*(v47 - 8) + 8))(v13 + v46, v47);
  v48 = *(*v13 + 48);
  v49 = *(*v13 + 52);
  swift_deallocClassInstance();
  return v44;
}

char *sub_22701DFE8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
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
  v14 = sub_227230638(a1);
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v38[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v38, v36, &unk_27D7BC990, &qword_227670A30);
  v16 = v37;
  if (v37)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v36, v37);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    v20 = MEMORY[0x28223BE20](v17);
    v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v22, v20);
    v23 = sub_22766D170();
    (*(v18 + 8))(v22, v16);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9180 &qword_227673220))];

  sub_226E97D1C(v38, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v35 = *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v38, 0);
  swift_endAccess();

  v28 = sub_2272361B8(100);
  swift_setDeallocating();

  v29 = *(v11 + 40);

  v30 = qword_2813B2078;
  v31 = sub_22766A100();
  (*(*(v31 - 8) + 8))(v11 + v30, v31);
  v32 = *(*v11 + 48);
  v33 = *(*v11 + 52);
  swift_deallocClassInstance();
  return v28;
}

unint64_t sub_22701E404()
{
  result = qword_28139B740;
  if (!qword_28139B740)
  {
    sub_227665CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B740);
  }

  return result;
}

void sub_22701E5B0(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v317 = a8;
  v311 = a7;
  v295 = a6;
  v315 = a5;
  v310 = a4;
  v323 = a3;
  v333 = a2;
  v325 = a1;
  v326 = a9;
  v308 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA0, &qword_227675D18);
  v298 = *(v14 - 8);
  v299 = v14;
  v15 = *(v298 + 64);
  MEMORY[0x28223BE20](v14);
  v297 = &v286 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v319 = *(v17 - 8);
  v320 = v17;
  v18 = *(v319 + 64);
  MEMORY[0x28223BE20](v17);
  v318 = &v286 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CC8, &unk_227675D50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v332 = &v286 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v330 = &v286 - v25;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
  v316 = *(v331 - 8);
  v26 = *(v316 + 64);
  MEMORY[0x28223BE20](v331);
  v327 = &v286 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v312 = &v286 - v30;
  v31 = sub_227665970();
  v313 = *(v31 - 8);
  v314 = v31;
  v32 = *(v313 + 64);
  MEMORY[0x28223BE20](v31);
  v302 = &v286 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v292 = &v286 - v36;
  v37 = sub_2276659A0();
  v293 = *(v37 - 8);
  v294 = v37;
  v38 = *(v293 + 64);
  MEMORY[0x28223BE20](v37);
  v289 = &v286 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_227662750();
  v306 = *(v40 - 8);
  v307 = v40;
  v41 = *(v306 + 64);
  MEMORY[0x28223BE20](v40);
  v305 = &v286 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v303 = &v286 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v301 = &v286 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v309 = &v286 - v50;
  MEMORY[0x28223BE20](v49);
  v300 = &v286 - v51;
  v52 = sub_227665AD0();
  v328 = *(v52 - 8);
  v329 = v52;
  v53 = *(v328 + 64);
  v54 = MEMORY[0x28223BE20](v52);
  v304 = &v286 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v291 = &v286 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v60 = &v286 - v59;
  v61 = sub_2276651F0();
  v322 = *(v61 - 8);
  v62 = *(v322 + 64);
  MEMORY[0x28223BE20](v61);
  v64 = &v286 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22766B7F0();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  v69 = &v286 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22766B390();
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  v73 = MEMORY[0x28223BE20](v70);
  v288 = &v286 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v73);
  v287 = &v286 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v290 = &v286 - v78;
  MEMORY[0x28223BE20](v77);
  v80 = &v286 - v79;
  sub_22766A740();
  sub_22766B370();
  v82 = *(v71 + 8);
  v81 = (v71 + 8);
  v296 = v70;
  v83 = v70;
  v84 = v82;
  v82(v80, v83);
  v324 = v66;
  v85 = *(v66 + 16);
  v334 = v69;
  v86 = v325;
  v325 = v65;
  v87 = v65;
  v88 = v61;
  v89 = v322;
  v85(v69, v86, v87);
  sub_226E93170(v323, v60, &qword_27D7B9140, &unk_22767F4E0);
  if ((*(v89 + 48))(v60, 1, v88) == 1)
  {
    v286 = v84;
    v290 = v81;
    sub_226E97D1C(v60, &qword_27D7B9140, &unk_22767F4E0);
    v90 = v310;
    v91 = v308;
    goto LABEL_6;
  }

  (*(v89 + 32))(v64, v60, v88);
  v92 = sub_2276651D0();
  v93 = sub_2275A5038(v92);

  if (v93)
  {
    v94 = v64;
    v95 = sub_227331EA0(v93);

    v96 = sub_22766B7D0();
    v98 = v97;
    v99 = *v97;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v337[0] = *v98;
    *v98 = 0x8000000000000000;
    v91 = v308;
    sub_2270318E8(v95, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, v337);
    if (v91)
    {
      goto LABEL_72;
    }

    v286 = v84;
    v290 = v81;

    v101 = *v98;
    *v98 = v337[0];

    v96(&v338, 0);
    (*(v89 + 8))(v94, v88);
    v90 = v310;
LABEL_6:

    v102 = sub_22766B7D0();
    v98 = v103;
    v104 = *v103;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v337[0] = *v98;
    *v98 = 0x8000000000000000;
    sub_2270318E8(a14, sub_227553D14, 0, v105, v337);
    if (!v91)
    {

      v106 = *v98;
      *v98 = v337[0];

      v102(&v338, 0);

      v107 = sub_22766B7D0();
      v109 = v108;
      v110 = *v108;
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v337[0] = *v109;
      *v109 = 0x8000000000000000;
      sub_2270318E8(v90, sub_227553D14, 0, v111, v337);
      v112 = a10;

      v113 = *v109;
      *v109 = v337[0];

      v107(&v338, 0);
      v114 = sub_2276636F0();
      v116 = v328;
      v115 = v329;
      v117 = v332;
      if (v114)
      {
        v118 = v300;
        sub_226E93170(a10, v300, &qword_27D7B8428, &qword_227675CB0);
        if ((*(v116 + 48))(v118, 1, v115) == 1)
        {
          sub_226E97D1C(v118, &qword_27D7B8428, &qword_227675CB0);
        }

        else
        {
          v119 = v291;
          (*(v116 + 32))(v291, v118, v115);
          v120 = v305;
          sub_227662740();
          v121 = sub_227665AA0();
          (*(v306 + 8))(v120, v307);
          if (v121)
          {
            v338 = sub_227666680();
            LOBYTE(v339) = v122 & 1;
            LOBYTE(v337[0]) = 1;
            sub_227033D54();
            sub_227033DA8();
            if (sub_227663B30())
            {
              v123 = v119;
              v124 = sub_227664770();
              v126 = v125;
              v340 = MEMORY[0x277D837D0];
              v338 = 0x65766F72706D69;
              v339 = 0xE700000000000000;
              v127 = sub_22766B7D0();
              sub_22736373C(&v338, v124, v126);
              v127(v337, 0);
              v116 = v328;
              v128 = *(v328 + 8);
              v129 = v123;
            }

            else
            {
              v116 = v328;
              v128 = *(v328 + 8);
              v129 = v119;
            }

            v115 = v329;
            v128(v129, v329);
            v117 = v332;
            v112 = a10;
          }

          else
          {
            (*(v116 + 8))(v119, v115);
            v117 = v332;
          }
        }
      }

      v140 = v309;
      sub_226E93170(v112, v309, &qword_27D7B8428, &qword_227675CB0);
      v141 = v116;
      v142 = v140;
      v143 = *(v141 + 48);
      v322 = v141 + 48;
      v310 = v143;
      if (v143(v140, 1, v115) == 1)
      {
        sub_226E97D1C(v140, &qword_27D7B8428, &qword_227675CB0);
        v144 = v331;
      }

      else
      {
        v145 = v304;
        (*(v141 + 32))(v304, v142, v115);
        v146 = sub_227663700();
        v144 = v331;
        if (v146)
        {
          v147 = sub_227665A90();
          v148 = sub_2275A5364(v147);

          if (v148)
          {
            v149 = sub_22766B7D0();
            v151 = v150;
            v152 = *v150;
            v153 = swift_isUniquelyReferenced_nonNull_native();
            v337[0] = *v151;
            *v151 = 0x8000000000000000;
            sub_2270318E8(v148, sub_227553D14, 0, v153, v337);

            v154 = *v151;
            *v151 = v337[0];

            v149(&v338, 0);
            v115 = v329;
            (*(v328 + 8))(v304, v329);
          }

          else
          {
            v155 = v287;
            sub_22766A740();
            v156 = sub_22766B380();
            v157 = sub_22766C890();
            if (os_log_type_enabled(v156, v157))
            {
              v158 = swift_slowAlloc();
              *v158 = 0;
              _os_log_impl(&dword_226E8E000, v156, v157, "Unable to serialize subscription data", v158, 2u);
              MEMORY[0x22AA9A450](v158, -1, -1);
            }

            v159 = v296;
            v286(v155, v296);
            v160 = sub_2276636A0();
            sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
            v161 = swift_allocError();
            (*(*(v160 - 8) + 104))(v162, *MEMORY[0x277D50040], v160);
            swift_willThrow();
            v163 = v161;
            v164 = v288;
            sub_22766A740();
            v165 = v161;
            v166 = sub_22766B380();
            v167 = sub_22766C890();

            if (os_log_type_enabled(v166, v167))
            {
              v168 = swift_slowAlloc();
              v169 = swift_slowAlloc();
              v338 = v169;
              *v168 = 136446210;
              swift_getErrorValue();
              LODWORD(v309) = v167;
              v170 = MEMORY[0x22AA995D0](v335, v336);
              v172 = sub_226E97AE8(v170, v171, &v338);

              *(v168 + 4) = v172;
              _os_log_impl(&dword_226E8E000, v166, v309, "Error applying subscription data: %{public}s", v168, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v169);
              MEMORY[0x22AA9A450](v169, -1, -1);
              MEMORY[0x22AA9A450](v168, -1, -1);

              v173 = v164;
              v174 = v296;
            }

            else
            {

              v173 = v164;
              v174 = v159;
            }

            v286(v173, v174);
            v115 = v329;
            (*(v328 + 8))(v304, v329);
          }

          v144 = v331;
          v117 = v332;
        }

        else
        {
          (*(v141 + 8))(v145, v115);
        }
      }

      v175 = sub_2276636E0();
      v176 = v330;
      if (v175)
      {
        v177 = v301;
        sub_226E93170(v112, v301, &qword_27D7B8428, &qword_227675CB0);
        if (v310(v177, 1, v115) == 1)
        {
          sub_226E97D1C(v177, &qword_27D7B8428, &qword_227675CB0);
          v178 = 0;
        }

        else
        {
          v179 = v305;
          sub_227662740();
          v178 = sub_227665AA0();
          (*(v306 + 8))(v179, v307);
          (*(v328 + 8))(v177, v115);
        }

        v180 = sub_227664790();
        v182 = v181;
        v340 = MEMORY[0x277D839B0];
        LOBYTE(v338) = v178 & 1;
        v183 = sub_22766B7D0();
        sub_22736373C(&v338, v180, v182);
        v183(v337, 0);
        v144 = v331;
        v117 = v332;
        v176 = v330;
      }

      v323 = v112;
      if (v311 & 1) != 0 && (sub_227663710())
      {
        v184 = v292;
        sub_226E93170(v295, v292, &qword_27D7B9148, &qword_2276730B0);
        v186 = v293;
        v185 = v294;
        v187 = (*(v293 + 48))(v184, 1, v294);
        v188 = MEMORY[0x277D839B0];
        if (v187 == 1)
        {
          sub_226E97D1C(v184, &qword_27D7B9148, &qword_2276730B0);
          v189 = sub_2276647C0();
          v191 = v190;
          v340 = v188;
          LOBYTE(v338) = 0;
          v192 = sub_22766B7D0();
          sub_22736373C(&v338, v189, v191);
          v192(v337, 0);
        }

        else
        {
          v194 = v289;
          (*(v186 + 32))(v289, v184, v185);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
          v195 = v185;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_227675BD0;
          *(inited + 32) = sub_2276647C0();
          *(inited + 40) = v197;
          *(inited + 72) = v188;
          *(inited + 48) = 1;
          *(inited + 80) = sub_227664870();
          *(inited + 88) = v198;
          v199 = sub_227665980();
          v200 = MEMORY[0x277D83B88];
          *(inited + 120) = MEMORY[0x277D83B88];
          *(inited + 96) = v199;
          *(inited + 128) = sub_227664850();
          *(inited + 136) = v201;
          v202 = sub_227665990();
          *(inited + 168) = v200;
          *(inited + 144) = v202;
          v203 = sub_227149264(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
          swift_arrayDestroy();
          v204 = sub_22766B7D0();
          v206 = v205;
          v207 = *v205;
          v208 = swift_isUniquelyReferenced_nonNull_native();
          v337[0] = *v206;
          *v206 = 0x8000000000000000;
          sub_2270318E8(v203, sub_227553D14, 0, v208, v337);

          v209 = *v206;
          *v206 = v337[0];

          v204(&v338, 0);
          (*(v186 + 8))(v194, v195);
        }

        v193 = v327;
        v144 = v331;
        v117 = v332;
        v176 = v330;
      }

      else
      {
        v193 = v327;
      }

      v210 = v312;
      sub_226E93170(v315, v312, &qword_27D7B9150, &unk_227675CD0);
      v212 = v313;
      v211 = v314;
      if ((*(v313 + 48))(v210, 1, v314) == 1)
      {
        sub_226E97D1C(v210, &qword_27D7B9150, &unk_227675CD0);
      }

      else
      {
        v213 = v302;
        (*(v212 + 32))(v302, v210, v211);
        v214 = sub_227665960();
        v215 = sub_227331EA0(v214);

        v216 = sub_22766B7D0();
        v218 = v217;
        v219 = *v217;
        v220 = swift_isUniquelyReferenced_nonNull_native();
        v337[0] = *v218;
        *v218 = 0x8000000000000000;
        sub_2270318E8(v215, sub_227553D14, 0, v220, v337);

        v221 = *v218;
        *v218 = v337[0];

        v216(&v338, 0);
        (*(v212 + 8))(v213, v211);
        v193 = v327;
        v144 = v331;
        v117 = v332;
        v176 = v330;
      }

      v222 = v323;
      sub_226E93170(v317, v176, &qword_27D7B9138, &unk_227675CC0);
      v223 = (*(v316 + 48))(v176, 1, v144);
      v224 = v321;
      v225 = v334;
      if (v223 == 1)
      {
        v226 = &qword_27D7B9138;
        v227 = &unk_227675CC0;
        v228 = v176;
      }

      else
      {
        sub_226E95D18(v176, v193, &qword_27D7B9160, &qword_227675CE0);
        sub_227663B00();
        v229 = sub_227664D00();
        v230 = *(v229 - 8);
        if ((*(v230 + 48))(v117, 1, v229) == 1)
        {
          sub_226E97D1C(v193, &qword_27D7B9160, &qword_227675CE0);
          v226 = &qword_27D7B9CC8;
          v227 = &unk_227675D50;
          v228 = v117;
        }

        else
        {
          v231 = sub_227664CF0();
          v233 = v232;
          (*(v230 + 8))(v117, v229);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
          v234 = swift_initStackObject();
          *(v234 + 16) = xmmword_227670CD0;
          *(v234 + 32) = 0xD00000000000001DLL;
          v235 = v234 + 32;
          *(v234 + 72) = MEMORY[0x277D837D0];
          *(v234 + 40) = 0x8000000227697410;
          *(v234 + 48) = v231;
          *(v234 + 56) = v233;
          v236 = sub_227149264(v234);
          swift_setDeallocating();
          sub_226E97D1C(v235, &unk_27D7BE5C0, &qword_22767D1D0);
          v237 = sub_22766B7D0();
          v239 = v238;
          v240 = *v238;
          v241 = swift_isUniquelyReferenced_nonNull_native();
          v337[0] = *v239;
          *v239 = 0x8000000000000000;
          sub_2270318E8(v236, sub_227553D14, 0, v241, v337);

          v242 = *v239;
          *v239 = v337[0];

          v237(&v338, 0);
          v226 = &qword_27D7B9160;
          v227 = &qword_227675CE0;
          v228 = v327;
        }
      }

      sub_226E97D1C(v228, v226, v227);
      __swift_project_boxed_opaque_existential_0((v224 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider), *(v224 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider + 24));
      v243 = off_283A9A9B0(v333);
      if ((v244 & 1) == 0)
      {
        v245 = v243;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
        v246 = swift_initStackObject();
        *(v246 + 16) = xmmword_227670CD0;
        *(v246 + 32) = sub_2276647B0();
        *(v246 + 72) = MEMORY[0x277D83B88];
        *(v246 + 40) = v247;
        *(v246 + 48) = v245;
        v248 = sub_227149264(v246);
        swift_setDeallocating();
        sub_226E97D1C(v246 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
        v249 = sub_22766B7D0();
        v251 = v250;
        v252 = *v250;
        v253 = swift_isUniquelyReferenced_nonNull_native();
        v337[0] = *v251;
        *v251 = 0x8000000000000000;
        sub_2270318E8(v248, sub_227553D14, 0, v253, v337);

        v254 = *v251;
        *v251 = v337[0];

        v249(&v338, 0);
      }

      v255 = v318;
      v256 = v319;
      v257 = v320;
      (*(v319 + 16))(v318, v224 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder__metricsEventDefaultRoutingBehavior, v320);
      sub_227669730();
      (*(v256 + 8))(v255, v257);
      if (v338)
      {
        goto LABEL_61;
      }

      v258 = v303;
      sub_226E93170(v222, v303, &qword_27D7B8428, &qword_227675CB0);
      v259 = v329;
      if (v310(v258, 1, v329) == 1)
      {
        sub_226E97D1C(v258, &qword_27D7B8428, &qword_227675CB0);
      }

      else
      {
        v260 = v305;
        sub_227662740();
        v261 = sub_227665AA0();
        (*(v306 + 8))(v260, v307);
        (*(v328 + 8))(v258, v259);
        if (v261)
        {
LABEL_61:
          sub_22766B870();
          v340 = sub_22766B9C0();
          v341 = MEMORY[0x277D21FB0];
          __swift_allocate_boxed_opaque_existential_0(&v338);
          sub_22766B9B0();
          sub_22766BDC0();

          __swift_destroy_boxed_opaque_existential_0(&v338);
          sub_227669270();
LABEL_70:
          (*(v324 + 8))(v225, v325);
          return;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
      v262 = swift_initStackObject();
      *(v262 + 16) = xmmword_227670CD0;
      *(v262 + 32) = sub_2276648A0();
      *(v262 + 40) = v263;
      v264 = sub_2276637A0();
      *(v262 + 72) = MEMORY[0x277D837D0];
      *(v262 + 48) = v264;
      *(v262 + 56) = v265;
      v266 = sub_227149264(v262);
      swift_setDeallocating();
      sub_226E97D1C(v262 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
      v267 = sub_22766B7D0();
      v269 = v268;
      v270 = *v268;
      v271 = swift_isUniquelyReferenced_nonNull_native();
      v337[0] = *v269;
      *v269 = 0x8000000000000000;
      sub_226FDAC14(v266, sub_227553D14, 0, v271, v337);

      v272 = *v269;
      *v269 = v337[0];

      v267(&v338, 0);
      v273 = v297;
      sub_22766BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
      sub_22766BA90();
      (*(v298 + 8))(v273, v299);
      v274 = v338;
      if (!v338)
      {
        v274 = sub_227149264(MEMORY[0x277D84F90]);
      }

      v275 = sub_22766B7D0();
      v277 = v276;
      v278 = *v276;
      v279 = swift_isUniquelyReferenced_nonNull_native();
      v337[0] = *v277;
      *v277 = 0x8000000000000000;
      sub_226FDAC14(v274, sub_227553D14, 0, v279, v337);

      v280 = *v277;
      *v277 = v337[0];

      v275(&v338, 0);
      v281 = *(v224 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_amsEngagement);
      v282 = sub_22766B7E0();
      sub_227332110(v282);

      v283 = sub_22766BE90();

      v284 = [v281 enqueueData_];

      *(swift_allocObject() + 16) = v284;
      sub_227669280();
      goto LABEL_70;
    }

LABEL_72:

    v285 = *v98;
    *v98 = v337[0];

    __break(1u);
    return;
  }

  v130 = v290;
  sub_22766A740();
  v131 = sub_22766B380();
  v132 = sub_22766C890();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = v88;
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&dword_226E8E000, v131, v132, "Unable to serialize click event", v134, 2u);
    v135 = v134;
    v88 = v133;
    MEMORY[0x22AA9A450](v135, -1, -1);
  }

  v84(v130, v296);
  v136 = sub_2276636A0();
  sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
  v137 = swift_allocError();
  (*(*(v136 - 8) + 104))(v138, *MEMORY[0x277D50040], v136);
  *(swift_allocObject() + 16) = v137;
  v139 = v137;
  sub_227669280();
  (*(v89 + 8))(v64, v88);
  (*(v324 + 8))(v334, v325);
}

void sub_227020644(void *a1)
{
  v3[4] = sub_2270206FC;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_226E9F1D0;
  v3[3] = &block_descriptor_8;
  v2 = _Block_copy(v3);
  [a1 addFinishBlock_];
  _Block_release(v2);
}

uint64_t sub_2270206FC(uint64_t a1, void *a2)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a2;
    sub_22766A740();
    v10 = a2;
    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x22AA995D0](v18[2], v18[3]);
      v17 = sub_226E97AE8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v11, v12, "Error reporting engagement event for non subscribed user %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AA9A450](v14, -1, -1);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_2270208EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  LODWORD(v540) = a3;
  v501 = a2;
  v538 = a4;
  v536 = 0;
  v464 = sub_2276651A0();
  v463 = *(v464 - 8);
  v5 = *(v463 + 64);
  MEMORY[0x28223BE20](v464);
  v462 = &v457 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v466 = sub_22766B390();
  v465 = *(v466 - 8);
  v7 = *(v465 + 64);
  MEMORY[0x28223BE20](v466);
  v467 = &v457 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = sub_227663A40();
  v460 = *(v461 - 8);
  v9 = *(v460 + 64);
  v10 = MEMORY[0x28223BE20](v461);
  v459 = &v457 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = v11;
  MEMORY[0x28223BE20](v10);
  v473 = &v457 - v12;
  v472 = sub_227665E10();
  v471 = *(v472 - 8);
  v13 = *(v471 + 64);
  v14 = MEMORY[0x28223BE20](v472);
  v470 = &v457 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v469 = v15;
  MEMORY[0x28223BE20](v14);
  v478 = &v457 - v16;
  v487 = sub_227667520();
  v486 = *(v487 - 8);
  v17 = *(v486 + 64);
  v18 = MEMORY[0x28223BE20](v487);
  v477 = &v457 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v484 = &v457 - v20;
  v494 = sub_227664D20();
  v500 = *(v494 - 8);
  v21 = *(v500 + 64);
  MEMORY[0x28223BE20](v494);
  v499 = &v457 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v511 = sub_2276651C0();
  v510 = *(v511 - 8);
  v23 = *(v510 + 64);
  MEMORY[0x28223BE20](v511);
  v509 = &v457 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = sub_227663690();
  v506 = *(v507 - 8);
  v25 = *(v506 + 64);
  v26 = MEMORY[0x28223BE20](v507);
  v505 = &v457 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v504 = v27;
  MEMORY[0x28223BE20](v26);
  v518 = &v457 - v28;
  v517 = sub_227667DA0();
  v516 = *(v517 - 8);
  v29 = *(v516 + 64);
  v30 = MEMORY[0x28223BE20](v517);
  v515 = &v457 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v525 = &v457 - v31;
  v529 = sub_227663260();
  v535 = *(v529 - 8);
  v32 = v535[8];
  v33 = MEMORY[0x28223BE20](v529);
  v479 = &v457 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v474 = &v457 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v488 = &v457 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v493 = &v457 - v40;
  MEMORY[0x28223BE20](v39);
  v519 = &v457 - v41;
  v531 = sub_22766B910();
  v530 = *(v531 - 8);
  v42 = *(v530 + 64);
  v43 = MEMORY[0x28223BE20](v531);
  v481 = &v457 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v485 = &v457 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v498 = &v457 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v503 = &v457 - v50;
  MEMORY[0x28223BE20](v49);
  *&v527 = &v457 - v51;
  v537 = sub_22766B7F0();
  v534 = *(v537 - 8);
  v52 = *(v534 + 64);
  v53 = MEMORY[0x28223BE20](v537);
  v480 = &v457 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v483 = &v457 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v492 = &v457 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v502 = &v457 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v533 = &v457 - v62;
  v532 = v63;
  MEMORY[0x28223BE20](v61);
  v526 = &v457 - v64;
  v65 = sub_2276624A0();
  v528 = *(v65 - 8);
  v66 = *(v528 + 64);
  v67 = MEMORY[0x28223BE20](v65);
  v468 = &v457 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v67);
  v491 = &v457 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v490 = &v457 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v514 = &v457 - v74;
  MEMORY[0x28223BE20](v73);
  v513 = &v457 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v77 = *(*(v76 - 8) + 64);
  v78 = MEMORY[0x28223BE20](v76 - 8);
  v475 = &v457 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v78);
  v496 = &v457 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v495 = &v457 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v512 = &v457 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v508 = &v457 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v520 = &v457 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v523 = &v457 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v94 = &v457 - v93;
  v95 = MEMORY[0x28223BE20](v92);
  v97 = &v457 - v96;
  MEMORY[0x28223BE20](v95);
  v99 = &v457 - v98;
  v100 = sub_227666180();
  v101 = *(v100 - 8);
  v102 = *(v101 + 64);
  v103 = MEMORY[0x28223BE20](v100);
  v457 = &v457 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v106 = (&v457 - v105);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  v521 = *(v107 - 8);
  v108 = *(v521 + 64);
  v109 = MEMORY[0x28223BE20](v107 - 8);
  v476 = &v457 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = MEMORY[0x28223BE20](v109);
  v482 = &v457 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v489 = &v457 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v497 = &v457 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v522 = &v457 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v524 = &v457 - v119;
  MEMORY[0x28223BE20](v118);
  v541 = &v457 - v120;
  sub_227665170();
  sub_227665190();
  v121 = (*(v101 + 88))(v106, v100);
  if (v121 == *MEMORY[0x277D52140])
  {
    (*(v101 + 96))(v106, v100);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CB8, &qword_227675D38);
    v123 = *(v122 + 48);
    v124 = (v106 + *(v122 + 64));
    v126 = *v124;
    v125 = v124[1];
    v521 = v126;
    v522 = v125;
    sub_226E95D18(v106, v99, &unk_27D7BB570, &unk_227670FC0);
    v525 = v97;
    sub_226E95D18(v106 + v123, v97, &unk_27D7BB570, &unk_227670FC0);
    v127 = sub_227149264(MEMORY[0x277D84F90]);
    sub_226E93170(v99, v94, &unk_27D7BB570, &unk_227670FC0);
    v128 = v528;
    v129 = *(v528 + 48);
    v130 = v99;
    if (v129(v94, 1, v65) == 1)
    {
      sub_226E97D1C(v94, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v141 = v513;
      (*(v128 + 32))(v513, v94, v65);
      v142 = sub_227662390();
      v545 = MEMORY[0x277D837D0];
      *&v544 = v142;
      *(&v544 + 1) = v143;
      sub_226F04970(&v544, &v543);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v546 = v127;
      sub_22736A46C(&v543, 0x6C72556E65706FLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      (*(v128 + 8))(v141, v65);
      v127 = v546;
    }

    v145 = v523;
    sub_226E93170(v525, v523, &unk_27D7BB570, &unk_227670FC0);
    v146 = v129(v145, 1, v65);
    v147 = v539;
    if (v146 == 1)
    {
      sub_226E97D1C(v145, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v159 = v514;
      (*(v128 + 32))(v514, v145, v65);
      v160 = v520;
      (*(v128 + 16))(v520, v159, v65);
      (*(v128 + 56))(v160, 0, 1, v65);
      v161 = v128;
      v162 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL;
      swift_beginAccess();
      sub_227033718(v160, v147 + v162);
      swift_endAccess();
      v163 = sub_227662390();
      v545 = MEMORY[0x277D837D0];
      *&v544 = v163;
      *(&v544 + 1) = v164;
      sub_226F04970(&v544, &v543);
      v165 = swift_isUniquelyReferenced_nonNull_native();
      v546 = v127;
      sub_22736A46C(&v543, 0x7255666552747865, 0xE90000000000006CLL, v165);
      (*(v161 + 8))(v159, v65);
      v127 = v546;
    }

    v166 = v541;
    v167 = v535;
    v168 = v529;
    v169 = v522;
    v541 = v130;
    if (v522)
    {
      v170 = (v147 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication);
      v171 = *(v147 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication + 8);
      v172 = v521;
      *v170 = v521;
      v170[1] = v169;

      v545 = MEMORY[0x277D837D0];
      *&v544 = v172;
      *(&v544 + 1) = v169;
      sub_226F04970(&v544, &v543);
      v173 = swift_isUniquelyReferenced_nonNull_native();
      v546 = v127;
      sub_22736A46C(&v543, 0x707041666572, 0xE600000000000000, v173);
      v127 = v546;
    }

    v174 = v527;
    sub_22766B8E0();
    v175 = sub_227149264(MEMORY[0x277D84F90]);
    v176 = sub_22766B900();
    v545 = MEMORY[0x277D837D0];
    *&v544 = v176;
    *(&v544 + 1) = v177;
    sub_226F04970(&v544, &v543);
    v178 = swift_isUniquelyReferenced_nonNull_native();
    v546 = v175;
    sub_22736A46C(&v543, 0x707954746E657665, 0xE900000000000065, v178);
    v179 = v546;
    v180 = v524;
    sub_226E93170(v166, v524, &qword_27D7B9158, &qword_2276730B8);
    if ((v167[6])(v180, 1, v168) == 1)
    {
      sub_226E97D1C(v180, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      v181 = v166;
      v182 = v519;
      (v167[4])(v519, v180, v168);
      v183 = sub_227663200();
      v184 = sub_2275A5364(v183);

      if (v184)
      {
        v185 = swift_isUniquelyReferenced_nonNull_native();
        *&v544 = v179;
        sub_2270318E8(v184, sub_227553D14, 0, v185, &v544);

        (v167[1])(v182, v168);
        v179 = v544;
      }

      else
      {
        (v167[1])(v182, v168);
      }

      v166 = v181;
    }

    v203 = swift_isUniquelyReferenced_nonNull_native();
    *&v544 = v179;
    sub_2270318E8(v127, sub_227553D14, 0, v203, &v544);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v204 = sub_22766BC20();
    v205 = *(v204 - 8);
    v206 = *(v205 + 72);
    v207 = (*(v205 + 80) + 32) & ~*(v205 + 80);
    v208 = swift_allocObject();
    *(v208 + 16) = xmmword_227670CD0;
    sub_22766BC10();
    sub_226F4C828(v208);
    swift_setDeallocating();
    (*(v205 + 8))(v208 + v207, v204);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v209 = *(sub_22766BC00() - 8);
    v210 = *(v209 + 72);
    v211 = (*(v209 + 80) + 32) & ~*(v209 + 80);
    v212 = swift_allocObject();
    *(v212 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v212);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v213 = v526;
    sub_22766B7C0();
    (*(v530 + 8))(v174, v531);
    v214 = v534;
    v215 = v533;
    v216 = v537;
    (*(v534 + 16))(v533, v213, v537);
    v217 = (*(v214 + 80) + 16) & ~*(v214 + 80);
    v218 = swift_allocObject();
    (*(v214 + 32))(v218 + v217, v215, v216);
    sub_227669280();
    (*(v214 + 8))(v213, v216);
    sub_226E97D1C(v525, &unk_27D7BB570, &unk_227670FC0);
    sub_226E97D1C(v541, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_25;
  }

  if (v121 == *MEMORY[0x277D52108])
  {
    (*(v101 + 96))(v106, v100);
    v131 = v516;
    v536 = *(v516 + 32);
    v132 = v525;
    v133 = v517;
    v536(v525, v106, v517);
    v134 = v515;
    (*(v131 + 16))(v515, v132, v133);
    v135 = v522;
    sub_226E93170(v541, v522, &qword_27D7B9158, &qword_2276730B8);
    v136 = (*(v131 + 80) + 16) & ~*(v131 + 80);
    v137 = (v29 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
    v138 = (*(v521 + 80) + v137 + 9) & ~*(v521 + 80);
    v139 = swift_allocObject();
    v536((v139 + v136), v134, v133);
    v140 = v139 + v137;
    *v140 = v539;
    *(v140 + 8) = v540;
    sub_226E95D18(v135, v139 + v138, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    (*(v131 + 8))(v525, v133);
LABEL_11:
    v158 = v541;
    return sub_226E97D1C(v158, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v121 == *MEMORY[0x277D52120])
  {
    (*(v101 + 96))(v106, v100);
    v148 = v506;
    v536 = *(v506 + 32);
    v149 = v518;
    v150 = v507;
    v536(v518, v106, v507);
    v151 = v505;
    (*(v148 + 16))(v505, v149, v150);
    v152 = v522;
    sub_226E93170(v541, v522, &qword_27D7B9158, &qword_2276730B8);
    v153 = (*(v148 + 80) + 16) & ~*(v148 + 80);
    v154 = (v504 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
    v155 = (*(v521 + 80) + v154 + 9) & ~*(v521 + 80);
    v156 = swift_allocObject();
    v536((v156 + v153), v151, v150);
    v157 = v156 + v154;
    *v157 = v539;
    *(v157 + 8) = v540;
    sub_226E95D18(v152, v156 + v155, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    (*(v148 + 8))(v518, v150);
    goto LABEL_11;
  }

  v186 = v65;
  if (v121 == *MEMORY[0x277D52128])
  {
    (*(v101 + 96))(v106, v100);
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CB0, &qword_227675D30);
    v188 = v187[12];
    v189 = v187[16];
    v190 = (v106 + v187[20]);
    v192 = *v190;
    v191 = v190[1];
    v525 = v192;
    v526 = v191;
    (*(v510 + 32))(v509, v106, v511);
    v193 = v508;
    sub_226E95D18(v106 + v188, v508, &unk_27D7BB570, &unk_227670FC0);
    sub_226E95D18(v106 + v189, v512, &unk_27D7BB570, &unk_227670FC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    v194 = swift_allocObject();
    v527 = xmmword_227670CD0;
    *(v194 + 16) = xmmword_227670CD0;
    *(v194 + 32) = 1701869940;
    *(v194 + 40) = 0xE400000000000000;
    v195 = sub_2276651B0();
    v196 = MEMORY[0x277D837D0];
    *(v194 + 72) = MEMORY[0x277D837D0];
    *(v194 + 48) = v195;
    *(v194 + 56) = v197;
    v198 = sub_227149264(v194);
    swift_setDeallocating();
    sub_226E97D1C(v194 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    swift_deallocClassInstance();
    v199 = v495;
    sub_226E93170(v193, v495, &unk_27D7BB570, &unk_227670FC0);
    v200 = v528;
    v201 = *(v528 + 48);
    v202 = v186;
    if (v201(v199, 1, v186) == 1)
    {
      sub_226E97D1C(v199, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v235 = v490;
      (*(v200 + 32))(v490, v199, v186);
      v236 = sub_227662390();
      v545 = v196;
      *&v544 = v236;
      *(&v544 + 1) = v237;
      sub_226F04970(&v544, &v543);
      v238 = swift_isUniquelyReferenced_nonNull_native();
      v546 = v198;
      sub_22736A46C(&v543, 0x6C72556E65706FLL, 0xE700000000000000, v238);
      v202 = v186;
      (*(v200 + 8))(v235, v186);
      v198 = v546;
    }

    v166 = v541;
    v239 = v496;
    sub_226E93170(v512, v496, &unk_27D7BB570, &unk_227670FC0);
    if (v201(v239, 1, v202) == 1)
    {
      sub_226E97D1C(v239, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v245 = v528;
      v246 = v491;
      (*(v528 + 32))(v491, v239, v202);
      v247 = v520;
      (*(v245 + 16))(v520, v246, v202);
      (*(v245 + 56))(v247, 0, 1, v202);
      v248 = v202;
      v249 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL;
      v250 = v539;
      swift_beginAccess();
      sub_227033718(v247, v250 + v249);
      swift_endAccess();
      v251 = sub_227662390();
      v545 = v196;
      *&v544 = v251;
      *(&v544 + 1) = v252;
      sub_226F04970(&v544, &v543);
      v253 = swift_isUniquelyReferenced_nonNull_native();
      v546 = v198;
      sub_22736A46C(&v543, 0x7255666552747865, 0xE90000000000006CLL, v253);
      (*(v245 + 8))(v246, v248);
      v198 = v546;
    }

    v254 = v526;
    if (v526)
    {
      v255 = (v539 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication);
      v256 = *(v539 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication + 8);
      v257 = v525;
      *v255 = v525;
      v255[1] = v254;

      v545 = v196;
      *&v544 = v257;
      *(&v544 + 1) = v254;
      sub_226F04970(&v544, &v543);
      v258 = swift_isUniquelyReferenced_nonNull_native();
      v546 = v198;
      sub_22736A46C(&v543, 0x707041666572, 0xE600000000000000, v258);
      v198 = v546;
    }

    v259 = v503;
    v260 = v501;
    if (sub_2276636D0())
    {
      if (*(v260 + 16))
      {
        v261 = sub_226E92000(0x644972657375, 0xE600000000000000);
        if (v262)
        {
          sub_226E97CC0(*(v260 + 56) + 32 * v261, &v544);
          if (swift_dynamicCast())
          {
            v263 = *(&v543 + 1);
            v528 = v543;
            v264 = v539;
            v265 = *(v539 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore + 24);
            v266 = *(v539 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore + 40);
            __swift_project_boxed_opaque_existential_0((v539 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore), v265);
            v267 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_metricsPipeline;
            v268 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_bag;
            v269 = sub_2276637A0();
            v270 = v264 + v267;
            v166 = v541;
            v271 = v264 + v268;
            v259 = v503;
            sub_2274E99DC(v528, v263, v270, v271, v269, v272, v265, v266);
          }
        }
      }
    }

    sub_22766B8C0();
    v273 = sub_227149264(MEMORY[0x277D84F90]);
    v274 = sub_22766B900();
    v545 = v196;
    *&v544 = v274;
    *(&v544 + 1) = v275;
    sub_226F04970(&v544, &v543);
    v276 = swift_isUniquelyReferenced_nonNull_native();
    v546 = v273;
    sub_22736A46C(&v543, 0x707954746E657665, 0xE900000000000065, v276);
    v277 = v546;
    v278 = v497;
    sub_226E93170(v166, v497, &qword_27D7B9158, &qword_2276730B8);
    v279 = v535;
    v280 = v529;
    if ((v535[6])(v278, 1, v529) == 1)
    {
      sub_226E97D1C(v278, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      v281 = v493;
      (v279[4])(v493, v278, v280);
      v282 = sub_227663200();
      v283 = sub_2275A5364(v282);

      if (v283)
      {
        v284 = swift_isUniquelyReferenced_nonNull_native();
        *&v544 = v277;
        sub_2270318E8(v283, sub_227553D14, 0, v284, &v544);

        (v279[1])(v281, v280);
        v277 = v544;
      }

      else
      {
        (v279[1])(v281, v280);
      }
    }

    v314 = swift_isUniquelyReferenced_nonNull_native();
    *&v544 = v277;
    sub_2270318E8(v198, sub_227553D14, 0, v314, &v544);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v315 = sub_22766BC20();
    v316 = *(v315 - 8);
    v317 = *(v316 + 72);
    v318 = (*(v316 + 80) + 32) & ~*(v316 + 80);
    v319 = swift_allocObject();
    *(v319 + 16) = v527;
    sub_22766BC10();
    sub_226F4C828(v319);
    swift_setDeallocating();
    (*(v316 + 8))(v319 + v318, v315);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v320 = *(sub_22766BC00() - 8);
    v321 = *(v320 + 72);
    v322 = (*(v320 + 80) + 32) & ~*(v320 + 80);
    v323 = swift_allocObject();
    *(v323 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v323);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v324 = v502;
    sub_22766B7C0();
    (*(v530 + 8))(v259, v531);
    v325 = v534;
    v326 = v533;
    v327 = v537;
    (*(v534 + 16))(v533, v324, v537);
    v328 = (*(v325 + 80) + 16) & ~*(v325 + 80);
    v329 = swift_allocObject();
    (*(v325 + 32))(v329 + v328, v326, v327);
    sub_227669280();
    (*(v325 + 8))(v324, v327);
    sub_226E97D1C(v512, &unk_27D7BB570, &unk_227670FC0);
    sub_226E97D1C(v508, &unk_27D7BB570, &unk_227670FC0);
    (*(v510 + 8))(v509, v511);
    goto LABEL_25;
  }

  v220 = v539;
  if (v121 == *MEMORY[0x277D52110])
  {
    (*(v101 + 96))(v106, v100);
    v221 = v494;
    (*(v500 + 32))(v499, v106, v494);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    v222 = swift_allocObject();
    v539 = xmmword_227670CD0;
    *(v222 + 16) = xmmword_227670CD0;
    *(v222 + 32) = 1701869940;
    *(v222 + 40) = 0xE400000000000000;
    v223 = sub_227664D10();
    v224 = MEMORY[0x277D837D0];
    *(v222 + 72) = MEMORY[0x277D837D0];
    *(v222 + 48) = v223;
    *(v222 + 56) = v225;
    v226 = sub_227149264(v222);
    swift_setDeallocating();
    sub_226E97D1C(v222 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    swift_deallocClassInstance();
    sub_22766B8A0();
    v227 = sub_227149264(MEMORY[0x277D84F90]);
    v228 = sub_22766B900();
    v545 = v224;
    *&v544 = v228;
    *(&v544 + 1) = v229;
    sub_226F04970(&v544, &v543);
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v546 = v227;
    sub_22736A46C(&v543, 0x707954746E657665, 0xE900000000000065, v230);
    v231 = v546;
    v166 = v541;
    v232 = v489;
    sub_226E93170(v541, v489, &qword_27D7B9158, &qword_2276730B8);
    v233 = v535;
    v234 = v529;
    if ((v535[6])(v232, 1, v529) == 1)
    {
      sub_226E97D1C(v232, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      v285 = v488;
      (v233[4])(v488, v232, v234);
      v286 = sub_227663200();
      v287 = sub_2275A5364(v286);

      if (v287)
      {
        v288 = swift_isUniquelyReferenced_nonNull_native();
        *&v544 = v231;
        sub_2270318E8(v287, sub_227553D14, 0, v288, &v544);

        (v233[1])(v285, v234);
        v231 = v544;
      }

      else
      {
        (v233[1])(v285, v234);
      }
    }

    v334 = swift_isUniquelyReferenced_nonNull_native();
    *&v544 = v231;
    sub_2270318E8(v226, sub_227553D14, 0, v334, &v544);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v335 = sub_22766BC20();
    v336 = *(v335 - 8);
    v337 = *(v336 + 72);
    v338 = (*(v336 + 80) + 32) & ~*(v336 + 80);
    v339 = swift_allocObject();
    *(v339 + 16) = v539;
    sub_22766BC10();
    sub_226F4C828(v339);
    swift_setDeallocating();
    (*(v336 + 8))(v339 + v338, v335);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v340 = *(sub_22766BC00() - 8);
    v341 = *(v340 + 72);
    v342 = (*(v340 + 80) + 32) & ~*(v340 + 80);
    v343 = swift_allocObject();
    *(v343 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v343);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v344 = v492;
    sub_22766B7C0();
    (*(v530 + 8))(v498, v531);
    v345 = v534;
    v346 = v533;
    v347 = v537;
    (*(v534 + 16))(v533, v344, v537);
    v348 = (*(v345 + 80) + 16) & ~*(v345 + 80);
    v349 = swift_allocObject();
    (*(v345 + 32))(v349 + v348, v346, v347);
    sub_227669280();
    (*(v345 + 8))(v344, v347);
    (*(v500 + 8))(v499, v221);
LABEL_25:
    v158 = v166;
    return sub_226E97D1C(v158, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v121 == *MEMORY[0x277D52100])
  {
    (*(v101 + 96))(v106, v100);
    v240 = *v106;
    v241 = v541;
    v242 = v522;
    sub_226E93170(v541, v522, &qword_27D7B9158, &qword_2276730B8);
    v243 = (*(v521 + 80) + 33) & ~*(v521 + 80);
    v244 = swift_allocObject();
    *(v244 + 16) = v240;
    *(v244 + 24) = v220;
    *(v244 + 32) = v540;
    sub_226E95D18(v242, v244 + v243, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    v158 = v241;
    return sub_226E97D1C(v158, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v121 == *MEMORY[0x277D52130])
  {
    (*(v101 + 96))(v106, v100);
    v289 = *v106;
    v290 = v106[1];
    v291 = v106[2];
    v292 = v106[3];
    sub_22766C4F0();
    v294 = ceil(v293);
    sub_22766C4F0();
    v296 = v295;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    v297 = swift_allocObject();
    *(v297 + 32) = 25705;
    *(v297 + 16) = xmmword_227675BE0;
    v298 = MEMORY[0x277D837D0];
    *(v297 + 40) = 0xE200000000000000;
    *(v297 + 48) = v289;
    *(v297 + 56) = v290;
    *(v297 + 72) = v298;
    *(v297 + 80) = 0x657079546469;
    *(v297 + 88) = 0xE600000000000000;
    result = sub_2276647E0();
    *(v297 + 96) = result;
    *(v297 + 104) = v299;
    *(v297 + 120) = v298;
    *(v297 + 128) = 0x79546E6F69746361;
    *(v297 + 136) = 0xEA00000000006570;
    *(v297 + 144) = 1886352499;
    *(v297 + 152) = 0xE400000000000000;
    *(v297 + 168) = v298;
    *(v297 + 176) = 0x6E6F697469736F70;
    *(v297 + 184) = 0xE800000000000000;
    v300 = 0.0;
    if ((*&v294 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v300 = v294;
    }

    if (v300 <= -1.0)
    {
      __break(1u);
    }

    else
    {
      v166 = v541;
      v301 = v535;
      v302 = v485;
      if (v300 < 1.84467441e19)
      {
        v303 = ceil(v296);
        v304 = MEMORY[0x277D84D38];
        *(v297 + 192) = v300;
        *(v297 + 216) = v304;
        *(v297 + 224) = 0x6E6F697461727564;
        *(v297 + 232) = 0xE800000000000000;
        v305 = 0.0;
        if ((*&v303 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v305 = v303;
        }

        if (v305 > -1.0)
        {
          if (v305 < 1.84467441e19)
          {
            *(v297 + 264) = v304;
            *(v297 + 240) = v305;
            v306 = sub_227149264(v297);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_22766B8D0();
            v307 = sub_227149264(MEMORY[0x277D84F90]);
            v308 = sub_22766B900();
            v545 = v298;
            *&v544 = v308;
            *(&v544 + 1) = v309;
            sub_226F04970(&v544, &v543);
            v310 = swift_isUniquelyReferenced_nonNull_native();
            v546 = v307;
            sub_22736A46C(&v543, 0x707954746E657665, 0xE900000000000065, v310);
            v311 = v546;
            v312 = v482;
            sub_226E93170(v166, v482, &qword_27D7B9158, &qword_2276730B8);
            v313 = v529;
            if ((v301[6])(v312, 1, v529) == 1)
            {
              sub_226E97D1C(v312, &qword_27D7B9158, &qword_2276730B8);
            }

            else
            {
              v359 = v166;
              v360 = v474;
              (v301[4])(v474, v312, v313);
              v361 = sub_227663200();
              v362 = sub_2275A5364(v361);

              if (v362)
              {
                v363 = swift_isUniquelyReferenced_nonNull_native();
                *&v544 = v311;
                sub_2270318E8(v362, sub_227553D14, 0, v363, &v544);

                (v301[1])(v360, v313);
                v311 = v544;
              }

              else
              {
                (v301[1])(v360, v313);
              }

              v166 = v359;
              v302 = v485;
            }

            v407 = swift_isUniquelyReferenced_nonNull_native();
            *&v544 = v311;
            sub_2270318E8(v306, sub_227553D14, 0, v407, &v544);
            swift_bridgeObjectRelease_n();
            sub_2276637A0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
            v408 = sub_22766BC20();
            v409 = *(v408 - 8);
            v410 = *(v409 + 72);
            v411 = (*(v409 + 80) + 32) & ~*(v409 + 80);
            v412 = swift_allocObject();
            *(v412 + 16) = xmmword_227670CD0;
            sub_22766BC10();
            sub_226F4C828(v412);
            swift_setDeallocating();
            (*(v409 + 8))(v412 + v411, v408);
            swift_deallocClassInstance();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
            v413 = *(sub_22766BC00() - 8);
            v414 = *(v413 + 72);
            v415 = (*(v413 + 80) + 32) & ~*(v413 + 80);
            v416 = swift_allocObject();
            *(v416 + 16) = xmmword_2276728D0;
            sub_22766BBA0();
            sub_22766BBC0();
            sub_226F4CB48(v416);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v417 = v483;
            sub_22766B7C0();
            (*(v530 + 8))(v302, v531);
            v418 = v534;
            v419 = v533;
            v420 = v537;
            (*(v534 + 16))(v533, v417, v537);
            v421 = (*(v418 + 80) + 16) & ~*(v418 + 80);
            v422 = swift_allocObject();
            (*(v418 + 32))(v422 + v421, v419, v420);
            sub_227669280();
            (*(v418 + 8))(v417, v420);
            goto LABEL_25;
          }

          goto LABEL_98;
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_97;
  }

  if (v121 == *MEMORY[0x277D52118])
  {
    (*(v101 + 96))(v106, v100);
    v330 = v486;
    v331 = v487;
    (*(v486 + 32))(v484, v106, v487);
    v332 = v477;
    (*(v330 + 104))(v477, *MEMORY[0x277D52E00], v331);
    sub_2270336B8(&qword_28139B520, MEMORY[0x277D52E18]);
    sub_22766C290();
    sub_22766C290();
    if (v544 == v543)
    {
      v333 = 1;
    }

    else
    {
      v333 = sub_22766D190();
    }

    v364 = v535;
    v365 = *(v330 + 8);
    v486 = v330 + 8;
    v535 = v365;
    (v365)(v332, v487);

    v366 = MEMORY[0x277D837D0];
    if (v333)
    {
      v367 = sub_227149264(MEMORY[0x277D84F90]);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
      v378 = swift_allocObject();
      *(v378 + 16) = xmmword_227670CD0;
      *(v378 + 32) = 0x697461676976616ELL;
      *(v378 + 40) = 0xEA00000000006E6FLL;
      v379 = sub_227667510();
      *(v378 + 72) = v366;
      *(v378 + 48) = v379;
      *(v378 + 56) = v380;
      v367 = sub_227149264(v378);
      swift_setDeallocating();
      sub_226E97D1C(v378 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
      swift_deallocClassInstance();
    }

    v381 = v475;
    v382 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL;
    swift_beginAccess();
    sub_226E93170(v220 + v382, v381, &unk_27D7BB570, &unk_227670FC0);
    v383 = v528;
    v384 = v186;
    if ((*(v528 + 48))(v381, 1, v186) == 1)
    {
      sub_226E97D1C(v381, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v385 = v381;
      v386 = v468;
      (*(v383 + 32))(v468, v385, v186);
      v387 = v520;
      (*(v383 + 56))(v520, 1, 1, v384);
      swift_beginAccess();
      sub_227033718(v387, v220 + v382);
      swift_endAccess();
      v388 = sub_227662390();
      v545 = v366;
      *&v544 = v388;
      *(&v544 + 1) = v389;
      sub_226F04970(&v544, &v543);
      v390 = swift_isUniquelyReferenced_nonNull_native();
      v542 = v367;
      sub_22736A46C(&v543, 0x7255666552747865, 0xE90000000000006CLL, v390);
      (*(v383 + 8))(v386, v384);
      v367 = v542;
    }

    v391 = v481;
    v392 = (v220 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication);
    v393 = *(v220 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication + 8);
    if (v393)
    {
      v394 = *v392;
      *v392 = 0;
      v392[1] = 0;
      v545 = v366;
      *&v544 = v394;
      *(&v544 + 1) = v393;
      sub_226F04970(&v544, &v543);
      v395 = swift_isUniquelyReferenced_nonNull_native();
      v542 = v367;
      sub_22736A46C(&v543, 0x707041666572, 0xE600000000000000, v395);
      v367 = v542;
    }

    v396 = v479;
    sub_22766B8B0();
    v397 = sub_227149264(MEMORY[0x277D84F90]);
    v398 = sub_22766B900();
    v545 = v366;
    *&v544 = v398;
    *(&v544 + 1) = v399;
    sub_226F04970(&v544, &v543);
    v400 = swift_isUniquelyReferenced_nonNull_native();
    v542 = v397;
    sub_22736A46C(&v543, 0x707954746E657665, 0xE900000000000065, v400);
    v401 = v542;
    v402 = v476;
    sub_226E93170(v541, v476, &qword_27D7B9158, &qword_2276730B8);
    v403 = v529;
    if ((v364[6])(v402, 1, v529) == 1)
    {
      sub_226E97D1C(v402, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      (v364[4])(v396, v402, v403);
      v404 = sub_227663200();
      v405 = sub_2275A5364(v404);

      if (v405)
      {
        v406 = swift_isUniquelyReferenced_nonNull_native();
        *&v544 = v401;
        sub_2270318E8(v405, sub_227553D14, 0, v406, &v544);

        (v364[1])(v396, v403);
        v401 = v544;
      }

      else
      {
        (v364[1])(v396, v403);
      }
    }

    v437 = swift_isUniquelyReferenced_nonNull_native();
    *&v544 = v401;
    sub_2270318E8(v367, sub_227553D14, 0, v437, &v544);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v438 = sub_22766BC20();
    v439 = *(v438 - 8);
    v440 = *(v439 + 72);
    v441 = (*(v439 + 80) + 32) & ~*(v439 + 80);
    v442 = swift_allocObject();
    *(v442 + 16) = xmmword_227670CD0;
    sub_22766BC10();
    sub_226F4C828(v442);
    swift_setDeallocating();
    (*(v439 + 8))(v442 + v441, v438);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v443 = *(sub_22766BC00() - 8);
    v444 = *(v443 + 72);
    v445 = (*(v443 + 80) + 32) & ~*(v443 + 80);
    v446 = swift_allocObject();
    *(v446 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v446);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v447 = v480;
    sub_22766B7C0();
    (*(v530 + 8))(v391, v531);
    v448 = v534;
    v449 = v533;
    v450 = v537;
    (*(v534 + 16))(v533, v447, v537);
    v451 = (*(v448 + 80) + 16) & ~*(v448 + 80);
    v452 = swift_allocObject();
    (*(v448 + 32))(v452 + v451, v449, v450);
    sub_227669280();
    (*(v448 + 8))(v447, v450);
    (v535)(v484, v487);
    v158 = v541;
    return sub_226E97D1C(v158, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v121 == *MEMORY[0x277D52148])
  {
    (*(v101 + 96))(v106, v100);
    v350 = v471;
    v536 = *(v471 + 32);
    v351 = v478;
    v352 = v472;
    v536(v478, v106, v472);
    v353 = v470;
    (*(v350 + 16))(v470, v351, v352);
    v354 = v522;
    sub_226E93170(v541, v522, &qword_27D7B9158, &qword_2276730B8);
    v355 = (*(v350 + 80) + 17) & ~*(v350 + 80);
    v356 = (v469 + v355 + 7) & 0xFFFFFFFFFFFFFFF8;
    v357 = (*(v521 + 80) + v356 + 8) & ~*(v521 + 80);
    v358 = swift_allocObject();
    *(v358 + 16) = v540;
    v536((v358 + v355), v353, v352);
    *(v358 + v356) = v539;
    sub_226E95D18(v354, v358 + v357, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    (*(v350 + 8))(v478, v352);
    v158 = v541;
    return sub_226E97D1C(v158, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v121 == *MEMORY[0x277D52138])
  {
    (*(v101 + 96))(v106, v100);
    v368 = v460;
    v536 = *(v460 + 32);
    v369 = v473;
    v370 = v461;
    v536(v473, v106, v461);
    v371 = v459;
    (*(v368 + 16))(v459, v369, v370);
    v372 = v522;
    sub_226E93170(v541, v522, &qword_27D7B9158, &qword_2276730B8);
    v373 = (*(v368 + 80) + 16) & ~*(v368 + 80);
    v374 = (v458 + v373 + 7) & 0xFFFFFFFFFFFFFFF8;
    v375 = (*(v521 + 80) + v374 + 9) & ~*(v521 + 80);
    v376 = swift_allocObject();
    v536((v376 + v373), v371, v370);
    v377 = v376 + v374;
    *v377 = v539;
    *(v377 + 8) = v540;
    sub_226E95D18(v372, v376 + v375, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    (*(v368 + 8))(v473, v370);
    v158 = v541;
    return sub_226E97D1C(v158, &qword_27D7B9158, &qword_2276730B8);
  }

  v423 = v467;
  sub_22766A740();
  v424 = v463;
  v425 = v462;
  v426 = v464;
  (*(v463 + 16))(v462, a1, v464);
  v427 = sub_22766B380();
  v428 = sub_22766C890();
  if (os_log_type_enabled(v427, v428))
  {
    v429 = v425;
    v430 = swift_slowAlloc();
    v540 = swift_slowAlloc();
    *&v544 = v540;
    *v430 = 136446210;
    sub_227665190();
    v431 = sub_22766C060();
    v432 = v424;
    v434 = v433;
    (*(v432 + 8))(v429, v426);
    v435 = sub_226E97AE8(v431, v434, &v544);

    *(v430 + 4) = v435;
    _os_log_impl(&dword_226E8E000, v427, v428, "Received unsupported click stream type: %{public}s", v430, 0xCu);
    v436 = v540;
    __swift_destroy_boxed_opaque_existential_0(v540);
    MEMORY[0x22AA9A450](v436, -1, -1);
    MEMORY[0x22AA9A450](v430, -1, -1);

    (*(v465 + 8))(v467, v466);
  }

  else
  {

    (*(v424 + 8))(v425, v426);
    (*(v465 + 8))(v423, v466);
  }

  v453 = sub_2276636A0();
  sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
  v454 = swift_allocError();
  (*(*(v453 - 8) + 104))(v455, *MEMORY[0x277D500C0], v453);
  *(swift_allocObject() + 16) = v454;
  v456 = v454;
  sub_227669280();
  sub_226E97D1C(v541, &qword_27D7B9158, &qword_2276730B8);

  return (*(v101 + 8))(v106, v100);
}

uint64_t sub_227024BD8@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v64 = a2;
  v67 = a1;
  v70 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v61 - v5;
  v66 = sub_227663260();
  v65 = *(v66 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22766B910();
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227665AD0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667D50();
  v21 = sub_227665A90();
  (*(v17 + 8))(v20, v16);
  v22 = sub_2275A5364(v21);

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    v61 = xmmword_227670CD0;
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = sub_227664790();
    *(inited + 40) = v24;
    sub_227667D90();
    v25 = sub_227667D60();
    v27 = v26;
    v28 = 1;
    if (v25 != sub_227667D60() || v27 != v29)
    {
      v28 = sub_22766D190();
    }

    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = v28 & 1;
    v30 = sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v73 = v22;
    v32 = v63;
    sub_226FDAC14(v30, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, &v73);
    if (v32)
    {

      __break(1u);
    }

    else
    {

      v33 = v73;
      sub_22766B8E0();
      v34 = sub_227149264(MEMORY[0x277D84F90]);
      v35 = sub_22766B900();
      v74 = MEMORY[0x277D837D0];
      *&v73 = v35;
      *(&v73 + 1) = v36;
      sub_226F04970(&v73, v72);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v34;
      sub_22736A46C(v72, 0x707954746E657665, 0xE900000000000065, v37);
      v38 = v75;
      sub_226E93170(v64, v6, &qword_27D7B9158, &qword_2276730B8);
      v39 = v65;
      v40 = v66;
      if ((*(v65 + 48))(v6, 1, v66) == 1)
      {
        sub_226E97D1C(v6, &qword_27D7B9158, &qword_2276730B8);
      }

      else
      {
        v47 = v62;
        (*(v39 + 32))();
        v48 = sub_227663200();
        v49 = sub_2275A5364(v48);

        if (v49)
        {
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *&v73 = v38;
          sub_2270318E8(v49, sub_227553D14, 0, v50, &v73);

          (*(v39 + 8))(v47, v40);
          v38 = v73;
        }

        else
        {
          (*(v39 + 8))(v47, v40);
        }
      }

      v51 = swift_isUniquelyReferenced_nonNull_native();
      *&v73 = v38;
      sub_2270318E8(v33, sub_227553D14, 0, v51, &v73);

      sub_2276637A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
      v52 = sub_22766BC20();
      v53 = *(v52 - 8);
      v54 = *(v53 + 72);
      v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = v61;
      sub_22766BC10();
      sub_226F4C828(v56);
      swift_setDeallocating();
      (*(v53 + 8))(v56 + v55, v52);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
      v57 = *(sub_22766BC00() - 8);
      v58 = *(v57 + 72);
      v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_2276728D0;
      sub_22766BBA0();
      sub_22766BBC0();
      sub_226F4CB48(v60);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22766B7C0();
      return (*(v68 + 8))(v71, v69);
    }
  }

  else
  {
    sub_22766A740();
    v41 = sub_22766B380();
    v42 = sub_22766C8B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_226E8E000, v41, v42, "[JetMetricsRecorder] failed serializing subscription data - skipping background account event", v43, 2u);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v44 = sub_2276636A0();
    sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D500B8], v44);
    return swift_willThrow();
  }

  return result;
}