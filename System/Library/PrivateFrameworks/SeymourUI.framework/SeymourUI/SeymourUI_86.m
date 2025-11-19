void sub_20BEE01C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C137404();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C1373C4();
            v48 = v66;
            sub_20C1373C4();
            v68 = sub_20C132E04();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C1373C4();
        v28 = v66;
        sub_20C1373C4();
        v68 = sub_20C132E04();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A08E8(&v75, &v74, &v73);
}

uint64_t sub_20BEE0940(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v42 = *MEMORY[0x277D85DE8];
  v7 = sub_20C135C84();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v32 = v10;
    v41 = v4;
    v34 = &v31;
    MEMORY[0x28223BE20](v8);
    v33 = &v31 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v11);
    v35 = 0;
    v12 = 0;
    v10 = a3 + 56;
    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 56);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
LABEL_12:
      v20 = v17 | (v12 << 6);
      v4 = a3;
      v21 = *(a3 + 48);
      v22 = v37;
      v23 = *(v38 + 72);
      v36 = v20;
      v24 = MEMORY[0x277D52060];
      sub_20BC1329C(v21 + v23 * v20, v37, MEMORY[0x277D52060]);
      v25 = v41;
      v26 = v39(v22);
      sub_20BEE2C74(v22, v24);
      v41 = v25;
      if (v25)
      {

        return swift_willThrow();
      }

      a3 = v4;
      v15 = v40;
      if (v26)
      {
        *&v33[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
          return sub_20BC0E464(v33, v32, v35, a3);
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

      if (v12 >= v16)
      {
        return sub_20BC0E464(v33, v32, v35, a3);
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = sub_20BEE1EAC(v29, v10, a3, v39, a2, MEMORY[0x277D52060], sub_20BC0E464, MEMORY[0x277D52060]);

  result = MEMORY[0x20F2F6A40](v29, -1, -1);
  if (!v4)
  {
    return v30;
  }

  return result;
}

uint64_t sub_20BEE0D74(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v41 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for ButtonAction.ActionType(0);
  v37 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v31 = v10;
    v40 = v4;
    v33 = &v30;
    MEMORY[0x28223BE20](v8);
    v32 = &v30 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v34 = 0;
    v12 = 0;
    v10 = a3 + 56;
    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 56);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v39 = (v15 - 1) & v15;
LABEL_12:
      v20 = v17 | (v12 << 6);
      v4 = a3;
      v21 = *(a3 + 48);
      v22 = v36;
      v23 = *(v37 + 72);
      v35 = v20;
      sub_20BC1329C(v21 + v23 * v20, v36, type metadata accessor for ButtonAction.ActionType);
      v24 = v40;
      v25 = v38(v22);
      sub_20BEE2C74(v22, type metadata accessor for ButtonAction.ActionType);
      v40 = v24;
      if (v24)
      {

        return swift_willThrow();
      }

      v15 = v39;
      if (v25)
      {
        *&v32[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
          return sub_20BC0F10C(v32, v31, v34, a3);
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

      if (v12 >= v16)
      {
        return sub_20BC0F10C(v32, v31, v34, a3);
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  v29 = sub_20BEE1EAC(v28, v10, a3, v38, a2, type metadata accessor for ButtonAction.ActionType, sub_20BC0F10C, type metadata accessor for ButtonAction.ActionType);

  result = MEMORY[0x20F2F6A40](v28, -1, -1);
  if (!v4)
  {
    return v29;
  }

  return result;
}

uint64_t sub_20BEE137C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), char *a5, uint64_t a6, unint64_t a7)
{
  v47 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  LOBYTE(v15) = *(a3 + 32);
  v39 = ((1 << v15) + 63) >> 6;
  v17 = 8 * v39;
  if ((v15 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v45 = v16;
    v46 = v14;
    v38 = a5;
    v41 = &v38;
    MEMORY[0x28223BE20](v14);
    v40 = &v38 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v17);
    a6 = 0;
    v48 = a3;
    v19 = *(a3 + 56);
    a3 += 56;
    v18 = v19;
    v20 = 1 << *(a3 - 24);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    v23 = (v20 + 63) >> 6;
    v42 = 0;
    v43 = v13 + 16;
    v44 = (v13 + 8);
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
LABEL_12:
      a7 = v24 | (a6 << 6);
      v27 = *(v48 + 48) + *(v13 + 9) * a7;
      v16 = v13;
      v28 = *(v13 + 2);
      a5 = v45;
      v29 = v46;
      v28(v45, v27, v46);
      v30 = v50;
      v31 = v47(a5);
      v50 = v30;
      if (v30)
      {
        (*v44)(a5, v29);

        return swift_willThrow();
      }

      v17 = v31;
      v14 = (*v44)(a5, v29);
      v13 = v16;
      v22 = v49;
      if (v17)
      {
        *&v40[(a7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a7;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return (v38)(v40, v39, v42, v48);
        }
      }
    }

    v25 = a6;
    while (1)
    {
      a6 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (a6 >= v23)
      {
        return (v38)(v40, v39, v42, v48);
      }

      v26 = *(a3 + 8 * a6);
      v25 = (v25 + 1);
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v49 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v34 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v14 = v34;
  }

  v35 = swift_slowAlloc();
  v36 = v50;
  v37 = sub_20BEE1F64(v35, v39, a3, v47, a2, a6, a7);

  result = MEMORY[0x20F2F6A40](v35, -1, -1);
  if (!v36)
  {
    return v37;
  }

  return result;
}

uint64_t sub_20BEE1768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void))
{
  v36 = a4;
  v37 = a8;
  v30 = a2;
  v31 = a7;
  v32 = a1;
  v9 = a6(0);
  v35 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9 - 8);
  v33 = 0;
  v34 = &v30 - v11;
  v12 = 0;
  v38 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v39 = (v18 - 1) & v18;
LABEL_11:
    v23 = v37;
    v24 = v34;
    v25 = v20 | (v12 << 6);
    sub_20BC1329C(*(v38 + 48) + *(v35 + 72) * v25, v34, v37);
    v26 = v40;
    v27 = v36(v24);
    result = sub_20BEE2C74(v24, v23);
    v40 = v26;
    if (v26)
    {
      return result;
    }

    v18 = v39;
    if (v27)
    {
      *(v32 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_16:
        v29 = v38;

        return v31(v32, v30, v33, v29);
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
      goto LABEL_16;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v39 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BEE19BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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
    v21 = *(*(a3 + 48) + v17);
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

        return sub_20BC0EA58(v20, a2, v7, a3);
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

void sub_20BEE1C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  v10 = MEMORY[0x28223BE20](v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v9 + 16;
  v37 = v9;
  v34 = 0;
  v35 = (v9 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22, v10);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      (*v35)(v23, v22);
      return;
    }

    v28 = v26;
    (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        v32(v33, v31, v34, v30);
        return;
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_20BEE1EAC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v9 = result;
      v10 = a2;
      v11 = a8;
      v12 = a7;
      v13 = a6;
      v14 = a5;
      v15 = a4;
      bzero(result, 8 * a2);
      result = v9;
      a2 = v10;
      a4 = v15;
      a5 = v14;
      a6 = v13;
      a7 = v12;
      a8 = v11;
    }

    v16 = sub_20BEE1768(result, a2, a3, a4, a5, a6, a7, a8);

    return v16;
  }

  return result;
}

void *sub_20BEE1F64(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    sub_20BEE1C04(result, a2, a3, a4, a5, a6, a7);
    v15 = v14;

    return v15;
  }

  return result;
}

void *sub_20BEE2178(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

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

void *sub_20BEE2330(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_20BEE2430(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_20BEE25A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_20B6D8740(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_20B6D8740(v19, v20, v21);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_20BEE2718(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_20C132164();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_20BEE29EC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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

void *sub_20BEE2B00(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + v18);
      v20 = (*(a4 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      *v11 = v19;
      *(v11 + 8) = v22;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20BEE2C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BEE2D04(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = (MEMORY[0x28223BE20])();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_20BEE2FAC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

uint64_t sub_20BEE3104@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_20C133244();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t ShelfLockupDescriptor.applyingRemoteBrowsingEnvironment(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_20C135344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v13 - v10);
  sub_20C135DE4();
  ShelfLockupContent.applyingRemoteBrowsingEnvironment(_:)(a1, v11);
  sub_20BEE3394(v8);
  sub_20BEC019C(v11, v4);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_20C135DF4();
  sub_20BEE33F0(v4);
  return sub_20BEE3394(v11);
}

uint64_t sub_20BEE3394(uint64_t a1)
{
  v2 = sub_20C135344();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BEE33F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AvatarSettingsChanged.avatarSettings.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_20B8FD908(v2);
}

uint64_t static AvatarSettingsChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20BEE34EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_20BEE3554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_20BEE35BC(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770198);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701A0);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v50 - v6;
  v7 = sub_20C13D8D4();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762330);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701A8);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v50 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701B0);
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v68 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701B8);
  v16 = *(v15 - 8);
  v64 = v15;
  v65 = v16;
  MEMORY[0x28223BE20](v15);
  v54 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701C0);
  v19 = *(v18 - 8);
  v66 = v18;
  v67 = v19;
  MEMORY[0x28223BE20](v18);
  v61 = &v50 - v20;
  v1[6] = 0;
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = sub_20C13C914();
  [v21 doubleForKey_];
  v24 = v23;

  v2[7] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v25 = v69[1];
  v2[2] = v69[0];
  v2[3] = v25;
  type metadata accessor for SessionCountdownIntentCoordinator();
  swift_allocObject();
  v26 = swift_unknownObjectRetain();
  v2[4] = sub_20C10F27C(v26, v25);
  v27 = v2[3];
  type metadata accessor for SessionStreamReadyCoordinator();
  swift_allocObject();
  v28 = swift_unknownObjectRetain();
  v2[5] = sub_20BBAEED0(v28, v27);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7E0);
  sub_20C13C134();
  swift_endAccess();
  sub_20B6D6ABC(&qword_27C762348, &unk_27C762330);
  v29 = sub_20C13C174();
  v30 = *(v10 + 8);
  v30(v12, v9);
  v69[5] = v29;
  v50 = v2;
  swift_beginAccess();
  sub_20C13C134();
  swift_endAccess();
  v31 = sub_20C13C174();
  v30(v12, v9);
  v69[0] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701C8);
  sub_20B6D6ABC(&qword_27C7701D0, &qword_27C7701C8);
  v32 = v51;
  sub_20C13C104();
  sub_20B6D6ABC(&qword_27C7701D8, &qword_27C7701A8);
  v33 = v52;
  sub_20C13C1A4();
  (*(v53 + 8))(v32, v33);
  v34 = v55;
  sub_20C13D8E4();
  v36 = v56;
  v35 = v57;
  v37 = v58;
  (*(v56 + 56))(v58, 1, 1, v57);
  v38 = [objc_opt_self() currentRunLoop];
  v69[0] = v38;
  v39 = sub_20C13D8C4();
  v40 = v63;
  (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
  sub_20BEE4214();
  sub_20B6D6ABC(&qword_27C7701E8, &qword_27C7701B0);
  sub_20BEE4260(&qword_27C7701F0, sub_20BEE4214);
  v41 = v54;
  v42 = v59;
  v43 = v68;
  sub_20C13C184();
  sub_20B520158(v40, &qword_27C770198);

  sub_20B520158(v37, &qword_27C7701A0);
  (*(v36 + 8))(v34, v35);
  (*(v62 + 8))(v43, v42);
  v69[3] = sub_20C13AB34();
  v69[4] = sub_20BEE4260(&qword_27C7701F8, MEMORY[0x277D4F268]);
  __swift_allocate_boxed_opaque_existential_1(v69);
  sub_20C13AB24();
  sub_20B6D6ABC(&qword_27C770200, &qword_27C7701B8);
  v44 = v61;
  v45 = v64;
  sub_20C13C194();
  (*(v65 + 8))(v41, v45);
  sub_20B520158(v69, &qword_27C770208);
  swift_allocObject();
  v46 = v50;
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C770210, &qword_27C7701C0);
  v47 = v66;
  v48 = sub_20C13C1C4();

  (*(v67 + 8))(v44, v47);
  v46[6] = v48;

  return v46;
}

uint64_t sub_20BEE4070()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B9C7208();
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);

    if (v1)
    {
      sub_20C13C114();
    }
  }

  return result;
}

uint64_t SessionCountdownCoordinator.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SessionCountdownCoordinator.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_20BEE4214()
{
  result = qword_27C7701E0;
  if (!qword_27C7701E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7701E0);
  }

  return result;
}

uint64_t sub_20BEE4260(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_20BEE42D4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_layout];
  *v11 = xmmword_20C182A50;
  *(v11 + 1) = xmmword_20C182A60;
  *(v11 + 2) = vdupq_n_s64(0x4050800000000000uLL);
  v12 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  [v13 setAllowsDefaultTighteningForTruncation_];
  v14 = objc_opt_self();
  v15 = [v14 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1024 variant:?];
  [v13 setFont_];

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  [v13 setTextColor_];

  [v13 setTextAlignment_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  *&v4[v12] = v13;
  v18 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTextAlignment_];
  [v19 setLineBreakMode_];
  [v19 setNumberOfLines_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  v20 = [v14 preferredFontForTextStyle_];
  [v19 setFont_];

  v21 = [v16 labelColor];
  [v19 setTextColor_];

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v18] = v19;
  v22 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton;
  v23 = sub_20B8C98E0(1, 0.0, 0.0, 0.0, 0.0);
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v22] = v23;
  *&v4[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_actions] = MEMORY[0x277D84F90];
  v62.receiver = v4;
  v62.super_class = type metadata accessor for TVWorkoutPlanDetailHeaderCell();
  v24 = objc_msgSendSuper2(&v62, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = [v24 contentView];
  v26 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton;
  [v25 addSubview_];

  v27 = [v24 contentView];
  v28 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel;
  [v27 addSubview_];

  v29 = [v24 contentView];
  v30 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel;
  [v29 addSubview_];

  v61 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20C151DF0;
  v32 = [*&v24[v28] centerXAnchor];
  v33 = [v24 contentView];
  v34 = [v33 &selRef_handleMenuButtonTapped + 2];

  v35 = [v32 constraintEqualToAnchor_];
  *(v31 + 32) = v35;
  v36 = [*&v24[v28] firstBaselineAnchor];
  v37 = [v24 contentView];
  v38 = [v37 centerYAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v31 + 40) = v39;
  v40 = [*&v24[v30] topAnchor];
  v41 = [*&v24[v28] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v31 + 48) = v42;
  v43 = [*&v24[v30] centerXAnchor];
  v44 = [v24 contentView];
  v45 = [v44 centerXAnchor];

  v46 = [v43 &selRef:v45 alertControllerReleasedDictationButton:? + 5];
  *(v31 + 56) = v46;
  v47 = [*&v24[v26] trailingAnchor];
  v48 = [v24 contentView];
  v49 = [v48 trailingAnchor];

  v50 = [v47 &selRef:v49 alertControllerReleasedDictationButton:? + 5];
  *(v31 + 64) = v50;
  v51 = [*&v24[v26] topAnchor];
  v52 = [v24 contentView];

  v53 = [v52 topAnchor];
  v54 = [v51 &selRef:v53 alertControllerReleasedDictationButton:? + 5];

  *(v31 + 72) = v54;
  v55 = [*&v24[v26] widthAnchor];
  v56 = [v55 constraintEqualToConstant_];

  *(v31 + 80) = v56;
  v57 = [*&v24[v26] heightAnchor];
  v58 = [v57 constraintEqualToConstant_];

  *(v31 + 88) = v58;
  sub_20B51C88C(0, &qword_281100500);
  v59 = sub_20C13CC54();

  [v61 activateConstraints_];

  return v24;
}

uint64_t sub_20BEE4C58()
{
  v39 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v39);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ButtonAction(0);
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v40 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_actions);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v41 = MEMORY[0x277D84F90];

    sub_20C13DD64();
    v11 = *(v3 + 80);
    v31 = v8 + ((v11 + 32) & ~v11);
    v30 = sub_20B51C88C(0, &qword_27C7713A0);
    v12 = objc_opt_self();
    v13 = 0;
    v32 = v11;
    v33 = v9;
    v28 = (v11 + 24) & ~v11;
    v29 = v12;
    v34 = v8;
    v35 = v2;
    v27 = v3;
    v14 = v36;
    while (v13 < *(v8 + 16))
    {
      sub_20B7632E0(v31 + *(v3 + 72) * v13, v7, type metadata accessor for ButtonAction);
      sub_20B7632E0(&v7[*(v38 + 28)], v2, type metadata accessor for ButtonAction.ActionType);
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        sub_20BEE5EDC(v2, type metadata accessor for ButtonAction.ActionType);
      }

      ++v13;

      v15 = sub_20C13C914();

      v16 = [v29 systemImageNamed_];

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_20B7632E0(v7, v14, type metadata accessor for ButtonAction);
      v18 = v28;
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      sub_20B5F6860(v14, v19 + v18);
      sub_20C13D624();
      sub_20BEE5EDC(v7, type metadata accessor for ButtonAction);
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v8 = v34;
      v3 = v27;
      v2 = v35;
      if (v33 == v13)
      {

        v10 = v41;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_8:
  v3 = *(v40 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton);
  if (v10 >> 62)
  {
LABEL_12:
    sub_20B51C88C(0, &qword_27C764F30);

    sub_20C13DE34();

    goto LABEL_10;
  }

  sub_20C13E004();
  sub_20B51C88C(0, &qword_27C764F30);
LABEL_10:

  sub_20B51C88C(0, &unk_27C76FED0);
  v20 = sub_20C13D554();
  v21 = *(v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_menu);
  *(v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_menu) = v20;

  [v3 setContextMenuInteractionEnabled_];
  [v3 setShowsMenuAsPrimaryAction_];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = (v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  v24 = *(v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  *v23 = sub_20BEE5ED4;
  v23[1] = v22;

  sub_20B583ECC(v24);
}

void sub_20BEE5200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_20B7632E0(a3, v10, type metadata accessor for ButtonAction);
      v15 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v15);
      *(&v20 - 4) = 0;
      *(&v20 - 24) = 1;
      *(&v20 - 2) = v10;
      *(&v20 - 1) = v14;
      v16 = *(v14 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v17 = v12;
      v18 = [v16 indexPathForCell_];
      if (v18)
      {
        v19 = v18;
        sub_20C1331E4();

        sub_20C0C1CDC(v7, sub_20B5E2A84);
        (*(v5 + 8))(v7, v4);
      }

      swift_unknownObjectRelease();

      sub_20BEE5EDC(v10, type metadata accessor for ShelfItemAction);
    }

    else
    {
    }
  }
}

void sub_20BEE5468()
{
  v0 = sub_20C133244();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = swift_storeEnumTagMultiPayload();
      *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
      *(&v15 - 4) = 0;
      *(&v15 - 24) = 1;
      *(&v15 - 2) = v6;
      *(&v15 - 1) = v10;
      v13 = [*(v10 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
      if (v13)
      {
        v14 = v13;
        sub_20C1331E4();

        sub_20C0C1CDC(v3, sub_20B5E275C);
        swift_unknownObjectRelease();
        (*(v1 + 8))(v3, v0);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      sub_20BEE5EDC(v6, type metadata accessor for ShelfItemAction);
    }

    else
    {
    }
  }
}

id sub_20BEE56AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanDetailHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVWorkoutPlanDetailHeaderCell()
{
  result = qword_27C770220;
  if (!qword_27C770220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEE57D4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BEE58A8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BEE58F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BEE595C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BEE59D0(double a1)
{
  v2 = 1.0 - a1;
  v3 = 0.0;
  if (v2 < 0.05)
  {
    v4 = v2 / -0.05 + 1.0;
    if (v4 <= 0.0)
    {
      v4 = 0.0;
    }

    v3 = 1.0;
    if (v4 <= 1.0)
    {
      v3 = v4;
    }
  }

  [*(v1 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel) setAlpha_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel) setAlpha_];
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton);

  return [v5 setAlpha_];
}

void sub_20BEE5AB8(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768180);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x49)
  {
    v10 = swift_projectBox();
    sub_20B52F9E8(v10, v9, &qword_27C768180);
    v11 = *&v9[v7[12]];
    v12 = *&v9[v7[16]];
    v13 = *&v9[v7[20]];
    sub_20B520158(v9, &unk_27C762300);
    v14 = *&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel];
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v27 = v11;
    [v14 setAttributedText_];

    v28 = *&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel];
    if (v12)
    {
      v29 = v12;
    }

    else
    {
      v29 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v30 = v12;
    [v28 setAttributedText_];

    *&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_actions] = v13;

    sub_20BEE4C58();
  }

  else
  {
    sub_20C13B534();

    v16 = v1;
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1D4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = a1;
      v34 = v32;
      *v19 = 138543618;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2082;
      v21 = sub_20B5F66D0();
      v22 = v16;
      v23 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v21);
      v25 = sub_20B51E694(v23, v24, &v34);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_20B517000, v17, v18, "Attempted to configure %{public}@ with item: %{public}s", v19, 0x16u);
      sub_20B520158(v20, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      v26 = v32;
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BEE5E60(uint64_t a1)
{
  v3 = *(type metadata accessor for ButtonAction(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20BEE5200(a1, v4, v5);
}

uint64_t sub_20BEE5EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BEE5F3C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_layout;
  *v3 = xmmword_20C182A50;
  *(v3 + 16) = xmmword_20C182A60;
  *(v3 + 32) = vdupq_n_s64(0x4050800000000000uLL);
  v4 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  [v5 setAllowsDefaultTighteningForTruncation_];
  v6 = objc_opt_self();
  v7 = [v6 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1024 variant:?];
  [v5 setFont_];

  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  [v5 setTextColor_];

  [v5 setTextAlignment_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];
  *(v0 + v4) = v5;
  v10 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTextAlignment_];
  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v12 = [v6 preferredFontForTextStyle_];
  [v11 setFont_];

  v13 = [v8 labelColor];
  [v11 setTextColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v14 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton;
  v15 = sub_20B8C98E0(1, 0.0, 0.0, 0.0, 0.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_actions) = MEMORY[0x277D84F90];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BEE62B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v29 = MEMORY[0x277D84F90];
  sub_20BB5DED4(0, v2, 0);
  v3 = v29;
  v26 = v4 + 64;
  v5 = sub_20C13DAA4();
  v6 = 0;
  v23 = v4 + 72;
  v24 = v2;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v4 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v26 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    v25 = v6;
    v10 = *(v4 + 36);
    v11 = v4;
    v27 = *(*(v4 + 56) + 8 * v5);

    sub_20BEEAE9C(&v27, &v28);
    if (v1)
    {
      goto LABEL_26;
    }

    v12 = v28;
    v29 = v3;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_20BB5DED4((v13 > 1), v14 + 1, 1);
      v3 = v29;
    }

    *(v3 + 16) = v14 + 1;
    *(v3 + 8 * v14 + 32) = v12;
    v7 = 1 << *(v11 + 32);
    if (v5 >= v7)
    {
      goto LABEL_23;
    }

    v15 = *(v26 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_24;
    }

    v4 = v11;
    if (v10 != *(v11 + 36))
    {
      goto LABEL_25;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (v23 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_20B526EA4(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_20B526EA4(v5, v10, 0);
    }

LABEL_4:
    v1 = 0;
    v6 = v25 + 1;
    v5 = v7;
    if (v25 + 1 == v8)
    {
      return v3;
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

uint64_t sub_20BEE651C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x277D84F90];
  sub_20BB5DED4(0, v1, 0);
  v2 = v23;
  v22 = a1 + 64;
  result = sub_20C13DAA4();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_20C137F44();
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    if (v12 >= v11 >> 1)
    {
      v20 = result;
      sub_20BB5DED4((v11 > 1), v12 + 1, 1);
      result = v20;
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 8 * v12 + 32) = result;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v21;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v21;
      v17 = (a1 + 72 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_20B526EA4(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
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

uint64_t sub_20BEE6740(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = sub_20C135814();
  v2[52] = v3;
  v2[53] = *(v3 - 8);
  v2[54] = swift_task_alloc();
  v4 = sub_20C13BB84();
  v2[55] = v4;
  v2[56] = *(v4 - 8);
  v2[57] = swift_task_alloc();
  v5 = sub_20C133954();
  v2[58] = v5;
  v2[59] = *(v5 - 8);
  v2[60] = swift_task_alloc();
  v6 = sub_20C132EE4();
  v2[61] = v6;
  v2[62] = *(v6 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BEE694C, 0, 0);
}

uint64_t sub_20BEE694C()
{
  v1 = (v0[51] + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_20C1357D4();
  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_20BEE6A58;
  v5 = v0[64];

  return MEMORY[0x2821ADF30](v5, v2, v3);
}

uint64_t sub_20BEE6A58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[66] = a1;
  v4[67] = v1;

  v5 = v3[64];
  v6 = v3[61];
  v7 = *(v3[62] + 8);
  if (v1)
  {
    v4[77] = v7;
    v7(v5, v6);
    v8 = sub_20BEE7A00;
  }

  else
  {
    v4[68] = v7;
    v7(v5, v6);
    v8 = sub_20BEE6C14;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20BEE6C14(uint64_t a1)
{
  v78 = v1;
  v77[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 528);
  v3 = *(v2 + 32);
  v4 = 1;
  v5 = (((1 << v3) + 63) >> 6);
  v6 = v2;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v68[1] = v68;
    v69 = v5;
    v76 = v1;
    v7 = *(v1 + 472);
    MEMORY[0x28223BE20](a1);
    v70 = v68 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v70, v8);
    v9 = 0;
    v74 = v7;
    v75 = v6;
    v5 = (v6 + 56);
    v10 = v4 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v73 = v7 + 16;
    v71 = 0;
    v72 = v7 + 8;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v1 = v76;
      v2 = *(v76 + 480);
      v17 = *(v76 + 464);
      v4 = v74;
      v18 = v14 | (v9 << 6);
      (*(v74 + 16))(v2, *(v75 + 48) + *(v74 + 72) * v18, v17);
      *(v1 + 352) = sub_20C1338B4();
      *(v1 + 360) = v19 & 1;
      *(v1 + 368) = 1;
      *(v1 + 376) = 1;
      sub_20B6CD3B4();
      sub_20B6CD408();
      v20 = sub_20C133BF4();
      (*(v4 + 8))(v2, v17);
      if (v20)
      {
        *&v70[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v71++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_20BC11CB0(v70, v69, v71, *(v1 + 528));
          v23 = *(v1 + 536);
          goto LABEL_17;
        }
      }
    }

    v15 = v9;
    v1 = v76;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_16;
      }

      v16 = *(v5 + v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v6 = *(v1 + 528);
  }

  v64 = *(v1 + 536);
  v65 = *(v1 + 528);
  v66 = swift_slowAlloc();
  v23 = v64;
  v67 = sub_20BEEE8EC(v66, v5, v65, sub_20BEE81CC, 0);

  result = MEMORY[0x20F2F6A40](v66, -1, -1);
  if (!v23)
  {
    v22 = v67;
LABEL_17:
    *(v1 + 392) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770240);
    sub_20C132E94();
    sub_20BEEED1C();
    sub_20BEEF384(&qword_27C763ED0, MEMORY[0x277CC9578]);
    v24 = sub_20C13CBE4();
    v25 = v23;
    *(v1 + 552) = v24;

    if (v23)
    {
      v26 = *(v1 + 544);
      *(v1 + 584) = v23;
      v28 = *(v1 + 424);
      v27 = *(v1 + 432);
      v29 = *(v1 + 416);
      v30 = *(v1 + 400);
      sub_20C13B454();
      (*(v28 + 16))(v27, v30, v29);
      v31 = v25;
      v32 = sub_20C13BB74();
      v33 = sub_20C13D1D4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v1 + 496);
        v35 = *(v1 + 504);
        v36 = *(v1 + 488);
        v37 = *(v1 + 456);
        v74 = *(v1 + 448);
        v38 = *(v1 + 432);
        v75 = *(v1 + 440);
        v76 = v37;
        v39 = *(v1 + 416);
        v40 = *(v1 + 424);
        v70 = v34;
        v71 = v39;
        v41 = swift_slowAlloc();
        v69 = v26;
        v42 = v41;
        v73 = swift_slowAlloc();
        v77[0] = v73;
        *v42 = 136446466;
        LODWORD(v72) = v33;
        sub_20C1357D4();
        sub_20BEEF384(&qword_27C763EF0, MEMORY[0x277CC95F0]);
        v43 = sub_20C13DFA4();
        v45 = v44;
        v69(v35, v36);
        (*(v40 + 8))(v38, v71);
        v46 = sub_20B51E694(v43, v45, v77);

        *(v42 + 4) = v46;
        *(v42 + 12) = 2082;
        *(v1 + 384) = v25;
        v47 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
        v48 = sub_20C13C9D4();
        v50 = sub_20B51E694(v48, v49, v77);

        *(v42 + 14) = v50;
        _os_log_impl(&dword_20B517000, v32, v72, "Unable to fetch related workout plans to %{public}s: %{public}s", v42, 0x16u);
        v51 = v73;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v51, -1, -1);
        MEMORY[0x20F2F6A40](v42, -1, -1);

        (*(v74 + 8))(v76, v75);
      }

      else
      {
        v57 = *(v1 + 448);
        v56 = *(v1 + 456);
        v59 = *(v1 + 432);
        v58 = *(v1 + 440);
        v60 = *(v1 + 416);
        v61 = *(v1 + 424);

        (*(v61 + 8))(v59, v60);
        (*(v57 + 8))(v56, v58);
      }

      v62 = swift_task_alloc();
      *(v1 + 592) = v62;
      *v62 = v1;
      v62[1] = sub_20BEE7680;
      v53 = *(v1 + 400);
      v55 = MEMORY[0x277D84F90];
      v54 = v1 + 16;
    }

    else
    {
      v52 = swift_task_alloc();
      *(v1 + 560) = v52;
      *v52 = v1;
      v52[1] = sub_20BEE7384;
      v53 = *(v1 + 400);
      v54 = v1 + 184;
      v55 = v24;
    }

    return sub_20BEE8270(v54, v53, v55);
  }

  return result;
}

uint64_t sub_20BEE7384()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_20BEE7D74;
  }

  else
  {

    v2 = sub_20BEE74D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BEE74D4()
{
  sub_20C13CDA4();
  *(v0 + 576) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BEE759C, v2, v1);
}

uint64_t sub_20BEE759C()
{

  sub_20BEEA72C(v0 + 184);
  sub_20B621D00(v0 + 184);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BEE7680()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_20BEE80F0;
  }

  else
  {
    v2 = sub_20BEE77C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BEE77C0()
{
  sub_20C13CDA4();
  *(v0 + 608) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BEE7888, v2, v1);
}

uint64_t sub_20BEE7888()
{

  sub_20BEEA72C(v0 + 16);
  sub_20B621D00(v0 + 16);

  return MEMORY[0x2822009F8](sub_20BEE7930, 0, 0);
}

uint64_t sub_20BEE7930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BEE7A00()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v1 = v0[77];
  v2 = v0[67];
  v0[73] = v2;
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v6 = v0[50];
  sub_20C13B454();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[63];
    v11 = v0[61];
    v37 = v0[56];
    v12 = v0[54];
    v38 = v0[55];
    v39 = v0[57];
    v13 = v0[53];
    v34 = v0[52];
    v33 = v1;
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v14 = 136446466;
    v35 = v9;
    sub_20C1357D4();
    sub_20BEEF384(&qword_27C763EF0, MEMORY[0x277CC95F0]);
    v15 = sub_20C13DFA4();
    v17 = v16;
    v33(v10, v11);
    (*(v13 + 8))(v12, v34);
    v18 = sub_20B51E694(v15, v17, v40);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[48] = v2;
    v19 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v20 = sub_20C13C9D4();
    v22 = sub_20B51E694(v20, v21, v40);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_20B517000, v8, v35, "Unable to fetch related workout plans to %{public}s: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v36, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);

    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v24 = v0[56];
    v23 = v0[57];
    v26 = v0[54];
    v25 = v0[55];
    v27 = v0[52];
    v28 = v0[53];

    (*(v28 + 8))(v26, v27);
    (*(v24 + 8))(v23, v25);
  }

  v29 = swift_task_alloc();
  v0[74] = v29;
  *v29 = v0;
  v29[1] = sub_20BEE7680;
  v30 = v0[50];
  v31 = MEMORY[0x277D84F90];

  return sub_20BEE8270((v0 + 2), v30, v31);
}

uint64_t sub_20BEE7D74()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];

  v1 = v0[71];
  v2 = v0[68];
  v0[73] = v1;
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v6 = v0[50];
  sub_20C13B454();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[63];
    v11 = v0[61];
    v37 = v0[56];
    v12 = v0[54];
    v38 = v0[55];
    v39 = v0[57];
    v13 = v0[53];
    v34 = v0[52];
    v33 = v2;
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v14 = 136446466;
    v35 = v9;
    sub_20C1357D4();
    sub_20BEEF384(&qword_27C763EF0, MEMORY[0x277CC95F0]);
    v15 = sub_20C13DFA4();
    v17 = v16;
    v33(v10, v11);
    (*(v13 + 8))(v12, v34);
    v18 = sub_20B51E694(v15, v17, v40);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[48] = v1;
    v19 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v20 = sub_20C13C9D4();
    v22 = sub_20B51E694(v20, v21, v40);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_20B517000, v8, v35, "Unable to fetch related workout plans to %{public}s: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v36, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);

    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v24 = v0[56];
    v23 = v0[57];
    v26 = v0[54];
    v25 = v0[55];
    v27 = v0[52];
    v28 = v0[53];

    (*(v28 + 8))(v26, v27);
    (*(v24 + 8))(v23, v25);
  }

  v29 = swift_task_alloc();
  v0[74] = v29;
  *v29 = v0;
  v29[1] = sub_20BEE7680;
  v30 = v0[50];
  v31 = MEMORY[0x277D84F90];

  return sub_20BEE8270((v0 + 2), v30, v31);
}

uint64_t sub_20BEE80F0()
{
  v1 = *(v0 + 600);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20BEE81CC()
{
  sub_20C1338B4();
  sub_20B6CD3B4();
  sub_20B6CD408();
  return sub_20C133BF4() & 1;
}

uint64_t sub_20BEE8270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v4[23] = swift_task_alloc();
  v5 = sub_20C132E94();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770250);
  v4[28] = swift_task_alloc();
  v6 = sub_20C1365F4();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630);
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770258);
  v4[39] = swift_task_alloc();
  v8 = sub_20C138094();
  v4[40] = v8;
  v4[41] = *(v8 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v9 = sub_20C1357B4();
  v4[46] = v9;
  v4[47] = *(v9 - 8);
  v4[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BEE85B0, 0, 0);
}

uint64_t sub_20BEE85B0()
{
  v55 = v0;
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  sub_20C135804();
  v4 = sub_20C135764();
  v5 = *(v2 + 8);
  v0[49] = v5;
  v0[50] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = sub_20BEE651C(v4);

  v7 = sub_20B717EA4(v6);

  v8 = sub_20BEEF054();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_20BEDED8C(v9, 0);
    v52 = sub_20BEE2B00(&v54, (v10 + 4), v9, v8);

    v11 = sub_20B583EDC();
    if (v52 != v9)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v54 = v10;
  v11 = sub_20BEEC364(&v54);
  v19 = v54;
  v53 = v54[2];
  if (!v53)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_24:
    v0[51] = v23;
    v43 = v0[38];
    v44 = v0[22];

    __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_catalogClient), *(v44 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_catalogClient + 24));
    sub_20C139FD4();
    v45 = swift_task_alloc();
    v0[52] = v45;
    *(v45 + 16) = "SeymourUI/WorkoutPlanTemplateDetailShelf.swift";
    *(v45 + 24) = 46;
    *(v45 + 32) = 2;
    *(v45 + 40) = 110;
    *(v45 + 48) = v43;
    v46 = swift_task_alloc();
    v0[53] = v46;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10);
    *v46 = v0;
    v46[1] = sub_20BEE8B0C;
    v16 = sub_20BAD4B4C;
    v11 = (v0 + 18);
    v15 = 0x800000020C192D10;
    v12 = 0;
    v13 = 0;
    v14 = 0xD000000000000013;
    v17 = v45;

    return MEMORY[0x2822008A0](v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v20 = 0;
  v48 = v0[39];
  v49 = v0[41];
  v21 = v7 + 56;
  v22 = (v49 + 56);
  v50 = v54 + 4;
  v23 = MEMORY[0x277D84F90];
  v51 = v54;
  while (v20 < v19[2])
  {
    v24 = &v50[3 * v20];
    v25 = v24[1];
    v26 = v24[2];

    v27 = sub_20C137F44();
    if (*(v7 + 16))
    {
      v28 = v27;
      v29 = sub_20C13E154();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      if ((*(v21 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        while (*(*(v7 + 48) + 8 * v31) != v28)
        {
          v31 = (v31 + 1) & v32;
          if (((*(v21 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v36 = v0[39];
        v35 = v0[40];
        *v36 = v25;
        *(v48 + 8) = v26;
        swift_storeEnumTagMultiPayload();
        (*v22)(v36, 0, 1, v35);
LABEL_18:
        v38 = v0[44];
        v37 = v0[45];
        v39 = MEMORY[0x277D53BC8];
        sub_20BEEF31C(v0[39], v37, MEMORY[0x277D53BC8]);
        sub_20BEEF31C(v37, v38, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_20BC060E4(0, v23[2] + 1, 1, v23);
        }

        v19 = v51;
        v41 = v23[2];
        v40 = v23[3];
        if (v41 >= v40 >> 1)
        {
          v23 = sub_20BC060E4(v40 > 1, v41 + 1, 1, v23);
        }

        v42 = v0[44];
        v23[2] = v41 + 1;
        v11 = sub_20BEEF31C(v42, v23 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v41, MEMORY[0x277D53BC8]);
        goto LABEL_8;
      }
    }

LABEL_15:
    v34 = v0[39];
    v33 = v0[40];
    (*v22)(v34, 1, 1, v33);

    if ((*(v49 + 48))(v34, 1, v33) != 1)
    {
      goto LABEL_18;
    }

    v11 = sub_20B520158(v0[39], &qword_27C770258);
    v19 = v51;
LABEL_8:
    if (++v20 == v53)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return MEMORY[0x2822008A0](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_20BEE8B0C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {

    v3 = sub_20BEE8C84;
  }

  else
  {
    v5 = v2[37];
    v4 = v2[38];
    v6 = v2[36];
    v2[55] = v2[18];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BEE8DC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BEE8C84()
{
  (*(v0[37] + 8))(v0[38], v0[36]);

  v1 = v0[1];

  return v1();
}

size_t sub_20BEE8DC4()
{
  v227 = v0;
  v1 = v0[55];
  v2 = v0[30];
  v218 = sub_20B6B27E8(MEMORY[0x277D84F90]);
  v3 = v1 + 56;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;
  v197 = (v2 + 32);
  v207 = (v2 + 8);
  v214 = v2;
  v195 = (v2 + 40);
  v210 = v1;

  v9 = 0;
  v222 = v0;
  v200 = v7;
  v204 = v1 + 56;
  while (v6)
  {
    v11 = v9;
LABEL_11:
    v13 = v0[34];
    v12 = v0[35];
    v14 = v0[29];
    v15 = v214[9];
    v16 = v214[2];
    v16(v12, *(v210 + 48) + v15 * (__clz(__rbit64(v6)) | (v11 << 6)), v14);
    v17 = sub_20C1365A4();
    v19 = v18;
    v16(v13, v12, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v226 = v218;
    result = sub_20B65AA60(v17, v19);
    v22 = v218[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_147;
    }

    v26 = v21;
    if (v218[3] >= v25)
    {
      v28 = v222;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = result;
        sub_20BA0FBAC();
        result = v36;
      }
    }

    else
    {
      sub_20BA08BFC(v25, isUniquelyReferenced_nonNull_native);
      result = sub_20B65AA60(v17, v19);
      v28 = v222;
      if ((v26 & 1) != (v27 & 1))
      {

        return sub_20C13E054();
      }
    }

    v6 &= v6 - 1;
    v30 = v28[34];
    v29 = v28[35];
    v31 = v28[29];
    if (v26)
    {
      v10 = result;

      v218 = v226;
      (*v195)(v226[7] + v10 * v15, v30, v31);
      result = (*v207)(v29, v31);
    }

    else
    {
      v32 = v226;
      v226[(result >> 6) + 8] |= 1 << result;
      v33 = (v32[6] + 16 * result);
      *v33 = v17;
      v33[1] = v19;
      (*v197)(v32[7] + result * v15, v30, v31);
      result = (*v207)(v29, v31);
      v34 = v32[2];
      v24 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v24)
      {
        goto LABEL_149;
      }

      v218 = v32;
      v32[2] = v35;
    }

    v9 = v11;
    v0 = v222;
    v7 = v200;
    v3 = v204;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      return result;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  v37 = v0[49];
  v38 = v0[48];
  v39 = v0[46];
  v211 = v0[30];

  sub_20C135804();
  v40 = sub_20C135774();
  v37(v38, v39);
  v41 = -1;
  v42 = -1 << *(v40 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & *(v40 + 56);
  v44 = (63 - v42) >> 6;

  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  while (v43)
  {
    v47 = v43;
LABEL_29:
    v43 = (v47 - 1) & v47;
    if (v218[2])
    {
      v49 = (*(v40 + 48) + ((v45 << 10) | (16 * __clz(__rbit64(v47)))));
      v50 = *v49;
      v51 = v49[1];

      v52 = sub_20B65AA60(v50, v51);
      if (v53)
      {
        v54 = v222[32];
        v201 = v222[33];
        v55 = v222[29];
        v205 = v214[9];
        (v214[2])(v54, v218[7] + v205 * v52, v55);

        v56 = v214[4];
        v56(v201, v54, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_20BC05E98(0, v46[2] + 1, 1, v46);
        }

        v58 = v46[2];
        v57 = v46[3];
        if (v58 >= v57 >> 1)
        {
          v46 = sub_20BC05E98(v57 > 1, v58 + 1, 1, v46);
        }

        v59 = v222[33];
        v60 = v222[29];
        v46[2] = v58 + 1;
        result = (v56)(v46 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + v58 * v205, v59, v60);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_138;
    }

    if (v48 >= v44)
    {
      break;
    }

    v47 = *(v40 + 56 + 8 * v48);
    ++v45;
    if (v47)
    {
      v45 = v48;
      goto LABEL_29;
    }
  }

  v61 = v222;
  v62 = v222[54];
  v63 = v222[22];

  v64 = (v63 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v63 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder), *(v63 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder + 24));
  v65 = sub_20C138534();
  v226 = v46;

  sub_20BEEC2BC(&v226);
  if (v62)
  {
  }

  v190 = v64;

  v66 = v226[2];
  v67 = v222[41];
  v68 = &unk_20C14F000;
  if (v66)
  {
    v69 = v226 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
    v198 = v214[2];
    v202 = v214[9];
    v70 = 0x772E657275676966;
    if (v65)
    {
      v70 = 0x722E657275676966;
    }

    v187 = v70;
    v71 = 0xEB000000006B6C61;
    if (v65)
    {
      v71 = 0xEB000000006C6C6FLL;
    }

    v72 = 0x800000020C196F00;
    v185 = v71;
    v73 = 0xD000000000000017;
    if ((v65 & 1) == 0)
    {
      v73 = 0x722E657275676966;
    }

    v193 = v73;
    if ((v65 & 1) == 0)
    {
      v72 = 0xEA00000000006E75;
    }

    v191 = v72;
    if (v65)
    {
      v74 = "figure.gymnastics";
    }

    else
    {
      v74 = "figure.skiing.crosscountry";
    }

    v75 = MEMORY[0x277D84F90];
    v182 = v74 | 0x8000000000000000;
    v206 = v222[41];
    while (2)
    {
      v215 = v75;
      v219 = v66;
      v212 = v69;
      v198(v61[31]);
      v76 = sub_20C1365D4();
      v78 = v77;
      v61[15] = v76;
      v61[16] = v77;
      v80 = v79 & 1;
      *(v61 + 136) = v79 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F68);
      sub_20C133BD4();
      sub_20B583F4C(v76, v78, v80);
      v81 = 0xEF6E776F646C6F6FLL;
      v82 = 0x632E657275676966;
      switch(*(v61 + 137))
      {
        case 1:
          v82 = 0xD000000000000014;
          v81 = 0x800000020C191190;
          goto LABEL_68;
        case 2:
          v82 = 0xD000000000000013;
          v81 = v182;
          goto LABEL_68;
        case 3:
          v82 = 0x642E657275676966;
          v81 = 0xEC00000065636E61;
          goto LABEL_68;
        case 4:
        case 0xC:
          v81 = v191;
          v82 = v193;
          goto LABEL_68;
        case 5:
          v81 = v185;
          v82 = v187;
          goto LABEL_68;
        case 6:
          v82 = 0xD000000000000025;
          v81 = 0x800000020C191320;
          goto LABEL_68;
        case 7:
          v82 = 0xD000000000000011;
          v81 = 0x800000020C191350;
          goto LABEL_68;
        case 8:
          v82 = 0x656D2E656C707061;
          v81 = 0xEE00657461746964;
          goto LABEL_68;
        case 9:
          v82 = 0x702E657275676966;
          v81 = 0xEE00736574616C69;
          goto LABEL_68;
        case 0xA:
          v82 = 0x722E657275676966;
          v81 = 0xEC0000007265776FLL;
          goto LABEL_68;
        case 0xB:
          v82 = 0xD000000000000022;
          v81 = 0x800000020C1912B0;
          goto LABEL_68;
        case 0xD:
          v82 = 0x792E657275676966;
          v81 = 0xEB0000000061676FLL;
          goto LABEL_68;
        case 0xE:
          v61 = v222;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
          v83 = *(v67 + 80);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_20C14F980;
          v85 = (v84 + ((v83 + 32) & ~v83));
          *v85 = sub_20C1365E4();
          v85[1] = v86;
          goto LABEL_69;
        default:
LABEL_68:
          v61 = v222;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
          v87 = *(v67 + 72);
          v83 = *(v67 + 80);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_20C1517D0;
          v88 = (v84 + ((v83 + 32) & ~v83));
          *v88 = v82;
          v88[1] = v81;
          swift_storeEnumTagMultiPayload();
          *(v88 + v87) = 3;
          swift_storeEnumTagMultiPayload();
          v89 = (v88 + 2 * v87);
          *v89 = sub_20C1365E4();
          v89[1] = v90;
LABEL_69:
          v91 = v61[31];
          v92 = v61[29];
          swift_storeEnumTagMultiPayload();
          (*v207)(v91, v92);
          v75 = v215;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_20BC082AC(0, v215[2] + 1, 1, v215);
          }

          v67 = v206;
          v94 = v75[2];
          v93 = v75[3];
          if (v94 >= v93 >> 1)
          {
            v75 = sub_20BC082AC((v93 > 1), v94 + 1, 1, v75);
          }

          v75[2] = v94 + 1;
          v75[v94 + 4] = v84;
          v69 = &v212[v202];
          v66 = v219 - 1;
          if (v219 != 1)
          {
            continue;
          }

          v68 = &unk_20C14F000;
          break;
      }

      break;
    }
  }

  else
  {

    LODWORD(v83) = *(v67 + 80);
    v75 = MEMORY[0x277D84F90];
  }

  v213 = v61[43];
  v216 = v61[51];
  v95 = v61[22];
  v220 = v61[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v96 = (v83 + 32) & ~v83;
  v97 = swift_allocObject();
  v196 = v68[152];
  *(v97 + 16) = v196;
  *(v97 + v96) = 2;
  v203 = v96;
  swift_storeEnumTagMultiPayload();
  v98 = sub_20BEEB0A8(v97, v75);

  v99 = swift_allocObject();
  v100 = *(v95 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v100 + 48), *(v100 + 72));
  sub_20B5E107C();
  v101 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v102 = sub_20C13C914();

  v103 = [v101 initWithString_];

  *(v99 + 16) = v103;
  __swift_project_boxed_opaque_existential_1(v190, v190[3]);
  *v213 = 0;
  swift_storeEnumTagMultiPayload();
  sub_20BEEB1E4(v213, v216);

  sub_20BE9B9EC(v213, MEMORY[0x277D53BC8]);
  v104 = sub_20C138544();

  v61[6] = v99 | 0x8000000000000000;
  *(v99 + 24) = v104;
  *(v99 + 32) = 0;
  v61[7] = sub_20BEEA9C8(v220);
  v105 = swift_allocObject();
  v194 = v100;
  __swift_project_boxed_opaque_existential_1((v100 + 48), *(v100 + 72));
  sub_20B5E107C();
  v106 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v107 = sub_20C13C914();

  v108 = [v106 initWithString_];

  *(v105 + 16) = v108;
  sub_20B51CC64(v190, (v61 + 10));
  result = __swift_project_boxed_opaque_existential_1(v61 + 10, v61[13]);
  v109 = v98[2];
  if (v109)
  {
    v110 = 0;
    v111 = MEMORY[0x277D84F90];
    do
    {
      if (v110 >= v98[2])
      {
        goto LABEL_140;
      }

      v112 = v98[v110 + 4];
      v113 = *(v112 + 16);
      v114 = v111[2];
      v115 = v114 + v113;
      if (__OFADD__(v114, v113))
      {
        goto LABEL_141;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v115 <= v111[3] >> 1)
      {
        if (!*(v112 + 16))
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v114 <= v115)
        {
          v116 = v114 + v113;
        }

        else
        {
          v116 = v114;
        }

        result = sub_20BC060E4(result, v116, 1, v111);
        v111 = result;
        if (!*(v112 + 16))
        {
LABEL_78:

          if (v113)
          {
            goto LABEL_142;
          }

          goto LABEL_79;
        }
      }

      if ((v111[3] >> 1) - v111[2] < v113)
      {
        goto LABEL_146;
      }

      swift_arrayInitWithCopy();

      if (v113)
      {
        v117 = v111[2];
        v24 = __OFADD__(v117, v113);
        v118 = v117 + v113;
        if (v24)
        {
          goto LABEL_148;
        }

        v111[2] = v118;
      }

LABEL_79:
      ++v110;
    }

    while (v109 != v110);
  }

  v119 = sub_20C138544();
  v120 = v222;

  *(v105 + 24) = v119;
  *(v105 + 32) = 0;
  v222[8] = v105 | 0x8000000000000000;
  v121 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1((v100 + 48), *(v100 + 72));
  sub_20B5E107C();
  v122 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v123 = sub_20C13C914();

  v124 = [v122 initWithString_];

  *(v121 + 16) = v124;
  v125 = sub_20C1357C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v126 = swift_allocObject();
  v127 = MEMORY[0x277D83B88];
  v128 = MEMORY[0x277D83C10];
  *(v126 + 16) = v196;
  *(v126 + 56) = v127;
  *(v126 + 64) = v128;
  *(v126 + 32) = v125;
  __swift_project_boxed_opaque_existential_1((v100 + 48), *(v100 + 72));
  sub_20B5E10B0();

  v129 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v130 = sub_20C13C914();

  v131 = [v129 initWithString_];

  *(v121 + 24) = v131;
  *(v121 + 32) = 0;
  v222[9] = v121 | 0x8000000000000000;
  result = __swift_destroy_boxed_opaque_existential_1((v222 + 10));
  v132 = 0;
  v133 = MEMORY[0x277D84F90];
LABEL_95:
  if (v132 <= 4)
  {
    v134 = 4;
  }

  else
  {
    v134 = v132;
  }

  while (v132 != 4)
  {
    if (v134 == v132)
    {
      goto LABEL_139;
    }

    v135 = v222[v132++ + 6];
    if ((~v135 & 0xF000000000000007) != 0)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v133 + 16) + 1, 1, v133);
        v133 = result;
      }

      v137 = *(v133 + 16);
      v136 = *(v133 + 24);
      if (v137 >= v136 >> 1)
      {
        result = sub_20BC05D3C((v136 > 1), v137 + 1, 1, v133);
        v133 = result;
      }

      *(v133 + 16) = v137 + 1;
      *(v133 + 8 * v137 + 32) = v135;
      goto LABEL_95;
    }
  }

  v138 = v222[21];
  v186 = v222[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767630);
  swift_arrayDestroy();
  v139 = *(v138 + 16);
  if (v139)
  {
    v183 = v222[42];
    v184 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_dateFormatter;
    v221 = v222[27];
    v140 = v222[25];
    v208 = (v140 + 56);
    v180 = (v140 + 8);
    v181 = (v140 + 32);
    result = sub_20C133954();
    v141 = 0;
    v217 = result;
    v189 = *(result - 8);
    v199 = MEMORY[0x277D84F90];
    v188 = v133;
    v209 = v139;
    while (v141 < v139)
    {
      v142 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        goto LABEL_144;
      }

      v143 = v120[28];
      v144 = v120[21] + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v141;
      v145 = *(v221 + 48);
      *v143 = v141;
      (*(v189 + 16))(&v143[v145], v144, v217);
      sub_20C1338D4();
      v146 = v120[26];
      v148 = v120[23];
      v147 = v120[24];
      (*v208)(v148, 0, 1, v147);
      (*v181)(v146, v148, v147);
      if (v141)
      {
        v149 = 0;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((v194 + 48), *(v194 + 72));
        sub_20B5E107C();
        v149 = v150;
      }

      v151 = v120[42];
      v152 = *(v186 + v184);
      v153 = sub_20C132DE4();
      v154 = [v152 stringFromDate_];

      v155 = sub_20C13C954();
      v157 = v156;

      *v151 = v155;
      *(v183 + 8) = v157;
      swift_storeEnumTagMultiPayload();
      if (v149)
      {
        v158 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v159 = sub_20C13C914();

        v160 = [v158 initWithString_];
      }

      else
      {
        v160 = 0;
      }

      v161 = v222[42];
      v162 = v222[28];
      v163 = v222[26];
      v192 = v222[24];
      v164 = swift_allocObject();
      *(v164 + 16) = v160;
      __swift_project_boxed_opaque_existential_1(v190, v190[3]);
      v165 = swift_allocObject();
      *(v165 + 16) = v196;
      sub_20B634348(v161, v165 + v203);
      v166 = sub_20C138544();

      sub_20BE9B9EC(v161, MEMORY[0x277D53BC8]);
      (*v180)(v163, v192);
      *(v164 + 24) = v166;
      *(v164 + 32) = 1;
      sub_20B520158(v162, &qword_27C770250);
      v167 = v199;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v199 + 16) + 1, 1, v199);
        v167 = result;
      }

      v133 = v188;
      v169 = *(v167 + 16);
      v168 = *(v167 + 24);
      v199 = v167;
      v120 = v222;
      if (v169 >= v168 >> 1)
      {
        result = sub_20BC05D3C((v168 > 1), v169 + 1, 1, v167);
        v199 = result;
      }

      *(v199 + 16) = v169 + 1;
      *(v199 + 8 * v169 + 32) = v164 | 0x8000000000000000;
      v141 = v142;
      v139 = v209;
      if (v142 == v209)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_143;
  }

  v199 = MEMORY[0x277D84F90];
LABEL_123:
  v170 = v120[22];
  *(v170 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_relatedPlans) = v120[21];

  *(v170 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_metadataItems) = v133;

  v171 = *(v199 + 16);
  v172 = MEMORY[0x277D84F90];
  if (v171)
  {
    v173 = 0;
    while (v173 < *(v199 + 16))
    {
      v174 = *(v199 + 32 + 8 * v173);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v172 + 16) + 1, 1, v172);
        v172 = result;
      }

      v176 = *(v172 + 16);
      v175 = *(v172 + 24);
      if (v176 >= v175 >> 1)
      {
        result = sub_20BC05D3C((v175 > 1), v176 + 1, 1, v172);
        v172 = result;
      }

      ++v173;
      *(v172 + 16) = v176 + 1;
      *(v172 + 8 * v176 + 32) = v174;
      if (v171 == v173)
      {
        goto LABEL_131;
      }
    }

    goto LABEL_145;
  }

LABEL_131:
  v177 = v120[19];

  v226 = v133;
  sub_20B8D921C(v172);
  v178 = v226;
  *v177 = 0;
  *(v177 + 8) = 0;
  *(v177 + 16) = 1;
  *(v177 + 17) = *v223;
  *(v177 + 20) = *&v223[3];
  *(v177 + 24) = 0;
  *(v177 + 32) = 0;
  *(v177 + 40) = 128;
  *(v177 + 42) = v224;
  *(v177 + 46) = v225;
  *(v177 + 96) = 0;
  *(v177 + 64) = 0u;
  *(v177 + 80) = 0u;
  *(v177 + 48) = 0u;
  *(v177 + 97) = v226;
  *(v177 + 100) = *(&v226 + 3);
  *(v177 + 104) = v178;
  *(v177 + 112) = MEMORY[0x277D84F90];
  *(v177 + 120) = 0u;
  *(v177 + 136) = 0u;
  *(v177 + 152) = 0;
  *(v177 + 160) = 2;

  v179 = v120[1];

  return v179();
}

uint64_t sub_20BEEA72C(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(a1 + 144);
  v44 = *(a1 + 128);
  v45 = v7;
  v46 = *(a1 + 160);
  v8 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v8;
  v9 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v9;
  v10 = *(a1 + 16);
  v36 = *a1;
  v37 = v10;
  v11 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v11;
  nullsub_1(&v36);
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 144);
  v47[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 128);
  v47[9] = v13;
  v48 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 80);
  v47[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 64);
  v47[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 112);
  v47[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 96);
  v47[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 16);
  v47[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row);
  v47[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 48);
  v47[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 32);
  v47[3] = v17;
  v18 = v45;
  *(v12 + 128) = v44;
  *(v12 + 144) = v18;
  *(v12 + 160) = v46;
  v19 = v41;
  *(v12 + 64) = v40;
  *(v12 + 80) = v19;
  v20 = v43;
  *(v12 + 96) = v42;
  *(v12 + 112) = v20;
  v21 = v37;
  *v12 = v36;
  *(v12 + 16) = v21;
  v22 = v39;
  *(v12 + 32) = v38;
  *(v12 + 48) = v22;
  sub_20B520158(v47, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_20B622224(a1, v35);
  }

  v24 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    sub_20B622224(a1, v35);
  }

  else
  {
    sub_20B622224(a1, v35);
    v26 = sub_20B61DF18(v1, v24);
    if (v27)
    {
      v29 = v26;
      v30 = v27;
      v31 = v28;
      v32 = v1;
      sub_20B5E2E18();
      *v6 = sub_20C13D374();
      (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
      v33 = sub_20C13C584();
      result = (*(v4 + 8))(v6, v3);
      if ((v33 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      sub_20B621794(v29, v30, v31, v32, 1, v24);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_20BEEA9C8(uint64_t a1)
{
  v2 = sub_20C135814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1357B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135804();
  v13 = sub_20C135764();
  (*(v10 + 8))(v12, v9);
  v14 = sub_20BEE62B8(v13);

  v15 = sub_20BB1C930(v14);
  if (v16)
  {
  }

  else
  {
    v17 = v15;
    v18 = sub_20B6C1990(v14);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      v30 = swift_allocObject();
      __swift_project_boxed_opaque_existential_1((*(v38 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanStringBuilder) + 48), *(*(v38 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanStringBuilder) + 72));
      sub_20B5E107C();
      v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v32 = sub_20C13C914();

      v33 = [v31 initWithString_];

      *(v30 + 16) = v33;
      sub_20BAB2AB4(v18, v17);
      v34 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v35 = sub_20C13C914();

      v36 = [v34 initWithString_];

      *(v30 + 24) = v36;
      *(v30 + 32) = 0;
      return v30 | 0x8000000000000000;
    }
  }

  sub_20C13B454();
  (*(v3 + 16))(v5, a1, v2);
  v21 = sub_20C13BB74();
  v22 = sub_20C13D1D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41 = v24;
    *v23 = 136315138;
    sub_20BEEF384(&qword_27C770260, MEMORY[0x277D51CF0]);
    v25 = sub_20C13DFA4();
    v27 = v26;
    (*(v3 + 8))(v5, v2);
    v28 = sub_20B51E694(v25, v27, &v41);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_20B517000, v21, v22, "Couldn't find min/max durations of an empty schedule: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x20F2F6A40](v24, -1, -1);
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  (*(v39 + 8))(v8, v40);
  return 0xF000000000000007;
}

void sub_20BEEAE9C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v28 = sub_20C136864();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(v8 + 16);
  if (v9)
  {
    v24[0] = a2;
    v24[1] = v2;
    v29 = MEMORY[0x277D84F90];
    sub_20BB5DED4(0, v9, 0);
    v10 = v29;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v25 = *(v11 + 56);
    v26 = v12;
    v27 = v11;
    v14 = (v11 - 8);
    do
    {
      v15 = v28;
      v26(v7, v13, v28);
      v16 = sub_20C136854();
      (*v14)(v7, v15);
      v29 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_20BB5DED4((v17 > 1), v18 + 1, 1);
        v10 = v29;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v16;
      v13 += v25;
      --v9;
    }

    while (v9);
    a2 = v24[0];
LABEL_8:
    v20 = 0;
    v21 = 32;
    while (1)
    {
      v22 = *(v10 + v21);
      v23 = __OFADD__(v20, v22);
      v20 += v22;
      if (v23)
      {
        break;
      }

      v21 += 8;
      if (!--v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return;
  }

  v10 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 16);
  if (v19)
  {
    goto LABEL_8;
  }

  v20 = 0;
LABEL_11:

  *a2 = v20;
}

void *sub_20BEEB0A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a2[2];
  if (v3 < 2)
  {
  }

  else
  {
    v5 = a2 + 4;
    v2 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v5;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_20BC082AC(0, v2[2] + 1, 1, v2);
      }

      v8 = v2[2];
      v7 = v2[3];
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        v2 = sub_20BC082AC((v7 > 1), v8 + 1, 1, v2);
      }

      v2[2] = v9;
      v2[v8 + 4] = v6;
      if (v3 != 1)
      {
        v10 = v2[3];
        v11 = v8 + 2;

        if (v11 > (v10 >> 1))
        {
          v2 = sub_20BC082AC((v10 > 1), v11, 1, v2);
        }

        v2[2] = v11;
        v2[v9 + 4] = a1;
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  return v2;
}

void *sub_20BEEB1E4(uint64_t a1, void *a2)
{
  v24 = a1;
  v3 = sub_20C138094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770268);
  MEMORY[0x28223BE20](v25);
  v10 = (&v23 - v9);
  v11 = a2[2];
  if (v11 < 2)
  {
  }

  else
  {
    v12 = 0;
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = *(v4 + 72);
    v15 = a2 + v13;
    a2 = MEMORY[0x277D84F90];
    do
    {
      v16 = *(v25 + 48);
      *v10 = v12;
      sub_20B634348(v15, v10 + v16);
      sub_20B634348(v10 + v16, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_20BC060E4(0, a2[2] + 1, 1, a2);
      }

      v18 = a2[2];
      v17 = a2[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        a2 = sub_20BC060E4(v17 > 1, v18 + 1, 1, a2);
      }

      a2[2] = v19;
      sub_20BEEF31C(v8, a2 + v13 + v18 * v14, MEMORY[0x277D53BC8]);
      if (v11 != 1)
      {
        sub_20B634348(v24, v26);
        v20 = a2[3];
        v21 = v18 + 2;
        if (v21 > (v20 >> 1))
        {
          a2 = sub_20BC060E4(v20 > 1, v21, 1, a2);
        }

        a2[2] = v21;
        sub_20BEEF31C(v26, a2 + v13 + v19 * v14, MEMORY[0x277D53BC8]);
      }

      sub_20B520158(v10, &qword_27C770268);
      v15 += v14;
      ++v12;
      --v11;
    }

    while (v11);
  }

  return a2;
}

uint64_t sub_20BEEB490(uint64_t a1)
{
  v3 = type metadata accessor for ShelfMetricAction();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    (*(v4 + 56))(v12, 1, 1, v3);
    sub_20B52F9E8(v12, v9, &unk_27C7622D0);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {
      sub_20B520158(v9, &unk_27C7622D0);
    }

    else
    {
      sub_20BEEF31C(v9, v6, type metadata accessor for ShelfMetricAction);
      sub_20BF9FE5C(v1, v6, v14);
      sub_20BE9B9EC(v6, type metadata accessor for ShelfMetricAction);
    }

    v15 = v14 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 64))(v14, a1, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_20B520158(v12, &unk_27C7622D0);
  }

  return result;
}

uint64_t sub_20BEEB6FC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanClient);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder);

  return v0;
}

uint64_t sub_20BEEB830()
{
  sub_20BEEB6FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanTemplateDetailShelf()
{
  result = qword_27C770230;
  if (!qword_27C770230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEEB8DC()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BEEB9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_20C132EE4();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772020);
  v5[18] = swift_task_alloc();
  v7 = sub_20C1353F4();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BEEBB10, 0, 0);
}

uint64_t sub_20BEEBB10()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanClient, (v0 + 2));

    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    sub_20C133804();
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_20BEEBCBC;
    v6 = v0[17];
    v5 = v0[18];

    return MEMORY[0x2821ADEE8](v5, v6, v2, v3);
  }

  else
  {
    (*(v0[20] + 56))(v0[18], 1, 1, v0[19]);
    sub_20B520158(v0[18], &unk_27C772020);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20BEEBCBC()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20BEEC0F4;
  }

  else
  {
    v5 = sub_20BEEBE2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BEEBE2C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[18], &unk_27C772020);
LABEL_8:

    v7 = v0[1];

    return v7();
  }

  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
    goto LABEL_8;
  }

  sub_20C13CDA4();
  v0[25] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BEEBFE8, v6, v5);
}

uint64_t sub_20BEEBFE8()
{
  v1 = *(v0 + 168);

  sub_20BEEB490(v1);

  return MEMORY[0x2822009F8](sub_20BEEC064, 0, 0);
}

uint64_t sub_20BEEC064()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BEEC0F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BEEC180@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BEEC1F8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20BEEC2BC(void **a1)
{
  v2 = *(sub_20C1365F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DE4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BEEC3D0(v5);
  *a1 = v3;
}

uint64_t sub_20BEEC364(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A1064(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_20BEEC4FC(v5);
  *a1 = v2;
  return result;
}

void sub_20BEEC3D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C1365F4();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C1365F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BEECA84(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BEEC604(0, v2, 1, a1);
  }
}

uint64_t sub_20BEEC4FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_20C13DF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AFA8);
        v5 = sub_20C13CCD4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_20BEED640(v7, v8, a1, v4);
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
    return sub_20BEEC910(0, v2, 1, a1);
  }

  return result;
}

void sub_20BEEC604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C1365F4();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_20C1365E4();
      v27 = v26;
      if (v25 == sub_20C1365E4() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_20C13DFF4();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20BEEC910(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 24 * a3 - 24;
    v5 = result - a3;
LABEL_6:
    v19 = v4;
    v20 = a3;
    v6 = v21 + 24 * a3;
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v18 = v5;
    while (1)
    {
      v10 = *(v4 + 8);
      v9 = *(v4 + 16);

      v11 = sub_20C137F94();
      if (v11 == sub_20C137F94())
      {
        if (v8 == v10 && v7 == v9)
        {

LABEL_5:
          a3 = v20 + 1;
          v4 = v19 + 24;
          v5 = v18 - 1;
          if (v20 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v13 = sub_20C13DFF4();
      }

      else
      {
        v13 = sub_20C137F34();
      }

      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v15 = *(v4 + 24);
      v8 = *(v4 + 32);
      v7 = *(v4 + 40);
      *(v4 + 24) = *v4;
      *(v4 + 40) = *(v4 + 16);
      *v4 = v15;
      *(v4 + 8) = v8;
      *(v4 + 16) = v7;
      v4 -= 24;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20BEECA84(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_20C1365F4();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = *(a3 + 1);
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_20BEEDE54(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v29], v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v29;
          v156 = a3;
          sub_20B6A0714(v123 - 1);
          v29 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, &v32[v33 * v30], v9);
      v31 = sub_20C1365E4();
      v37 = v36;
      v38 = sub_20C1365E4();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_20C13DFF4();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = &v32[v42];
      v44 = v145 * v5;
      v45 = &v32[v145 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_20C1365E4();
        v52 = v51;
        if (v50 == sub_20C1365E4() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_20C13DFF4();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = a3 + 1;
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              (v149)(v139, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v149)(v57 + v6, v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_20BC05740((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
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

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_20BEEDE54(&v118[*(v144 + 72) * v119], &v118[*(v144 + 72) * v120], &v118[*(v144 + 72) * v29], v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v156 = a3;
        sub_20B6A0714(v31);
        v29 = v156;
        v77 = *(v156 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = &v60[v31 * v61];
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_20C1365E4();
    v69 = v68;
    if (v5 == sub_20C1365E4() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20C13DFF4();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
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
}

uint64_t sub_20BEED640(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v120 = result;
  v9 = *(a3 + 1);
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_118:
    v6 = *v120;
    if (!*v120)
    {
      goto LABEL_160;
    }

    v4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_121:
      v106 = *(result + 16);
      if (v106 >= 2)
      {
        v4 = 24;
        while (1)
        {
          v107 = *v8;
          if (!*v8)
          {
            goto LABEL_158;
          }

          v108 = v8;
          v109 = *(result + 16 * v106);
          v8 = result;
          v110 = *(result + 16 * (v106 - 1) + 40);
          sub_20BEEE4F0((v107 + 24 * v109), (v107 + 24 * *(result + 16 * (v106 - 1) + 32)), (v107 + 24 * v110), v6);
          if (v7)
          {
          }

          if (v110 < v109)
          {
            goto LABEL_147;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v111 = v8;
          }

          else
          {
            v111 = sub_20B6A07A0(v8);
          }

          if (v106 - 2 >= *(v111 + 2))
          {
            goto LABEL_148;
          }

          v8 = v108;
          v112 = &v111[16 * v106];
          *v112 = v109;
          *(v112 + 1) = v110;
          v131 = v111;
          sub_20B6A0714(v106 - 1);
          result = v131;
          v106 = *(v131 + 2);
          if (v106 <= 1)
          {
          }
        }
      }
    }

LABEL_154:
    result = sub_20B6A07A0(v4);
    goto LABEL_121;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      goto LABEL_38;
    }

    v125 = v9;
    v116 = v11;
    v118 = v7;
    v4 = *v8;
    v14 = *v8 + 24 * v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = (*v8 + 24 * v10);
    v6 = *v17;
    v19 = *(v17 + 1);
    v18 = *(v17 + 2);

    v20 = sub_20C137F94();
    if (v20 == sub_20C137F94())
    {
      if (v15 == v19 && v16 == v18)
      {
        v128 = 0;
        goto LABEL_14;
      }

      v22 = sub_20C13DFF4();
    }

    else
    {
      v22 = sub_20C137F34();
    }

    v128 = v22;
LABEL_14:
    v8 = a3;

    v13 = v10 + 2;
    if (v10 + 2 < v125)
    {
      v113 = v10;
      v23 = v4 + 24 * v10 + 32;
      v4 = v23;
      while (1)
      {
        v24 = v13;
        v6 = *(v23 + 16);
        v26 = *(v4 + 24);
        v4 += 24;
        v25 = v26;
        v27 = *(v23 + 32);
        v28 = *v23;
        v29 = *(v23 + 8);

        v30 = sub_20C137F94();
        if (v30 != sub_20C137F94())
        {
          break;
        }

        if (v25 != v28 || v27 != v29)
        {
          v32 = sub_20C13DFF4();
          goto LABEL_25;
        }

        v8 = a3;
        if (v128)
        {
          v11 = v116;
          v7 = v118;
          v12 = v113;
          if (v13 < v113)
          {
            goto LABEL_151;
          }

          goto LABEL_31;
        }

LABEL_17:
        v13 = v24 + 1;
        v23 = v4;
        if (v125 == v24 + 1)
        {
          v13 = v125;
          goto LABEL_28;
        }
      }

      v32 = sub_20C137F34();
LABEL_25:
      v33 = v32;
      v8 = a3;

      if ((v128 ^ v33))
      {
        v13 = v24;
LABEL_28:
        v12 = v113;
        goto LABEL_29;
      }

      goto LABEL_17;
    }

LABEL_29:
    v11 = v116;
    v7 = v118;
    if (v128)
    {
      if (v13 < v12)
      {
        goto LABEL_151;
      }

LABEL_31:
      if (v12 < v13)
      {
        v34 = 24 * v13 - 8;
        v35 = 24 * v12;
        v36 = v13;
        v37 = v12;
        do
        {
          if (v37 != --v36)
          {
            v44 = *v8;
            if (!*v8)
            {
              goto LABEL_157;
            }

            v38 = (v44 + v35);
            v39 = (v44 + v34);
            v40 = *v38;
            v41 = *(v38 + 1);
            v42 = *(v38 + 2);
            v43 = *v39;
            *v38 = *(v39 - 1);
            *(v38 + 2) = v43;
            *(v39 - 16) = v40;
            *(v39 - 1) = v41;
            *v39 = v42;
          }

          ++v37;
          v34 -= 24;
          v35 += 24;
        }

        while (v37 < v36);
      }
    }

LABEL_38:
    v45 = *(v8 + 1);
    if (v13 < v45)
    {
      if (__OFSUB__(v13, v12))
      {
        goto LABEL_150;
      }

      if (v13 - v12 < a4)
      {
        break;
      }
    }

LABEL_63:
    if (v13 < v12)
    {
      goto LABEL_149;
    }

    v58 = v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    v6 = v7;
    if (result)
    {
      v11 = v58;
    }

    else
    {
      result = sub_20BC05740(0, *(v58 + 16) + 1, 1, v58);
      v11 = result;
    }

    v4 = *(v11 + 16);
    v59 = *(v11 + 24);
    v7 = v4 + 1;
    if (v4 >= v59 >> 1)
    {
      result = sub_20BC05740((v59 > 1), v4 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v7;
    v60 = v11 + 16 * v4;
    *(v60 + 32) = v12;
    *(v60 + 40) = v13;
    v61 = *v120;
    if (!*v120)
    {
      goto LABEL_159;
    }

    v127 = v13;
    if (v4)
    {
      while (1)
      {
        v62 = v7 - 1;
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v63 = *(v11 + 32);
          v64 = *(v11 + 40);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_83:
          if (v66)
          {
            goto LABEL_138;
          }

          v79 = (v11 + 16 * v7);
          v81 = *v79;
          v80 = v79[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_141;
          }

          v85 = (v11 + 32 + 16 * v62);
          v87 = *v85;
          v86 = v85[1];
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_145;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v7 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v89 = (v11 + 16 * v7);
        v91 = *v89;
        v90 = v89[1];
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_97:
        if (v84)
        {
          goto LABEL_140;
        }

        v92 = v11 + 16 * v62;
        v94 = *(v92 + 32);
        v93 = *(v92 + 40);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_143;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_104:
        v4 = v62 - 1;
        if (v62 - 1 >= v7)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v100 = *v8;
        if (!*v8)
        {
          goto LABEL_156;
        }

        v101 = v8;
        v8 = v11;
        v102 = *(v11 + 32 + 16 * v4);
        v103 = *(v11 + 32 + 16 * v62 + 8);
        sub_20BEEE4F0((v100 + 24 * v102), (v100 + 24 * *(v11 + 32 + 16 * v62)), (v100 + 24 * v103), v61);
        v7 = v6;
        if (v6)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_134;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v104 = v8;
        }

        else
        {
          v104 = sub_20B6A07A0(v8);
        }

        if (v4 >= *(v104 + 2))
        {
          goto LABEL_135;
        }

        v8 = v101;
        v105 = &v104[16 * v4];
        *(v105 + 4) = v102;
        *(v105 + 5) = v103;
        v130 = v104;
        result = sub_20B6A0714(v62);
        v11 = v130;
        v7 = *(v130 + 2);
        if (v7 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = v11 + 32 + 16 * v7;
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_136;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_137;
      }

      v74 = (v11 + 16 * v7);
      v76 = *v74;
      v75 = v74[1];
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_139;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_142;
      }

      if (v78 >= v70)
      {
        v96 = (v11 + 32 + 16 * v62);
        v98 = *v96;
        v97 = v96[1];
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_146;
        }

        if (v65 < v99)
        {
          v62 = v7 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

LABEL_3:
    v9 = *(v8 + 1);
    v10 = v127;
    v7 = v6;
    if (v127 >= v9)
    {
      goto LABEL_118;
    }
  }

  v46 = v12 + a4;
  if (__OFADD__(v12, a4))
  {
    goto LABEL_152;
  }

  if (v46 >= v45)
  {
    v46 = *(v8 + 1);
  }

  if (v46 < v12)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v13 == v46)
  {
    goto LABEL_63;
  }

  v117 = v11;
  v119 = v7;
  v129 = *v8;
  v4 = *v8 + 24 * v13 - 24;
  v114 = v12;
  v47 = v12 - v13;
  v121 = v46;
LABEL_49:
  v124 = v4;
  v126 = v13;
  v48 = v129 + 24 * v13;
  v50 = *(v48 + 8);
  v49 = *(v48 + 16);
  v123 = v47;
  while (1)
  {
    v6 = *(v4 + 8);
    v51 = *(v4 + 16);

    v52 = sub_20C137F94();
    if (v52 == sub_20C137F94())
    {
      if (v50 == v6 && v49 == v51)
      {

LABEL_48:
        v13 = v126 + 1;
        v4 = v124 + 24;
        v47 = v123 - 1;
        if (v126 + 1 == v121)
        {
          v13 = v121;
          v11 = v117;
          v7 = v119;
          v8 = a3;
          v12 = v114;
          goto LABEL_63;
        }

        goto LABEL_49;
      }

      v54 = sub_20C13DFF4();
    }

    else
    {
      v54 = sub_20C137F34();
    }

    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_48;
    }

    if (!v129)
    {
      break;
    }

    v56 = *(v4 + 24);
    v50 = *(v4 + 32);
    v49 = *(v4 + 40);
    *(v4 + 24) = *v4;
    *(v4 + 40) = *(v4 + 16);
    *v4 = v56;
    *(v4 + 8) = v50;
    *(v4 + 16) = v49;
    v4 -= 24;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

void sub_20BEEDE54(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v70 = sub_20C1365F4();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = (a2 - a1) / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v21;
    if (v21 < 1)
    {
      v43 = a4 + v21;
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = a4 + v21;
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = (a2 + v41);
          v68 = (a2 + v41);
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_20C1365E4();
            v51 = v50;
            if (v49 == sub_20C1365E4() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_20C13DFF4();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = (a4 + v20);
    v71 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_20C1365E4();
        v31 = v30;
        if (v29 == sub_20C1365E4() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_20C13DFF4();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = v25 + v65;
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 += v65;
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_20B6A07E4(&v73, &v72, &v71);
}

uint64_t sub_20BEEE4F0(char *__src, char *a2, _OWORD *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 24;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 24;
  if (v7 >= v9)
  {
    v13 = a4;
    if (a4 != a2 || &a2[24 * v9] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 24 * v9);
      a2 = v26;
    }

    v12 = &v13[24 * v9];
    if (v8 < 24 || a2 <= v5)
    {
      v25 = a2;
      goto LABEL_51;
    }

    v46 = v13;
    v43 = v5;
    while (2)
    {
      v27 = 0;
      v28 = v12;
      v44 = a2 - 24;
      v50 = v4;
      __srcb = a2;
      v45 = v12;
      while (1)
      {
        v29 = &v28[v27];
        v30 = &v28[v27 - 24];
        v31 = *&v28[v27 - 8];
        v48 = *&v28[v27 - 16];
        v32 = *(a2 - 2);
        v33 = *(a2 - 1);

        v34 = sub_20C137F94();
        if (v34 != sub_20C137F94())
        {
          break;
        }

        if (v48 != v32 || v31 != v33)
        {
          v36 = sub_20C13DFF4();
          goto LABEL_39;
        }

        v28 = v45;
LABEL_42:
        a2 = __srcb;
        if (v50 + v27 != v29)
        {
          v38 = v50 + v27 - 24;
          v39 = *v30;
          *(v38 + 16) = *(v30 + 16);
          *v38 = v39;
        }

        v27 -= 24;
        v12 = &v28[v27];
        if (&v28[v27] <= v46)
        {
          v25 = __srcb;
          v13 = v46;
          goto LABEL_51;
        }
      }

      v36 = sub_20C137F34();
LABEL_39:
      v37 = v36;

      v28 = v45;
      if (v37)
      {
        v4 = (v50 + v27 - 24);
        v25 = v44;
        if (v50 + v27 != __srcb)
        {
          v40 = *v44;
          *(v50 + v27 - 8) = *(v44 + 2);
          *v4 = v40;
        }

        v12 = &v45[v27];
        if (&v45[v27] <= v46 || (a2 = v44, v44 <= v43))
        {
          v12 = &v45[v27];
          v13 = v46;
          goto LABEL_51;
        }

        continue;
      }

      goto LABEL_42;
    }
  }

  if (a4 != __src || &__src[24 * v7] <= a4)
  {
    v10 = a2;
    v11 = a4;
    memmove(a4, __src, 24 * v7);
    a2 = v10;
    a4 = v11;
  }

  v12 = &a4[24 * v7];
  v13 = a4;
  if (v6 >= 24 && a2 < v4)
  {
    v47 = v12;
    v49 = v4;
    do
    {
      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
      __srca = a2;
      v16 = *(v13 + 1);
      v17 = *(v13 + 2);

      v18 = sub_20C137F94();
      if (v18 == sub_20C137F94())
      {
        v19 = v15 == v16 && v14 == v17;
        if (v19)
        {

LABEL_19:
          v22 = v13;
          v19 = v5 == v13;
          v13 += 24;
          v23 = v49;
          a2 = __srca;
          if (v19)
          {
            goto LABEL_21;
          }

LABEL_20:
          v24 = *v22;
          *(v5 + 2) = *(v22 + 2);
          *v5 = v24;
          goto LABEL_21;
        }

        v20 = sub_20C13DFF4();
      }

      else
      {
        v20 = sub_20C137F34();
      }

      v21 = v20;

      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }

      v22 = __srca;
      a2 = __srca + 24;
      v23 = v49;
      if (v5 != __srca)
      {
        goto LABEL_20;
      }

LABEL_21:
      v5 += 24;
      v12 = v47;
    }

    while (v13 < v47 && a2 < v23);
  }

  v25 = v5;
LABEL_51:
  v41 = (v12 - v13) / 24;
  if (v25 != v13 || v25 >= &v13[24 * v41])
  {
    memmove(v25, v13, 24 * v41);
  }

  return 1;
}

void *sub_20BEEE8EC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20BEE1B04(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_20BEEE97C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_20C133954();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v25 - v11;
  v14 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_metadataItems) + 16);
  v15 = __OFSUB__(a1, v14);
  v16 = a1 - v14;
  if (v15)
  {
    __break(1u);
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_relatedPlans);
    if (v16 < *(v17 + 16))
    {
      v18 = *(v7 + 80);
      v19 = v17 + ((v18 + 32) & ~v18) + *(v7 + 72) * v16;
      v20 = v5;
      v26 = v5;
      v21 = *(v7 + 16);
      v21(&v25 - v11, v19, v6, v12);
      v22 = sub_20C13CDF4();
      (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
      v23 = swift_allocObject();
      swift_weakInit();
      (v21)(v9, v13, v6);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v23;
      (*(v7 + 32))(v24 + ((v18 + 40) & ~v18), v9, v6);
      sub_20B614F94(0, 0, v26, &unk_20C182BF8, v24);

      (*(v7 + 8))(v13, v6);
    }
  }
}

uint64_t sub_20BEEEC24(uint64_t a1)
{
  v4 = *(sub_20C133954() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20BEEB9BC(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_20BEEED1C()
{
  result = qword_27C770248;
  if (!qword_27C770248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C770240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770248);
  }

  return result;
}

uint64_t sub_20BEEED80()
{
  v1 = v0;
  v2 = sub_20C133154();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row;
  sub_20B5D8060(v18);
  v7 = v18[9];
  *(v6 + 128) = v18[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v19;
  v8 = v18[5];
  *(v6 + 64) = v18[4];
  *(v6 + 80) = v8;
  v9 = v18[7];
  *(v6 + 96) = v18[6];
  *(v6 + 112) = v9;
  v10 = v18[1];
  *v6 = v18[0];
  *(v6 + 16) = v10;
  v11 = v18[3];
  *(v6 + 32) = v18[2];
  *(v6 + 48) = v11;
  v12 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_metadataItems) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_relatedPlans) = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_dateFormatter;
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_20C133014();
  v15 = sub_20C133094();
  [v14 setCalendar_];

  (*(v3 + 8))(v5, v2);
  [v14 setDateStyle_];
  [v14 setTimeStyle_];
  *(v1 + v13) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanStringBuilder) = *&v17[0];
  return v1;
}

uint64_t sub_20BEEF054()
{
  v0 = sub_20C133154();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v34 - v5;
  sub_20C133014();
  v7 = sub_20C1330B4();
  v8 = *(v1 + 8);
  v34[1] = v1 + 8;
  v35 = v0;
  v34[0] = v8;
  v8(v6, v0);
  v9 = *(v7 + 16);

  v10 = sub_20B6B4E70(MEMORY[0x277D84F90]);
  if (!v9)
  {
    return v10;
  }

  v11 = 0;
  while (1)
  {
    v13 = MEMORY[0x20F2EF6F0](v11);
    if (v13 == 7)
    {
      goto LABEL_4;
    }

    v14 = v13;
    sub_20C133014();
    v15 = sub_20C1330C4();
    (v34[0])(v3, v35);
    v16 = sub_20C137F44();
    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *(v15 + 16))
    {
      goto LABEL_20;
    }

    v17 = v15 + 16 * v16;
    v19 = *(v17 + 32);
    v18 = *(v17 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v10;
    v21 = sub_20B65B6B0(v14);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_21;
    }

    v27 = v22;
    if (v10[3] < v26)
    {
      sub_20BA0D09C(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_20B65B6B0(v14);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      v10 = v36;
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v32 = v21;
    sub_20BA11B98();
    v21 = v32;
    v10 = v36;
    if (v27)
    {
LABEL_3:
      v12 = (v10[7] + 16 * v21);
      *v12 = v19;
      v12[1] = v18;

      goto LABEL_4;
    }

LABEL_14:
    v10[(v21 >> 6) + 8] |= 1 << v21;
    *(v10[6] + v21) = v14;
    v29 = (v10[7] + 16 * v21);
    *v29 = v19;
    v29[1] = v18;
    v30 = v10[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v10[2] = v31;
LABEL_4:
    if (v9 == ++v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20BEEF31C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BEEF384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PlanCompletionPresentationTracker()
{
  result = qword_27C770270;
  if (!qword_27C770270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEEF440()
{
  sub_20BAC6D94();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_20BEEF4AC()
{
  v1 = v0;
  v2 = sub_20C133154();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_20C132E94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_20BAC6DEC(v1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B918000(v8);
    v16 = 1;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_20C133124();
    sub_20C132E84();
    v17 = sub_20C133114();
    v18 = *(v10 + 8);
    v18(v12, v9);
    (*(v3 + 8))(v5, v2);
    v18(v15, v9);
    v16 = v17 ^ 1;
  }

  return v16 & 1;
}

char *sub_20BEEF71C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setNumberOfLines_];
  *&v4[v11] = v12;
  v13 = &v4[OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_layout];
  *v13 = xmmword_20C182CA0;
  *(v13 + 1) = xmmword_20C182CB0;
  *(v13 + 4) = 0x4034000000000000;
  v54.receiver = v4;
  v54.super_class = type metadata accessor for AccountSettingRowCell();
  v14 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v16 = v14;
  v17 = [v15 init];
  v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.21 alpha:1.0];
  v52 = v17;
  [v17 setBackgroundColor_];

  v19 = v16;
  [v19 setSelectedBackgroundView_];
  v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.11 alpha:1.0];
  [v19 setBackgroundColor_];

  v21 = [v19 contentView];
  v22 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_titleLabel;
  [v21 addSubview_];

  v51 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C151850;
  v24 = [v19 contentView];
  v25 = [v24 heightAnchor];

  v26 = [v25 constraintGreaterThanOrEqualToConstant_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v27) = v53;
  [v26 setPriority_];
  *(v23 + 32) = v26;
  v28 = [*&v19[v22] leadingAnchor];
  v29 = [v19 contentView];
  v30 = [v29 leadingAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:20.0];
  *(v23 + 40) = v31;
  v32 = [*&v19[v22] trailingAnchor];
  v33 = [v19 contentView];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34 constant:-20.0];
  *(v23 + 48) = v35;
  v36 = [*&v19[v22] topAnchor];
  v37 = [v19 contentView];
  v38 = [v37 topAnchor];

  v39 = [v36 constraintGreaterThanOrEqualToAnchor:v38 constant:9.0];
  *(v23 + 56) = v39;
  v40 = [*&v19[v22] bottomAnchor];
  v41 = [v19 contentView];
  v42 = [v41 bottomAnchor];

  v43 = [v40 constraintLessThanOrEqualToAnchor:v42 constant:-9.0];
  *(v23 + 64) = v43;
  v44 = [*&v19[v22] centerYAnchor];
  v45 = [v19 contentView];

  v46 = [v45 centerYAnchor];
  v47 = [v44 constraintEqualToAnchor_];

  sub_20C13BBA4();
  LODWORD(v48) = v53;
  [v47 setPriority_];
  *(v23 + 72) = v47;
  sub_20B5E29D0();
  v49 = sub_20C13CC54();

  [v51 activateConstraints_];

  return v19;
}

id sub_20BEEFF44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountSettingRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountSettingRowCell()
{
  result = qword_2811028D0;
  if (!qword_2811028D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEF003C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BEF0100(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BEF014C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BEF01A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BEF0208(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v36 = *(v3 - 1);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_20C13BC44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BBC4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 1)
  {
    v35 = v10;
    v36 = v1;
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_titleLabel);
    v19 = sub_20C13C914();
    v37 = v18;
    [v18 setText_];

    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28);
      sub_20C13BC74();
      *(swift_allocObject() + 16) = xmmword_20C14F980;
      (*(v14 + 104))(v16, *MEMORY[0x277D74A98], v13);
      v20 = sub_20C13BBF4();
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      sub_20C13BC34();
      sub_20C13BC04();
      (*(v35 + 8))(v12, v9);
      (*(v14 + 8))(v16, v13);
      sub_20C13D464();
      v21 = [objc_opt_self() whiteColor];
    }

    else
    {
      sub_20C13D464();
      v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    v33 = v21;
    [v37 setTextColor_];
  }

  else
  {
    sub_20C13B534();

    v22 = v1;
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = a1;
      v39 = v27;
      *v25 = 138543618;
      *(v25 + 4) = v22;
      *v26 = v22;
      *(v25 + 12) = 2082;
      v28 = sub_20B5F66D0();
      v29 = v22;
      v30 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v28);
      v32 = sub_20B51E694(v30, v31, &v39);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_20B517000, v23, v24, "Attempted to configure %{public}@ with item: %{public}s", v25, 0x16u);
      sub_20B520158(v26, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    v36[1](v5, v37);
  }
}

void sub_20BEF0794()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setNumberOfLines_];
  *(v0 + v3) = v4;
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_layout;
  *v5 = xmmword_20C182CA0;
  *(v5 + 16) = xmmword_20C182CB0;
  *(v5 + 32) = 0x4034000000000000;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BEF08CC(uint64_t a1, double a2)
{
  v116 = a1;
  v106 = sub_20C13BB84();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C132EE4();
  MEMORY[0x28223BE20](v6 - 8);
  v115 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_20C1321F4();
  v107 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v114 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870);
  v9 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v104 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v102 - v12;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v13 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = &v102 - v14;
  v15 = *(v2 + 32);
  v16 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_arrangedBuilders;
  v130 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_arrangedBuilders);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  v122 = v9;
  if (!v18)
  {
LABEL_34:
    *(v130 + v16) = v19;

    v78 = sub_20C1323A4();
    v80 = v79;
    sub_20C13B554();
    v81 = sub_20C13BB74();
    v82 = sub_20C13D1F4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v152 = v84;
      *v83 = 136315138;
      *v150 = sub_20B81964C(v78 & 0xFFFFFFFFFFLL, v80 & 0xFFFFFFFFFFLL);
      *&v150[8] = v85;
      v150[12] = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7702A0);
      v87 = sub_20C13D8F4();
      v89 = sub_20B51E694(v87, v88, &v152);

      *(v83 + 4) = v89;
      _os_log_impl(&dword_20B517000, v81, v82, "Setting container size to %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x20F2F6A40](v84, -1, -1);
      MEMORY[0x20F2F6A40](v83, -1, -1);
    }

    (*(v105 + 8))(v5, v106);
    v90 = v122;
    v91 = v130 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
    swift_beginAccess();
    if (a2 <= 0.0)
    {
      v95 = 0;
      v94 = v78 & 0xFFFFFFFFFFLL;
    }

    else
    {
      LODWORD(v152) = v78;
      BYTE4(v152) = BYTE4(v78);
      DWORD2(v152) = v80;
      BYTE12(v152) = BYTE4(v80);
      v147 = 0xFF00000000;
      v149 = 0;
      v148 = 0;
      (*(v107 + 16))(v114, v116, v113);
      sub_20C132ED4();
      sub_20B7E259C();
      v92 = v104;
      sub_20C132474();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AD50);
      v93 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_20C14F980;
      (*(v90 + 32))(v94 + v93, v92, v117);
      v80 = 0;
      v95 = 1;
    }

    v96 = v91 + *(type metadata accessor for ContainerNodeBuilder() + 40);
    v97 = *v96;
    *v96 = v94;
    v98 = *(v96 + 13);
    v99 = *(v96 + 8);
    *(v96 + 13) = v95;
    v100 = v99 | (*(v96 + 12) << 32);
    *(v96 + 8) = v80;
    *(v96 + 12) = BYTE4(v80);
    sub_20B81DC54(v97, v100, v98);
    return swift_endAccess();
  }

  v103 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_arrangedBuilders;
  v147 = MEMORY[0x277D84F90];

  sub_20BB5D9CC(0, v18, 0);
  v20 = 0;
  v21 = 0;
  v129 = 0;
  v131 = 0;
  v128 = *(v17 + 16);
  v19 = v147;
  v111 = v9 + 16;
  v124 = *(v130 + 36);
  v110 = v9 + 8;
  v109 = (v107 + 16);
  v123 = (v13 + 8);
  v121 = xmmword_20C14F980;
  v108 = xmmword_20C15C390;
  v22 = 0.0;
  v126 = v17;
  v125 = v18;
  v127 = v5;
  while (v128 != v21)
  {
    if (v21 >= *(v17 + 16))
    {
      goto LABEL_41;
    }

    v139 = v21;
    v141 = v19;
    v23 = v17 + v20;
    v24 = *(v17 + v20 + 32);
    v9 = *(v17 + v20 + 40);
    v25 = *(v17 + v20 + 48);
    v26 = *(v17 + v20 + 56);
    v27 = *(v17 + v20 + 64) | (*(v17 + v20 + 68) << 32);
    v28 = *(v17 + v20 + 69);
    v145 = *(v23 + 72);
    v146 = v25;
    v33 = *(v23 + 80) | (*(v23 + 84) << 32);
    v29 = *(v23 + 85);
    ObjectType = swift_getObjectType();
    v142 = *(v9 + 40);
    swift_unknownObjectRetain_n();
    v138 = v26;
    v137 = v27;
    v136 = v28;
    v31 = v28;
    v32 = v145;
    sub_20BEF3C88(v146, v26, v27, v31);
    v135 = v33;
    v134 = v29;
    sub_20B81DC3C(v32, v33, v29);
    LODWORD(v33) = v142(ObjectType, v9);
    v34 = 0.0;
    v140 = v20;
    if ((v33 & 1) == 0)
    {
      v35 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_42;
      }

      ++v129;
      if (v35 <= 1)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 6.5;
      }
    }

    (*(v9 + 88))(ObjectType, v9);
    v36 = sub_20C131FB4();
    v38 = v36;
    v39 = v37;
    v133 = v24;
    v132 = v9;
    if (!BYTE5(v37))
    {
      v44 = BYTE4(v36);
      v46 = BYTE4(v37);
      v48 = 0.0;
      if (v33)
      {
        goto LABEL_21;
      }

LABEL_18:
      if (v46)
      {
        v48 = *(v130 + 24);
      }

      else
      {
        v48 = *&v39;
      }

      goto LABEL_21;
    }

    *v150 = v36;
    sub_20B81DC3C(v36, v37, BYTE5(v37));
    v9 = v131;
    sub_20BEF2548(v150);
    if (v9)
    {
      goto LABEL_43;
    }

    v131 = 0;
    v40 = *(*v150 + 16);
    if (v40)
    {
      LODWORD(v142) = v33;
      v33 = v122;
      v41 = v112;
      v42 = v117;
      (*(v122 + 16))(v112, *v150 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v122 + 72) * (v40 - 1), v117);

      sub_20C1324A4();
      v43 = *v150;
      v44 = v150[4];
      v45 = *&v150[8];
      v46 = v150[12];
      v47 = *(v33 + 8);
      LOBYTE(v33) = v142;
      v47(v41, v42);
      sub_20B81DC54(v38, v39, BYTE5(v39));
      LODWORD(v38) = v43;
      LODWORD(v39) = v45;
    }

    else
    {

      sub_20B81DC54(v38, v39, BYTE5(v39));
      v49 = sub_20C1323A4();
      v44 = BYTE4(v49);
      LODWORD(v38) = v49;
      LODWORD(v39) = v50;
      v46 = v51;
    }

    v32 = v145;
    v48 = 0.0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v52 = sub_20C1323A4();
    v54 = v53;
    if ((v33 & 1) == 0)
    {
      v55 = v44 ? *(v130 + 16) : *&v38;
      v56 = v55;
      if (v22 <= v56)
      {
        v22 = v56;
      }
    }

    v57 = v15 + v34;
    v60 = sub_20C1323F4();
    v61 = v58;
    *v150 = v58;
    *&v150[8] = v59;
    v62 = *&v150[4];
    if (a2 == 0.0)
    {
      v63 = 0;
      v64 = v58 | (*&v150[4] << 32);
      v65 = v59 & 0xFFFFFFFF00000000 | *&v150[8];
      v66 = v52 & 0xFFFFFFFFFFLL;
    }

    else
    {
      v67 = HIDWORD(v59);
      v142 = HIDWORD(v54);
      v120 = HIDWORD(v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766468);
      v68 = swift_allocObject();
      *(v68 + 16) = v121;
      v119 = v52;
      v69 = v68;
      *v150 = v60;
      v150[8] = v61;
      *&v150[12] = v62;
      v151 = v67;
      v152 = v108;
      v154 = 0;
      v153 = 0;
      v118 = *v109;
      v70 = v114;
      v71 = v116;
      v72 = v113;
      v118(v114, v116, v113);
      sub_20C132ED4();
      sub_20B7E2548();
      sub_20C132474();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AD50);
      v66 = swift_allocObject();
      *(v66 + 16) = v121;
      *v150 = v119;
      v150[4] = v120;
      *&v150[8] = v54;
      v150[12] = v142;
      *&v152 = 0xFF00000000;
      BYTE12(v152) = 0;
      DWORD2(v152) = 0;
      v73 = v72;
      v32 = v145;
      v118(v70, v71, v73);
      sub_20C132ED4();
      sub_20B7E259C();
      sub_20C132474();
      v54 = 0;
      v64 = 0;
      v65 = 0;
      v63 = 1;
      v60 = v69;
    }

    (*v123)(v143, v144);
    v74 = v133;
    swift_unknownObjectRelease();
    sub_20B81DC6C(v146, v138, v137, v136);
    sub_20B81DC54(v32, v135, v134);
    v19 = v141;
    v147 = v141;
    v9 = *(v141 + 16);
    v75 = *(v141 + 24);
    if (v9 >= v75 >> 1)
    {
      sub_20BB5D9CC((v75 > 1), v9 + 1, 1);
      v19 = v147;
    }

    v15 = v57 + v48;
    v21 = v139 + 1;
    *(v19 + 16) = v9 + 1;
    v76 = v19 + 56 * v9;
    v77 = v132;
    *(v76 + 32) = v74;
    *(v76 + 40) = v77;
    *(v76 + 48) = v60;
    *(v76 + 56) = v64;
    *(v76 + 68) = BYTE4(v65);
    *(v76 + 64) = v65;
    *(v76 + 69) = v63;
    *(v76 + 72) = v66;
    *(v76 + 84) = BYTE4(v54);
    *(v76 + 80) = v54;
    *(v76 + 85) = v63;
    v20 = v140 + 56;
    v5 = v127;
    v17 = v126;
    if (v125 == v21)
    {

      v16 = v103;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:

  __break(1u);
  return result;
}

uint64_t sub_20BEF1788@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870);
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v85 - v2;
  v3 = sub_20C132264();
  v108 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v107 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v106 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v105 = &v85 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - v11;
  v91 = sub_20C13BB84();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContainerNodeBuilder();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v88 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  v19 = *(v16 + 48);
  v87 = v18;
  v20 = v18 + v19;
  v21 = *v20;
  v22 = *(v20 + 8) | (*(v20 + 12) << 32);
  v23 = *(v20 + 13);
  sub_20B81DC3C(*v20, v22, *(v20 + 13));
  v24 = sub_20B81964C(v21, v22 | (v23 << 40));
  sub_20B81DC54(v21, v22, v23);
  if ((v24 & 0xFF00000000) != 0)
  {
    v25 = *(v1 + 16);
  }

  else
  {
    v25 = *&v24;
  }

  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_arrangedBuilders);
  v27 = *(v26 + 16);
  v93 = v14;
  v109 = v5;
  v92 = v12;
  if (v27)
  {
    v126 = MEMORY[0x277D84F90];

    sub_20BB5E020(0, v27, 0);
    v28 = 0;
    v110 = 0;
    v29 = v126;
    v95 = v98 + 16;
    v94 = v98 + 8;
    v86 = v6;
    v102 = (v6 + 8);
    v101 = *MEMORY[0x277CE9CE8];
    v100 = (v108 + 104);
    v99 = v108 + 32;
    v104 = v3;
    v103 = v26;
    while (1)
    {
      v30 = v26 + v28;
      v31 = *(v26 + v28 + 32);
      v112 = *(v26 + v28 + 40);
      v33 = *(v26 + v28 + 48);
      v32 = *(v26 + v28 + 56);
      v34 = *(v26 + v28 + 64) | (*(v26 + v28 + 68) << 32);
      v35 = *(v26 + v28 + 69);
      v36 = *(v30 + 72);
      v37 = *(v30 + 84);
      v38 = *(v30 + 80);
      v39 = v38 | (v37 << 32);
      v40 = *(v30 + 85);
      v116 = v28;
      v117 = v27;
      v115 = v29;
      v121 = v35;
      v122 = v32;
      v119 = v34;
      v120 = v39;
      v118 = v40;
      if (!v40)
      {
        break;
      }

      v123 = v36;
      sub_20B81DC3C(v36, v38 | (v37 << 32), v40);
      swift_unknownObjectRetain();
      sub_20BEF3C88(v33, v122, v34, v35);
      v41 = v36;
      sub_20B81DC3C(v36, v39, v40);
      v42 = v110;
      sub_20BEF2548(&v123);
      if (v42)
      {

        __break(1u);
        return result;
      }

      v110 = 0;
      v43 = *(v123 + 2);
      if (v43)
      {
        v44 = v98;
        v45 = v33;
        v46 = v96;
        v47 = v97;
        (*(v98 + 16))(v96, &v123[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v98 + 72) * (v43 - 1)], v97);

        sub_20C1324A4();
        v48 = *&v123;
        v49 = BYTE4(v123);
        v50 = v46;
        v33 = v45;
        (*(v44 + 8))(v50, v47);
        goto LABEL_11;
      }

      v53 = v25;
      v52 = v113;
LABEL_15:
      v111 = v33;
      ObjectType = swift_getObjectType();
      v55 = v106;
      (*(v112 + 88))(ObjectType);
      v112 = v31;
      v56 = v105;
      v113 = v52 & 0xFFFF000000000000 | v119 & 0xFFFFFFFFFFLL | (v121 << 40);
      v57 = v109;
      sub_20C131F54();
      v58 = *v102;
      (*v102)(v55, v57);
      v114 = v114 & 0xFFFF000000000000 | v120 & 0xFFFFFFFFFFLL | (v118 << 40);
      v59 = sub_20BF7C108(LODWORD(v53), v41, v114);
      v61 = v60;
      v62 = v60 >> 40;
      v63 = v107;
      sub_20C131FF4();
      sub_20B81DC54(v59, v61, v62);
      v58(v56, v57);
      swift_unknownObjectRelease();
      sub_20B81DC6C(v111, v122, v119, v121);
      sub_20B81DC54(v41, v120, v118);
      v64 = v104;
      (*v100)(v63, v101, v104);
      v29 = v115;
      v126 = v115;
      v66 = *(v115 + 16);
      v65 = *(v115 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_20BB5E020(v65 > 1, v66 + 1, 1);
        v29 = v126;
      }

      *(v29 + 16) = v66 + 1;
      (*(v108 + 32))(v29 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v66, v63, v64);
      v28 = v116 + 56;
      v27 = v117 - 1;
      v26 = v103;
      if (v117 == 1)
      {

        v14 = v93;
        v5 = v109;
        v6 = v86;
        v12 = v92;
        goto LABEL_19;
      }
    }

    v51 = v35;
    v49 = BYTE4(v36);
    swift_unknownObjectRetain();
    sub_20BEF3C88(v33, v122, v34, v51);
    v41 = v36;
    v48 = *&v36;
LABEL_11:
    v52 = v113;
    if (v49)
    {
      v53 = v25;
    }

    else
    {
      v53 = v48;
    }

    goto LABEL_15;
  }

LABEL_19:
  v67 = v88;
  sub_20B6B5ADC(v87, v88);
  v68 = v89;
  sub_20B7E27F8(v89);

  sub_20B593250(v67);
  sub_20C13B554();
  (*(v6 + 16))(v12, v68, v5);
  v69 = sub_20C13BB74();
  v70 = sub_20C13D1F4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v126 = v72;
    *v71 = 136315138;
    v73 = sub_20C131FB4();
    v75 = v74;
    v76 = v74 >> 40;
    v77 = sub_20B81964C(v73, v74 & 0xFFFFFFFFFFFFLL);
    v79 = v78;
    sub_20B81DC54(v73, v75, v76);
    v123 = v77;
    v125 = BYTE4(v79);
    v124 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7702A0);
    v80 = sub_20C13D8F4();
    v82 = v81;
    (*(v6 + 8))(v92, v109);
    v83 = sub_20B51E694(v80, v82, &v126);

    *(v71 + 4) = v83;
    _os_log_impl(&dword_20B517000, v69, v70, "Node Container size is %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x20F2F6A40](v72, -1, -1);
    MEMORY[0x20F2F6A40](v71, -1, -1);

    return (*(v90 + 8))(v93, v91);
  }

  else
  {

    (*(v6 + 8))(v12, v5);
    return (*(v90 + 8))(v14, v91);
  }
}

uint64_t sub_20BEF21E8()
{
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_parent);

  v1 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder__highlightOverlayEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StackedContainerNodeBuilder()
{
  result = qword_27C770290;
  if (!qword_27C770290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEF2314()
{
  type metadata accessor for ContainerNodeBuilder();
  if (v0 <= 0x3F)
  {
    sub_20B52432C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 __swift_memcpy54_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20BEF244C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 54))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BEF2494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 54) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 54) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BEF24F8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_20BEF2548(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0E98(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BEF25FC(v5);
  *a1 = v3;
}

void sub_20BEF25FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870);
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BEF2A44(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BEF2740(0, v2, 1, a1);
  }
}

void sub_20BEF2740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v42 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
LABEL_6:
    v45 = v22;
    v46 = a3;
    v43 = v24;
    v44 = v23;
    v26 = v23;
    v27 = v22;
    while (1)
    {
      v28 = v52;
      (v52)(v17, v24, v8, v15);
      v28(v12, v27, v8);
      sub_20C132494();
      v30 = v29;
      sub_20C132494();
      if (v30 >= v31)
      {
        v25 = *v51;
        (*v51)(v12, v8);
        v25(v17, v8);
LABEL_5:
        a3 = v46 + 1;
        v22 = &v45[v41];
        v23 = v44 - 1;
        v24 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_6;
      }

      sub_20C1324B4();
      v33 = v32;
      sub_20C1324B4();
      v35 = v34;
      v36 = *v51;
      (*v51)(v12, v8);
      v36(v17, v8);
      if (v33 >= v35)
      {
        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v37 = *v48;
      v38 = v50;
      (*v48)(v50, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v37(v27, v38, v8);
      v27 += v47;
      v24 += v47;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20BEF2A44(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v149 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870);
  MEMORY[0x28223BE20](v8);
  v152 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v165 = &v143 - v11;
  MEMORY[0x28223BE20](v12);
  v169 = &v143 - v13;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v154 = &v143 - v16;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v143 - v19;
  v26 = MEMORY[0x28223BE20](v21);
  v27 = *(a3 + 1);
  v159 = v23;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_100:
    v30 = *v149;
    if (!*v149)
    {
      goto LABEL_138;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v159;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v170 = v29;
      v137 = *(v29 + 16);
      if (v137 >= 2)
      {
        do
        {
          v138 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v139 = a3;
          v140 = *(v29 + 16 * v137);
          a3 = v29;
          v141 = *(v29 + 16 * (v137 - 1) + 32);
          v29 = *(v29 + 16 * (v137 - 1) + 40);
          sub_20BEF35F4(&v138[*(v8 + 72) * v140], &v138[*(v8 + 72) * v141], &v138[*(v8 + 72) * v29], v30);
          if (v5)
          {
            break;
          }

          if (v29 < v140)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v137 - 2 >= *(a3 + 2))
          {
            goto LABEL_126;
          }

          v142 = &a3[16 * v137];
          *v142 = v140;
          *(v142 + 1) = v29;
          v170 = a3;
          sub_20B6A0714(v137 - 1);
          v29 = v170;
          v137 = *(v170 + 16);
          a3 = v139;
        }

        while (v137 > 1);
      }

LABEL_110:

      return;
    }

LABEL_132:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_102;
  }

  v148 = &v143 - v22;
  v145 = v20;
  v153 = v25;
  v164 = v24;
  v144 = a4;
  v28 = 0;
  v167 = v23 + 16;
  v168 = (v23 + 8);
  v166 = (v23 + 32);
  v29 = MEMORY[0x277D84F90];
  v151 = a3;
  while (1)
  {
    v30 = v28++;
    if (v28 < v27)
    {
      v157 = v27;
      v31 = *a3;
      v32 = *(v159 + 72);
      v33 = *(v159 + 16);
      v33(v148, &v31[v32 * v28], v8, v26);
      v150 = v30;
      v160 = v32;
      v34 = &v31[v32 * v30];
      v35 = v31;
      v36 = v148;
      v37 = v145;
      v156 = v33;
      (v33)(v145, v34, v8);
      sub_20C132494();
      v39 = v38;
      sub_20C132494();
      v147 = v5;
      if (v39 >= v40)
      {
        LODWORD(v158) = 0;
      }

      else
      {
        sub_20C1324B4();
        v42 = v41;
        sub_20C1324B4();
        LODWORD(v158) = v42 < v43;
      }

      v146 = v29;
      v44 = *v168;
      (*v168)(v37, v8);
      v155 = v44;
      (v44)(v36, v8);
      v45 = v150 + 2;
      v46 = v160 * (v150 + 2);
      v47 = &v35[v46];
      v48 = v160 * v28;
      v49 = &v35[v160 * v28];
      do
      {
        v56 = v45;
        v55 = v28;
        v29 = v48;
        a3 = v46;
        if (v45 >= v157)
        {
          break;
        }

        v161 = v48;
        v163 = v28;
        v5 = v153;
        v57 = v156;
        v156(v153, v47, v8);
        v58 = v154;
        v57(v154, v49, v8);
        sub_20C132494();
        v60 = v59;
        sub_20C132494();
        v162 = a3;
        if (v60 < v61)
        {
          sub_20C1324B4();
          v51 = v50;
          sub_20C1324B4();
          v53 = v51 < v52;
        }

        else
        {
          v53 = 0;
        }

        v54 = v155;
        v155(v58, v8);
        v54(v5, v8);
        v45 = v56 + 1;
        v29 = v161;
        v47 += v160;
        v49 += v160;
        a3 = v162;
        v55 = v163;
        v28 = (v163 + 1);
        v48 = v161 + v160;
        v46 = &v162[v160];
      }

      while (v158 == v53);
      if (v158)
      {
        v30 = v150;
        if (v56 < v150)
        {
          goto LABEL_129;
        }

        if (v150 >= v56)
        {
          v28 = v56;
          v5 = v147;
          a3 = v151;
          v29 = v146;
          goto LABEL_30;
        }

        v62 = v150;
        v63 = v150 * v160;
        do
        {
          if (v62 != v55)
          {
            v65 = *v151;
            if (!*v151)
            {
              goto LABEL_135;
            }

            v66 = v55;
            v163 = *v166;
            (v163)(v152, v65 + v63, v8);
            if (v63 < v29 || v65 + v63 >= &a3[v65])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v163)(v65 + v29, v152, v8);
            v55 = v66;
          }

          ++v62;
          v29 -= v160;
          a3 -= v160;
          v63 += v160;
        }

        while (v62 < v55--);
      }

      v28 = v56;
      v5 = v147;
      a3 = v151;
      v29 = v146;
      v30 = v150;
    }

LABEL_30:
    v67 = *(a3 + 1);
    if (v28 < v67)
    {
      if (__OFSUB__(v28, v30))
      {
        goto LABEL_128;
      }

      if (v28 - v30 < v144)
      {
        break;
      }
    }

LABEL_49:
    if (v28 < v30)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v90 = *(v29 + 16);
    v89 = *(v29 + 24);
    v91 = v90 + 1;
    if (v90 >= v89 >> 1)
    {
      v29 = sub_20BC05740((v89 > 1), v90 + 1, 1, v29);
    }

    *(v29 + 16) = v91;
    v92 = v29 + 16 * v90;
    *(v92 + 32) = v30;
    *(v92 + 40) = v28;
    v163 = *v149;
    if (!v163)
    {
      goto LABEL_137;
    }

    if (v90)
    {
      while (1)
      {
        v30 = v91 - 1;
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v93 = *(v29 + 32);
          v94 = *(v29 + 40);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_69:
          if (v96)
          {
            goto LABEL_116;
          }

          v109 = (v29 + 16 * v91);
          v111 = *v109;
          v110 = v109[1];
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_119;
          }

          v115 = (v29 + 32 + 16 * v30);
          v117 = *v115;
          v116 = v115[1];
          v103 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v103)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v113, v118))
          {
            goto LABEL_123;
          }

          if (v113 + v118 >= v95)
          {
            if (v95 < v118)
            {
              v30 = v91 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v119 = (v29 + 16 * v91);
        v121 = *v119;
        v120 = v119[1];
        v103 = __OFSUB__(v120, v121);
        v113 = v120 - v121;
        v114 = v103;
LABEL_83:
        if (v114)
        {
          goto LABEL_118;
        }

        v122 = v29 + 16 * v30;
        v124 = *(v122 + 32);
        v123 = *(v122 + 40);
        v103 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v103)
        {
          goto LABEL_121;
        }

        if (v125 < v113)
        {
          goto LABEL_3;
        }

LABEL_90:
        v130 = v30 - 1;
        if (v30 - 1 >= v91)
        {
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
          goto LABEL_131;
        }

        v131 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v132 = a3;
        a3 = v29;
        v133 = *(v29 + 32 + 16 * v130);
        v134 = *(v29 + 32 + 16 * v30);
        v29 = *(v29 + 32 + 16 * v30 + 8);
        sub_20BEF35F4(&v131[*(v159 + 72) * v133], &v131[*(v159 + 72) * v134], &v131[*(v159 + 72) * v29], v163);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v29 < v133)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v130 >= *(a3 + 2))
        {
          goto LABEL_113;
        }

        v135 = &a3[16 * v130];
        *(v135 + 4) = v133;
        *(v135 + 5) = v29;
        v170 = a3;
        sub_20B6A0714(v30);
        v29 = v170;
        v91 = *(v170 + 16);
        a3 = v132;
        if (v91 <= 1)
        {
          goto LABEL_3;
        }
      }

      v97 = v29 + 32 + 16 * v91;
      v98 = *(v97 - 64);
      v99 = *(v97 - 56);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_114;
      }

      v102 = *(v97 - 48);
      v101 = *(v97 - 40);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_115;
      }

      v104 = (v29 + 16 * v91);
      v106 = *v104;
      v105 = v104[1];
      v103 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v103)
      {
        goto LABEL_117;
      }

      v103 = __OFADD__(v95, v107);
      v108 = v95 + v107;
      if (v103)
      {
        goto LABEL_120;
      }

      if (v108 >= v100)
      {
        v126 = (v29 + 32 + 16 * v30);
        v128 = *v126;
        v127 = v126[1];
        v103 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v103)
        {
          goto LABEL_124;
        }

        if (v95 < v129)
        {
          v30 = v91 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v27 = *(a3 + 1);
    if (v28 >= v27)
    {
      goto LABEL_100;
    }
  }

  v68 = (v30 + v144);
  if (__OFADD__(v30, v144))
  {
    goto LABEL_130;
  }

  if (v68 >= v67)
  {
    v68 = *(a3 + 1);
  }

  if (v68 < v30)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v28 == v68)
  {
    goto LABEL_49;
  }

  v146 = v29;
  v147 = v5;
  v69 = *a3;
  v70 = *(v159 + 72);
  v71 = *(v159 + 16);
  v72 = *a3 + v70 * (v28 - 1);
  v162 = -v70;
  v150 = v30;
  v73 = v30 - v28;
  v163 = v69;
  v155 = v70;
  v156 = v68;
  v74 = &v69[v28 * v70];
  v75 = v164;
LABEL_41:
  v160 = v72;
  v161 = v28;
  v157 = v74;
  v158 = v73;
  while (1)
  {
    v71(v75, v74, v8);
    v71(v169, v72, v8);
    sub_20C132494();
    v78 = v77;
    sub_20C132494();
    if (v78 >= v79)
    {
      v76 = *v168;
      (*v168)(v169, v8);
      v76(v75, v8);
LABEL_40:
      v28 = v161 + 1;
      v72 = v155 + v160;
      v73 = v158 - 1;
      v74 = v155 + v157;
      if ((v161 + 1) == v156)
      {
        v28 = v156;
        v5 = v147;
        a3 = v151;
        v29 = v146;
        v30 = v150;
        goto LABEL_49;
      }

      goto LABEL_41;
    }

    sub_20C1324B4();
    v81 = v80;
    v82 = v169;
    sub_20C1324B4();
    v84 = v83;
    v85 = *v168;
    (*v168)(v82, v8);
    v85(v75, v8);
    if (v81 >= v84)
    {
      goto LABEL_40;
    }

    if (!v163)
    {
      break;
    }

    v86 = v165;
    v87 = *v166;
    (*v166)(v165, v74, v8);
    swift_arrayInitWithTakeFrontToBack();
    v87(v72, v86, v8);
    v72 += v162;
    v74 = &v162[v74];
    v88 = __CFADD__(v73++, 1);
    v75 = v164;
    if (v88)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

void sub_20BEF35F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a4;
  v77 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v20 = a2;
  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = v77 - a2;
  if (v77 - a2 != 0x8000000000000000 || v19 != -1)
  {
    v22 = (a2 - a1) / v19;
    v80 = a1;
    v23 = v73;
    v79 = v73;
    v76 = v19;
    if (v22 < v21 / v19)
    {
      v24 = v22 * v19;
      v25 = v73;
      if (v73 < a1 || a1 + v24 <= v73)
      {
        v26 = v20;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v73 == a1)
        {
          goto LABEL_17;
        }

        v26 = v20;
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = v26;
LABEL_17:
      v75 = v23 + v24;
      v78 = v23 + v24;
      if (v24 >= 1 && v20 < v77)
      {
        v29 = *(v7 + 16);
        v74 = v7 + 16;
        v30 = (v7 + 8);
        while (1)
        {
          v31 = v20;
          v29(v17);
          (v29)(v13, v25, v6);
          sub_20C132494();
          v33 = v32;
          sub_20C132494();
          if (v33 >= v34)
          {
            v42 = *v30;
            (*v30)(v13, v6);
            v42(v17, v6);
LABEL_29:
            v40 = v76;
            v43 = v25 + v76;
            if (a1 < v25 || a1 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_34:
              v40 = v76;
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_34;
            }

            v79 = v43;
            v25 = v43;
            v20 = v31;
            goto LABEL_39;
          }

          sub_20C1324B4();
          v36 = v35;
          sub_20C1324B4();
          v38 = v37;
          v39 = *v30;
          (*v30)(v13, v6);
          v39(v17, v6);
          if (v36 >= v38)
          {
            goto LABEL_29;
          }

          v40 = v76;
          v41 = v31 + v76;
          if (a1 < v31 || a1 >= v41)
          {
            break;
          }

          if (a1 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_37:
            v40 = v76;
          }

          v20 = v41;
LABEL_39:
          a1 += v40;
          v80 = a1;
          if (v25 >= v75 || v20 >= v77)
          {
            goto LABEL_69;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_37;
      }

      goto LABEL_69;
    }

    v27 = v21 / v19 * v19;
    v71 = v15;
    if (v73 < a2 || a2 + v27 <= v73)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v73 == a2)
      {
LABEL_44:
        v44 = v23 + v27;
        if (v27 >= 1)
        {
          v45 = -v19;
          v68 = (v7 + 8);
          v69 = (v7 + 16);
          v46 = v23 + v27;
          v47 = v10;
          v76 = -v19;
          while (2)
          {
            while (1)
            {
              v74 = v44;
              v67 = v44;
              v48 = v20 + v45;
              v72 = v20 + v45;
              v70 = v20;
              while (1)
              {
                v50 = v77;
                if (v20 <= a1)
                {
                  v80 = v20;
                  v78 = v67;
                  goto LABEL_69;
                }

                v51 = *v69;
                v75 = v46 + v45;
                v51(v47);
                v52 = v47;
                v53 = v71;
                (v51)(v71, v48, v6);
                sub_20C132494();
                v55 = v54;
                sub_20C132494();
                if (v55 >= v56)
                {
                  v60 = 0;
                }

                else
                {
                  sub_20C1324B4();
                  v58 = v57;
                  sub_20C1324B4();
                  v60 = v58 < v59;
                }

                v77 = v50 + v76;
                v61 = *v68;
                (*v68)(v53, v6);
                v61(v52, v6);
                v47 = v52;
                if (v60)
                {
                  break;
                }

                v62 = v75;
                v63 = v75;
                v64 = v73;
                if (v50 < v46 || v77 >= v46)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v50 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v74 = v63;
                v46 = v63;
                v49 = v62 > v64;
                v48 = v72;
                v45 = v76;
                v20 = v70;
                if (!v49)
                {
                  v44 = v74;
                  goto LABEL_68;
                }
              }

              v65 = v73;
              if (v50 < v70 || v77 >= v70)
              {
                break;
              }

              v20 = v72;
              v44 = v74;
              v45 = v76;
              if (v50 != v70)
              {
                swift_arrayInitWithTakeBackToFront();
                v20 = v72;
              }

              if (v46 <= v65)
              {
                goto LABEL_68;
              }
            }

            v66 = v72;
            swift_arrayInitWithTakeFrontToBack();
            v20 = v66;
            v44 = v74;
            v45 = v76;
            if (v46 > v65)
            {
              continue;
            }

            break;
          }
        }

LABEL_68:
        v80 = v20;
        v78 = v44;
LABEL_69:
        sub_20B6A08BC(&v80, &v79, &v78);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v19 = v76;
    v20 = a2;
    goto LABEL_44;
  }

LABEL_72:
  __break(1u);
}