unint64_t sub_20B6CCD70(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_20C13DAB4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_20C13E164();

        sub_20C13CA64();
        v10 = sub_20C13E1B4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_20B6CCF34(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_20C13DAB4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_20C13E164();

        sub_20C13C344();
        v10 = sub_20C13E1B4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_20B6CD0F0(int64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(char *))
{
  v35 = a3;
  v36 = a4;
  v31 = a2(0);
  v6 = *(v31 - 8);
  result = MEMORY[0x28223BE20](v31);
  v34 = &v30 - v8;
  v9 = *v4;
  v10 = *v4 + 56;
  v11 = -1 << *(*v4 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_20C13DAB4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = (v14 + 1) & v13;
      v16 = *(v6 + 72);
      v32 = v9;
      v33 = v10;
      do
      {
        v17 = *(v9 + 48);
        v18 = v16;
        v19 = v16 * v12;
        v20 = v34;
        v21 = v13;
        v22 = v35;
        sub_20B6D8600(v17 + v16 * v12, v34, v35);
        sub_20C13E164();
        v36(v37);
        v23 = sub_20C13E1B4();
        v24 = v22;
        v13 = v21;
        sub_20B6D8668(v20, v24);
        v25 = v23 & v21;
        if (a1 >= v15)
        {
          if (v25 < v15)
          {
            v16 = v18;
          }

          else
          {
            v16 = v18;
            if (a1 >= v25)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v16 = v18;
          if (v25 >= v15 || a1 >= v25)
          {
LABEL_13:
            v9 = v32;
            v26 = v16 * a1;
            if (v16 * a1 < v19 || *(v32 + 48) + v16 * a1 >= (*(v32 + 48) + v19 + v16))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v26 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_6;
          }
        }

        v9 = v32;
LABEL_6:
        v12 = (v12 + 1) & v21;
        v10 = v33;
      }

      while (((*(v33 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v9 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v29;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_20B6CD3B4()
{
  result = qword_27C770C40;
  if (!qword_27C770C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770C40);
  }

  return result;
}

unint64_t sub_20B6CD408()
{
  result = qword_27C763E50;
  if (!qword_27C763E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763E50);
  }

  return result;
}

void sub_20B6CD490(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_20B6C90DC(v7, v4, v2);
      MEMORY[0x20F2F6A40](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_20B6CD5F0(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_20B6CD5F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E60);
  MEMORY[0x28223BE20](v52);
  v51 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v39 - v6;
  v59 = sub_20C136104();
  v7 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C135C54();
  v10 = MEMORY[0x28223BE20](v57);
  v55 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v53 = a3;
  v13 = *(a3 + 64);
  v43 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v41 = 0;
  v42 = (v14 + 63) >> 6;
  v47 = v7 + 2;
  v48 = v9 + 2;
  v58 = v7;
  v56 = v9;
  v45 = v9 + 1;
  v46 = v7 + 1;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v54 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v12 << 6);
    v21 = v53;
    v22 = v55;
    v23 = v56[2];
    v24 = v57;
    v23(v55, v53[6] + v56[9] * v20, v57, v10);
    v25 = v21[7];
    v26 = v58[9];
    v44 = v20;
    v27 = v58[2];
    v28 = v49;
    v27(v49, v25 + v26 * v20, v59);
    v29 = v50;
    (v23)(v50, v22, v24);
    v30 = v52;
    v31 = v59;
    v27((v29 + *(v52 + 48)), v28, v59);
    v32 = v51;
    sub_20B52F9E8(v29, v51, &qword_27C763E60);
    v33 = *(v30 + 48);
    LOBYTE(v30) = sub_20C1360F4();
    sub_20B520158(v29, &qword_27C763E60);
    v34 = v58[1];
    v34(v32 + v33, v31);
    v35 = v56[1];
    v36 = v32;
    v37 = v57;
    v35(v36, v57);
    v34(v28, v31);
    v35(v55, v37);
    v16 = v54;
    if (v30)
    {
      *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_15:
        sub_20B6CDA20(v40, v39, v41, v53);
        return;
      }
    }
  }

  v18 = v12;
  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v42)
    {
      goto LABEL_15;
    }

    v19 = *(v43 + 8 * v12);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v54 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20B6CDA20(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = sub_20C136104();
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = v44 - v10;
  v11 = sub_20C135C54();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v56 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v47 = v44 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E78);
  result = sub_20C13DE84();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_20B6D8780(&qword_27C762F50, MEMORY[0x277D51FE0]);
    result = sub_20C13C7B4();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
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

uint64_t sub_20B6CDEC4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v49 = sub_20C135C54();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = v37 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EA8);
  result = sub_20C13DE84();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v40;
  }

  v14 = 0;
  v37[1] = v7 + 16;
  v38 = result;
  v47 = v7 + 32;
  v15 = result + 64;
  v37[0] = a4;
  v39 = v7;
  v16 = v49;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v42 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v46 = *(v7 + 72);
    v22 = v41;
    (*(v7 + 16))(v41, v21 + v46 * v20, v16);
    v23 = (a4[7] + 16 * v20);
    v24 = *v23;
    v25 = v23[1];
    v43 = *(v7 + 32);
    v44 = v24;
    v43(v48, v22, v16);
    v12 = v38;
    sub_20B6D8780(&qword_27C762F50, MEMORY[0x277D51FE0]);
    v45 = v25;

    result = sub_20C13C7B4();
    v26 = -1 << *(v12 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v15 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v12 + 48) + v29 * v46, v48, v49);
    v34 = (*(v12 + 56) + 16 * v29);
    v35 = v45;
    *v34 = v44;
    v34[1] = v35;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37[0];
    v13 = v42;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v40[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
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

uint64_t sub_20B6CE26C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_20C133244();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A20);
  result = sub_20C13DE84();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v45 + 16;
  v39 = result;
  v46 = v45 + 32;
  v16 = result + 64;
  v40 = a1;
  v37 = a4;
  v17 = v47;
  while (v14)
  {
    v18 = v9;
    v19 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v45;
    v44 = *(v45 + 72);
    v25 = v41;
    (*(v45 + 16))(v41, v23 + v44 * v22, v17);
    v43 = *(a4[7] + v22);
    v26 = *(v24 + 32);
    v9 = v18;
    v26(v18, v25, v17);
    v13 = v39;
    sub_20B6D8780(&qword_27C764180, MEMORY[0x277CC9AF8]);
    result = sub_20C13C7B4();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v40;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = (v26)(*(v13 + 48) + v30 * v44, v9, v47);
    *(*(v13 + 56) + v30) = v43;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v9;
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
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

uint64_t sub_20B6CE640(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_20B6CAA78(*(*(v2 + 48) + (v10 | (v9 << 6))), sub_20B70CB80);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_20B6CE748(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_20B6C9884(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_20B6CE878(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, __n128), void (*a5)(char *))
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  v12 = a4(0, v9);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - v14;
  if (*(*v5 + 16))
  {
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v23[1] = v13 + 8;
    v23[2] = v13 + 16;

    v20 = 0;
    while (v18)
    {
      v21 = v20;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v13 + 16))(v15, *(a1 + 48) + *(v13 + 72) * (v22 | (v21 << 6)), v12);
      v26(v15);
      (*(v13 + 8))(v15, v12);
      sub_20B520158(v11, v24);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(a1 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_20B6CEA94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_20C135C84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = MEMORY[0x277D52060];
      sub_20B6D8600(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, MEMORY[0x277D52060]);
      sub_20B6CA148(v9, v5);
      sub_20B6D8668(v9, v17);
      sub_20B520158(v5, &unk_27C7629B0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_20B6CEC8C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_20C13DB34())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B5E5C28();
    sub_20B6D8780(&qword_27C764670, sub_20B5E5C28);
    sub_20C13CFF4();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_20B583EDC();
      return;
    }

    while (1)
    {
      v16 = sub_20B6CAB88(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_20C13DB64())
      {
        sub_20B5E5C28();
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_20B6CEEBC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_20B6CAD10(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_20B6CEFE8(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v65 - v9);
  v11 = sub_20C138034();
  MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v65 - v14);
  MEMORY[0x28223BE20](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_20B520158(v30, &qword_27C763EF8);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_20B6D8780(&unk_27C764140, MEMORY[0x277D53BA0]);
    v32 = sub_20C13C7B4();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_20B6D8780(&qword_27C763F00, MEMORY[0x277D53BA0]);
    v36 = sub_20C13C894();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_20B520158(v24, &qword_27C763EF8);
        a2 = sub_20BC0D95C(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_20C13C7B4();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_20C13C894();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_20C13C894();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_20B6D3FB8(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x20F2F6A40](v63, -1, -1);
LABEL_52:
  sub_20B583EDC();
  return a2;
}

uint64_t sub_20B6CFA4C(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v53 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + (v18 | (v47 << 6)));
        sub_20C13E164();
        MEMORY[0x20F2F58E0](v5);
        v19 = sub_20C13E1B4();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (v5 == *(v21 + v2))
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (v5 == *(v21 + v2))
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v45;
    v51 = v47;
    v52 = v11;
    v49[0] = v46;
    v49[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v5);
      v40 = sub_20B6D448C(v39, v14, v6, v2, v49);

      MEMORY[0x20F2F6A40](v39, -1, -1);
      v45 = v50;
      v47 = v51;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v14;
    v43 = &v41;
    MEMORY[0x28223BE20](v22);
    v14 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + (v29 | (v47 << 6)));
      sub_20C13E164();
      v2 = &v48;
      MEMORY[0x20F2F58E0](v5);
      v30 = sub_20C13E1B4();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (v5 == *(v35 + v32))
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (v5 == *(v35 + v32))
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_20BC0E25C(v14, v42, v44, v6);
LABEL_43:
    sub_20B583EDC();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_20B6CFECC(unint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  v55 = 0;
  v6 = 0xED000073676E6952;
  v7 = *(a1 + 56);
  v63 = a1 + 56;
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v61 = (63 - v9) >> 6;
  v65 = (a2 + 56);
  v66 = a2;

  v13 = 0;
  while (2)
  {
    while (2)
    {
      if (v11)
      {
        v14 = v66;
        goto LABEL_13;
      }

      v15 = v13;
      v14 = v66;
      do
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_132;
        }

        if (v16 >= v61)
        {
LABEL_129:
          sub_20B583EDC();
          return v14;
        }

        v11 = *(v63 + 8 * v16);
        ++v15;
      }

      while (!v11);
      v13 = v16;
LABEL_13:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = *(*(v5 + 48) + (v17 | (v13 << 6)));
      sub_20C13E164();
      sub_20C13CA64();

      v19 = sub_20C13E1B4();
      v20 = -1 << *(v14 + 32);
      v2 = v19 & ~v20;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if (((1 << v2) & v65[v2 >> 6]) == 0)
      {
        continue;
      }

      break;
    }

    v64 = v13;
    v62 = v5;
    v21 = ~v20;
LABEL_15:
    v22 = v6;
    v23 = 0x7974697669746361;
    switch(*(*(v66 + 48) + v2))
    {
      case 1:
        v22 = 0xE700000000000000;
        v23 = 0x7261426E727562;
        break;
      case 2:
        v22 = 0xE700000000000000;
        v24 = 0x636E65646163;
        goto LABEL_29;
      case 3:
        v22 = 0xE800000000000000;
        v23 = 0x65636E6174736964;
        break;
      case 4:
        v22 = 0xE600000000000000;
        v23 = 0x796772656E65;
        break;
      case 5:
        v23 = 0x7461527472616568;
        v22 = 0xE900000000000065;
        break;
      case 6:
        v22 = 0xE900000000000074;
        v23 = 0x6867696C68676968;
        break;
      case 7:
        v22 = 0xE900000000000079;
        v23 = 0x7469736E65746E69;
        break;
      case 8:
        v22 = 0xE700000000000000;
        v24 = 0x6E696C636E69;
LABEL_29:
        v23 = v24 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 9:
        v22 = 0xE300000000000000;
        v23 = 7172210;
        break;
      case 0xA:
        v22 = 0xE900000000000072;
        v23 = 0x6F74617261706573;
        break;
      case 0xB:
        v23 = 7172211;
        v22 = 0xE300000000000000;
        break;
      case 0xC:
        v22 = 0xE800000000000000;
        v23 = 0x73736572676F7270;
        break;
      case 0xD:
        v22 = 0xE500000000000000;
        v23 = 0x72656D6974;
        break;
      default:
        break;
    }

    v25 = 0x7974697669746361;
    v14 = v6;
    switch(v18)
    {
      case 1:
        v6 = 0xE700000000000000;
        if (v23 != 0x7261426E727562)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 2:
        v6 = 0xE700000000000000;
        v26 = 0x636E65646163;
        goto LABEL_59;
      case 3:
        v6 = 0xE800000000000000;
        if (v23 != 0x65636E6174736964)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 4:
        v6 = 0xE600000000000000;
        if (v23 != 0x796772656E65)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 5:
        v6 = 0xE900000000000065;
        if (v23 != 0x7461527472616568)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 6:
        v6 = 0xE900000000000074;
        if (v23 != 0x6867696C68676968)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 7:
        v6 = 0xE900000000000079;
        if (v23 != 0x7469736E65746E69)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 8:
        v6 = 0xE700000000000000;
        v26 = 0x6E696C636E69;
LABEL_59:
        if (v23 != (v26 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 9:
        v6 = 0xE300000000000000;
        if (v23 != 7172210)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 10:
        v6 = 0xE900000000000072;
        v25 = 0x6F74617261706573;
        goto LABEL_53;
      case 11:
        v6 = 0xE300000000000000;
        if (v23 != 7172211)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 12:
        v6 = 0xE800000000000000;
        if (v23 != 0x73736572676F7270)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 13:
        v6 = 0xE500000000000000;
        if (v23 != 0x72656D6974)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      default:
LABEL_53:
        if (v23 != v25)
        {
          goto LABEL_55;
        }

LABEL_54:
        if (v22 != v6)
        {
LABEL_55:
          v27 = sub_20C13DFF4();

          if (v27)
          {
            v8 = v64;
            v70 = v60;
            v71 = v64;
            v72 = v11;
            v13 = v62;
            v68 = v62;
            v69 = v63;
            goto LABEL_65;
          }

          v2 = (v2 + 1) & v21;
          v3 = v2 >> 6;
          v4 = 1 << v2;
          v6 = v14;
          if ((v65[v2 >> 6] & (1 << v2)) == 0)
          {
            v5 = v62;
            v13 = v64;
            v8 = -1;
            continue;
          }

          goto LABEL_15;
        }

        v8 = v64;
        v70 = v60;
        v71 = v64;
        v72 = v11;
        v13 = v62;
        v68 = v62;
        v69 = v63;

LABEL_65:
        v6 = v14;
        v5 = v66;
        v29 = *(v66 + 32);
        v56 = ((1 << v29) + 63) >> 6;
        v12 = 8 * v56;
        if ((v29 & 0x3Fu) > 0xD)
        {
          goto LABEL_133;
        }

        while (2)
        {
          v57 = &v54;
          MEMORY[0x28223BE20](v28);
          v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
          memcpy(v2, v65, v30);
          v31 = *(v2 + 8 * v3) & ~v4;
          v32 = *(v5 + 16);
          v59 = v2;
          *(v2 + 8 * v3) = v31;
          v33 = v32 - 1;
LABEL_67:
          v58 = v33;
LABEL_68:
          if (v11)
          {
            v3 = v66;
            goto LABEL_75;
          }

          v34 = v8;
          v3 = v66;
          while (1)
          {
            v35 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v35 >= v61)
            {
              v14 = sub_20BC0EA58(v59, v56, v58, v66);
              goto LABEL_129;
            }

            v11 = *(v63 + 8 * v35);
            ++v34;
            if (v11)
            {
              v8 = v35;
LABEL_75:
              v36 = __clz(__rbit64(v11));
              v11 &= v11 - 1;
              v37 = *(*(v13 + 48) + (v36 | (v8 << 6)));
              sub_20C13E164();
              sub_20C13CA64();

              v2 = &v67;
              v38 = sub_20C13E1B4();
              v39 = -1 << *(v3 + 32);
              v5 = v38 & ~v39;
              v40 = v5 >> 6;
              v4 = 1 << v5;
              if (((1 << v5) & v65[v5 >> 6]) == 0)
              {
                goto LABEL_68;
              }

              v64 = v8;
              v41 = ~v39;
              v2 = v37;
              while (1)
              {
                v42 = v6;
                v43 = 0x7974697669746361;
                switch(*(*(v66 + 48) + v5))
                {
                  case 1:
                    v42 = 0xE700000000000000;
                    v43 = 0x7261426E727562;
                    break;
                  case 2:
                    v42 = 0xE700000000000000;
                    v44 = 0x636E65646163;
                    goto LABEL_91;
                  case 3:
                    v42 = 0xE800000000000000;
                    v43 = 0x65636E6174736964;
                    break;
                  case 4:
                    v42 = 0xE600000000000000;
                    v43 = 0x796772656E65;
                    break;
                  case 5:
                    v43 = 0x7461527472616568;
                    v42 = 0xE900000000000065;
                    break;
                  case 6:
                    v42 = 0xE900000000000074;
                    v43 = 0x6867696C68676968;
                    break;
                  case 7:
                    v42 = 0xE900000000000079;
                    v43 = 0x7469736E65746E69;
                    break;
                  case 8:
                    v42 = 0xE700000000000000;
                    v44 = 0x6E696C636E69;
LABEL_91:
                    v43 = v44 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
                    break;
                  case 9:
                    v42 = 0xE300000000000000;
                    v43 = 7172210;
                    break;
                  case 0xA:
                    v42 = 0xE900000000000072;
                    v43 = 0x6F74617261706573;
                    break;
                  case 0xB:
                    v43 = 7172211;
                    v42 = 0xE300000000000000;
                    break;
                  case 0xC:
                    v42 = 0xE800000000000000;
                    v43 = 0x73736572676F7270;
                    break;
                  case 0xD:
                    v42 = 0xE500000000000000;
                    v43 = 0x72656D6974;
                    break;
                  default:
                    break;
                }

                v45 = 0x7974697669746361;
                switch(v2)
                {
                  case 1uLL:
                    v6 = 0xE700000000000000;
                    if (v43 == 0x7261426E727562)
                    {
                      goto LABEL_116;
                    }

                    goto LABEL_117;
                  case 2uLL:
                    v6 = 0xE700000000000000;
                    v46 = 0x636E65646163;
                    goto LABEL_121;
                  case 3uLL:
                    v6 = 0xE800000000000000;
                    if (v43 != 0x65636E6174736964)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  case 4uLL:
                    v6 = 0xE600000000000000;
                    if (v43 != 0x796772656E65)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  case 5uLL:
                    v6 = 0xE900000000000065;
                    if (v43 != 0x7461527472616568)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  case 6uLL:
                    v6 = 0xE900000000000074;
                    if (v43 != 0x6867696C68676968)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  case 7uLL:
                    v6 = 0xE900000000000079;
                    if (v43 != 0x7469736E65746E69)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  case 8uLL:
                    v6 = 0xE700000000000000;
                    v46 = 0x6E696C636E69;
LABEL_121:
                    if (v43 != (v46 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  case 9uLL:
                    v6 = 0xE300000000000000;
                    if (v43 != 7172210)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  case 0xAuLL:
                    v6 = 0xE900000000000072;
                    v45 = 0x6F74617261706573;
                    goto LABEL_115;
                  case 0xBuLL:
                    v6 = 0xE300000000000000;
                    if (v43 != 7172211)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  case 0xCuLL:
                    v6 = 0xE800000000000000;
                    if (v43 != 0x73736572676F7270)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  case 0xDuLL:
                    v6 = 0xE500000000000000;
                    if (v43 != 0x72656D6974)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_116;
                  default:
LABEL_115:
                    if (v43 != v45)
                    {
                      goto LABEL_117;
                    }

LABEL_116:
                    if (v42 == v6)
                    {

LABEL_124:
                      v48 = v59[v40];
                      v59[v40] = v48 & ~v4;
                      v13 = v62;
                      v8 = v64;
                      v6 = v14;
                      if ((v48 & v4) != 0)
                      {
                        v33 = v58 - 1;
                        if (__OFSUB__(v58, 1))
                        {
                          __break(1u);
                        }

                        if (v58 == 1)
                        {

                          v14 = MEMORY[0x277D84FA0];
                          goto LABEL_129;
                        }

                        goto LABEL_67;
                      }

                      goto LABEL_68;
                    }

LABEL_117:
                    v47 = sub_20C13DFF4();

                    if (v47)
                    {
                      goto LABEL_124;
                    }

                    v5 = (v5 + 1) & v41;
                    v40 = v5 >> 6;
                    v4 = 1 << v5;
                    v6 = v14;
                    if ((v65[v5 >> 6] & (1 << v5)) == 0)
                    {
                      v13 = v62;
                      v8 = v64;
                      goto LABEL_68;
                    }

                    break;
                }
              }
            }
          }

          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          v50 = v12;

          v64 = v50;
          if (swift_stdlib_isStackAllocationSafe())
          {

            continue;
          }

          break;
        }

        v51 = v64;
        v52 = swift_slowAlloc();
        memcpy(v52, v65, v51);
        v53 = v55;
        v14 = sub_20B6D4660(v52, v56, v5, v2, &v68);

        if (!v53)
        {

          MEMORY[0x20F2F6A40](v52, -1, -1);
          v60 = v70;
          goto LABEL_129;
        }

        result = MEMORY[0x20F2F6A40](v52, -1, -1);
        __break(1u);
        return result;
    }
  }
}

uint64_t sub_20B6D0E2C(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v65 - v9);
  v11 = sub_20C135C54();
  MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v65 - v14);
  MEMORY[0x28223BE20](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_20B520158(v30, &qword_27C76A410);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_20B6D8780(&qword_27C762F50, MEMORY[0x277D51FE0]);
    v32 = sub_20C13C7B4();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_20B6D8780(&qword_27C7640F0, MEMORY[0x277D51FE0]);
    v36 = sub_20C13C894();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_20B520158(v24, &qword_27C76A410);
        a2 = sub_20BC0FC4C(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_20C13C7B4();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_20C13C894();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_20C13C894();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_20B6D4D48(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x20F2F6A40](v63, -1, -1);
LABEL_52:
  sub_20B583EDC();
  return a2;
}

uint64_t sub_20B6D1890(uint64_t a1, uint64_t a2)
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  v78 = sub_20C135C84();
  v10 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v83 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  MEMORY[0x28223BE20](v15);
  v80 = (&v67 - v16);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v70 = v6;
  v18 = a1 + 56;
  v17 = *(a1 + 56);
  v19 = -1 << *(a1 + 32);
  v79 = ~v19;
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v71 = (63 - v19) >> 6;
  v77 = (v10 + 56);
  v76 = (v10 + 48);
  v82 = (a2 + 56);

  v23 = 0;
  v81 = a2;
  v75 = a1;
  v74 = a1 + 56;
  v67 = v9;
  for (i = v10; ; v10 = i)
  {
    v24 = v21;
    v25 = v23;
    v68 = v21;
    if (v21)
    {
LABEL_15:
      v21 = (v24 - 1) & v24;
      sub_20B6D8600(*(a1 + 48) + *(v10 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v9, MEMORY[0x277D52060]);
      v29 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v71 <= (v23 + 1) ? v23 + 1 : v71;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_56;
        }

        if (v25 >= v71)
        {
          break;
        }

        v24 = *(v18 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_15;
        }
      }

      v21 = 0;
      v29 = 1;
    }

    v30 = v78;
    v73 = *v77;
    v73(v9, v29, 1, v78);
    v84 = a1;
    v85 = v18;
    v86 = v79;
    v87 = v27;
    v88 = v21;
    v72 = *v76;
    if (v72(v9, 1, v30) == 1)
    {
      sub_20B520158(v9, &unk_27C7629B0);
      goto LABEL_51;
    }

    sub_20B6D86C8(v9, v80, MEMORY[0x277D52060]);
    sub_20C13E164();
    sub_20C135C74();
    v31 = sub_20C13E1B4();
    v32 = -1 << *(a2 + 32);
    v23 = v31 & ~v32;
    v10 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v82[v23 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_20B6D8668(v80, MEMORY[0x277D52060]);
    v23 = v27;
    a1 = v75;
    v18 = v74;
    v9 = v67;
  }

  v33 = ~v32;
  a1 = *(i + 72);
  v34 = MEMORY[0x277D52060];
  sub_20B6D8600(*(a2 + 48) + a1 * v23, v14, MEMORY[0x277D52060]);
  LODWORD(v68) = MEMORY[0x20F2ED3D0](v14, v80);
  sub_20B6D8668(v14, v34);
  if ((v68 & 1) == 0)
  {
    while (1)
    {
      v23 = (v23 + 1) & v33;
      v10 = v23 >> 6;
      a2 = v81;
      v25 = 1 << v23;
      if (((1 << v23) & v82[v23 >> 6]) == 0)
      {
        goto LABEL_6;
      }

      v35 = MEMORY[0x277D52060];
      sub_20B6D8600(*(v81 + 48) + a1 * v23, v14, MEMORY[0x277D52060]);
      v36 = MEMORY[0x20F2ED3D0](v14, v80);
      sub_20B6D8668(v14, v35);
      if (v36)
      {
        a2 = v81;
        break;
      }
    }
  }

  v37 = sub_20B6D8668(v80, MEMORY[0x277D52060]);
  v38 = *(a2 + 32);
  v18 = ((1 << v38) + 63) >> 6;
  v22 = 8 * v18;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v67 = v18;
    v68 = &v67;
    MEMORY[0x28223BE20](v37);
    v40 = &v67 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v10] & ~v25;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v10] = v41;
    v43 = v42 - 1;
    v25 = v75;
    v18 = v74;
    v23 = v70;
    v44 = v71;
LABEL_25:
    i = v43;
    while (v21)
    {
      v45 = v27;
LABEL_37:
      v48 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      sub_20B6D8600(*(v25 + 48) + (v48 | (v45 << 6)) * a1, v23, MEMORY[0x277D52060]);
      v49 = 0;
LABEL_38:
      v50 = v78;
      v73(v23, v49, 1, v78);
      v84 = v25;
      v85 = v18;
      v86 = v79;
      v87 = v27;
      v88 = v21;
      if (v72(v23, 1, v50) == 1)
      {
        sub_20B520158(v23, &unk_27C7629B0);
        a2 = sub_20BC0E464(v80, v67, i, a2);
        goto LABEL_51;
      }

      sub_20B6D86C8(v23, v83, MEMORY[0x277D52060]);
      sub_20C13E164();
      sub_20C135C74();
      v51 = sub_20C13E1B4();
      v52 = -1 << *(a2 + 32);
      v53 = v51 & ~v52;
      v54 = v53 >> 6;
      v10 = 1 << v53;
      if (((1 << v53) & v82[v53 >> 6]) == 0)
      {
        goto LABEL_26;
      }

      v55 = MEMORY[0x277D52060];
      sub_20B6D8600(*(a2 + 48) + v53 * a1, v14, MEMORY[0x277D52060]);
      v56 = MEMORY[0x20F2ED3D0](v14, v83);
      sub_20B6D8668(v14, v55);
      if ((v56 & 1) == 0)
      {
        v57 = ~v52;
        while (1)
        {
          v53 = (v53 + 1) & v57;
          v54 = v53 >> 6;
          a2 = v81;
          v10 = 1 << v53;
          if (((1 << v53) & v82[v53 >> 6]) == 0)
          {
            break;
          }

          v58 = MEMORY[0x277D52060];
          sub_20B6D8600(*(v81 + 48) + v53 * a1, v14, MEMORY[0x277D52060]);
          v59 = MEMORY[0x20F2ED3D0](v14, v83);
          sub_20B6D8668(v14, v58);
          if (v59)
          {
            goto LABEL_44;
          }
        }

LABEL_26:
        sub_20B6D8668(v83, MEMORY[0x277D52060]);
        v25 = v75;
        v18 = v74;
        v23 = v70;
        v44 = v71;
        continue;
      }

LABEL_44:
      sub_20B6D8668(v83, MEMORY[0x277D52060]);
      a2 = v81;
      v60 = v80[v54];
      v80[v54] = v60 & ~v10;
      v25 = v75;
      v18 = v74;
      v23 = v70;
      v44 = v71;
      if ((v60 & v10) != 0)
      {
        v43 = i - 1;
        if (__OFSUB__(i, 1))
        {
          __break(1u);
        }

        if (i == 1)
        {

          a2 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_25;
      }
    }

    if (v44 <= (v27 + 1))
    {
      v46 = v27 + 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v45 >= v44)
      {
        v21 = 0;
        v49 = 1;
        v27 = v47;
        goto LABEL_38;
      }

      v21 = *(v18 + 8 * v45);
      ++v27;
      if (v21)
      {
        v27 = v45;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v62 = v22;

    v80 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v63 = v80;
  v64 = swift_slowAlloc();
  memcpy(v64, v82, v63);
  sub_20B6D521C(v64, v18, a2, v23, &v84);
  v66 = v65;

  MEMORY[0x20F2F6A40](v64, -1, -1);
  v79 = v86;
  a2 = v66;
LABEL_51:
  sub_20B583EDC();
  return a2;
}

uint64_t sub_20B6D229C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v82 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B5E5C28();
    sub_20B6D8780(&qword_27C764670, sub_20B5E5C28);
    sub_20C13CFF4();
    v5 = v77;
    v7 = v78;
    v8 = v79;
    v9 = v80;
    v10 = v81;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v72 = v5;
  v73 = v7;
  v74 = v8;
  v75 = v9;
  v63 = v8;
  v14 = (v8 + 64) >> 6;
  v69 = (v4 + 56);
  v76 = v10;
  v66 = v5;
  v67 = v14;
  v65 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_20C13DB64();
      if (!v22)
      {
        goto LABEL_62;
      }

      v70 = v22;
      sub_20B5E5C28();
      swift_dynamicCast();
      v20 = v71;
      v18 = v9;
      v2 = v10;
      if (!v71)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v72 = v5;
      v73 = v7;
      v74 = v63;
      v75 = v18;
      v76 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = v20;
    v24 = sub_20C13D5E4();
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v65;
    v5 = v66;
    v14 = v67;
  }

  v3 = ~v25;
  v26 = sub_20B5E5C28();
  v27 = *(*(v4 + 48) + 8 * v7);
  v68 = v26;
  while (1)
  {
    v28 = sub_20C13D5F4();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v30 = *(v4 + 32);
  v60 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v60;
  v3 = v67;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v61 = &v59;
    MEMORY[0x28223BE20](v29);
    v32 = &v59 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v69, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = *(v4 + 16);
    v62 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v65;
    v35 = v66;
LABEL_33:
    v64 = v5;
    while (v35 < 0)
    {
      v37 = sub_20C13DB64();
      if (!v37)
      {
        goto LABEL_61;
      }

      v70 = v37;
      swift_dynamicCast();
      v38 = v71;
      if (!v71)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = sub_20C13D5E4();
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v69[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(*(v44 + 48) + 8 * v7);
          v50 = sub_20C13D5F4();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v69[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v67;

        v51 = v62[v46];
        v62[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v65;
        v35 = v66;
        v5 = v64;
        if (!v52)
        {
          v5 = v64 - 1;
          if (__OFSUB__(v64, 1))
          {
            __break(1u);
          }

          if (v64 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v65;
        v35 = v66;
        v3 = v67;
        v5 = v64;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v72 = v35;
      v73 = v36;
      v74 = v63;
      v75 = v40;
      v18 = v40;
      v76 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_20BC108EC(v62, v60, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v54 = v6;

    v55 = v54;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v69, v55);
  sub_20B6D568C(v56, v60, v4, v7, &v72);
  v58 = v57;

  MEMORY[0x20F2F6A40](v56, -1, -1);
  v4 = v58;
LABEL_62:
  sub_20B583EDC();
  return v4;
}

uint64_t sub_20B6D2924(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v65 - v9);
  v11 = sub_20C133244();
  MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v65 - v14);
  MEMORY[0x28223BE20](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 64;
  v19 = *(a1 + 64);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 64; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_20B520158(v30, &unk_27C7629C0);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_20B6D8780(&qword_27C764180, MEMORY[0x277CC9AF8]);
    v32 = sub_20C13C7B4();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_20B6D8780(&qword_27C762F98, MEMORY[0x277CC9AF8]);
    v36 = sub_20C13C894();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_20B520158(v24, &unk_27C7629C0);
        a2 = sub_20BC11130(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_20C13C7B4();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_20C13C894();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_20C13C894();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_20B6D5908(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x20F2F6A40](v63, -1, -1);
LABEL_52:
  sub_20B583EDC();
  return a2;
}

uint64_t sub_20B6D3388(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_20C13E164();

    sub_20C13CA64();
    v23 = sub_20C13E1B4();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_20C13DFF4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_20BC0FA28(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_20C13E164();

            sub_20C13CA64();
            v41 = sub_20C13E1B4();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_20C13DFF4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_20B6D5DDC(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x20F2F6A40](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_20B583EDC();
    return v5;
  }

  result = MEMORY[0x20F2F6A40](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_20B6D38F8(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x277D85DE8];
  v4 = sub_20C136594();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v49 - v8;
  MEMORY[0x28223BE20](v10);
  i = v49 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v63[0] = a1;
  v12 = *(a1 + 16);

  v51 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v53 = a1;
  v54 = a1 + ((v16 + 32) & ~v16);
  v60 = *(v14 + 56);
  v61 = v15;
  v58 = (a2 + 56);
  v59 = a2;
  v62 = v14;
  v17 = (v14 - 8);
  v50 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v55 = v13 + 1;
    v63[1] = v13 + 1;
    v61(i, v54 + v60 * v13, v4);
    v52 = sub_20B6D8780(&unk_27C764490, MEMORY[0x277D52AB0]);
    v18 = sub_20C13C7B4();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v55;
    if (v55 == v51)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v61(v9, *(v59 + 48) + v20 * v60, v4);
    sub_20B6D8780(&qword_27C763F28, MEMORY[0x277D52AB0]);
    v24 = sub_20C13C894();
    v25 = *v17;
    (*v17)(v9, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) == 0)
    {
      a2 = v59;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v59;
  v28 = *(v59 + 32);
  v49[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v49[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v49[1] = v49;
    MEMORY[0x28223BE20](v26);
    v31 = v49 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v58, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v50 = v31;
    v51 = (v32 - 1);
    v33 = *(v53 + 16);
    v34 = v55;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_20BC11988(v50, v49[0], v51, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v53 + 16))
      {
        break;
      }

      v55 = v34;
      v61(v57, v54 + v34 * v60, v4);
      v36 = sub_20C13C7B4();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v58[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v61(v9, *(v59 + 48) + v20 * v60, v4);
      v38 = sub_20C13C894();
      v25(v9, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v58[v20 >> 6]) == 0)
          {
            break;
          }

          v61(v9, *(v59 + 48) + v20 * v60, v4);
          v40 = sub_20C13C894();
          v25(v9, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v57, v4);
        v27 = v59;
LABEL_16:
        v35 = v55;
        goto LABEL_17;
      }

LABEL_25:
      v25(v57, v4);
      v41 = v50[v22];
      v50[v22] = v41 & ~v21;
      v27 = v59;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v51 - 1;
      v35 = v55;
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_33;
      }

      --v51;
      if (!v42)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v59;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v58, v45);
  sub_20B6D6014(v47, v49[0], v59, v20, v63);
  a2 = v48;

  MEMORY[0x20F2F6A40](v47, -1, -1);
LABEL_30:

  return a2;
}

void sub_20B6D3FB8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_20C138034();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
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
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
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
          sub_20B520158(v11, &qword_27C763EF8);
          v45 = v61;

          sub_20BC0D95C(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_20B6D8780(&unk_27C764140, MEMORY[0x277D53BA0]);
        v35 = sub_20C13C7B4();
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
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_20B6D8780(&qword_27C763F00, MEMORY[0x277D53BA0]);
        v43 = sub_20C13C894();
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

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_20B6D448C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_20C13E164();
    MEMORY[0x20F2F58E0](v17);
    result = sub_20C13E1B4();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (v17 == *(v22 + v19))
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (v17 == *(v22 + v19))
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_20BC0E25C(v7, a2, v9, a3);
}

uint64_t sub_20B6D4660(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v30 = result;
  v5 = 0xED000073676E6952;
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v33 = a3 + 56;
LABEL_2:
  v29 = v7;
  while (1)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (!v9)
    {
      break;
    }

    v10 = a5[3];
LABEL_9:
    v13 = *(*(*a5 + 48) + (__clz(__rbit64(v9)) | (v10 << 6)));
    a5[3] = v10;
    a5[4] = (v9 - 1) & v9;
    sub_20C13E164();
    sub_20C13CA64();

    result = sub_20C13E1B4();
    v14 = -1 << *(a3 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v33 + 8 * (v15 >> 6))) != 0)
    {
      v32 = ~v14;
      v18 = v13;
LABEL_11:
      v19 = v5;
      v20 = 0x7974697669746361;
      switch(*(*(a3 + 48) + v15))
      {
        case 1:
          v19 = 0xE700000000000000;
          v20 = 0x7261426E727562;
          break;
        case 2:
          v19 = 0xE700000000000000;
          v21 = 0x636E65646163;
          goto LABEL_25;
        case 3:
          v19 = 0xE800000000000000;
          v20 = 0x65636E6174736964;
          break;
        case 4:
          v19 = 0xE600000000000000;
          v20 = 0x796772656E65;
          break;
        case 5:
          v20 = 0x7461527472616568;
          v19 = 0xE900000000000065;
          break;
        case 6:
          v19 = 0xE900000000000074;
          v20 = 0x6867696C68676968;
          break;
        case 7:
          v19 = 0xE900000000000079;
          v20 = 0x7469736E65746E69;
          break;
        case 8:
          v19 = 0xE700000000000000;
          v21 = 0x6E696C636E69;
LABEL_25:
          v20 = v21 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 9:
          v19 = 0xE300000000000000;
          v20 = 7172210;
          break;
        case 0xA:
          v19 = 0xE900000000000072;
          v20 = 0x6F74617261706573;
          break;
        case 0xB:
          v20 = 7172211;
          v19 = 0xE300000000000000;
          break;
        case 0xC:
          v19 = 0xE800000000000000;
          v20 = 0x73736572676F7270;
          break;
        case 0xD:
          v19 = 0xE500000000000000;
          v20 = 0x72656D6974;
          break;
        default:
          break;
      }

      v22 = 0x7974697669746361;
      v23 = v5;
      switch(v18)
      {
        case 1:
          v5 = 0xE700000000000000;
          if (v20 == 0x7261426E727562)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        case 2:
          v5 = 0xE700000000000000;
          v24 = 0x636E65646163;
          goto LABEL_55;
        case 3:
          v5 = 0xE800000000000000;
          if (v20 != 0x65636E6174736964)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 4:
          v5 = 0xE600000000000000;
          if (v20 != 0x796772656E65)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 5:
          v5 = 0xE900000000000065;
          if (v20 != 0x7461527472616568)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 6:
          v5 = 0xE900000000000074;
          if (v20 != 0x6867696C68676968)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 7:
          v5 = 0xE900000000000079;
          if (v20 != 0x7469736E65746E69)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 8:
          v5 = 0xE700000000000000;
          v24 = 0x6E696C636E69;
LABEL_55:
          if (v20 != (v24 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 9:
          v5 = 0xE300000000000000;
          if (v20 != 7172210)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 10:
          v5 = 0xE900000000000072;
          v22 = 0x6F74617261706573;
          goto LABEL_49;
        case 11:
          v5 = 0xE300000000000000;
          if (v20 != 7172211)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 12:
          v5 = 0xE800000000000000;
          if (v20 != 0x73736572676F7270)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 13:
          v5 = 0xE500000000000000;
          if (v20 != 0x72656D6974)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        default:
LABEL_49:
          if (v20 != v22)
          {
            goto LABEL_51;
          }

LABEL_50:
          if (v19 != v5)
          {
LABEL_51:
            v25 = sub_20C13DFF4();

            if (v25)
            {
              goto LABEL_58;
            }

            v15 = (v15 + 1) & v32;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            v5 = v23;
            if ((*(v33 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
            {
              continue;
            }

            goto LABEL_11;
          }

LABEL_58:
          v26 = v30[v16];
          v30[v16] = v26 & ~v17;
          v5 = v23;
          if ((v26 & v17) == 0)
          {
            continue;
          }

          v7 = v29 - 1;
          if (__OFSUB__(v29, 1))
          {
LABEL_67:
            __break(1u);
            return result;
          }

          if (v29 == 1)
          {
            return MEMORY[0x277D84FA0];
          }

          break;
      }

      goto LABEL_2;
    }
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (v11 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (a5[2] + 64) >> 6;
  }

  a5[3] = v27 - 1;
  a5[4] = 0;

  return sub_20BC0EA58(v30, a2, v29, a3);
}

void sub_20B6D4D48(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_20C135C54();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
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
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
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
          sub_20B520158(v11, &qword_27C76A410);
          v45 = v61;

          sub_20BC0FC4C(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_20B6D8780(&qword_27C762F50, MEMORY[0x277D51FE0]);
        v35 = sub_20C13C7B4();
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
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_20B6D8780(&qword_27C7640F0, MEMORY[0x277D51FE0]);
        v43 = sub_20C13C894();
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

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_20B6D521C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v49 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v55 = sub_20C135C84();
  MEMORY[0x28223BE20](v55);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v48 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v51 = a1;
  v52 = v11;
  *(a1 + v17) = v18;
  v19 = v11;
  v20 = v16 - 1;
  v53 = (v21 + 48);
  v54 = (v21 + 56);
  v58 = a3;
  v56 = v21;
  v57 = a3 + 56;
  while (2)
  {
    v50 = v20;
    do
    {
      while (1)
      {
        v22 = *a5;
        v23 = a5[1];
        v25 = a5[2];
        v24 = a5[3];
        v26 = a5[4];
        if (!v26)
        {
          v28 = (v25 + 64) >> 6;
          if (v28 <= v24 + 1)
          {
            v29 = v24 + 1;
          }

          else
          {
            v29 = (v25 + 64) >> 6;
          }

          v30 = v29 - 1;
          while (1)
          {
            v27 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v27 >= v28)
            {
              v31 = 0;
              v32 = 1;
              goto LABEL_14;
            }

            v26 = *(v23 + 8 * v27);
            ++v24;
            if (v26)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

        v27 = a5[3];
LABEL_13:
        v31 = (v26 - 1) & v26;
        sub_20B6D8600(*(v22 + 48) + *(v56 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v19, MEMORY[0x277D52060]);
        v32 = 0;
        v30 = v27;
LABEL_14:
        v33 = v55;
        (*v54)(v19, v32, 1, v55);
        *a5 = v22;
        a5[1] = v23;
        a5[2] = v25;
        a5[3] = v30;
        a5[4] = v31;
        if ((*v53)(v19, 1, v33) == 1)
        {
          sub_20B520158(v19, &unk_27C7629B0);
          v47 = v58;

          sub_20BC0E464(v51, v49, v50, v47);
          return;
        }

        sub_20B6D86C8(v19, v59, MEMORY[0x277D52060]);
        v34 = v58;
        sub_20C13E164();
        sub_20C135C74();
        v35 = sub_20C13E1B4();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v57 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_20B6D8668(v59, MEMORY[0x277D52060]);
        v19 = v52;
      }

      v40 = *(v56 + 72);
      v41 = MEMORY[0x277D52060];
      sub_20B6D8600(*(v58 + 48) + v40 * v37, v13, MEMORY[0x277D52060]);
      v42 = MEMORY[0x20F2ED3D0](v13, v59);
      sub_20B6D8668(v13, v41);
      if ((v42 & 1) == 0)
      {
        v43 = ~v36;
        do
        {
          v37 = (v37 + 1) & v43;
          v38 = v37 >> 6;
          v39 = 1 << v37;
          if (((1 << v37) & *(v57 + 8 * (v37 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v44 = MEMORY[0x277D52060];
          sub_20B6D8600(*(v58 + 48) + v40 * v37, v13, MEMORY[0x277D52060]);
          v45 = MEMORY[0x20F2ED3D0](v13, v59);
          sub_20B6D8668(v13, v44);
        }

        while ((v45 & 1) == 0);
      }

      sub_20B6D8668(v59, MEMORY[0x277D52060]);
      v19 = v52;
      v46 = v51[v38];
      v51[v38] = v46 & ~v39;
    }

    while ((v46 & v39) == 0);
    v20 = v50 - 1;
    if (__OFSUB__(v50, 1))
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (v50 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_20B6D568C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_20C13DB64())
          {
            goto LABEL_30;
          }

          sub_20B5E5C28();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_20BC108EC(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_20C13D5E4();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_20B5E5C28();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_20C13D5F4();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_20C13D5F4();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_20B6D5908(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_20C133244();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
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
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
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
          sub_20B520158(v11, &unk_27C7629C0);
          v45 = v61;

          sub_20BC11130(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_20B6D8780(&qword_27C764180, MEMORY[0x277CC9AF8]);
        v35 = sub_20C13C7B4();
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
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_20B6D8780(&qword_27C762F98, MEMORY[0x277CC9AF8]);
        v43 = sub_20C13C894();
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

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_20B6D5DDC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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
              goto LABEL_30;
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

          return sub_20BC0FA28(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_20C13E164();

        sub_20C13CA64();
        v19 = sub_20C13E1B4();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_20C13DFF4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
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

void sub_20B6D6014(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_20C136594();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v35 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    sub_20BC11988(v36, v35, v37, a3);
    return;
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9, v16);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_20B6D8780(&unk_27C764490, MEMORY[0x277D52AB0]);
    v25 = sub_20C13C7B4();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_5:
      v22(v48, v9);
      goto LABEL_6;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      (v44)(v12, *(v30 + 48) + v27 * v45, v9);
      sub_20B6D8780(&qword_27C763F28, MEMORY[0x277D52AB0]);
      v32 = sub_20C13C894();
      v22 = *v47;
      (*v47)(v12, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_5;
      }
    }

    v22(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_6:
      v10 = v41;
      goto LABEL_7;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_20;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return;
    }

LABEL_7:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_20B6D6420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20B6D6490(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a2;
  v61 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270);
  MEMORY[0x28223BE20](v71);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v59 - v14;
  v81 = sub_20C135C54();
  v16 = MEMORY[0x28223BE20](v81);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v73 = a3;
  v20 = *(a3 + 64);
  v64 = a3 + 64;
  v21 = v12;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v62 = 0;
  v63 = (v22 + 63) >> 6;
  v66 = v15 + 16;
  v67 = v12 + 8;
  v68 = v18;
  v69 = v15;
  v78 = (v15 + 8);
  v72 = a4;
  v74 = v10;
  v70 = v12;
  while (v24)
  {
    v25 = v21;
    v26 = __clz(__rbit64(v24));
    v77 = (v24 - 1) & v24;
LABEL_11:
    v29 = v26 | (v19 << 6);
    v30 = v73;
    v31 = *(v69 + 16);
    v32 = v81;
    v31(v18, v73[6] + *(v69 + 72) * v29, v81, v16);
    v33 = v30[7];
    v65 = v29;
    v34 = (v33 + 16 * v29);
    v36 = *v34;
    v35 = v34[1];
    v37 = v79;
    (v31)(v79, v18, v32);
    v38 = (v37 + *(v71 + 48));
    *v38 = v36;
    v38[1] = v35;
    v39 = v37;
    v40 = v25;
    sub_20B52F9E8(v39, v25, &unk_27C772270);
    v76 = v35;
    swift_bridgeObjectRetain_n();

    v41 = v72;
    if (*(v72 + 16) && (v42 = sub_20B65B0BC(v40), (v43 & 1) != 0))
    {
      v44 = v42;
      v45 = *(v41 + 56);
      v46 = sub_20C136104();
      v47 = *(v46 - 8);
      v48 = v47;
      v49 = v45 + *(v47 + 72) * v44;
      v50 = v74;
      (*(v47 + 16))(v74, v49, v46);
      (*(v48 + 56))(v50, 0, 1, v46);
    }

    else
    {
      v46 = sub_20C136104();
      v50 = v74;
      (*(*(v46 - 8) + 56))(v74, 1, 1, v46);
    }

    v75 = *v78;
    v75(v40, v81);
    v51 = v80;
    sub_20B52F9E8(v50, v80, &qword_27C763EA0);
    sub_20C136104();
    v52 = *(v46 - 8);
    v53 = *(v52 + 48);
    if (v53(v51, 1, v46) == 1)
    {
      sub_20B520158(v79, &unk_27C772270);
      sub_20B520158(v80, &qword_27C763EA0);
      v54 = 1;
    }

    else
    {
      v55 = v80;
      v56 = sub_20C1360F4();
      sub_20B520158(v79, &unk_27C772270);
      (*(v52 + 8))(v55, v46);
      v54 = v56 ^ 1;
      v50 = v74;
    }

    v57 = v53(v50, 1, v46);
    sub_20B520158(v50, &qword_27C763EA0);

    v18 = v68;
    v75(v68, v81);
    v21 = v70;
    v24 = v77;
    if (v57 == 1 || (v54 & 1) != 0)
    {
      *(v61 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
      if (__OFADD__(v62++, 1))
      {
        __break(1u);
LABEL_23:
        sub_20B6CDEC4(v61, v60, v62, v73);
        return;
      }
    }
  }

  v27 = v19;
  while (1)
  {
    v19 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v19 >= v63)
    {
      goto LABEL_23;
    }

    v28 = *(v64 + 8 * v19);
    ++v27;
    if (v28)
    {
      v25 = v21;
      v26 = __clz(__rbit64(v28));
      v77 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20B6D6ABC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20B6D6B70(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v56 = a4;
  v57 = a5;
  v46 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270);
  MEMORY[0x28223BE20](v55);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v45 - v9;
  v10 = sub_20C135C54();
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0;
  v58 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v48 = (v21 + 63) >> 6;
  v49 = v19;
  v53 = v12 + 16;
  v54 = v12;
  v51 = v15;
  v52 = (v12 + 8);
  while (2)
  {
    v47 = v16;
    while (1)
    {
      v24 = v11;
      if (!v23)
      {
        v27 = v17;
        v26 = v59;
        while (1)
        {
          v17 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v17 >= v48)
          {
            goto LABEL_22;
          }

          v28 = v49[v17];
          ++v27;
          if (v28)
          {
            v60 = (v28 - 1) & v28;
            v25 = __clz(__rbit64(v28)) | (v17 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        return;
      }

      v60 = (v23 - 1) & v23;
      v25 = __clz(__rbit64(v23)) | (v17 << 6);
      v26 = v59;
LABEL_12:
      v29 = v58;
      v30 = *(v54 + 16);
      v30(v15, v58[6] + *(v54 + 72) * v25, v11, v13);
      v31 = v29[7];
      v50 = v25;
      v32 = (v31 + 16 * v25);
      v34 = *v32;
      v33 = v32[1];
      (v30)(v26, v15, v24);
      v35 = (v26 + *(v55 + 48));
      *v35 = v34;
      v35[1] = v33;
      sub_20B52F9E8(v26, v7, &unk_27C772270);
      swift_bridgeObjectRetain_n();
      v36 = sub_20C1367E4();
      v38 = v37;

      if (v36 == v56 && v38 == v57)
      {
        break;
      }

      v40 = sub_20C13DFF4();

      sub_20B520158(v26, &unk_27C772270);
      v41 = *v52;
      (*v52)(v7, v24);

      v15 = v51;
      v41(v51, v24);
      v11 = v24;
      v23 = v60;
      if (v40)
      {
        goto LABEL_19;
      }
    }

    sub_20B520158(v26, &unk_27C772270);
    v42 = *v52;
    (*v52)(v7, v24);

    v15 = v51;
    v42(v51, v24);
    v11 = v24;
    v23 = v60;
LABEL_19:
    v43 = v47;
    *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
    v44 = __OFADD__(v43, 1);
    v16 = v43 + 1;
    if (!v44)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_22:
  sub_20B6CDEC4(v46, v45, v47, v58);
}

void sub_20B6D6F58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v49 = a2;
  v50 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E60);
  MEMORY[0x28223BE20](v61);
  v72 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v71 = sub_20C136104();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20C135C54();
  v14 = MEMORY[0x28223BE20](v67);
  v66 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v62 = a3;
  v17 = *(a3 + 64);
  v53 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v51 = 0;
  v52 = (v18 + 63) >> 6;
  v57 = v11 + 2;
  v58 = v13 + 16;
  v69 = v11;
  v70 = v10;
  v59 = v13;
  v60 = a4;
  v55 = (v13 + 8);
  v56 = v11 + 1;
  while (v20)
  {
    v24 = __clz(__rbit64(v20));
    v65 = (v20 - 1) & v20;
LABEL_12:
    v27 = v24 | (v16 << 6);
    v28 = v62;
    v29 = *(v59 + 16);
    v30 = v66;
    v31 = v67;
    v29(v66, v62[6] + *(v59 + 72) * v27, v67, v14);
    v32 = v28[7];
    v33 = v68;
    v34 = v69[9];
    v54 = v27;
    v64 = v69[2];
    v35 = v71;
    v64(v68, v32 + v34 * v27, v71);
    v36 = v70;
    (v29)(v70, v30, v31);
    v37 = v61;
    v38 = v35;
    v64((v36 + *(v61 + 48)), v33, v35);
    v39 = v72;
    sub_20B52F9E8(v36, v72, &qword_27C763E60);
    v40 = *(v37 + 48);
    v41 = sub_20C1360D4();
    v43 = v42;
    v44 = v69[1];
    v44(v39 + v40, v38);
    if (v41 == v60 && v43 == v63)
    {

      sub_20B520158(v70, &qword_27C763E60);
      v45 = *v55;
      v46 = v67;
      (*v55)(v72, v67);
      v44(v68, v71);
      v45(v66, v46);
      v20 = v65;
      goto LABEL_15;
    }

    v21 = sub_20C13DFF4();

    sub_20B520158(v70, &qword_27C763E60);
    v22 = *v55;
    v23 = v67;
    (*v55)(v72, v67);
    v44(v68, v71);
    v22(v66, v23);
    v20 = v65;
    if (v21)
    {
LABEL_15:
      *(v50 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      if (__OFADD__(v51++, 1))
      {
        __break(1u);
LABEL_18:
        sub_20B6CDA20(v50, v49, v51, v62);
        return;
      }
    }
  }

  v25 = v16;
  while (1)
  {
    v16 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v16 >= v52)
    {
      goto LABEL_18;
    }

    v26 = *(v53 + 8 * v16);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v65 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_20B6D7460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v19[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v16 = sub_20B6C9154(v18, v13, a1, a2, a3, a5);
      MEMORY[0x20F2F6A40](v18, -1, -1);
      swift_bridgeObjectRelease_n();
      return v16;
    }
  }

  MEMORY[0x28223BE20](v15);
  bzero(v19 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);

  v16 = a4(v19 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3);

  if (v5)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v16;
}

void sub_20B6D7644(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v34 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270);
  MEMORY[0x28223BE20](v42);
  v7 = &v33 - v6;
  v8 = sub_20C135C54();
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v43 = a3;
  v14 = *(a3 + 64);
  v37 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v35 = 0;
  v36 = (v15 + 63) >> 6;
  v40 = v9 + 16;
  v41 = v9;
  v39 = (v9 + 8);
  while (v17)
  {
    v18 = __clz(__rbit64(v17));
    v44 = (v17 - 1) & v17;
LABEL_11:
    v21 = v18 | (v13 << 6);
    v22 = v43;
    v23 = *(v41 + 16);
    v23(v12, v43[6] + *(v41 + 72) * v21, v8, v10);
    v24 = v22[7];
    v38 = v21;
    v25 = (v24 + 16 * v21);
    v26 = *v25;
    v27 = v25[1];
    (v23)(v7, v12, v8);
    v28 = &v7[*(v42 + 48)];
    *v28 = v26;
    *(v28 + 1) = v27;
    v29 = *(a4 + 16);
    swift_bridgeObjectRetain_n();
    if (v29)
    {
      sub_20B65B0BC(v7);
      v31 = v30;
      sub_20B520158(v7, &unk_27C772270);

      (*v39)(v12, v8);
      v17 = v44;
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_20B520158(v7, &unk_27C772270);

      (*v39)(v12, v8);
      v17 = v44;
LABEL_15:
      *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_18:
        sub_20B6CDEC4(v34, v33, v35, v43);
        return;
      }
    }
  }

  v19 = v13;
  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v36)
    {
      goto LABEL_18;
    }

    v20 = *(v37 + 8 * v13);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_20B6D7960(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_20B6C9208(v16, v11, a1, a2, a4);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  MEMORY[0x28223BE20](v13);
  bzero(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

void sub_20B6D7B30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v44 = a1;
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v41 - v11;
  v12 = sub_20C137374();
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v54 = a3;
  v19 = *(a3 + 56);
  v45 = a3 + 56;
  v46 = 0;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v57 = a4 + 56;
  v56 = v7 + 16;
  v43 = v7;
  v58 = (v7 + 8);
  v59 = a4;
  v52 = v14;
  v53 = v13;
  v48 = (v14 + 8);
  v49 = v14 + 16;
  v50 = v23;
  v51 = v17;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v55 = (v22 - 1) & v22;
LABEL_13:
    v27 = v24 | (v18 << 6);
    v28 = *(v54 + 48);
    v29 = *(v52 + 72);
    v47 = v27;
    (*(v52 + 16))(v17, v28 + v29 * v27, v12, v15);
    sub_20C1372B4();
    if (*(v59 + 16) && (v30 = v59, sub_20B6D8780(&qword_27C7675A0, MEMORY[0x277CC95F0]), v31 = sub_20C13C7B4(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v57 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      v35 = *(v43 + 72);
      v36 = *(v43 + 16);
      while (1)
      {
        v36(v9, *(v59 + 48) + v35 * v33, v6);
        sub_20B6D8780(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v37 = sub_20C13C894();
        v38 = *v58;
        (*v58)(v9, v6);
        if (v37)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v57 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v38(v60, v6);
      v17 = v51;
      v12 = v53;
      (*v48)(v51, v53);
      *(v44 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v39 = __OFADD__(v46++, 1);
      v23 = v50;
      v22 = v55;
      if (v39)
      {
        __break(1u);
LABEL_22:
        v40 = v54;

        sub_20BC1029C(v44, v42, v46, v40);
        return;
      }
    }

    else
    {
LABEL_5:
      (*v58)(v60, v6);
      v17 = v51;
      v12 = v53;
      (*v48)(v51, v53);
      v23 = v50;
      v22 = v55;
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_22;
    }

    v26 = *(v45 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v55 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20B6D7FD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = *MEMORY[0x277D85DE8];
  v60 = sub_20C132EE4();
  v6 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = v40 - v9;
  v10 = sub_20C137374();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v14 = v12 & 0x3F;
  v41 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v41;

  if (v14 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();

      v37 = sub_20B6C9208(v39, v41, a1, a2, sub_20B6D7B30);

      MEMORY[0x20F2F6A40](v39, -1, -1);

      return v37;
    }
  }

  v40[2] = v3;
  v40[1] = v40;
  MEMORY[0x28223BE20](v16);
  v43 = v40 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v43, v15);
  v17 = 0;
  v3 = 0;
  v53 = a1;
  v19 = *(a1 + 56);
  a1 += 56;
  v18 = v19;
  v44 = a1;
  v20 = 1 << *(a1 - 24);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v58 = a2 + 56;
  v56 = v6 + 16;
  v42 = v6;
  v59 = (v6 + 8);
  v51 = v10;
  v52 = v11;
  v47 = v11 + 16;
  v48 = (v11 + 8);
  v49 = v23;
  v50 = v13;
  while (2)
  {
    v45 = v17;
    while (1)
    {
      v24 = v53;
      if (!v22)
      {
        v26 = v3;
        while (1)
        {
          v3 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v3 >= v23)
          {
            goto LABEL_24;
          }

          v27 = *(v44 + 8 * v3);
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v54 = (v27 - 1) & v27;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v25 = __clz(__rbit64(v22));
      v54 = (v22 - 1) & v22;
LABEL_15:
      v28 = v25 | (v3 << 6);
      v29 = *(v53 + 48);
      v30 = *(v52 + 72);
      v46 = v28;
      (*(v52 + 16))(v13, v29 + v30 * v28, v10);
      v15 = v13;
      sub_20C1372B4();
      if (*(a2 + 16))
      {
        sub_20B6D8780(&qword_27C7675A0, MEMORY[0x277CC95F0]);
        v15 = v61;
        v31 = sub_20C13C7B4();
        v32 = -1 << *(a2 + 32);
        v6 = v31 & ~v32;
        if ((*(v58 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          break;
        }
      }

LABEL_7:
      (*v59)(v61, v60);
      v13 = v50;
      v10 = v51;
      (*v48)(v50, v51);
      v23 = v49;
      v22 = v54;
    }

    v55 = ~v32;
    v11 = *(v42 + 72);
    v33 = *(v42 + 16);
    while (1)
    {
      v34 = a2;
      v35 = v57;
      v15 = v60;
      v33(v57, *(a2 + 48) + v11 * v6, v60);
      sub_20B6D8780(&qword_27C7641A0, MEMORY[0x277CC95F0]);
      a1 = sub_20C13C894();
      v36 = *v59;
      (*v59)(v35, v15);
      if (a1)
      {
        break;
      }

      v6 = (v6 + 1) & v55;
      a2 = v34;
      if (((*(v58 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v36(v61, v60);
    v13 = v50;
    v10 = v51;
    (*v48)(v50, v51);
    *&v43[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
    v17 = v45 + 1;
    a2 = v34;
    v23 = v49;
    v22 = v54;
    if (!__OFADD__(v45, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v37 = sub_20BC1029C(v43, v41, v45, v24);

  return v37;
}

uint64_t sub_20B6D8600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B6D8668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B6D86C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B6D8730(uint64_t result, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return sub_20B6D8740(result, a2, a3 & 0x7F);
  }

  return result;
}

uint64_t sub_20B6D8740(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_20B6D8758(uint64_t result, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return sub_20B6D8768(result, a2, a3 & 0x7F);
  }

  return result;
}

uint64_t sub_20B6D8768(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_20B6D8780(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20B6D8838(uint64_t a1, double *a2)
{
  v3 = [objc_opt_self() mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  Width = CGRectGetWidth(v16);
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  Height = CGRectGetHeight(v17);
  if (Height >= Width)
  {
    Height = Width;
  }

  v14 = Height < 375.0;
  v15 = 20.0;
  if (v14)
  {
    v15 = 16.0;
  }

  *a2 = v15;
}

id sub_20B6D8918(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() fixedSpacing_];
  *a3 = result;
  return result;
}

double sub_20B6D896C()
{
  if (qword_27C7606C8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C799F38;
  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C799F40;
  if (qword_27C7606D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27C799F48;
  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  result = *&qword_27C799F50;
  *&xmmword_27C799F60 = v0;
  *(&xmmword_27C799F60 + 1) = v1;
  qword_27C799F70 = v2;
  unk_27C799F78 = qword_27C799F50;
  return result;
}

unint64_t sub_20B6D8A94()
{
  result = qword_27C763F38;
  if (!qword_27C763F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763F38);
  }

  return result;
}

uint64_t sub_20B6D8AE8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);

  __swift_destroy_boxed_opaque_existential_1(v0 + 336);
  v1 = OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_metricPageCategory;
  v2 = sub_20C1352F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_metricPage;
  v4 = sub_20C1333A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_20B58CFC4(v0 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_configuration);
  return v0;
}

uint64_t sub_20B6D8C48()
{
  sub_20B6D8AE8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVLibraryGalleryDataProvider()
{
  result = qword_27C763F40;
  if (!qword_27C763F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B6D8CF4()
{
  sub_20C1352F4();
  if (v0 <= 0x3F)
  {
    sub_20C1333A4();
    if (v1 <= 0x3F)
    {
      sub_20B524ACC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20B6D8E64@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_20B6D8EE0()
{
  if ((*(*v0 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_activationState) & 1) == 0)
  {
    *(*v0 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_activationState) = 1;
  }
}

uint64_t sub_20B6D9020@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_configuration;
  swift_beginAccess();
  return sub_20B58C2DC(v1 + v3, a1);
}

uint64_t sub_20B6D9078(uint64_t a1, char a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v10 = v9;
  v217 = a8;
  v229 = a7;
  v219 = a4;
  v220 = a5;
  LODWORD(v218) = a3;
  *&v216 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v13 - 8);
  v228 = v215 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v15 - 8);
  v227 = v215 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v17 - 8);
  v226 = v215 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v19 - 8);
  v223 = v215 - v20;
  v21 = sub_20C1333A4();
  v224 = *(v21 - 8);
  v225 = v21;
  MEMORY[0x28223BE20](v21);
  v221 = v215 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v23 - 8);
  v215[1] = v215 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_activationState) = 0;
  v25 = MEMORY[0x277D84FA0];
  *(v9 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v9 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_bookmarks) = v25;
  *(v9 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_playlists) = v25;
  *(v9 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_resumableSessions) = v25;
  *(v9 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v26 = OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_configuration;
  v27 = sub_20C134104();
  (*(*(v27 - 8) + 56))(v10 + v26, 1, 1, v27);
  *(v10 + 224) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(&v249, v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v249, v10 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v249, v10 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v249, v10 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v249, v10 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v10 + 232) = v249;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v249, v10 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v249, v10 + 288);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v10 + 328) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  v222 = v10;
  sub_20B51C710(&v249, v10 + 336);
  switch(a2)
  {
    case 0:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_20C14F320;
      type metadata accessor for TVLibraryGalleryHeaderShelf();
      v88 = swift_allocObject();
      *(v88 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v89 = v88 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row;
      sub_20B5D8060(&v249);
      v90 = v254;
      *(v89 + 64) = v253;
      *(v89 + 80) = v90;
      *(v89 + 160) = v259;
      v91 = v258;
      *(v89 + 128) = v257;
      *(v89 + 144) = v91;
      v92 = v256;
      *(v89 + 96) = v255;
      *(v89 + 112) = v92;
      v93 = v250;
      *v89 = v249;
      *(v89 + 16) = v93;
      v94 = v252;
      *(v89 + 32) = v251;
      *(v89 + 48) = v94;
      v95 = (v88 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_title);
      v96 = v216;
      *v95 = v217;
      v95[1] = v96;
      *(v87 + 32) = v88;
      *(v87 + 40) = &off_2822B5D38;
      type metadata accessor for BookmarkGalleryShelf();
      swift_allocObject();

      v97 = sub_20C00F060(1, a1, v218, v219, v220);

      *(v87 + 48) = v97;
      *(v87 + 56) = &off_2822FFBE8;
      LODWORD(v220) = sub_20C1380F4();
      v98 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
      v219 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v98 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

      sub_20C13C734();
      v99 = sub_20C13C724();
      v100 = type metadata accessor for CatalogPageImpressionTracker();
      v101 = swift_allocObject();
      sub_20C13C714();

      sub_20C13C6B4();
      v102 = MEMORY[0x277D221C0];
      v101[2] = sub_20C13C6D4();
      v101[3] = v99;
      v101[4] = v102;
      v247 = v100;
      v103 = sub_20B63EE48();
      v248 = v103;
      v246[0] = v101;
      v104 = type metadata accessor for MetricLocationStore();
      v105 = swift_allocObject();
      v106 = MEMORY[0x277D84F98];
      v107 = MEMORY[0x277D84F90];
      *(v105 + 16) = MEMORY[0x277D84F90];
      *(v105 + 24) = v106;
      v108 = __swift_mutable_project_boxed_opaque_existential_1(v246, v100);
      v218 = v215;
      v109 = MEMORY[0x28223BE20](v108);
      v111 = (v215 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v112 + 16))(v111, v109);
      v113 = *v111;
      v217 = v103;
      v244 = v100;
      v245 = v103;
      v243[0] = v113;
      v241 = v104;
      v242 = &off_2822B6968;
      v240[0] = v105;
      v238[0] = v107;
      sub_20BB5D394(0, 2, 0);
      v114 = v238[0];
      v115 = *(v238[0] + 16);
      v116 = *(v238[0] + 24);
      v216 = *(v87 + 32);
      swift_unknownObjectRetain();
      if (v115 >= v116 >> 1)
      {
        sub_20BB5D394((v116 > 1), v115 + 1, 1);
        v114 = v238[0];
      }

      *(v114 + 16) = v115 + 1;
      v117 = v114 + 24 * v115;
      *(v117 + 32) = v216;
      *(v117 + 48) = 0;
      swift_unknownObjectRetain();

      v119 = *(v114 + 16);
      v118 = *(v114 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_20BB5D394((v118 > 1), v119 + 1, 1);
        v114 = v238[0];
      }

      *(v114 + 16) = v119 + 1;
      v120 = v114 + 24 * v119;
      *(v120 + 32) = v97;
      *(v120 + 40) = &off_2822FFBE8;
      *(v120 + 48) = 0;
      sub_20B51CC64(v243, v238);
      sub_20B51CC64(v240, v236);
      v121 = __swift_mutable_project_boxed_opaque_existential_1(v238, v239);
      *&v216 = v215;
      v122 = MEMORY[0x28223BE20](v121);
      v124 = (v215 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v125 + 16))(v124, v122);
      v126 = __swift_mutable_project_boxed_opaque_existential_1(v236, v237);
      v127 = MEMORY[0x28223BE20](v126);
      v129 = (v215 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v130 + 16))(v129, v127);
      v131 = *v124;
      v132 = *v129;
      v234 = v100;
      v235 = v217;
      v233[0] = v131;
      v231 = v104;
      v232 = &off_2822B6968;
      v230[0] = v132;
      v133 = objc_allocWithZone(type metadata accessor for CatalogPage());
      v134 = __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
      v135 = MEMORY[0x28223BE20](v134);
      v137 = (v215 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v138 + 16))(v137, v135);
      v139 = __swift_mutable_project_boxed_opaque_existential_1(v230, v231);
      v140 = MEMORY[0x28223BE20](v139);
      v142 = (v215 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v143 + 16))(v142, v140);
      v86 = sub_20BE3AA74(0x756F6B726F57794DLL, 0xEA00000000007374, v114, v220, v219, *v137, *v142, 2, v133);
      goto LABEL_19;
    case 8:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_20C14F320;
      type metadata accessor for TVLibraryGalleryHeaderShelf();
      v29 = swift_allocObject();
      *(v29 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v30 = v29 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row;
      sub_20B5D8060(&v249);
      v31 = v254;
      *(v30 + 64) = v253;
      *(v30 + 80) = v31;
      *(v30 + 160) = v259;
      v32 = v258;
      *(v30 + 128) = v257;
      *(v30 + 144) = v32;
      v33 = v256;
      *(v30 + 96) = v255;
      *(v30 + 112) = v33;
      v34 = v250;
      *v30 = v249;
      *(v30 + 16) = v34;
      v35 = v252;
      *(v30 + 32) = v251;
      *(v30 + 48) = v35;
      v36 = (v29 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_title);
      v37 = v216;
      *v36 = v217;
      v36[1] = v37;
      *(v28 + 32) = v29;
      *(v28 + 40) = &off_2822B5D38;
      type metadata accessor for PlaylistGalleryShelf();
      swift_allocObject();

      v39 = sub_20BCAAF48(v38, v218, v219, v220);

      *(v28 + 48) = v39;
      *(v28 + 56) = &off_2822DB810;
      LODWORD(v220) = sub_20C1380F4();
      v40 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
      v219 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v40 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

      sub_20C13C734();
      v41 = sub_20C13C724();
      v42 = type metadata accessor for CatalogPageImpressionTracker();
      v43 = swift_allocObject();
      sub_20C13C714();

      sub_20C13C6B4();
      v44 = MEMORY[0x277D221C0];
      v43[2] = sub_20C13C6D4();
      v43[3] = v41;
      v43[4] = v44;
      v247 = v42;
      v45 = sub_20B63EE48();
      v248 = v45;
      v246[0] = v43;
      v46 = type metadata accessor for MetricLocationStore();
      v47 = swift_allocObject();
      v48 = MEMORY[0x277D84F98];
      v49 = MEMORY[0x277D84F90];
      *(v47 + 16) = MEMORY[0x277D84F90];
      *(v47 + 24) = v48;
      v50 = __swift_mutable_project_boxed_opaque_existential_1(v246, v42);
      v218 = v215;
      v51 = MEMORY[0x28223BE20](v50);
      v53 = (v215 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v54 + 16))(v53, v51);
      v55 = *v53;
      v217 = v45;
      v244 = v42;
      v245 = v45;
      v243[0] = v55;
      v241 = v46;
      v242 = &off_2822B6968;
      v240[0] = v47;
      v238[0] = v49;
      sub_20BB5D394(0, 2, 0);
      v56 = v238[0];
      v57 = *(v238[0] + 16);
      v58 = *(v238[0] + 24);
      v216 = *(v28 + 32);
      swift_unknownObjectRetain();
      if (v57 >= v58 >> 1)
      {
        sub_20BB5D394((v58 > 1), v57 + 1, 1);
        v56 = v238[0];
      }

      *(v56 + 16) = v57 + 1;
      v59 = v56 + 24 * v57;
      *(v59 + 32) = v216;
      *(v59 + 48) = 0;
      swift_unknownObjectRetain();

      v61 = *(v56 + 16);
      v60 = *(v56 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_20BB5D394((v60 > 1), v61 + 1, 1);
        v56 = v238[0];
      }

      *(v56 + 16) = v61 + 1;
      v62 = v56 + 24 * v61;
      *(v62 + 32) = v39;
      *(v62 + 40) = &off_2822DB810;
      *(v62 + 48) = 0;
      sub_20B51CC64(v243, v238);
      sub_20B51CC64(v240, v236);
      v63 = __swift_mutable_project_boxed_opaque_existential_1(v238, v239);
      *&v216 = v215;
      v64 = MEMORY[0x28223BE20](v63);
      v66 = (v215 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v67 + 16))(v66, v64);
      v68 = __swift_mutable_project_boxed_opaque_existential_1(v236, v237);
      v69 = MEMORY[0x28223BE20](v68);
      v71 = (v215 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v72 + 16))(v71, v69);
      v73 = *v66;
      v74 = *v71;
      v234 = v42;
      v235 = v217;
      v233[0] = v73;
      v231 = v46;
      v232 = &off_2822B6968;
      v230[0] = v74;
      v75 = objc_allocWithZone(type metadata accessor for CatalogPage());
      v76 = __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
      v77 = MEMORY[0x28223BE20](v76);
      v79 = (v215 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v80 + 16))(v79, v77);
      v81 = __swift_mutable_project_boxed_opaque_existential_1(v230, v231);
      v82 = MEMORY[0x28223BE20](v81);
      v84 = (v215 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v85 + 16))(v84, v82);
      v86 = sub_20BE3AA74(0x736B63617453794DLL, 0xE800000000000000, v56, v220, v219, *v79, *v84, 2, v75);
LABEL_19:
      v201 = v86;
      __swift_destroy_boxed_opaque_existential_1(v240);
      __swift_destroy_boxed_opaque_existential_1(v243);
      __swift_destroy_boxed_opaque_existential_1(v230);
      __swift_destroy_boxed_opaque_existential_1(v233);
      __swift_destroy_boxed_opaque_existential_1(v236);
      __swift_destroy_boxed_opaque_existential_1(v238);
      __swift_destroy_boxed_opaque_existential_1(v246);
      v202 = v222;
      *(v222 + 16) = v201;
      v203 = OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_metricPageCategory;
      v204 = sub_20C1352F4();
      v205 = *(v204 - 8);
      v206 = *(v205 + 16);
      v207 = v229;
      v206(v202 + v203, v229, v204);
      v222 = *(v201 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
      v208 = v223;
      v206(v223, v207, v204);
      (*(v205 + 56))(v208, 0, 1, v204);
      v209 = sub_20C132C14();
      (*(*(v209 - 8) + 56))(v226, 1, 1, v209);
      v210 = sub_20C135ED4();
      (*(*(v210 - 8) + 56))(v227, 1, 1, v210);
      v211 = sub_20C136914();
      (*(*(v211 - 8) + 56))(v228, 1, 1, v211);

      v212 = v221;
      sub_20C133384();
      (*(v224 + 32))(v202 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_metricPage, v212, v225);
      sub_20BE149E4();
      (*(v205 + 8))(v207, v204);
      return v202;
    case 5:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_20C14F320;
      type metadata accessor for TVLibraryGalleryHeaderShelf();
      v145 = swift_allocObject();
      *(v145 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v146 = v145 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row;
      sub_20B5D8060(&v249);
      v147 = v254;
      *(v146 + 64) = v253;
      *(v146 + 80) = v147;
      *(v146 + 160) = v259;
      v148 = v258;
      *(v146 + 128) = v257;
      *(v146 + 144) = v148;
      v149 = v256;
      *(v146 + 96) = v255;
      *(v146 + 112) = v149;
      v150 = v250;
      *v146 = v249;
      *(v146 + 16) = v150;
      v151 = v252;
      *(v146 + 32) = v251;
      *(v146 + 48) = v151;
      v152 = (v145 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_title);
      v153 = v216;
      *v152 = v217;
      v152[1] = v153;
      *(v144 + 32) = v145;
      *(v144 + 40) = &off_2822B5D38;
      type metadata accessor for BookmarkGalleryShelf();
      swift_allocObject();

      v154 = sub_20C00F060(0, a1, v218, v219, v220);

      *(v144 + 48) = v154;
      *(v144 + 56) = &off_2822FFBE8;
      LODWORD(v220) = sub_20C1380F4();
      v155 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
      v219 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v155 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

      sub_20C13C734();
      v156 = sub_20C13C724();
      v157 = type metadata accessor for CatalogPageImpressionTracker();
      v158 = swift_allocObject();
      sub_20C13C714();

      sub_20C13C6B4();
      v159 = MEMORY[0x277D221C0];
      v158[2] = sub_20C13C6D4();
      v158[3] = v156;
      v158[4] = v159;
      v247 = v157;
      v160 = sub_20B63EE48();
      v248 = v160;
      v246[0] = v158;
      v161 = type metadata accessor for MetricLocationStore();
      v162 = swift_allocObject();
      v163 = MEMORY[0x277D84F98];
      v164 = MEMORY[0x277D84F90];
      *(v162 + 16) = MEMORY[0x277D84F90];
      *(v162 + 24) = v163;
      v165 = __swift_mutable_project_boxed_opaque_existential_1(v246, v157);
      v218 = v215;
      v166 = MEMORY[0x28223BE20](v165);
      v168 = (v215 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v169 + 16))(v168, v166);
      v170 = *v168;
      v217 = v160;
      v244 = v157;
      v245 = v160;
      v243[0] = v170;
      v241 = v161;
      v242 = &off_2822B6968;
      v240[0] = v162;
      v238[0] = v164;
      sub_20BB5D394(0, 2, 0);
      v171 = v238[0];
      v172 = *(v238[0] + 16);
      v173 = *(v238[0] + 24);
      v216 = *(v144 + 32);
      swift_unknownObjectRetain();
      if (v172 >= v173 >> 1)
      {
        sub_20BB5D394((v173 > 1), v172 + 1, 1);
        v171 = v238[0];
      }

      *(v171 + 16) = v172 + 1;
      v174 = v171 + 24 * v172;
      *(v174 + 32) = v216;
      *(v174 + 48) = 0;
      swift_unknownObjectRetain();

      v176 = *(v171 + 16);
      v175 = *(v171 + 24);
      if (v176 >= v175 >> 1)
      {
        sub_20BB5D394((v175 > 1), v176 + 1, 1);
        v171 = v238[0];
      }

      *(v171 + 16) = v176 + 1;
      v177 = v171 + 24 * v176;
      *(v177 + 32) = v154;
      *(v177 + 40) = &off_2822FFBE8;
      *(v177 + 48) = 0;
      sub_20B51CC64(v243, v238);
      sub_20B51CC64(v240, v236);
      v178 = __swift_mutable_project_boxed_opaque_existential_1(v238, v239);
      *&v216 = v215;
      v179 = MEMORY[0x28223BE20](v178);
      v181 = (v215 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v182 + 16))(v181, v179);
      v183 = __swift_mutable_project_boxed_opaque_existential_1(v236, v237);
      v184 = MEMORY[0x28223BE20](v183);
      v186 = (v215 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v187 + 16))(v186, v184);
      v188 = *v181;
      v189 = *v186;
      v234 = v157;
      v235 = v217;
      v233[0] = v188;
      v231 = v161;
      v232 = &off_2822B6968;
      v230[0] = v189;
      v190 = objc_allocWithZone(type metadata accessor for CatalogPage());
      v191 = __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
      v192 = MEMORY[0x28223BE20](v191);
      v194 = (v215 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v195 + 16))(v194, v192);
      v196 = __swift_mutable_project_boxed_opaque_existential_1(v230, v231);
      v197 = MEMORY[0x28223BE20](v196);
      v199 = (v215 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v200 + 16))(v199, v197);
      v86 = sub_20BE3AA74(0x61746964654D794DLL, 0xED0000736E6F6974, v171, v220, v219, *v194, *v199, 2, v190);
      goto LABEL_19;
  }

  *&v249 = 0;
  *(&v249 + 1) = 0xE000000000000000;
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000032, 0x800000020C196E70);
  v214 = sub_20C1352B4();
  MEMORY[0x20F2F4230](v214);

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B6DAD08(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_20C132964();
  v13 = v12;

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_35:
    swift_once();
LABEL_4:
    v14 = qword_27C768308;
    [qword_27C768308 setRoundingMode_];
    [v14 setMaximumFractionDigits_];
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v16 = [v14 stringFromNumber_];

    if (v16)
    {
      v17 = sub_20C13C954();
      v19 = v18;

      goto LABEL_20;
    }

LABEL_15:
  }

  if (a2 == a1)
  {
    v4 = a2;
    if (qword_27C760830 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if (qword_27C760830 != -1)
  {
    swift_once();
  }

  v20 = qword_27C768308;
  [qword_27C768308 setRoundingMode_];
  [v20 setMaximumFractionDigits_];
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v22 = [v20 stringFromNumber_];

  if (!v22)
  {
    goto LABEL_15;
  }

  v41 = sub_20C13C954();
  v24 = v23;

  [v20 setRoundingMode_];
  [v20 setMaximumFractionDigits_];
  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v26 = [v20 stringFromNumber_];

  if (!v26)
  {

    goto LABEL_15;
  }

  v27 = sub_20C13C954();
  v29 = v28;

  if (swift_unknownObjectWeakLoadStrong() && (v30 = *(v5 + 24), ObjectType = swift_getObjectType(), LOBYTE(v30) = (*(v30 + 8))(ObjectType, v30), swift_unknownObjectRelease(), (v30 & 1) == 0))
  {
    v42 = v27;
    v43 = v29;
    MEMORY[0x20F2F4230](9666786, 0xA300000000000000);
    MEMORY[0x20F2F4230](v41, v24);
  }

  else
  {
    v42 = v41;
    v43 = v24;
    MEMORY[0x20F2F4230](9666786, 0xA300000000000000);
    MEMORY[0x20F2F4230](v27, v29);
  }

  v17 = v42;
  v19 = v43;
LABEL_20:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v5 + 24);
    v34 = swift_getObjectType();
    (*(v33 + 16))(v17, v19, v11, v13, v34, v33);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v5 + 40);
    v36 = swift_getObjectType();
    (*(v35 + 16))(v17, v19, v11, v13, v36, v35);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (a3)
  {
    if (!result)
    {
      return result;
    }

    v37 = *(v5 + 24);
    v38 = swift_getObjectType();
    (*(v37 + 24))(v38, v37);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v39 = *(v5 + 24);
    v40 = swift_getObjectType();
    (*(v39 + 32))(v40, v39);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20B6DB25C()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  return swift_deallocClassInstance();
}

double sub_20B6DB2C0()
{
  v0 = sub_20C13C954();
  v2 = v1;
  if (v0 == sub_20C13C954() && v2 == v3)
  {

    return 3.15;
  }

  v5 = sub_20C13DFF4();

  if (v5)
  {
    return 3.15;
  }

  v6 = sub_20C13C954();
  v8 = v7;
  if (v6 == sub_20C13C954() && v8 == v9)
  {

    return 2.74;
  }

  v11 = sub_20C13DFF4();

  if (v11)
  {
    return 2.74;
  }

  v14 = sub_20C13C954();
  v16 = v15;
  if (v14 == sub_20C13C954() && v16 == v17)
  {

    return 2.34;
  }

  v18 = sub_20C13DFF4();

  if (v18)
  {
    return 2.34;
  }

  v19 = sub_20C13C954();
  v21 = v20;
  if (v19 == sub_20C13C954() && v21 == v22)
  {

    return 1.95;
  }

  v23 = sub_20C13DFF4();

  if (v23)
  {
    return 1.95;
  }

  v24 = sub_20C13C954();
  v26 = v25;
  if (v24 == sub_20C13C954() && v26 == v27)
  {

    return 1.62;
  }

  v28 = sub_20C13DFF4();

  if (v28)
  {
    return 1.62;
  }

  v29 = sub_20C13C954();
  v31 = v30;
  if (v29 == sub_20C13C954() && v31 == v32)
  {

    return 1.35;
  }

  v33 = sub_20C13DFF4();

  if (v33)
  {
    return 1.35;
  }

  v34 = sub_20C13C954();
  v36 = v35;
  if (v34 == sub_20C13C954() && v36 == v37)
  {

    return 1.24;
  }

  v38 = sub_20C13DFF4();

  if (v38)
  {
    return 1.24;
  }

  v39 = sub_20C13C954();
  v41 = v40;
  if (v39 == sub_20C13C954() && v41 == v42)
  {

    return 1.12;
  }

  v43 = sub_20C13DFF4();

  if (v43)
  {
    return 1.12;
  }

  v44 = sub_20C13C954();
  v46 = v45;
  if (v44 == sub_20C13C954() && v46 == v47)
  {

    return 1.0;
  }

  v48 = sub_20C13DFF4();

  result = 1.0;
  if ((v48 & 1) == 0)
  {
    v49 = sub_20C13C954();
    v51 = v50;
    if (v49 == sub_20C13C954() && v51 == v52)
    {

      return 0.94;
    }

    v53 = sub_20C13DFF4();

    if (v53)
    {
      return 0.94;
    }

    v54 = sub_20C13C954();
    v56 = v55;
    if (v54 == sub_20C13C954() && v56 == v57)
    {

      return 0.88;
    }

    v58 = sub_20C13DFF4();

    if (v58)
    {
      return 0.88;
    }

    v59 = sub_20C13C954();
    v61 = v60;
    if (v59 == sub_20C13C954() && v61 == v62)
    {

      return 0.82;
    }

    else
    {
      v63 = sub_20C13DFF4();

      result = 0.82;
      if ((v63 & 1) == 0)
      {
        return 1.0;
      }
    }
  }

  return result;
}

uint64_t sub_20B6DB924(void *a1)
{
  result = [v1 faceCount];
  if (result < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  v4 = result;
  if (result)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      [v1 faceAtIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F50);
      result = swift_initStackObject();
      *(result + 16) = xmmword_20C150DB0;
      if (HIWORD(LODWORD(v30.f64[0])))
      {
        break;
      }

      v7 = result;
      *(result + 32) = LOWORD(v30.f64[0]);
      if (HIWORD(LODWORD(v30.f64[1])))
      {
        goto LABEL_30;
      }

      *(result + 34) = LOWORD(v30.f64[1]);
      if (HIWORD(HIDWORD(v30.f64[1])))
      {
        goto LABEL_31;
      }

      *(result + 36) = WORD2(v30.f64[1]);
      *(result + 38) = LOWORD(v30.f64[0]);
      if (HIWORD(HIDWORD(v30.f64[0])))
      {
        goto LABEL_32;
      }

      *(result + 40) = WORD2(v30.f64[0]);
      *(result + 42) = LOWORD(v30.f64[1]);
      v8 = *(v6 + 16);
      v9 = v8 + 6;
      if (__OFADD__(v8, 6))
      {
        goto LABEL_33;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v10 = *(v6 + 24) >> 1, v10 < v9))
      {
        if (v8 <= v9)
        {
          v11 = v8 + 6;
        }

        else
        {
          v11 = v8;
        }

        result = sub_20BC069EC(result, v11, 1, v6);
        v6 = result;
        v10 = *(result + 24) >> 1;
      }

      v12 = *(v6 + 16);
      if (v10 - v12 < 6)
      {
        goto LABEL_34;
      }

      v13 = *(v7 + 32);
      v14 = v6 + 2 * v12;
      *(v14 + 40) = *(v7 + 40);
      *(v14 + 32) = v13;

      v15 = *(v6 + 16);
      v16 = __OFADD__(v15, 6);
      v17 = v15 + 6;
      if (v16)
      {
        goto LABEL_35;
      }

      ++v5;
      *(v6 + 16) = v17;
      if (v4 == v5)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_20:
  result = [v1 vertexCount];
  if (result < 0)
  {
    goto LABEL_37;
  }

  v18 = result;
  if (result)
  {
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    do
    {
      [v1 vertexAtIndex_];
      [a1 vertexAtIndex_];
      v29 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_20BC068E8(0, *(v20 + 2) + 1, 1, v20);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_20BC068E8((v21 > 1), v22 + 1, 1, v20);
      }

      ++v19;
      *(&v23 + 1) = *&v30.f64[1];
      *&v23 = vcvt_f32_f64(v30);
      *&v24 = vcvt_f32_f64(v31);
      *&v25 = v32;
      *(&v24 + 1) = v25;
      *&v26 = v24;
      *&v27 = v32;
      *(&v26 + 1) = v27;
      *(v20 + 2) = v22 + 1;
      v28 = &v20[64 * v22];
      *(v28 + 2) = v24;
      *(v28 + 3) = v23;
      *(v28 + 8) = v23;
      *(v28 + 5) = v26;
    }

    while (v18 != v19);
  }

  return v6;
}

unint64_t sub_20B6DBC10(char a1, char a2)
{
  result = 0x632E657275676966;
  switch(a2)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x642E657275676966;
      break;
    case 4:
    case 12:
      if (a1)
      {
        result = 0xD000000000000017;
      }

      else
      {
        result = 0x722E657275676966;
      }

      break;
    case 5:
      if (a1)
      {
        result = 0x722E657275676966;
      }

      else
      {
        result = 0x772E657275676966;
      }

      break;
    case 6:
      result = 0xD000000000000025;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D2E656C707061;
      break;
    case 9:
      result = 0x702E657275676966;
      break;
    case 10:
      result = 0x722E657275676966;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0x792E657275676966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for ShelfMetricAction()
{
  result = qword_27C763F58;
  if (!qword_27C763F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B6DBEB8()
{
  sub_20B6DC040(319, &qword_27C763F68, MEMORY[0x277D52B50]);
  if (v0 <= 0x3F)
  {
    sub_20C134F24();
    if (v1 <= 0x3F)
    {
      sub_20B6DC040(319, &qword_281103E28, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        sub_20B52CA84();
        if (v3 <= 0x3F)
        {
          sub_20B6DC040(319, &qword_27C763F70, MEMORY[0x277D52440]);
          if (v4 <= 0x3F)
          {
            sub_20C1352E4();
            if (v5 <= 0x3F)
            {
              sub_20B6DC040(319, &qword_27C763F78, MEMORY[0x277D52FC0]);
              if (v6 <= 0x3F)
              {
                sub_20B6DC094();
                if (v7 <= 0x3F)
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

void sub_20B6DC040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20B6DC094()
{
  if (!qword_27C763F80)
  {
    sub_20B6DC0F8();
    v0 = sub_20C13C774();
    if (!v1)
    {
      atomic_store(v0, &qword_27C763F80);
    }
  }
}

unint64_t sub_20B6DC0F8()
{
  result = qword_27C763F88;
  if (!qword_27C763F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763F88);
  }

  return result;
}

uint64_t sub_20B6DC14C()
{
  sub_20B583ECC(*(v0 + 16));

  return swift_deallocClassInstance();
}

CGImageRef sub_20B6DC1B8(int64_t Width, char a2, int64_t Height, char a4)
{
  if (a2)
  {
    Width = CGImageGetWidth(v4);
  }

  v8 = CGImageGetWidth(v4);
  if (v8 < Width)
  {
    Width = v8;
  }

  if (a4)
  {
    Height = CGImageGetHeight(v4);
  }

  v9 = CGImageGetHeight(v4);
  if (v9 < Height)
  {
    Height = v9;
  }

  v10 = CGImageGetColorSpace(v4);
  if (!v10)
  {
    return v4;
  }

  v11 = v10;
  Model = CGColorSpaceGetModel(v10);

  if (Model)
  {
    return v4;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v15 = __CGBitmapContextCreate(Width, Height, DeviceRGB);

  if (!v15)
  {
    return v4;
  }

  sub_20C13D154();
  Image = CGBitmapContextCreateImage(v15);

  return Image;
}

uint64_t storeEnumTagSinglePayload for ActionButtonTemplateItem(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

unint64_t sub_20B6DC334()
{
  result = qword_27C763F90;
  if (!qword_27C763F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763F90);
  }

  return result;
}

uint64_t sub_20B6DC394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_20C138B34();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_20B6DC468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_20C138B04();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_20B6DC858()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_20C138B34();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B6DC904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_20C138B04();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

Swift::String __swiftcall String.camelCased()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_20C1325D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v3;
  v29 = v2;
  sub_20C1325B4();
  v25[1] = sub_20B5F6EB0();
  v8 = sub_20C13D9A4();
  v9 = (*(v5 + 8))(v7, v4);
  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = (v8 + 40);
    v15 = 0xE000000000000000;
    while (v13 < *(v8 + 16))
    {
      v19 = *v14;
      v20 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v20 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        v28 = *(v14 - 1);
        v29 = v19;

        v16 = sub_20C13D9B4();
        v18 = v17;
        v26 = v12;
        v27 = v15;

        MEMORY[0x20F2F4230](v16, v18);

        v12 = v26;
        v15 = v27;
      }

      else
      {
        v21 = sub_20C13C9E4();
        v23 = v22;
        v28 = v12;
        v29 = v15;

        MEMORY[0x20F2F4230](v21, v23);

        v12 = v28;
        v15 = v29;
      }

      ++v13;
      v14 += 2;
      if (v11 == v13)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = 0;
    v15 = 0xE000000000000000;
LABEL_11:

    v9 = v12;
    v10 = v15;
  }

  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

Swift::String __swiftcall String.snakeCased()()
{
  v2 = v1;
  v3 = v0;
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v5 = sub_20B6DCD40(0xD000000000000011, 0x800000020C196F80, 0);
  v6 = sub_20C13CA74();
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    v9 = sub_20C13C914();
    v10 = sub_20C13C914();
    v11 = [v8 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v7, v10}];

    sub_20C13C954();
    v3 = sub_20C13C9E4();
    v2 = v12;
  }

  else
  {
  }

  v13 = v3;
  v14 = v2;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

id sub_20B6DCD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_20C13C914();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_20C132A44();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_20B6DCE1C(uint64_t a1)
{
  v3 = sub_20C132E94();
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20C137404();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C136FE4();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v32 = v1;
  v50 = MEMORY[0x277D84F90];
  sub_20BB5DDA0(0, v10, 0);
  v11 = v50;
  v49 = a1 + 56;
  result = sub_20C13DAA4();
  v13 = result;
  v14 = 0;
  v39 = v7;
  v40 = v5;
  v37 = v5 + 8;
  v38 = v5 + 16;
  v35 = a1;
  v36 = v7 + 32;
  v33 = a1 + 64;
  v34 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v49 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v45 = v14;
    v46 = *(a1 + 36);
    v47 = v13 >> 6;
    v17 = v40;
    v18 = *(a1 + 48) + *(v40 + 72) * v13;
    v19 = *(v40 + 16);
    v20 = v42;
    v48 = v11;
    v21 = v43;
    v19(v42, v18, v43);
    sub_20C1373F4();
    sub_20C1373C4();
    sub_20C136FD4();
    v22 = v21;
    v11 = v48;
    (*(v17 + 8))(v20, v22);
    v50 = v11;
    v24 = *(v11 + 16);
    v23 = *(v11 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_20BB5DDA0(v23 > 1, v24 + 1, 1);
      v11 = v50;
    }

    *(v11 + 16) = v24 + 1;
    result = (*(v39 + 32))(v11 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v24, v9, v41);
    a1 = v35;
    v15 = 1 << *(v35 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v25 = *(v49 + 8 * v47);
    if ((v25 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v13 & 0x3F));
    if (v26)
    {
      v15 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v34;
    }

    else
    {
      v27 = v47 << 6;
      v28 = v47 + 1;
      v16 = v34;
      v29 = (v33 + 8 * v47);
      while (v28 < (v15 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_20B526EA4(v13, v46, 0);
          v15 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v13, v46, 0);
    }

LABEL_4:
    v14 = v45 + 1;
    v13 = v15;
    if (v45 + 1 == v16)
    {
      return v11;
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

uint64_t sub_20B6DD248(uint64_t a1)
{
  v2 = sub_20C135C54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_20B718614(&qword_27C762F50, 255, MEMORY[0x277D51FE0]);
  result = MEMORY[0x20F2F4740](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_20B70079C(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B6DD4AC(uint64_t a1)
{
  result = MEMORY[0x20F2F4740](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_20B527618(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B6DD5C8(uint64_t a1)
{
  v2 = sub_20C136FE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_20B718614(&qword_27C764868, 255, MEMORY[0x277D53070]);
  result = MEMORY[0x20F2F4740](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_20B701D34(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B6DD82C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_20B52E97C();
  result = MEMORY[0x20F2F4740](v2, MEMORY[0x277D53B40], v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_20B700680(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RemoteBrowsingSiriBeginSessionInterceptor.__allocating_init(dependencies:)()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FA0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();

  return v0;
}

uint64_t RemoteBrowsingSiriBeginSessionInterceptor.init(dependencies:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FA0);
  sub_20C133AA4();
  sub_20B51C710(v2, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();

  sub_20B51C710(v2, v0 + 56);
  return v0;
}

uint64_t RemoteBrowsingSiriBeginSessionInterceptor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  return v0;
}

uint64_t RemoteBrowsingSiriBeginSessionInterceptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

void RemoteBrowsingSiriBeginSessionInterceptor.interceptRequest(_:display:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for NavigationRequest();
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v63 = v4;
  v65 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FB0);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v6;
  MEMORY[0x28223BE20](v7);
  v59 = &v52 - v8;
  v60 = sub_20C1363F4();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v69 = sub_20C136C64();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = type metadata accessor for NavigationIntent();
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C139144();
  v70 = *(v23 - 8);
  v71 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B71B848(a1 + *(v3 + 20), v22, type metadata accessor for NavigationIntent);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v65 = v3;
    (*(v70 + 32))(v25, v22, v71);
    sub_20C13B4B4();
    sub_20C13BB64();
    v26 = *(v15 + 8);
    v26(v19, v14);
    __swift_project_boxed_opaque_existential_1(v66 + 7, v66[10]);
    sub_20C13B174();
    v27 = (*(v67 + 48))(v12, 1, v69);
    v52 = v25;
    if (v27 == 1)
    {
      sub_20B520158(v12, &qword_27C768690);
      v28 = v53;
      sub_20C13B4B4();
      v29 = sub_20C13BB74();
      v30 = sub_20C13D1D4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_20B517000, v29, v30, "No environment available, not evaluating begin session request", v31, 2u);
        MEMORY[0x20F2F6A40](v31, -1, -1);
      }

      v26(v28, v14);
      sub_20B5D9BA8();
      v32 = swift_allocError();
      *v33 = 0;
      *(swift_allocObject() + 16) = v32;
      v34 = v32;
      sub_20C137CA4();
      (*(v70 + 8))(v52, v71);
    }

    else
    {
      v39 = v54;
      (*(v67 + 32))(v54, v12, v69);
      sub_20C136A14();
      sub_20C136B34();
      v40 = sub_20C136B64();
      v41 = sub_20B6DCE1C(v40);

      sub_20C139104();
      sub_20B7169C4(v41);

      sub_20C139114();
      sub_20C139124();
      v42 = v56;
      sub_20C1363E4();
      __swift_project_boxed_opaque_existential_1(v66 + 2, v66[5]);
      v43 = v59;
      sub_20C139DA4();
      v44 = swift_allocObject();
      *(v44 + 16) = sub_20B6DE41C;
      *(v44 + 24) = 0;
      v46 = v61;
      v45 = v62;
      v47 = v57;
      (*(v61 + 16))(v57, v43, v62);
      v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
      v49 = (v55 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      (*(v46 + 32))(v50 + v48, v47, v45);
      v51 = (v50 + v49);
      *v51 = sub_20B716B64;
      v51[1] = v44;
      sub_20C137C94();
      (*(v46 + 8))(v43, v45);
      (*(v58 + 8))(v42, v60);
      (*(v67 + 8))(v39, v69);
      (*(v70 + 8))(v52, v71);
    }
  }

  else
  {
    sub_20B71C508(v22, type metadata accessor for NavigationIntent);
    v35 = a1;
    v36 = v65;
    sub_20B71B848(v35, v65, type metadata accessor for NavigationRequest);
    v37 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v38 = swift_allocObject();
    sub_20B71C4A0(v36, v38 + v37, type metadata accessor for NavigationRequest);
    sub_20C137CA4();
  }
}

uint64_t sub_20B6DE41C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_20C136754();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4B4();
  v11 = *(v5 + 16);
  v30 = a1;
  v11(v7, a1, v4);
  v12 = sub_20C13BB74();
  v13 = sub_20C13D1F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v14 = 136446210;
    v26 = sub_20C136734();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_20B51E694(v26, v16, &v31);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_20B517000, v12, v13, "Siri evaluation complete, workoutIdentifier=%{public}s", v14, 0xCu);
    v18 = v27;
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x20F2F6A40](v18, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  (*(v28 + 8))(v10, v29);
  *a2 = sub_20C136734();
  a2[1] = v19;
  type metadata accessor for WorkoutNavigationResource();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationResource();
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for NavigationRequest();
  v21 = a2 + v20[5];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
  *v21 = sub_20C136744();
  v21[8] = v23 & 1;
  v24 = sub_20C1344C4();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  (*(*(v24 - 8) + 56))(&v21[v22], 1, 1, v24);
  *(v21 + 4) = 0;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v20[7]) = 0;
  *(a2 + v20[8]) = 0;
  *(a2 + v20[9]) = 0;
  return result;
}

uint64_t sub_20B6DE8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C135E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D52220]);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, MEMORY[0x277D52220]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771DB0);
  return sub_20C137C94();
}

uint64_t sub_20B6DEA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MarketingUserInterfaceConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MarketingUserInterfaceConfiguration);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for MarketingUserInterfaceConfiguration);
  sub_20B51C88C(0, &qword_281100550);

  return sub_20C137C94();
}

uint64_t sub_20B6DEC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_20B52F9E8(a1, &v13 - v8, &unk_27C7622A0);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_20B5DF134(v9, v11 + v10, &unk_27C7622A0);

  return sub_20C137C94();
}

uint64_t sub_20B6DED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_20B52F9E8(a1, &v13 - v8, &unk_27C7622A0);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_20B5DF134(v9, v11 + v10, &unk_27C7622A0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  return sub_20C137C94();
}

uint64_t sub_20B6DF344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutSessionConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSessionConfiguration);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for WorkoutSessionConfiguration);

  return sub_20C137C94();
}

uint64_t sub_20B6DF520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v19[1] = a7;
  v11 = a4(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v12 + 32))(v17 + v16, v15, v11);
  a6(0);

  return sub_20C137C94();
}

uint64_t sub_20B6DF6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C1377C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F0);
  return sub_20C137C94();
}

uint64_t sub_20B6DF868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutSessionConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSessionConfiguration);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for WorkoutSessionConfiguration);
  sub_20B51C88C(0, &qword_281100550);

  return sub_20C137C94();
}

uint64_t sub_20B6DF9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutSessionConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSessionConfiguration);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for WorkoutSessionConfiguration);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  return sub_20C137C94();
}

uint64_t sub_20B6DFD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  return sub_20C137C94();
}

uint64_t sub_20B6DFEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[1] = a7;
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  (*(v11 + 16))(v17 - v12, a1, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v11 + 32))(v15 + v14, v13, v10);

  return sub_20C137C94();
}

void sub_20B6E3588(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C134104();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764168);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764168);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E3868(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  v24 = a1;
  if (a2)
  {
    v25 = 1;
    v19 = a1;
    a5(&v24);
    v20 = a1;
    v21 = 1;
  }

  else
  {

    a3(&v24);
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(a10, v23);

    (*(v16 + 8))(v18, v15);
    v20 = a1;
    v21 = 0;
  }

  sub_20B71C190(v20, v21);
}

void sub_20B6E3A08(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135AE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7641D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E3CE8(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

void sub_20B6E3E9C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B718F14, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E417C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

void sub_20B6E4330(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E4610(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v19 = a1;
    v20 = 1;
    v16 = a1;
    a5(&v19);
    sub_20B583FB8(a1, 1);
  }

  else
  {
    a3(v13);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v15, v11);
  }
}