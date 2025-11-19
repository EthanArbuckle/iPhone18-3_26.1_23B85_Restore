uint64_t sub_25EB0EE2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

void *sub_25EB0EE68(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_25EB6E7E8();

    if (v7)
    {
      a4(v8);
      swift_dynamicCast();
      return v14;
    }
  }

  else if (*(a2 + 16))
  {
    v10 = a3();
    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v10);
      v13 = v12;
      return v12;
    }
  }

  return 0;
}

uint64_t sub_25EB0EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25EAFCBE4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_25EB0EF7C(void *a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_25EB6E648();
  }

  else if (*(a2 + 16) && (a3(0), v6 = *(a2 + 40), v7 = sub_25EB6E508(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v9);
      v5 = sub_25EB6E518();

      if (v5)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_25EB0F088(uint64_t a1)
{
  v2 = sub_25EB6E138();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_25EB25C78(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB0F298(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_25EB26244(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_25EB0F39C(unint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    a2(0);
    sub_25EB24DC0(a3, 255, a4);
    sub_25EB6E478();
    v6 = v23[1];
    v10 = v23[2];
    v11 = v23[3];
    v12 = v23[4];
    v13 = v23[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_25EB0EC08();
      return;
    }

    while (1)
    {
      a5(v23);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_25EB6E638())
      {
        a2(0);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_25EB0F5A4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_25EB6E718();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    result = sub_25EB6E568();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v27 = v1 + 64;
    v28 = v1;
    v29 = v2;
    v30 = v8;
    v31 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v32 = v7;
      v11 = (*(v1 + 48) + 32 * v6);
      v13 = *v11;
      v12 = v11[1];
      if (v11[3])
      {
        v14 = v11[2];
        v15 = objc_allocWithZone(PSSGResourceID);

        v16 = sub_25EB6E258();
        v17 = sub_25EB6E258();
        [v15 initLocalWithName:v16 session:v17];

        v1 = v28;
      }

      else
      {
        v18 = objc_allocWithZone(PSSGResourceID);

        v17 = sub_25EB6E258();
        [v18 initGlobalWithName_];
      }

      sub_25EB6E6F8();
      v19 = *(v33 + 16);
      sub_25EB6E728();
      sub_25EB6E738();
      result = sub_25EB6E708();
      v9 = 1 << *(v1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_26;
      }

      v4 = v31;
      v20 = *(v31 + 8 * v10);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v8 = v30;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
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
            result = sub_25EB0DE08(v6, v30, 0);
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_25EB0DE08(v6, v30, 0);
      }

LABEL_4:
      v7 = v32 + 1;
      v6 = v9;
      if (v32 + 1 == v29)
      {
        return v33;
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
LABEL_28:
    __break(1u);
  }

  return result;
}

void sub_25EB0F894(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_25EB6E5F8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v47 = MEMORY[0x277D84F90];
    sub_25EB2502C(0, v2 & ~(v2 >> 63), 0);
    v42 = v47;
    if (v39)
    {
      v3 = sub_25EB6E5A8();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_25EB6E568();
      v4 = *(v1 + 36);
    }

    v44 = v3;
    v45 = v4;
    v46 = v39 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v36 = v1 + 56;
      v35 = v1 + 64;
      v37 = v2;
      v38 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_38;
        }

        v9 = v44;
        v10 = v46;
        v40 = v45;
        sub_25EB2EF50(v44, v45, v46, v1, type metadata accessor for PSSGResourceID);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_25EB6E268();
        v41 = v15;

        v16 = [v12 session];
        if (v16)
        {
          v17 = v16;
          v18 = sub_25EB6E268();
          v20 = v19;
        }

        else
        {

          v18 = 0;
          v20 = 0;
        }

        v21 = v42;
        v47 = v42;
        v23 = *(v42 + 16);
        v22 = *(v42 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_25EB2502C((v22 > 1), v23 + 1, 1);
          v21 = v47;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (v21 + 32 * v23);
        v24[4] = v14;
        v24[5] = v41;
        v24[6] = v18;
        v24[7] = v20;
        v42 = v21;
        if (v39)
        {
          v1 = v38;
          if (!v10)
          {
            goto LABEL_43;
          }

          if (sub_25EB6E5C8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124A8, &qword_25EB79620);
          v7 = sub_25EB6E468();
          sub_25EB6E658();
          v7(v43, 0);
          if (v6 == v37)
          {
LABEL_35:
            sub_25EB0DE08(v44, v45, v46);
            return;
          }
        }

        else
        {
          v1 = v38;
          if (v10)
          {
            goto LABEL_44;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v25 = 1 << *(v38 + 32);
          if (v9 >= v25)
          {
            goto LABEL_39;
          }

          v26 = v9 >> 6;
          v27 = *(v36 + 8 * (v9 >> 6));
          if (((v27 >> v9) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v38 + 36) != v40)
          {
            goto LABEL_41;
          }

          v28 = v27 & (-2 << (v9 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v37;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v35 + 8 * v26);
            v2 = v37;
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                sub_25EB0DE08(v9, v40, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_34;
              }
            }

            sub_25EB0DE08(v9, v40, 0);
          }

LABEL_34:
          v34 = *(v38 + 36);
          v44 = v25;
          v45 = v34;
          v46 = 0;
          if (v6 == v2)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_25EB0FC54(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_25EB6E718();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    result = sub_25EB6E568();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v28 = v1 + 64;
    v29 = v8;
    v30 = v2;
    v31 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v32 = v7;
      v11 = v4;
      v12 = (*(v1 + 48) + 32 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      v17 = objc_allocWithZone(PSSGGraphID);

      v18 = sub_25EB6E258();
      v19 = sub_25EB6E258();
      [v17 initWithName:v18 session:v19];

      sub_25EB6E6F8();
      v20 = *(v33 + 16);
      sub_25EB6E728();
      v1 = v31;
      sub_25EB6E738();
      result = sub_25EB6E708();
      v9 = 1 << *(v31 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v21 = *(v11 + 8 * v10);
      if ((v21 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v4 = v11;
      v8 = v29;
      if (v29 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v28 + 8 * v10);
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_25EB0DE08(v6, v29, 0);
            v9 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_25EB0DE08(v6, v29, 0);
      }

LABEL_4:
      v7 = v32 + 1;
      v6 = v9;
      if (v32 + 1 == v30)
      {
        return v33;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_25EB0FEF0(uint64_t a1)
{
  v1 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_25EB6E5F8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v46 = MEMORY[0x277D84F90];
    sub_25EB2506C(0, v2 & ~(v2 >> 63), 0);
    v41 = v46;
    if (v38)
    {
      v3 = sub_25EB6E5A8();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_25EB6E568();
      v4 = *(v1 + 36);
    }

    v43 = v3;
    v44 = v4;
    v45 = v38 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      v37 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v43;
        v10 = v45;
        v39 = v44;
        sub_25EB2EF50(v43, v44, v45, v1, type metadata accessor for PSSGGraphID);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_25EB6E268();
        v40 = v15;

        v16 = [v12 session];
        v17 = sub_25EB6E268();
        v19 = v18;

        v20 = v41;
        v46 = v41;
        v22 = *(v41 + 16);
        v21 = *(v41 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_25EB2506C((v21 > 1), v22 + 1, 1);
          v20 = v46;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (v20 + 32 * v22);
        v23[4] = v14;
        v23[5] = v40;
        v23[6] = v17;
        v23[7] = v19;
        v41 = v20;
        if (v38)
        {
          v1 = v37;
          if (!v10)
          {
            goto LABEL_40;
          }

          if (sub_25EB6E5C8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12480, &qword_25EB795F8);
          v7 = sub_25EB6E468();
          sub_25EB6E658();
          v7(v42, 0);
          if (v6 == v36)
          {
LABEL_32:
            sub_25EB0DE08(v43, v44, v45);
            return;
          }
        }

        else
        {
          v1 = v37;
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v24 = 1 << *(v37 + 32);
          if (v9 >= v24)
          {
            goto LABEL_36;
          }

          v25 = v9 >> 6;
          v26 = *(v35 + 8 * (v9 >> 6));
          if (((v26 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v37 + 36) != v39)
          {
            goto LABEL_38;
          }

          v27 = v26 & (-2 << (v9 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v36;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            v2 = v36;
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_25EB0DE08(v9, v39, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_31;
              }
            }

            sub_25EB0DE08(v9, v39, 0);
          }

LABEL_31:
          v33 = *(v37 + 36);
          v43 = v24;
          v44 = v33;
          v45 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_25EB1029C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v44 = MEMORY[0x277D84F90];
  sub_25EB250CC(0, v1, 0);
  v2 = v44;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = sub_25EB6E568();
  v7 = *(v3 + 36);
  result = type metadata accessor for PSSGGraph(v6);
  v39 = v3;
  v9 = 0;
  v35 = v3 + 72;
  v36 = v1;
  v37 = v7;
  v38 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v41 = v6 >> 6;
    v40 = v9;
    v11 = *(v3 + 56);
    v12 = (*(v3 + 48) + 32 * v6);
    v13 = *v12;
    v14 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = (v11 + 24 * v6);
    v18 = v17[1];
    v42 = *v17;
    v43 = v2;
    v19 = v17[2];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v20 = objc_allocWithZone(PSSGGraphID);
    v21 = sub_25EB6E258();
    v22 = sub_25EB6E258();
    v23 = [v20 initWithName:v21 session:v22];

    v24 = sub_25EB130B0(v42, v18);
    v2 = v43;

    v26 = *(v43 + 16);
    v25 = *(v43 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_25EB250CC((v25 > 1), v26 + 1, 1);
      v2 = v43;
    }

    *(v2 + 16) = v26 + 1;
    v27 = v2 + 16 * v26;
    *(v27 + 32) = v23;
    *(v27 + 40) = v24;
    v3 = v39;
    v10 = 1 << *(v39 + 32);
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v38;
    v28 = *(v38 + 8 * v41);
    if ((v28 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v7) = v37;
    if (v37 != *(v39 + 36))
    {
      goto LABEL_26;
    }

    v29 = v28 & (-2 << (v6 & 0x3F));
    if (v29)
    {
      v10 = __clz(__rbit64(v29)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v41 << 6;
      v31 = v41 + 1;
      v32 = (v35 + 8 * v41);
      while (v31 < (v10 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_25EB0DE08(v6, v37, 0);
          v10 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_25EB0DE08(v6, v37, 0);
    }

LABEL_4:
    v9 = v40 + 1;
    v6 = v10;
    if (v40 + 1 == v36)
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

uint64_t sub_25EB105CC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v55;
  }

  v4 = a1;
  v57 = MEMORY[0x277D84F90];
  sub_25EB2508C(0, v3, 0);
  v55 = v57;
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  result = sub_25EB6E568();
  v8 = result;
  v9 = 0;
  v10 = *(v4 + 36);
  v41 = v4 + 72;
  v42 = v3;
  v44 = v4 + 64;
  v45 = v4;
  v43 = v10;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_28;
    }

    if (v10 != *(v4 + 36))
    {
      goto LABEL_29;
    }

    v56 = v2;
    v47 = v8 >> 6;
    v46 = v9;
    v12 = (*(v4 + 48) + 32 * v8);
    v13 = *v12;
    v14 = (*(v4 + 56) + 40 * v8);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = v14[4];
    v54 = *v14;
    v53 = v14[3];
    v52 = v12[1];
    if (v12[3])
    {
      v49 = v12[2];
      v50 = objc_allocWithZone(PSSGResourceID);

      sub_25EB0E880(v16, v15);

      v19 = sub_25EB6E258();
      v20 = sub_25EB6E258();
      v51 = [v50 initLocalWithName:v19 session:v20];
    }

    else
    {
      v21 = objc_allocWithZone(PSSGResourceID);

      sub_25EB0E880(v16, v15);

      v20 = sub_25EB6E258();
      v51 = [v21 initGlobalWithName_];
    }

    if (v15)
    {
      v22 = objc_allocWithZone(PSSGGraphID);
      v23 = v54;
      sub_25EB0E880(v54, v15);

      sub_25EB0E880(v54, v15);
      v24 = sub_25EB6E258();
      v25 = sub_25EB6E258();
      v26 = [v22 initWithName:v24 session:v25];
      sub_25EB315C4(v54, v15);
    }

    else
    {
      v23 = v54;
      sub_25EB0E880(v54, 0);

      v26 = 0;
    }

    v48 = objc_allocWithZone(PSSGResource);

    v28 = sub_25EB0FC54(v27);
    sub_25EB315C4(v23, v15);
    swift_bridgeObjectRelease_n();
    sub_25EB0CF6C(v28);

    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
    v29 = sub_25EB6E428();

    v30 = [v48 initWithProducer:v26 consumers:v29];

    sub_25EB315C4(v23, v15);

    v32 = *(v57 + 16);
    v31 = *(v57 + 24);
    if (v32 >= v31 >> 1)
    {
      result = sub_25EB2508C((v31 > 1), v32 + 1, 1);
    }

    *(v57 + 16) = v32 + 1;
    v33 = v57 + 16 * v32;
    *(v33 + 32) = v51;
    *(v33 + 40) = v30;
    v5 = v44;
    v4 = v45;
    v11 = 1 << *(v45 + 32);
    v10 = v43;
    if (v8 >= v11)
    {
      goto LABEL_30;
    }

    v34 = *(v44 + 8 * v47);
    if ((v34 & (1 << v8)) == 0)
    {
      goto LABEL_31;
    }

    if (v43 != *(v45 + 36))
    {
      goto LABEL_32;
    }

    v35 = v34 & (-2 << (v8 & 0x3F));
    if (v35)
    {
      v11 = __clz(__rbit64(v35)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v2 = v56;
    }

    else
    {
      v36 = v47 << 6;
      v37 = v47 + 1;
      v38 = (v41 + 8 * v47);
      v2 = v56;
      while (v37 < (v11 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_25EB0DE08(v8, v43, 0);
          v11 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_25EB0DE08(v8, v43, 0);
    }

LABEL_4:
    v9 = v46 + 1;
    v8 = v11;
    if (v46 + 1 == v42)
    {
      return v55;
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
  __break(1u);
  return result;
}

void sub_25EB10B34(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_25EB6E5F8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v48 = MEMORY[0x277D84F90];
    sub_25EB2512C(0, v2 & ~(v2 >> 63), 0);
    v43 = v48;
    if (v36)
    {
      v3 = sub_25EB6E758();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_25EB6E568();
      v4 = *(v1 + 36);
    }

    v45 = v3;
    v46 = v4;
    v47 = v36 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v34 = v2;
      v35 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v37 = v45;
        v38 = v46;
        v39 = v6 + 1;
        v42 = v47;
        sub_25EB2F2C0(v44, v45, v46, v47, v1, type metadata accessor for PSSGGraphID, sub_25EAFD168, type metadata accessor for PSSGGraph);
        v14 = v13;
        v15 = v44[0];
        v16 = [v13 name];
        v17 = sub_25EB6E268();
        v40 = v18;
        v41 = v17;

        v19 = [v14 session];
        v20 = sub_25EB6E268();
        v22 = v21;

        v23 = v15;
        v24 = sub_25EB2FB74(v23);
        v26 = v25;
        v28 = v27;

        v29 = v43;
        v48 = v43;
        v31 = *(v43 + 16);
        v30 = *(v43 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_25EB2512C((v30 > 1), v31 + 1, 1);
          v29 = v48;
        }

        *(v29 + 16) = v31 + 1;
        v32 = (v29 + 56 * v31);
        v32[4] = v41;
        v32[5] = v40;
        v32[6] = v20;
        v32[7] = v22;
        v32[8] = v24;
        v32[9] = v26;
        v32[10] = v28;
        v43 = v29;
        if (v36)
        {
          v1 = v35;
          if (!v42)
          {
            goto LABEL_26;
          }

          v2 = v34;
          if (sub_25EB6E788())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12498, &unk_25EB79610);
          v33 = sub_25EB6E218();
          sub_25EB6E828();
          v33(v44, 0);
        }

        else
        {
          v1 = v35;
          sub_25EB2F15C(v37, v38, v42, v35, type metadata accessor for PSSGGraphID, sub_25EAFD168);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          sub_25EB0DE08(v37, v38, v42);
          v45 = v8;
          v46 = v10;
          v47 = v12 & 1;
          v2 = v34;
        }

        ++v6;
        if (v39 == v2)
        {
          sub_25EB0DE08(v45, v46, v47);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_25EB10EB8(uint64_t a1)
{
  v1 = a1;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_25EB6E5F8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v62 = MEMORY[0x277D84F90];
    sub_25EB2510C(0, v2 & ~(v2 >> 63), 0);
    v56 = v62;
    if (v47)
    {
      result = sub_25EB6E758();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      result = sub_25EB6E568();
      v4 = *(v1 + 36);
    }

    v59 = result;
    v60 = v4;
    v61 = v47 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v45 = v2;
      v46 = v1;
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v48 = v59;
        v49 = v60;
        v55 = v61;
        sub_25EB2F2C0(&v58, v59, v60, v61, v1, type metadata accessor for PSSGResourceID, sub_25EAFD114, type metadata accessor for PSSGResource);
        v8 = v58;
        v10 = v9;
        v11 = [v10 name];
        v12 = sub_25EB6E268();
        v53 = v13;
        v54 = v12;

        v14 = [v10 session];
        if (v14)
        {
          v15 = v14;
          v16 = sub_25EB6E268();
          v51 = v17;
          v52 = v16;
        }

        else
        {

          v51 = 0;
          v52 = 0;
        }

        v18 = v8;
        v19 = [v18 producer];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 name];
          v50 = sub_25EB6E268();
          v23 = v22;

          v24 = [v20 session];
          v25 = sub_25EB6E268();
          v27 = v26;
        }

        else
        {
          v50 = 0;
          v23 = 0;
          v25 = 0;
          v27 = 0;
        }

        sub_25EB315C4(0, 0);
        v28 = [v18 consumers];
        type metadata accessor for PSSGGraphID(0);
        sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
        v29 = sub_25EB6E438();

        sub_25EB0FEF0(v29);
        v31 = v30;

        v32 = sub_25EB0D11C(v31);

        v33 = v56;
        v62 = v56;
        v35 = *(v56 + 16);
        v34 = *(v56 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_25EB2510C((v34 > 1), v35 + 1, 1);
          v33 = v62;
        }

        *(v33 + 16) = v35 + 1;
        v36 = (v33 + 72 * v35);
        v36[4] = v54;
        v36[5] = v53;
        v36[6] = v52;
        v36[7] = v51;
        v36[8] = v50;
        v36[9] = v23;
        v36[10] = v25;
        v36[11] = v27;
        v36[12] = v32;
        v56 = v33;
        if (v47)
        {
          v1 = v46;
          if (!v55)
          {
            goto LABEL_33;
          }

          v37 = v45;
          if (sub_25EB6E788())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12470, &qword_25EB795E8);
          v44 = sub_25EB6E218();
          sub_25EB6E828();
          result = v44(v57, 0);
          if (v7 == v45)
          {
LABEL_28:
            sub_25EB0DE08(v59, v60, v61);
            return v56;
          }
        }

        else
        {
          v1 = v46;
          sub_25EB2F15C(v48, v49, v55, v46, type metadata accessor for PSSGResourceID, sub_25EAFD114);
          v39 = v38;
          v41 = v40;
          v43 = v42;
          result = sub_25EB0DE08(v48, v49, v55);
          v59 = v39;
          v60 = v41;
          v61 = v43 & 1;
          v37 = v45;
          if (v7 == v45)
          {
            goto LABEL_28;
          }
        }

        ++v6;
        if (v7 >= v37)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_25EB11390()
{
  v0 = sub_25EB6E1B8();
  __swift_allocate_value_buffer(v0, qword_27FD2EED0);
  __swift_project_value_buffer(v0, qword_27FD2EED0);

  return sub_25EB6E1A8();
}

id PSSGGraphInput.init(resource:type:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithResource:a1 type:a2];

  return v3;
}

id PSSGGraphInput.init(resource:type:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___PSSGGraphInput_resource) = a1;
  *(v2 + OBJC_IVAR___PSSGGraphInput_type) = a2;
  v4.super_class = PSSGGraphInput;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t PSSGGraphInput.description.getter()
{
  v1 = v0;
  v2 = [v0 resource];
  v3 = [v2 description];
  v4 = sub_25EB6E268();

  MEMORY[0x25F8C69B0](8250, 0xE200000000000000);
  [v1 type];
  v5 = sub_25EB6E968();
  MEMORY[0x25F8C69B0](v5);

  return v4;
}

BOOL PSSGGraphInput.isEqual(_:)(uint64_t a1)
{
  v2 = sub_25EB0EDAC(a1, v11, &qword_27FD12030, &qword_25EB78E40);
  if (v12)
  {
    type metadata accessor for PSSGGraphInput(v2);
    if (swift_dynamicCast())
    {
      sub_25EAFCC70(0, &qword_27FD12038, 0x277D82BB8);
      v3 = v1;
      v4 = [v1 resource];
      v5 = [v10 resource];
      v6 = sub_25EB6E518();

      if (v6)
      {
        v7 = [v3 type];
        v8 = [v10 type];

        return v7 == v8;
      }
    }
  }

  else
  {
    sub_25EB0D660(v11, &qword_27FD12030, &qword_25EB78E40);
  }

  return 0;
}

unint64_t PSSGGraphInput.hash.getter()
{
  v1 = [v0 resource];
  v2 = [v1 hash];

  return [v0 type] ^ v2;
}

uint64_t sub_25EB11B5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12530, &qword_25EB79930);
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v14 = v1[4];
  v15 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB31E1C();

  sub_25EB6EA78();
  v18 = v7;
  v19 = v8;
  v20 = v15;
  v21 = v10;
  v22 = 0;
  sub_25EB24FB8();
  v12 = v16;
  sub_25EB6E948();

  if (!v12)
  {
    v18 = v14;
    v22 = 1;
    type metadata accessor for PSInputType(0);
    sub_25EB24DC0(&qword_27FD12540, 255, type metadata accessor for PSInputType);
    sub_25EB6E948();
  }

  return (*(v17 + 8))(v6, v3);
}

uint64_t sub_25EB11D70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12548, &qword_25EB79938);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB31E1C();
  sub_25EB6EA68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = 0;
  sub_25EB30590();
  sub_25EB6E8F8();
  v11 = v18;
  v12 = v20;
  v15 = v19;
  v16 = v17;
  type metadata accessor for PSInputType(0);
  v21 = 1;
  sub_25EB24DC0(&qword_27FD12550, 255, type metadata accessor for PSInputType);
  sub_25EB6E8F8();
  (*(v6 + 8))(v9, v5);
  v13 = v17;
  *a2 = v16;
  a2[1] = v11;
  a2[2] = v15;
  a2[3] = v12;
  a2[4] = v13;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25EB11FD4()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0x656372756F736572;
  }

  *v0;
  return result;
}

uint64_t sub_25EB12008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F736572 && a2 == 0xE800000000000000;
  if (v6 || (sub_25EB6E988() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EB6E988();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25EB120E4(uint64_t a1)
{
  v2 = sub_25EB31E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB12120(uint64_t a1)
{
  v2 = sub_25EB31E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25EB1230C()
{
  v1 = [v0 inputs];
  type metadata accessor for PSSGGraphInput(v1);
  v2 = sub_25EB6E3D8();

  v13 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25EB6E5F8())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F8C6D90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 resource];
      v10 = [v9 session];

      if (v10)
      {
      }

      else
      {
        sub_25EB6E6F8();
        v5 = *(v13 + 16);
        sub_25EB6E728();
        sub_25EB6E738();
        sub_25EB6E708();
      }

      ++v4;
      if (v8 == i)
      {
        v11 = v13;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:

  return v11;
}

id sub_25EB124E0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a1;
  a3();

  a5(a4);
  v9 = sub_25EB6E3C8();

  return v9;
}

uint64_t sub_25EB12560()
{
  v1 = [v0 inputs];
  type metadata accessor for PSSGGraphInput(v1);
  v2 = sub_25EB6E3D8();

  v18 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25EB6E5F8())
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F8C6D90](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v7 type])
      {
      }

      else
      {
        sub_25EB6E6F8();
        v6 = *(v18 + 16);
        sub_25EB6E728();
        sub_25EB6E738();
        sub_25EB6E708();
      }

      ++v5;
      if (v9 == i)
      {
        v10 = v18;
        v4 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_16:

  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      goto LABEL_19;
    }

LABEL_30:

    return MEMORY[0x277D84F90];
  }

  v11 = sub_25EB6E5F8();
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_19:
  v19 = v4;
  result = sub_25EB6E718();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x25F8C6D90](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      v16 = [v14 resource];

      sub_25EB6E6F8();
      v17 = *(v19 + 16);
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
    }

    while (v11 != v13);

    return v19;
  }

  return result;
}

void *sub_25EB12868()
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = [v0 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v2 = sub_25EB6E438();

  if ((v2 & 0xC000000000000001) == 0)
  {
    v20 = *(v2 + 32);
    v39 = ((1 << v20) + 63) >> 6;
    if ((v20 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  v4 = MEMORY[0x277D84FA0];
  v43 = MEMORY[0x277D84FA0];
  v2 = sub_25EB6E5B8();
  v5 = sub_25EB6E638();
  if (!v5)
  {
LABEL_20:

    goto LABEL_38;
  }

  while (1)
  {
    v41 = v5;
    swift_dynamicCast();
    v6 = [v42 session];
    if (!v6)
    {
      break;
    }

LABEL_5:
    v5 = sub_25EB6E638();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v7 = v42;
  v8 = v4[2];
  if (v4[3] <= v8)
  {
    sub_25EB27A90(v8 + 1, &qword_27FD11E00, &unk_25EB79550);
  }

  v4 = v43;
  v9 = *(v43 + 40);
  v10 = sub_25EB6E508();
  v11 = v43 + 56;
  v12 = -1 << *(v43 + 32);
  v13 = v10 & ~v12;
  v14 = v13 >> 6;
  if (((-1 << v13) & ~*(v43 + 56 + 8 * (v13 >> 6))) != 0)
  {
    v15 = __clz(__rbit64((-1 << v13) & ~*(v43 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(v4[6] + 8 * v15) = v7;
    ++v4[2];
    goto LABEL_5;
  }

  v16 = 0;
  v17 = (63 - v12) >> 6;
  while (++v14 != v17 || (v16 & 1) == 0)
  {
    v18 = v14 == v17;
    if (v14 == v17)
    {
      v14 = 0;
    }

    v16 |= v18;
    v19 = *(v11 + 8 * v14);
    if (v19 != -1)
    {
      v15 = __clz(__rbit64(~v19)) + (v14 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_40:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v38 = &v38;
    MEMORY[0x28223BE20](v3);
    v22 = &v38 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v22, v21);
    v40 = 0;
    v23 = 0;
    v24 = 1 << *(v2 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v2 + 56);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_32:
      v31 = v28 | (v23 << 6);
      v32 = *(*(v2 + 48) + 8 * v31);
      v33 = [v32 session];

      if (v33)
      {
      }

      else
      {
        *&v22[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_37:
          v4 = sub_25EB08FC8(v22, v39, v40, v2);
          goto LABEL_38;
        }
      }
    }

    v29 = v23;
    while (1)
    {
      v23 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
        goto LABEL_37;
      }

      v30 = *(v2 + 56 + 8 * v23);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v26 = (v30 - 1) & v30;
        goto LABEL_32;
      }
    }
  }

  v37 = swift_slowAlloc();
  v4 = sub_25EB29AC8(v37, v39, v2, sub_25EB12CEC);

  MEMORY[0x25F8C9C00](v37, -1, -1);
LABEL_38:
  v35 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL sub_25EB12CEC(id *a1)
{
  v1 = [*a1 session];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

id PSSGGraph.init(type:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithType_];
}

{
  *(v1 + OBJC_IVAR___PSSGGraph_inputs) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR___PSSGGraph_outputs) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR___PSSGGraph_type) = a1;
  v3.super_class = PSSGGraph;
  return objc_msgSendSuper2(&v3, sel_init);
}

id PSSGGraph.init(type:inputs:outputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  type metadata accessor for PSSGGraphInput(a1);
  v5 = sub_25EB6E3C8();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v6 = sub_25EB6E428();

LABEL_6:
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:a1 inputs:v5 outputs:v6];

  return v7;
}

{
  v4 = OBJC_IVAR___PSSGGraph_inputs;
  v5 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___PSSGGraph_inputs] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR___PSSGGraph_outputs;
  v7 = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR___PSSGGraph_outputs] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR___PSSGGraph_type] = a1;
  if (a2)
  {
    v5 = a2;
  }

  *&v3[v4] = v5;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  v9 = *&v3[v6];
  *&v3[v6] = v8;

  v11.receiver = v3;
  v11.super_class = PSSGGraph;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_25EB130B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v24 = MEMORY[0x277D84F90];
    sub_25EB6E718();
    v5 = (a2 + 64);
    do
    {
      v11 = *(v5 - 4);
      v10 = *(v5 - 3);
      v12 = *v5;
      if (*(v5 - 1))
      {
        v13 = *(v5 - 2);
        v14 = objc_allocWithZone(PSSGResourceID);

        swift_bridgeObjectRetain_n();
        v15 = sub_25EB6E258();
        v7 = sub_25EB6E258();

        v8 = [v14 initLocalWithName:v15 session:v7];
      }

      else
      {
        v6 = objc_allocWithZone(PSSGResourceID);

        v7 = sub_25EB6E258();
        v8 = [v6 initGlobalWithName_];
      }

      v5 += 5;

      [objc_allocWithZone(PSSGGraphInput) initWithResource:v8 type:v12];

      sub_25EB6E6F8();
      v9 = *(v24 + 16);
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
      --v4;
    }

    while (v4);
    a1 = v23;
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for PSSGGraphInput(v16);
  v17 = sub_25EB6E3C8();

  v19 = sub_25EB0F5A4(v18);

  sub_25EB0CE64(v19);

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v20 = sub_25EB6E428();

  v21 = [v16 initWithType:a1 inputs:v17 outputs:v20];

  return v21;
}

uint64_t PSSGGraph.description.getter()
{
  v1 = v0;
  sub_25EB6E6B8();

  [v0 type];
  v2 = sub_25EB6E968();
  MEMORY[0x25F8C69B0](v2);

  MEMORY[0x25F8C69B0](0x737475706E69202CLL, 0xEA0000000000203ALL);
  v3 = [v0 inputs];
  v4 = type metadata accessor for PSSGGraphInput(v3);
  v5 = sub_25EB6E3D8();

  v6 = MEMORY[0x25F8C6AB0](v5, v4);
  v8 = v7;

  MEMORY[0x25F8C69B0](v6, v8);

  MEMORY[0x25F8C69B0](0x74757074756F202CLL, 0xEB00000000203A73);
  v9 = [v1 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  sub_25EB6E438();

  v10 = sub_25EB6E448();
  v12 = v11;

  MEMORY[0x25F8C69B0](v10, v12);

  MEMORY[0x25F8C69B0](125, 0xE100000000000000);
  return 0x203A657079747BLL;
}

uint64_t sub_25EB135B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 type];
  v5 = [v2 inputs];
  type metadata accessor for PSSGGraphInput(v5);
  sub_25EB6E3D8();

  v6 = [v2 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  sub_25EB6E438();

  v7 = objc_allocWithZone(PSSGGraph);
  v8 = sub_25EB6E3C8();

  v9 = sub_25EB6E428();

  v10 = [v7 initWithType:v4 inputs:v8 outputs:v9];

  result = type metadata accessor for PSSGGraph(v11);
  a1[3] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_25EB13908(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12318, &qword_25EB79510);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB313C0();
  sub_25EB6EA78();
  v17 = a2;
  v16 = 0;
  type metadata accessor for PSGraphFrequencyType(0);
  sub_25EB24DC0(&qword_27FD12328, 255, type metadata accessor for PSGraphFrequencyType);
  sub_25EB6E948();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12330, &qword_25EB79518);
    sub_25EB31414();
    sub_25EB6E948();
    v17 = a4;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12348, &qword_25EB79520);
    sub_25EB314EC();
    sub_25EB6E948();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_25EB13B5C()
{
  v1 = *v0;
  sub_25EB6EA28();
  MEMORY[0x25F8C7100](v1);
  return sub_25EB6EA58();
}

uint64_t sub_25EB13BD0()
{
  v1 = *v0;
  sub_25EB6EA28();
  MEMORY[0x25F8C7100](v1);
  return sub_25EB6EA58();
}

uint64_t sub_25EB13C14()
{
  v1 = 0x737475706E69;
  if (*v0 != 1)
  {
    v1 = 0x7374757074756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_25EB13C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25EB2FE64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25EB13C8C(uint64_t a1)
{
  v2 = sub_25EB313C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB13CC8(uint64_t a1)
{
  v2 = sub_25EB313C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25EB13D04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25EB2FF78(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_25EB13D54(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((sub_25EB245A8(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_25EB248F8(v3, v2);
}

uint64_t sub_25EB13E88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t), void *a7)
{
  a4(0);
  sub_25EB24DC0(a5, 255, a6);
  v11 = sub_25EB6E438();
  v12 = *(a1 + *a7);
  *(a1 + *a7) = v11;
}

id PSSGResource.init(producer:consumers:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
    v3 = sub_25EB6E428();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProducer:a1 consumers:v3];

  return v4;
}

id PSSGResource.init(producer:consumers:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___PSSGResource_producer;
  *(v2 + OBJC_IVAR___PSSGResource_producer) = 0;
  v4 = OBJC_IVAR___PSSGResource_consumers;
  *(v2 + v3) = a1;
  v5 = MEMORY[0x277D84FA0];
  if (a2)
  {
    v5 = a2;
  }

  *(v2 + v4) = v5;
  v7.super_class = PSSGResource;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_25EB1433C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12358, &qword_25EB79528);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v19 = v1[4];
  v12 = a1[3];
  v11 = a1[4];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_25EB0E880(v7, v8);
  sub_25EB31570();
  sub_25EB6EA78();
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = 0;
  sub_25EB24EE0();
  v16 = v20;
  sub_25EB6E918();
  sub_25EB315C4(v22, v23);
  if (!v16)
  {
    v22 = v19;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12368, &qword_25EB79530);
    sub_25EB31608();
    sub_25EB6E948();
  }

  return (*(v21 + 8))(v6, v15);
}

uint64_t sub_25EB14520@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD123A0, &unk_25EB79540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB31570();
  sub_25EB6EA68();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_25EB315C4(0, 0);
  }

  else
  {
    v24 = 0;
    sub_25EB304E8();
    sub_25EB6E8C8();
    v18 = a2;
    v19 = v6;
    v12 = v20;
    v13 = v21;
    v15 = v22;
    v14 = v23;
    sub_25EB315C4(0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12368, &qword_25EB79530);
    v24 = 1;
    sub_25EB317E8();
    sub_25EB6E8F8();
    (*(v19 + 8))(v9, v5);
    v16 = v20;
    v17 = v18;
    *v18 = v12;
    v17[1] = v13;
    v17[2] = v15;
    v17[3] = v14;
    v17[4] = v16;
    sub_25EB0E880(v12, v13);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_25EB315C4(v12, v13);
  }
}

uint64_t sub_25EB147C0()
{
  if (*v0)
  {
    result = 0x72656D75736E6F63;
  }

  else
  {
    result = 0x72656375646F7270;
  }

  *v0;
  return result;
}

uint64_t sub_25EB14800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656375646F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_25EB6E988() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656D75736E6F63 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EB6E988();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25EB148F0(uint64_t a1)
{
  v2 = sub_25EB31570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB1492C(uint64_t a1)
{
  v2 = sub_25EB31570();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t _sSo19PSSGBuilderNodeListC7PolarisE11descriptionSSvg_0()
{
  v1 = (v0 + OBJC_IVAR___PSSGBuilderNodeList____lazy_storage____description);
  if (*(v0 + OBJC_IVAR___PSSGBuilderNodeList____lazy_storage____description + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR___PSSGBuilderNodeList____lazy_storage____description + 8);
  }

  else
  {
    v2 = sub_25EB14A18();
    v4 = v1[1];
    *v1 = v2;
    v1[1] = v5;
  }

  return v2;
}

unint64_t sub_25EB14A18()
{
  v0 = sub_25EB6E298();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_25EB6DFB8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_25EB6DFF8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_25EB6DFE8();
  sub_25EB6DFA8();
  v7 = sub_25EB6DFC8();
  type metadata accessor for PSSGBuilderNodeList(v7);
  sub_25EB24DC0(&unk_27FD124D0, v8, type metadata accessor for PSSGBuilderNodeList);
  v9 = sub_25EB6DFD8();
  v11 = v10;
  sub_25EB6E288();
  v12 = sub_25EB6E278();
  v14 = v13;

  sub_25EAFC5CC(v9, v11);
  if (!v14)
  {
    return 0xD000000000000012;
  }

  return v12;
}

id sub_25EB14D84(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *(a1 + *a3);
  a4(0);
  sub_25EB24DC0(a5, 255, a6);

  v9 = sub_25EB6E428();

  return v9;
}

id sub_25EB14E3C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_25EB6E258();

  return v5;
}

uint64_t sub_25EB14F70(uint64_t a1)
{
  v2 = sub_25EB24E08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB14FAC(uint64_t a1)
{
  v2 = sub_25EB24E08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PSSGBuilderNodeList.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12068, &qword_25EB78E48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB24E08();
  sub_25EB6EA78();
  sub_25EB0FEF0(*(v3 + OBJC_IVAR___PSSGBuilderNodeList_graphSet));
  v15 = v11;
  HIBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12080, &qword_25EB78E50);
  sub_25EB24E5C();
  sub_25EB6E948();

  if (!v2)
  {
    sub_25EB0F894(*(v3 + OBJC_IVAR___PSSGBuilderNodeList_resourceSet));
    v15 = v12;
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120A0, &qword_25EB78E58);
    sub_25EB24F34();
    sub_25EB6E948();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PSSGBuilder.Cache.allStrideDependentGraphs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PSSGBuilder.Cache.allDependentGraphsForResourceSet.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PSSGBuilder.Cache.rootResourcesForGraph.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t PSSGBuilder.Cache.graphsInTopologicalWaitOrder.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t PSSGBuilder.cache.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___PSSGBuilder_cache);
  swift_beginAccess();
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t PSSGBuilder.cache.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR___PSSGBuilder_cache);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v8;
}

id sub_25EB154C0()
{
  v1 = v0;
  v2 = sub_25EB6E4C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25EB6E4B8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_25EB6E1E8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OBJC_IVAR___PSSGBuilder____lazy_storage___asyncWorkQueue;
  v12 = *(v0 + OBJC_IVAR___PSSGBuilder____lazy_storage___asyncWorkQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR___PSSGBuilder____lazy_storage___asyncWorkQueue);
  }

  else
  {
    v14 = sub_25EAFCC70(0, &qword_27FD12440, 0x277D85C78);
    v21 = "Duplicate values for key: '";
    v22 = v14;
    sub_25EB6E1D8();
    v23 = MEMORY[0x277D84F90];
    v19[1] = sub_25EB24DC0(&qword_27FD12448, 255, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12450, &unk_25EB795D0);
    v20 = v2;
    sub_25EB31A70(&unk_27FD12458, &qword_27FD12450, &unk_25EB795D0);
    sub_25EB6E558();
    (*(v3 + 104))(v6, *MEMORY[0x277D85260], v20);
    v15 = sub_25EB6E4E8();
    v16 = *(v0 + v11);
    *(v1 + v11) = v15;
    v13 = v15;

    v12 = 0;
  }

  v17 = v12;
  return v13;
}

char *sub_25EB1587C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  v5 = sub_25EB1029C(v4);

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11ED8, &qword_25EB78D10);
    v6 = sub_25EB6E898();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v20[0] = v6;

  sub_25EB2E2A0(v7, 1, v20, sub_25EAFD168, &qword_27FD11ED8, &qword_25EB78D10, type metadata accessor for PSSGGraphID);

  v8 = v20[0];
  v9 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v10 = *&v3[v9];
  *&v3[v9] = v8;

  v12 = sub_25EB105CC(v11);
  swift_bridgeObjectRelease_n();

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11ED0, &unk_25EB795A0);
    v13 = sub_25EB6E898();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  v19[0] = v13;

  sub_25EB2E2A0(v14, 1, v19, sub_25EAFD114, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID);

  v15 = v19[0];
  v16 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v17 = *&v3[v16];
  *&v3[v16] = v15;

  return v3;
}

Polaris::PSSGBuilderSwift __swiftcall PSSGBuilder.toSwift()()
{
  v2 = v0;
  v3 = v1;

  sub_25EB15AFC(v3, v2);
  result.resources._rawValue = v5;
  result.graphs._rawValue = v4;
  return result;
}

void sub_25EB15AFC(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  sub_25EB0DE14(MEMORY[0x277D84F90]);
  sub_25EB0DF60(v4);
  v5 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v6 = *&a1[v5];

  sub_25EB10B34(v7);
  v9 = v8;

  if (*(v9 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC8, &unk_25EB78D00);
    v10 = sub_25EB6E898();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v21[0] = v10;

  sub_25EB2E9CC(v11, 1, v21);

  v12 = v21[0];
  v13 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v14 = *&a1[v13];

  v16 = sub_25EB10EB8(v15);

  if (*(v16 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC0, &qword_25EB78CF8);
    v17 = sub_25EB6E898();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v20 = v17;

  sub_25EB2E64C(v18, 1, &v20);

  v19 = v20;
  *a2 = v12;
  a2[1] = v19;
}

uint64_t sub_25EB15CCC@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(PSSGBuilder) init];
  v4 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v7 = *&v3[v6];
  *&v3[v6] = v5;

  v8 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v11 = *&v3[v10];
  *&v3[v10] = v9;

  result = type metadata accessor for PSSGBuilder(v12);
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_25EB15DE8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_25EB6E978();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

void PSSGBuilder.addGraph(with:type:inputs:outputs:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v7 = sub_25EB0EE68(a1, *&v3[v6], sub_25EAFD168, type metadata accessor for PSSGGraph);
  swift_endAccess();
  if (v7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D8, &unk_25EB78E68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25EB78950;
    v9 = objc_opt_self();
    v10 = [v9 errorDictGraphIDKey];
    v11 = sub_25EB6E268();
    v13 = v12;

    *(inited + 32) = v11;
    *(inited + 40) = v13;
    *(inited + 72) = type metadata accessor for PSSGGraphID(0);
    *(inited + 48) = a1;
    v14 = a1;
    sub_25EB0E0E4(inited);
    swift_setDeallocating();
    sub_25EB0D660(inited + 32, &qword_27FD120E0, &qword_25EB78D20);
    v15 = [v9 errorDomain];
    if (!v15)
    {
      sub_25EB6E268();
      v15 = sub_25EB6E258();
    }

    v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v17 = sub_25EB6E1F8();

    [v16 initWithDomain:v15 code:-1 userInfo:v17];

    swift_willThrow();
    return;
  }

  v137 = a1;
  v126 = v6;
  v18 = objc_allocWithZone(PSSGGraph);
  type metadata accessor for PSSGGraphInput(v18);

  v19 = sub_25EB6E3C8();

  v20 = type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v127 = v20;
  v21 = sub_25EB6E428();

  v22 = [v18 initWithType:a2 inputs:v19 outputs:v21];

  swift_beginAccess();
  if (v22)
  {
    v23 = *&v3[v126];
    v24 = v137;
    if ((v23 & 0xC000000000000001) != 0)
    {
      if (v23 < 0)
      {
        v25 = *&v3[v126];
      }

      else
      {
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = sub_25EB6E5F8();
      if (__OFADD__(v26, 1))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      *&v3[v126] = sub_25EB29F34(v25, v26 + 1, &qword_27FD11ED8, &qword_25EB78D10, type metadata accessor for PSSGGraphID, type metadata accessor for PSSGGraph);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = *&v3[v126];
    sub_25EB2C7FC(v22, v137, isUniquelyReferenced_nonNull_native, sub_25EAFD168, &qword_27FD11ED8, &qword_25EB78D10, type metadata accessor for PSSGGraphID);
    *&v3[v126] = v140;
  }

  else
  {
    v24 = v137;
  }

  swift_endAccess();
  swift_beginAccess();
  v28 = sub_25EB0EE68(v24, *&v3[v126], sub_25EAFD168, type metadata accessor for PSSGGraph);
  swift_endAccess();
  if (!v28)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v29 = [v28 inputs];

  v30 = sub_25EB6E3D8();
  v31 = v30;
  if (v30 >> 62)
  {
    v32 = sub_25EB6E5F8();
    v31 = v30;
    if (v32)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
LABEL_17:
      if (v32 >= 1)
      {
        v33 = 0;
        v34 = OBJC_IVAR___PSSGBuilder_resources;
        v35 = MEMORY[0x277D84F90];
        v129 = v31 & 0xC000000000000001;
        v131 = v32;
        v132 = v31;
        while (1)
        {
          if (v129)
          {
            v39 = MEMORY[0x25F8C6D90](v33);
          }

          else
          {
            v39 = *(v31 + 8 * v33 + 32);
          }

          v40 = v39;
          v41 = [v39 resource];
          swift_beginAccess();
          v42 = *&v3[v34];
          if ((v42 & 0xC000000000000001) != 0)
          {
            v43 = v41;
            v44 = sub_25EB6E7E8();

            if (!v44)
            {
              goto LABEL_35;
            }

            type metadata accessor for PSSGResource(v45);
            swift_dynamicCast();
            v46 = v140;

            if (v140)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (!*(v42 + 16) || (v47 = sub_25EAFD114(v41), (v48 & 1) == 0))
            {
LABEL_35:

              goto LABEL_36;
            }

            v46 = *(*(v42 + 56) + 8 * v47);

            if (v46)
            {
LABEL_31:
              swift_endAccess();
              v49 = swift_allocObject();
              v49[2] = v46;
              v49[3] = v137;
              v50 = v137;
              v51 = v46;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v35 = sub_25EB069BC(0, v35[2] + 1, 1, v35);
              }

              v53 = v35[2];
              v52 = v35[3];
              v54 = v53 + 1;
              if (v53 >= v52 >> 1)
              {
                v35 = sub_25EB069BC((v52 > 1), v53 + 1, 1, v35);
              }

              v36 = sub_25EB2FAF0;
              goto LABEL_20;
            }
          }

LABEL_36:
          swift_endAccess();
          v49 = swift_allocObject();
          v49[2] = v3;
          v49[3] = v40;
          v49[4] = v137;
          v55 = v137;
          v56 = v3;
          v51 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_25EB069BC(0, v35[2] + 1, 1, v35);
          }

          v53 = v35[2];
          v57 = v35[3];
          v54 = v53 + 1;
          v36 = sub_25EB29CF0;
          if (v53 >= v57 >> 1)
          {
            v35 = sub_25EB069BC((v57 > 1), v53 + 1, 1, v35);
            v36 = sub_25EB29CF0;
          }

LABEL_20:
          v37 = v36;
          ++v33;

          v35[2] = v54;
          v38 = &v35[2 * v53];
          v38[4] = v37;
          v38[5] = v49;
          v31 = v132;
          if (v131 == v33)
          {
            goto LABEL_42;
          }
        }
      }

      __break(1u);
      goto LABEL_92;
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_42:

  swift_beginAccess();
  v58 = sub_25EB0EE68(v137, *&v3[v126], sub_25EAFD168, type metadata accessor for PSSGGraph);
  swift_endAccess();
  if (!v58)
  {
LABEL_94:
    __break(1u);
    return;
  }

  v59 = [v58 outputs];

  v60 = sub_25EB6E438();
  if ((v60 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    sub_25EB6E478();
    v60 = v142;
    v61 = v143;
    v62 = v144;
    v63 = v145;
    v64 = v146;
  }

  else
  {
    v63 = 0;
    v65 = -1 << *(v60 + 32);
    v61 = v60 + 56;
    v62 = ~v65;
    v66 = -v65;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    else
    {
      v67 = -1;
    }

    v64 = v67 & *(v60 + 56);
  }

  v68 = (v62 + 64) >> 6;
  v128 = v60;
  for (i = v61; ; v61 = i)
  {
    if (v60 < 0)
    {
      v76 = sub_25EB6E638();
      if (!v76 || (v140 = v76, swift_dynamicCast(), v75 = v141, v74 = v64, !v141))
      {
LABEL_77:
        sub_25EB0EC08();
        v95 = v35[2];
        if (v95)
        {
          v96 = 0;
          v97 = v35 + 5;
          while (v96 < v35[2])
          {
            ++v96;
            v99 = *(v97 - 1);
            v98 = *v97;

            v99(v100);

            v97 += 2;
            if (v95 == v96)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_89;
        }

LABEL_81:

        v101 = &v3[OBJC_IVAR___PSSGBuilder_cache];
        swift_beginAccess();
        v102 = *v101;
        v103 = *(v101 + 1);
        v104 = *(v101 + 2);
        v105 = *(v101 + 3);
        *v101 = 0u;
        *(v101 + 1) = 0u;

        if (qword_27FD11B20 == -1)
        {
LABEL_82:
          v106 = sub_25EB6E1B8();
          __swift_project_value_buffer(v106, qword_27FD2EED0);
          v107 = v137;
          v108 = v3;
          v109 = sub_25EB6E198();
          v110 = sub_25EB6E488();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            *v111 = 138412546;
            *(v111 + 4) = v107;
            *v112 = v107;
            *(v111 + 12) = 2112;
            swift_beginAccess();
            v113 = sub_25EB0EE68(v107, *&v3[v126], sub_25EAFD168, type metadata accessor for PSSGGraph);
            swift_endAccess();
            *(v111 + 14) = v113;
            v112[1] = v113;
            _os_log_impl(&dword_25EA3A000, v109, v110, "BUILDER: added %@ with contents %@", v111, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D0, &qword_25EB78E60);
            swift_arrayDestroy();
            MEMORY[0x25F8C9C00](v112, -1, -1);
            MEMORY[0x25F8C9C00](v111, -1, -1);
          }

          return;
        }

LABEL_90:
        swift_once();
        goto LABEL_82;
      }
    }

    else
    {
      v72 = v63;
      v73 = v64;
      if (!v64)
      {
        while (1)
        {
          v63 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            break;
          }

          if (v63 >= v68)
          {
            goto LABEL_77;
          }

          v73 = *(v61 + 8 * v63);
          ++v72;
          if (v73)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_57:
      v74 = (v73 - 1) & v73;
      v75 = *(*(v60 + 48) + ((v63 << 9) | (8 * __clz(__rbit64(v73)))));
      if (!v75)
      {
        goto LABEL_77;
      }
    }

    v133 = v74;
    v77 = OBJC_IVAR___PSSGBuilder_resources;
    swift_beginAccess();
    v78 = *&v3[v77];
    if ((v78 & 0xC000000000000001) != 0)
    {
      v79 = v75;
      v80 = sub_25EB6E7E8();

      if (!v80)
      {
        goto LABEL_73;
      }

      type metadata accessor for PSSGResource(v81);
      swift_dynamicCast();
      v82 = v140;
      if (!v140)
      {
        goto LABEL_73;
      }
    }

    else if (!*(v78 + 16) || (v83 = sub_25EAFD114(v75), (v84 & 1) == 0) || (v82 = *(*(v78 + 56) + 8 * v83)) == 0)
    {
LABEL_73:
      swift_endAccess();
      v86 = swift_allocObject();
      v86[2] = v3;
      v86[3] = v75;
      v86[4] = v137;
      v92 = v137;
      v93 = v3;
      v88 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_25EB069BC(0, v35[2] + 1, 1, v35);
      }

      v90 = v35[2];
      v94 = v35[3];
      v91 = v90 + 1;
      v69 = sub_25EB29D44;
      if (v90 >= v94 >> 1)
      {
        v35 = sub_25EB069BC((v94 > 1), v90 + 1, 1, v35);
        v69 = sub_25EB29D44;
      }

      goto LABEL_51;
    }

    swift_endAccess();
    v85 = [v82 producer];
    if (v85)
    {
      break;
    }

    v86 = swift_allocObject();
    v86[2] = v82;
    v86[3] = v137;
    v87 = v137;
    v88 = v82;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_25EB069BC(0, v35[2] + 1, 1, v35);
    }

    v90 = v35[2];
    v89 = v35[3];
    v91 = v90 + 1;
    if (v90 >= v89 >> 1)
    {
      v35 = sub_25EB069BC((v89 > 1), v90 + 1, 1, v35);
    }

    v69 = sub_25EB29D90;
LABEL_51:
    v70 = v69;

    v35[2] = v91;
    v71 = &v35[2 * v90];
    v71[4] = v70;
    v71[5] = v86;
    v64 = v133;
    v60 = v128;
  }

  v114 = v85;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D8, &unk_25EB78E68);
  v115 = swift_initStackObject();
  *(v115 + 16) = xmmword_25EB78E20;
  v116 = objc_opt_self();
  v117 = [v116 errorDictGraphIDKey];
  v118 = sub_25EB6E268();
  v134 = v119;
  v138 = v118;

  *(v115 + 32) = v138;
  *(v115 + 40) = v134;
  *(v115 + 72) = type metadata accessor for PSSGGraphID(0);
  *(v115 + 48) = v114;
  v139 = v114;
  v120 = [v116 errorDictResourceIDKey];
  v121 = sub_25EB6E268();
  v135 = v122;

  *(v115 + 80) = v121;
  *(v115 + 88) = v135;
  *(v115 + 120) = v127;
  *(v115 + 96) = v75;
  v136 = v75;
  sub_25EB0E0E4(v115);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120E0, &qword_25EB78D20);
  swift_arrayDestroy();
  v123 = [v116 errorDomain];
  if (!v123)
  {
    sub_25EB6E268();
    v123 = sub_25EB6E258();
  }

  v124 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v125 = sub_25EB6E1F8();

  [v124 initWithDomain:v123 code:-3 userInfo:v125];

  swift_willThrow();
  sub_25EB0EC08();
}

void sub_25EB16E28(void *a1, void *a2)
{
  v4 = [a1 consumers];
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  sub_25EB6E438();

  sub_25EB26820(&v6, a2);
  v5 = sub_25EB6E428();

  [a1 setConsumers_];
}

uint64_t sub_25EB16F44(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 resource];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C30, &qword_25EB789A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25EB78960;
  *(inited + 32) = a3;
  v7 = a3;
  sub_25EB0E8C4(inited);
  swift_setDeallocating();
  v8 = *(inited + 16);
  swift_arrayDestroy();
  v9 = objc_allocWithZone(PSSGResource);
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v10 = sub_25EB6E428();

  v11 = [v9 initWithProducer:0 consumers:v10];

  v12 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  if (!v11)
  {
    v17 = sub_25EB29DA0(v5);

    return swift_endAccess();
  }

  v13 = *(a1 + v12);
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + v12);
    sub_25EB2C7FC(v11, v5, isUniquelyReferenced_nonNull_native, sub_25EAFD114, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID);
    *(a1 + v12) = v18;

    return swift_endAccess();
  }

  if (v13 < 0)
  {
    v14 = *(a1 + v12);
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_25EB6E5F8();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v12) = sub_25EB29F34(v14, result + 1, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID, type metadata accessor for PSSGResource);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB171AC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(PSSGResource);
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v7 = sub_25EB6E428();
  v8 = [v6 initWithProducer:a3 consumers:v7];

  v9 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  if (!v8)
  {

    return swift_endAccess();
  }

  v10 = *(a1 + v9);
  if ((v10 & 0xC000000000000001) == 0)
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + v9);
    sub_25EB2C7FC(v8, a2, isUniquelyReferenced_nonNull_native, sub_25EAFD114, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID);
    *(a1 + v9) = v14;
    return swift_endAccess();
  }

  if (v10 < 0)
  {
    v11 = *(a1 + v9);
  }

  else
  {
    v11 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_25EB6E5F8();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v9) = sub_25EB29F34(v11, result + 1, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID, type metadata accessor for PSSGResource);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_25EB174C8(void *a1)
{
  v3 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v57 = v1;
  v56 = a1;
  v4 = sub_25EB0EE68(a1, *(v1 + v3), sub_25EAFD168, type metadata accessor for PSSGGraph);
  swift_endAccess();
  if (!v4)
  {
    goto LABEL_50;
  }

  v5 = [v4 inputs];
  type metadata accessor for PSSGGraphInput(v5);
  v6 = sub_25EB6E3D8();

  v54 = v3;
  v55 = v4;
  if (v6 >> 62)
  {
    v7 = sub_25EB6E5F8();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      if (v7 < 1)
      {
        goto LABEL_49;
      }

      v8 = 0;
      v9 = OBJC_IVAR___PSSGBuilder_resources;
      v10 = v6 & 0xC000000000000001;
      v11 = off_279A49000;
      do
      {
        if (v10)
        {
          v12 = MEMORY[0x25F8C6D90](v8, v6);
        }

        else
        {
          v12 = *(v6 + 8 * v8 + 32);
        }

        v58 = v12;
        v13 = [v12 v11[400]];
        swift_beginAccess();
        v14 = *(v57 + v9);
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = v13;
          v16 = sub_25EB6E7E8();

          if (!v16)
          {
            goto LABEL_6;
          }

          v59 = v16;
          type metadata accessor for PSSGResource(v17);
          swift_dynamicCast();
          v18 = v60;

          if (v60)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (!*(v14 + 16) || (v19 = sub_25EAFD114(v13), (v20 & 1) == 0))
          {
LABEL_6:

            goto LABEL_7;
          }

          v18 = *(*(v14 + 56) + 8 * v19);

          if (v18)
          {
LABEL_19:
            swift_endAccess();
            v21 = [v18 consumers];
            type metadata accessor for PSSGGraphID(0);
            sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
            v22 = v11;
            v23 = v9;
            v24 = v6;
            v25 = v7;
            v26 = v10;
            v27 = sub_25EB6E438();

            v61 = v27;
            v10 = v26;
            v7 = v25;
            v6 = v24;
            v9 = v23;
            v11 = v22;

            v28 = sub_25EB6E428();

            [v18 setConsumers_];

            goto LABEL_8;
          }
        }

LABEL_7:
        swift_endAccess();

LABEL_8:
        ++v8;
      }

      while (v7 != v8);
    }
  }

  v29 = [v55 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v30 = sub_25EB6E438();

  if ((v30 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    sub_25EB6E478();
    v30 = v61;
    v31 = v62;
    v32 = v63;
    v33 = v64;
    v34 = v65;
  }

  else
  {
    v33 = 0;
    v35 = -1 << *(v30 + 32);
    v31 = v30 + 56;
    v32 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = v37 & *(v30 + 56);
  }

  v38 = (v32 + 64) >> 6;
  while (v30 < 0)
  {
    v44 = sub_25EB6E638();
    if (!v44 || (v59 = v44, swift_dynamicCast(), v43 = v60, v41 = v33, v42 = v34, !v60))
    {
LABEL_47:
      sub_25EB0EC08();
      swift_beginAccess();
      v53 = sub_25EB29B58(v56);
      swift_endAccess();

      return;
    }

LABEL_39:
    v45 = OBJC_IVAR___PSSGBuilder_resources;
    swift_beginAccess();
    v46 = *(v57 + v45);
    if ((v46 & 0xC000000000000001) != 0)
    {
      v47 = v43;
      v48 = sub_25EB6E7E8();

      if (!v48)
      {
        goto LABEL_28;
      }

      type metadata accessor for PSSGResource(v49);
      swift_dynamicCast();
      v50 = v59;
      if (!v59)
      {
        goto LABEL_28;
      }
    }

    else if (!*(v46 + 16) || (v51 = sub_25EAFD114(v43), (v52 & 1) == 0) || (v50 = *(*(v46 + 56) + 8 * v51)) == 0)
    {
LABEL_28:
      swift_endAccess();
      goto LABEL_29;
    }

    swift_endAccess();
    [v50 setProducer_];

LABEL_29:
    v33 = v41;
    v34 = v42;
  }

  v39 = v33;
  v40 = v34;
  v41 = v33;
  if (v34)
  {
LABEL_35:
    v42 = (v40 - 1) & v40;
    v43 = *(*(v30 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
    if (!v43)
    {
      goto LABEL_47;
    }

    goto LABEL_39;
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v38)
    {
      goto LABEL_47;
    }

    v40 = *(v31 + 8 * v41);
    ++v39;
    if (v40)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void PSSGBuilder.removeGraph(with:)(void *a1)
{
  v3 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v4 = *&v1[v3];
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = a1;
    v6 = sub_25EB6E818();

    if ((v6 & 1) == 0)
    {
LABEL_11:
      if (qword_27FD11B20 != -1)
      {
        swift_once();
      }

      v21 = sub_25EB6E1B8();
      __swift_project_value_buffer(v21, qword_27FD2EED0);
      v22 = a1;
      v23 = sub_25EB6E198();
      v24 = sub_25EB6E488();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_25EA3A000, v23, v24, "Failed to remove graph %@: graph not present", v25, 0xCu);
        sub_25EB0D660(v26, &qword_27FD120D0, &qword_25EB78E60);
        MEMORY[0x25F8C9C00](v26, -1, -1);
        MEMORY[0x25F8C9C00](v25, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D8, &unk_25EB78E68);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25EB78950;
      v29 = objc_opt_self();
      v30 = [v29 errorDictGraphIDKey];
      v31 = sub_25EB6E268();
      v33 = v32;

      *(inited + 32) = v31;
      *(inited + 40) = v33;
      *(inited + 72) = type metadata accessor for PSSGGraphID(0);
      *(inited + 48) = v22;
      v34 = v22;
      sub_25EB0E0E4(inited);
      swift_setDeallocating();
      sub_25EB0D660(inited + 32, &qword_27FD120E0, &qword_25EB78D20);
      v35 = [v29 errorDomain];
      if (!v35)
      {
        sub_25EB6E268();
        v35 = sub_25EB6E258();
      }

      v36 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v37 = sub_25EB6E1F8();

      [v36 initWithDomain:v35 code:-2 userInfo:v37];

      swift_willThrow();
      return;
    }
  }

  else
  {
    if (!*(v4 + 16))
    {
      goto LABEL_11;
    }

    sub_25EAFD168(a1);
    v8 = v7;

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [v1 _removeGraphUnsafeWith_];
  v9 = &v1[OBJC_IVAR___PSSGBuilder_cache];
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = *(v9 + 3);
  *v9 = 0u;
  *(v9 + 1) = 0u;

  if (qword_27FD11B20 != -1)
  {
    swift_once();
  }

  v14 = sub_25EB6E1B8();
  __swift_project_value_buffer(v14, qword_27FD2EED0);
  v15 = a1;
  v16 = sub_25EB6E198();
  v17 = sub_25EB6E4A8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_25EA3A000, v16, v17, "Removed graph %@", v18, 0xCu);
    sub_25EB0D660(v19, &qword_27FD120D0, &qword_25EB78E60);
    MEMORY[0x25F8C9C00](v19, -1, -1);
    MEMORY[0x25F8C9C00](v18, -1, -1);
  }
}

uint64_t PSSGBuilder.removeGraphs(with:)(uint64_t a1)
{
  v3 = v2;
  v64 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v1 = sub_25EB6E5B8();
    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
    sub_25EB6E478();
    v5 = v71;
    v4 = v72;
    v6 = v73;
    v7 = v74;
    v8 = v75;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);
    v7 = 0;
  }

  v65 = v5;
  v66 = v2;
  while (v5 < 0)
  {
    if (!sub_25EB6E638())
    {
      goto LABEL_28;
    }

    type metadata accessor for PSSGGraphID(0);
    swift_dynamicCast();
    v1 = v70;
    v16 = v8;
    if (!v70)
    {
      goto LABEL_28;
    }

LABEL_19:
    v17 = OBJC_IVAR___PSSGBuilder_graphs;
    swift_beginAccess();
    v18 = *&v3[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v12 = v1;
      v13 = sub_25EB6E818();

      v3 = v66;
      if ((v13 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (!*(v18 + 16) || (, sub_25EAFD168(v1), v20 = v19, , (v20 & 1) == 0))
    {
LABEL_22:
      if (qword_27FD11B20 != -1)
      {
        goto LABEL_52;
      }

      goto LABEL_23;
    }

    v8 = v16;
    v5 = v65;
  }

  v14 = v7;
  v15 = v8;
  if (v8)
  {
LABEL_15:
    v16 = (v15 - 1) & v15;
    v1 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v1)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v7 >= ((v6 + 64) >> 6))
    {
      break;
    }

    v15 = *(v4 + 8 * v7);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

LABEL_28:
  sub_25EB0EC08();
  if (v64)
  {
    swift_unknownObjectRetain();
    sub_25EB6E5B8();
    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
    sub_25EB6E478();
    v39 = v76;
    v40 = v77;
    v41 = v78;
    v42 = v79;
    v43 = v80;
  }

  else
  {
    v44 = -1 << *(a1 + 32);
    v40 = a1 + 56;
    v41 = ~v44;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v43 = v46 & *(a1 + 56);

    v42 = 0;
  }

  v68 = v39;
  while (2)
  {
    if (v39 < 0)
    {
      if (!sub_25EB6E638() || (type metadata accessor for PSSGGraphID(0), swift_dynamicCast(), v50 = v70, v1 = v42, v49 = v43, !v70))
      {
LABEL_49:
        sub_25EB0EC08();
        v59 = &v3[OBJC_IVAR___PSSGBuilder_cache];
        swift_beginAccess();
        v60 = *v59;
        v61 = *(v59 + 1);
        v62 = *(v59 + 2);
        v63 = *(v59 + 3);
        *v59 = 0u;
        *(v59 + 1) = 0u;
      }

      goto LABEL_45;
    }

    v47 = v42;
    v48 = v43;
    v1 = v42;
    if (v43)
    {
LABEL_41:
      v49 = (v48 - 1) & v48;
      v50 = *(*(v39 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v48)))));
      if (!v50)
      {
        goto LABEL_49;
      }

LABEL_45:
      v69 = v49;
      [v3 _removeGraphUnsafeWith_];
      if (qword_27FD11B20 != -1)
      {
        swift_once();
      }

      v51 = sub_25EB6E1B8();
      __swift_project_value_buffer(v51, qword_27FD2EED0);
      v52 = v50;
      v53 = sub_25EB6E198();
      v54 = sub_25EB6E4A8();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        *(v55 + 4) = v52;
        *v56 = v50;
        v57 = v52;
        _os_log_impl(&dword_25EA3A000, v53, v54, "Removed graph %@", v55, 0xCu);
        sub_25EB0D660(v56, &qword_27FD120D0, &qword_25EB78E60);
        v58 = v56;
        v3 = v66;
        MEMORY[0x25F8C9C00](v58, -1, -1);
        MEMORY[0x25F8C9C00](v55, -1, -1);
        v52 = v53;
        v53 = v57;
      }

      v42 = v1;
      v39 = v68;
      v43 = v69;
      continue;
    }

    break;
  }

  while (1)
  {
    v1 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v1 >= ((v41 + 64) >> 6))
    {
      goto LABEL_49;
    }

    v48 = *(v40 + 8 * v1);
    ++v47;
    if (v48)
    {
      goto LABEL_41;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_23:
  v21 = sub_25EB6E1B8();
  __swift_project_value_buffer(v21, qword_27FD2EED0);
  v22 = v1;
  v23 = sub_25EB6E198();
  v24 = sub_25EB6E488();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v1;
    v27 = v22;
    _os_log_impl(&dword_25EA3A000, v23, v24, "Failed to remove graph %@: graph not present", v25, 0xCu);
    sub_25EB0D660(v26, &qword_27FD120D0, &qword_25EB78E60);
    MEMORY[0x25F8C9C00](v26, -1, -1);
    MEMORY[0x25F8C9C00](v25, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D8, &unk_25EB78E68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25EB78950;
  v29 = objc_opt_self();
  v30 = [v29 errorDictGraphIDKey];
  v31 = sub_25EB6E268();
  v33 = v32;

  *(inited + 32) = v31;
  *(inited + 40) = v33;
  *(inited + 72) = type metadata accessor for PSSGGraphID(0);
  *(inited + 48) = v22;
  v34 = v22;
  sub_25EB0E0E4(inited);
  swift_setDeallocating();
  sub_25EB0D660(inited + 32, &qword_27FD120E0, &qword_25EB78D20);
  v35 = [v29 errorDomain];
  if (!v35)
  {
    sub_25EB6E268();
    v35 = sub_25EB6E258();
  }

  v36 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v37 = sub_25EB6E1F8();

  [v36 initWithDomain:v35 code:-2 userInfo:v37];

  swift_willThrow();
  return sub_25EB0EC08();
}

void *sub_25EB18A6C(void *a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v8 = *a2;
  swift_beginAccess();
  v9 = sub_25EB0EE68(a1, *(v4 + v8), a3, a4);
  swift_endAccess();
  return v9;
}

id sub_25EB18B1C(char *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  v10 = *a4;
  swift_beginAccess();
  v11 = *&a1[v10];
  v12 = a3;
  v13 = a1;
  v14 = sub_25EB0EE68(v12, v11, a5, a6);
  swift_endAccess();

  return v14;
}

void __swiftcall PSSGBuilder.allNodes()(PSSGBuilderNodeList *__return_ptr retstr)
{
  v2 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v3 = *(v1 + v2);

  sub_25EAFFBF0(v4);
  v5 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v6 = *(v1 + v5);

  sub_25EAFFC38(v7);
  v8 = objc_allocWithZone(PSSGBuilderNodeList);
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v9 = sub_25EB6E428();

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v10 = sub_25EB6E428();

  [v8 initWithGraphs:v9 resources:v10];
}

void sub_25EB18D90(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v10 = sub_25EB0EE68(a1, *(v8 + v9), sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v10)
  {
    swift_endAccess();
    return;
  }

  v11 = v10;
  swift_endAccess();
  swift_beginAccess();
  v12 = *(v4 + 72);

  v13 = sub_25EB0EF7C(a1, v12, type metadata accessor for PSSGGraphID);

  if ((v13 & 1) != 0 || (v14 = *(v4 + 32), ((*(v4 + 24))(v11, a2, a3) & 1) == 0) && a2 != 2)
  {

    return;
  }

  swift_beginAccess();
  v40 = a1;
  sub_25EB26820(v41, v40);
  swift_endAccess();

  v15 = [v11 inputs];
  type metadata accessor for PSSGGraphInput(v15);
  v16 = sub_25EB6E3D8();

  v39 = v11;
  if (v16 >> 62)
  {
    v17 = sub_25EB6E5F8();
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  if (v17 < 1)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v18 = 0;
  v19 = *(v4 + 40);
  v20 = *(v4 + 48);
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x25F8C6D90](v18, v16);
    }

    else
    {
      v21 = *(v16 + 8 * v18 + 32);
    }

    v22 = v21;
    if (v19())
    {
      v23 = [v22 resource];
      sub_25EB191F0(v23, 0, v40);
    }

    ++v18;
  }

  while (v17 != v18);
LABEL_18:

  v24 = [v39 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v25 = sub_25EB6E438();

  if ((v25 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    sub_25EB6E478();
    v25 = v41[4];
    v26 = v41[5];
    v27 = v41[6];
    v28 = v41[7];
    v29 = v41[8];
  }

  else
  {
    v28 = 0;
    v30 = -1 << *(v25 + 32);
    v26 = (v25 + 56);
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = (v32 & *(v25 + 56));
  }

  v33 = (v27 + 64) >> 6;
  if ((v25 & 0x8000000000000000) == 0)
  {
    goto LABEL_28;
  }

  while (sub_25EB6E638())
  {
    swift_dynamicCast();
    v34 = v41[0];
    v35 = v28;
    v36 = v29;
    if (!v41[0])
    {
      break;
    }

    while (1)
    {
      sub_25EB191F0(v34, 1, v40);

      v28 = v35;
      v29 = v36;
      if (v25 < 0)
      {
        break;
      }

LABEL_28:
      v37 = v28;
      v38 = v29;
      v35 = v28;
      if (!v29)
      {
        while (1)
        {
          v35 = (v37 + 1);
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v35 >= v33)
          {
            goto LABEL_35;
          }

          v38 = v26[v35];
          ++v37;
          if (v38)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_32:
      v36 = (v38 - 1) & v38;
      v34 = *(*(v25 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v38)))));
      if (!v34)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_35:
  sub_25EB0EC08();
}

void sub_25EB191F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v10 = sub_25EB0EE68(a1, *(v8 + v9), sub_25EAFD114, type metadata accessor for PSSGResource);
  if (v10)
  {
    v11 = v10;
    swift_endAccess();
    swift_beginAccess();
    v12 = *(v4 + 80);

    v13 = sub_25EB0EF7C(a1, v12, type metadata accessor for PSSGResourceID);

    if (v13 & 1) == 0 && ((v14 = *(v4 + 64), ((*(v4 + 56))(v11, a2, a3)) || a2 == 2))
    {
      swift_beginAccess();
      v15 = a1;
      sub_25EB26394(v35, v15);
      swift_endAccess();

      v16 = [v11 producer];
      if (v16)
      {
        v17 = v16;
        sub_25EB18D90(v16, 0, v15);
      }

      v34 = v15;
      v33 = v11;
      v18 = [v11 consumers];
      type metadata accessor for PSSGGraphID(0);
      sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
      v19 = sub_25EB6E438();

      if ((v19 & 0xC000000000000001) != 0)
      {
        sub_25EB6E5B8();
        sub_25EB6E478();
        v19 = v35[4];
        v20 = v35[5];
        v21 = v35[6];
        v22 = v35[7];
        v23 = v35[8];
      }

      else
      {
        v22 = 0;
        v24 = -1 << *(v19 + 32);
        v20 = (v19 + 56);
        v21 = ~v24;
        v25 = -v24;
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v23 = (v26 & *(v19 + 56));
      }

      v27 = (v21 + 64) >> 6;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      while (sub_25EB6E638())
      {
        swift_dynamicCast();
        v28 = v35[0];
        v29 = v22;
        v30 = v23;
        if (!v35[0])
        {
          break;
        }

        while (1)
        {
          sub_25EB18D90(v28, 1, v34);

          v22 = v29;
          v23 = v30;
          if (v19 < 0)
          {
            break;
          }

LABEL_19:
          v31 = v22;
          v32 = v23;
          v29 = v22;
          if (!v23)
          {
            while (1)
            {
              v29 = (v31 + 1);
              if (__OFADD__(v31, 1))
              {
                break;
              }

              if (v29 >= v27)
              {
                goto LABEL_26;
              }

              v32 = v20[v29];
              ++v31;
              if (v32)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
            return;
          }

LABEL_23:
          v30 = (v32 - 1) & v32;
          v28 = *(*(v19 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v32)))));
          if (!v28)
          {
            goto LABEL_26;
          }
        }
      }

LABEL_26:
      sub_25EB0EC08();
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
  }
}

id sub_25EB1958C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62 && sub_25EB6E5F8())
  {
    sub_25EB0E8C4(MEMORY[0x277D84F90]);
    v5 = v18;
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  v6 = *(v2 + 72);
  *(v2 + 72) = v5;

  if (v4 && sub_25EB6E5F8())
  {
    sub_25EB0EBE0(MEMORY[0x277D84F90]);
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  v9 = *(v2 + 80);
  *(v2 + 80) = v8;

  sub_25EB18D90(a1, 2, 0);
  swift_beginAccess();
  v10 = sub_25EB09E84(a1);
  swift_endAccess();

  v12 = *(v2 + 72);
  v11 = *(v2 + 80);
  v13 = objc_allocWithZone(PSSGBuilderNodeList);
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);

  v14 = sub_25EB6E428();

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v15 = sub_25EB6E428();

  v16 = [v13 initWithGraphs:v14 resources:v15];

  return v16;
}

id sub_25EB197BC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62 && sub_25EB6E5F8())
  {
    sub_25EB0E8C4(MEMORY[0x277D84F90]);
    v5 = v18;
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  v6 = *(v2 + 72);
  *(v2 + 72) = v5;

  if (v4 && sub_25EB6E5F8())
  {
    sub_25EB0EBE0(MEMORY[0x277D84F90]);
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  v9 = *(v2 + 80);
  *(v2 + 80) = v8;

  sub_25EB191F0(a1, 2, 0);
  swift_beginAccess();
  v10 = sub_25EB0A044(a1);
  swift_endAccess();

  v12 = *(v2 + 72);
  v11 = *(v2 + 80);
  v13 = objc_allocWithZone(PSSGBuilderNodeList);
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);

  v14 = sub_25EB6E428();

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v15 = sub_25EB6E428();

  v16 = [v13 initWithGraphs:v14 resources:v15];

  return v16;
}

uint64_t sub_25EB199EC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return swift_deallocClassInstance();
}

id PSSGBuilder.nodes(for:graphCond:graphInputCond:resourceCond:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  _s11QueryHelperCMa();
  v15 = swift_allocObject();
  v16 = v15;
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_25EB6E5F8())
    {
      v30 = v7;
      sub_25EB2FB1C(a2);
      sub_25EB2FB1C(a4);
      sub_25EB2FB1C(a6);
      sub_25EB0E8C4(MEMORY[0x277D84F90]);
      v16[9] = v31;
    }

    else
    {
      v16[9] = MEMORY[0x277D84FA0];
      v32 = v7;
      sub_25EB2FB1C(a2);
      sub_25EB2FB1C(a4);
      sub_25EB2FB1C(a6);
    }

    if (sub_25EB6E5F8())
    {
      sub_25EB0EBE0(MEMORY[0x277D84F90]);
      v17 = v33;
    }

    else
    {
      v17 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
    *(v15 + 72) = MEMORY[0x277D84FA0];
    v18 = v7;
    sub_25EB2FB1C(a2);
    sub_25EB2FB1C(a4);
    sub_25EB2FB1C(a6);
  }

  v16[10] = v17;
  v16[2] = v7;
  if (a2)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = sub_25EB3214C;
  }

  else
  {
    v20 = sub_25EB321B0;
    v19 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v16[3] = sub_25EB320E4;
  v16[4] = v21;
  if (a4)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v23 = sub_25EB2FB70;
  }

  else
  {
    v23 = sub_25EB18D84;
    v22 = 0;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v16[5] = sub_25EB2FB64;
  v16[6] = v24;
  if (a6)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a6;
    *(v25 + 24) = a7;
    v26 = sub_25EB2FB6C;
  }

  else
  {
    v26 = sub_25EB321B0;
    v25 = 0;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v16[7] = sub_25EB2FB68;
  v16[8] = v27;
  v28 = sub_25EB1958C(a1);

  return v28;
}

{
  _s11QueryHelperCMa();
  v15 = swift_allocObject();
  v16 = v15;
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_25EB6E5F8())
    {
      v30 = v7;
      sub_25EB2FB1C(a2);
      sub_25EB2FB1C(a4);
      sub_25EB2FB1C(a6);
      sub_25EB0E8C4(MEMORY[0x277D84F90]);
      v16[9] = v31;
    }

    else
    {
      v16[9] = MEMORY[0x277D84FA0];
      v32 = v7;
      sub_25EB2FB1C(a2);
      sub_25EB2FB1C(a4);
      sub_25EB2FB1C(a6);
    }

    if (sub_25EB6E5F8())
    {
      sub_25EB0EBE0(MEMORY[0x277D84F90]);
      v17 = v33;
    }

    else
    {
      v17 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
    *(v15 + 72) = MEMORY[0x277D84FA0];
    v18 = v7;
    sub_25EB2FB1C(a2);
    sub_25EB2FB1C(a4);
    sub_25EB2FB1C(a6);
  }

  v16[10] = v17;
  v16[2] = v7;
  if (a2)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = sub_25EB3214C;
  }

  else
  {
    v20 = sub_25EB321B0;
    v19 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v16[3] = sub_25EB320E4;
  v16[4] = v21;
  if (a4)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v23 = sub_25EB321A0;
  }

  else
  {
    v23 = sub_25EB18D84;
    v22 = 0;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v16[5] = sub_25EB32194;
  v16[6] = v24;
  if (a6)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a6;
    *(v25 + 24) = a7;
    v26 = sub_25EB3214C;
  }

  else
  {
    v26 = sub_25EB321B0;
    v25 = 0;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v16[7] = sub_25EB320E4;
  v16[8] = v27;
  v28 = sub_25EB197BC(a1);

  return v28;
}

Swift::String_optional __swiftcall PSSGBuilder.dumpStateSync()()
{
  v1 = v0;
  v2 = sub_25EB6E298();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_25EB6DFB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_25EB6DFF8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_25EB6DFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120E8, &qword_25EB78E78);
  v10 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25EB78950;
  sub_25EB6DFA8();
  *&v22 = v12;
  sub_25EB24DC0(&qword_27FD120F0, 255, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120F8, &qword_25EB78E80);
  sub_25EB31A70(&qword_27FD12100, &qword_27FD120F8, &qword_25EB78E80);
  sub_25EB6E558();
  sub_25EB6DFC8();
  sub_25EB15AFC(v1, &v22);
  sub_25EB30200();
  v13 = sub_25EB6DFD8();
  v15 = v14;

  sub_25EB6E288();
  v16 = sub_25EB6E278();
  v18 = v17;
  sub_25EAFC5CC(v13, v15);

  v19 = v18;
  v20 = v16;
  result.value._object = v19;
  result.value._countAndFlagsBits = v20;
  return result;
}

uint64_t PSSGBuilder.dumpStateAsync(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25EB6E1C8();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25EB6E1E8();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v2 deepCopy];
  v19 = sub_25EB154C0();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v13;
  aBlock[4] = sub_25EB30294;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25EB1AAEC;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  v16 = v13;
  sub_25EB6E1D8();
  v22 = MEMORY[0x277D84F90];
  sub_25EB24DC0(&qword_27FD12110, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12118, &qword_25EB78E88);
  sub_25EB31A70(&qword_27FD12120, &qword_27FD12118, &qword_25EB78E88);
  sub_25EB6E558();
  v17 = v19;
  MEMORY[0x25F8C6BA0](0, v12, v8, v15);
  _Block_release(v15);

  (*(v21 + 8))(v8, v5);
  (*(v9 + 8))(v12, v20);
}

uint64_t sub_25EB1AA58(void (*a1)(uint64_t, uint64_t), int a2, id a3)
{
  v4 = [a3 dumpStateSync];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25EB6E268();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  a1(v6, v8);
}

uint64_t sub_25EB1AAEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_25EB1ABBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_25EB6E258();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void __swiftcall PSSGBuilder.deepCopy()(PSSGBuilder *__return_ptr retstr)
{
  v2 = [objc_allocWithZone(PSSGBuilder) init];
  v3 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = v4;

  v7 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v10 = *&v2[v9];
  *&v2[v9] = v8;
}

id PSSGBuilder.init()()
{
  v1 = OBJC_IVAR___PSSGBuilder_graphs;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_25EB0E214(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR___PSSGBuilder_resources;
  *&v0[v3] = sub_25EB0E23C(v2);
  v4 = &v0[OBJC_IVAR___PSSGBuilder_cache];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *&v0[OBJC_IVAR___PSSGBuilder____lazy_storage___asyncWorkQueue] = 0;
  v6.receiver = v0;
  v6.super_class = PSSGBuilder;
  return objc_msgSendSuper2(&v6, sel_init);
}

void __swiftcall PSSGBuilderSwift.toObjC()(PSSGBuilder *__return_ptr retstr)
{
  v3 = *v2;
  v4 = v2[1];
  type metadata accessor for PSSGBuilder(v1);
  v5[0] = v3;
  v5[1] = v4;

  sub_25EB1587C(v5);
}

uint64_t static PSSGBuilderSwift.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_25EB1AF54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_25EB1B254(v2, v3);
}

uint64_t sub_25EB1AF54(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v39 = result + 64;
  v40 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v38 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v4 << 6);
    v13 = (*(v3 + 48) + 32 * v12);
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    v18 = (*(v3 + 56) + 24 * v12);
    v19 = v18[1];
    v46 = *v18;
    v20 = v18[2];
    v44 = v14 == 0;

    v45 = v20;

    if (!v14)
    {
      return 1;
    }

    v21 = sub_25EAFCB44(v15, v14, v17, v16);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_42;
    }

    v24 = (*(v2 + 56) + 24 * v21);
    result = v24[1];
    if (*v24 != v46 || (v43 = v9, v47 = v24[1], v25 = *(result + 16), v25 != *(v19 + 16)))
    {
LABEL_41:

LABEL_42:

      return 0;
    }

    v42 = v24[2];
    if (v25)
    {
      v26 = result == v19;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v29 = (v19 + 64);
      v30 = (result + 64);
      while (v25)
      {
        result = *(v30 - 4);
        v32 = *(v30 - 2);
        v31 = *(v30 - 1);
        v33 = *v30;
        v34 = *(v29 - 2);
        v35 = *(v29 - 1);
        v36 = *v29;
        if (result != *(v29 - 4) || *(v30 - 3) != *(v29 - 3))
        {
          result = sub_25EB6E988();
          if ((result & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        if (v31)
        {
          if (!v35)
          {
            goto LABEL_41;
          }

          if (v32 != v34 || v31 != v35)
          {
            result = sub_25EB6E988();
            if ((result & 1) == 0)
            {
              goto LABEL_41;
            }
          }
        }

        else if (v35)
        {
          goto LABEL_41;
        }

        if (v33 != v36)
        {
          goto LABEL_41;
        }

        v30 += 5;
        v29 += 5;
        if (!--v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_46;
    }

LABEL_22:

    v28 = sub_25EB248F8(v27, v45);

    v3 = v40;
    v2 = a2;
    v7 = v43;
    result = v44;
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v38)
    {
      return 1;
    }

    v11 = *(v39 + 8 * v4);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_25EB1B254(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v52 = result + 64;
  v53 = result;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v51 = (v3 + 63) >> 6;
  while (v5)
  {
    v6 = __clz(__rbit64(v5));
    v56 = (v5 - 1) & v5;
LABEL_13:
    v9 = v6 | (v2 << 6);
    v10 = (*(result + 48) + 32 * v9);
    v11 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v13 = v10[3];
    v15 = (*(result + 56) + 40 * v9);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];

    v59 = v16;
    v21 = v16;
    v58 = v17;
    v22 = v18;
    v23 = v19;
    sub_25EB0E880(v21, v17);
    v24 = v12 == 0;
    v57 = v20;

    if (!v12)
    {
      return v24;
    }

    v25 = sub_25EAFCA88(v11, v12, v14, v13);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_42;
    }

    v28 = (*(a2 + 56) + 40 * v25);
    v30 = *v28;
    v29 = v28[1];
    v31 = v28[2];
    v32 = v28[3];
    v33 = v28[4];
    v34 = v23;
    v35 = v22;
    v36 = v29;
    v55 = v24;
    if (v29)
    {
      if (!v17)
      {
        sub_25EB0E880(v30, v29);

        sub_25EB0E880(v30, v36);
        sub_25EB0E880(v59, 0);
        sub_25EB0E880(v30, v36);

LABEL_38:
        sub_25EB315C4(v30, v36);
        sub_25EB315C4(v59, v17);
LABEL_41:
        sub_25EB315C4(v30, v36);

LABEL_42:
        sub_25EB315C4(v59, v17);

        return 0;
      }

      if (v30 != v59 || v29 != v17)
      {
        v38 = v28[2];
        v39 = sub_25EB6E988();
        v31 = v38;
        if ((v39 & 1) == 0)
        {
          sub_25EB0E880(v30, v36);

          sub_25EB0E880(v30, v36);
          sub_25EB0E880(v59, v17);
          v42 = v36;
          v43 = v30;
          sub_25EB0E880(v30, v42);
          sub_25EB315C4(v59, v17);
LABEL_40:

          v30 = v43;
          sub_25EB315C4(v43, v42);
          v36 = v42;
          goto LABEL_41;
        }
      }

      if (v31 == v35 && v32 == v34)
      {
        sub_25EB0E880(v30, v36);

        sub_25EB0E880(v30, v36);
        sub_25EB0E880(v59, v17);
        v42 = v36;
        v43 = v30;
        sub_25EB0E880(v30, v42);
        sub_25EB315C4(v59, v17);
        v41 = v33;
      }

      else
      {
        v41 = v33;
        v50 = sub_25EB6E988();
        sub_25EB0E880(v30, v36);

        sub_25EB0E880(v30, v36);
        sub_25EB0E880(v59, v17);
        v42 = v36;
        v43 = v30;
        sub_25EB0E880(v30, v42);
        sub_25EB315C4(v59, v17);
        if ((v50 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v46 = v17;
      v47 = v41;

      v48 = v42;
      v44 = v59;
    }

    else
    {
      sub_25EB0E880(v30, 0);

      sub_25EB0E880(v30, 0);
      v44 = v59;
      v45 = v33;
      v46 = v58;
      if (v58)
      {
        sub_25EB0E880(v59, v58);
        v36 = 0;
        v17 = v58;
        goto LABEL_38;
      }

      v43 = v30;
      v47 = v45;
      sub_25EB0E880(v59, 0);
      v48 = 0;
      v42 = 0;
    }

    sub_25EB315C4(v43, v48);
    v49 = sub_25EB246BC(v47, v57);
    sub_25EB315C4(v43, v42);

    sub_25EB315C4(v44, v46);

    result = v53;
    v5 = v56;
    v24 = v55;
    if ((v49 & 1) == 0)
    {
      return v24;
    }
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v51)
    {
      return 1;
    }

    v8 = *(v52 + 8 * v2);
    ++v7;
    if (v8)
    {
      v6 = __clz(__rbit64(v8));
      v56 = (v8 - 1) & v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB1B884()
{
  if (*v0)
  {
    result = 0x656372756F736572;
  }

  else
  {
    result = 0x736870617267;
  }

  *v0;
  return result;
}

uint64_t sub_25EB1B8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736870617267 && a2 == 0xE600000000000000;
  if (v6 || (sub_25EB6E988() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EB6E988();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25EB1B9A4(uint64_t a1)
{
  v2 = sub_25EB302CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB1B9E0(uint64_t a1)
{
  v2 = sub_25EB302CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PSSGBuilderSwift.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12130, &qword_25EB78E90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB302CC();

  sub_25EB6EA78();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12140, &qword_25EB78E98);
  sub_25EB30458(&qword_27FD12148, sub_25EB24EE0, sub_25EB30320);
  sub_25EB6E948();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12158, &qword_25EB78EA0);
    sub_25EB30374(&qword_27FD12160, sub_25EB24FB8, sub_25EB30404);
    sub_25EB6E948();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PSSGBuilderSwift.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12170, &qword_25EB78EA8);
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - v7;
  v9 = MEMORY[0x277D84F90];
  sub_25EB0DE14(MEMORY[0x277D84F90]);
  v18 = sub_25EB0DF60(v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB302CC();
  sub_25EB6EA68();
  if (!v2)
  {
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12140, &qword_25EB78E98);
    v19 = 0;
    sub_25EB30458(&qword_27FD12178, sub_25EB304E8, sub_25EB3053C);
    v12 = v17;
    sub_25EB6E8F8();

    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12158, &qword_25EB78EA0);
    v19 = 1;
    sub_25EB30374(&qword_27FD12190, sub_25EB30590, sub_25EB305E4);
    sub_25EB6E8F8();
    (*(v11 + 8))(v8, v12);

    v15 = v20;
    *a2 = v13;
    a2[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25EB1BF98(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_25EB1AF54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_25EB1B254(v2, v3);
}

void __swiftcall PSSGBuilder.init(fromGraphsJsonAtPath:)(PSSGBuilder_optional *__return_ptr retstr, Swift::String fromGraphsJsonAtPath)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_25EB6E258();

  [v2 initFromGraphsJsonAtPath_];
}

id PSSGBuilder.init(fromGraphsJsonAtPath:)()
{
  v313 = *MEMORY[0x277D85DE8];
  v1 = sub_25EB6E098();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v272 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 init];
  sub_25EB6E068();

  v9 = sub_25EB6E0A8();
  v11 = v10;
  v12 = objc_opt_self();
  v13 = sub_25EB6E0B8();
  v308 = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:&v308];

  if (!v14)
  {
    v268 = v308;
    v269 = sub_25EB6E048();

    swift_willThrow();
    sub_25EAFC5CC(v9, v11);

LABEL_2:
    (*(v2 + 8))(v5, v1);
    goto LABEL_3;
  }

  v15 = v308;
  sub_25EB6E548();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121A8, &qword_25EB78EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_229:
    (*(v2 + 8))(v5, v1);
    sub_25EAFC5CC(v9, v11);

    goto LABEL_3;
  }

  v16 = v305;
  if (!v305[2] || (v17 = sub_25EAFCBE4(0x736E6F6973736573, 0xE800000000000000), (v18 & 1) == 0))
  {
    sub_25EAFC5CC(v9, v11);

    goto LABEL_2;
  }

  v19 = *(v16[7] + 8 * v17);
  swift_unknownObjectRetain();

  v308 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121B0, &qword_25EB78EB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_229;
  }

  v291 = v20;
  v285 = 0;
  v293 = v9;
  v294 = v11;
  v295 = v6;
  v21 = v305;
  v22 = sub_25EB0E35C(MEMORY[0x277D84F90]);
  v23 = v22;
  v24 = v21[2];
  if (!v24)
  {
    goto LABEL_227;
  }

  v25 = 0;
  v26 = v21 + 4;
  v27 = v22;
  v292 = v5;
  v284 = v24;
  v283 = v21 + 4;
  do
  {
    if (v25 >= v21[2])
    {
      __break(1u);
LABEL_255:
      (*(v2 + 8))(v5, v1);
      sub_25EAFC5CC(v293, v294);

LABEL_239:

      goto LABEL_240;
    }

    v286 = v25;
    v28 = v26[v25];
    v29 = *(v28 + 16);

    if (!v29 || (v30 = sub_25EAFCBE4(0x736870617267, 0xE600000000000000), (v31 & 1) == 0))
    {
LABEL_234:
      sub_25EAFC5CC(v293, v294);
      goto LABEL_235;
    }

    v32 = *(*(v28 + 56) + 8 * v30);
    swift_unknownObjectRetain();

    v308 = v32;
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v2 + 8))(v5, v1);
      sub_25EAFC5CC(v293, v294);
      goto LABEL_239;
    }

    v33 = v305;
    v287 = v305[2];
    if (v287)
    {
      v34 = 0;
      v297 = v305 + 4;
      v290 = v2;
      v289 = v1;
      v288 = v21;
      v296 = v305;
      while (1)
      {
        if (v34 >= v33[2])
        {
          __break(1u);
LABEL_248:
          sub_25EAFC5CC(v293, v294);

LABEL_253:

          (*(v2 + 8))(v292, v1);
          goto LABEL_236;
        }

        v298 = v34;
        v35 = v297[v34];
        v36 = *(v35 + 16);

        if (!v36)
        {
          break;
        }

        v37 = sub_25EAFCBE4(0x656372756F736572, 0xE900000000000073);
        if ((v38 & 1) == 0)
        {
          break;
        }

        v39 = *(*(v35 + 56) + 8 * v37);
        swift_unknownObjectRetain();

        v308 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121B8, &unk_25EB78EC0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_255;
        }

        v40 = 0;
        ++v298;
        v1 = (v305 + 8);
        v41 = v305[8];
        v300 = v305;
        v42 = 1 << *(v305 + 32);
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        else
        {
          v43 = -1;
        }

        v44 = v43 & v41;
        v5 = ((v42 + 63) >> 6);
        if ((v43 & v41) != 0)
        {
          while (1)
          {
            v2 = v40;
LABEL_31:
            v45 = __clz(__rbit64(v44)) | (v2 << 6);
            v46 = (v300[6] + 16 * v45);
            v48 = *v46;
            v47 = v46[1];
            v49 = *(v300[7] + 8 * v45);
            v50 = *(v49 + 16);

            if (!v50)
            {
              break;
            }

            v51 = sub_25EAFCBE4(0x5F656761726F7473, 0xEC00000065646F6DLL);
            if ((v52 & 1) == 0)
            {
              break;
            }

            v53 = *(*(v49 + 56) + 8 * v51);
            swift_unknownObjectRetain();

            v305 = v53;
            if ((swift_dynamicCast() & 1) == 0)
            {
              (*(v290 + 8))(v292, v289);
              sub_25EAFC5CC(v293, v294);

LABEL_240:

              goto LABEL_3;
            }

            v301 = v308;
            v302 = v309;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v308 = v27;
            v55 = sub_25EAFCBE4(v48, v47);
            v57 = v27;
            v58 = v55;
            v59 = v57[2];
            v60 = (v56 & 1) == 0;
            v61 = v59 + v60;
            if (__OFADD__(v59, v60))
            {
              goto LABEL_242;
            }

            v62 = v56;
            v299 = v57;
            if (v57[3] >= v61)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v63 = v299;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121C0, &qword_25EB78CF0);
                v75 = sub_25EB6E868();
                v63 = v75;
                if (v299[2])
                {
                  v76 = (v75 + 64);
                  v77 = 1 << *(v63 + 32);
                  v280 = (v299 + 8);
                  v78 = (v77 + 63) >> 6;
                  if (v63 != v299 || v76 >= &v280[8 * v78])
                  {
                    memmove(v76, v280, 8 * v78);
                  }

                  v79 = 0;
                  v80 = v299;
                  v63[2] = v299[2];
                  v81 = 1 << *(v80 + 32);
                  v82 = v80[8];
                  if (v81 < 64)
                  {
                    v83 = ~(-1 << v81);
                  }

                  else
                  {
                    v83 = -1;
                  }

                  v282 = v83 & v82;
                  v279 = (v81 + 63) >> 6;
                  while (1)
                  {
                    if (v282)
                    {
                      v84 = __clz(__rbit64(v282));
                      v282 &= v282 - 1;
                      goto LABEL_61;
                    }

                    v85 = v79;
                    do
                    {
                      v79 = v85 + 1;
                      if (__OFADD__(v85, 1))
                      {
                        __break(1u);
LABEL_286:
                        __break(1u);
LABEL_287:
                        __break(1u);
LABEL_288:
                        __break(1u);
LABEL_289:
                        __break(1u);
LABEL_290:
                        __break(1u);
LABEL_291:
                        __break(1u);
LABEL_292:
                        __break(1u);
LABEL_293:
                        __break(1u);
LABEL_294:
                        __break(1u);
LABEL_295:
                        __break(1u);
LABEL_296:
                        __break(1u);
LABEL_297:
                        __break(1u);
LABEL_298:
                        __break(1u);
LABEL_299:
                        __break(1u);
LABEL_300:
                        __break(1u);
LABEL_301:
                        result = sub_25EB6E9B8();
                        __break(1u);
                        return result;
                      }

                      if (v79 >= v279)
                      {
                        goto LABEL_62;
                      }

                      v86 = *&v280[8 * v79];
                      ++v85;
                    }

                    while (!v86);
                    v84 = __clz(__rbit64(v86));
                    v282 = (v86 - 1) & v86;
LABEL_61:
                    v87 = 16 * (v84 | (v79 << 6));
                    v88 = (v299[6] + v87);
                    v90 = *v88;
                    v89 = v88[1];
                    v91 = (v299[7] + v87);
                    v92 = *v91;
                    v281 = v91[1];
                    v93 = v281;
                    v94 = (v63[6] + v87);
                    *v94 = v90;
                    v94[1] = v89;
                    v95 = (v63[7] + v87);
                    *v95 = v92;
                    v95[1] = v93;
                  }
                }

LABEL_62:
              }
            }

            else
            {
              sub_25EB2B66C(v61, isUniquelyReferenced_nonNull_native);
              v63 = v308;
              v64 = sub_25EAFCBE4(v48, v47);
              if ((v62 & 1) != (v65 & 1))
              {
                goto LABEL_301;
              }

              v58 = v64;
            }

            v44 &= v44 - 1;
            if (v62)
            {

              v23 = v63;
              v66 = (v63[7] + 16 * v58);
              v67 = v66[1];
              v68 = v302;
              *v66 = v301;
              v66[1] = v68;

              v27 = v63;
              v40 = v2;
              if (!v44)
              {
                goto LABEL_28;
              }
            }

            else
            {
              v63[(v58 >> 6) + 8] |= 1 << v58;
              v69 = (v63[6] + 16 * v58);
              *v69 = v48;
              v69[1] = v47;
              v70 = (v63[7] + 16 * v58);
              v71 = v302;
              *v70 = v301;
              v70[1] = v71;
              v72 = v63[2];
              v73 = __OFADD__(v72, 1);
              v74 = v72 + 1;
              if (v73)
              {
                __break(1u);
                goto LABEL_245;
              }

              v23 = v63;
              v63[2] = v74;
              v27 = v63;
              v40 = v2;
              if (!v44)
              {
                goto LABEL_28;
              }
            }
          }

          sub_25EAFC5CC(v293, v294);

          (*(v290 + 8))(v292, v289);
LABEL_236:

          goto LABEL_3;
        }

        while (1)
        {
LABEL_28:
          v2 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            __break(1u);
LABEL_242:
            __break(1u);
LABEL_243:
            sub_25EAFC5CC(v293, v294);

            goto LABEL_267;
          }

          if (v2 >= v5)
          {
            break;
          }

          v44 = *&v1[8 * v2];
          ++v40;
          if (v44)
          {
            goto LABEL_31;
          }
        }

        v34 = v298;
        v2 = v290;
        v1 = v289;
        v5 = v292;
        v21 = v288;
        v33 = v296;
        if (v298 == v287)
        {
          goto LABEL_63;
        }
      }

LABEL_245:
      sub_25EAFC5CC(v293, v294);

LABEL_235:

      (*(v2 + 8))(v5, v1);
      goto LABEL_236;
    }

LABEL_63:
    v96 = v286 + 1;

    v25 = v96;
    v26 = v283;
  }

  while (v96 != v284);
  v97 = 0;
  v298 = "com.apple.polaris.pssg.builder";
  v296 = 0xEA0000000000656DLL;
  do
  {
    if (v97 >= v21[2])
    {
      goto LABEL_286;
    }

    v98 = v26[v97];
    v99 = *(v98 + 16);

    if (!v99)
    {
      goto LABEL_234;
    }

    v100 = sub_25EAFCBE4(0x5F6E6F6973736573, 0xEC000000656D616ELL);
    if ((v101 & 1) == 0)
    {
      goto LABEL_234;
    }

    v307 = *(*(v98 + 56) + 8 * v100);
    swift_unknownObjectRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_255;
    }

    v302 = v306;
    if (!*(v98 + 16))
    {
      goto LABEL_245;
    }

    v299 = v305;
    v102 = sub_25EAFCBE4(0x736870617267, 0xE600000000000000);
    if ((v103 & 1) == 0)
    {
      goto LABEL_245;
    }

    v104 = *(*(v98 + 56) + 8 * v102);
    swift_unknownObjectRetain();

    v305 = v104;
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v2 + 8))(v292, v1);
      sub_25EAFC5CC(v293, v294);
      goto LABEL_272;
    }

    v105 = v307;
    if (!*(v307 + 16))
    {
      goto LABEL_226;
    }

    v106 = 0;
    v107 = v307 + 32;
    v278 = *(v307 + 16);
    v277 = v307 + 32;
    while (2)
    {
      if (v106 >= *(v105 + 16))
      {
        goto LABEL_291;
      }

      v280 = v106;
      v108 = *(v107 + 8 * v106);
      v109 = *(v108 + 16);

      if (!v109 || (v110 = sub_25EAFCBE4(0x616E5F6870617267, v296), (v111 & 1) == 0))
      {
        sub_25EAFC5CC(v293, v294);

        goto LABEL_253;
      }

      v307 = *(*(v108 + 56) + 8 * v110);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*(v2 + 8))(v292, v1);
        sub_25EAFC5CC(v293, v294);

LABEL_272:

        goto LABEL_239;
      }

      v276 = v305;
      v286 = v306;
      v307 = MEMORY[0x277D84F90];
      v304 = MEMORY[0x277D84FA0];
      if (!*(v108 + 16))
      {
        goto LABEL_248;
      }

      v112 = sub_25EAFCBE4(0x736B736174, 0xE500000000000000);
      if ((v113 & 1) == 0)
      {
        goto LABEL_248;
      }

      v305 = *(*(v108 + 56) + 8 * v112);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_248;
      }

      v282 = v105;
      v114 = v303;
      v115 = *(v303 + 16);
      v290 = v2;
      v289 = v1;
      v300 = v23;
      v288 = v21;
      v297 = v108;
      v275 = v97;
      if (v115)
      {
        v273 = v115;
        v116 = 0;
        v281 = v303 + 32;
        v301 = MEMORY[0x277D84F90];
        v279 = v303;
        while (1)
        {
          if (v116 >= *(v114 + 16))
          {
            goto LABEL_292;
          }

          v274 = v116;
          v117 = *(v281 + 8 * v116);
          v118 = *(v117 + 16);

          if (!v118)
          {
            goto LABEL_250;
          }

          v119 = sub_25EAFCBE4(0x737475706E69, 0xE600000000000000);
          if ((v120 & 1) == 0)
          {
            goto LABEL_250;
          }

          v305 = *(*(v117 + 56) + 8 * v119);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_250;
          }

          v121 = v303;
          v287 = *(v303 + 16);
          if (v287)
          {
            v122 = 0;
            v123 = v300;
            while (1)
            {
              if (v122 >= *(v121 + 16))
              {
                goto LABEL_289;
              }

              v124 = *(v121 + 8 * v122 + 32);
              v125 = *(v124 + 16);

              if (!v125)
              {
                goto LABEL_243;
              }

              v126 = sub_25EAFCBE4(0xD000000000000013, v298 | 0x8000000000000000);
              if ((v127 & 1) == 0)
              {
                goto LABEL_243;
              }

              v303 = *(*(v124 + 56) + 8 * v126);
              swift_unknownObjectRetain();
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_243;
              }

              v128 = v306;
              if (!v123[2] || (v129 = v305, v130 = sub_25EAFCBE4(v305, v306), (v131 & 1) == 0))
              {
                sub_25EAFC5CC(v293, v294);

                goto LABEL_263;
              }

              v132 = (v123[7] + 16 * v130);
              v133 = *v132;
              v134 = v132[1];
              type metadata accessor for PSSGResourceID(0);
              v135 = v302;

              v136 = sub_25EB3235C(v129, v128, v299, v135, v133, v134);
              if (!v136)
              {
                break;
              }

              v137 = v136;
              if (!*(v124 + 16))
              {
                sub_25EAFC5CC(v293, v294);

                goto LABEL_265;
              }

              v138 = sub_25EAFCBE4(0x79745F7475706E69, 0xEA00000000006570);
              v123 = v300;
              if ((v139 & 1) == 0)
              {
                sub_25EAFC5CC(v293, v294);

LABEL_267:

LABEL_268:

                goto LABEL_269;
              }

              v140 = *(*(v124 + 56) + 8 * v138);
              swift_unknownObjectRetain();

              v303 = v140;
              if ((swift_dynamicCast() & 1) == 0)
              {
                sub_25EAFC5CC(v293, v294);

                goto LABEL_268;
              }

              v141 = v137;
              v142 = sub_25EB6E258();

              v143 = ps_input_type_from_description();

              v144 = [objc_allocWithZone(PSSGGraphInput) initWithResource:v141 type:v143];
              v145 = v144;
              MEMORY[0x25F8C6A80]();
              if (*((v307 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v307 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v146 = *((v307 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_25EB6E3F8();
              }

              ++v122;
              sub_25EB6E418();

              v301 = v307;
              if (v287 == v122)
              {
                goto LABEL_102;
              }
            }

            sub_25EAFC5CC(v293, v294);

LABEL_265:

            goto LABEL_275;
          }

LABEL_102:

          if (!*(v117 + 16) || (v147 = sub_25EAFCBE4(0x7374757074756FLL, 0xE700000000000000), (v148 & 1) == 0))
          {
LABEL_250:
            sub_25EAFC5CC(v293, v294);

            goto LABEL_275;
          }

          v149 = *(*(v117 + 56) + 8 * v147);
          swift_unknownObjectRetain();

          v305 = v149;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121C8, &qword_25EB78ED0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            sub_25EAFC5CC(v293, v294);

            goto LABEL_275;
          }

          v287 = v303;
          v150 = *(v303 + 16);
          if (v150)
          {
            break;
          }

LABEL_112:

          v116 = v274 + 1;
          v108 = v297;
          v114 = v279;
          if (v274 + 1 == v273)
          {
            goto LABEL_115;
          }
        }

        v151 = 0;
        v152 = (v287 + 40);
        v153 = v300;
        while (v151 < *(v287 + 16))
        {
          v155 = *(v152 - 1);
          v154 = *v152;
          v156 = v153[2];

          if (!v156 || (v157 = sub_25EAFCBE4(v155, v154), (v158 & 1) == 0))
          {
            sub_25EAFC5CC(v293, v294);

            goto LABEL_263;
          }

          v159 = (v153[7] + 16 * v157);
          v160 = *v159;
          v161 = v159[1];
          type metadata accessor for PSSGResourceID(0);
          v162 = v302;

          v163 = sub_25EB3235C(v155, v154, v299, v162, v160, v161);
          if (!v163)
          {
            sub_25EAFC5CC(v293, v294);

            goto LABEL_263;
          }

          ++v151;
          sub_25EB26394(&v305, v163);

          v152 += 2;
          if (v150 == v151)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_290;
      }

      v301 = MEMORY[0x277D84F90];
LABEL_115:

      if (!*(v108 + 16) || (v164 = sub_25EAFCBE4(0x73726574697277, 0xE700000000000000), (v165 & 1) == 0) || (v305 = *(v297[7] + 8 * v164), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
      {
LABEL_259:
        sub_25EAFC5CC(v293, v294);

        goto LABEL_276;
      }

      v287 = v303;
      v281 = *(v303 + 16);
      if (v281)
      {
        v166 = 0;
        v167 = v300;
        v168 = v287;
        do
        {
          if (v166 >= *(v168 + 16))
          {
            goto LABEL_287;
          }

          v172 = *(v168 + 8 * v166 + 32);
          v173 = *(v172 + 16);

          if (!v173 || (v174 = sub_25EAFCBE4(0x74757074756FLL, 0xE600000000000000), (v175 & 1) == 0))
          {
            sub_25EAFC5CC(v293, v294);

            goto LABEL_258;
          }

          v176 = *(*(v172 + 56) + 8 * v174);
          swift_unknownObjectRetain();

          v303 = v176;
          if ((swift_dynamicCast() & 1) == 0)
          {
            sub_25EAFC5CC(v293, v294);

LABEL_258:

LABEL_269:

LABEL_263:

            (*(v290 + 8))(v292, v289);
            goto LABEL_278;
          }

          if (v167[2] && (v177 = sub_25EAFCBE4(v305, v306), (v178 & 1) != 0))
          {
            v179 = (v167[7] + 16 * v177);
            v181 = *v179;
            v180 = v179[1];
          }

          else
          {
            v180 = 0xE600000000000000;
            v181 = 0x646572616873;
          }

          ps_resource_storage_mode_description();
          v182 = sub_25EB6E2F8();
          v184 = v183;
          ps_resource_storage_mode_description();
          v185 = sub_25EB6E2F8();
          v187 = v186;
          if (v182 == v181 && v184 == v180)
          {
          }

          else
          {
            v188 = sub_25EB6E988();

            if ((v188 & 1) == 0)
            {
              if (v185 == v181 && v187 == v180)
              {
              }

              else
              {
                v189 = sub_25EB6E988();

                if ((v189 & 1) == 0)
                {
                  sub_25EAFC5CC(v293, v294);

                  goto LABEL_276;
                }
              }

              v190 = objc_allocWithZone(PSSGResourceID);
              v191 = sub_25EB6E258();

              v170 = sub_25EB6E258();
              v171 = [v190 initLocalWithName:v191 session:v170];

              v168 = v287;
              goto LABEL_122;
            }
          }

          v168 = v287;

          v169 = objc_allocWithZone(PSSGResourceID);
          v170 = sub_25EB6E258();

          v171 = [v169 initGlobalWithName_];
LABEL_122:
          ++v166;

          sub_25EB26394(&v305, v171);
          v167 = v300;
        }

        while (v281 != v166);
      }

      if (!v297[2])
      {
        goto LABEL_259;
      }

      v192 = sub_25EAFCBE4(0x73726564616572, 0xE700000000000000);
      if ((v193 & 1) == 0)
      {
        goto LABEL_259;
      }

      v305 = *(v297[7] + 8 * v192);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_259;
      }

      v194 = v303;
      v281 = *(v303 + 16);
      if (v281)
      {
        v195 = 0;
        while (1)
        {
          if (v195 >= *(v194 + 16))
          {
            goto LABEL_293;
          }

          v196 = *(v194 + 8 * v195 + 32);
          v197 = *(v196 + 16);

          if (!v197 || (v198 = sub_25EAFCBE4(0xD000000000000013, v298 | 0x8000000000000000), (v199 & 1) == 0) || (v303 = *(*(v196 + 56) + 8 * v198), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
          {
            sub_25EAFC5CC(v293, v294);

            goto LABEL_274;
          }

          v287 = v305;
          if (v300[2] && (v200 = sub_25EAFCBE4(v287, v306), (v201 & 1) != 0))
          {
            v202 = (v300[7] + 16 * v200);
            v204 = *v202;
            v203 = v202[1];
          }

          else
          {
            v203 = 0xE600000000000000;
            v204 = 0x646572616873;
          }

          ps_resource_storage_mode_description();
          v205 = sub_25EB6E2F8();
          v207 = v206;
          ps_resource_storage_mode_description();
          v208 = sub_25EB6E2F8();
          v210 = v209;
          if (v205 == v204 && v207 == v203)
          {
            break;
          }

          v211 = sub_25EB6E988();

          if (v211)
          {
            goto LABEL_156;
          }

          if (v208 == v204 && v210 == v203)
          {
          }

          else
          {
            v215 = sub_25EB6E988();

            if ((v215 & 1) == 0)
            {
              sub_25EAFC5CC(v293, v294);

              goto LABEL_275;
            }
          }

          v216 = objc_allocWithZone(PSSGResourceID);
          v217 = sub_25EB6E258();

          v213 = sub_25EB6E258();
          v214 = [v216 initLocalWithName:v217 session:v213];

LABEL_162:
          if (!*(v196 + 16) || (v218 = sub_25EAFCBE4(0x79745F7475706E69, 0xEA00000000006570), (v219 & 1) == 0))
          {
            sub_25EAFC5CC(v293, v294);

LABEL_274:

LABEL_275:

LABEL_276:

LABEL_277:
            (*(v290 + 8))(v292, v289);
LABEL_278:

LABEL_3:
            result = 0;
            goto LABEL_4;
          }

          v220 = *(*(v196 + 56) + 8 * v218);
          swift_unknownObjectRetain();

          v303 = v220;
          if ((swift_dynamicCast() & 1) == 0)
          {
            sub_25EAFC5CC(v293, v294);

            goto LABEL_275;
          }

          v221 = v214;
          v222 = sub_25EB6E258();

          v223 = ps_input_type_from_description();

          v224 = [objc_allocWithZone(PSSGGraphInput) initWithResource:v221 type:v223];
          v225 = v224;
          MEMORY[0x25F8C6A80]();
          if (*((v307 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v307 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25EB6E3F8();
          }

          ++v195;
          sub_25EB6E418();

          v301 = v307;
          if (v281 == v195)
          {
            goto LABEL_168;
          }
        }

LABEL_156:

        v212 = objc_allocWithZone(PSSGResourceID);
        v213 = sub_25EB6E258();

        v214 = [v212 initGlobalWithName_];
        goto LABEL_162;
      }

LABEL_168:

      v274 = v304;
      if ((v304 & 0xC000000000000001) != 0)
      {

        sub_25EB6E5B8();
        type metadata accessor for PSSGResourceID(0);
        sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
        sub_25EB6E478();
        v287 = v308;
        v279 = v309;
        v226 = v311;
        v273 = v310;
        v227 = v312;
      }

      else
      {
        v228 = -1 << *(v274 + 32);
        v229 = *(v274 + 56);
        v279 = v274 + 56;
        v273 = ~v228;
        v230 = -v228;
        if (v230 < 64)
        {
          v231 = ~(-1 << v230);
        }

        else
        {
          v231 = -1;
        }

        v227 = v231 & v229;
        v226 = 0;
      }

      ++v280;
      v232 = (v273 + 64) >> 6;
      while (1)
      {
        if (v287 < 0)
        {
          v237 = sub_25EB6E638();
          if (!v237)
          {
            break;
          }

          v303 = v237;
          type metadata accessor for PSSGResourceID(0);
          swift_dynamicCast();
          v236 = v305;
          i = v226;
          v281 = v227;
        }

        else
        {
          v233 = v226;
          v234 = v227;
          for (i = v226; !v234; ++v233)
          {
            i = v233 + 1;
            if (__OFADD__(v233, 1))
            {
              goto LABEL_288;
            }

            if (i >= v232)
            {
              goto LABEL_222;
            }

            v234 = *(v279 + 8 * i);
          }

          v281 = (v234 - 1) & v234;
          v236 = *(*(v287 + 48) + ((i << 9) | (8 * __clz(__rbit64(v234)))));
        }

        if (!v236)
        {
          break;
        }

        v238 = v236;
        v239 = v285;
        v240 = sub_25EB309C8(&v307);
        v285 = v239;

        v301 = v307;
        v241 = v307 >> 62;
        if (v307 >> 62)
        {
          v242 = sub_25EB6E5F8();
          v243 = v242 - v240;
          if (v242 < v240)
          {
            goto LABEL_294;
          }
        }

        else
        {
          v242 = *((v301 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v243 = v242 - v240;
          if (v242 < v240)
          {
            goto LABEL_294;
          }
        }

        if (v240 < 0)
        {
          goto LABEL_295;
        }

        if (v241)
        {
          v244 = sub_25EB6E5F8();
        }

        else
        {
          v244 = *((v301 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v244 < v242)
        {
          goto LABEL_296;
        }

        v245 = -v243;
        if (__OFSUB__(0, v243))
        {
          goto LABEL_297;
        }

        if (v241)
        {
          v246 = sub_25EB6E5F8();
        }

        else
        {
          v246 = *((v301 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v247 = v246 - v243;
        if (__OFADD__(v246, v245))
        {
          goto LABEL_298;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (v241)
          {
            goto LABEL_204;
          }

          v249 = v301 & 0xFFFFFFFFFFFFFF8;
          if (v247 <= *((v301 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_206;
          }
        }

        else
        {
          if (v241)
          {
LABEL_204:
            sub_25EB6E5F8();
            goto LABEL_205;
          }

          v249 = v301 & 0xFFFFFFFFFFFFFF8;
        }

        v250 = *(v249 + 16);
LABEL_205:
        isUniquelyReferenced_nonNull_bridgeObject = sub_25EB6E6D8();
        v301 = isUniquelyReferenced_nonNull_bridgeObject;
        v249 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_206:
        type metadata accessor for PSSGGraphInput(isUniquelyReferenced_nonNull_bridgeObject);
        swift_arrayDestroy();
        if (v243)
        {
          v251 = v301 >> 62;
          if (v301 >> 62)
          {
            v256 = sub_25EB6E5F8();
            v253 = v256 - v242;
            if (__OFSUB__(v256, v242))
            {
              goto LABEL_299;
            }
          }

          else
          {
            v252 = *(v249 + 16);
            v253 = v252 - v242;
            if (__OFSUB__(v252, v242))
            {
              goto LABEL_299;
            }
          }

          v254 = (v249 + 32 + 8 * v242);
          if (v242 != v240 || v249 + 32 + 8 * v240 >= v254 + 8 * v253)
          {
            memmove((v249 + 32 + 8 * v240), v254, 8 * v253);
          }

          if (v251)
          {
            v255 = sub_25EB6E5F8();
          }

          else
          {
            v255 = *(v249 + 16);
          }

          if (__OFADD__(v255, v245))
          {
            goto LABEL_300;
          }

          *(v249 + 16) = v255 + v245;
        }

        v307 = v301;
        v226 = i;
        v227 = v281;
      }

LABEL_222:
      sub_25EB0EC08();
      v257 = objc_allocWithZone(PSSGGraphID);
      v258 = sub_25EB6E258();

      v259 = sub_25EB6E258();
      v260 = [v257 initWithName:v258 session:v259];

      v261 = sub_25EB0EF2C(0x636E657571657266, 0xEE00657079745F79, v297);

      if (!v261 || (v303 = v261, (swift_dynamicCast() & 1) == 0))
      {
        sub_25EAFC5CC(v293, v294);

        goto LABEL_277;
      }

      v262 = sub_25EB6E258();

      v263 = ps_graph_frequency_type_from_description();

      type metadata accessor for PSSGGraphInput(v264);
      v265 = sub_25EB6E3C8();

      type metadata accessor for PSSGResourceID(0);
      sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
      v266 = sub_25EB6E428();

      v305 = 0;
      LOBYTE(v263) = [v295 addGraphWithID:v260 type:v263 inputs:v265 outputs:v266 error:&v305];

      if ((v263 & 1) == 0)
      {
        v270 = v305;

        v271 = sub_25EB6E048();

        swift_willThrow();
        sub_25EAFC5CC(v293, v294);

        (*(v290 + 8))(v292, v289);

        goto LABEL_3;
      }

      v267 = v305;

      v106 = v280;
      v105 = v282;
      v2 = v290;
      v1 = v289;
      v23 = v300;
      v21 = v288;
      v97 = v275;
      v107 = v277;
      if (v280 != v278)
      {
        continue;
      }

      break;
    }

LABEL_226:
    ++v97;

    v5 = v292;
    v26 = v283;
  }

  while (v97 != v284);
LABEL_227:
  (*(v2 + 8))(v5, v1);
  sub_25EAFC5CC(v293, v294);

  result = v295;
LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSSGBuilder.strideDependentGraphs(for:)(uint64_t a1)
{
  v13 = sub_25EB1E9F8;
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_25EB320E0;
  v12 = &block_descriptor_57;
  v3 = _Block_copy(&v9);

  v13 = sub_25EB1EA48;
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_25EB1EA70;
  v12 = &block_descriptor_60;
  v4 = _Block_copy(&v9);

  v5 = [v1 nodesForGraphID:a1 graphCond:v3 graphInputCond:v4 resourceCond:0];
  _Block_release(v4);
  _Block_release(v3);
  v6 = [v5 graphs];

  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v7 = sub_25EB6E438();

  return v7;
}

BOOL sub_25EB1E9F8(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = 2;
    return [a1 type] == v2;
  }

  if (a2 == 1)
  {
    v2 = 1;
    return [a1 type] == v2;
  }

  return 0;
}

uint64_t sub_25EB1EA70(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

unint64_t sub_25EB1EC4C(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v4 = sub_25EB6E1F8();
  v5 = [v2 getStrideDependentGraphsCountWithStrideDependentGraphs_];

  v6 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v7 = *&v2[v6];
  if ((v7 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v8 = *&v2[v6];
    }

    v9 = *&v2[v6];

    v10 = sub_25EB6E5F8();
  }

  else
  {
    v10 = *(v7 + 16);
  }

  v11 = MEMORY[0x277D84FA0];
  if (v5 != v10)
  {
    if (qword_27FD11B20 != -1)
    {
LABEL_29:
      swift_once();
    }

    v12 = sub_25EB6E1B8();
    __swift_project_value_buffer(v12, qword_27FD2EED0);
    v13 = v2;
    v14 = sub_25EB6E198();
    v15 = sub_25EB6E498();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      *(v16 + 4) = v5;
      *(v16 + 12) = 2048;
      v5 = *&v2[v6];
      if ((v5 & 0xC000000000000001) != 0)
      {
        if (v5 < 0)
        {
          v17 = *&v2[v6];
        }

        v18 = *&v2[v6];

        v19 = sub_25EB6E5F8();
      }

      else
      {
        v19 = *(v5 + 16);
      }

      *(v16 + 14) = v19;

      _os_log_impl(&dword_25EA3A000, v14, v15, "Stride dependent graph count %ld does not match total graph count %ld", v16, 0x16u);
      MEMORY[0x25F8C9C00](v16, -1, -1);
    }

    else
    {

      v14 = v13;
    }

    v33 = v11;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v11 = v21 & *(a1 + 64);
    v22 = (v20 + 63) >> 6;

    v23 = 0;
    if (v11)
    {
      while (1)
      {
        v24 = v23;
LABEL_24:
        v25 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v26 = (v24 << 9) | (8 * v25);
        v5 = *(*(a1 + 56) + v26);
        v27 = *(*(a1 + 48) + v26);

        sub_25EB26820(&v32, v27);

        sub_25EB0F39C(v5, type metadata accessor for PSSGGraphID, &unk_27FD11DF0, type metadata accessor for PSSGGraphID, sub_25EB26820);
        if (!v11)
        {
          goto LABEL_20;
        }
      }
    }

    while (1)
    {
LABEL_20:
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v24 >= v22)
      {
        break;
      }

      v11 = *(a1 + 64 + 8 * v24);
      ++v23;
      if (v11)
      {
        v23 = v24;
        goto LABEL_24;
      }
    }

    v28 = *&v2[v6];

    sub_25EAFFBF0(v29);
    v11 = sub_25EB1F000(v33, v30);
  }

  return v11;
}

uint64_t sub_25EB1F000(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_25EB6E5F8();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_25EB2ED1C(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_25EB6E5F8() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_25EB6E5F8();
  v2 = sub_25EB26CCC(v5, v6, &unk_27FD123B0, qword_25EB78CA0, type metadata accessor for PSSGGraphID);
LABEL_10:

  return sub_25EB07BF8(a1, v2);
}

uint64_t PSSGBuilder.allStrideDependentGraphs()()
{
  v1 = v0;
  v2 = OBJC_IVAR___PSSGBuilder_cache;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = *&v0[v2];

    return v3;
  }

  v5 = sub_25EB0E470(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v7 = *&v0[v6];
  v136 = v2;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = sub_25EB6E768() | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v9 = ~v12;
    v8 = v7 + 64;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v7 + 64);
    v11 = v7;
  }

  v15 = 0;
  v137 = v8;
  v16 = (v9 + 64) >> 6;
  v147 = v1;
  v138 = v11;
  v139 = v16;
LABEL_10:
  v17 = v15;
  v144 = v5;
  if ((v11 & 0x8000000000000000) != 0)
  {
    while (1)
    {
      if (!sub_25EB6E7F8())
      {
        goto LABEL_73;
      }

      v24 = v23;
      type metadata accessor for PSSGGraphID(0);
      v25 = swift_dynamicCast();
      v22 = v149;
      v148 = v24;
      type metadata accessor for PSSGGraph(v25);
      swift_dynamicCast();
      v145 = v149;
      v15 = v17;
      v140 = v10;
      if (!v149)
      {
        goto LABEL_73;
      }

LABEL_19:
      v142 = v22;
      v26 = v145;
      if (![v145 type] || objc_msgSend(v145, sel_type) == 3)
      {
        v57 = [v1 strideDependentGraphsForGraphID_];
        type metadata accessor for PSSGGraphID(0);
        sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
        v58 = sub_25EB6E438();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v149 = v5;
        v60 = sub_25EAFD168(v142);
        v62 = v5[2];
        v63 = (v61 & 1) == 0;
        v64 = __OFADD__(v62, v63);
        v65 = v62 + v63;
        if (v64)
        {
          goto LABEL_118;
        }

        v66 = v61;
        if (v5[3] >= v65)
        {
          v10 = v140;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v61 & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v73 = v60;
            sub_25EB2DC00(&unk_27FD11EB0, &unk_25EB79590);
            v60 = v73;
            v16 = v139;
            if ((v66 & 1) == 0)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          sub_25EB2BBC4(v65, isUniquelyReferenced_nonNull_native, &unk_27FD11EB0, &unk_25EB79590);
          v60 = sub_25EAFD168(v142);
          if ((v66 & 1) != (v67 & 1))
          {
            goto LABEL_122;
          }

          v10 = v140;
          if ((v66 & 1) == 0)
          {
LABEL_71:
            v5[(v60 >> 6) + 8] |= 1 << v60;
            *(v5[6] + 8 * v60) = v142;
            *(v5[7] + 8 * v60) = v58;

            v74 = v5[2];
            v64 = __OFADD__(v74, 1);
            v75 = v74 + 1;
            if (!v64)
            {
              v5[2] = v75;
              v11 = v138;
              goto LABEL_10;
            }

LABEL_120:
            __break(1u);
            goto LABEL_121;
          }
        }

        v68 = v5[7];
        v69 = *(v68 + 8 * v60);
        *(v68 + 8 * v60) = v58;

        v11 = v138;
        goto LABEL_10;
      }

      if ([v145 type] == 1)
      {
        break;
      }

      v10 = v140;
      if ([v145 type] == 2)
      {
        v36 = [v145 outputs];
        type metadata accessor for PSSGResourceID(0);
        sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
        v37 = sub_25EB6E438();

        v38 = (v37 & 0xC000000000000001) != 0 ? sub_25EB6E5F8() : *(v37 + 16);

        if (!v38)
        {
          v70 = [v1 strideDependentGraphsForGraphID_];
          type metadata accessor for PSSGGraphID(0);
          sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
          v71 = sub_25EB6E438();

          v72 = swift_isUniquelyReferenced_nonNull_native();
          v149 = v5;
          sub_25EB2CB14(v71, v22, v72, &unk_27FD11EB0, &unk_25EB79590);

          v16 = v139;
          goto LABEL_10;
        }
      }

LABEL_53:

      v17 = v15;
      v16 = v139;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }
    }

    v27 = [v145 sharedInputs];
    type metadata accessor for PSSGGraphInput(v27);
    v28 = sub_25EB6E3D8();

    if (v28 >> 62)
    {
      v29 = sub_25EB6E5F8();
      v30 = off_279A49000;
      if (v29)
      {
LABEL_24:
        v149 = MEMORY[0x277D84F90];
        sub_25EB6E718();
        if (v29 < 0)
        {
          goto LABEL_117;
        }

        v31 = 0;
        do
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x25F8C6D90](v31, v28);
          }

          else
          {
            v32 = *(v28 + 8 * v31 + 32);
          }

          v33 = v32;
          ++v31;
          v34 = [v32 v30[400]];

          sub_25EB6E6F8();
          v35 = *(v149 + 16);
          sub_25EB6E728();
          sub_25EB6E738();
          sub_25EB6E708();
        }

        while (v29 != v31);

        v39 = v149;
        if (!(v149 >> 62))
        {
LABEL_34:
          v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v40)
          {
            goto LABEL_35;
          }

LABEL_50:

          v26 = v145;
          v1 = v147;
          v5 = v144;
          v8 = v137;
          v11 = v138;
          v10 = v140;
          goto LABEL_53;
        }

LABEL_57:
        v40 = sub_25EB6E5F8();
        if (v40)
        {
LABEL_35:
          v41 = 0;
          v42 = OBJC_IVAR___PSSGBuilder_resources;
          while (1)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x25F8C6D90](v41, v39);
            }

            else
            {
              if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v43 = *(v39 + 8 * v41 + 32);
            }

            v44 = v43;
            v45 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_115;
            }

            swift_beginAccess();
            v46 = *&v147[v42];
            if ((v46 & 0xC000000000000001) != 0)
            {
              v47 = v44;
              v48 = sub_25EB6E7E8();

              if (!v48)
              {
                goto LABEL_59;
              }

              type metadata accessor for PSSGResource(v49);
              swift_dynamicCast();
              v50 = v148;
              if (!v148)
              {
                goto LABEL_59;
              }
            }

            else if (!*(v46 + 16) || (v51 = sub_25EAFD114(v44), (v52 & 1) == 0) || (v50 = *(*(v46 + 56) + 8 * v51)) == 0)
            {
LABEL_59:
              swift_endAccess();
LABEL_60:

              v1 = v147;
              v54 = [v147 strideDependentGraphsForGraphID_];
              type metadata accessor for PSSGGraphID(0);
              sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
              v55 = sub_25EB6E438();

              v56 = swift_isUniquelyReferenced_nonNull_native();
              v149 = v144;
              sub_25EB2CB14(v55, v142, v56, &unk_27FD11EB0, &unk_25EB79590);

              v5 = v144;
              v8 = v137;
              v11 = v138;
              v16 = v139;
              v10 = v140;
              goto LABEL_10;
            }

            swift_endAccess();
            v53 = [v50 producer];

            if (!v53)
            {
              goto LABEL_60;
            }

            ++v41;
            if (v45 == v40)
            {
              goto LABEL_50;
            }
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v30 = off_279A49000;
      if (v29)
      {
        goto LABEL_24;
      }
    }

    v39 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_34;
    }

    goto LABEL_57;
  }

LABEL_11:
  v18 = v17;
  v19 = v10;
  v15 = v17;
  if (!v10)
  {
    while (1)
    {
      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v15 >= v16)
      {
        goto LABEL_73;
      }

      v19 = *(v8 + 8 * v15);
      ++v18;
      if (v19)
      {
        goto LABEL_15;
      }
    }

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
    goto LABEL_120;
  }

LABEL_15:
  v140 = (v19 - 1) & v19;
  v20 = (v15 << 9) | (8 * __clz(__rbit64(v19)));
  v21 = *(*(v11 + 56) + v20);
  v22 = *(*(v11 + 48) + v20);
  v145 = v21;
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_73:
  sub_25EB0EC08();
  v76 = type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v77 = sub_25EB6E1F8();
  v78 = [v1 getOrphanedGraphsWithSourceGraphToAffectedGraphs_];

  v79 = sub_25EB6E438();
  if ((v79 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    sub_25EB6E478();
    v79 = v149;
    v80 = v150;
    v81 = v151;
    i = v152;
    v83 = v153;
  }

  else
  {
    i = 0;
    v84 = -1 << *(v79 + 32);
    v80 = v79 + 56;
    v81 = ~v84;
    v85 = -v84;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    else
    {
      v86 = -1;
    }

    v83 = v86 & *(v79 + 56);
  }

  v87 = (v81 + 64) >> 6;
  v88 = &unk_27FD11000;
  v141 = v87;
  v143 = v80;
  while (2)
  {
    while (2)
    {
      v89 = i;
      while (1)
      {
        if (v79 < 0)
        {
          if (!sub_25EB6E638() || (swift_dynamicCast(), v93 = v148, i = v89, v92 = v83, !v148))
          {
LABEL_111:
            sub_25EB0EC08();
            v134 = *&v147[v136];
            v3 = v144;
            *&v147[v136] = v144;

            return v3;
          }
        }

        else
        {
          v90 = v89;
          v91 = v83;
          for (i = v89; !v91; ++v90)
          {
            i = v90 + 1;
            if (__OFADD__(v90, 1))
            {
              goto LABEL_114;
            }

            if (i >= v87)
            {
              goto LABEL_111;
            }

            v91 = *(v80 + 8 * i);
          }

          v92 = (v91 - 1) & v91;
          v93 = *(*(v79 + 48) + ((i << 9) | (8 * __clz(__rbit64(v91)))));
          if (!v93)
          {
            goto LABEL_111;
          }
        }

        v146 = v92;
        if (!v144[2])
        {
          break;
        }

        sub_25EAFD168(v93);
        if ((v94 & 1) == 0)
        {
          break;
        }

        if (v88[356] != -1)
        {
          swift_once();
        }

        v95 = sub_25EB6E1B8();
        __swift_project_value_buffer(v95, qword_27FD2EED0);
        v96 = v93;
        v97 = sub_25EB6E198();
        v98 = sub_25EB6E498();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = v88;
          v100 = swift_slowAlloc();
          v101 = v79;
          v102 = v76;
          v103 = swift_slowAlloc();
          *v100 = 138412290;
          *(v100 + 4) = v96;
          *v103 = v93;
          v104 = v96;
          _os_log_impl(&dword_25EA3A000, v97, v98, "Orphaned graph %@ also in sourceGraphToAffectedGraph!", v100, 0xCu);
          sub_25EB0D660(v103, &qword_27FD120D0, &qword_25EB78E60);
          v105 = v103;
          v76 = v102;
          v79 = v101;
          v80 = v143;
          MEMORY[0x25F8C9C00](v105, -1, -1);
          v106 = v100;
          v88 = v99;
          v87 = v141;
          MEMORY[0x25F8C9C00](v106, -1, -1);
          v96 = v97;
          v97 = v104;
        }

        v89 = i;
        v83 = v146;
      }

      if (v88[356] != -1)
      {
        swift_once();
      }

      v107 = sub_25EB6E1B8();
      __swift_project_value_buffer(v107, qword_27FD2EED0);
      v108 = v93;
      v109 = sub_25EB6E198();
      v110 = sub_25EB6E488();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = v88;
        v112 = swift_slowAlloc();
        v113 = v79;
        v114 = v76;
        v115 = swift_slowAlloc();
        *v112 = 138412290;
        *(v112 + 4) = v108;
        *v115 = v93;
        v116 = v108;
        _os_log_impl(&dword_25EA3A000, v109, v110, "Adding orphaned graph %@ to sourceGraphToAffectedGraph", v112, 0xCu);
        sub_25EB0D660(v115, &qword_27FD120D0, &qword_25EB78E60);
        v117 = v115;
        v76 = v114;
        v79 = v113;
        v80 = v143;
        MEMORY[0x25F8C9C00](v117, -1, -1);
        v118 = v112;
        v88 = v111;
        v87 = v141;
        MEMORY[0x25F8C9C00](v118, -1, -1);
      }

      v119 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v144;
      v120 = sub_25EAFD168(v108);
      v122 = v144[2];
      v123 = (v121 & 1) == 0;
      v64 = __OFADD__(v122, v123);
      v124 = v122 + v123;
      if (v64)
      {
        goto LABEL_119;
      }

      v125 = v121;
      if (v144[3] >= v124)
      {
        if ((v119 & 1) == 0)
        {
          v131 = v87;
          v132 = v88;
          v133 = v120;
          sub_25EB2DC00(&unk_27FD11EB0, &unk_25EB79590);
          v120 = v133;
          v88 = v132;
          v87 = v131;
        }
      }

      else
      {
        sub_25EB2BBC4(v124, v119, &unk_27FD11EB0, &unk_25EB79590);
        v120 = sub_25EAFD168(v108);
        if ((v125 & 1) != (v126 & 1))
        {
          goto LABEL_123;
        }
      }

      if (v125)
      {
        v127 = v144[7];
        v128 = *(v127 + 8 * v120);
        *(v127 + 8 * v120) = MEMORY[0x277D84FA0];

        v83 = v146;
        continue;
      }

      break;
    }

    v144[(v120 >> 6) + 8] |= 1 << v120;
    *(v144[6] + 8 * v120) = v108;
    *(v144[7] + 8 * v120) = MEMORY[0x277D84FA0];
    v129 = v144[2];
    v64 = __OFADD__(v129, 1);
    v130 = v129 + 1;
    if (!v64)
    {
      v144[2] = v130;
      v83 = v146;
      continue;
    }

    break;
  }

LABEL_121:
  __break(1u);
LABEL_122:
  sub_25EB6E9B8();
  __break(1u);
LABEL_123:
  result = sub_25EB6E9B8();
  __break(1u);
  return result;
}

uint64_t PSSGBuilder.allDependentGraphs(forResourceSet:)(int64_t a1)
{
  v3 = v1 + OBJC_IVAR___PSSGBuilder_cache;
  swift_beginAccess();
  v4 = *(v3 + 8);
  if (v4)
  {
    if (*(v4 + 16))
    {
      v5 = sub_25EAFD1BC(a1);
      if (v6)
      {
        v7 = *(*(v4 + 56) + 8 * v5);
        swift_endAccess();

        return v7;
      }
    }
  }

  swift_endAccess();
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_30;
  }

LABEL_6:
  v8 = MEMORY[0x277D84FA0];
  while (1)
  {
    v33 = v3;
    v44 = v8;
    v32 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_25EB6E5B8();
      type metadata accessor for PSSGResourceID(0);
      sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
      sub_25EB6E478();
      v9 = v45;
      v10 = v46;
      v3 = v47;
      v11 = v48;
      v12 = v49;
    }

    else
    {
      v13 = -1 << *(a1 + 32);
      v10 = a1 + 56;
      v3 = ~v13;
      v14 = -v13;
      v15 = v14 < 64 ? ~(-1 << v14) : -1;
      v12 = v15 & *(a1 + 56);

      v11 = 0;
      v9 = a1;
    }

    a1 = (v3 + 64) >> 6;
    v35 = v9;
    if (v9 < 0)
    {
      break;
    }

    while (1)
    {
      v20 = v11;
      v21 = v12;
      v18 = v11;
      if (!v12)
      {
        break;
      }

LABEL_21:
      v19 = (v21 - 1) & v21;
      v17 = *(*(v9 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v17)
      {
        goto LABEL_24;
      }

LABEL_22:
      v40 = sub_25EB2080C;
      v41 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_25EB320E0;
      v39 = &block_descriptor_63;
      v22 = _Block_copy(&aBlock);

      v40 = OUTLINED_FUNCTION_9_0;
      v41 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_25EB1EA70;
      v39 = &block_descriptor_66;
      v23 = _Block_copy(&aBlock);

      v40 = sub_25EB20AEC;
      v41 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_25EB320E0;
      v39 = &block_descriptor_69;
      v24 = _Block_copy(&aBlock);

      v25 = [v34 nodesForResourceID:v17 graphCond:v22 graphInputCond:v23 resourceCond:v24];
      _Block_release(v24);
      _Block_release(v23);
      _Block_release(v22);
      v26 = [v25 graphs];

      type metadata accessor for PSSGGraphID(0);
      v3 = type metadata accessor for PSSGGraphID;
      sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
      v27 = sub_25EB6E438();

      sub_25EB0F39C(v27, type metadata accessor for PSSGGraphID, &unk_27FD11DF0, type metadata accessor for PSSGGraphID, sub_25EB26820);
      v11 = v18;
      v12 = v19;
      v9 = v35;
      if (v35 < 0)
      {
        goto LABEL_14;
      }
    }

    while (1)
    {
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v18 >= a1)
      {
        goto LABEL_24;
      }

      v21 = *(v10 + 8 * v18);
      ++v20;
      if (v21)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_30:
    if (!sub_25EB6E5F8())
    {
      goto LABEL_6;
    }

    sub_25EB0E8C4(MEMORY[0x277D84F90]);
  }

LABEL_14:
  v16 = sub_25EB6E638();
  if (v16)
  {
    v43 = v16;
    type metadata accessor for PSSGResourceID(0);
    swift_dynamicCast();
    v17 = aBlock;
    v18 = v11;
    v19 = v12;
    if (aBlock)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  sub_25EB0EC08();
  if (!*(v33 + 8))
  {
    v28 = sub_25EB0E484(MEMORY[0x277D84F90]);
    swift_beginAccess();
    v29 = *(v33 + 8);
    *(v33 + 8) = v28;
  }

  v7 = v44;
  result = swift_beginAccess();
  if (*(v33 + 8))
  {
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v33 + 8);
    *(v33 + 8) = 0x8000000000000000;
    sub_25EB2C9A8(v7, v32, isUniquelyReferenced_nonNull_native);

    *(v33 + 8) = v42;
    swift_endAccess();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB2080C(void *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v14 = 0;
    return v14 & 1;
  }

  if (!a3)
  {
    v14 = 1;
    return v14 & 1;
  }

  v4 = a3;
  v5 = [a1 inputs];
  type metadata accessor for PSSGGraphInput(v5);
  v6 = sub_25EB6E3D8();

  v27 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25EB6E5F8())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v26 = v4;
    v9 = 0;
    v4 = (v6 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25F8C6D90](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ([v11 type])
      {
      }

      else
      {
        sub_25EB6E6F8();
        v10 = v27[2];
        sub_25EB6E728();
        sub_25EB6E738();
        sub_25EB6E708();
      }

      ++v9;
      if (v13 == i)
      {
        v15 = v27;
        v4 = v26;
        v8 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v15 & 0x8000000000000000) == 0 && (v15 & 0x4000000000000000) == 0)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      goto LABEL_23;
    }

LABEL_34:

    v24 = MEMORY[0x277D84F90];
LABEL_35:
    v27 = v4;
    MEMORY[0x28223BE20](v23);
    v25[2] = &v27;
    v14 = sub_25EB231B8(sub_25EB31A18, v25, v24);

    return v14 & 1;
  }

  v16 = sub_25EB6E5F8();
  if (!v16)
  {
    goto LABEL_34;
  }

LABEL_23:
  v27 = v8;
  result = sub_25EB6E718();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8C6D90](v18, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = [v19 resource];

      sub_25EB6E6F8();
      v22 = v27[2];
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
    }

    while (v16 != v18);

    v24 = v27;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB20B00(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  v10 = a4;
  LOBYTE(a4) = v8(v9, a3, a4);

  return a4 & 1;
}

void sub_25EB20C90(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v42 = a1;
  v5 = sub_25EB0EE68(a1, *(v2 + v4), sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v5)
  {
    swift_endAccess();
    return;
  }

  v6 = v5;
  swift_endAccess();
  v44 = MEMORY[0x277D84F90];
  v7 = [v6 sharedInputs];
  type metadata accessor for PSSGGraphInput(v7);
  v8 = sub_25EB6E3D8();

  if (v8 >> 62)
  {
    v9 = sub_25EB6E5F8();
    v38 = v6;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_36:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v38 = v6;
  if (!v9)
  {
    goto LABEL_36;
  }

LABEL_4:
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = OBJC_IVAR___PSSGBuilder_resources;
    v12 = v8 & 0xC000000000000001;
    v40 = v9;
    v41 = v8 & 0xC000000000000001;
    v39 = v8;
    while (1)
    {
      if (v12)
      {
        v14 = MEMORY[0x25F8C6D90](v10, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = [v14 resource];
      swift_beginAccess();
      v17 = *(v2 + v11);
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = v16;
        v19 = sub_25EB6E7E8();

        if (!v19)
        {
          goto LABEL_6;
        }

        type metadata accessor for PSSGResource(v20);
        swift_dynamicCast();
        v21 = v43;

        if (!v43)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (!*(v17 + 16) || (v22 = sub_25EAFD114(v16), (v23 & 1) == 0))
        {
LABEL_6:

LABEL_7:
          swift_endAccess();
LABEL_8:
          v13 = v15;
          MEMORY[0x25F8C6A80]();
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v36 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_25EB6E3F8();
            v12 = v41;
          }

          sub_25EB6E418();

          goto LABEL_11;
        }

        v21 = *(*(v17 + 56) + 8 * v22);

        if (!v21)
        {
          goto LABEL_7;
        }
      }

      swift_endAccess();
      v24 = [v21 producer];

      if (!v24)
      {
        goto LABEL_8;
      }

      v25 = [v24 session];
      v26 = sub_25EB6E268();
      v28 = v27;

      v29 = [v42 session];
      v30 = sub_25EB6E268();
      v32 = v31;

      if (v26 == v30 && v28 == v32)
      {

        v8 = v39;
      }

      else
      {
        v34 = sub_25EB6E988();

        v8 = v39;
        if ((v34 & 1) == 0)
        {
          v35 = v15;
          MEMORY[0x25F8C6A80]();
          v9 = v40;
          v12 = v41;
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v37 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_25EB6E3F8();
            v12 = v41;
          }

          sub_25EB6E418();

          goto LABEL_11;
        }
      }

      v9 = v40;
      v12 = v41;
LABEL_11:
      if (v9 == ++v10)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
}

char *PSSGBuilder.resources(forGraph:)(uint64_t a1)
{
  v2 = [v1 externalSharedInputsForGraph_];
  type metadata accessor for PSSGGraphInput(v2);
  v3 = sub_25EB6E3D8();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
LABEL_14:
    v18 = sub_25EB0CDCC(v7);

    return v18;
  }

  v4 = sub_25EB6E5F8();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  result = sub_25EB2514C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v19;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25F8C6D90](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 resource];
      v11 = [v10 name];

      v12 = sub_25EB6E268();
      v14 = v13;

      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25EB2514C((v15 > 1), v16 + 1, 1);
      }

      ++v6;
      *(v19 + 16) = v16 + 1;
      v17 = v19 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v4 != v6);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t PSSGBuilder.inputResources(forGraph:)(void *a1)
{
  v3 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v4 = sub_25EB0EE68(a1, *(v1 + v3), sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v4)
  {
    swift_endAccess();
    return 0;
  }

  v5 = v4;
  swift_endAccess();
  v6 = [v5 inputs];
  type metadata accessor for PSSGGraphInput(v6);
  v7 = sub_25EB6E3D8();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:

    v15 = MEMORY[0x277D84F90];
LABEL_14:
    v16 = sub_25EB0CE64(v15);

    return v16;
  }

  v8 = sub_25EB6E5F8();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  v17 = MEMORY[0x277D84F90];
  result = sub_25EB6E718();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25F8C6D90](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 resource];

      sub_25EB6E6F8();
      v14 = *(v17 + 16);
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
    }

    while (v8 != v10);

    v15 = v17;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void PSSGBuilder.waitResources(forGraph:isSessionLocal:)(void *a1, char a2)
{
  v3 = v2;
  v49[3] = MEMORY[0x277D84FA0];
  if ((a2 & 1) == 0)
  {
    v12 = [v2 externalSharedInputsForGraph_];
    type metadata accessor for PSSGGraphInput(v12);
    v10 = sub_25EB6E3D8();

    if (!(v10 >> 62))
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v5 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v6 = sub_25EB0EE68(a1, *&v3[v5], sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v6)
  {
    swift_endAccess();
    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_7;
    }

LABEL_4:
    v11 = sub_25EB6E5F8();
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_8;
  }

  v7 = v6;
  swift_endAccess();
  v8 = [v7 inputs];

  type metadata accessor for PSSGGraphInput(v9);
  v10 = sub_25EB6E3D8();

  if (v10 >> 62)
  {
    goto LABEL_4;
  }

LABEL_7:
  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_35:

    return;
  }

LABEL_8:
  if (v11 >= 1)
  {
    v13 = 0;
    v46 = v3;
    v47 = OBJC_IVAR___PSSGBuilder_resources;
    v45 = OBJC_IVAR___PSSGBuilder_graphs;
    v14 = &selRef_physicalFootprint;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25F8C6D90](v13, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v13 + 32);
      }

      v18 = v17;
      if (![v17 v14[491]])
      {
        v19 = [v18 resource];
        swift_beginAccess();
        v20 = *&v3[v47];
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = v19;
          v22 = sub_25EB6E7E8();

          if (!v22)
          {
            goto LABEL_26;
          }

          type metadata accessor for PSSGResource(v23);
          swift_dynamicCast();
          v24 = v48;

          if (!v48)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (!*(v20 + 16) || (v25 = sub_25EAFD114(v19), (v26 & 1) == 0))
          {
LABEL_26:

LABEL_27:
            swift_endAccess();
LABEL_28:
            v28 = [v18 resource];
            v29 = [v28 name];

            v30 = sub_25EB6E268();
            v32 = v31;

            v3 = v46;
            v33 = v30;
            v14 = &selRef_physicalFootprint;
            sub_25EB26244(v49, v33, v32);
LABEL_29:

            goto LABEL_11;
          }

          v24 = *(*(v20 + 56) + 8 * v25);

          if (!v24)
          {
            goto LABEL_27;
          }
        }

        swift_endAccess();
        v27 = [v24 producer];

        if (!v27)
        {
          goto LABEL_28;
        }

        sub_25EAFCC70(0, &qword_27FD12038, 0x277D82BB8);
        if (sub_25EB6E518())
        {

          goto LABEL_11;
        }

        swift_beginAccess();
        v34 = sub_25EB0EE68(v27, *&v3[v45], sub_25EAFD168, type metadata accessor for PSSGGraph);
        if (!v34)
        {
          swift_endAccess();
LABEL_34:
          v37 = [v18 resource];
          v38 = [v37 name];

          v39 = sub_25EB6E268();
          v41 = v40;

          v42 = v39;
          v3 = v46;
          v43 = v41;
          v14 = &selRef_physicalFootprint;
          sub_25EB26244(v49, v42, v43);

          goto LABEL_29;
        }

        v35 = v34;
        swift_endAccess();
        v36 = [v35 v14[491]];

        if (v36 != 2)
        {
          goto LABEL_34;
        }

        v15 = [v3 waitResourcesForGraph:v27 isSessionLocal:a2 & 1];
        v16 = sub_25EB6E438();

        sub_25EB0F298(v16);
      }

LABEL_11:
      if (v11 == ++v13)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
}

uint64_t PSSGBuilder.waitResources(forGraph:)(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v44 = v4;
  v5 = sub_25EB0EE68(a1, *&v2[v4], sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (v5)
  {
    v6 = v5;
    swift_endAccess();
    v46 = MEMORY[0x277D84FA0];
    a1 = [v6 waitInputs];
    type metadata accessor for PSSGResourceID(0);
    v7 = sub_25EB6E3D8();

    v43 = v6;
    if (v7 >> 62)
    {
      v8 = sub_25EB6E5F8();
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_4:
        if (v8 >= 1)
        {
          v9 = 0;
          v10 = OBJC_IVAR___PSSGBuilder_resources;
          v42 = MEMORY[0x277D84F90] >> 62;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x25F8C6D90](v9, v7);
            }

            else
            {
              v11 = *(v7 + 8 * v9 + 32);
            }

            v12 = v11;
            sub_25EB26394(v47, v12);

            swift_beginAccess();
            v13 = *&v2[v10];
            if ((v13 & 0xC000000000000001) != 0)
            {
              v14 = v12;
              v15 = sub_25EB6E7E8();

              if (!v15)
              {
                goto LABEL_23;
              }

              type metadata accessor for PSSGResource(v16);
              swift_dynamicCast();
              v17 = v45;
              if (!v45)
              {
                goto LABEL_23;
              }
            }

            else if (!*(v13 + 16) || (v18 = sub_25EAFD114(v12), (v19 & 1) == 0) || (v17 = *(*(v13 + 56) + 8 * v18)) == 0)
            {
LABEL_23:
              swift_endAccess();
LABEL_24:
              v20 = v12;
              goto LABEL_7;
            }

            swift_endAccess();
            v20 = [v17 producer];

            if (!v20)
            {
              goto LABEL_24;
            }

            swift_beginAccess();
            v21 = *&v2[v44];
            if ((v21 & 0xC000000000000001) != 0)
            {
              v22 = v20;
              v23 = sub_25EB6E7E8();

              if (v23)
              {
                type metadata accessor for PSSGGraph(v24);
                swift_dynamicCast();
                v25 = v45;
                if (v45)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (*(v21 + 16))
            {
              v26 = sub_25EAFD168(v20);
              if (v27)
              {
                v25 = *(*(v21 + 56) + 8 * v26);
                if (v25)
                {
LABEL_28:
                  swift_endAccess();
                  v28 = [v25 type];

                  if (v28 == 2)
                  {
                    v29 = [v2 waitResourcesForGraph_];
                    if (v29)
                    {
                      v30 = v29;
                      sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
                      v31 = sub_25EB6E438();
                    }

                    else if (v42)
                    {
                      if (sub_25EB6E5F8())
                      {
                        sub_25EB0EBE0(MEMORY[0x277D84F90]);
                        v31 = v32;
                      }

                      else
                      {
                        v31 = MEMORY[0x277D84FA0];
                      }
                    }

                    else
                    {
                      v31 = MEMORY[0x277D84FA0];
                    }

                    sub_25EB0F39C(v31, type metadata accessor for PSSGResourceID, &qword_27FD11EA0, type metadata accessor for PSSGResourceID, sub_25EB26394);

                    v20 = v12;
                  }

                  else
                  {
                  }

                  goto LABEL_7;
                }
              }
            }

            swift_endAccess();

LABEL_7:
            ++v9;

            if (v8 == v9)
            {
              goto LABEL_43;
            }
          }
        }

        __break(1u);
        goto LABEL_45;
      }
    }

LABEL_43:

    return v46;
  }

  swift_endAccess();
  if (qword_27FD11B20 != -1)
  {
LABEL_45:
    swift_once();
  }

  v33 = sub_25EB6E1B8();
  __swift_project_value_buffer(v33, qword_27FD2EED0);
  v34 = a1;
  v35 = sub_25EB6E198();
  v36 = sub_25EB6E498();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v47[0] = v39;
    *v37 = 136315394;
    *(v37 + 4) = sub_25EAFC354(0xD000000000000018, 0x800000025EB8DD40, v47);
    *(v37 + 12) = 2112;
    *(v37 + 14) = v34;
    *v38 = v34;
    v40 = v34;
    _os_log_impl(&dword_25EA3A000, v35, v36, "%s: could not find graph for ID %@!", v37, 0x16u);
    sub_25EB0D660(v38, &qword_27FD120D0, &qword_25EB78E60);
    MEMORY[0x25F8C9C00](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x25F8C9C00](v39, -1, -1);
    MEMORY[0x25F8C9C00](v37, -1, -1);
  }

  return 0;
}

uint64_t PSSGBuilder.rootResources(forGraph:)(id a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___PSSGBuilder_cache];
  swift_beginAccess();
  v5 = *(v4 + 2);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v6 = sub_25EAFD168(a1);
      if (v7)
      {
        v8 = *(*(v5 + 56) + 8 * v6);
        swift_endAccess();

        return v8;
      }
    }
  }

  swift_endAccess();
  v9 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v79 = v9;
  v10 = sub_25EB0EE68(a1, *&v2[v9], sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v10)
  {
    swift_endAccess();
    if (qword_27FD11B20 == -1)
    {
LABEL_56:
      v58 = sub_25EB6E1B8();
      __swift_project_value_buffer(v58, qword_27FD2EED0);
      v59 = a1;
      v60 = sub_25EB6E198();
      v61 = sub_25EB6E498();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v84[0] = v64;
        *v62 = 136315394;
        *(v62 + 4) = sub_25EAFC354(0xD000000000000018, 0x800000025EB8DD60, v84);
        *(v62 + 12) = 2112;
        *(v62 + 14) = v59;
        *v63 = v59;
        v65 = v59;
        _os_log_impl(&dword_25EA3A000, v60, v61, "%s: could not find graph for ID %@!", v62, 0x16u);
        sub_25EB0D660(v63, &qword_27FD120D0, &qword_25EB78E60);
        MEMORY[0x25F8C9C00](v63, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x25F8C9C00](v64, -1, -1);
        MEMORY[0x25F8C9C00](v62, -1, -1);
      }

      return 0;
    }

LABEL_68:
    swift_once();
    goto LABEL_56;
  }

  v11 = v10;
  swift_endAccess();
  v71 = MEMORY[0x277D84F90] >> 62;
  v72 = a1;
  if (MEMORY[0x277D84F90] >> 62 && sub_25EB6E5F8())
  {
    sub_25EB0EBE0(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v74 = v4;
  v83 = v12;
  a1 = [v11 waitInputs];
  type metadata accessor for PSSGResourceID(0);
  v13 = sub_25EB6E3D8();

  v73 = v11;
  if (v13 >> 62)
  {
    v14 = sub_25EB6E5F8();
    if (v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_10:
      if (v14 >= 1)
      {
        v15 = 0;
        v16 = OBJC_IVAR___PSSGBuilder_resources;
        v80 = v13 & 0xC000000000000001;
        v76 = OBJC_IVAR___PSSGBuilder_resources;
        v77 = v13;
        v75 = v2;
        v78 = v14;
        while (1)
        {
          if (v80)
          {
            v19 = MEMORY[0x25F8C6D90](v15, v13);
          }

          else
          {
            v19 = *(v13 + 8 * v15 + 32);
          }

          v20 = v19;
          swift_beginAccess();
          v21 = *&v2[v16];
          if ((v21 & 0xC000000000000001) != 0)
          {
            if (v21 < 0)
            {
              v22 = *&v2[v16];
            }

            v23 = v20;
            v24 = sub_25EB6E7E8();

            if (!v24 || (type metadata accessor for PSSGResource(v25), swift_dynamicCast(), (v26 = v82) == 0))
            {
LABEL_12:
              swift_endAccess();
LABEL_13:
              v17 = v20;
              sub_25EB26394(v84, v17);
              v18 = v84[0];

              goto LABEL_14;
            }
          }

          else
          {
            if (!*(v21 + 16))
            {
              goto LABEL_12;
            }

            v27 = sub_25EAFD114(v20);
            if ((v28 & 1) == 0)
            {
              goto LABEL_12;
            }

            v26 = *(*(v21 + 56) + 8 * v27);
            if (!v26)
            {
              goto LABEL_12;
            }
          }

          swift_endAccess();
          v29 = [v26 producer];

          if (!v29)
          {
            goto LABEL_13;
          }

          swift_beginAccess();
          v30 = *&v2[v79];
          if ((v30 & 0xC000000000000001) != 0)
          {
            if (v30 < 0)
            {
              v31 = *&v2[v79];
            }

            v32 = v29;
            v33 = sub_25EB6E7E8();

            if (!v33 || (type metadata accessor for PSSGGraph(v34), swift_dynamicCast(), (v35 = v82) == 0))
            {
LABEL_42:
              swift_endAccess();
              if (qword_27FD11B20 != -1)
              {
                swift_once();
              }

              v45 = sub_25EB6E1B8();
              __swift_project_value_buffer(v45, qword_27FD2EED0);
              v46 = v29;
              v47 = sub_25EB6E198();
              v48 = sub_25EB6E498();

              if (os_log_type_enabled(v47, v48))
              {
                v49 = swift_slowAlloc();
                v50 = swift_slowAlloc();
                v51 = swift_slowAlloc();
                v84[0] = v51;
                *v49 = 136315394;
                *(v49 + 4) = sub_25EAFC354(0xD000000000000018, 0x800000025EB8DD60, v84);
                *(v49 + 12) = 2112;
                *(v49 + 14) = v46;
                *v50 = v29;
                v52 = v46;
                _os_log_impl(&dword_25EA3A000, v47, v48, "%s: could not find graph for ID %@!", v49, 0x16u);
                sub_25EB0D660(v50, &qword_27FD120D0, &qword_25EB78E60);
                v53 = v50;
                v16 = v76;
                MEMORY[0x25F8C9C00](v53, -1, -1);
                __swift_destroy_boxed_opaque_existential_1Tm(v51);
                v54 = v51;
                v2 = v75;
                MEMORY[0x25F8C9C00](v54, -1, -1);
                MEMORY[0x25F8C9C00](v49, -1, -1);
              }

              else
              {
              }

              v13 = v77;
              v14 = v78;
              goto LABEL_14;
            }
          }

          else
          {
            if (!*(v30 + 16))
            {
              goto LABEL_42;
            }

            v36 = sub_25EAFD168(v29);
            if ((v37 & 1) == 0)
            {
              goto LABEL_42;
            }

            v35 = *(*(v30 + 56) + 8 * v36);
            if (!v35)
            {
              goto LABEL_42;
            }
          }

          swift_endAccess();
          v38 = [v35 waitInputs];
          v39 = sub_25EB6E3D8();

          if (v39 >> 62)
          {
            v40 = sub_25EB6E5F8();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v40)
          {
            v41 = [v2 rootResourcesForGraph_];
            if (v41)
            {
              v42 = v41;
              sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
              v43 = sub_25EB6E438();

              v44 = v43;
            }

            else if (v71 && (v57 = MEMORY[0x277D84F90], sub_25EB6E5F8()))
            {
              sub_25EB0EBE0(v57);
            }

            else
            {
              v44 = MEMORY[0x277D84FA0];
            }

            sub_25EB0F39C(v44, type metadata accessor for PSSGResourceID, &qword_27FD11EA0, type metadata accessor for PSSGResourceID, sub_25EB26394);

            v14 = v78;
            v16 = v76;
          }

          else
          {
            v55 = v20;
            sub_25EB26394(v84, v55);

            v2 = v75;
            v56 = v84[0];

            v14 = v78;
          }

LABEL_14:
          if (v14 == ++v15)
          {
            goto LABEL_62;
          }
        }
      }

      __break(1u);
      goto LABEL_68;
    }
  }

LABEL_62:

  if (!*(v74 + 2))
  {
    v66 = sub_25EB0E57C(MEMORY[0x277D84F90]);
    swift_beginAccess();
    v67 = *(v74 + 2);
    *(v74 + 2) = v66;
  }

  v8 = v83;
  result = swift_beginAccess();
  if (*(v74 + 2))
  {
    swift_bridgeObjectRetain_n();
    v69 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(v74 + 2);
    *(v74 + 2) = 0x8000000000000000;
    sub_25EB2CB14(v83, v69, isUniquelyReferenced_nonNull_native, &unk_27FD11E90, &unk_25EB78CD0);

    *(v74 + 2) = v81;
    swift_endAccess();

    return v8;
  }

  __break(1u);
  return result;
}