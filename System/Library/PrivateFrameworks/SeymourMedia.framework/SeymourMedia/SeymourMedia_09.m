uint64_t sub_20C5554AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C59D4CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
  v31 = a1;
  v10 = sub_20C5A02EC();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_20C558FAC(&qword_27C7C5B48, MEMORY[0x277CC95F0]);
      v19 = sub_20C5A033C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20C55114C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_20C556C6C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t sub_20C555754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_20C5A0FBC();
  sub_20C5A0B8C();
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_20C4FACE0(v6, v7);
  result = sub_20C5A0FFC();
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_14:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v11 = ~v9;
  while (1)
  {
    sub_20C494788(*(v5 + 48) + 56 * v10, v19);
    if (MEMORY[0x20F2FF020](v19, a1))
    {
      break;
    }

    result = sub_20C496894(v19);
LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v12 = *&v19[5];
  v13 = *&v19[6];
  result = sub_20C496894(v19);
  if (v12 != v6 || v13 != v7)
  {
    goto LABEL_4;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v19[0] = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20C551384();
    v16 = v19[0];
  }

  v17 = *(v16 + 48) + 56 * v10;
  v18 = *(v17 + 16);
  *a2 = *v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = *(v17 + 32);
  *(a2 + 48) = *(v17 + 48);
  result = sub_20C556F74(v10);
  *v2 = v19[0];
  return result;
}

uint64_t sub_20C5558E4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_20C59D4CC();
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_20C477B50(v11, &qword_27C7C4588);
          v45 = v61;

          return sub_20C55607C(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
        v35 = sub_20C5A02EC();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_20C558FAC(&qword_27C7C5B48, MEMORY[0x277CC95F0]);
        v43 = sub_20C5A033C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_20C555DB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = result;
  v37 = v7 - 1;
  v8 = a3 + 56;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v9 = *a5;
        v10 = a5[1];
        v12 = a5[2];
        v11 = a5[3];
        v13 = a5[4];
        if (!v13)
        {
          v15 = (v12 + 64) >> 6;
          v16 = a5[3];
          while (1)
          {
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_36;
            }

            if (v14 >= v15)
            {
              break;
            }

            v13 = *(v10 + 8 * v14);
            ++v16;
            if (v13)
            {
              goto LABEL_9;
            }
          }

          v41 = 0.0;
          v39 = 0u;
          v40 = 0u;
          if (v15 <= v11 + 1)
          {
            v34 = v11 + 1;
          }

          else
          {
            v34 = (v12 + 64) >> 6;
          }

          v38 = 0uLL;
          *a5 = v9;
          a5[1] = v10;
          a5[2] = v12;
          a5[3] = v34 - 1;
          a5[4] = 0;
LABEL_34:
          sub_20C477B50(&v38, &qword_27C7C5AA0);

          return sub_20C5566CC(v36, a2, v37, a3);
        }

        v14 = a5[3];
LABEL_9:
        v17 = (v13 - 1) & v13;
        sub_20C494788(*(v9 + 48) + 56 * (__clz(__rbit64(v13)) | (v14 << 6)), &v38);
        v18 = *(&v39 + 1);
        *a5 = v9;
        a5[1] = v10;
        a5[2] = v12;
        a5[3] = v14;
        a5[4] = v17;
        if (!v18)
        {
          goto LABEL_34;
        }

        v42[0] = v38;
        v42[1] = v39;
        v43 = v40;
        v44 = v41;
        sub_20C5A0FBC();
        sub_20C5A0B8C();
        v19 = *(&v43 + 1);
        v20 = v44;
        if (*(&v43 + 1) == 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = *(&v43 + 1);
        }

        MEMORY[0x20F2FF490](*&v21);
        if (v20 == 0.0)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = v20;
        }

        MEMORY[0x20F2FF490](*&v22);
        v23 = sub_20C5A0FFC();
        v24 = -1 << *(a3 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if (((1 << v25) & *(v8 + 8 * (v25 >> 6))) == 0)
        {
LABEL_2:
          result = sub_20C496894(v42);
          continue;
        }

        break;
      }

      v28 = ~v24;
      while (1)
      {
        sub_20C494788(*(a3 + 48) + 56 * v25, &v38);
        if (MEMORY[0x20F2FF020](&v38, v42))
        {
          break;
        }

        sub_20C496894(&v38);
LABEL_19:
        v25 = (v25 + 1) & v28;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if ((*(v8 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          goto LABEL_2;
        }
      }

      v29 = *(&v40 + 1);
      v30 = v41;
      sub_20C496894(&v38);
      if (v29 != v19 || v30 != v20)
      {
        goto LABEL_19;
      }

      result = sub_20C496894(v42);
      v32 = v36[v26];
      v36[v26] = v32 & ~v27;
      if ((v32 & v27) == 0)
      {
        continue;
      }

      break;
    }

    v33 = v37 - 1;
    if (!__OFSUB__(v37, 1))
    {
      --v37;
      if (!v33)
      {
        return MEMORY[0x277D84FA0];
      }

      continue;
    }

    break;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_20C55607C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C59D4CC();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B50);
  result = sub_20C5A0BDC();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
    result = sub_20C5A02EC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20C5563A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C59E4DC();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5B70);
  result = sub_20C5A0BDC();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20C558FAC(&qword_27C7C5B78, MEMORY[0x277D51FE0]);
    result = sub_20C5A02EC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20C5566CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5AA8);
  result = sub_20C5A0BDC();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_20C494788(*(a4 + 48) + 56 * (v13 | (v11 << 6)), v32);
    sub_20C5A0FBC();
    sub_20C5A0B8C();
    v16 = *(&v33 + 1);
    v17 = v34;
    if (*(&v33 + 1) == 0.0)
    {
      v16 = 0.0;
    }

    MEMORY[0x20F2FF490](*&v16);
    if (v17 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v17;
    }

    MEMORY[0x20F2FF490](*&v18);
    result = sub_20C5A0FFC();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_31;
        }
      }

      goto LABEL_36;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v6 + 48) + 56 * v22;
    v28 = v32[0];
    v29 = v32[1];
    v30 = v33;
    *(v27 + 48) = v34;
    *(v27 + 16) = v29;
    *(v27 + 32) = v30;
    *v27 = v28;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_37;
    }

    if (!v5)
    {
LABEL_33:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_33;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_20C556944(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C59D91C();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5AE8);
  result = sub_20C5A0BDC();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20C558FAC(&qword_27C7C5AF0, MEMORY[0x277D50128]);
    result = sub_20C5A02EC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20C556C6C(int64_t a1)
{
  v3 = sub_20C59D4CC();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_20C5A0B0C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
        v24 = sub_20C5A02EC();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_20C556F74(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_20C5A0B0C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_20C494788(*(v3 + 48) + 56 * v6, v24);
        sub_20C5A0FBC();
        sub_20C5A0B8C();
        v13 = v25;
        v14 = v26;
        if (v25 == 0.0)
        {
          v13 = 0.0;
        }

        MEMORY[0x20F2FF490](*&v13);
        if (v14 == 0.0)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = v14;
        }

        MEMORY[0x20F2FF490](*&v15);
        v16 = sub_20C5A0FFC();
        sub_20C496894(v24);
        v17 = v16 & v7;
        if (v2 >= v9)
        {
          if (v17 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v17 >= v9)
        {
          goto LABEL_16;
        }

        if (v2 >= v17)
        {
LABEL_16:
          v18 = *(v3 + 48);
          v19 = v18 + 56 * v2;
          v20 = (v18 + 56 * v6);
          if (v2 != v6 || v19 >= v20 + 56)
          {
            v10 = *v20;
            v11 = v20[1];
            v12 = v20[2];
            *(v19 + 48) = *(v20 + 6);
            *(v19 + 16) = v11;
            *(v19 + 32) = v12;
            *v19 = v10;
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

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_20C557180(void *result, uint64_t a2, uint64_t a3, double a4)
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

    v8 = sub_20C557418(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_20C557208(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_20C5584AC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_20C5572A4(uint64_t a1, double a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_20C557418(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_20C557180(v10, v6, v4, a2);
  result = MEMORY[0x20F2FFF90](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_20C557418(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v23 = result;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    sub_20C494788(*(a3 + 48) + 56 * v15, v35);
    v16 = *(a3 + 56) + 32 * v15;
    v17 = *v16;
    v18 = *(v16 + 24);
    v25 = *(v16 + 8);
    sub_20C494788(v35, v31);
    *(&v32 + 1) = v17;
    v33 = v25;
    v34 = v18;
    v28 = v32;
    v29 = v25;
    v30 = v18;
    v26[0] = v31[0];
    v26[1] = v31[1];
    v27 = v31[2];
    swift_retain_n();
    swift_retain_n();

    v20 = *(&v27 + 1);
    v19 = *&v28;
    sub_20C496894(v26);

    result = sub_20C496894(v35);
    if (v20 <= a4 && v19 > a4)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_20C557618(v23, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_20C557618(v23, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C557618(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5AD0);
  result = sub_20C5A0D6C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_20C494788(*(v4 + 48) + 56 * v16, v38);
    v17 = *(v4 + 56) + 32 * v16;
    v32 = *v17;
    v33 = *(v17 + 8);
    v18 = *(v17 + 24);
    v34 = v38[0];
    v35 = v38[1];
    v36 = v38[2];
    v37 = v39;
    sub_20C5A0FBC();

    sub_20C5A0B8C();
    v19 = *(&v36 + 1);
    if (*(&v36 + 1) == 0.0)
    {
      v19 = 0.0;
    }

    MEMORY[0x20F2FF490](*&v19);
    if (v37 == 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v37;
    }

    MEMORY[0x20F2FF490](*&v20);
    result = sub_20C5A0FFC();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_31;
        }
      }

      goto LABEL_36;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v9 + 48) + 56 * v24;
    *v29 = v34;
    *(v29 + 16) = v35;
    *(v29 + 32) = v36;
    *(v29 + 48) = v37;
    v30 = *(v9 + 56) + 32 * v24;
    *v30 = v32;
    *(v30 + 8) = v33;
    *(v30 + 24) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_37;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_20C5578E8@<X0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20C4775E4(*(v4 + 56) + 32 * v13, &v21, &qword_27C7C44D0);
    v19 = v22;
    v20 = v21;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v18 = v1[5];
      *&v21 = v16;
      *(&v21 + 1) = v15;
      v22 = v20;
      v23 = v19;
      v18(&v21);
      return sub_20C477B50(&v21, &qword_27C7C5B90);
    }

    else
    {
LABEL_13:
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C557A2C@<X0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v4 + 48) + v13);
    result = sub_20C483FD8(*(v4 + 56) + 40 * v13, v20);
    v16 = *v20;
    v17 = *&v20[16];
    v18 = *v21;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v18)
    {
      v19 = v1[5];
      *v20 = v14;
      *&v20[8] = v16;
      *v21 = v17;
      *&v21[8] = v18;
      v19(v20);
      return sub_20C477B50(v20, &qword_27C7C5AF8);
    }

    else
    {
LABEL_13:
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C557B5C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v27 = v1[2];
    v8 = v1[3];
LABEL_11:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_20C494788(*(v4 + 48) + 56 * v13, &v29);
    v14 = *(v4 + 56) + 32 * v13;
    v26 = *v14;
    v15 = *(v14 + 8);
    v16 = *(v14 + 24);
    v17 = *(&v30 + 1);
    v24 = v30;
    v25 = v29;
    v18 = v31;
    v19 = v32;
    v20 = v33;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v27;
    v1[3] = v8;
    v1[4] = v12;
    v21 = v17;
    v28 = v15;

    if (v21)
    {
      v23 = v1[5];
      v29 = v25;
      v30 = v24;
      v31 = v18;
      v32 = v19;
      v33 = v20;
      v34 = v26;
      v35 = v28;
      v36 = v16;
      v23(&v29);
      return sub_20C477B50(&v29, &qword_27C7C5AD8);
    }

    else
    {
LABEL_14:
      *(a1 + 80) = 0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_14;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        v27 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C557F08(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C5A0B3C())
  {
    v4 = sub_20C479154(0, &qword_27C7C5580);
    v5 = sub_20C558FF4();
    result = MEMORY[0x20F2FEC60](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F2FF0E0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_20C54F374(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_20C5A0B3C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20C558048(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F2FEC60](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20C54F224(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20C5580E0(uint64_t a1)
{
  v2 = sub_20C59D4CC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
  result = MEMORY[0x20F2FEC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_20C54F5AC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20C55827C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_20C558308();
  result = MEMORY[0x20F2FEC60](v2, &type metadata for PlaybackTimelineRegionMonitor.Region, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      sub_20C494788(v5, v6);
      sub_20C54F88C(v7, v6);
      sub_20C496894(v7);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_20C558308()
{
  result = qword_27C7C5A98;
  if (!qword_27C7C5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5A98);
  }

  return result;
}

uint64_t sub_20C55835C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C558468(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_20C5584AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  result = swift_beginAccess();
  v10 = 0;
  v11 = 0;
  v12 = (v6 + 63) >> 6;
  v34 = v4;
  while (2)
  {
    v35 = v10;
    while (1)
    {
      if (v8)
      {
        v13 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
      }

      else
      {
        v14 = v11;
        do
        {
          v11 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            return result;
          }

          if (v11 >= v12)
          {
            return sub_20C557618(a1, a2, v35, v4);
          }

          v15 = *(v5 + 8 * v11);
          ++v14;
        }

        while (!v15);
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
      }

      v16 = v13 | (v11 << 6);
      sub_20C494788(*(v4 + 48) + 56 * v16, v48);
      v17 = *(v4 + 56) + 32 * v16;
      v18 = *v17;
      v19 = *(v17 + 24);
      v38 = *(v17 + 8);
      sub_20C494788(v48, v42);
      v45 = v18;
      v46 = v38;
      v47 = v19;
      v20 = *(a4 + 88);
      if (!*(v20 + 16))
      {
        swift_retain_n();
        swift_retain_n();
        goto LABEL_7;
      }

      v37 = v8;
      sub_20C5A0FBC();
      swift_retain_n();
      swift_retain_n();

      sub_20C5A0B8C();
      v21 = v43;
      v22 = v44;
      v23 = v43 == 0.0 ? 0.0 : v43;
      MEMORY[0x20F2FF490](*&v23);
      v24 = v22 == 0.0 ? 0.0 : v22;
      MEMORY[0x20F2FF490](*&v24);
      v25 = sub_20C5A0FFC();
      v26 = -1 << *(v20 + 32);
      v27 = v25 & ~v26;
      if ((*(v20 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        break;
      }

LABEL_35:
      v8 = v37;
LABEL_7:
      sub_20C477B50(v42, &qword_27C7C5AD8);

      result = sub_20C496894(v48);
    }

    v28 = ~v26;
    while (1)
    {
      sub_20C494788(*(v20 + 48) + 56 * v27, v39);
      if (MEMORY[0x20F2FF020](v39, v42))
      {
        break;
      }

      sub_20C496894(v39);
LABEL_25:
      v27 = (v27 + 1) & v28;
      if (((*(v20 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {

        v4 = v34;
        goto LABEL_35;
      }
    }

    v29 = v40;
    v30 = v41;
    sub_20C496894(v39);
    if (v29 != v21 || v30 != v22)
    {
      goto LABEL_25;
    }

    sub_20C477B50(v42, &qword_27C7C5AD8);

    result = sub_20C496894(v48);
    v4 = v34;
    *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v10 = v35 + 1;
    v8 = v37;
    if (!__OFADD__(v35, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_20C557618(a1, a2, v35, v4);
}

uint64_t sub_20C558818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_20C557208(v13, v8, a1, a2);
      MEMORY[0x20F2FFF90](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_20C5584AC((v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

void sub_20C5589FC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_20C5A0D8C();
  *(a1 + 40) = (*(v4 + 8))(v3, v4);
  *(a1 + 48) = v5;
}

unint64_t sub_20C558AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v60 = a1;
  v61 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v62 = v8;
  v63 = 0;
  v64 = v11 & v9;
  v65 = a2;
  v66 = a3;

  sub_20C557B5C(&v54);
  if (!*(&v55 + 1))
  {
    goto LABEL_25;
  }

  v50 = v54;
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v48 = v58;
  v49 = v59;
  v12 = *a5;
  result = sub_20C495CEC(&v50);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    sub_20C4BA048(v18, a4 & 1);
    result = sub_20C495CEC(&v50);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_20C5A0EDC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_20C4BBA30();
    result = v24;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = result;
    sub_20C496894(&v50);
    v23 = (v21[7] + 32 * v22);
    *v23 = v48;
    v23[1] = v49;

    goto LABEL_15;
  }

LABEL_13:
  v21[(result >> 6) + 8] |= 1 << result;
  v25 = v21[6] + 56 * result;
  v26 = v50;
  v27 = v51;
  v28 = v52;
  *(v25 + 48) = v53;
  *(v25 + 16) = v27;
  *(v25 + 32) = v28;
  *v25 = v26;
  v29 = (v21[7] + 32 * result);
  *v29 = v48;
  v29[1] = v49;
  v30 = v21[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v17)
  {
    v21[2] = v31;
LABEL_15:
    sub_20C557B5C(&v54);
    if (*(&v55 + 1))
    {
      v19 = 1;
      do
      {
        v50 = v54;
        v51 = v55;
        v52 = v56;
        v53 = v57;
        v48 = v58;
        v49 = v59;
        v34 = *a5;
        result = sub_20C495CEC(&v50);
        v36 = v34[2];
        v37 = (v35 & 1) == 0;
        v17 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (v34[3] < v38)
        {
          sub_20C4BA048(v38, 1);
          result = sub_20C495CEC(&v50);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v32 = result;
          sub_20C496894(&v50);
          v33 = (v40[7] + 32 * v32);
          *v33 = v48;
          v33[1] = v49;
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = v40[6] + 56 * result;
          v42 = v50;
          v43 = v51;
          v44 = v52;
          *(v41 + 48) = v53;
          *(v41 + 16) = v43;
          *(v41 + 32) = v44;
          *v41 = v42;
          v45 = (v40[7] + 32 * result);
          *v45 = v48;
          v45[1] = v49;
          v46 = v40[2];
          v17 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v40[2] = v47;
        }

        sub_20C557B5C(&v54);
      }

      while (*(&v55 + 1));
    }

LABEL_25:
    sub_20C483B94();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20C558FAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C558FF4()
{
  result = qword_27C7C5BD0;
  if (!qword_27C7C5BD0)
  {
    sub_20C479154(255, &qword_27C7C5580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5BD0);
  }

  return result;
}

uint64_t static MediaPlayerDeactivated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void ArtworkImageCacheKey.init(cacheBehavior:cropCode:decoratorCacheKeys:fileType:requestedSize:template:platform:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v65 = a7;
  v73 = a6;
  v74 = a8;
  v62 = a2;
  v63 = a5;
  v71 = a3;
  v72 = a4;
  v64 = a9;
  v14 = sub_20C59FEBC();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v68 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5650);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5658);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - v22;
  v66 = *a1;
  v24 = [objc_opt_self() mainScreen];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v76.origin.x = v26;
  v76.origin.y = v28;
  v76.size.width = v30;
  v76.size.height = v32;
  Width = CGRectGetWidth(v76);
  if (qword_2810F5250 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v20, qword_2810F5258);
  v35 = *(v21 + 16);
  v35(v23, v34, v20);
  sub_20C59F3BC();
  v36 = *(v21 + 8);
  v36(v23, v20);
  v67 = v75;
  if (qword_2810F5298 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v20, qword_2810F52A0);
  v35(v23, v37, v20);
  sub_20C59F3BC();
  v36(v23, v20);
  v38 = v75;
  if (qword_2810F5270 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v16, qword_2810F5278);
  (*(v17 + 16))(v19, v39, v16);
  sub_20C59F3BC();
  (*(v17 + 8))(v19, v16);
  v40 = v74;
  if (v75 == 1)
  {
    v41 = sub_20C59EC3C();
    v43 = v68;
    v42 = v69;
    v44 = v70;
    (*(v69 + 104))(v68, *MEMORY[0x277D4F918], v70);
    v45 = sub_20C510018(v43, v41);

    (*(v42 + 8))(v43, v44);
  }

  else
  {
    v45 = 0;
  }

  v46 = v73;
  v47 = ceil(a10);
  v48 = MEMORY[0x277D4FCD0];
  if (v47 <= 0.0 || ceil(a11) <= 0.0)
  {
    goto LABEL_26;
  }

  v49 = __exp10(v67);
  if (*&v47 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v50 = v47;
  v51 = v47;
  if ((v66 & v45 & 1) == 0)
  {
LABEL_25:
    v58 = v64;
    *v64 = trunc(a10 / a11 * v49) / v49;
    *(v58 + 1) = v62;
    *(v58 + 2) = v71;
    *(v58 + 3) = v72;
    *(v58 + 4) = v63;
    *(v58 + 5) = v46;
    *(v58 + 6) = v65;
    *(v58 + 7) = v40;
    *(v58 + 8) = v50;
    *(v58 + 9) = v51;
    return;
  }

  v52 = ceil(Width / v38);
  if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (v52 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v52 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v53 = v52;
  if (v52 < 1)
  {
    v48 = MEMORY[0x277D4FD18];
LABEL_26:

    v59 = sub_20C59D6EC();
    sub_20C559A1C();
    swift_allocError();
    (*(*(v59 - 8) + 104))(v60, *v48, v59);
    swift_willThrow();
    return;
  }

  v54 = v50 / v53;
  v55 = v50 / v53 * v53;
  if ((v54 * v53) >> 64 != v55 >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v56 = __OFADD__(v55, 1);
  v50 = v55 + 1;
  if (v56)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v56 = __OFADD__(v50, v53);
  v57 = v50 + v53;
  if (v56)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v56 = __OFSUB__(v57, 1);
  v51 = v57 - 1;
  if (!v56)
  {
    if (v51 >= v50)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_20C5597AC(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v7 = sub_20C59F6AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5658);
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  (*(v8 + 104))(v10, *a3, v7);
  v13[1] = a4;
  return sub_20C59F3DC();
}

uint64_t sub_20C5598E4()
{
  v0 = sub_20C59F6AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5650);
  __swift_allocate_value_buffer(v4, qword_2810F5278);
  __swift_project_value_buffer(v4, qword_2810F5278);
  (*(v1 + 104))(v3, *MEMORY[0x277D4F020], v0);
  v6[15] = 1;
  return sub_20C59F3DC();
}

unint64_t sub_20C559A1C()
{
  result = qword_27C7C5418;
  if (!qword_27C7C5418)
  {
    sub_20C59D6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5418);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_20C559AD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  sub_20C59FE5C();

  v11 = sub_20C5A01BC();
  v12 = sub_20C5A08AC();

  v13 = os_log_type_enabled(v11, v12);
  v59 = v7;
  v60 = v5;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v64[0] = v15;
    *v14 = 141558274;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44D0);
    v16 = sub_20C5A02CC();
    v18 = sub_20C479640(v16, v17, v64);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_20C472000, v11, v12, "[NowPlayingUpdating] Updating now playing info: %{mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F2FFF90](v15, -1, -1);
    MEMORY[0x20F2FFF90](v14, -1, -1);

    v19 = v60;
  }

  else
  {

    v19 = v5;
  }

  v20 = *(v19 + 8);
  v20(v10, v4);
  v21 = sub_20C5A039C();
  v23 = v21;
  v24 = v22;
  if (*(a1 + 16) && (sub_20C4820C8(v21, v22), (v25 & 1) != 0) || !v2[4])
  {

    v28 = v2[2];
    v37 = v2[3];
    ObjectType = swift_getObjectType();
    v39 = (*(v37 + 8))(ObjectType, v37);
    if (!v39)
    {
      v39 = sub_20C5896D0(MEMORY[0x277D84F90]);
    }

    v36 = sub_20C4F2338(v39);
  }

  else
  {
    v55 = v23;
    v56 = v20;
    v57 = v4;
    v26 = v2[5];
    v28 = v2[2];
    v27 = v2[3];
    v29 = swift_getObjectType();
    v30 = *(v27 + 8);
    swift_unknownObjectRetain();
    v58 = v27;
    v31 = v30(v29, v27);
    if (!v31)
    {
      v31 = sub_20C5896D0(MEMORY[0x277D84F90]);
    }

    v32 = v31;
    v33 = swift_getObjectType();
    v34 = (*(v26 + 32))(v33, v26);
    v64[3] = MEMORY[0x277D839F8];
    *v64 = v34;
    v63 = v32;
    sub_20C479AA8(v64, v61);

    sub_20C4F2B24(v61, v55, v24, v62);

    sub_20C477B50(v62, &qword_27C7C44D0);
    v35 = v63;
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    v36 = sub_20C4F2338(v35);
    swift_unknownObjectRelease();
    v20 = v56;
    v4 = v57;
    v37 = v58;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64[0] = v36;
  sub_20C4F2C70(a1, sub_20C4F2AD8, 0, isUniquelyReferenced_nonNull_native, v64);

  v41 = sub_20C4F280C(v64[0]);

  v42 = v59;
  sub_20C59FE5C();

  v43 = sub_20C5A01BC();
  v44 = sub_20C5A08AC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v58 = v37;
    v47 = v46;
    v64[0] = v46;
    *v45 = 141558274;
    *(v45 + 4) = 1752392040;
    *(v45 + 12) = 2080;
    v48 = sub_20C5A02CC();
    v57 = v28;
    v50 = sub_20C479640(v48, v49, v64);

    *(v45 + 14) = v50;
    _os_log_impl(&dword_20C472000, v43, v44, "[NowPlayingUpdating] Updated now playing info %{mask.hash}s", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v51 = v47;
    v37 = v58;
    MEMORY[0x20F2FFF90](v51, -1, -1);
    MEMORY[0x20F2FFF90](v45, -1, -1);
  }

  v20(v42, v4);
  v52 = swift_getObjectType();
  return (*(v37 + 16))(v41, v52, v37);
}

uint64_t NowPlayingUpdater.__allocating_init(dependencies:mediaPlayer:isAudioOnly:nowPlayingInfoCenter:remoteCommandCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5BF0);
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  *(v13 + 120) = v14;
  v15 = OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_lastRequestedArtwork;
  v16 = sub_20C59EA6C();
  (*(*(v16 - 8) + 56))(v13 + v15, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C00);
  sub_20C59D9EC();
  sub_20C4780E8(v20, v13 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_artworkImageLoader);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F90);
  sub_20C59D9EC();
  v17 = *(&v20[0] + 1);
  *(v13 + 48) = *&v20[0];
  *(v13 + 56) = v17;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v13 + 64) = sub_20C59F75C();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  sub_20C477580(a7, v13 + 72);
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 112) = a4;
  swift_getObjectType();
  sub_20C59FBCC();
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  swift_getObjectType();
  sub_20C59F5AC();
  swift_allocObject();
  swift_weakInit();

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  sub_20C55C998();
  sub_20C55A930(0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v13;
}

uint64_t NowPlayingUpdater.init(dependencies:mediaPlayer:isAudioOnly:nowPlayingInfoCenter:remoteCommandCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5BF0);
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  *(v7 + 120) = v14;
  v15 = OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_lastRequestedArtwork;
  v16 = sub_20C59EA6C();
  (*(*(v16 - 8) + 56))(v7 + v15, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C00);
  sub_20C59D9EC();
  sub_20C4780E8(v20, v7 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_artworkImageLoader);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F90);
  sub_20C59D9EC();
  v17 = *(&v20[0] + 1);
  *(v7 + 48) = *&v20[0];
  *(v7 + 56) = v17;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v7 + 64) = sub_20C59F75C();
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  sub_20C477580(a7, v7 + 72);
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 112) = a4;
  swift_getObjectType();
  sub_20C59FBCC();
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  swift_getObjectType();
  sub_20C59F5AC();
  swift_allocObject();
  swift_weakInit();

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  sub_20C55C998();
  sub_20C55A930(0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v7;
}

uint64_t sub_20C55A728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C38);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = PlaybackInformationUpdated.makeNowPlayingDictionary()();
    sub_20C59FB7C();
    sub_20C55D1F4(v4, v2);

    return sub_20C477B50(v2, &qword_27C7C5C38);
  }

  return result;
}

uint64_t sub_20C55A81C()
{
  v0 = sub_20C59ECFC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C59F58C();
    sub_20C55AD48();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20C55A930(char a1)
{
  if (*(v1 + 112) == 1)
  {
    v3 = *(v1 + 96);
    v4 = *(v1 + 104);
    __swift_project_boxed_opaque_existential_1((v1 + 72), v3);
    (*(v4 + 24))(v3, v4);
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1 & 1, ObjectType, v6);
    swift_unknownObjectRelease();
    v8 = *(v1 + 96);
    v9 = *(v1 + 104);
    __swift_project_boxed_opaque_existential_1((v1 + 72), v8);
    (*(v9 + 24))(v8, v9);
    v11 = v10;
    v12 = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E90);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20C5A3A10;
    *(v13 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    (*(v11 + 16))(v13, v12, v11);
    swift_unknownObjectRelease();
    v14 = *(v1 + 96);
    v15 = *(v1 + 104);
    __swift_project_boxed_opaque_existential_1((v1 + 72), v14);
    (*(v15 + 32))(v14, v15);
    v17 = v16;
    v18 = swift_getObjectType();
    (*(v17 + 16))(a1 & 1, v18, v17);
    swift_unknownObjectRelease();
    v19 = *(v1 + 96);
    v20 = *(v1 + 104);
    __swift_project_boxed_opaque_existential_1((v1 + 72), v19);
    (*(v20 + 32))(v19, v20);
    v22 = v21;
    v23 = swift_getObjectType();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_20C5A3A10;
    *(v24 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    (*(v22 + 16))(v24, v23, v22);
    swift_unknownObjectRelease();
  }

  v25 = *(v1 + 96);
  v26 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v25);
  (*(v26 + 40))(v25, v26);
  v28 = v27;
  v29 = swift_getObjectType();
  (*(v28 + 16))(0, v29, v28);
  swift_unknownObjectRelease();
  v30 = *(v1 + 96);
  v31 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v30);
  (*(v31 + 16))(v30, v31);
  v33 = v32;
  v34 = swift_getObjectType();
  (*(v33 + 16))(a1 & 1, v34, v33);
  swift_unknownObjectRelease();
  v35 = *(v1 + 96);
  v36 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v35);
  (*(v36 + 8))(v35, v36);
  v38 = v37;
  v39 = swift_getObjectType();
  (*(v38 + 16))(a1 & 1, v39, v38);
  swift_unknownObjectRelease();
  v40 = *(v1 + 96);
  v41 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v40);
  (*(v41 + 48))(v40, v41);
  v43 = v42;
  v44 = swift_getObjectType();
  (*(v43 + 16))(0, v44, v43);

  return swift_unknownObjectRelease();
}

void sub_20C55AD48()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = *(v0 + 120);
  os_unfair_lock_lock((v9 + 20));
  v10 = *(v9 + 16);
  os_unfair_lock_unlock((v9 + 20));
  if (v10 == 1)
  {
    v11 = sub_20C59ECDC();
    if ((v11 & 0x100000000) != 0)
    {
      v15 = v11;
      sub_20C59FE5C();
      v16 = sub_20C5A01BC();
      v17 = sub_20C5A08AC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v18 = 136315138;
        v19 = sub_20C59ECBC();
        v21 = sub_20C479640(v19, v20, &v29);

        *(v18 + 4) = v21;
        _os_log_impl(&dword_20C472000, v16, v17, "[NowPlayingUpdater] Playback updated onPlayback playbackstate %s", v18, 0xCu);
        v22 = v28;
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x20F2FFF90](v22, -1, -1);
        MEMORY[0x20F2FFF90](v18, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
      v23 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 40);
      if (v15 > 1u)
      {
        if (v15 != 2)
        {
          v27 = ObjectType;
          v25(3);
          (*(v23 + 16))(0, v27, v23);
          return;
        }

        v26 = 4;
      }

      else if (v15)
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      (v25)(v26, ObjectType, v23);
      return;
    }

    sub_20C59FE5C();
    v12 = sub_20C5A01BC();
    v13 = sub_20C5A089C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20C472000, v12, v13, "[NowPlayingUpdater] Unknown playback state encountered, skipping now playing update", v14, 2u);
      MEMORY[0x20F2FFF90](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_20C55B064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v54 = a3;
  v55 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - v17;
  v19 = sub_20C59EA6C();
  v56 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v53 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v8 + 120);
  os_unfair_lock_lock((v21 + 20));
  v22 = *(v21 + 16);
  os_unfair_lock_unlock((v21 + 20));
  if (v22 == 1)
  {
    v52 = a7;
    v23 = sub_20C5A039C();
    v25 = v24;
    *&v58 = a8;
    v59 = MEMORY[0x277D839F8];
    v26 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v26;
    sub_20C494304(&v58, v23, v25, isUniquelyReferenced_nonNull_native);

    v28 = v57;
    v29 = sub_20C5A039C();
    v31 = v30;
    *&v58 = a1;
    *(&v58 + 1) = a2;
    v32 = MEMORY[0x277D837D0];
    v59 = MEMORY[0x277D837D0];

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v28;
    sub_20C494304(&v58, v29, v31, v33);

    v34 = v57;
    if (a4)
    {
      v35 = sub_20C5A039C();
      v37 = v36;
      *&v58 = v54;
      *(&v58 + 1) = a4;
      v59 = v32;

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v34;
      sub_20C494304(&v58, v35, v37, v38);

      v34 = v57;
    }

    v39 = v52;
    if (a6)
    {
      v40 = sub_20C5A039C();
      v42 = v41;
      *&v58 = v55;
      *(&v58 + 1) = a6;
      v59 = v32;

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v34;
      sub_20C494304(&v58, v40, v42, v43);

      v34 = v57;
    }

    v44 = *(v9 + 112);
    v45 = sub_20C5A039C();
    v47 = v46;
    if (v44 == 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = 2;
    }

    *&v58 = v48;
    v59 = MEMORY[0x277D83E88];
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v34;
    sub_20C494304(&v58, v45, v47, v49);

    sub_20C559AD8(v57);

    sub_20C4775E4(v39, v18, &qword_27C7C5C10);
    v50 = v56;
    if ((*(v56 + 48))(v18, 1, v19) == 1)
    {
      sub_20C477B50(v18, &qword_27C7C5C10);
    }

    else
    {
      v51 = v53;
      (*(v50 + 32))(v53, v18, v19);
      sub_20C55BD30(v51);
      (*(v50 + 8))(v51, v19);
    }
  }
}

uint64_t sub_20C55B470(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v39 = a1;
  v37 = sub_20C59EA6C();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00);
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  MEMORY[0x28223BE20](v15);
  v40 = &v36 - v17;
  v36 = v3;
  v18 = *(v3 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_artworkImageLoader + 24);
  v19 = *(v3 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_artworkImageLoader + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_artworkImageLoader), v18);
  (*(v19 + 64))(v18, v19, a2, a3);
  v20 = v37;
  (*(v7 + 16))(v9, v39, v37);
  v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  (*(v7 + 32))(v23 + v21, v9, v20);
  v24 = (v23 + v22);
  *v24 = a2;
  v24[1] = a3;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20C55E374;
  *(v25 + 24) = v23;
  v26 = v38;
  v27 = v41;
  (*(v10 + 16))(v38, v14, v41);
  v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v29 = swift_allocObject();
  (*(v10 + 32))(v29 + v28, v26, v27);
  v30 = (v29 + ((v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_20C4C8D68;
  v30[1] = v25;

  v31 = v40;
  sub_20C59EA9C();
  (*(v10 + 8))(v14, v27);
  v32 = v42;
  v33 = sub_20C59EABC();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20C4907D4, v34);

  return (*(v43 + 8))(v31, v32);
}

void sub_20C55B8BC(id *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v35 = a3;
  v9 = sub_20C59EA6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C40);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  MEMORY[0x28223BE20](v16 - 8);
  v34 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  v32 = *a1;
  v21 = OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_lastRequestedArtwork;
  swift_beginAccess();
  (*(v10 + 16))(v20, v35, v9);
  (*(v10 + 56))(v20, 0, 1, v9);
  v22 = *(v13 + 56);
  v35 = a2;
  sub_20C4775E4(a2 + v21, v15, &qword_27C7C5C10);
  sub_20C4775E4(v20, &v15[v22], &qword_27C7C5C10);
  v23 = *(v10 + 48);
  if (v23(v15, 1, v9) != 1)
  {
    v25 = v34;
    sub_20C4775E4(v15, v34, &qword_27C7C5C10);
    if (v23(&v15[v22], 1, v9) != 1)
    {
      v26 = v33;
      (*(v10 + 32))(v33, &v15[v22], v9);
      sub_20C55E7D0(&qword_27C7C5C48);
      v27 = sub_20C5A033C();
      v28 = *(v10 + 8);
      v28(v26, v9);
      sub_20C477B50(v20, &qword_27C7C5C10);
      v28(v25, v9);
      sub_20C477B50(v15, &qword_27C7C5C10);
      v24 = v35;
      if ((v27 & 1) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_20C477B50(v20, &qword_27C7C5C10);
    (*(v10 + 8))(v25, v9);
LABEL_6:
    sub_20C477B50(v15, &qword_27C7C5C40);
    return;
  }

  sub_20C477B50(v20, &qword_27C7C5C10);
  if (v23(&v15[v22], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20C477B50(v15, &qword_27C7C5C10);
  v24 = v35;
LABEL_8:
  v29 = *(v24 + 120);
  os_unfair_lock_lock((v29 + 20));
  v30 = *(v29 + 16);
  os_unfair_lock_unlock((v29 + 20));
  if (v30 == 1)
  {
    v36 = xmmword_20C5A9240;
    v37 = v32;
    v38 = *&a4;
    v39 = *&a5;
    v40 = 1;
    v31 = v32;
    NowPlayingUpdater.updateNowPlayingInfo(property:)(&v36);
    sub_20C55E580(v36, *(&v36 + 1), v37, v38, v39, v40);
  }
}

uint64_t sub_20C55BD30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00);
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v44 - v5;
  v6 = sub_20C59EA6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = v8;
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = sub_20C5A01CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v16 = *(v7 + 16);
  v52 = a1;
  v47 = v7 + 16;
  v48 = v16;
  v16(v11, a1, v6);
  v17 = sub_20C5A01BC();
  v18 = sub_20C5A08AC();
  v19 = os_log_type_enabled(v17, v18);
  v46 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v45 = v12;
    v21 = v20;
    v44 = swift_slowAlloc();
    v57[0] = v44;
    *v21 = 136315138;
    sub_20C55E7D0(&qword_27C7C5C50);
    v22 = sub_20C5A0E6C();
    v24 = v23;
    (*(v7 + 8))(v11, v6);
    v25 = sub_20C479640(v22, v24, v57);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_20C472000, v17, v18, "[NowPlayingUpdater] configureNowPlayingArtwork artwork %s", v21, 0xCu);
    v26 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x20F2FFF90](v26, -1, -1);
    MEMORY[0x20F2FFF90](v21, -1, -1);

    (*(v13 + 8))(v15, v45);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
    (*(v13 + 8))(v15, v12);
  }

  v28 = v48;
  v27 = v49;
  v29 = v52;
  v48(v49, v52, v6);
  v30 = v46;
  (*(v46 + 56))(v27, 0, 1, v6);
  v31 = OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_lastRequestedArtwork;
  v32 = v53;
  swift_beginAccess();
  sub_20C55E5EC(v27, v32 + v31);
  swift_endAccess();
  v33 = *(v32 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_artworkImageLoader + 24);
  v34 = *(v32 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_artworkImageLoader + 32);
  __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_artworkImageLoader), v33);
  (*(v34 + 24))(v29, v33, v34, 768.0, 768.0);
  v35 = v51;
  v28(v51, v29, v6);
  v36 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v37 = (v50 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  (*(v30 + 32))(v38 + v36, v35, v6);
  *(v38 + v37) = vdupq_n_s64(0x4088000000000000uLL);

  v39 = v55;
  v40 = v56;
  v41 = sub_20C59EABC();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_20C55E72C;
  *(v42 + 24) = v38;

  v41(sub_20C4C00E8, v42);

  return (*(v54 + 8))(v40, v39);
}

void sub_20C55C2EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v59 = a3;
  v9 = sub_20C5A01CC();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C59EA6C();
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C40);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  MEMORY[0x28223BE20](v18 - 8);
  v54 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  v57 = *a1;
  v26 = *(a1 + 8);
  v60 = a2;
  v27 = *(a2 + 120);
  os_unfair_lock_lock((v27 + 20));
  LODWORD(a2) = *(v27 + 16);
  os_unfair_lock_unlock((v27 + 20));
  if (a2 != 1)
  {
    return;
  }

  if ((v26 & 1) == 0)
  {
    v37 = OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_lastRequestedArtwork;
    v38 = v60;
    swift_beginAccess();
    v39 = v58;
    (*(v58 + 16))(v25, v59, v12);
    v40 = *(v39 + 56);
    v55 = v39 + 56;
    v53 = v40;
    v40(v25, 0, 1, v12);
    v41 = *(v15 + 48);
    v56 = v37;
    v42 = v38 + v37;
    v43 = v41;
    sub_20C4775E4(v42, v17, &qword_27C7C5C10);
    sub_20C4775E4(v25, &v17[v43], &qword_27C7C5C10);
    v44 = *(v39 + 48);
    if (v44(v17, 1, v12) == 1)
    {
      sub_20C477B50(v25, &qword_27C7C5C10);
      if (v44(&v17[v43], 1, v12) == 1)
      {
        sub_20C477B50(v17, &qword_27C7C5C10);
LABEL_13:
        v61 = sub_20C59EA5C();
        v62 = v48;
        v63 = v57;
        v64 = *&a4;
        v65 = *&a5;
        v66 = 1;
        v49 = v57;
        v50 = v60;
        NowPlayingUpdater.updateNowPlayingInfo(property:)(&v61);
        sub_20C55E580(v61, v62, v63, v64, v65, v66);
        v51 = v54;
        v53(v54, 1, 1, v12);
        v52 = v56;
        swift_beginAccess();
        sub_20C55E5EC(v51, v50 + v52);
        swift_endAccess();
        return;
      }
    }

    else
    {
      sub_20C4775E4(v17, v22, &qword_27C7C5C10);
      if (v44(&v17[v43], 1, v12) != 1)
      {
        v45 = v58;
        (*(v58 + 32))(v14, &v17[v43], v12);
        sub_20C55E7D0(&qword_27C7C5C48);
        v46 = sub_20C5A033C();
        v47 = *(v45 + 8);
        v47(v14, v12);
        sub_20C477B50(v25, &qword_27C7C5C10);
        v47(v22, v12);
        sub_20C477B50(v17, &qword_27C7C5C10);
        if ((v46 & 1) == 0)
        {
          return;
        }

        goto LABEL_13;
      }

      sub_20C477B50(v25, &qword_27C7C5C10);
      (*(v58 + 8))(v22, v12);
    }

    sub_20C477B50(v17, &qword_27C7C5C40);
    return;
  }

  sub_20C59FE2C();
  v28 = v57;
  v29 = v57;
  v30 = sub_20C5A01BC();
  v31 = sub_20C5A089C();
  sub_20C48D05C(v28);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v61 = v33;
    *v32 = 136315138;
    swift_getErrorValue();
    v34 = sub_20C5A0EEC();
    v36 = sub_20C479640(v34, v35, &v61);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_20C472000, v30, v31, "[NowPlayingUpdater] Art failed to load with error %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x20F2FFF90](v33, -1, -1);
    MEMORY[0x20F2FFF90](v32, -1, -1);
  }

  (*(v55 + 8))(v11, v56);
  sub_20C55B470(v59, a4, a5);
}

uint64_t sub_20C55C998()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v1);
  (*(v2 + 8))(v1, v2);
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v4 + 32);

  v7(v30, sub_20C55E814, v6, ObjectType, v4);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v30);

  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v8);
  (*(v9 + 16))(v8, v9);
  v11 = v10;
  v12 = swift_getObjectType();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(v11 + 32);

  v14(v30, sub_20C55E844, v13, v12, v11);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v30);

  if (*(v0 + 112) == 1)
  {
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v16);
    (*(v17 + 24))(v16, v17);
    v19 = v18;
    v20 = swift_getObjectType();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = *(v19 + 32);

    v22(v30, sub_20C55E874, v21, v20, v19);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v30);

    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v23);
    (*(v24 + 32))(v23, v24);
    v26 = v25;
    v27 = swift_getObjectType();
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = *(v26 + 32);

    v29(v30, sub_20C55E894, v28, v27, v26);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return result;
}

uint64_t sub_20C55CCF4(void *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5)
{
  v9 = sub_20C5A01CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = v26 - v15;
  v17 = [a1 command];
  v18 = [v17 isEnabled];

  if (v18)
  {
    sub_20C59FE5C();
    v19 = sub_20C5A01BC();
    v20 = sub_20C5A08AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20C472000, v19, v20, a3, v21, 2u);
      MEMORY[0x20F2FFF90](v21, -1, -1);
    }

    (*(v10 + 8))(v16, v9);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_unknownObjectRetain();

      swift_getObjectType();
      v26[1] = a4;
      v27 = 2;
      sub_20C55E8B4();
      sub_20C59F5FC();
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    sub_20C59FE5C();
    v23 = sub_20C5A01BC();
    v24 = sub_20C5A08AC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20C472000, v23, v24, a5, v25, 2u);
      MEMORY[0x20F2FFF90](v25, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    return 200;
  }

  return result;
}

uint64_t sub_20C55CFB0(void *a1, uint64_t a2, char a3)
{
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 command];
  v11 = [v10 isEnabled];

  if (v11 && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
  {
    v13 = v12;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v15 = a1;
      swift_unknownObjectRetain();

      swift_getObjectType();
      [v13 interval];
      v20[1] = v16;
      v21 = a3;
      sub_20C55E8B4();
      sub_20C59F5FC();

      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    sub_20C59FE5C();
    v17 = sub_20C5A01BC();
    v18 = sub_20C5A08AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20C472000, v17, v18, "[NowPlayingUpdater] Pause command is disabled, discarding", v19, 2u);
      MEMORY[0x20F2FFF90](v19, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 200;
  }

  return result;
}

void sub_20C55D1F4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_20C59EA6C();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C38);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - v14;
  v16 = *(v2 + 120);
  os_unfair_lock_lock((v16 + 20));
  v17 = *(v16 + 16);
  os_unfair_lock_unlock((v16 + 20));
  if (v17 == 1)
  {
    sub_20C559AD8(v21);
    sub_20C4775E4(v22, v15, &qword_27C7C5C38);
    if ((*(v7 + 48))(v15, 1, v6) != 1)
    {
      sub_20C55E304(v15, v12);
      sub_20C4775E4(v12, v9, &qword_27C7C5C10);
      v18 = v20;
      if ((*(v20 + 48))(v9, 1, v3) == 1)
      {
        sub_20C477B50(v12, &qword_27C7C5C10);
      }

      else
      {
        (*(v18 + 32))(v5, v9, v3);
        sub_20C55BD30(v5);
        (*(v18 + 8))(v5, v3);
        v9 = v12;
      }

      sub_20C477B50(v9, &qword_27C7C5C10);
    }
  }
}

uint64_t NowPlayingUpdater.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_lastRequestedArtwork, &qword_27C7C5C10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC12SeymourMedia17NowPlayingUpdater_artworkImageLoader);
  return v0;
}

uint64_t NowPlayingUpdater.__deallocating_deinit()
{
  NowPlayingUpdater.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall NowPlayingUpdater.activate()()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v6 = sub_20C5A01BC();
  v7 = sub_20C5A08AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C472000, v6, v7, "[NowPlayingUpdater] Activating", v8, 2u);
    MEMORY[0x20F2FFF90](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 120);
  os_unfair_lock_lock((v9 + 20));
  sub_20C55E078((v9 + 16));
  os_unfair_lock_unlock((v9 + 20));
}

void sub_20C55D710(_BYTE *a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    sub_20C59FE5C();
    v6 = sub_20C5A01BC();
    v7 = sub_20C5A08AC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20C472000, v6, v7, "[NowPlayingUpdater] Activated", v8, 2u);
      MEMORY[0x20F2FFF90](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    *a1 = 1;
    sub_20C55A930(1);
  }
}

Swift::Void __swiftcall NowPlayingUpdater.deactivate()()
{
  v1 = *(v0 + 120);
  os_unfair_lock_lock((v1 + 20));
  sub_20C55E094((v1 + 16));

  os_unfair_lock_unlock((v1 + 20));
}

uint64_t sub_20C55D8D8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  sub_20C59FE5C();
  v11 = sub_20C5A01BC();
  v12 = sub_20C5A08AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20C472000, v11, v12, "[NowPlayingUpdater] Deactivating", v13, 2u);
    MEMORY[0x20F2FFF90](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  result = v14(v10, v4);
  if (*a1 == 1)
  {
    sub_20C59FE5C();
    v16 = sub_20C5A01BC();
    v17 = sub_20C5A08AC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20C472000, v16, v17, "[NowPlayingUpdater] Deactivated", v18, 2u);
      MEMORY[0x20F2FFF90](v18, -1, -1);
    }

    v14(v7, v4);
    *a1 = 0;
    sub_20C55DB40();
    v19 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v19 + 40))(3, ObjectType, v19);
    return (*(v19 + 16))(0, ObjectType, v19);
  }

  return result;
}

uint64_t sub_20C55DB40()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v6 = sub_20C5A01BC();
  v7 = sub_20C5A08AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C472000, v6, v7, "[NowPlayingUpdater] Disabling command handlers", v8, 2u);
    MEMORY[0x20F2FFF90](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1[12];
  v10 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v9);
  (*(v10 + 24))(v9, v10);
  v12 = v11;
  ObjectType = swift_getObjectType();
  v40 = 0u;
  v41 = 0u;
  (*(v12 + 40))(&v40, ObjectType, v12);
  swift_unknownObjectRelease();
  sub_20C477B50(&v40, &qword_27C7C44D0);
  v14 = v1[12];
  v15 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v14);
  (*(v15 + 32))(v14, v15);
  v17 = v16;
  v18 = swift_getObjectType();
  v40 = 0u;
  v41 = 0u;
  (*(v17 + 40))(&v40, v18, v17);
  swift_unknownObjectRelease();
  sub_20C477B50(&v40, &qword_27C7C44D0);
  v19 = v1[12];
  v20 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v19);
  (*(v20 + 8))(v19, v20);
  v22 = v21;
  v23 = swift_getObjectType();
  v40 = 0u;
  v41 = 0u;
  (*(v22 + 40))(&v40, v23, v22);
  swift_unknownObjectRelease();
  sub_20C477B50(&v40, &qword_27C7C44D0);
  v24 = v1[12];
  v25 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v24);
  (*(v25 + 16))(v24, v25);
  v27 = v26;
  v28 = swift_getObjectType();
  v40 = 0u;
  v41 = 0u;
  (*(v27 + 40))(&v40, v28, v27);
  swift_unknownObjectRelease();
  sub_20C477B50(&v40, &qword_27C7C44D0);
  v29 = v1[12];
  v30 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v29);
  (*(v30 + 40))(v29, v30);
  v32 = v31;
  v33 = swift_getObjectType();
  v40 = 0u;
  v41 = 0u;
  (*(v32 + 40))(&v40, v33, v32);
  swift_unknownObjectRelease();
  sub_20C477B50(&v40, &qword_27C7C44D0);
  v34 = v1[12];
  v35 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v34);
  (*(v35 + 48))(v34, v35);
  v37 = v36;
  v38 = swift_getObjectType();
  v40 = 0u;
  v41 = 0u;
  (*(v37 + 40))(&v40, v38, v37);
  swift_unknownObjectRelease();
  return sub_20C477B50(&v40, &qword_27C7C44D0);
}

void sub_20C55DFF8()
{
  v1 = *(*v0 + 120);
  os_unfair_lock_lock((v1 + 20));
  sub_20C55E908((v1 + 16));

  os_unfair_lock_unlock((v1 + 20));
}

uint64_t type metadata accessor for NowPlayingUpdater()
{
  result = qword_27C7C5C18;
  if (!qword_27C7C5C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C55E104()
{
  sub_20C55E244();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20C55E244()
{
  if (!qword_27C7C5C28)
  {
    sub_20C59EA6C();
    v0 = sub_20C5A0A4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C5C28);
    }
  }
}

unint64_t sub_20C55E2B0()
{
  result = qword_27C7C5C30;
  if (!qword_27C7C5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5C30);
  }

  return result;
}

uint64_t sub_20C55E304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20C55E374(id *a1)
{
  v3 = *(sub_20C59EA6C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_20C55B8BC(a1, *(v1 + 16), v1 + v4, *v5, v5[1]);
}

uint64_t sub_20C55E424(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C59EA9C();
}

uint64_t sub_20C55E4C4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4BBE7C(a1, a2, v2 + v6, v8, v9);
}

void sub_20C55E580(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 3)
  {
LABEL_4:

    return;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_20C55E5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_20C59EA6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_20C55E72C(uint64_t a1)
{
  v3 = *(sub_20C59EA6C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_20C55C2EC(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_20C55E7D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20C59EA6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C55E8B4()
{
  result = qword_27C7C5C58;
  if (!qword_27C7C5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5C58);
  }

  return result;
}

uint64_t sub_20C55E928@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_20C59EA6C();
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C55EBEC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, const char *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(char *)@<X4>, uint64_t a6@<X8>)
{
  v34 = a3;
  v11 = sub_20C5A01CC();
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDFC();
  v14 = sub_20C5A01BC();
  v15 = sub_20C5A08AC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = a5;
    v19 = v18;
    v36 = v18;
    *v17 = 136315138;
    v20 = a2(a1);
    v22 = sub_20C479640(v20, v21, &v36);
    v31 = v11;
    v23 = a6;
    v24 = v22;

    *(v17 + 4) = v24;
    a6 = v23;
    _os_log_impl(&dword_20C472000, v14, v15, v34, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v25 = v19;
    a5 = v33;
    MEMORY[0x20F2FFF90](v25, -1, -1);
    v26 = v17;
    a4 = v32;
    MEMORY[0x20F2FFF90](v26, -1, -1);

    v27 = (*(v35 + 8))(v13, v31);
  }

  else
  {

    v27 = (*(v35 + 8))(v13, v11);
  }

  v28 = a4(v27);
  MEMORY[0x28223BE20](v28);
  *(&v31 - 16) = a1;
  sub_20C55F25C(v29, a5, a6);
}

uint64_t sub_20C55EEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, const char *a5@<X4>, uint64_t (*a6)(char *)@<X5>, uint64_t a7@<X8>)
{
  v36 = a5;
  v37 = a7;
  v10 = v7;
  v38 = a2;
  v13 = sub_20C5A01CC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDFC();
  v17 = sub_20C5A01BC();
  v18 = sub_20C5A08AC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = a6;
    v22 = v21;
    v39 = v21;
    *v20 = 136315138;
    v23 = a4(a1);
    v25 = sub_20C479640(v23, v24, &v39);
    v33 = v13;
    v26 = a1;
    v27 = v25;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_20C472000, v17, v18, v36, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v28 = v22;
    a6 = v34;
    MEMORY[0x20F2FFF90](v28, -1, -1);
    MEMORY[0x20F2FFF90](v20, -1, -1);

    (*(v14 + 8))(v16, v33);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    v26 = a1;
  }

  v29 = (*(a3 + 8))(v38, a3);
  MEMORY[0x28223BE20](v29);
  *(&v32 - 16) = v26;
  sub_20C55F4C4(v30, a6, v37);
}

uint64_t sub_20C55F114(uint64_t a1, char a2)
{
  v3 = sub_20C59E64C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C59EA1C();
  v7 = sub_20C59E62C();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v15 = v7;
  v16 = v9;
  v17 = v11 & 1;
  v14[7] = a2;
  sub_20C55FEE4();
  sub_20C55FF38();
  v12 = sub_20C59DA7C();
  sub_20C481884(v7, v9, v11 & 1);
  return v12 & 1;
}

uint64_t sub_20C55F25C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20[-v11];
  sub_20C55E928(a2, a1, &v20[-v11]);
  v13 = sub_20C59EA6C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20C55FDD4(v12);
    sub_20C59FE2C();
    v15 = sub_20C5A01BC();
    v16 = sub_20C5A089C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20C472000, v15, v16, "Failed to find artwork matching predicate. Returning nil", v17, 2u);
      MEMORY[0x20F2FFF90](v17, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v18 = 1;
  }

  else
  {
    (*(v14 + 32))(a3, v12, v13);
    v18 = 0;
  }

  return (*(v14 + 56))(a3, v18, 1, v13);
}

uint64_t sub_20C55F4C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20[-v11];
  sub_20C55E928(a2, a1, &v20[-v11]);
  v13 = sub_20C59EA6C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20C55FDD4(v12);
    sub_20C59FE2C();
    v15 = sub_20C5A01BC();
    v16 = sub_20C5A089C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20C472000, v15, v16, "Failed to find artwork matching predicate. Returning nil", v17, 2u);
      MEMORY[0x20F2FFF90](v17, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v18 = 1;
  }

  else
  {
    (*(v14 + 32))(a3, v12, v13);
    v18 = 0;
  }

  return (*(v14 + 56))(a3, v18, 1, v13);
}

uint64_t sub_20C55F72C(uint64_t a1, char a2)
{
  v3 = sub_20C59E64C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C59EA1C();
  v7 = sub_20C59E63C();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v15 = v7;
  v16 = v9;
  v17 = v11 & 1;
  v14[7] = a2;
  sub_20C55FE3C();
  sub_20C55FE90();
  v12 = sub_20C59DA7C();
  sub_20C481884(v7, v9, v11 & 1);
  return v12 & 1;
}

uint64_t sub_20C55FDD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C55FE3C()
{
  result = qword_27C7C5C60;
  if (!qword_27C7C5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5C60);
  }

  return result;
}

unint64_t sub_20C55FE90()
{
  result = qword_27C7C5C68;
  if (!qword_27C7C5C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5C68);
  }

  return result;
}

unint64_t sub_20C55FEE4()
{
  result = qword_27C7C5C70;
  if (!qword_27C7C5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5C70);
  }

  return result;
}

unint64_t sub_20C55FF38()
{
  result = qword_27C7C5C78;
  if (!qword_27C7C5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5C78);
  }

  return result;
}

void NowPlayingUpdater.updateNowPlayingInfo(property:)(uint64_t a1)
{
  v3 = sub_20C5A01CC();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v58 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v60 = *(a1 + 24);
  v61 = *(a1 + 32);
  v62 = v16;
  v17 = *(a1 + 40);
  v18 = *(v1 + 15);
  os_unfair_lock_lock((v18 + 20));
  v19 = *(v18 + 16);
  os_unfair_lock_unlock((v18 + 20));
  if (v19 == 1)
  {
    if (v17 > 1)
    {
      v20 = v15;
      v21 = v14;
      if (v17 == 2)
      {
        sub_20C59FE5C();
        v27 = sub_20C5A01BC();
        v28 = sub_20C5A08AC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134218240;
          *(v29 + 4) = v21;
          *(v29 + 12) = 2048;
          *(v29 + 14) = v20;
          _os_log_impl(&dword_20C472000, v27, v28, "[NowPlayingUpdater] playbackrate %f elaspedTime %f", v29, 0x16u);
          MEMORY[0x20F2FFF90](v29, -1, -1);
        }

        (*(v63 + 8))(v7, v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20C5A84B0;
        *(inited + 32) = sub_20C5A039C();
        v31 = MEMORY[0x277D839F8];
        *(inited + 72) = MEMORY[0x277D839F8];
        *(inited + 40) = v32;
        *(inited + 48) = v21;
        *(inited + 80) = sub_20C5A039C();
        *(inited + 88) = v33;
        *(inited + 120) = v31;
        *(inited + 96) = v20;
        v34 = sub_20C589B84(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C88);
        swift_arrayDestroy();
        goto LABEL_18;
      }

      v52 = v59;
      sub_20C59FE5C();

      v53 = sub_20C5A01BC();
      v54 = sub_20C5A08AC();
      sub_20C55E580(v21, v15, v62, *&v60, *&v61, 3);
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v65[0] = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_20C479640(v21, v20, v65);
        _os_log_impl(&dword_20C472000, v53, v54, "[NowPlayingUpdater] title %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x20F2FFF90](v56, -1, -1);
        MEMORY[0x20F2FFF90](v55, -1, -1);
      }

      (*(v63 + 8))(v52, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C80);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_20C5A4FE0;
    }

    else
    {
      v59 = v1;
      v20 = v15;
      v21 = v14;
      if (v17)
      {
        v35 = v60;
        v36 = v61;

        sub_20C59FE5C();
        v37 = v62;
        v38 = v62;
        v39 = sub_20C5A01BC();
        v40 = sub_20C5A08AC();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          *(v41 + 4) = v38;
          *v42 = v37;
          v43 = v38;
          _os_log_impl(&dword_20C472000, v39, v40, "[NowPlayingUpdater] update artwork image %@", v41, 0xCu);
          sub_20C477B50(v42, &qword_27C7C60F0);
          MEMORY[0x20F2FFF90](v42, -1, -1);
          MEMORY[0x20F2FFF90](v41, -1, -1);
        }

        (*(v63 + 8))(v10, v64);
        v44 = swift_allocObject();
        *(v44 + 16) = v38;
        v45 = objc_allocWithZone(MEMORY[0x277CD5DE8]);
        v65[4] = sub_20C56085C;
        v65[5] = v44;
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 1107296256;
        v65[2] = sub_20C5607F4;
        v65[3] = &block_descriptor_14;
        v46 = _Block_copy(v65);
        v47 = v38;
        v48 = [v45 initWithBoundsSize:v46 requestHandler:{v35, v36}];
        _Block_release(v46);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C80);
        v49 = swift_initStackObject();
        *(v49 + 16) = xmmword_20C5A84B0;
        *(v49 + 32) = sub_20C5A039C();
        *(v49 + 40) = v50;
        *(v49 + 72) = sub_20C56086C();
        *(v49 + 48) = v48;
        *(v49 + 80) = sub_20C5A039C();
        *(v49 + 88) = v51;
        *(v49 + 120) = MEMORY[0x277D837D0];
        *(v49 + 96) = v21;
        *(v49 + 104) = v20;
        v34 = sub_20C589B84(v49);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C88);
        swift_arrayDestroy();
        goto LABEL_18;
      }

      sub_20C59FE5C();

      v22 = sub_20C5A01BC();
      v23 = sub_20C5A08AC();
      sub_20C55E580(v21, v15, v62, *&v60, *&v61, 0);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v65[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_20C479640(v21, v20, v65);
        _os_log_impl(&dword_20C472000, v22, v23, "[NowPlayingUpdater] artist %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x20F2FFF90](v25, -1, -1);
        MEMORY[0x20F2FFF90](v24, -1, -1);
      }

      (*(v63 + 8))(v13, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5C80);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_20C5A4FE0;
    }

    *(v26 + 32) = sub_20C5A039C();
    *(v26 + 72) = MEMORY[0x277D837D0];
    *(v26 + 40) = v57;
    *(v26 + 48) = v21;
    *(v26 + 56) = v20;
    v34 = sub_20C589B84(v26);
    swift_setDeallocating();
    sub_20C477B50(v26 + 32, &qword_27C7C5C88);
LABEL_18:
    sub_20C559AD8(v34);
  }
}

id sub_20C5607F4(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);

  v7 = v5(v6, a2, a3);

  return v7;
}

unint64_t sub_20C56086C()
{
  result = qword_27C7C5C90;
  if (!qword_27C7C5C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C5C90);
  }

  return result;
}

double static PixelGeometry.onePixel.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  return 1.0 / v2;
}

double static PixelGeometry.onePixel(in:)(void *a1)
{
  v1 = 0.0;
  if (a1)
  {
    v2 = [a1 windowScene];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 screen];

      [v4 scale];
      v6 = v5;

      if (v6 > 0.0)
      {
        return 1.0 / v6;
      }
    }
  }

  return v1;
}

unint64_t sub_20C5609C0()
{
  result = qword_27C7C5C98;
  if (!qword_27C7C5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5C98);
  }

  return result;
}

uint64_t sub_20C560A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t))
{
  v4 = sub_20C560AA8();
  v5 = sub_20C560AFC();

  return a3(a1, v4, v5);
}

unint64_t sub_20C560AA8()
{
  result = qword_27C7C5CA0;
  if (!qword_27C7C5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5CA0);
  }

  return result;
}

unint64_t sub_20C560AFC()
{
  result = qword_2810F4490;
  if (!qword_2810F4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F4490);
  }

  return result;
}

uint64_t sub_20C560B50(uint64_t a1)
{
  v2 = sub_20C59D1DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_20C59D1AC();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t MetricResignActiveObserving<>.isVisible.getter()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 topViewController];
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = v3;

    if (v4 != v0)
    {
      goto LABEL_8;
    }

    v5 = [v2 presentedViewController];

    if (v5)
    {
      v2 = v5;
LABEL_8:

      return 0;
    }
  }

  v6 = [v0 presentedViewController];
  if (v6)
  {
    v2 = v6;
    goto LABEL_8;
  }

  return 1;
}

void sub_20C560D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C59D46C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (MetricResignActiveObserving<>.isVisible.getter())
    {
      v12 = v11;
      sub_20C59D45C();
      MetricImpressionPublishing.publishImpressions(on:)(v9, a3, a4);
      (*(v7 + 8))(v9, v6);
    }
  }
}

void MetricResignActiveObserving<>.removeResignActiveObserver()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a1, a3);
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() defaultCenter];
    [v5 removeObserver_];
    swift_unknownObjectRelease();
  }
}

uint64_t Session.shouldArchive(standaloneWorkoutTimeProvider:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5840);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_20C59EB8C();
  LOBYTE(a1) = sub_20C560FF4(v4, a1);
  sub_20C561440(v4);
  return a1 & 1;
}

BOOL sub_20C560FF4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5840);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_20C5A01CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_20C59FE0C();
  sub_20C5A01AC();
  v14 = *(v8 + 8);
  v14(v13, v7);
  sub_20C5A072C();
  sub_20C5614A8(a1, v6);
  v15 = sub_20C59EBEC();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v6, 1, v15);
  if (v17 == 1)
  {
    sub_20C561440(v6);
    v18 = 0.0;
  }

  else
  {
    sub_20C59EBDC();
    v18 = v19;
    (*(v16 + 8))(v6, v15);
  }

  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = (*(v21 + 8))(v20, v21);
  if (v17 == 1)
  {
    v23 = v22;
  }

  else
  {
    v23 = v18;
  }

  sub_20C59F69C();
  v25 = v24;
  if (v24 > v23)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_20C5A0C0C();
    if (v17 == 1)
    {
      MEMORY[0x20F2FE9A0](0xD000000000000018, 0x800000020C5ADD50);
    }

    else
    {
      MEMORY[0x20F2FE9A0](0x2074756F6B726F57, 0xEE00203A656D6954);
    }

    sub_20C5A076C();
    v27 = v34;
    v26 = v35;
    sub_20C59FE0C();

    v28 = sub_20C5A01BC();
    v29 = sub_20C5A08AC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v30 = 136446210;
      v32 = sub_20C479640(v27, v26, &v34);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_20C472000, v28, v29, "Not Archiving Session: Too Short. %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x20F2FFF90](v31, -1, -1);
      MEMORY[0x20F2FFF90](v30, -1, -1);
    }

    else
    {
    }

    v14(v11, v7);
  }

  return v25 <= v23;
}

uint64_t sub_20C561440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5614A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MarketingOfferTemplateFootnotePosition.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C5615A4()
{
  result = qword_27C7C5CA8;
  if (!qword_27C7C5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5CA8);
  }

  return result;
}

void AVDismissalBehavior.seymourBehaviorContext.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*AVDismissalBehavior.seymourBehaviorContext.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12SeymourMedia19AVDismissalBehavior_seymourBehaviorContext;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20C561750;
}

void sub_20C561750(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t AVDismissalBehavior.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12SeymourMedia19AVDismissalBehavior_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AVDismissalBehavior.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12SeymourMedia19AVDismissalBehavior_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20C561928;
}

void sub_20C561928(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t AVDismissalBehavior.willMove(to:)()
{
  objc_opt_self();
  swift_dynamicCastObjCClass();
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t AVDismissalBehavior.seymourBehaviorContext(_:didRecieveDoneButtonTapWithDismissalBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 + OBJC_IVAR____TtC12SeymourMedia19AVDismissalBehavior_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = *(v8 + 8);

    v11(sub_20C561B84, v10, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

id AVDismissalBehavior.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AVDismissalBehavior.init()()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC12SeymourMedia19AVDismissalBehavior_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id AVDismissalBehavior.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *MultiUserGroupActivityHandler.__allocating_init(multiUserClient:sessionClient:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_20C47C5E4(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_20C561F4C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C564900(v1);
  }

  return result;
}

uint64_t sub_20C561FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20C5620D0(uint64_t a1)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C53E0);
  v75 = *(v77 - 8);
  v3 = *(v75 + 64);
  v4 = MEMORY[0x28223BE20](v77);
  v73 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v76 = &v69 - v8;
  v9 = sub_20C59E1EC();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  v15 = sub_20C5A01CC();
  v81 = *(v15 - 8);
  v82 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v78 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v69 - v18;
  v19 = sub_20C59D4CC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + OBJC_IVAR____TtC12SeymourMedia29MultiUserGroupActivityHandler_state);
  if (!result)
  {
    return result;
  }

  v69 = v7;
  v70 = v6;
  v71 = v1;

  sub_20C59FFEC();
  v24 = sub_20C59D48C();
  v26 = v25;
  (*(v20 + 8))(v22, v19);
  if (v24 == sub_20C59E19C() && v26 == v27)
  {
  }

  else
  {
    v28 = sub_20C5A0E9C();

    if ((v28 & 1) == 0)
    {
    }
  }

  v29 = sub_20C59E1CC();
  v31 = v83;
  if ((v32 & 1) == 0)
  {
    sub_20C481884(v29, v30, 0);
  }

  if (v29 <= 1u)
  {
  }

  if (v29 == 2)
  {
    v33 = v72;
    sub_20C59FE7C();
    v35 = v79;
    v34 = v80;
    (*(v79 + 16))(v14, a1, v80);
    v36 = sub_20C5A01BC();
    v37 = sub_20C5A08AC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v84 = v39;
      *v38 = 136315138;
      sub_20C479C60(&qword_27C7C5D48, MEMORY[0x277D50FB0]);
      v40 = sub_20C5A0E6C();
      v42 = v41;
      (*(v35 + 8))(v14, v34);
      v43 = sub_20C479640(v40, v42, &v84);

      *(v38 + 4) = v43;
      v31 = v83;
      _os_log_impl(&dword_20C472000, v36, v37, "Client: Clearing invalidated session %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x20F2FFF90](v39, -1, -1);
      MEMORY[0x20F2FFF90](v38, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v14, v34);
    }

    (*(v81 + 8))(v33, v82);
    sub_20C564190(v31);
  }

  v44 = v78;
  sub_20C59FE7C();
  v46 = v79;
  v45 = v80;
  (*(v79 + 16))(v12, a1, v80);
  v47 = sub_20C5A01BC();
  v48 = sub_20C5A08AC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v84 = v50;
    *v49 = 136315138;
    sub_20C479C60(&qword_27C7C5D48, MEMORY[0x277D50FB0]);
    v51 = sub_20C5A0E6C();
    v53 = v52;
    (*(v46 + 8))(v12, v45);
    v54 = sub_20C479640(v51, v53, &v84);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_20C472000, v47, v48, "Client: Handed off %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x20F2FFF90](v50, -1, -1);
    MEMORY[0x20F2FFF90](v49, -1, -1);

    (*(v81 + 8))(v78, v82);
  }

  else
  {

    (*(v46 + 8))(v12, v45);
    (*(v81 + 8))(v44, v82);
  }

  v55 = v71;
  __swift_project_boxed_opaque_existential_1((v71 + 56), *(v71 + 80));
  v56 = v74;
  sub_20C59F29C();
  v57 = swift_allocObject();
  *(v57 + 16) = v83;
  *(v57 + 24) = v55;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_20C56779C;
  *(v58 + 24) = v57;
  v59 = v75;
  v60 = v73;
  v61 = v77;
  (*(v75 + 16))(v73, v56, v77);
  v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v63 = swift_allocObject();
  (*(v59 + 32))(v63 + v62, v60, v61);
  v64 = (v63 + ((v3 + v62 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v64 = sub_20C4C5A2C;
  v64[1] = v58;

  v65 = v76;
  sub_20C59EA9C();
  (*(v59 + 8))(v56, v61);
  v66 = v70;
  v67 = sub_20C59EABC();
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  v67(sub_20C490920, v68);

  return (*(v69 + 8))(v65, v66);
}

uint64_t sub_20C562A18(uint64_t a1, uint64_t a2, void *a3)
{
  v121 = a3;
  v134 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5840);
  MEMORY[0x28223BE20](v4 - 8);
  v128 = &v117 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CD0);
  MEMORY[0x28223BE20](v6 - 8);
  v127 = &v117 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4688);
  MEMORY[0x28223BE20](v8 - 8);
  v126 = &v117 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CD8);
  MEMORY[0x28223BE20](v10 - 8);
  v125 = &v117 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CE0);
  MEMORY[0x28223BE20](v12 - 8);
  v124 = &v117 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4370);
  MEMORY[0x28223BE20](v14 - 8);
  v123 = &v117 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CE8);
  MEMORY[0x28223BE20](v16 - 8);
  v122 = &v117 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E30);
  MEMORY[0x28223BE20](v18 - 8);
  v133 = &v117 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v20 - 8);
  v132 = &v117 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CF0);
  MEMORY[0x28223BE20](v22 - 8);
  v152 = &v117 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CF8);
  MEMORY[0x28223BE20](v24 - 8);
  v151 = &v117 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4B40);
  MEMORY[0x28223BE20](v26 - 8);
  v150 = &v117 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DA8);
  MEMORY[0x28223BE20](v28 - 8);
  v149 = &v117 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D00);
  MEMORY[0x28223BE20](v30 - 8);
  v148 = &v117 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D08);
  MEMORY[0x28223BE20](v32 - 8);
  v147 = &v117 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DF0);
  MEMORY[0x28223BE20](v34 - 8);
  v146 = &v117 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DE0);
  MEMORY[0x28223BE20](v36 - 8);
  v145 = &v117 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D10);
  MEMORY[0x28223BE20](v38 - 8);
  v144 = &v117 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D18);
  MEMORY[0x28223BE20](v40 - 8);
  v143 = &v117 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D20);
  MEMORY[0x28223BE20](v42 - 8);
  v142 = &v117 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D28);
  MEMORY[0x28223BE20](v44 - 8);
  v141 = &v117 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DC0);
  MEMORY[0x28223BE20](v46 - 8);
  v140 = &v117 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D30);
  MEMORY[0x28223BE20](v48 - 8);
  v139 = &v117 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D38);
  MEMORY[0x28223BE20](v50 - 8);
  v138 = &v117 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D40);
  MEMORY[0x28223BE20](v52 - 8);
  v137 = &v117 - v53;
  v131 = sub_20C59D96C();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v117 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_20C5A01CC();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v117 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D50);
  MEMORY[0x28223BE20](v56 - 8);
  v58 = &v117 - v57;
  v59 = sub_20C5A015C();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v117 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20C59E2EC();
  v135 = *(v63 - 8);
  v136 = v63;
  MEMORY[0x28223BE20](v63);
  v65 = &v117 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a2;
  sub_20C5A000C();
  v153 = v65;
  sub_20C5A014C();
  (*(v60 + 8))(v62, v59);
  sub_20C59EBAC();
  v67 = sub_20C59ED0C();
  LODWORD(v59) = (*(*(v67 - 8) + 48))(v58, 1, v67);
  sub_20C477B50(v58, &qword_27C7C5D50);
  if (v59 == 1)
  {
    v68 = sub_20C59EAFC();
    v70 = v69;
    if (v68 == sub_20C59E2CC() && v70 == v71)
    {
    }

    else
    {
      v72 = sub_20C5A0E9C();

      if ((v72 & 1) == 0)
      {
        return (*(v135 + 8))(v153, v136);
      }
    }

    v73 = v118;
    sub_20C59FE7C();

    v74 = sub_20C5A01BC();
    v75 = sub_20C5A08AC();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v155 = v77;
      *v76 = 136315138;
      v154 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D58);
      sub_20C47C934(&qword_27C7C5D60, &qword_27C7C5D58);
      v78 = sub_20C5A0E6C();
      v80 = sub_20C479640(v78, v79, &v155);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_20C472000, v74, v75, "Client: Requesting termination of pre-session due to handoff %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x20F2FFF90](v77, -1, -1);
      MEMORY[0x20F2FFF90](v76, -1, -1);
    }

    (*(v119 + 8))(v73, v120);
    sub_20C5A072C();
    LOBYTE(v155) = 1;
    v81 = v129;
    sub_20C59D94C();
    v119 = v121[10];
    v120 = v121[11];
    v121 = __swift_project_boxed_opaque_existential_1(v121 + 7, v119);
    v134 = sub_20C59EAEC();
    v82 = sub_20C59DAFC();
    (*(*(v82 - 8) + 56))(v137, 1, 1, v82);
    v83 = sub_20C59E47C();
    (*(*(v83 - 8) + 56))(v138, 1, 1, v83);
    v84 = sub_20C59E67C();
    (*(*(v84 - 8) + 56))(v139, 1, 1, v84);
    v85 = sub_20C59DB1C();
    (*(*(v85 - 8) + 56))(v140, 1, 1, v85);
    v86 = sub_20C59E35C();
    (*(*(v86 - 8) + 56))(v141, 1, 1, v86);
    v87 = sub_20C59DE4C();
    (*(*(v87 - 8) + 56))(v142, 1, 1, v87);
    v88 = sub_20C59DA1C();
    (*(*(v88 - 8) + 56))(v143, 1, 1, v88);
    v89 = sub_20C59E11C();
    (*(*(v89 - 8) + 56))(v144, 1, 1, v89);
    v90 = sub_20C59E7EC();
    (*(*(v90 - 8) + 56))(v145, 1, 1, v90);
    v91 = sub_20C59DF8C();
    (*(*(v91 - 8) + 56))(v146, 1, 1, v91);
    v92 = sub_20C59D73C();
    (*(*(v92 - 8) + 56))(v147, 1, 1, v92);
    v93 = sub_20C59E4AC();
    (*(*(v93 - 8) + 56))(v148, 1, 1, v93);
    v94 = sub_20C59E1EC();
    (*(*(v94 - 8) + 56))(v149, 1, 1, v94);
    v95 = sub_20C59E8FC();
    (*(*(v95 - 8) + 56))(v150, 1, 1, v95);
    v96 = sub_20C59D7EC();
    (*(*(v96 - 8) + 56))(v151, 1, 1, v96);
    v97 = sub_20C59DECC();
    (*(*(v97 - 8) + 56))(v152, 1, 1, v97);
    v98 = sub_20C59ECFC();
    (*(*(v98 - 8) + 56))(v132, 1, 1, v98);
    v99 = sub_20C59E6EC();
    (*(*(v99 - 8) + 56))(v133, 1, 1, v99);
    v100 = sub_20C59D91C();
    v101 = v122;
    (*(*(v100 - 8) + 56))(v122, 1, 1, v100);
    v102 = v130;
    v103 = v123;
    v104 = v81;
    v105 = v131;
    (*(v130 + 16))(v123, v104, v131);
    (*(v102 + 56))(v103, 0, 1, v105);
    v106 = sub_20C59E0DC();
    v107 = v124;
    (*(*(v106 - 8) + 56))(v124, 1, 1, v106);
    v108 = sub_20C59E39C();
    v109 = v125;
    (*(*(v108 - 8) + 56))(v125, 1, 1, v108);
    v110 = sub_20C59E73C();
    v111 = v126;
    (*(*(v110 - 8) + 56))(v126, 1, 1, v110);
    v112 = sub_20C59E7AC();
    v113 = v127;
    (*(*(v112 - 8) + 56))(v127, 1, 1, v112);
    v114 = sub_20C59EBEC();
    v115 = v128;
    (*(*(v114 - 8) + 56))(v128, 1, 1, v114);
    sub_20C59F2AC();

    sub_20C477B50(v115, &qword_27C7C5840);
    sub_20C477B50(v113, &qword_27C7C5CD0);
    sub_20C477B50(v111, &qword_27C7C4688);
    sub_20C477B50(v109, &qword_27C7C5CD8);
    sub_20C477B50(v107, &qword_27C7C5CE0);
    sub_20C477B50(v103, &qword_27C7C4370);
    sub_20C477B50(v101, &qword_27C7C5CE8);
    sub_20C477B50(v133, &qword_27C7C4E30);
    sub_20C477B50(v132, &qword_27C7C5E20);
    sub_20C477B50(v152, &qword_27C7C5CF0);
    sub_20C477B50(v151, &qword_27C7C5CF8);
    sub_20C477B50(v150, &qword_27C7C4B40);
    sub_20C477B50(v149, &qword_27C7C4DA8);
    sub_20C477B50(v148, &qword_27C7C5D00);
    sub_20C477B50(v147, &qword_27C7C5D08);
    sub_20C477B50(v146, &qword_27C7C4DF0);
    sub_20C477B50(v145, &qword_27C7C4DE0);
    sub_20C477B50(v144, &qword_27C7C5D10);
    sub_20C477B50(v143, &qword_27C7C5D18);
    sub_20C477B50(v142, &qword_27C7C5D20);
    sub_20C477B50(v141, &qword_27C7C5D28);
    sub_20C477B50(v140, &qword_27C7C4DC0);
    sub_20C477B50(v139, &qword_27C7C5D30);
    sub_20C477B50(v138, &qword_27C7C5D38);
    sub_20C477B50(v137, &qword_27C7C5D40);
    (*(v130 + 8))(v129, v131);
  }

  return (*(v135 + 8))(v153, v136);
}

uint64_t sub_20C564190(uint64_t a1)
{
  v45 = sub_20C59D4CC();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C5A01CC();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C5A015C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C59E2EC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v44 = a1;
  sub_20C5A000C();
  sub_20C5A014C();
  (*(v7 + 8))(v9, v6);
  sub_20C59FE7C();
  v17 = *(v11 + 16);
  v38 = v16;
  v17(v14, v16, v10);
  v39 = v5;
  v18 = sub_20C5A01BC();
  v19 = sub_20C5A08AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v46 = v21;
    *v20 = 136315138;
    sub_20C479C60(&qword_27C7C5CC8, MEMORY[0x277D51510]);
    v22 = sub_20C5A0E6C();
    v37 = v2;
    v24 = v23;
    v25 = v14;
    v26 = *(v11 + 8);
    v26(v25, v10);
    v27 = sub_20C479640(v22, v24, &v46);
    v2 = v37;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_20C472000, v18, v19, "Client: Leaving group session for %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x20F2FFF90](v21, -1, -1);
    v28 = v20;
    v29 = v26;
    MEMORY[0x20F2FFF90](v28, -1, -1);
  }

  else
  {

    v29 = *(v11 + 8);
    v29(v14, v10);
  }

  (*(v40 + 8))(v39, v42);
  sub_20C59FFFC();
  v30 = v41;
  *(v41 + OBJC_IVAR____TtC12SeymourMedia29MultiUserGroupActivityHandler_state) = 0;

  v31 = v43;
  sub_20C59FFEC();
  v32 = sub_20C59D48C();
  v34 = v33;
  (*(v2 + 8))(v31, v45);
  v29(v38, v10);
  v35 = (v30 + OBJC_IVAR____TtC12SeymourMedia29MultiUserGroupActivityHandler_sessionRejoinIdentifier);
  *v35 = v32;
  v35[1] = v34;
}

uint64_t sub_20C564638(uint64_t a1)
{
  v3 = sub_20C5A01CC();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C59E2EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C5A015C();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + OBJC_IVAR____TtC12SeymourMedia29MultiUserGroupActivityHandler_state);
  if (v15)
  {
    v20[1] = v1;

    sub_20C5A000C();
    sub_20C5A014C();
    (*(v11 + 8))(v14, v10);
    v16 = MEMORY[0x20F2FC780](v9, a1);
    (*(v7 + 8))(v9, v6);
    if (v16)
    {
      sub_20C59FE7C();
      v17 = sub_20C5A01BC();
      v18 = sub_20C5A08AC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_20C472000, v17, v18, "Client: Leaving session because begin activity was cancelled.", v19, 2u);
        MEMORY[0x20F2FFF90](v19, -1, -1);
      }

      (*(v21 + 8))(v5, v22);
      sub_20C564190(v15);
    }
  }

  return result;
}

uint64_t sub_20C564900(uint64_t a1)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C53E0);
  v2 = *(v67 - 8);
  v3 = MEMORY[0x28223BE20](v67);
  v61 = v4;
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v63 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v65 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v68 = &v56 - v10;
  v64 = v11;
  MEMORY[0x28223BE20](v9);
  v66 = &v56 - v12;
  v13 = sub_20C59D4CC();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C5A01CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE7C();
  swift_retain_n();
  v20 = sub_20C5A01BC();
  v21 = sub_20C5A08AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v56 = v13;
    v23 = v22;
    v57 = swift_slowAlloc();
    v71 = v57;
    *v23 = 136315394;
    sub_20C59FFEC();
    v24 = sub_20C59D48C();
    v58 = v16;
    v25 = v2;
    v27 = v26;
    (*(v59 + 8))(v15, v56);
    v28 = sub_20C479640(v24, v27, &v71);
    v2 = v25;

    *(v23 + 4) = v28;
    *(v23 + 12) = 1024;
    v29 = a1;
    LOBYTE(v28) = sub_20C59FFDC();

    *(v23 + 14) = v28 & 1;

    _os_log_impl(&dword_20C472000, v20, v21, "Client: Observed session %s, isLocallyInitiated: %{BOOL}d.", v23, 0x12u);
    v30 = v57;
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x20F2FFF90](v30, -1, -1);
    MEMORY[0x20F2FFF90](v23, -1, -1);

    (*(v17 + 8))(v19, v58);
  }

  else
  {

    v29 = a1;

    (*(v17 + 8))(v19, v16);
  }

  v31 = v60;
  v32 = v29;
  *(v60 + OBJC_IVAR____TtC12SeymourMedia29MultiUserGroupActivityHandler_state) = v29;

  __swift_project_boxed_opaque_existential_1((v31 + 56), *(v31 + 80));
  v33 = v63;
  sub_20C59F29C();
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  v35 = v62;
  v36 = v67;
  (*(v2 + 16))(v62, v33, v67);
  v37 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v38 = (v61 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v2 + 32))(v39 + v37, v35, v36);
  v40 = (v39 + v38);
  *v40 = sub_20C5676C0;
  v40[1] = v34;

  v41 = v68;
  sub_20C59EA9C();
  (*(v2 + 8))(v33, v36);
  v42 = swift_allocObject();
  *(v42 + 16) = v31;
  *(v42 + 24) = v32;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_20C5676F0;
  *(v43 + 24) = v42;
  v44 = v69;
  v45 = v70;
  v46 = v65;
  (*(v69 + 16))(v65, v41, v70);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = (v64 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v44 + 32))(v49 + v47, v46, v45);
  v50 = (v49 + v48);
  *v50 = sub_20C4907C8;
  v50[1] = v43;

  v51 = v66;
  sub_20C59EA9C();
  v52 = *(v44 + 8);
  v52(v41, v45);
  v53 = sub_20C59EABC();
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  v53(sub_20C490920, v54);

  return (v52)(v51, v45);
}

uint64_t sub_20C565044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v159 = a3;
  v160 = a2;
  v158 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5840);
  MEMORY[0x28223BE20](v5 - 8);
  v134 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CD0);
  MEMORY[0x28223BE20](v7 - 8);
  v133 = &v124 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4688);
  MEMORY[0x28223BE20](v9 - 8);
  v132 = &v124 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CD8);
  MEMORY[0x28223BE20](v11 - 8);
  v131 = &v124 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CE0);
  MEMORY[0x28223BE20](v13 - 8);
  v130 = &v124 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4370);
  MEMORY[0x28223BE20](v15 - 8);
  v129 = &v124 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CE8);
  MEMORY[0x28223BE20](v17 - 8);
  v144 = &v124 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E30);
  MEMORY[0x28223BE20](v19 - 8);
  v143 = &v124 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v21 - 8);
  v142 = &v124 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CF0);
  MEMORY[0x28223BE20](v23 - 8);
  v141 = &v124 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CF8);
  MEMORY[0x28223BE20](v25 - 8);
  v157 = &v124 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4B40);
  MEMORY[0x28223BE20](v27 - 8);
  v140 = &v124 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DA8);
  MEMORY[0x28223BE20](v29 - 8);
  v156 = &v124 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D00);
  MEMORY[0x28223BE20](v31 - 8);
  v139 = &v124 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D08);
  MEMORY[0x28223BE20](v33 - 8);
  v155 = &v124 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DF0);
  MEMORY[0x28223BE20](v35 - 8);
  v154 = &v124 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DE0);
  MEMORY[0x28223BE20](v37 - 8);
  v153 = &v124 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D10);
  MEMORY[0x28223BE20](v39 - 8);
  v152 = &v124 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D18);
  MEMORY[0x28223BE20](v41 - 8);
  v151 = &v124 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D20);
  MEMORY[0x28223BE20](v43 - 8);
  v150 = &v124 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D28);
  MEMORY[0x28223BE20](v45 - 8);
  v149 = &v124 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DC0);
  MEMORY[0x28223BE20](v47 - 8);
  v148 = &v124 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D30);
  MEMORY[0x28223BE20](v49 - 8);
  v147 = &v124 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D38);
  MEMORY[0x28223BE20](v51 - 8);
  v146 = &v124 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D40);
  MEMORY[0x28223BE20](v53 - 8);
  v145 = &v124 - v54;
  v138 = sub_20C59D96C();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v124 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_20C59EBBC();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v57 = &v124 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_20C5A01CC();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v124 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20C59E2EC();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v124 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20C5A015C();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = &v124 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = a1;
  v67 = sub_20C59EAFC();
  v69 = v68;
  sub_20C5A000C();
  sub_20C5A014C();
  (*(v64 + 8))(v66, v63);
  v70 = sub_20C59E2CC();
  v72 = v71;
  (*(v60 + 8))(v62, v59);
  if (v67 == v70 && v69 == v72)
  {

LABEL_5:
    v74 = 1;
    goto LABEL_10;
  }

  v73 = sub_20C5A0E9C();

  if (v73)
  {
    goto LABEL_5;
  }

  v75 = v126;
  sub_20C59FE7C();
  v76 = v124;
  v77 = v125;
  (*(v124 + 16))(v57, v135, v125);
  v78 = sub_20C5A01BC();
  v79 = sub_20C5A08AC();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v161 = v81;
    *v80 = 136315138;
    v82 = sub_20C59EAFC();
    v84 = v83;
    (*(v76 + 8))(v57, v77);
    v85 = sub_20C479640(v82, v84, &v161);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_20C472000, v78, v79, "Client: Requesting termination of ongoing session %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x20F2FFF90](v81, -1, -1);
    MEMORY[0x20F2FFF90](v80, -1, -1);
  }

  else
  {

    (*(v76 + 8))(v57, v77);
  }

  (*(v127 + 8))(v75, v128);
  v86 = v159;
  sub_20C5A072C();
  v162 = 1;
  v87 = v136;
  sub_20C59D94C();
  v126 = v86[10];
  v127 = v86[11];
  v128 = __swift_project_boxed_opaque_existential_1(v86 + 7, v126);
  v135 = sub_20C59EAEC();
  v88 = sub_20C59DAFC();
  (*(*(v88 - 8) + 56))(v145, 1, 1, v88);
  v89 = sub_20C59E47C();
  (*(*(v89 - 8) + 56))(v146, 1, 1, v89);
  v90 = sub_20C59E67C();
  (*(*(v90 - 8) + 56))(v147, 1, 1, v90);
  v91 = sub_20C59DB1C();
  (*(*(v91 - 8) + 56))(v148, 1, 1, v91);
  v92 = sub_20C59E35C();
  (*(*(v92 - 8) + 56))(v149, 1, 1, v92);
  v93 = sub_20C59DE4C();
  (*(*(v93 - 8) + 56))(v150, 1, 1, v93);
  v94 = sub_20C59DA1C();
  (*(*(v94 - 8) + 56))(v151, 1, 1, v94);
  v95 = sub_20C59E11C();
  (*(*(v95 - 8) + 56))(v152, 1, 1, v95);
  v96 = sub_20C59E7EC();
  (*(*(v96 - 8) + 56))(v153, 1, 1, v96);
  v97 = sub_20C59DF8C();
  (*(*(v97 - 8) + 56))(v154, 1, 1, v97);
  v98 = sub_20C59D73C();
  (*(*(v98 - 8) + 56))(v155, 1, 1, v98);
  v99 = sub_20C59E4AC();
  (*(*(v99 - 8) + 56))(v139, 1, 1, v99);
  v100 = sub_20C59E1EC();
  (*(*(v100 - 8) + 56))(v156, 1, 1, v100);
  v101 = sub_20C59E8FC();
  (*(*(v101 - 8) + 56))(v140, 1, 1, v101);
  v102 = sub_20C59D7EC();
  (*(*(v102 - 8) + 56))(v157, 1, 1, v102);
  v103 = sub_20C59DECC();
  (*(*(v103 - 8) + 56))(v141, 1, 1, v103);
  v104 = sub_20C59ECFC();
  (*(*(v104 - 8) + 56))(v142, 1, 1, v104);
  v105 = sub_20C59E6EC();
  (*(*(v105 - 8) + 56))(v143, 1, 1, v105);
  v106 = sub_20C59D91C();
  (*(*(v106 - 8) + 56))(v144, 1, 1, v106);
  v107 = v137;
  v108 = v129;
  v109 = v87;
  v110 = v138;
  (*(v137 + 16))(v129, v109, v138);
  (*(v107 + 56))(v108, 0, 1, v110);
  v111 = sub_20C59E0DC();
  v112 = v130;
  (*(*(v111 - 8) + 56))(v130, 1, 1, v111);
  v113 = sub_20C59E39C();
  v114 = v131;
  (*(*(v113 - 8) + 56))(v131, 1, 1, v113);
  v115 = sub_20C59E73C();
  v116 = v132;
  (*(*(v115 - 8) + 56))(v132, 1, 1, v115);
  v117 = sub_20C59E7AC();
  v118 = v133;
  (*(*(v117 - 8) + 56))(v133, 1, 1, v117);
  v119 = sub_20C59EBEC();
  v120 = v134;
  (*(*(v119 - 8) + 56))(v134, 1, 1, v119);
  v121 = v140;
  v122 = v139;
  sub_20C59F2AC();

  sub_20C477B50(v120, &qword_27C7C5840);
  sub_20C477B50(v118, &qword_27C7C5CD0);
  sub_20C477B50(v116, &qword_27C7C4688);
  sub_20C477B50(v114, &qword_27C7C5CD8);
  sub_20C477B50(v112, &qword_27C7C5CE0);
  sub_20C477B50(v108, &qword_27C7C4370);
  sub_20C477B50(v144, &qword_27C7C5CE8);
  sub_20C477B50(v143, &qword_27C7C4E30);
  sub_20C477B50(v142, &qword_27C7C5E20);
  sub_20C477B50(v141, &qword_27C7C5CF0);
  sub_20C477B50(v157, &qword_27C7C5CF8);
  sub_20C477B50(v121, &qword_27C7C4B40);
  sub_20C477B50(v156, &qword_27C7C4DA8);
  sub_20C477B50(v122, &qword_27C7C5D00);
  sub_20C477B50(v155, &qword_27C7C5D08);
  sub_20C477B50(v154, &qword_27C7C4DF0);
  sub_20C477B50(v153, &qword_27C7C4DE0);
  sub_20C477B50(v152, &qword_27C7C5D10);
  sub_20C477B50(v151, &qword_27C7C5D18);
  sub_20C477B50(v150, &qword_27C7C5D20);
  sub_20C477B50(v149, &qword_27C7C5D28);
  sub_20C477B50(v148, &qword_27C7C4DC0);
  sub_20C477B50(v147, &qword_27C7C5D30);
  sub_20C477B50(v146, &qword_27C7C5D38);
  sub_20C477B50(v145, &qword_27C7C5D40);
  (*(v137 + 8))(v136, v138);
  v74 = 0;
LABEL_10:
  sub_20C56679C(v160, v74);
  return sub_20C59EACC();
}

uint64_t sub_20C56679C(uint64_t a1, char a2)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v78 = *(v80 - 8);
  v4 = *(v78 + 64);
  v5 = MEMORY[0x28223BE20](v80);
  v77 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v76 = &v71 - v7;
  MEMORY[0x28223BE20](v6);
  v79 = &v71 - v8;
  v9 = sub_20C59FCFC();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C5A015C();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C59E2EC();
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x28223BE20](v14);
  v88 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C5A01CC();
  v83 = *(v16 - 8);
  v84 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v71 - v20;
  v22 = sub_20C59D4CC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
LABEL_2:
    sub_20C59FE7C();
    v26 = sub_20C5A01BC();
    v27 = sub_20C5A08AC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = a1;
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20C472000, v26, v27, "Client: Request to join locally-initiated activity", v29, 2u);
      v30 = v29;
      a1 = v28;
      MEMORY[0x20F2FFF90](v30, -1, -1);
    }

    (*(v83 + 8))(v19, v84);
    sub_20C5A000C();
    sub_20C5A014C();
    (*(v85 + 8))(v13, v86);
    v31 = v87;
    v32 = a1;
    __swift_project_boxed_opaque_existential_1((v87 + 16), *(v87 + 40));
    v33 = v76;
    sub_20C59F30C();
    sub_20C477580(v31 + 16, v89);
    v34 = swift_allocObject();
    sub_20C4780E8(v89, v34 + 16);
    v35 = swift_allocObject();
    *(v35 + 16) = sub_20C56761C;
    *(v35 + 24) = v34;
    v37 = v77;
    v36 = v78;
    v38 = v80;
    (*(v78 + 16))(v77, v33, v80);
    v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v40 = swift_allocObject();
    (*(v36 + 32))(v40 + v39, v37, v38);
    v41 = (v40 + ((v4 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v41 = sub_20C567668;
    v41[1] = v35;
    v42 = v79;
    sub_20C59EA9C();
    v43 = *(v36 + 8);
    v43(v33, v38);

    v44 = sub_20C59EABC();
    v45 = swift_allocObject();
    *(v45 + 16) = sub_20C5676B8;
    *(v45 + 24) = v32;

    v44(sub_20C4907D4, v45);

    v43(v42, v38);
    return (*(v81 + 8))(v88, v82);
  }

  if (sub_20C59FFDC())
  {
    v71 = v21;
    v47 = a1;
    v49 = *(v87 + OBJC_IVAR____TtC12SeymourMedia29MultiUserGroupActivityHandler_sessionRejoinIdentifier);
    v48 = *(v87 + OBJC_IVAR____TtC12SeymourMedia29MultiUserGroupActivityHandler_sessionRejoinIdentifier + 8);

    v72 = v47;
    sub_20C59FFEC();
    v50 = sub_20C59D48C();
    v52 = v51;
    (*(v23 + 8))(v25, v22);
    if (!v48)
    {

      a1 = v72;
      goto LABEL_2;
    }

    if (v49 == v50 && v48 == v52)
    {

      v21 = v71;
    }

    else
    {
      v53 = sub_20C5A0E9C();

      a1 = v72;
      v21 = v71;
      if ((v53 & 1) == 0)
      {
        goto LABEL_2;
      }
    }
  }

  sub_20C59FE7C();

  v54 = sub_20C5A01BC();
  v55 = sub_20C5A08AC();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v79 = v56;
    v80 = swift_slowAlloc();
    *&v89[0] = v80;
    *v56 = 136315138;
    sub_20C5A000C();
    v57 = v88;
    sub_20C5A014C();
    v59 = v85;
    v58 = v86;
    (*(v85 + 8))(v13, v86);
    sub_20C479C60(&qword_27C7C5CC8, MEMORY[0x277D51510]);
    v60 = v82;
    v61 = sub_20C5A0E6C();
    LODWORD(v78) = v55;
    v62 = v61;
    v64 = v63;
    (*(v81 + 8))(v57, v60);
    v65 = sub_20C479640(v62, v64, v89);

    v66 = v79;
    *(v79 + 4) = v65;
    v67 = v66;
    _os_log_impl(&dword_20C472000, v54, v78, "Client: Request navigation to pre-session for remotely-initiated %s", v66, 0xCu);
    v68 = v80;
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x20F2FFF90](v68, -1, -1);
    MEMORY[0x20F2FFF90](v67, -1, -1);

    (*(v83 + 8))(v21, v84);
  }

  else
  {

    (*(v83 + 8))(v21, v84);
    v59 = v85;
    v58 = v86;
  }

  swift_getObjectType();
  sub_20C5A000C();
  sub_20C5A014C();
  (*(v59 + 8))(v13, v58);
  v69 = v73;
  sub_20C59FCEC();
  v70 = v75;
  sub_20C59F5FC();
  return (*(v74 + 8))(v69, v70);
}

uint64_t sub_20C567178(uint64_t a1)
{
  v2 = sub_20C5A015C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C59E2EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C5A01CC();
  result = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v33 = v3;
    v35 = v7;
    v36 = v12;
    v15 = *a1;
    v16 = *a1;
    sub_20C59FE7C();
    sub_20C4F88FC(v15, 1);

    v17 = sub_20C5A01BC();
    v18 = sub_20C5A089C();

    sub_20C49B78C(v15, 1);
    v34 = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = v10;
      v20 = v19;
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315394;
      v31 = v17;
      sub_20C5A000C();
      sub_20C5A014C();
      (*(v33 + 8))(v5, v2);
      sub_20C479C60(&qword_27C7C5CC8, MEMORY[0x277D51510]);
      v22 = sub_20C5A0E6C();
      v24 = v23;
      (*(v35 + 8))(v9, v6);
      v25 = sub_20C479640(v22, v24, &v39);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v26 = MEMORY[0x20F2FF3F0](v37, v38);
      v28 = sub_20C479640(v26, v27, &v39);

      *(v20 + 14) = v28;
      v29 = v31;
      _os_log_impl(&dword_20C472000, v31, v34, "Client: Failed to join activity %s with error: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v21, -1, -1);
      MEMORY[0x20F2FFF90](v20, -1, -1);

      sub_20C49B78C(v15, 1);
      return (*(v36 + 8))(v14, v32);
    }

    else
    {
      sub_20C49B78C(v15, 1);

      return (*(v36 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t type metadata accessor for MultiUserGroupActivityHandler()
{
  result = qword_2810F45E0;
  if (!qword_2810F45E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_20C5676F0(void *a1)
{
  sub_20C56679C(*(v1 + 24), 0);
  swift_willThrow();
  return a1;
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C5677B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t RemoteCommandTriggered.init(command:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static RemoteCommandTriggered.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C5679D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *i;
      v6 = *v3;
      if (v5 < 0)
      {
        if ((v6 & 0x80000000) == 0)
        {
          return 0;
        }
      }

      else if (v6 < 0)
      {
        return 0;
      }

      if (*(v3 - 2) != *(i - 2))
      {
        break;
      }

      if (v5)
      {
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((v6 & 1) != 0 || *(i - 1) != *(v3 - 1))
        {
          return result;
        }
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20C567A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_20C5A0E9C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20C567B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = a1 + v5;
      v7 = *(a1 + v5 + 32);
      v8 = *(a1 + v5 + 40);
      v9 = a2 + v5;
      v10 = *(a2 + v5 + 32);
      v11 = *(a2 + v5 + 40);
      v12 = *(a2 + v5 + 80);
      if (*(a1 + v5 + 80))
      {
        if (*(a1 + v5 + 80) == 1)
        {
          if (v12 != 1)
          {
            return 0;
          }
        }

        else if (v12 != 2)
        {
          return 0;
        }

        if (v7 != v10 || v8 != v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (*(a2 + v5 + 80))
        {
          return 0;
        }

        v14 = *(v6 + 48);
        v13 = *(v6 + 56);
        v15 = *(v6 + 64);
        v16 = *(v6 + 72);
        v18 = *(v9 + 48);
        v17 = *(v9 + 56);
        v19 = *(v9 + 64);
        v20 = *(v9 + 72);
        if (v7 == v10 && v8 == v11)
        {
          if (v14 != v18 || v13 != v17)
          {
            return 0;
          }
        }

        else
        {
          v22 = sub_20C5A0E9C();
          result = 0;
          if ((v22 & 1) == 0)
          {
            return result;
          }

          if (v14 != v18 || v13 != v17)
          {
            return result;
          }
        }

        if (v15 != v19 || v16 != v20)
        {
LABEL_5:
          if ((sub_20C5A0E9C() & 1) == 0)
          {
            return 0;
          }
        }
      }

      v5 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_20C567C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C59D37C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for MarketingAction();
  v8 = MEMORY[0x28223BE20](v63);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = (&v53 - v11);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5878);
  MEMORY[0x28223BE20](v64);
  v13 = &v53 - v12;
  v62 = type metadata accessor for MarketingActionItem();
  v14 = MEMORY[0x28223BE20](v62);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = &v53 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v54 = v7;
  v55 = v10;
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v53 = (v5 + 32);
  v56 = (v5 + 8);
  v57 = v4;
  v59 = *(v17 + 72);
  v24 = v62;
  while (1)
  {
    sub_20C497F58(v22, v19, type metadata accessor for MarketingActionItem);
    v61 = v22;
    sub_20C497F58(v23, v16, type metadata accessor for MarketingActionItem);
    v26 = *(v64 + 48);
    sub_20C497F58(v19, v13, type metadata accessor for MarketingAction);
    sub_20C497F58(v16, &v13[v26], type metadata accessor for MarketingAction);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v27 = v55;
    sub_20C497F58(v13, v55, type metadata accessor for MarketingAction);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*v56)(v27, v57);
      goto LABEL_40;
    }

    v28 = v54;
    v29 = &v13[v26];
    v30 = v57;
    (*v53)(v54, v29, v57);
    v58 = sub_20C59D31C();
    v31 = *v56;
    (*v56)(v28, v30);
    v31(v27, v30);
    v24 = v62;
    if ((v58 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_12:
    sub_20C568570(v13, type metadata accessor for MarketingAction);
    v36 = v24[5];
    v37 = &v19[v36];
    v38 = *&v19[v36 + 8];
    v39 = &v16[v36];
    v40 = *(v39 + 1);
    if (v38)
    {
      if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_20C5A0E9C() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v40)
    {
      goto LABEL_41;
    }

    v41 = v24[6];
    v42 = &v19[v41];
    v43 = *&v19[v41 + 8];
    v44 = &v16[v41];
    v45 = *(v44 + 1);
    if (v43)
    {
      if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_20C5A0E9C() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v45)
    {
      goto LABEL_41;
    }

    v46 = v24[7];
    v47 = *&v19[v46];
    v48 = *&v19[v46 + 8];
    v49 = &v16[v46];
    if ((v47 != *v49 || v48 != *(v49 + 1)) && (sub_20C5A0E9C() & 1) == 0)
    {
      goto LABEL_41;
    }

    v50 = v24[8];
    v51 = v19[v50];
    v52 = v16[v50];
    if (v19[v50] < 0)
    {
      if ((v52 & 0x80) == 0 || ((v52 ^ v51) & 0x7F) != 0)
      {
        goto LABEL_41;
      }

      sub_20C568570(v16, type metadata accessor for MarketingActionItem);
      sub_20C568570(v19, type metadata accessor for MarketingActionItem);
    }

    else
    {
      if ((v52 & 0x80) != 0)
      {
        goto LABEL_41;
      }

      sub_20C568570(v16, type metadata accessor for MarketingActionItem);
      sub_20C568570(v19, type metadata accessor for MarketingActionItem);
      if (v51 != v52)
      {
        return 0;
      }
    }

    v23 += v59;
    v22 = v61 + v59;
    result = 1;
    if (!--v20)
    {
      return result;
    }
  }

  v32 = v60;
  sub_20C497F58(v13, v60, type metadata accessor for MarketingAction);
  v33 = *v32;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = *&v13[v26];
    sub_20C5685D0();
    v35 = sub_20C5A09BC();

    if ((v35 & 1) == 0)
    {
LABEL_37:
      sub_20C568570(v13, type metadata accessor for MarketingAction);
      goto LABEL_41;
    }

    goto LABEL_12;
  }

LABEL_40:
  sub_20C568508(v13);
LABEL_41:
  sub_20C568570(v16, type metadata accessor for MarketingActionItem);
  sub_20C568570(v19, type metadata accessor for MarketingActionItem);
  return 0;
}

uint64_t sub_20C5682B8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_20C5A0FBC();
  sub_20C5A0FDC();
  if (v1)
  {
    sub_20C5A049C();
  }

  sub_20C497764(v4, v2);
  return sub_20C5A0FFC();
}

uint64_t sub_20C568338(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_20C5A0FDC();
    sub_20C5A049C();
  }

  else
  {
    sub_20C5A0FDC();
  }

  return sub_20C497764(a1, v3);
}

uint64_t sub_20C5683B8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_20C5A0FBC();
  sub_20C5A0FDC();
  if (v1)
  {
    sub_20C5A049C();
  }

  sub_20C497764(v4, v2);
  return sub_20C5A0FFC();
}

uint64_t sub_20C568434(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_20C5A0E9C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_20C567B00(v4, v6);
}

unint64_t sub_20C5684B4()
{
  result = qword_27C7C5D68;
  if (!qword_27C7C5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5D68);
  }

  return result;
}

uint64_t sub_20C568508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C568570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20C5685D0()
{
  result = qword_27C7C4568;
  if (!qword_27C7C4568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C4568);
  }

  return result;
}

id sub_20C56865C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartWorkoutIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C5686D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  v71 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v61 - v10;
  MEMORY[0x28223BE20](v11);
  v66 = &v61 - v12;
  MEMORY[0x28223BE20](v13);
  v67 = &v61 - v14;
  v15 = sub_20C5A01CC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDEC();
  v19 = a1;
  v20 = sub_20C5A01BC();
  v21 = sub_20C5A08AC();
  v22 = os_log_type_enabled(v20, v21);
  v68 = v19;
  if (v22)
  {
    LODWORD(v62) = v21;
    v63 = v15;
    v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v74 = v24;
    *v23 = 134349314;
    *(v23 + 4) = [v19 sequenceLabel];

    *(v23 + 12) = 2082;
    v25 = [v19 associatedItems];
    v64 = v4;
    if (v25)
    {
      v26 = v25;
      sub_20C56A968();
      v27 = sub_20C5A061C();
    }

    else
    {
      v27 = 0;
    }

    v73 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5DE8);
    v28 = sub_20C5A0A3C();
    v30 = v29;

    v31 = sub_20C479640(v28, v30, &v74);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_20C472000, v20, v62, "Handling start workout intent with sequence: %{public}ld associated items: %{public}s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x20F2FFF90](v24, -1, -1);
    MEMORY[0x20F2FFF90](v23, -1, -1);

    (*(v16 + 8))(v18, v63);
    v8 = v65;
    v19 = v68;
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  v32 = v69;
  sub_20C568D6C(v69);
  v33 = swift_allocObject();
  v35 = v70;
  v34 = v71;
  v33[2] = v19;
  v33[3] = v35;
  v33[4] = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_20C56A8B4;
  *(v36 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_20C56A8D4;
  *(v37 + 24) = v36;
  v38 = v72;
  v39 = *(v72 + 16);
  v64 = v72 + 16;
  v65 = v39;
  v40 = v6;
  (v39)(v8, v32, v6);
  v41 = v38;
  v42 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v63 = v42;
  v43 = (v7 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v40;
  v62 = *(v41 + 32);
  v62(v44 + v42, v8, v40);
  v46 = (v44 + v43);
  v47 = v43;
  *v46 = sub_20C53EAF8;
  v46[1] = v37;
  v48 = v68;
  v49 = v71;

  v50 = v66;
  sub_20C59EA9C();
  v68 = *(v41 + 8);
  v72 = v41 + 8;
  v51 = v69;
  (v68)(v69, v45);
  v52 = swift_allocObject();
  *(v52 + 16) = v70;
  *(v52 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_20C56A924;
  *(v53 + 24) = v52;
  (v65)(v51, v50, v45);
  v54 = swift_allocObject();
  v62(v54 + v63, v51, v45);
  v55 = (v54 + v47);
  *v55 = sub_20C4907C8;
  v55[1] = v53;

  v56 = v67;
  sub_20C59EA9C();
  v57 = v68;
  (v68)(v50, v45);
  v58 = sub_20C59EABC();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v58(sub_20C4907D4, v59);

  return v57(v56, v45);
}

uint64_t sub_20C568D6C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C53E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v25 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12SeymourMedia25StartWorkoutIntentHandler_sessionClient), *(v1 + OBJC_IVAR____TtC12SeymourMedia25StartWorkoutIntentHandler_sessionClient + 24));
  sub_20C59F29C();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20C56A400;
  *(v13 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v5, v2);
  v16 = (v15 + ((v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_20C4C5A2C;
  v16[1] = v13;
  v17 = v25;
  sub_20C59EA9C();
  (*(v3 + 8))(v8, v2);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20C56A730;
  *(v18 + 24) = 0;
  v20 = v26;
  v19 = v27;
  (*(v9 + 16))(v26, v17, v27);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v20, v19);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20C490914;
  v23[1] = v18;
  sub_20C59EA9C();
  return (*(v9 + 8))(v17, v19);
}

id sub_20C569120(void *a1, void (*a2)(void), uint64_t a3)
{
  v119 = a3;
  v120 = a2;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v117 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v116 = &v115 - v8;
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - v10;
  MEMORY[0x28223BE20](v11);
  v121 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v118 = &v115 - v14;
  v15 = sub_20C59E33C();
  v16 = *(v15 - 8);
  v125 = v15;
  v126 = v16;
  MEMORY[0x28223BE20](v15);
  v128 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5DF8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v115 - v19;
  v21 = sub_20C59E86C();
  v132 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v136 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v130 = &v115 - v25;
  v123 = a1;
  v26 = [a1 associatedItems];
  if (v26)
  {
    v27 = v26;
    sub_20C56A968();
    v28 = sub_20C5A061C();

    if (!(v28 >> 62))
    {
LABEL_3:
      result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  result = sub_20C5A0B3C();
LABEL_4:
  v127 = v5;
  v124 = v4;
  v131 = v21;
  if (result)
  {
    v30 = 0;
    v134 = v28 & 0xFFFFFFFFFFFFFF8;
    v135 = v28 & 0xC000000000000001;
    v31 = (v132 + 48);
    v32 = (v132 + 32);
    v137 = MEMORY[0x277D84F90];
    v133 = result;
    v129 = v28;
    while (1)
    {
      if (v135)
      {
        result = MEMORY[0x20F2FF0E0](v30, v28);
      }

      else
      {
        if (v30 >= *(v134 + 16))
        {
          goto LABEL_51;
        }

        result = *(v28 + 8 * v30 + 32);
      }

      v33 = result;
      v34 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v142[0] = result;
      v35 = v138;
      sub_20C569F40(v142, v20);
      v138 = v35;

      if ((*v31)(v20, 1, v21) == 1)
      {
        result = sub_20C477B50(v20, &qword_27C7C5DF8);
      }

      else
      {
        v36 = *v32;
        v37 = v130;
        (*v32)(v130, v20, v21);
        v36(v136, v37, v21);
        v38 = v137;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_20C4ECF30(0, v38[2] + 1, 1, v38);
        }

        v39 = v38;
        v40 = v38[2];
        v137 = v39;
        v41 = v39[3];
        if (v40 >= v41 >> 1)
        {
          v137 = sub_20C4ECF30(v41 > 1, v40 + 1, 1, v137);
        }

        v42 = v136;
        v43 = v137;
        v137[2] = v40 + 1;
        v44 = v43 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v40;
        v21 = v131;
        result = (v36)(v44, v42, v131);
        v28 = v129;
      }

      ++v30;
      if (v34 == v133)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {
    v137 = MEMORY[0x277D84F90];
LABEL_22:

    v45 = v128;
    v46 = v138;
    sub_20C5A062C();
    if (v46)
    {
    }

    else
    {
      sub_20C56AAA4(&qword_27C7C5E00, MEMORY[0x277D516E0]);
      v47 = v125;
      v48 = sub_20C5A00EC();
      v138 = v49;
      v134 = v48;
      (*(v126 + 8))(v45, v47);
      v50 = [v123 sequenceLabel];
      v51 = 0x10002u >> (8 * v50);
      if (v50 >= 3)
      {
        v51 = 2;
      }

      LODWORD(v135) = v51;
      v52 = v118;
      sub_20C59FDEC();
      v53 = sub_20C5A01BC();
      v54 = sub_20C5A08AC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_20C472000, v53, v54, "Sending start workout user activity to app", v55, 2u);
        MEMORY[0x20F2FFF90](v55, -1, -1);
      }

      v56 = v127 + 8;
      v57 = *(v127 + 8);
      v58 = v52;
      v59 = v124;
      v57(v58, v124);
      v60 = v121;
      sub_20C59FDEC();
      v61 = v137;

      v62 = sub_20C5A01BC();
      v63 = sub_20C5A08AC();

      v64 = os_log_type_enabled(v62, v63);
      v127 = v56;
      v136 = v57;
      if (v64)
      {
        v65 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v142[0] = v133;
        *v65 = 136446210;
        v66 = MEMORY[0x20F2FEAF0](v61, v131);
        v68 = v67;

        v69 = sub_20C479640(v66, v68, v142);
        v57 = v136;

        *(v65 + 4) = v69;
        _os_log_impl(&dword_20C472000, v62, v63, "Candidates: %{public}s", v65, 0xCu);
        v70 = v133;
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        v59 = v124;
        MEMORY[0x20F2FFF90](v70, -1, -1);
        MEMORY[0x20F2FFF90](v65, -1, -1);

        v71 = v121;
      }

      else
      {

        v71 = v60;
      }

      v57(v71, v59);
      v72 = v122;
      sub_20C59FDEC();
      v73 = sub_20C5A01BC();
      v74 = sub_20C5A08AC();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v142[0] = v76;
        *v75 = 136446210;
        v77 = sub_20C59E84C();
        v79 = sub_20C479640(v77, v78, v142);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_20C472000, v73, v74, "Personalization method: %{public}s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        MEMORY[0x20F2FFF90](v76, -1, -1);
        MEMORY[0x20F2FFF90](v75, -1, -1);

        (v136)(v122, v124);
      }

      else
      {

        v57(v72, v59);
      }

      v80 = v134;
      v81 = v138;
      v82 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v83 = sub_20C5A036C();
      v84 = [v82 initWithActivityType_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C5A84B0;
      strcpy(v142, "candidateData");
      HIWORD(v142[1]) = -4864;
      v86 = MEMORY[0x277D837D0];
      sub_20C5A0B9C();
      *(inited + 96) = MEMORY[0x277CC9318];
      *(inited + 72) = v80;
      *(inited + 80) = v81;
      v142[0] = 0xD000000000000015;
      v142[1] = 0x800000020C5ABC20;
      sub_20C4BFD7C(v80, v81);
      sub_20C5A0B9C();
      v87 = sub_20C59E84C();
      *(inited + 168) = v86;
      *(inited + 144) = v87;
      *(inited + 152) = v88;
      sub_20C589CB4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E10);
      swift_arrayDestroy();
      v89 = sub_20C5A02AC();

      [v84 setUserInfo_];

      v90 = [v123 workoutName];
      if (v90)
      {
        v91 = v90;
        v92 = v90;
        v93 = sub_20C49D08C(v92);
        if (v94)
        {
        }

        else
        {
          v135 = v93;
          sub_20C59FDEC();
          v95 = v92;
          v96 = sub_20C5A01BC();
          v97 = sub_20C5A08AC();
          v137 = v95;

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            *v98 = 138543362;
            v100 = v137;
            *(v98 + 4) = v137;
            *v99 = v91;
            v101 = v100;
            _os_log_impl(&dword_20C472000, v96, v97, "Workout name: %{public}@", v98, 0xCu);
            sub_20C477B50(v99, &qword_27C7C60F0);
            MEMORY[0x20F2FFF90](v99, -1, -1);
            v102 = v98;
            v80 = v134;
            MEMORY[0x20F2FFF90](v102, -1, -1);
          }

          v103 = v124;
          (v136)(v116, v124);
          sub_20C59FDEC();
          v104 = sub_20C5A01BC();
          v105 = sub_20C5A08AC();
          v106 = os_log_type_enabled(v104, v105);
          v107 = v135;
          if (v106)
          {
            v108 = swift_slowAlloc();
            *v108 = 134349056;
            *(v108 + 4) = v107;
            _os_log_impl(&dword_20C472000, v104, v105, "HK activity type: %{public}lu", v108, 0xCu);
            MEMORY[0x20F2FFF90](v108, -1, -1);
          }

          (v136)(v117, v103);
          v109 = [v84 userInfo];
          if (v109)
          {
            v110 = v109;
            v111 = sub_20C5A02BC();

            *&v140 = 0xD000000000000015;
            *(&v140 + 1) = 0x800000020C5ABC40;
            sub_20C5A0B9C();
            v141 = MEMORY[0x277D83E88];
            *&v140 = v107;
            sub_20C4947E4(&v140, v139);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v143 = v111;
            sub_20C494448(v139, v142, isUniquelyReferenced_nonNull_native);
            sub_20C4914D8(v142);
            if (v143)
            {
              v113 = sub_20C5A02AC();
            }

            else
            {
              v113 = 0;
            }

            [v84 setUserInfo_];
          }

          else
          {
            [v84 setUserInfo_];
          }
        }
      }

      v114 = [objc_allocWithZone(MEMORY[0x277CD41E0]) initWithCode:2 userActivity:v84];
      v120();

      return sub_20C4A7C7C(v80, v138);
    }
  }

  return result;
}

uint64_t sub_20C569F40@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [v10 itemID];
  if (v11)
  {
    v12 = v11;
    sub_20C5A039C();

    [v10 contentRating];
    sub_20C59E85C();
    v13 = sub_20C59E86C();
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }

  else
  {
    sub_20C59FDEC();
    v15 = v10;
    v16 = sub_20C5A01BC();
    v17 = sub_20C5A089C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23[1] = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      *(v19 + 4) = v15;
      *v20 = v15;
      v21 = v15;
      _os_log_impl(&dword_20C472000, v16, v17, "Candidate was missing an identifier: %{public}@", v19, 0xCu);
      sub_20C477B50(v20, &qword_27C7C60F0);
      MEMORY[0x20F2FFF90](v20, -1, -1);
      MEMORY[0x20F2FFF90](v19, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v22 = sub_20C59E86C();
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }
}

void sub_20C56A1D8(uint64_t a1, void (*a2)(void))
{
  v3 = sub_20C5A01CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDEC();
  v7 = sub_20C5A01BC();
  v8 = sub_20C5A089C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20C472000, v7, v8, "Session already in progress, rejecting start workout intent", v9, 2u);
    MEMORY[0x20F2FFF90](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v10 = [objc_allocWithZone(MEMORY[0x277CD41E0]) initWithCode:5 userActivity:0];
  a2();
}

uint64_t sub_20C56A400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_20C59ECFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4370);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  sub_20C59EB0C();
  v10 = sub_20C59D96C();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  result = sub_20C477B50(v9, &qword_27C7C4370);
  if (v11 == 1)
  {
    sub_20C59EB9C();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      return sub_20C477B50(v2, &qword_27C7C5E20);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      if ((sub_20C59ECDC() & 0x100000000) != 0)
      {
        v13 = sub_20C59ECCC();
        v14 = sub_20C59ECCC();
        result = (*(v4 + 8))(v6, v3);
        if (v13 != v14)
        {
          v15 = sub_20C59DACC();
          sub_20C56AAA4(&qword_27C7C5E18, MEMORY[0x277D503C8]);
          swift_allocError();
          (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D50380], v15);
          return swift_willThrow();
        }
      }

      else
      {
        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

id sub_20C56A730(void *a1)
{
  v2 = sub_20C59DACC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v6 = sub_20C5A0F0C();
  (*(v3 + 104))(v5, *MEMORY[0x277D50358], v2);
  sub_20C56AAA4(&qword_27C7C5E18, MEMORY[0x277D503C8]);
  v7 = sub_20C5A0F0C();
  result = (*(v3 + 8))(v5, v2);
  if (v6 != v7)
  {
    swift_willThrow();
    return a1;
  }

  return result;
}

unint64_t sub_20C56A968()
{
  result = qword_27C7C5DF0;
  if (!qword_27C7C5DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C5DF0);
  }

  return result;
}

uint64_t sub_20C56A9DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20C56AAA4(unint64_t *a1, void (*a2)(uint64_t))
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

id static UIColor.highlightedTextTag.getter()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  return v1;
}

id static UIColor.nonHighlightedTextTag.getter()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

uint64_t dispatch thunk of ServiceSubscriptionCaching.refresh()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C47FCF0;

  return v7(a1, a2);
}

uint64_t static MediaPlayerActivated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AssetClientProtocol.queryPreferredURL(remoteURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v24[0] = sub_20C59D37C();
  v5 = *(v24[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24[0]);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  sub_20C59F17C();
  v15 = a1;
  v16 = v24[0];
  (*(v5 + 16))(v7, v15, v24[0]);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v7, v16);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20C56B024;
  *(v19 + 24) = v18;
  (*(v9 + 16))(v11, v14, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v20, v11, v8);
  v22 = (v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_20C56B094;
  v22[1] = v19;
  sub_20C59EA9C();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_20C56B09C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49D8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C50360C(a1, a2, v2 + v6, v8, v9);
}

uint64_t ServiceSubscriptionCache.init(eventHub:serviceSubscriptionClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20C478778(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_20C56B18C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_20C5A06FC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_20C481894(a1, v7);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  sub_20C4817EC(v7, v13 + v12);

  sub_20C58C49C(0, 0, v10, &unk_20C5A9C00, v13);
}

uint64_t sub_20C56B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20C56B364, a4, 0);
}

uint64_t sub_20C56B364()
{
  sub_20C56B3C4(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C56B3C4(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E28);
  MEMORY[0x28223BE20](v55);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - v5;
  v7 = sub_20C59D4CC();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ServiceSubscriptionCache.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C5A01CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  sub_20C59FDDC();
  sub_20C5A01AC();
  v60 = *(v13 + 8);
  v61 = v12;
  v60(v24, v12);
  v25 = OBJC_IVAR____TtC12SeymourMedia24ServiceSubscriptionCache_state;
  swift_beginAccess();
  sub_20C47DBA0(v2 + v25, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E38);
      (*(v58 + 32))(v56, &v11[*(v27 + 48)], v59);
      sub_20C59FDDC();
      sub_20C481894(v57, v6);
      v28 = sub_20C5A01BC();
      v29 = sub_20C5A089C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v63 = v31;
        *v30 = 136446210;
        sub_20C481894(v6, v54);
        v32 = sub_20C5A041C();
        v34 = v33;
        sub_20C477B50(v6, &qword_27C7C5E28);
        v35 = sub_20C479640(v32, v34, &v63);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_20C472000, v28, v29, "Initial cache fill failed with result: %{public}s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x20F2FFF90](v31, -1, -1);
        MEMORY[0x20F2FFF90](v30, -1, -1);
      }

      else
      {

        sub_20C477B50(v6, &qword_27C7C5E28);
      }

      v60(v21, v61);
      v52 = v56;
      sub_20C56BB00(v57, v56);
      return (*(v58 + 8))(v52, v59);
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E30);

    (*(v58 + 8))(&v11[*(v44 + 64)], v59);
    sub_20C477B50(v11, &qword_27C7C5E28);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_10:
    sub_20C59FDDC();

    v45 = sub_20C5A01BC();
    v46 = sub_20C5A089C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v2;
      v63 = v48;
      *v47 = 141558274;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2080;
      v49 = sub_20C5A041C();
      v51 = sub_20C479640(v49, v50, &v63);

      *(v47 + 14) = v51;
      _os_log_impl(&dword_20C472000, v45, v46, "[%{mask.hash}s] Already filling the cache", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x20F2FFF90](v48, -1, -1);
      MEMORY[0x20F2FFF90](v47, -1, -1);
    }

    return (v60)(v18, v61);
  }

  sub_20C59FDDC();

  v36 = sub_20C5A01BC();
  v37 = sub_20C5A089C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62 = v2;
    v63 = v39;
    *v38 = 141558274;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2080;
    v40 = sub_20C5A041C();
    v42 = sub_20C479640(v40, v41, &v63);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_20C472000, v36, v37, "[%{mask.hash}s] Already filled the cache", v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x20F2FFF90](v39, -1, -1);
    MEMORY[0x20F2FFF90](v38, -1, -1);
  }

  v60(v15, v61);
  return sub_20C480D1C(v11);
}

uint64_t sub_20C56BB00(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v3 = v2;
  v161 = a2;
  v173 = a1;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E48);
  MEMORY[0x28223BE20](v154);
  v155 = &v144 - v4;
  v169 = sub_20C59E46C();
  v157 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v146 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v145 = &v144 - v7;
  MEMORY[0x28223BE20](v8);
  v168 = &v144 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4788);
  v156 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v170 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v171 = &v144 - v13;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E28);
  MEMORY[0x28223BE20](v172);
  v153 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v144 - v16);
  MEMORY[0x28223BE20](v18);
  v150 = &v144 - v19;
  MEMORY[0x28223BE20](v20);
  v160 = &v144 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v144 - v23);
  MEMORY[0x28223BE20](v25);
  v152 = &v144 - v26;
  MEMORY[0x28223BE20](v27);
  v151 = &v144 - v28;
  v29 = sub_20C59D4CC();
  v30 = *(v29 - 8);
  v166 = v29;
  v167 = v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v162 = &v144 - v34;
  v35 = type metadata accessor for ServiceSubscriptionCache.State(0);
  MEMORY[0x28223BE20](v35);
  v159 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v144 - v38;
  v40 = sub_20C5A01CC();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v148 = &v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v149 = &v144 - v44;
  MEMORY[0x28223BE20](v45);
  v147 = &v144 - v46;
  MEMORY[0x28223BE20](v47);
  v158 = &v144 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v144 - v50;
  sub_20C59FDDC();
  sub_20C5A01AC();
  v52 = *(v41 + 8);
  v163 = v40;
  v164 = v41 + 8;
  v53 = v40;
  v54 = v52;
  v52(v51, v53);
  v55 = OBJC_IVAR____TtC12SeymourMedia24ServiceSubscriptionCache_state;
  swift_beginAccess();
  v165 = v3;
  sub_20C47DBA0(v3 + v55, v39);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      v57 = *v39;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E38);
      (*(v167 + 32))(v162, &v39[*(v58 + 48)], v166);
      if (sub_20C59D4AC())
      {
        sub_20C59FDDC();
        v59 = v151;
        sub_20C481894(v173, v151);
        v60 = v165;

        v61 = sub_20C5A01BC();
        v62 = sub_20C5A08AC();

        LODWORD(v160) = v62;
        v63 = os_log_type_enabled(v61, v62);
        v170 = v57;
        if (v63)
        {
          v64 = swift_slowAlloc();
          v155 = v35;
          v65 = v64;
          v66 = swift_slowAlloc();
          v161 = v54;
          v67 = v66;
          v174[0] = v66;
          *v65 = 141558786;
          *(v65 + 4) = 1752392040;
          *(v65 + 12) = 2080;
          v175 = v60;
          v68 = sub_20C5A041C();
          v69 = v59;
          v71 = sub_20C479640(v68, v70, v174);

          *(v65 + 14) = v71;
          *(v65 + 22) = 2160;
          *(v65 + 24) = 1752392040;
          *(v65 + 32) = 2080;
          sub_20C481894(v59, v152);
          v57 = v170;
          v72 = sub_20C5A041C();
          v74 = v73;
          sub_20C477B50(v69, &qword_27C7C5E28);
          v75 = sub_20C479640(v72, v74, v174);
          v60 = v165;

          *(v65 + 34) = v75;
          _os_log_impl(&dword_20C472000, v61, v160, "[%{mask.hash}s] Cache ServiceSubscription Result: %{mask.hash}s", v65, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x20F2FFF90](v67, -1, -1);
          MEMORY[0x20F2FFF90](v65, -1, -1);

          v161(v158, v163);
        }

        else
        {

          sub_20C477B50(v59, &qword_27C7C5E28);
          v54(v158, v163);
        }

        v113 = v159;
        sub_20C481894(v173, v159);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_20C478FC0(v113, v60 + v55);
        swift_endAccess();
        v114 = *(v57 + 2);
        if (v114)
        {
          v115 = *(v156 + 16);
          v116 = &v57[(*(v156 + 80) + 32) & ~*(v156 + 80)];
          v117 = *(v156 + 72);
          v118 = (v157 + 32);
          v119 = (v156 + 8);
          v115(v171, v116, v10);
          while (1)
          {
            sub_20C481894(v173, v24);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v174[0] = *v24;
              sub_20C5A06AC();
            }

            else
            {
              (*v118)(v168, v24, v169);
              sub_20C5A06BC();
            }

            v120 = v171;
            (*v119)(v171, v10);
            v116 += v117;
            if (!--v114)
            {
              break;
            }

            v115(v120, v116, v10);
          }
        }

        swift_getObjectType();
        sub_20C56F6A8();
        sub_20C59F5FC();
      }

      else
      {

        v92 = v147;
        sub_20C59FDDC();
        v93 = v165;

        v94 = sub_20C5A01BC();
        v95 = sub_20C5A08AC();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v174[0] = v97;
          *v96 = 141558274;
          *(v96 + 4) = 1752392040;
          *(v96 + 12) = 2080;
          v175 = v93;
          v98 = sub_20C5A041C();
          v100 = sub_20C479640(v98, v99, v174);

          *(v96 + 14) = v100;
          _os_log_impl(&dword_20C472000, v94, v95, "[%{mask.hash}s] Invalid service subscription cache fetch voucher", v96, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v97);
          MEMORY[0x20F2FFF90](v97, -1, -1);
          MEMORY[0x20F2FFF90](v96, -1, -1);
        }

        v54(v92, v163);
      }

      return (*(v167 + 8))(v162, v166);
    }

    v171 = v55;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E30);
    v77 = *&v39[*(v76 + 48)];
    v78 = *(v76 + 64);
    v79 = v160;
    sub_20C4817EC(v39, v160);
    (*(v167 + 32))(v32, &v39[v78], v166);
    if ((sub_20C59D4AC() & 1) == 0)
    {

      v101 = v148;
      sub_20C59FDDC();
      v102 = v165;

      v103 = sub_20C5A01BC();
      v104 = sub_20C5A08AC();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = v32;
        v106 = swift_slowAlloc();
        v107 = v79;
        v108 = swift_slowAlloc();
        v174[0] = v108;
        *v106 = 141558274;
        *(v106 + 4) = 1752392040;
        *(v106 + 12) = 2080;
        v175 = v102;
        v109 = sub_20C5A041C();
        v111 = sub_20C479640(v109, v110, v174);

        *(v106 + 14) = v111;
        _os_log_impl(&dword_20C472000, v103, v104, "[%{mask.hash}s] Invalid service subscription cache fetch voucher", v106, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v108);
        MEMORY[0x20F2FFF90](v108, -1, -1);
        MEMORY[0x20F2FFF90](v106, -1, -1);

        v54(v101, v163);
        (*(v167 + 8))(v105, v166);
        v112 = v107;
      }

      else
      {

        v54(v101, v163);
        (*(v167 + 8))(v32, v166);
        v112 = v79;
      }

      return sub_20C477B50(v112, &qword_27C7C5E28);
    }

    v80 = v149;
    sub_20C59FDDC();
    v81 = v150;
    sub_20C481894(v173, v150);
    v82 = sub_20C5A01BC();
    LODWORD(v158) = sub_20C5A08AC();
    v83 = os_log_type_enabled(v82, v158);
    v144 = v32;
    v162 = v77;
    if (v83)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v161 = v54;
      v86 = v85;
      v174[0] = v85;
      *v84 = 141558274;
      *(v84 + 4) = 1752392040;
      *(v84 + 12) = 2080;
      v87 = v81;
      sub_20C481894(v81, v152);
      v88 = sub_20C5A041C();
      v90 = v89;
      sub_20C477B50(v87, &qword_27C7C5E28);
      v91 = sub_20C479640(v88, v90, v174);

      *(v84 + 14) = v91;
      v77 = v162;
      _os_log_impl(&dword_20C472000, v82, v158, "Cache ServiceSubscription Result: %{mask.hash}s", v84, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x20F2FFF90](v86, -1, -1);
      MEMORY[0x20F2FFF90](v84, -1, -1);

      v161(v80, v163);
      v79 = v160;
    }

    else
    {

      sub_20C477B50(v81, &qword_27C7C5E28);
      v54(v80, v163);
    }

    v121 = v159;
    sub_20C481894(v173, v159);
    swift_storeEnumTagMultiPayload();
    v122 = v165;
    v123 = v171;
    swift_beginAccess();
    sub_20C478FC0(v121, &v123[v122]);
    swift_endAccess();
    v124 = *(v77 + 2);
    if (v124)
    {
      v125 = *(v156 + 16);
      v126 = &v77[(*(v156 + 80) + 32) & ~*(v156 + 80)];
      v127 = *(v156 + 72);
      v128 = (v157 + 32);
      v129 = (v156 + 8);
      v125(v170, v126, v10);
      while (1)
      {
        sub_20C481894(v173, v17);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v174[0] = *v17;
          sub_20C5A06AC();
        }

        else
        {
          (*v128)(v168, v17, v169);
          sub_20C5A06BC();
        }

        v130 = v170;
        (*v129)(v170, v10);
        v126 += v127;
        if (!--v124)
        {
          break;
        }

        v125(v130, v126, v10);
      }

      v79 = v160;
    }

    else
    {
    }

    v131 = *(v154 + 48);
    v132 = v155;
    sub_20C481894(v173, v155);
    sub_20C481894(v79, v132 + v131);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v134 = v153;
    if (EnumCaseMultiPayload != 1)
    {
      sub_20C481894(v132, v153);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v136 = v157;
        v137 = v134;
        v138 = *(v157 + 32);
        v139 = v145;
        v140 = v169;
        v138(v145, v137, v169);
        v141 = v146;
        v138(v146, v132 + v131, v140);
        sub_20C47A274(&unk_27C7C5E50, MEMORY[0x277D51C40]);
        v142 = sub_20C5A033C();
        v143 = *(v136 + 8);
        v143(v141, v140);
        v143(v139, v140);
        if (v142)
        {
          (*(v167 + 8))(v144, v166);
          sub_20C477B50(v79, &qword_27C7C5E28);
          v112 = v132;
          return sub_20C477B50(v112, &qword_27C7C5E28);
        }

        v135 = &qword_27C7C5E28;
LABEL_42:
        sub_20C477B50(v132, v135);
        swift_getObjectType();
        sub_20C56F6A8();
        sub_20C59F5FC();
        (*(v167 + 8))(v144, v166);
        v112 = v79;
        return sub_20C477B50(v112, &qword_27C7C5E28);
      }

      (*(v157 + 8))(v134, v169);
    }

    v135 = &qword_27C7C5E48;
    goto LABEL_42;
  }

  if (result == 2)
  {
    return sub_20C480D1C(v39);
  }

  return result;
}

uint64_t sub_20C56CDE0(int a1)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E28);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v40 - v4;
  v44 = sub_20C59D4CC();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ServiceSubscriptionCache.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = sub_20C5A01CC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  sub_20C59FDDC();
  sub_20C5A01AC();
  v41 = *(v15 + 8);
  v42 = v14;
  v41(v20, v14);
  v21 = OBJC_IVAR____TtC12SeymourMedia24ServiceSubscriptionCache_state;
  swift_beginAccess();
  sub_20C47DBA0(v2 + v21, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = v40;
      sub_20C4817EC(v13, v40);
      sub_20C59D4BC();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E30);
      v26 = *(v25 + 48);
      v27 = *(v25 + 64);
      sub_20C481894(v24, v10);
      *&v10[v26] = MEMORY[0x277D84F90];
      v28 = v44;
      (*(v5 + 16))(&v10[v27], v7, v44);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20C478FC0(v10, v2 + v21);
      swift_endAccess();
      sub_20C56D3EC(v7, v43 & 1);
      (*(v5 + 8))(v7, v28);
      return sub_20C477B50(v24, &qword_27C7C5E28);
    }

    else
    {
      sub_20C59D4BC();
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E38) + 48);
      *v10 = MEMORY[0x277D84F90];
      v39 = v44;
      (*(v5 + 16))(&v10[v38], v7, v44);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20C478FC0(v10, v2 + v21);
      swift_endAccess();
      sub_20C56D3EC(v7, v43 & 1);
      return (*(v5 + 8))(v7, v39);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E30);

      (*(v5 + 8))(&v13[*(v30 + 64)], v44);
      sub_20C477B50(v13, &qword_27C7C5E28);
    }

    else
    {

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E38);
      (*(v5 + 8))(&v13[*(v23 + 48)], v44);
    }

    sub_20C59FDDC();

    v31 = sub_20C5A01BC();
    v32 = sub_20C5A089C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45[0] = v34;
      *v33 = 141558274;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2080;
      v45[3] = v2;
      v35 = sub_20C5A041C();
      v37 = sub_20C479640(v35, v36, v45);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_20C472000, v31, v32, "[%{mask.hash}s] Already refreshing/fetching the cache", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x20F2FFF90](v34, -1, -1);
      MEMORY[0x20F2FFF90](v33, -1, -1);
    }

    return (v41)(v17, v42);
  }
}

uint64_t sub_20C56D3EC(uint64_t a1, int a2)
{
  v3 = v2;
  v22[1] = a2;
  v24 = a1;
  v4 = sub_20C59D4CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4510);
  v27 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = v22 - v7;
  v9 = sub_20C59E91C();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C5A01CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDDC();
  sub_20C5A01AC();
  (*(v13 + 8))(v15, v12);
  sub_20C59E90C();
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12SeymourMedia24ServiceSubscriptionCache_serviceSubscriptionClient), *(v3 + OBJC_IVAR____TtC12SeymourMedia24ServiceSubscriptionCache_serviceSubscriptionClient + 24));
  sub_20C59F0AC();
  (*(v5 + 16))(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v4);
  v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  (*(v5 + 32))(v17 + v16, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  v18 = v23;
  v19 = sub_20C59EABC();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20C56F4C8;
  *(v20 + 24) = v17;

  v19(sub_20C48173C, v20);

  (*(v27 + 8))(v8, v18);
  return (*(v25 + 8))(v11, v26);
}

uint64_t sub_20C56D7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_20C5A01CC();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C56D8A4, 0, 0);
}

uint64_t sub_20C56D8A4()
{
  v15 = v0;
  sub_20C59FDDC();

  v1 = sub_20C5A01BC();
  v2 = sub_20C5A08AC();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  if (v3)
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 141558274;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20C479640(v8, v7, &v14);
    _os_log_impl(&dword_20C472000, v1, v2, "[%{mask.hash}s] Subscription updated, pulling from cache", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F2FFF90](v10, -1, -1);
    MEMORY[0x20F2FFF90](v9, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_20C56DAA4, Strong, 0);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20C56DAA4()
{
  sub_20C56CDE0(1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C56DB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_20C5A01CC();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C56DBE0, 0, 0);
}

uint64_t sub_20C56DBE0()
{
  v15 = v0;
  sub_20C59FDDC();

  v1 = sub_20C5A01BC();
  v2 = sub_20C5A08AC();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  if (v3)
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 141558274;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20C479640(v8, v7, &v14);
    _os_log_impl(&dword_20C472000, v1, v2, "[%{mask.hash}s] Subscription purchased, forcing refresh", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F2FFF90](v10, -1, -1);
    MEMORY[0x20F2FFF90](v9, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_20C56DDE0, Strong, 0);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20C56DDE0()
{
  sub_20C56CDE0(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C56DE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_20C5A01CC();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C56DF1C, 0, 0);
}

uint64_t sub_20C56DF1C()
{
  v15 = v0;
  sub_20C59FDDC();

  v1 = sub_20C5A01BC();
  v2 = sub_20C5A08AC();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  if (v3)
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 141558274;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20C479640(v8, v7, &v14);
    _os_log_impl(&dword_20C472000, v1, v2, "[%{mask.hash}s] Account changed, forcing refresh", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F2FFF90](v10, -1, -1);
    MEMORY[0x20F2FFF90](v9, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_20C56FA40, Strong, 0);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20C56E11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v5 = sub_20C59D4CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = sub_20C5A06FC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_20C481894(a1, v12);
  (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v5);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  sub_20C4817EC(v12, &v19[v17]);
  (*(v6 + 32))(&v19[v18], &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_20C58C49C(0, 0, v15, &unk_20C5A9BD8, v19);
}

uint64_t sub_20C56E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_20C56E3D8, a4, 0);
}

uint64_t sub_20C56E3D8()
{
  sub_20C56BB00(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ServiceSubscriptionCache.deinit()
{
  sub_20C480D1C(v0 + OBJC_IVAR____TtC12SeymourMedia24ServiceSubscriptionCache_state);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC12SeymourMedia24ServiceSubscriptionCache_serviceSubscriptionClient);
  swift_defaultActor_destroy();
  return v0;
}

Swift::Void __swiftcall ServiceSubscriptionCache.refresh()()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDDC();
  sub_20C5A01AC();
  (*(v1 + 8))(v3, v0);
  sub_20C56CDE0(0);
}

uint64_t sub_20C56E5AC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_20C56EBA0;
  }

  else
  {
    v4 = sub_20C56E6D8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20C56E6D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C56E78C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_20C56EC5C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20C56E8BC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20C56E8BC()
{
  v1 = v0[14];
  (*(v0[8] + 8))(v0[10], v0[7]);
  sub_20C477B50(v1, &qword_27C7C5E28);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20C56E9A4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_20C56ED64;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20C56EAD4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20C56EAD4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C56EBA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C56EC5C()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);
  sub_20C477B50(v1, &qword_27C7C5E28);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20C56ED64()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20C56EE50(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = type metadata accessor for ServiceSubscriptionCache.State(0);
  MEMORY[0x28223BE20](v18);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_20C59D4CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59D4BC();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E38) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51B0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4788);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C5A4FE0;
  (*(v11 + 16))(v13 + v12, v17, v10);
  *v4 = v13;
  (*(v6 + 16))(v4 + v9, v8, v5);
  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtC12SeymourMedia24ServiceSubscriptionCache_state;
  swift_beginAccess();
  sub_20C478FC0(v4, a2 + v14);
  swift_endAccess();
  sub_20C56D3EC(v8, 0);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20C56F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a2;
  v8 = type metadata accessor for ServiceSubscriptionCache.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E30);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  sub_20C481894(a3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51B0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4788);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C5A4FE0;
  (*(v15 + 16))(v17 + v16, a1, v14);
  v25 = a4;

  sub_20C47CC8C(v17);
  *&v10[v12] = v25;
  v18 = sub_20C59D4CC();
  (*(*(v18 - 8) + 16))(&v10[v13], v23, v18);
  swift_storeEnumTagMultiPayload();
  v19 = OBJC_IVAR____TtC12SeymourMedia24ServiceSubscriptionCache_state;
  v20 = v24;
  swift_beginAccess();
  sub_20C478FC0(v10, v20 + v19);
  return swift_endAccess();
}

uint64_t sub_20C56F2E8()
{
  v2 = sub_20C5A01CC();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[4] = v3;
  v1[5] = v4;

  return MEMORY[0x2822009F8](sub_20C56F3A4, v4, 0);
}

uint64_t sub_20C56F3A4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_20C59FDDC();
  sub_20C5A01AC();
  (*(v3 + 8))(v1, v2);
  sub_20C56CDE0(0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20C56F4C8(uint64_t a1)
{
  v3 = *(sub_20C59D4CC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_20C56E11C(a1, v4, v5);
}

uint64_t sub_20C56F53C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E28) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C59D4CC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20C47FCEC;

  return sub_20C56E3B4(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_20C56F6A8()
{
  result = qword_2810F4328;
  if (!qword_2810F4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F4328);
  }

  return result;
}

uint64_t sub_20C56F704(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E28) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C47FCF0;

  return sub_20C56B344(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20C56F808()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20C47FCEC;

  return sub_20C56D7E0(v2, v3, v4);
}

uint64_t sub_20C56F8B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20C47FCF0;

  return sub_20C56DB1C(v2, v3, v4);
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20C56F998()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20C47FCEC;

  return sub_20C56DE58(v2, v3, v4);
}

uint64_t sub_20C56FA80@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownStep);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C4C5950;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4);
}

uint64_t sub_20C56FB20(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C4C5928;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownStep);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3);
  return sub_20C47E6BC(v8);
}

uint64_t sub_20C56FC88@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownWindUp);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C57181C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4);
}

uint64_t sub_20C56FD28(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C571818;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownWindUp);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3);
  return sub_20C47E6BC(v8);
}

uint64_t sub_20C56FE90@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownFadeOut);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C57181C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4);
}

uint64_t sub_20C56FF30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C571818;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownFadeOut);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3);
  return sub_20C47E6BC(v8);
}

uint64_t sub_20C570098@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownCompleted);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C4C5980;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4);
}

uint64_t sub_20C570138(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C4C5978;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownCompleted);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3);
  return sub_20C47E6BC(v8);
}

uint64_t sub_20C570220(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_20C5702A8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

char *CountdownRingView.init(diameter:thickness:topColor:bottomColor:isOpaque:)(void *a1, void *a2, char a3, float a4, float a5)
{
  v11 = &v5[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownStep];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownWindUp];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownFadeOut];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v5[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownCompleted];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_animator;
  v16 = [objc_allocWithZone(MEMORY[0x277CE8E68]) init];
  v17 = [objc_allocWithZone(MEMORY[0x277CE8E60]) initWithTimeline_];

  *&v5[v15] = v17;
  v18 = [objc_opt_self() countdownRingGroup];
  *&v19 = a4;
  [v18 setGroupDiameter_];
  *&v20 = a5;
  [v18 setThickness_];
  [v18 setPercentage:0 ofRingAtIndex:0 animated:0.0];
  [v18 setTopColor:a1 bottomColor:a2 ofRingAtIndex:0];
  v21 = [objc_allocWithZone(MEMORY[0x277CE8E88]) initWithRenderStyle_];
  v22 = [objc_allocWithZone(MEMORY[0x277CE8E70]) initWithRingGroup:v18 renderer:v21];
  v23 = OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_countdownView;
  *&v5[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_countdownView] = v22;
  [v22 setOpaque_];
  [*&v5[v23] setTranslatesAutoresizingMaskIntoConstraints_];
  v56.receiver = v5;
  v56.super_class = type metadata accessor for CountdownRingView();
  v24 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v25 = *&v24[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_animator];
  v26 = v24;
  [v25 setDelegate_];
  v27 = OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_countdownView;
  v28 = *&v26[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_countdownView];
  v29 = v26;
  [v29 addSubview_];
  v53 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E90);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20C5A9C80;
  v31 = [*&v26[v27] leadingAnchor];
  v32 = [v29 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [*&v26[v27] trailingAnchor];
  v35 = [v29 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v30 + 40) = v36;
  v37 = [*&v26[v27] topAnchor];
  v38 = [v29 topAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v30 + 48) = v39;
  v40 = [*&v26[v27] bottomAnchor];
  v41 = [v29 bottomAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v30 + 56) = v42;
  v43 = [v29 widthAnchor];

  v44 = [*&v26[v27] ringGroup];
  [v44 groupDiameter];
  v46 = v45;

  v47 = [v43 constraintEqualToConstant_];
  *(v30 + 64) = v47;
  v48 = [v29 heightAnchor];

  v49 = [v29 widthAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v30 + 72) = v50;
  sub_20C57094C();
  v51 = sub_20C5A060C();

  [v53 activateConstraints_];

  return v29;
}

unint64_t sub_20C57094C()
{
  result = qword_27C7C5E98;
  if (!qword_27C7C5E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C5E98);
  }

  return result;
}

id CountdownRingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CountdownRingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountdownRingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CountdownRingView.countdownAnimatorDidFinishAnimating(_:)()
{
  v1 = (v0 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownCompleted);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return sub_20C47E6BC(v3);
  }

  return result;
}

Swift::Void __swiftcall CountdownRingView.prepare()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_animator);
  [v1 setCountdownView_];

  [v1 prepareToAnimate];
}

uint64_t sub_20C570E30(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

uint64_t sub_20C570EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

id sub_20C570F7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_animator);
  [v1 setCountdownView_];

  return [v1 prepareToAnimate];
}

void sub_20C570FF8()
{
  v1 = (v0 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownStep);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownWindUp);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownFadeOut);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownCompleted);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_animator;
  v6 = [objc_allocWithZone(MEMORY[0x277CE8E68]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277CE8E60]) initWithTimeline_];

  *(v0 + v5) = v7;
  sub_20C5A0D1C();
  __break(1u);
}

uint64_t sub_20C5710E8(void *a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v52 = *(v4 - 8);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v8 = [a1 identifier];
  v9 = sub_20C5A039C();
  v11 = v10;

  v12 = objc_opt_self();
  v13 = [v12 windUpIdentifier];
  v14 = sub_20C5A039C();
  v16 = v15;

  if (v9 == v14 && v11 == v16)
  {
  }

  else
  {
    v18 = sub_20C5A0E9C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v19 = &v2[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownWindUp];
  swift_beginAccess();
  v20 = *v19;
  if (*v19)
  {

    v20(v21);
    sub_20C47E6BC(v20);
  }

LABEL_10:
  v22 = [a1 identifier];
  v23 = sub_20C5A039C();
  v25 = v24;

  v26 = [v12 countdownIdentifier];
  v27 = sub_20C5A039C();
  v29 = v28;

  if (v23 == v27 && v25 == v29)
  {
  }

  else
  {
    v30 = sub_20C5A0E9C();

    if ((v30 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ([a1 respondsToSelector_])
  {
    v31 = [a1 countdownStep];
    v32 = v31 - 1;
    if ((v31 - 1) > 2)
    {
      sub_20C59FE2C();
      v49 = sub_20C5A01BC();
      v50 = sub_20C5A089C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_20C472000, v49, v50, "Invalid countdown step", v51, 2u);
        MEMORY[0x20F2FFF90](v51, -1, -1);
      }

      return (*(v52 + 8))(v7, v4);
    }

    v33 = v31;
    v34 = &v2[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownStep];
    swift_beginAccess();
    v35 = *v34;
    if (*v34)
    {
      v53[0] = v32;

      v35(v53);
      sub_20C47E6BC(v35);
    }

    [v2 accessibilityUpdateCountdownToStep_];
  }

LABEL_19:
  v36 = [a1 identifier];
  v37 = sub_20C5A039C();
  v39 = v38;

  v40 = [v12 fadeOutIdentifier];
  v41 = sub_20C5A039C();
  v43 = v42;

  if (v37 == v41 && v39 == v43)
  {
  }

  else
  {
    v44 = sub_20C5A0E9C();

    if ((v44 & 1) == 0)
    {
      return result;
    }
  }

  v46 = &v2[OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownFadeOut];
  result = swift_beginAccess();
  v47 = *v46;
  if (*v46)
  {

    v47(v48);
    return sub_20C47E6BC(v47);
  }

  return result;
}