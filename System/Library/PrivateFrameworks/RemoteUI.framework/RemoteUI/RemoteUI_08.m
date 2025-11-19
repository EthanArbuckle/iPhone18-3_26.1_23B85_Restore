uint64_t sub_21BA59E94(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740);
  v8 = MEMORY[0x28223BE20](v42);
  v44 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v8);
  v43 = (&v36 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v47 = a1;
  v46 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = a4 + v17;
      v39 = v26;
      v40 = a4;
      v41 = a1;
      do
      {
        v37 = v25;
        v28 = a2;
        a2 += v26;
        while (1)
        {
          if (v28 <= v41)
          {
            v47 = v28;
            v25 = v37;
            goto LABEL_57;
          }

          v30 = a3;
          v38 = v25;
          a3 += v26;
          v31 = v27 + v26;
          v32 = v43;
          sub_21BA5AA24(v31, v43);
          v33 = v44;
          sub_21BA5AA24(a2, v44);
          v34 = *v32;
          v35 = *v33;
          sub_21B9ABAAC(v33, &qword_27CD9F740);
          sub_21B9ABAAC(v32, &qword_27CD9F740);
          if (v34 < v35)
          {
            break;
          }

          v25 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v31;
          }

          else if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
            v25 = v31;
          }

          v27 = v25;
          v29 = v31 > v40;
          v26 = v39;
          if (!v29)
          {
            v47 = v28;
            goto LABEL_57;
          }
        }

        if (v30 < v28 || a3 >= v28)
        {
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
        }

        else
        {
          v26 = v39;
          if (v30 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v38;
      }

      while (v27 > v40);
    }

    v47 = a2;
LABEL_57:
    v45 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v43;
        sub_21BA5AA24(a2, v43);
        v22 = v44;
        sub_21BA5AA24(a4, v44);
        v23 = *v21;
        v24 = *v22;
        sub_21B9ABAAC(v22, &qword_27CD9F740);
        sub_21B9ABAAC(v21, &qword_27CD9F740);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v47 = a1;
        if (a4 >= v18)
        {
          break;
        }

        a3 = v20;
      }

      while (a2 < v20);
    }
  }

  sub_21BA5A3F0(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_21BA5A364(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B9C06A8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21BA5A3F0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_21BA5A4E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740);
  v38 = *(v41 - 8);
  v8 = MEMORY[0x28223BE20](v41);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v40 = (&v35 - v11);
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v13 - 32);
    v37 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = *(v42 + 56);
      v27 = *(*(v42 + 48) + 8 * v25);
      v28 = sub_21BA864AC();
      v29 = *(v28 - 8);
      v30 = v26 + *(v29 + 72) * v25;
      v31 = v39;
      (*(v29 + 16))(&v39[*(v41 + 48)], v30, v28);
      *v31 = v27;
      v32 = v31;
      a1 = v40;
      sub_21B9AB6D4(v32, v40, &qword_27CD9F740);
      sub_21B9AB6D4(a1, a2, &qword_27CD9F740);
      if (v20 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v20;
      v33 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v24 = v34 - 1;
    a3 = result;
LABEL_23:
    v15 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21BA5A79C()
{
  v0 = sub_21BA8875C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

void sub_21BA5A7E8(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 != 2 && a5 != 3)
    {
      return;
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {
      v6 = a4;

      v7 = a3;
    }

    return;
  }
}

unint64_t sub_21BA5A874()
{
  result = qword_27CD9F718;
  if (!qword_27CD9F718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F718);
  }

  return result;
}

unint64_t sub_21BA5A8D8()
{
  result = qword_27CD9F720;
  if (!qword_27CD9F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F720);
  }

  return result;
}

unint64_t sub_21BA5A97C()
{
  result = qword_27CD9F728;
  if (!qword_27CD9F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F728);
  }

  return result;
}

unint64_t sub_21BA5A9D0()
{
  result = qword_27CD9F730;
  if (!qword_27CD9F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F730);
  }

  return result;
}

uint64_t sub_21BA5AA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21BA5AACC(uint64_t a1@<X8>)
{
  v2 = sub_21BA8839C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BA860EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v11 = sub_21BA87C8C();

  v12 = [v10 initWithString_];

  sub_21BA860BC();
  v13 = sub_21BA8838C();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  if (!v15)
  {

    v16 = 0;
    v13 = 0;
LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  if ([v12 isAtEnd])
  {
    v16 = 1;
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CC9E90], v2);
    v16 = sub_21BA883AC();
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    if ((v18 & 1) != 0 || (sub_21BA8837C(), !v19))
    {

LABEL_12:
      v16 = 0;
      v13 = 0;
      v15 = 0;
      goto LABEL_13;
    }
  }

  v20 = [v12 isAtEnd];

  if ((v20 & 1) == 0)
  {

    goto LABEL_12;
  }

  v21 = 1;
LABEL_14:
  *a1 = v16;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15;
  *(a1 + 24) = 0;
  *(a1 + 32) = v21;
}

uint64_t sub_21BA5ADC8()
{
  v0 = sub_21BA8875C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21BA5AE18()
{
  result = qword_27CD9F750;
  if (!qword_27CD9F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F750);
  }

  return result;
}

unint64_t sub_21BA5AE70()
{
  result = qword_27CD9F758;
  if (!qword_27CD9F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F758);
  }

  return result;
}

unint64_t sub_21BA5AEC8()
{
  result = qword_27CD9F760;
  if (!qword_27CD9F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F760);
  }

  return result;
}

unint64_t sub_21BA5AF20()
{
  result = qword_27CD9F768;
  if (!qword_27CD9F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F768);
  }

  return result;
}

unint64_t sub_21BA5AF78()
{
  result = qword_27CD9F770;
  if (!qword_27CD9F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F770);
  }

  return result;
}

unint64_t sub_21BA5AFD0()
{
  result = qword_27CD9F778;
  if (!qword_27CD9F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F778);
  }

  return result;
}

uint64_t sub_21BA5B054()
{
  result = sub_21BA883CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BA5B0DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_21BA5B2A4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t sub_21BA5B520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21BA5B568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_21BA5B5D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21BA5B620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BA5B684()
{
  result = qword_27CD9F780;
  if (!qword_27CD9F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F780);
  }

  return result;
}

id RUIXMLElement.traverse(withDelegate:)(void *a1)
{
  v3 = sub_21BA87D1C();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 traversalDelegateDidStartElement_];
  v8 = [v1 stringValue];
  if (v8)
  {
    v9 = v8;
    sub_21BA87CBC();

    sub_21BA87CFC();
    v10 = sub_21BA87CCC();
    v12 = v11;

    (*(v4 + 8))(v7, v3);
    if (v12 >> 60 != 15)
    {
      v13 = sub_21BA864CC();
      [a1 traversalDelegateFoundCData_];

      sub_21B9B91AC(v10, v12);
    }
  }

  v14 = [v1 children];
  type metadata accessor for RUIXMLElement(v14);
  v15 = sub_21BA87F0C();

  if (v15 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
  {
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x21CEFD920](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 traverseWithDelegate_];

      ++v17;
      if (v20 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return [a1 traversalDelegateDidEndlement_];
}

uint64_t RUIXMLElement.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___RUIXMLElement_name);

  return v1;
}

uint64_t RUIXMLElement.attributtes.getter()
{
  v1 = [v0 attributes];
  v2 = sub_21BA87BCC();

  return v2;
}

void RUIXMLElement.attributtes.setter()
{
  v1 = sub_21BA87BBC();

  [v0 setAttributes_];
}

uint64_t RUIXMLElement.attributes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___RUIXMLElement_attributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_21BA5BE88(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_21BA87BCC();

  *a3 = v5;
}

void sub_21BA5BEF8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_21BA87BBC();
  [v6 *a5];
}

void RUIXMLElement.parent.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

id sub_21BA5C0C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parent];
  *a2 = result;
  return result;
}

uint64_t RUIXMLElement.stringValue.getter()
{
  v1 = (v0 + OBJC_IVAR___RUIXMLElement_stringValue);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t RUIXMLElement.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___RUIXMLElement_stringValue);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_21BA5C2D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 stringValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BA87CBC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21BA5C33C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_21BA87C8C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setStringValue_];
}

id RUIXMLElement.init(name:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21BA87C8C();

  v2 = [v0 initWithName_];

  return v2;
}

{
  v1 = sub_21BA87C8C();

  sub_21BA48270(MEMORY[0x277D84F90]);
  v2 = sub_21BA87BBC();

  v3 = [v0 initWithName:v1 attributes:v2];

  return v3;
}

id RUIXMLElement.init(name:attributes:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21BA87C8C();

  v2 = sub_21BA87BBC();

  v3 = [v0 initWithName:v1 attributes:v2];

  return v3;
}

id RUIXMLElement.init(name:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR___RUIXMLElement_stringValue];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR___RUIXMLElement_mutableChildren] = MEMORY[0x277D84F90];
  v8 = &v3[OBJC_IVAR___RUIXMLElement_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR___RUIXMLElement_attributes] = a3;
  v10.receiver = v3;
  v10.super_class = RUIXMLElement;
  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall RUIXMLElement.appendChildren(_:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BA884DC())
  {
    v7 = v1;
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CEFD920](v4, a1._rawValue);
      }

      else
      {
        if (v4 >= *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1._rawValue + v4 + 4);
      }

      v1 = v5;
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v7 appendChild_];

      ++v4;
      if (v6 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_12:
}

id RUIXMLElement.appendChild(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___RUIXMLElement_mutableChildren;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x21CEFD240]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21BA87F3C();
  }

  sub_21BA87F6C();
  swift_endAccess();
  return [v5 setParent_];
}

void *RUIXMLParserDelegate.xmlElement.getter()
{
  v1 = *(v0 + OBJC_IVAR___RUIXMLParserDelegate__xmlElement);
  v2 = v1;
  return v1;
}

id RUIXMLParserDelegate.init(root:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRoot_];

  return v2;
}

{
  v2 = OBJC_IVAR___RUIXMLParserDelegate__xmlElement;
  *(v1 + OBJC_IVAR___RUIXMLParserDelegate__xmlElement) = 0;
  v3 = OBJC_IVAR___RUIXMLParserDelegate_root;
  *(v1 + OBJC_IVAR___RUIXMLParserDelegate_root) = 0;
  *(v1 + OBJC_IVAR___RUIXMLParserDelegate__stack) = MEMORY[0x277D84F90];
  *(v1 + v2) = a1;
  *(v1 + v3) = a1;
  v6.super_class = RUIXMLParserDelegate;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id _sSo13RUIXMLElementC8RemoteUIEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_21BA5D1C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t static RUIXMLSanitizer.Options.default.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _sSo11RUIPlatformC8RemoteUIE17isSolariumEnabledSbvgZ_0(a1, a2);
  v5 = 20;
  if ((result & 1) == 0)
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

BOOL sub_21BA5D298(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21BA5D2C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21BA5D2F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_21BA5D3E4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___RUIXMLSanitizer_options;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_21BA5D438(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___RUIXMLSanitizer_options;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id RUIXMLSanitizer.__allocating_init(options:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___RUIXMLSanitizer_options] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id RUIXMLSanitizer.init(options:)(void *a1)
{
  *&v1[OBJC_IVAR___RUIXMLSanitizer_options] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RUIXMLSanitizer();
  return objc_msgSendSuper2(&v3, sel_init);
}

id RUIXMLSanitizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t RUIXMLSanitizer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = _sSo11RUIPlatformC8RemoteUIE17isSolariumEnabledSbvgZ_0(ObjectType, v1);
  v3 = 20;
  if ((v2 & 1) == 0)
  {
    v3 = 0;
  }

  v6 = v3;
  v4 = (*(ObjectType + 112))(&v6);
  swift_deallocPartialClassInstance();
  return v4;
}

void *sub_21BA5D6B8()
{
  v2 = sub_21BA87D1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Data.xmlElement()();
  if (!v1)
  {
    v7 = v6;
    (*((*MEMORY[0x277D85000] & *v0) + 0x58))(&v15);
    v8 = sub_21BA5DFB8(&v15);
    v9 = [v8 xmlString];

    sub_21BA87CBC();
    sub_21BA87CFC();
    v0 = sub_21BA87CCC();
    v11 = v10;

    (*(v3 + 8))(v5, v2);
    if (v11 >> 60 == 15)
    {
      sub_21BA6640C();
      v0 = swift_allocError();
      *v12 = 1;
      swift_willThrow();
    }
  }

  return v0;
}

id Data.xmlElement()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v1 = sub_21BA864CC();
  v2 = [v0 initWithData_];

  v3 = [objc_allocWithZone(RUIXMLParserDelegate) init];
  [v2 setDelegate_];
  [v2 parse];
  if (![v2 parserError])
  {
    v4 = [v3 xmlElement];
    if (v4)
    {
      v0 = v4;

      return v0;
    }

    sub_21BA6640C();
    swift_allocError();
    *v6 = 0;
  }

  swift_willThrow();

  return v0;
}

uint64_t sub_21BA5DAE8()
{
  v1 = sub_21BA87D1C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v0) + 0x58))(&v14, v3);
  v6 = sub_21BA5DFB8(&v14);
  v7 = [v6 xmlString];

  sub_21BA87CBC();
  sub_21BA87CFC();
  v8 = sub_21BA87CCC();
  v10 = v9;

  (*(v2 + 8))(v5, v1);
  if (v10 >> 60 == 15)
  {
    sub_21BA6640C();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_21BA5DD80()
{
  v3 = Data.xmlElement()();
  if (!v2)
  {
    v4 = v3;
    v0 = (*((*MEMORY[0x277D85000] & *v1) + 0x90))();
  }

  return v0;
}

id sub_21BA5DFB8(unint64_t *a1)
{
  v2 = *a1;
  v3 = [v1 name];
  sub_21BA87CBC();

  v4 = sub_21BA87D3C();
  v6 = v5;

  if (v4 == 0x69756C6D78 && v6 == 0xE500000000000000)
  {

LABEL_10:
    v10 = sub_21BA5E420();
    v11 = sub_21BA3658C(&unk_282D673B8);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BA92F40;
    v13 = [v10 name];
    v14 = sub_21BA87CBC();
    v16 = v15;

    *(inited + 32) = v14;
    *(inited + 40) = v16;
    v17 = sub_21BA3658C(inited);
    swift_setDeallocating();
    sub_21B9BADFC(inited + 32);
    v18 = MEMORY[0x277D84F90];
    v27 = MEMORY[0x277D84F90];

    sub_21BA66460(&v27, 0x7FFFFFFFFFFFFFFFLL, v10, v11, v17);
    swift_bridgeObjectRelease_n();
    v19 = swift_bridgeObjectRelease_n();
    type metadata accessor for RUIXMLElement(v19);
    v20 = sub_21BA87EFC();

    [v10 appendChildren_];

    v27 = v18;
    v21 = v10;
    sub_21BA66890(&v27, 1, v21, v21);

    if (v27 >> 62)
    {
      if (sub_21BA884DC())
      {
        goto LABEL_12;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:
      v22 = objc_allocWithZone(RUIXMLElement);
      v23 = sub_21BA87C8C();
      v24 = [v22 initWithName_];

      v25 = sub_21BA87EFC();

      [v24 appendChildren_];

      [v21 appendChild_];
LABEL_15:
      v27 = v2;
      sub_21BA5E6BC(&v27);
      return v21;
    }

    goto LABEL_15;
  }

  v8 = sub_21BA8899C();

  if (v8)
  {
    goto LABEL_10;
  }

  return v26;
}

id RUIXMLSanitizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RUIXMLSanitizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BA5E420()
{
  v1 = [v0 name];
  if (!v1)
  {
    sub_21BA87CBC();
    v1 = sub_21BA87C8C();
  }

  v2 = [v0 attributes];
  sub_21BA87BCC();

  v3 = objc_allocWithZone(RUIXMLElement);
  v4 = sub_21BA87BBC();

  v5 = [v3 initWithName:v1 attributes:v4];

  v6 = [v0 stringValue];
  [v5 setStringValue_];

  v7 = [v0 children];
  type metadata accessor for RUIXMLElement(v7);
  v8 = sub_21BA87F0C();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_13:

    v14 = sub_21BA87EFC();

    [v5 appendChildren_];

    return v5;
  }

  v9 = sub_21BA884DC();
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  result = sub_21BA8863C();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CEFD920](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      sub_21BA5E420();

      sub_21BA8861C();
      sub_21BA8864C();
      sub_21BA8865C();
      sub_21BA8862C();
    }

    while (v9 != v11);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA5E6BC(uint64_t *a1)
{
  v562 = *a1;
  v2 = [v1 children];
  type metadata accessor for RUIXMLElement(v2);
  v3 = sub_21BA87F0C();

  v573[0] = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_525;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BA884DC())
  {
    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x21CEFD920](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_511;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_510;
        }

        v9 = [v6 name];
        v10 = sub_21BA87CBC();
        v12 = v11;

        v13 = v10 == 1701273968 && v12 == 0xE400000000000000;
        if (v13)
        {
          break;
        }

        v14 = sub_21BA8899C();

        if (v14)
        {
          goto LABEL_18;
        }

LABEL_6:
        ++v5;
        if (v8 == i)
        {
          v15 = v573[0];
          v16 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

LABEL_18:
      sub_21BA8861C();
      sub_21BA8864C();
      sub_21BA8865C();
      sub_21BA8862C();
      goto LABEL_6;
    }

    v15 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
LABEL_22:

    v17 = v15;
    v545 = v15;
    if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
    {
      v18 = sub_21BA884DC();
      v17 = v15;
      if (!v18)
      {
      }
    }

    else
    {
      v18 = *(v15 + 16);
      if (!v18)
      {
      }
    }

    v19 = 0;
    v546 = v17 & 0xC000000000000001;
    v544 = v17 + 32;
    v20 = &selRef_stack;
    v543 = v18;
    while (2)
    {
      if (v546)
      {
        v21 = v19;
        v22 = MEMORY[0x21CEFD920](v19, v17);
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_519;
        }

        v21 = v19;
        v22 = *(v544 + 8 * v19);
      }

      v563 = v22;
      v23 = __OFADD__(v21, 1);
      v3 = v21 + 1;
      if (v23)
      {
        goto LABEL_518;
      }

      v547 = v3;
      if ((v562 & 8) != 0)
      {
        v24 = sub_21BA6347C(1701273968, 0xE400000000000000);
        if (v24)
        {
          v535 = v24;
          v25 = [v24 parent];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 v20[367]];

            v28 = sub_21BA87BCC();
            if (*(v28 + 16))
            {
              v29 = sub_21BA659F8(0x656C797473, 0xE500000000000000, sub_21B940E44);
              if (v30)
              {
                v31 = (*(v28 + 56) + 16 * v29);
                v33 = *v31;
                v32 = v31[1];

                if (v33 == 0x7373417075746573 && v32 == 0xEE00746E61747369)
                {

                  v16 = MEMORY[0x277D84F90];
                }

                else
                {
                  v35 = sub_21BA8899C();

                  v16 = MEMORY[0x277D84F90];
                  if ((v35 & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }

                v101 = sub_21BA6347C(0x6F684369746C756DLL, 0xEF77656956656369);
                v102 = v101;
                if (v101)
                {
                }

                v531 = v102;
                v103 = sub_21BA6347C(0x6F684369746C756DLL, 0xEF77656956656369);
                if (v103)
                {
                  v541 = v103;
                }

                else
                {
                  v104 = objc_allocWithZone(RUIXMLElement);
                  v105 = sub_21BA87C8C();
                  v541 = [v104 initWithName_];
                }

                v106 = sub_21BA6347C(0x7261626C6F6F74, 0xE700000000000000);
                v533 = sub_21BA6347C(0x697461676976616ELL, 0xED00007261426E6FLL);
                v534 = sub_21BA6347C(0x69566563696F6863, 0xEA00000000007765);
                v20 = &selRef_stack;
                v532 = v106;
                if (v106)
                {
                  v107 = [v106 children];
                  v108 = sub_21BA87F0C();

                  v109 = v533;
                  if (!v533)
                  {
                    goto LABEL_115;
                  }
                }

                else
                {
                  v108 = v16;
                  v109 = v533;
                  if (!v533)
                  {
LABEL_115:
                    v573[0] = v108;
                    sub_21BA652B0(v16);
                    v111 = v573[0];
                    if (v534)
                    {
                      v112 = [v534 children];
                      v113 = sub_21BA87F0C();
                    }

                    else
                    {
                      v113 = MEMORY[0x277D84F90];
                    }

                    v573[0] = v111;
                    sub_21BA652B0(v113);
                    v3 = v573[0];
                    if (!(v573[0] >> 62))
                    {
                      v114 = *((v573[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v114)
                      {
                        goto LABEL_122;
                      }

LABEL_416:

                      v436 = v534;
                      if (!v534)
                      {
LABEL_437:
                        if (!v532)
                        {
                          if (!v533)
                          {
                            goto LABEL_458;
                          }

                          goto LABEL_445;
                        }

                        v3 = v532;
                        v450 = [v3 parent];
                        if (!v450)
                        {
LABEL_444:

                          v436 = v534;
                          if (!v533)
                          {
                            goto LABEL_458;
                          }

LABEL_445:
                          v457 = v533;
                          v458 = [v541 v20[367]];
                          v459 = sub_21BA87BCC();

                          if (*(v459 + 16) && (v460 = sub_21BA659F8(0x656C746974, 0xE500000000000000, sub_21B940E44), (v461 & 1) != 0) || (, v462 = [v457 v20[367]], v459 = sub_21BA87BCC(), v462, *(v459 + 16)) && (v460 = sub_21BA659F8(0x656C746974, 0xE500000000000000, sub_21B940E44), (v463 & 1) != 0))
                          {
                            v464 = (*(v459 + 56) + 16 * v460);
                            v465 = *v464;
                            v466 = v464[1];
                          }

                          else
                          {

                            v465 = 0;
                            v466 = 0;
                          }

                          v467 = [v541 v20[367]];
                          v468 = sub_21BA87BCC();

                          v573[0] = v468;
                          sub_21BA63620(v465, v466, 0x656C746974, 0xE500000000000000);
                          v469 = sub_21BA87BBC();

                          [v541 setAttributes_];

                          v470 = [v541 attributes];
                          v471 = sub_21BA87BCC();

                          if (*(v471 + 16) && (v472 = sub_21BA659F8(0x656C746974627573, 0xE800000000000000, sub_21B940E44), (v473 & 1) != 0) || (, v474 = [v457 attributes], v471 = sub_21BA87BCC(), v474, *(v471 + 16)) && (v472 = sub_21BA659F8(0x656C746954627573, 0xE800000000000000, sub_21B940E44), (v475 & 1) != 0))
                          {
                            v476 = (*(v471 + 56) + 16 * v472);
                            v477 = *v476;
                            v478 = v476[1];
                          }

                          else
                          {

                            v477 = 0;
                            v478 = 0;
                          }

                          v479 = [v541 attributes];
                          v480 = sub_21BA87BCC();

                          v573[0] = v480;
                          v20 = &selRef_stack;
                          sub_21BA63620(v477, v478, 0x656C746974627573, 0xE800000000000000);
                          v481 = sub_21BA87BBC();

                          [v541 setAttributes_];

                          v436 = v534;
LABEL_458:
                          if (!v436)
                          {
LABEL_492:
                            v16 = MEMORY[0x277D84F90];
                            if (!v531)
                            {
                              [v535 appendChild_];
                            }

                            v36 = v534;
                            goto LABEL_45;
                          }

                          v482 = v436;
                          v483 = [v541 v20[367]];
                          v484 = sub_21BA87BCC();

                          if (*(v484 + 16))
                          {
                            sub_21BA659F8(0x656C746974, 0xE500000000000000, sub_21B940E44);
                            v486 = v485;

                            if ((v486 & 1) == 0)
                            {
LABEL_465:
                              v491 = sub_21BA6347C(0x726564616568, 0xE600000000000000);
                              if (v491 && (v492 = v491, v493 = [v491 stringValue], v492, v493))
                              {
                                v494 = sub_21BA87CBC();
                                v496 = v495;
                              }

                              else
                              {
                                v494 = 0;
                                v496 = 0;
                              }

                              v497 = sub_21BA6347C(0x6564616548627573, 0xE900000000000072);
                              if (v497 && (v498 = v497, v499 = [v497 stringValue], v498, v499))
                              {
                                v500 = sub_21BA87CBC();
                                v570 = v501;
                              }

                              else
                              {
                                v500 = 0;
                                v570 = 0;
                              }

                              v502 = [v541 v20[367]];
                              v503 = sub_21BA87BCC();

                              if (*(v503 + 16))
                              {
                                sub_21BA659F8(0x656C746974, 0xE500000000000000, sub_21B940E44);
                                v505 = v504;

                                if (v505)
                                {
LABEL_479:
                                  v510 = [v541 attributes];
                                  v511 = sub_21BA87BCC();

                                  if (*(v511 + 16))
                                  {
                                    sub_21BA659F8(0x656C746974, 0xE500000000000000, sub_21B940E44);
                                    v513 = v512;

                                    if (v513)
                                    {
                                      if (v496)
                                      {
                                      }

                                      else
                                      {
                                        v494 = v500;
                                        v496 = v570;
                                      }

                                      v20 = &selRef_stack;
                                      v490 = v541;
                                      v526 = [v541 attributes];
                                      v527 = sub_21BA87BCC();

                                      v573[0] = v527;
                                      v522 = v494;
                                      v523 = v496;
                                      v524 = 0x656C746974627573;
                                      v525 = 0xE800000000000000;
                                      goto LABEL_489;
                                    }
                                  }

                                  else
                                  {
                                  }

                                  v20 = &selRef_stack;
                                  v490 = v541;
                                  v520 = [v541 attributes];
                                  v521 = sub_21BA87BCC();

                                  v573[0] = v521;
                                  v522 = v494;
                                  v523 = v496;
                                  v524 = 0x656C746974;
                                  v525 = 0xE500000000000000;
LABEL_489:
                                  sub_21BA63620(v522, v523, v524, v525);
                                  v519 = sub_21BA87BBC();

                                  [v490 setAttributes_];
                                  goto LABEL_490;
                                }
                              }

                              else
                              {
                              }

                              v506 = [v541 attributes];
                              v507 = sub_21BA87BCC();

                              if (*(v507 + 16))
                              {
                                sub_21BA659F8(0x656C746974627573, 0xE800000000000000, sub_21B940E44);
                                v509 = v508;

                                if (v509)
                                {
                                  goto LABEL_479;
                                }
                              }

                              else
                              {
                              }

                              v490 = v541;
                              v514 = [v541 attributes];
                              v515 = sub_21BA87BCC();

                              v573[0] = v515;
                              v20 = &selRef_stack;
                              sub_21BA63620(v494, v496, 0x656C746974, 0xE500000000000000);
                              v516 = sub_21BA87BBC();

                              [v541 setAttributes_];

                              v517 = [v541 attributes];
                              v518 = sub_21BA87BCC();

                              v573[0] = v518;
                              sub_21BA63620(v500, v570, 0x656C746974627573, 0xE800000000000000);
                              v519 = sub_21BA87BBC();

                              [v541 setAttributes_];
LABEL_490:

                              goto LABEL_491;
                            }

                            v487 = [v541 v20[367]];
                            v488 = sub_21BA87BCC();

                            if (*(v488 + 16))
                            {
                              sub_21BA659F8(0x656C746974627573, 0xE800000000000000, sub_21B940E44);
                              if (v489)
                              {

                                v490 = v541;
LABEL_491:
                                v528 = v482;
                                sub_21BA6730C(v528, v490);

                                goto LABEL_492;
                              }
                            }
                          }

                          goto LABEL_465;
                        }

                        v451 = v450;
                        v452 = OBJC_IVAR___RUIXMLElement_mutableChildren;
                        swift_beginAccess();
                        v453 = v3;
                        v454 = sub_21BA66EA8(&v451[v452]);

                        v455 = *&v451[v452];
                        if (!(v455 >> 62))
                        {
                          v456 = *((v455 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          if (v456 < v454)
                          {
                            goto LABEL_496;
                          }

                          goto LABEL_441;
                        }

                        v456 = sub_21BA884DC();
                        if (v456 >= v454)
                        {
LABEL_441:
                          sub_21BA67234(v454, v456);
                          swift_endAccess();

                          v20 = &selRef_stack;
                          goto LABEL_444;
                        }

LABEL_496:
                        __break(1u);
LABEL_497:
                        __break(1u);
LABEL_498:
                        __break(1u);
LABEL_499:
                        __break(1u);
LABEL_500:
                        __break(1u);
LABEL_501:
                        __break(1u);
LABEL_502:
                        __break(1u);
LABEL_503:
                        __break(1u);
LABEL_504:
                        __break(1u);
LABEL_505:
                        __break(1u);
LABEL_506:
                        __break(1u);
LABEL_507:
                        __break(1u);
LABEL_508:
                        __break(1u);
LABEL_509:
                        __break(1u);
LABEL_510:
                        __break(1u);
LABEL_511:
                        __break(1u);
LABEL_512:
                        __break(1u);
LABEL_513:
                        __break(1u);
LABEL_514:
                        __break(1u);
LABEL_515:
                        __break(1u);
LABEL_516:
                        __break(1u);
LABEL_517:
                        __break(1u);
LABEL_518:
                        __break(1u);
LABEL_519:
                        __break(1u);
LABEL_520:
                        __break(1u);
LABEL_521:
                        __break(1u);
                        goto LABEL_522;
                      }

                      v437 = [v534 children];
                      v3 = sub_21BA87F0C();

                      if (v3 >> 62)
                      {
                        v438 = sub_21BA884DC();
                        if (v438)
                        {
LABEL_419:
                          v439 = 4;
                          while (1)
                          {
                            v440 = v439 - 4;
                            if ((v3 & 0xC000000000000001) != 0)
                            {
                              v441 = MEMORY[0x21CEFD920](v439 - 4, v3);
                            }

                            else
                            {
                              if (v440 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_523;
                              }

                              v441 = *(v3 + 8 * v439);
                            }

                            v442 = v441;
                            v443 = v439 - 3;
                            if (__OFADD__(v440, 1))
                            {
                              goto LABEL_524;
                            }

                            v444 = [v441 name];
                            v445 = sub_21BA87CBC();
                            v447 = v446;

                            if (v445 == 0x6B6E694C706C6568 && v447 == 0xE800000000000000)
                            {
                              break;
                            }

                            v449 = sub_21BA8899C();

                            if (v449)
                            {
                              goto LABEL_433;
                            }

                            ++v439;
                            v20 = &selRef_stack;
                            if (v443 == v438)
                            {
                              goto LABEL_435;
                            }
                          }

LABEL_433:

                          [v541 appendChild_];

                          v20 = &selRef_stack;
                          goto LABEL_436;
                        }
                      }

                      else
                      {
                        v438 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (v438)
                        {
                          goto LABEL_419;
                        }
                      }

LABEL_435:

LABEL_436:
                      v436 = v534;
                      goto LABEL_437;
                    }

                    v114 = sub_21BA884DC();
                    if (!v114)
                    {
                      goto LABEL_416;
                    }

LABEL_122:
                    v115 = 0;
                    v539 = v3 & 0xFFFFFFFFFFFFFF8;
                    v540 = v3 & 0xC000000000000001;
                    v537 = v3;
                    v538 = v3 + 32;
                    v536 = v114;
                    while (1)
                    {
                      if (v540)
                      {
                        v116 = MEMORY[0x21CEFD920](v115, v3);
                      }

                      else
                      {
                        if (v115 >= *(v539 + 16))
                        {
                          goto LABEL_521;
                        }

                        v116 = *(v538 + 8 * v115);
                      }

                      v558 = v116;
                      v23 = __OFADD__(v115, 1);
                      v117 = (v115 + 1);
                      if (v23)
                      {
                        goto LABEL_520;
                      }

                      v549 = v117;
                      v118 = [v116 name];
                      v119 = sub_21BA87CBC();
                      v121 = v120;

                      if (v119 == 0x497261426B6E696CLL && v121 == 0xEB000000006D6574)
                      {
                        break;
                      }

                      v123 = sub_21BA8899C();

                      if (v123)
                      {
                        goto LABEL_135;
                      }

                      v124 = [v558 name];
                      v125 = sub_21BA87CBC();
                      v127 = v126;

                      if (v125 == 0x6563696F6863 && v127 == 0xE600000000000000)
                      {
                        break;
                      }

                      v175 = sub_21BA8899C();

                      if (v175)
                      {
                        goto LABEL_135;
                      }

                      v176 = [v558 name];
                      v177 = sub_21BA87CBC();
                      v179 = v178;

                      if (v177 == 0x61426E6F74747562 && v179 == 0xED00006D65744972)
                      {
                        break;
                      }

                      v180 = sub_21BA8899C();

                      if (v180)
                      {
                        goto LABEL_135;
                      }

LABEL_169:

                      v115 = v549;
                      if (v549 == v114)
                      {
                        goto LABEL_416;
                      }
                    }

LABEL_135:
                    v128 = objc_allocWithZone(RUIXMLElement);
                    v129 = sub_21BA87C8C();
                    v130 = [v128 initWithName_];

                    v131 = [v130 v20[367]];
                    v132 = sub_21BA87BCC();

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v573[0] = v132;
                    sub_21BA65550(6777186, 0xE300000000000000, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
                    v134 = sub_21BA87BBC();

                    [v130 setAttributes_];

                    v135 = [v558 stringValue];
                    if (v135)
                    {
                      v136 = v135;
                      v137 = sub_21BA87CBC();
                      v139 = v138;
                    }

                    else
                    {
                      v137 = 0;
                      v139 = 0;
                    }

                    v140 = [v130 v20[367]];
                    v141 = sub_21BA87BCC();

                    v573[0] = v141;
                    v20 = &selRef_stack;
                    v142 = v139;
                    v143 = v130;
                    sub_21BA63620(v137, v142, 0x656C746974, 0xE500000000000000);
                    v144 = sub_21BA87BBC();

                    [v130 setAttributes_];

                    v145 = [v558 attributes];
                    v146 = sub_21BA87BCC();

                    v147 = v146 + 64;
                    v148 = 1 << *(v146 + 32);
                    if (v148 < 64)
                    {
                      v149 = ~(-1 << v148);
                    }

                    else
                    {
                      v149 = -1;
                    }

                    v150 = v149 & *(v146 + 64);
                    v3 = (v148 + 63) >> 6;
                    v565 = v146;

                    v151 = 0;
                    v552 = v143;
                    v555 = v3;
                    if (!v150)
                    {
                      while (1)
                      {
LABEL_142:
                        v152 = v151 + 1;
                        if (__OFADD__(v151, 1))
                        {
                          goto LABEL_497;
                        }

                        if (v152 >= v3)
                        {
                          break;
                        }

                        v150 = *(v147 + 8 * v152);
                        ++v151;
                        if (v150)
                        {
                          v151 = v152;
                          goto LABEL_146;
                        }
                      }

                      [v541 appendChild_];

                      v114 = v536;
                      v3 = v537;
                      goto LABEL_169;
                    }

LABEL_146:
                    while (1)
                    {
                      v153 = (v151 << 10) | (16 * __clz(__rbit64(v150)));
                      v154 = (v565[6] + v153);
                      v156 = *v154;
                      v155 = v154[1];
                      v157 = (v565[7] + v153);
                      v159 = *v157;
                      v158 = v157[1];

                      v160 = v156 == 0x6E6F697469736F70 && v155 == 0xE800000000000000;
                      if (v160 || (sub_21BA8899C() & 1) != 0)
                      {
                        break;
                      }

                      v168 = v156 == 0x6C6562616CLL && v155 == 0xE500000000000000;
                      if (v168 || (sub_21BA8899C() & 1) != 0)
                      {

                        v169 = [v143 v20[367]];
                        v170 = sub_21BA87BCC();

                        v163 = swift_isUniquelyReferenced_nonNull_native();
                        v573[0] = v170;
                        v164 = v159;
                        v165 = v158;
                        v166 = 0x656C746974;
                        goto LABEL_152;
                      }

                      v171 = v156 == 0x656C797473 && v155 == 0xE500000000000000;
                      if (v171 || (sub_21BA8899C() & 1) != 0)
                      {
                        goto LABEL_154;
                      }

                      v530 = v155;
                      v172 = [v143 v20[367]];
                      v173 = sub_21BA87BCC();

                      v174 = swift_isUniquelyReferenced_nonNull_native();
                      v573[0] = v173;
                      sub_21BA65550(v159, v158, v156, v530, v174);

LABEL_153:
                      v167 = sub_21BA87BBC();

                      v143 = v552;
                      [v552 setAttributes_];

                      v20 = &selRef_stack;
                      v3 = v555;
LABEL_154:
                      v150 &= v150 - 1;

                      if (!v150)
                      {
                        goto LABEL_142;
                      }
                    }

                    v161 = [v143 v20[367]];
                    v162 = sub_21BA87BCC();

                    v163 = swift_isUniquelyReferenced_nonNull_native();
                    v573[0] = v162;
                    v164 = v159;
                    v165 = v158;
                    v166 = 0x6E67696C61;
LABEL_152:
                    sub_21BA65550(v164, v165, v166, 0xE500000000000000, v163);
                    goto LABEL_153;
                  }
                }

                v110 = [v109 children];
                v16 = sub_21BA87F0C();

                goto LABEL_115;
              }
            }

            v16 = MEMORY[0x277D84F90];
          }

LABEL_44:
          v36 = v535;
LABEL_45:
        }
      }

      v37 = sub_21BA6347C(0x6F684369746C756DLL, 0xEF77656956656369);
      if (v37)
      {
        v557 = v37;
        v38 = sub_21BA6347C(2036429428, 0xE400000000000000);
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          v40 = objc_allocWithZone(RUIXMLElement);
          v41 = sub_21BA87C8C();
          v39 = [v40 initWithName_];
        }

        v42 = sub_21BA3658C(&unk_282D674A8);
        sub_21B9BADFC(&unk_282D674C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21BA92F40;
        v44 = [v39 name];
        v45 = sub_21BA87CBC();
        v47 = v46;

        *(inited + 32) = v45;
        *(inited + 40) = v47;
        v48 = sub_21BA3658C(inited);
        swift_setDeallocating();
        sub_21B9BADFC(inited + 32);
        v572[0] = MEMORY[0x277D84F90];

        sub_21BA66460(v572, 0x7FFFFFFFFFFFFFFFLL, v557, v42, v48);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v49 = sub_21BA87EFC();

        [v39 appendChildren_];

        v50 = [v39 parent];
        v548 = v39;
        if (v50)
        {
        }

        else
        {
          [v557 appendChild_];
        }

        v51 = [v557 children];
        v52 = sub_21BA87F0C();

        if (v52 >> 62)
        {
          v53 = sub_21BA884DC();
          if (v53)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v53)
          {
LABEL_56:
            v3 = v52 & 0xC000000000000001;
            v54 = 4;
            while (1)
            {
              v55 = v54 - 4;
              if (v3)
              {
                v56 = MEMORY[0x21CEFD920](v54 - 4, v52);
                v57 = v54 - 3;
                if (__OFADD__(v55, 1))
                {
                  goto LABEL_504;
                }
              }

              else
              {
                if (v55 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_505;
                }

                v56 = *(v52 + 8 * v54);
                v57 = v54 - 3;
                if (__OFADD__(v55, 1))
                {
                  goto LABEL_504;
                }
              }

              v564 = v56;
              v58 = [v56 name];
              v59 = sub_21BA87CBC();
              v61 = v60;

              if (v59 == 0x6E6F6974636573 && v61 == 0xE700000000000000)
              {
                break;
              }

              v63 = sub_21BA8899C();

              if (v63)
              {
                goto LABEL_71;
              }

              ++v54;
              if (v57 == v53)
              {
                goto LABEL_179;
              }
            }

LABEL_71:

            v64 = [v564 children];
            v65 = sub_21BA87F0C();

            v3 = v65 & 0xFFFFFFFFFFFFFF8;
            if (v65 >> 62)
            {
              v66 = sub_21BA884DC();
            }

            else
            {
              v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v67 = 0;
            while (1)
            {
              if (v66 == v67)
              {

                goto LABEL_180;
              }

              if ((v65 & 0xC000000000000001) != 0)
              {
                v68 = MEMORY[0x21CEFD920](v67, v65);
              }

              else
              {
                if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_509;
                }

                v68 = *(v65 + 8 * v67 + 32);
              }

              v69 = v68;
              if (__OFADD__(v67, 1))
              {
                goto LABEL_508;
              }

              v70 = [v68 name];
              v71 = sub_21BA87CBC();
              v73 = v72;

              if (v71 == 0x646165486C6D7468 && v73 == 0xEA00000000007265)
              {
                break;
              }

              v75 = sub_21BA8899C();

              ++v67;
              if (v75)
              {
                goto LABEL_88;
              }
            }

LABEL_88:

            v76 = sub_21BA3658C(&unk_282D674D8);
            sub_21B9BADFC(&unk_282D674F8);
            v77 = swift_initStackObject();
            *(v77 + 16) = xmmword_21BA92F40;
            v78 = v548;
            v79 = [v548 name];
            v80 = sub_21BA87CBC();
            v82 = v81;

            *(v77 + 32) = v80;
            *(v77 + 40) = v82;
            v83 = sub_21BA3658C(v77);
            swift_setDeallocating();
            sub_21B9BADFC(v77 + 32);
            v84 = MEMORY[0x277D84F90];
            v571 = MEMORY[0x277D84F90];

            sub_21BA66460(&v571, 0x7FFFFFFFFFFFFFFFLL, v564, v76, v83);
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v85 = sub_21BA87EFC();

            [v548 appendChildren_];

            v86 = [v557 children];
            v87 = sub_21BA87F0C();

            v571 = v84;
            if (v87 >> 62)
            {
              v88 = sub_21BA884DC();
              v20 = &selRef_stack;
              if (v88)
              {
LABEL_90:
                v3 = v87 & 0xC000000000000001;
                v89 = 4;
                do
                {
                  v90 = v89 - 4;
                  if (v3)
                  {
                    v91 = MEMORY[0x21CEFD920](v89 - 4, v87);
                  }

                  else
                  {
                    if (v90 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_507;
                    }

                    v91 = *(v87 + 8 * v89);
                  }

                  v92 = v91;
                  v93 = v89 - 3;
                  if (__OFADD__(v90, 1))
                  {
                    goto LABEL_506;
                  }

                  v94 = [v91 name];
                  v95 = sub_21BA87CBC();
                  v97 = v96;

                  if (v95 == 0x6E6F6974636573 && v97 == 0xE700000000000000)
                  {
                  }

                  else
                  {
                    v99 = sub_21BA8899C();

                    if (v99)
                    {
                    }

                    else
                    {
                      sub_21BA8861C();
                      sub_21BA8864C();
                      sub_21BA8865C();
                      sub_21BA8862C();
                    }
                  }

                  ++v89;
                  v20 = &selRef_stack;
                }

                while (v93 != v88);
                v100 = v571;
                v78 = v548;
                goto LABEL_184;
              }
            }

            else
            {
              v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v20 = &selRef_stack;
              if (v88)
              {
                goto LABEL_90;
              }
            }

            v100 = MEMORY[0x277D84F90];
LABEL_184:

            v181 = OBJC_IVAR___RUIXMLElement_mutableChildren;
            swift_beginAccess();
            *&v557[v181] = v100;

            v182 = [v78 v20[367]];
            v183 = sub_21BA87BCC();

            v184 = [v564 v20[367]];
            v185 = sub_21BA87BCC();

            v186 = swift_isUniquelyReferenced_nonNull_native();
            v571 = v183;
            sub_21BA6804C(v185, sub_21BA65AF4, 0, v186, &v571);

            v187 = sub_21BA87BBC();

            [v78 setAttributes_];

            goto LABEL_185;
          }
        }

LABEL_179:

LABEL_180:
        v20 = &selRef_stack;
LABEL_185:
        v188 = sub_21BA6347C(0x726564616568, 0xE600000000000000);
        v16 = MEMORY[0x277D84F90];
        if (!v188)
        {

          goto LABEL_217;
        }

        v189 = v188;
        v190 = [v188 v20[367]];
        v191 = sub_21BA87BCC();

        if (!*(v191 + 16))
        {

          goto LABEL_217;
        }

        sub_21BA659F8(0xD000000000000017, 0x800000021BAA47D0, sub_21B940E44);
        v193 = v192;

        if ((v193 & 1) == 0)
        {

          goto LABEL_217;
        }

        v194 = [v189 v20[367]];
        v195 = sub_21BA87BCC();

        v566 = v189;
        if (*(v195 + 16) && (v196 = sub_21BA659F8(0xD000000000000017, 0x800000021BAA47D0, sub_21B940E44), (v197 & 1) != 0))
        {
          v198 = (*(v195 + 56) + 16 * v196);
          v199 = *v198;
          v200 = v198[1];
        }

        else
        {
          v199 = 0;
          v200 = 0;
        }

        v3 = v548;
        v201 = [v548 v20[367]];
        v202 = sub_21BA87BCC();

        v571 = v202;
        sub_21BA63620(v199, v200, 0xD000000000000017, 0x800000021BAA47D0);
        v203 = sub_21BA87BBC();

        [v548 setAttributes_];

        v204 = [v557 children];
        v205 = sub_21BA87F0C();

        v571 = v16;
        if (v205 >> 62)
        {
          v206 = sub_21BA884DC();
          v20 = &selRef_stack;
          if (v206)
          {
LABEL_197:
            v553 = (v205 & 0xFFFFFFFFFFFFFF8);
            v556 = v205 & 0xC000000000000001;
            v207 = 4;
            do
            {
              v208 = v207 - 4;
              if (v556)
              {
                v209 = MEMORY[0x21CEFD920](v207 - 4, v205);
              }

              else
              {
                if (v208 >= v553[2])
                {
                  goto LABEL_513;
                }

                v209 = *(v205 + 8 * v207);
              }

              v210 = v209;
              v3 = v207 - 3;
              if (__OFADD__(v208, 1))
              {
                goto LABEL_512;
              }

              v211 = v205;
              v212 = [v209 name];
              v213 = sub_21BA87CBC();
              v215 = v214;

              v216 = [v566 name];
              v217 = sub_21BA87CBC();
              v219 = v218;

              if (v213 == v217 && v215 == v219)
              {

                v20 = &selRef_stack;
              }

              else
              {
                v221 = sub_21BA8899C();

                if (v221)
                {
                }

                else
                {
                  sub_21BA8861C();
                  sub_21BA8864C();
                  sub_21BA8865C();
                  sub_21BA8862C();
                }

                v20 = &selRef_stack;
              }

              ++v207;
              v205 = v211;
            }

            while (v3 != v206);
            v222 = v571;
            v16 = MEMORY[0x277D84F90];
            goto LABEL_216;
          }
        }

        else
        {
          v206 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v20 = &selRef_stack;
          if (v206)
          {
            goto LABEL_197;
          }
        }

        v222 = v16;
LABEL_216:

        v223 = OBJC_IVAR___RUIXMLElement_mutableChildren;
        swift_beginAccess();
        *&v557[v223] = v222;
      }

LABEL_217:
      v224 = sub_21BA6347C(0x656956656C626174, 0xE900000000000077);
      if (!v224)
      {
        v225 = sub_21BA6347C(0x6E6F6974636573, 0xE700000000000000);
        if (!v225)
        {
          goto LABEL_221;
        }

        v226 = objc_allocWithZone(RUIXMLElement);
        v227 = sub_21BA87C8C();
        v228 = [v226 initWithName_];

        [v563 appendChild_];
        v229 = sub_21BA3658C(&unk_282D67508);
        sub_21B9BADFC(&unk_282D67528);
        v230 = sub_21BA3658C(&unk_282D67538);
        sub_21B9BADFC(&unk_282D67558);
        v573[0] = MEMORY[0x277D84F90];

        sub_21BA66460(v573, 0x7FFFFFFFFFFFFFFFLL, v563, v229, v230);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v231 = sub_21BA87EFC();

        [v228 appendChildren_];

        v224 = v231;
        v16 = MEMORY[0x277D84F90];
      }

LABEL_221:
      sub_21BA62F98();
      v232 = sub_21BA6347C(0x6F684369746C756DLL, 0xEF77656956656369);
      if (v232)
      {
        v233 = v232;
        v234 = sub_21BA6347C(0x697461676976616ELL, 0xED00007261426E6FLL);
        if (v234)
        {
          v235 = v234;
          v236 = [v234 v20[367]];
          v237 = sub_21BA87BCC();

          if (*(v237 + 16) && (v238 = sub_21BA659F8(0x656C746974, 0xE500000000000000, sub_21B940E44), (v239 & 1) != 0))
          {
            v240 = (*(v237 + 56) + 16 * v238);
            v241 = *v240;
            v242 = v240[1];
          }

          else
          {
            v241 = 0;
            v242 = 0;
          }

          v243 = [v233 v20[367]];
          v244 = sub_21BA87BCC();

          v573[0] = v244;
          sub_21BA63620(v241, v242, 0x697461676976616ELL, 0xEF656C7469546E6FLL);
          v245 = sub_21BA87BBC();

          [v233 setAttributes_];

          v246 = [v235 attributes];
          v247 = sub_21BA87BCC();

          if (*(v247 + 16) && (v248 = sub_21BA659F8(0x656C746954627573, 0xE800000000000000, sub_21B940E44), (v249 & 1) != 0))
          {
            v250 = (*(v247 + 56) + 16 * v248);
            v251 = *v250;
            v252 = v250[1];
          }

          else
          {
            v251 = 0;
            v252 = 0;
          }

          v253 = [v233 attributes];
          v254 = sub_21BA87BCC();

          v573[0] = v254;
          v20 = &selRef_stack;
          sub_21BA63620(v251, v252, 0xD000000000000012, 0x800000021BAA47A0);
          v255 = sub_21BA87BBC();

          [v233 setAttributes_];
        }

        else
        {
        }

        v16 = MEMORY[0x277D84F90];
      }

      if ((v562 & 0x40) != 0)
      {
        v3 = v563;
        v256 = sub_21BA6347C(0x6F684369746C756DLL, 0xEF77656956656369);
        if (!v256)
        {
          goto LABEL_264;
        }

        v257 = v256;
        v258 = sub_21BA6347C(0x656956656C626174, 0xE900000000000077);
        if (!v258)
        {

          goto LABEL_264;
        }

        v567 = v257;
        v559 = v258;
        v259 = [v258 children];
        v260 = sub_21BA87F0C();

        if (v260 >> 62)
        {
          v261 = sub_21BA884DC();
          if (v261)
          {
LABEL_239:
            v262 = 4;
            while (1)
            {
              v263 = v262 - 4;
              if ((v260 & 0xC000000000000001) != 0)
              {
                v264 = MEMORY[0x21CEFD920](v262 - 4, v260);
              }

              else
              {
                if (v263 >= *((v260 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_515;
                }

                v264 = *(v260 + 8 * v262);
              }

              v265 = v264;
              v3 = v262 - 3;
              if (__OFADD__(v263, 1))
              {
                goto LABEL_514;
              }

              v266 = [v264 name];
              v267 = sub_21BA87CBC();
              v269 = v268;

              if (v267 == 0x726564616568 && v269 == 0xE600000000000000)
              {
                break;
              }

              v271 = sub_21BA8899C();

              if (v271)
              {
                goto LABEL_255;
              }

              ++v262;
              v13 = v3 == v261;
              v3 = v563;
              if (v13)
              {
                goto LABEL_263;
              }
            }

LABEL_255:

            v272 = [v567 attributes];
            v273 = sub_21BA87BCC();

            v16 = MEMORY[0x277D84F90];
            v3 = v563;
            if (*(v273 + 16) && (sub_21BA659F8(0x656C746974627573, 0xE800000000000000, sub_21B940E44), (v274 & 1) != 0))
            {

              v20 = &selRef_stack;
            }

            else
            {

              v275 = [v265 stringValue];
              if (v275)
              {
                v276 = v275;
                v277 = sub_21BA87CBC();
                v279 = v278;
              }

              else
              {
                v277 = 0;
                v279 = 0;
              }

              v280 = [v567 attributes];
              v281 = sub_21BA87BCC();

              v573[0] = v281;
              sub_21BA63620(v277, v279, 0x656C746974627573, 0xE800000000000000);
              v282 = sub_21BA87BBC();

              [v567 setAttributes_];

              v20 = &selRef_stack;
            }

LABEL_264:
            v283 = sub_21BA6347C(0x6F684369746C756DLL, 0xEF77656956656369);
            if (v283)
            {
              v284 = v283;
              v285 = sub_21BA6347C(0x656956656C626174, 0xE900000000000077);
              if (v285)
              {
                v568 = v284;
                v560 = v285;
                v286 = [v285 children];
                v287 = sub_21BA87F0C();

                if (v287 >> 62)
                {
                  v288 = sub_21BA884DC();
                  if (v288)
                  {
LABEL_268:
                    v289 = 4;
                    while (1)
                    {
                      v290 = v289 - 4;
                      if ((v287 & 0xC000000000000001) != 0)
                      {
                        v291 = MEMORY[0x21CEFD920](v289 - 4, v287);
                      }

                      else
                      {
                        if (v290 >= *((v287 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_517;
                        }

                        v291 = *(v287 + 8 * v289);
                      }

                      v292 = v291;
                      v3 = v289 - 3;
                      if (__OFADD__(v290, 1))
                      {
                        goto LABEL_516;
                      }

                      v293 = [v291 name];
                      v294 = sub_21BA87CBC();
                      v296 = v295;

                      if (v294 == 0x6564616548627573 && v296 == 0xE900000000000072)
                      {
                        break;
                      }

                      v298 = sub_21BA8899C();

                      if (v298)
                      {
                        goto LABEL_284;
                      }

                      ++v289;
                      v13 = v3 == v288;
                      v3 = v563;
                      if (v13)
                      {
                        goto LABEL_292;
                      }
                    }

LABEL_284:

                    v299 = [v568 attributes];
                    v300 = sub_21BA87BCC();

                    v16 = MEMORY[0x277D84F90];
                    if (*(v300 + 16) && (sub_21BA659F8(0x656C746974627573, 0xE800000000000000, sub_21B940E44), (v301 & 1) != 0))
                    {

                      v20 = &selRef_stack;
                    }

                    else
                    {

                      v302 = [v292 stringValue];
                      if (v302)
                      {
                        v303 = v302;
                        v304 = sub_21BA87CBC();
                        v306 = v305;
                      }

                      else
                      {
                        v304 = 0;
                        v306 = 0;
                      }

                      v307 = [v568 attributes];
                      v308 = sub_21BA87BCC();

                      v573[0] = v308;
                      sub_21BA63620(v304, v306, 0x656C746974627573, 0xE800000000000000);
                      v309 = sub_21BA87BBC();

                      [v568 setAttributes_];

                      v20 = &selRef_stack;
                    }

                    goto LABEL_293;
                  }
                }

                else
                {
                  v288 = *((v287 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v288)
                  {
                    goto LABEL_268;
                  }
                }

LABEL_292:

                v16 = MEMORY[0x277D84F90];
                v20 = &selRef_stack;
              }

              else
              {
              }
            }

LABEL_293:
            v310 = sub_21BA6347C(0x6F684369746C756DLL, 0xEF77656956656369);
            if (v310)
            {
              v311 = v310;
              v312 = sub_21BA6347C(0x656956656C626174, 0xE900000000000077);
              if (v312)
              {
                v313 = v312;
                sub_21BA6730C(v312, v311);

                v311 = v313;
              }
            }

            goto LABEL_297;
          }
        }

        else
        {
          v261 = *((v260 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v261)
          {
            goto LABEL_239;
          }
        }

LABEL_263:

        v16 = MEMORY[0x277D84F90];
        v20 = &selRef_stack;
        goto LABEL_264;
      }

LABEL_297:
      v314 = sub_21BA6347C(0x776569566E6970, 0xE700000000000000);
      if (v314)
      {
        v315 = v314;
        v316 = sub_21BA6347C(0x697461676976616ELL, 0xED00007261426E6FLL);
        if (v316)
        {
          v317 = v316;
          v318 = [v316 v20[367]];
          v319 = sub_21BA87BCC();

          if (*(v319 + 16) && (v320 = sub_21BA659F8(0x656C746974, 0xE500000000000000, sub_21B940E44), (v321 & 1) != 0))
          {
            v322 = (*(v319 + 56) + 16 * v320);
            v323 = *v322;
            v324 = v322[1];
          }

          else
          {
            v323 = 0;
            v324 = 0;
          }

          v325 = [v315 v20[367]];
          v326 = sub_21BA87BCC();

          v573[0] = v326;
          sub_21BA63620(v323, v324, 0x697461676976616ELL, 0xEF656C7469546E6FLL);
          v327 = sub_21BA87BBC();

          [v315 setAttributes_];

          v328 = [v317 attributes];
          v329 = sub_21BA87BCC();

          if (*(v329 + 16) && (v330 = sub_21BA659F8(0x656C746954627573, 0xE800000000000000, sub_21B940E44), (v331 & 1) != 0))
          {
            v332 = (*(v329 + 56) + 16 * v330);
            v333 = *v332;
            v334 = v332[1];
          }

          else
          {
            v333 = 0;
            v334 = 0;
          }

          v335 = [v315 attributes];
          v336 = sub_21BA87BCC();

          v573[0] = v336;
          v20 = &selRef_stack;
          sub_21BA63620(v333, v334, 0xD000000000000012, 0x800000021BAA47A0);
          v337 = sub_21BA87BBC();

          [v315 setAttributes_];
        }

        else
        {
        }

        v16 = MEMORY[0x277D84F90];
      }

      if (v562)
      {
        sub_21BA629D8(0x656956656C626174, 0xE900000000000077);
        if ((v562 & 4) == 0)
        {
LABEL_312:
          if ((v562 & 2) != 0)
          {
            goto LABEL_317;
          }

          goto LABEL_313;
        }
      }

      else if ((v562 & 4) == 0)
      {
        goto LABEL_312;
      }

      sub_21BA629D8(0x776569566E6970, 0xE700000000000000);
      if ((v562 & 2) != 0)
      {
LABEL_317:
        sub_21BA629D8(1819112552, 0xE400000000000000);
        if ((v562 & 0x20) == 0)
        {
          goto LABEL_373;
        }

        goto LABEL_318;
      }

LABEL_313:
      if ((v562 & 0x20) == 0)
      {
        goto LABEL_373;
      }

LABEL_318:
      v338 = sub_21BA6347C(0x656956656C626174, 0xE900000000000077);
      if (!v338)
      {
        goto LABEL_373;
      }

      v339 = v338;
      v340 = [v338 children];
      v341 = sub_21BA87F0C();

      v573[0] = v16;
      if (v341 >> 62)
      {
        v342 = sub_21BA884DC();
        v542 = v339;
        if (!v342)
        {
LABEL_339:
          v354 = MEMORY[0x277D84F90];
          goto LABEL_340;
        }
      }

      else
      {
        v342 = *((v341 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v542 = v339;
        if (!v342)
        {
          goto LABEL_339;
        }
      }

      v3 = v341 & 0xC000000000000001;
      v343 = 4;
      do
      {
        v344 = v343 - 4;
        if (v3)
        {
          v345 = MEMORY[0x21CEFD920](v343 - 4, v341);
        }

        else
        {
          if (v344 >= *((v341 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_501;
          }

          v345 = *(v341 + 8 * v343);
        }

        v346 = v345;
        v347 = v343 - 3;
        if (__OFADD__(v344, 1))
        {
          goto LABEL_500;
        }

        v348 = [v345 name];
        v349 = sub_21BA87CBC();
        v351 = v350;

        if (v349 == 0x6E6F6974636573 && v351 == 0xE700000000000000)
        {

LABEL_323:
          sub_21BA8861C();
          sub_21BA8864C();
          sub_21BA8865C();
          sub_21BA8862C();
          goto LABEL_324;
        }

        v353 = sub_21BA8899C();

        if (v353)
        {
          goto LABEL_323;
        }

LABEL_324:
        v20 = &selRef_stack;
        ++v343;
      }

      while (v347 != v342);
      v354 = v573[0];
LABEL_340:

      if ((v354 & 0x8000000000000000) != 0 || (v354 & 0x4000000000000000) != 0)
      {
        v355 = sub_21BA884DC();
        if (v355)
        {
          goto LABEL_343;
        }
      }

      else
      {
        v355 = *(v354 + 16);
        if (v355)
        {
LABEL_343:
          v561 = (v354 & 0xC000000000000001);
          v3 = 4;
          v554 = v354;
          do
          {
            v356 = v3 - 4;
            if (v561)
            {
              v357 = MEMORY[0x21CEFD920](v3 - 4, v354);
            }

            else
            {
              if (v356 >= *(v354 + 16))
              {
                goto LABEL_503;
              }

              v357 = *(v354 + 8 * v3);
            }

            v358 = v357;
            v359 = v3 - 3;
            if (__OFADD__(v356, 1))
            {
              goto LABEL_502;
            }

            v360 = [v357 v20[367]];
            v361 = sub_21BA87BCC();

            if (*(v361 + 16) && (sub_21BA659F8(0x7265746F6F66, 0xE600000000000000, sub_21B940E44), (v362 & 1) != 0))
            {

              v363 = [v358 v20[367]];
              v364 = sub_21BA87BCC();

              v573[0] = v364;
              sub_21BA63620(0, 0, 0x7265746F6F66, 0xE600000000000000);
              v365 = sub_21BA87BBC();

              [v358 setAttributes_];

              v366 = objc_allocWithZone(RUIXMLElement);
              v367 = sub_21BA87C8C();
              v368 = [v366 initWithName_];

              v354 = v554;
              v369 = sub_21BA87C8C();

              [v368 setStringValue_];

              v20 = &selRef_stack;
              [v358 appendChild_];
            }

            else
            {
            }

            v370 = [v358 v20[367]];
            v371 = sub_21BA87BCC();

            if (*(v371 + 16))
            {
              v372 = sub_21BA659F8(0x694C7265746F6F66, 0xED00004C52556B6ELL, sub_21B940E44);
              if (v373)
              {
                v374 = *(v371 + 56) + 16 * v372;
                v375 = *(v374 + 8);
                v550 = *v374;

                v376 = [v358 v20[367]];
                v377 = v20;
                v378 = sub_21BA87BCC();

                v573[0] = v378;
                sub_21BA63620(0, 0, 0x694C7265746F6F66, 0xED00004C52556B6ELL);
                v379 = sub_21BA87BBC();

                [v358 setAttributes_];

                v380 = sub_21BA6347C(0x7265746F6F66, 0xE600000000000000);
                if (v380)
                {
                  v381 = v380;
                  v382 = [v380 v377[367]];
                  v383 = sub_21BA87BCC();

                  v384 = swift_isUniquelyReferenced_nonNull_native();
                  v573[0] = v383;
                  sub_21BA65550(v550, v375, 7107189, 0xE300000000000000, v384);
                  v385 = sub_21BA87BBC();

                  [v381 setAttributes_];
                }

                else
                {
                }

                v20 = v377;
                v354 = v554;
              }

              else
              {
              }

              v359 = v3 - 3;
            }

            else
            {
            }

            v386 = [v358 v20[367]];
            v387 = sub_21BA87BCC();

            if (*(v387 + 16) && (v388 = sub_21BA659F8(0xD000000000000019, 0x800000021BAA62D0, sub_21B940E44), (v389 & 1) != 0))
            {
              v390 = *(v387 + 56) + 16 * v388;
              v551 = *v390;
              v569 = *(v390 + 8);

              v391 = [v358 v20[367]];
              v392 = v20;
              v393 = sub_21BA87BCC();

              v573[0] = v393;
              sub_21BA63620(0, 0, 0xD000000000000019, 0x800000021BAA62D0);
              v394 = sub_21BA87BBC();

              [v358 setAttributes_];

              v395 = sub_21BA6347C(0x7265746F6F66, 0xE600000000000000);
              if (v395)
              {
                v396 = v392;
                v397 = v395;
                v398 = [v395 v392[367]];
                v399 = sub_21BA87BCC();

                v400 = swift_isUniquelyReferenced_nonNull_native();
                v573[0] = v399;
                sub_21BA65550(v551, v569, 0x486C61646F4D7369, 0xEF776569564C4D54, v400);
                v401 = sub_21BA87BBC();

                [v397 setAttributes_];

                v20 = v396;
              }

              else
              {

                v20 = v392;
              }

              v354 = v554;
            }

            else
            {
            }

            ++v3;
          }

          while (v359 != v355);
        }
      }

      v16 = MEMORY[0x277D84F90];
LABEL_373:
      v573[0] = v16;
      sub_21BA63AB0(0x6F684369746C756DLL, 0xEB00000000656369, v573);
      v3 = v573[0];
      if (!(v573[0] >> 62))
      {
        v402 = *((v573[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v402)
        {
          goto LABEL_375;
        }

LABEL_26:

        v19 = v547;
        v16 = MEMORY[0x277D84F90];
        v17 = v545;
        if (v547 == v543)
        {
        }

        continue;
      }

      break;
    }

    v402 = sub_21BA884DC();
    if (!v402)
    {
      goto LABEL_26;
    }

LABEL_375:
    if (v402 >= 1)
    {
      break;
    }

LABEL_522:
    __break(1u);
LABEL_523:
    __break(1u);
LABEL_524:
    __break(1u);
LABEL_525:
    ;
  }

  v403 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v405 = MEMORY[0x21CEFD920](v403, v3);
    }

    else
    {
      v405 = *(v3 + 8 * v403 + 32);
    }

    v406 = v405;
    v407 = [v405 v20[367]];
    v408 = sub_21BA87BCC();

    if (*(v408 + 16) && (v409 = sub_21BA659F8(0x6E67696C61, 0xE500000000000000, sub_21B940E44), (v410 & 1) != 0))
    {
      v411 = (*(v408 + 56) + 16 * v409);
      v413 = *v411;
      v412 = v411[1];

      v414 = v413 == 1952867692 && v412 == 0xE400000000000000;
      if (v414 || (sub_21BA8899C() & 1) != 0)
      {

        v412 = 0xE700000000000000;
        v413 = 0x676E696461656CLL;
      }

      else
      {
        v435 = v413 == 0x7468676972 && v412 == 0xE500000000000000;
        if (v435 || (sub_21BA8899C() & 1) != 0)
        {

          v412 = 0xE800000000000000;
          v413 = 0x676E696C69617274;
        }
      }
    }

    else
    {

      v413 = 0;
      v412 = 0;
    }

    v415 = [v406 v20[367]];
    v416 = sub_21BA87BCC();

    if (!v412)
    {
      v430 = sub_21BA659F8(0x6E67696C61, 0xE500000000000000, sub_21B940E44);
      if (v431)
      {
        v432 = v430;
        v433 = swift_isUniquelyReferenced_nonNull_native();
        v573[0] = v416;
        if (!v433)
        {
          sub_21BA47EF8();
          v416 = v573[0];
        }

        sub_21BA653A0(v432, v416);
      }

      v20 = &selRef_stack;
      goto LABEL_379;
    }

    v417 = swift_isUniquelyReferenced_nonNull_native();
    v573[0] = v416;
    v419 = sub_21BA659F8(0x6E67696C61, 0xE500000000000000, sub_21B940E44);
    v420 = v416[2];
    v421 = (v418 & 1) == 0;
    v422 = v420 + v421;
    if (__OFADD__(v420, v421))
    {
      goto LABEL_498;
    }

    v423 = v418;
    if (v416[3] < v422)
    {
      break;
    }

    if (v417)
    {
      v20 = &selRef_stack;
      if (v418)
      {
        goto LABEL_404;
      }
    }

    else
    {
      sub_21BA47EF8();
      v416 = v573[0];
      v20 = &selRef_stack;
      if (v423)
      {
LABEL_404:
        v434 = (v416[7] + 16 * v419);
        *v434 = v413;
        v434[1] = v412;

        goto LABEL_379;
      }
    }

LABEL_397:
    v416[(v419 >> 6) + 8] |= 1 << v419;
    v426 = (v416[6] + 16 * v419);
    *v426 = 0x6E67696C61;
    v426[1] = 0xE500000000000000;
    v427 = (v416[7] + 16 * v419);
    *v427 = v413;
    v427[1] = v412;
    v428 = v416[2];
    v23 = __OFADD__(v428, 1);
    v429 = v428 + 1;
    if (v23)
    {
      goto LABEL_499;
    }

    v416[2] = v429;
LABEL_379:
    ++v403;
    v404 = sub_21BA87BBC();

    [v406 setAttributes_];

    if (v402 == v403)
    {
      goto LABEL_26;
    }
  }

  sub_21BA47C38(v422, v417);
  v416 = v573[0];
  v424 = sub_21BA659F8(0x6E67696C61, 0xE500000000000000, sub_21B940E44);
  if ((v423 & 1) == (v425 & 1))
  {
    v419 = v424;
    v20 = &selRef_stack;
    if (v423)
    {
      goto LABEL_404;
    }

    goto LABEL_397;
  }

  sub_21BA88B0C();
  __break(1u);
  swift_endAccess();
  __break(1u);

  __break(1u);
  return result;
}

void sub_21BA629D8(uint64_t a1, void *a2)
{
  v3 = [v2 children];
  v49 = type metadata accessor for RUIXMLElement(v3);
  v4 = sub_21BA87F0C();

  v50 = v2;
  if (v4 >> 62)
  {
LABEL_64:
    v5 = sub_21BA884DC();
    if (!v5)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_68;
    }
  }

  v6 = 0;
  v7 = 0xEF77656956656369;
  while ((v4 & 0xC000000000000001) == 0)
  {
    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v8 = *(v4 + 8 * v6 + 32);
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v53 = v8;
    v10 = v7;
    v11 = [v8 name];
    v12 = sub_21BA87CBC();
    v14 = v13;

    if (v12 == 0x6F684369746C756DLL && v14 == v10)
    {
      goto LABEL_17;
    }

    v7 = v10;
    v16 = sub_21BA8899C();

    if (v16)
    {
      goto LABEL_18;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_68;
    }
  }

  v8 = MEMORY[0x21CEFD920](v6, v4);
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:

  v17 = [v50 children];
  v4 = sub_21BA87F0C();

  if (v4 >> 62)
  {
    v18 = sub_21BA884DC();
    if (v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_20:
      v19 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x21CEFD920](v19, v4);
        }

        else
        {
          if (v19 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v20 = *(v4 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_60;
        }

        v23 = [v20 name];
        v24 = sub_21BA87CBC();
        v26 = v25;

        if (v24 == a1 && v26 == a2)
        {
          break;
        }

        v28 = sub_21BA8899C();

        if (v28)
        {
          goto LABEL_34;
        }

        ++v19;
        if (v22 == v18)
        {
          goto LABEL_67;
        }
      }

LABEL_34:

      v29 = OBJC_IVAR___RUIXMLElement_mutableChildren;
      v30 = v50;
      swift_beginAccess();
      v31 = v21;
      v32 = sub_21BA684BC(&v50[v29], v31);

      v33 = *&v50[v29];
      if (!(v33 >> 62))
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34 >= v32)
        {
          goto LABEL_36;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v34 = sub_21BA884DC();
      if (v34 < v32)
      {
        goto LABEL_72;
      }

LABEL_36:
      sub_21BA67234(v32, v34);
      swift_endAccess();
      v35 = [v53 children];
      v30 = sub_21BA87F0C();

      a2 = v31;
      if (v30 >> 62)
      {
LABEL_73:
        v4 = sub_21BA884DC();
      }

      else
      {
        v4 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v4)
      {
LABEL_52:

        v46 = objc_allocWithZone(RUIXMLElement);
        v47 = sub_21BA87C8C();
        v38 = [v46 initWithName_];

LABEL_55:
        v48 = [v38 parent];
        if (v48)
        {
        }

        else
        {
          [v53 appendChild_];
        }

        [v38 appendChild_];

        return;
      }

      v36 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x21CEFD920](v36, v30);
        }

        else
        {
          if (v36 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v37 = *(v30 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_62;
        }

        v40 = [v37 name];
        v41 = sub_21BA87CBC();
        v43 = v42;

        if (v41 == 0x746E65746E6F63 && v43 == 0xE700000000000000)
        {

LABEL_54:

          goto LABEL_55;
        }

        v45 = sub_21BA8899C();

        if (v45)
        {
          goto LABEL_54;
        }

        ++v36;
        if (v39 == v4)
        {
          goto LABEL_52;
        }
      }
    }
  }

LABEL_67:

LABEL_68:
}

void sub_21BA62F98()
{
  v1 = v0;
  v2 = sub_21BA6347C(0x656956656C626174, 0xE900000000000077);
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BA6347C(0x6F684369746C756DLL, 0xEF77656956656369);
    if (v4)
    {
      v5 = v4;
      v6 = [v3 parent];
      if (v6)
      {
        v7 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21BA92F40;
        v9 = [v5 name];
        v10 = sub_21BA87CBC();
        v12 = v11;

        *(inited + 32) = v10;
        *(inited + 40) = v12;
        v13 = sub_21BA3658C(inited);
        swift_setDeallocating();
        sub_21B9BADFC(inited + 32);
        v14 = swift_initStackObject();
        *(v14 + 16) = xmmword_21BA92F40;
        v15 = [v7 name];
        v16 = sub_21BA87CBC();
        v18 = v17;

        *(v14 + 32) = v16;
        *(v14 + 40) = v18;
        v19 = sub_21BA3658C(v14);
        swift_setDeallocating();
        sub_21B9BADFC(v14 + 32);
        v46[0] = MEMORY[0x277D84F90];

        sub_21BA66460(v46, 0x7FFFFFFFFFFFFFFFLL, v1, v13, v19);
        swift_bridgeObjectRelease_n();
        v20 = swift_bridgeObjectRelease_n();
        type metadata accessor for RUIXMLElement(v20);
        v21 = sub_21BA87EFC();

        [v7 appendChildren_];
      }

      else
      {
      }
    }

    v22 = [v3 children];
    type metadata accessor for RUIXMLElement(v22);
    v23 = sub_21BA87F0C();

    v42 = v1;
    v43 = v3;
    v24 = v23 & 0xFFFFFFFFFFFFFF8;
    if (v23 >> 62)
    {
LABEL_32:
      v25 = sub_21BA884DC();
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v23 & 0xC000000000000001;
    v44 = v23;
    v27 = v23 + 32;
    v23 = 0xE700000000000000;
    while (1)
    {
      if (!v25)
      {
        v38 = 0;
        goto LABEL_25;
      }

      if (__OFSUB__(v25--, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v26)
      {
        v29 = MEMORY[0x21CEFD920](v25, v44);
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v25 >= *(v24 + 16))
        {
          goto LABEL_31;
        }

        v29 = *(v27 + 8 * v25);
      }

      v30 = v29;
      v31 = [v29 name];
      v32 = sub_21BA87CBC();
      v34 = v33;

      if (v32 == 0x6E6F6974636573 && v34 == 0xE700000000000000)
      {
        break;
      }

      v36 = sub_21BA8899C();

      if (v36)
      {
        goto LABEL_24;
      }
    }

LABEL_24:
    MEMORY[0x28223BE20](v37);
    v45 = v25;
    sub_21BA69454(&v45, v46);
    v38 = v46[0];
LABEL_25:

    if (!v38)
    {
      v38 = v43;
    }

    v39 = sub_21BA3658C(&unk_282D67568);
    swift_arrayDestroy();
    v40 = sub_21BA3658C(&unk_282D675A8);
    swift_arrayDestroy();
    v46[0] = MEMORY[0x277D84F90];

    sub_21BA66460(v46, 0x7FFFFFFFFFFFFFFFLL, v42, v39, v40);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v41 = sub_21BA87EFC();

    [v38 appendChildren_];
  }
}

void *sub_21BA6347C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 name];
  v6 = sub_21BA87CBC();
  v8 = v7;

  if (v6 == a1 && v8 == a2)
  {

    v12 = v2;
  }

  else
  {
    v10 = sub_21BA8899C();

    if (v10)
    {
      v11 = v2;
    }

    else
    {
      v13 = [v2 children];
      type metadata accessor for RUIXMLElement(v13);
      v14 = sub_21BA87F0C();

      if (v14 >> 62)
      {
LABEL_23:
        v15 = sub_21BA884DC();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v15 != i; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CEFD920](i, v14);
        }

        else
        {
          if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v17 = *(v14 + 8 * i + 32);
        }

        v18 = v17;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v2 = sub_21BA6347C(a1, a2);

        if (v2)
        {

          return v2;
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t sub_21BA63620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_21BA65550(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_21BA659F8(a3, a4, sub_21B940E44);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_21BA47EF8();
        v16 = v18;
      }

      result = sub_21BA653A0(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

void *sub_21BA6373C(void *a1)
{
  v3 = [v1 name];
  v4 = sub_21BA87CBC();
  v6 = v5;

  v7 = [a1 name];
  v8 = sub_21BA87CBC();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {

LABEL_8:
    v13 = [v1 attributes];
    v14 = sub_21BA87BCC();

    v15 = [a1 attributes];
    v16 = sub_21BA87BCC();

    LOBYTE(v15) = sub_21B9E3688(v14, v16);

    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

    v17 = [v1 stringValue];
    if (v17)
    {
      v18 = v17;
      v19 = sub_21BA87CBC();
      v21 = v20;

      v22 = sub_21BA4588C(v19, v21);
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = [a1 stringValue];
    if (v25)
    {
      v26 = v25;
      v27 = sub_21BA87CBC();
      v29 = v28;

      v30 = sub_21BA4588C(v27, v29);
      v32 = v31;

      if (v24)
      {
        if (v32)
        {
          if (v22 == v30 && v24 == v32)
          {
          }

          else
          {
            v39 = sub_21BA8899C();

            if ((v39 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

LABEL_35:
          v40 = v1;
          return v1;
        }
      }

      else if (!v32)
      {
        goto LABEL_35;
      }
    }

    else if (!v24)
    {
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  v12 = sub_21BA8899C();

  if (v12)
  {
    goto LABEL_8;
  }

LABEL_22:
  v33 = [v1 children];
  type metadata accessor for RUIXMLElement(v33);
  v34 = sub_21BA87F0C();

  if (v34 >> 62)
  {
LABEL_39:
    v35 = sub_21BA884DC();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v35 != i; ++i)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x21CEFD920](i, v34);
    }

    else
    {
      if (i >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v37 = *(v34 + 8 * i + 32);
    }

    v38 = v37;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v1 = sub_21BA6373C(a1);

    if (v1)
    {

      return v1;
    }
  }

  return 0;
}

void sub_21BA63AB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = [v3 name];
  v9 = sub_21BA87CBC();
  v11 = v10;

  if (v9 == a1 && v11 == a2)
  {
  }

  else
  {
    v13 = sub_21BA8899C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v14 = v4;
  MEMORY[0x21CEFD240]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21BA87F3C();
  }

  sub_21BA87F6C();
LABEL_11:
  v15 = [v4 children];
  type metadata accessor for RUIXMLElement(v15);
  v16 = sub_21BA87F0C();

  if (v16 >> 62)
  {
    v17 = sub_21BA884DC();
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v17; ++i)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x21CEFD920](i, v16);
    }

    else
    {
      v19 = *(v16 + 8 * i + 32);
    }

    v20 = v19;
    sub_21BA63AB0(a1, a2, a3);
  }

LABEL_20:
}

uint64_t sub_21BA63C88(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA8673C();
  v44 = *(v6 - 8);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 parent];
  if (result)
  {
    v11 = result;
    v12 = [a1 name];
    v13 = sub_21BA87CBC();
    v15 = v14;

    v16 = sub_21BA2C764(v13, v15, a2);

    if ((v16 & 1) != 0 && (v17 = [v11 name], v18 = sub_21BA87CBC(), v20 = v19, v17, LOBYTE(v17) = sub_21BA2C764(v18, v20, a3), , (v17 & 1) == 0))
    {
      v21 = sub_21B9E02D0();
      (*(v44 + 16))(v9, v21, v6);
      v22 = a1;
      v23 = v11;

      v24 = sub_21BA8671C();
      v25 = sub_21BA881FC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v42 = a3;
        v27 = v26;
        v43 = swift_slowAlloc();
        v45 = v43;
        *v27 = 136315650;
        v28 = [v22 name];
        v29 = sub_21BA87CBC();
        v31 = v30;

        v32 = sub_21B9B2A60(v29, v31, &v45);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        v33 = [v23 &selRef_navBarActivityIndicatorStyle];
        v34 = sub_21BA87CBC();
        v36 = v35;

        v37 = sub_21B9B2A60(v34, v36, &v45);

        *(v27 + 14) = v37;
        *(v27 + 22) = 2080;
        v38 = sub_21BA880DC();
        v40 = sub_21B9B2A60(v38, v39, &v45);

        *(v27 + 24) = v40;
        _os_log_impl(&dword_21B93D000, v24, v25, "Found %s inside %s. Expected in %s", v27, 0x20u);
        v41 = v43;
        swift_arrayDestroy();
        MEMORY[0x21CEFF180](v41, -1, -1);
        MEMORY[0x21CEFF180](v27, -1, -1);
      }

      else
      {
      }

      (*(v44 + 8))(v9, v6);
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21BA6401C(char *a1)
{
  v3 = sub_21BA860EC();
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x28223BE20](v3);
  v106 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0x800000021BAA6270;
  v6 = [a1 attributes];
  v7 = sub_21BA87BCC();

  if (*(v7 + 16) && (sub_21BA659F8(0xD000000000000015, 0x800000021BAA6270, sub_21B940E44), (v8 & 1) != 0))
  {

    v9 = sub_21BA87C8C();

    v10 = [v9 BOOLValue];
  }

  else
  {

    v10 = 0;
  }

  v109 = a1;
  v11 = [a1 name];
  v12 = sub_21BA87CBC();
  v14 = v13;

  if (v12 == 0x6E49726576726573 && v14 == 0xEA00000000006F66)
  {
  }

  else
  {
    v15 = sub_21BA8899C();

    if (((v15 | v10) & 1) == 0)
    {
      v23 = v109;
      v1 = v109;
      if (v1)
      {
        goto LABEL_38;
      }

      return 0;
    }
  }

  v16 = [v109 attributes];
  v17 = sub_21BA87BCC();

  v18 = sub_21BA48270(MEMORY[0x277D84F90]);
  v19 = v17 + 64;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = ((v20 + 63) >> 6);
  v111 = v17;

  v24 = 0;
  v110 = 0x800000021BAA6270;
  while (v22)
  {
    v27 = v24;
LABEL_19:
    v28 = (v27 << 10) | (16 * __clz(__rbit64(v22)));
    v29 = *(v111 + 48) + v28;
    v1 = *v29;
    v30 = *(v29 + 8);
    v31 = (*(v111 + 56) + v28);
    v33 = *v31;
    v32 = v31[1];
    v34 = *v29 == 0xD000000000000015 && v5 == v30;
    if (v34 || (sub_21BA8899C() & 1) != 0)
    {
      v113 = v33;

      v112 = v32;
    }

    else
    {
      v112 = 0xEA00000000007D64;
      v113 = 0x657463616465527BLL;
    }

    swift_bridgeObjectRetain_n();
    v114 = v32;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v18;
    v37 = sub_21BA659F8(v1, v30, sub_21B940E44);
    v38 = v18[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v41 = v36;
    if (v18[3] >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21BA47EF8();
      }
    }

    else
    {
      sub_21BA47C38(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_21BA659F8(v1, v30, sub_21B940E44);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_73;
      }

      v37 = v42;
    }

    v44 = v113;
    v22 &= v22 - 1;
    if (v41)
    {

      v18 = v117;
      v25 = (*(v117 + 56) + 16 * v37);
      v26 = v112;
      *v25 = v44;
      v25[1] = v26;
    }

    else
    {
      v18 = v117;
      *(v117 + 8 * (v37 >> 6) + 64) |= 1 << v37;
      v45 = (v18[6] + 16 * v37);
      *v45 = v1;
      v45[1] = v30;
      v46 = (v18[7] + 16 * v37);
      v47 = v112;
      *v46 = v44;
      v46[1] = v47;

      v48 = v18[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_55;
      }

      v18[2] = v50;
    }

    v24 = v27;
    v5 = v110;
  }

  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v27 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v27);
    ++v24;
    if (v22)
    {
      goto LABEL_19;
    }
  }

  v23 = v109;
  v51 = [v109 name];
  if (!v51)
  {
    sub_21BA87CBC();
    v51 = sub_21BA87C8C();
  }

  v52 = objc_allocWithZone(RUIXMLElement);
  v53 = sub_21BA87BBC();

  v1 = [v52 initWithName:v51 attributes:v53];

  [v1 setStringValue_];
  if (!v1)
  {
    return 0;
  }

LABEL_38:
  v117 = 60;
  v118 = 0xE100000000000000;
  v54 = [v23 name];
  v55 = sub_21BA87CBC();
  v57 = v56;

  MEMORY[0x21CEFD130](v55, v57);

  v58 = sub_21BA64FF0();
  MEMORY[0x21CEFD130](v58);

  v22 = v117;
  v19 = v118;
  v119 = v117;
  v120 = v118;
  v59 = OBJC_IVAR___RUIXMLElement_mutableChildren;
  swift_beginAccess();
  v60 = *&v23[v59];
  if (v60 >> 62)
  {
LABEL_56:
    v77 = sub_21BA884DC();
    v62 = &selRef_setTableHeaderView_;
    if (v77)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = &selRef_setTableHeaderView_;
    if (v61)
    {
      goto LABEL_40;
    }
  }

  v78 = [v23 v62[125]];
  if (!v78)
  {
    goto LABEL_61;
  }

  v79 = v78;
  v80 = sub_21BA87CBC();
  v82 = v81;

  v83 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v83 = v80 & 0xFFFFFFFFFFFFLL;
  }

  if (!v83)
  {
LABEL_61:
    v115 = v22;
    v116 = v19;

    MEMORY[0x21CEFD130](4075296, 0xE300000000000000);
LABEL_71:

    return v115;
  }

LABEL_40:
  MEMORY[0x21CEFD130](62, 0xE100000000000000);
  v63 = [v1 children];
  type metadata accessor for RUIXMLElement(v63);
  v64 = sub_21BA87F0C();

  if (!(v64 >> 62))
  {
    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v65)
    {
      goto LABEL_42;
    }

LABEL_63:

    v67 = MEMORY[0x277D84F90];
LABEL_64:
    v115 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D258);
    sub_21B9B35B8(&qword_27CD9D260, &qword_27CD9D258);
    v84 = sub_21BA87C4C();
    v86 = v85;

    MEMORY[0x21CEFD130](v84, v86);

    v87 = v109;
    v88 = [v109 stringValue];
    if (v88)
    {
      v89 = v88;
      v90 = sub_21BA87CBC();
      v92 = v91;

      v115 = v90;
      v116 = v92;
      v93 = v106;
      sub_21BA860CC();
      sub_21B9BAB9C();
      v94 = sub_21BA883EC();
      v96 = v95;
      (*(v107 + 8))(v93, v108);

      v97 = HIBYTE(v96) & 0xF;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v97 = v94 & 0xFFFFFFFFFFFFLL;
      }

      if (v97)
      {
        v115 = 0x41544144435B213CLL;
        v116 = 0xE90000000000005BLL;
        MEMORY[0x21CEFD130](v94, v96);

        MEMORY[0x21CEFD130](4087133, 0xE300000000000000);
        MEMORY[0x21CEFD130](v115, v116);
      }
    }

    v99 = v119;
    v98 = v120;
    v115 = 12092;
    v116 = 0xE200000000000000;
    v100 = [v87 name];
    v101 = sub_21BA87CBC();
    v103 = v102;

    MEMORY[0x21CEFD130](v101, v103);

    MEMORY[0x21CEFD130](62, 0xE100000000000000);
    v104 = v115;
    v105 = v116;
    v115 = v99;
    v116 = v98;

    MEMORY[0x21CEFD130](v104, v105);

    goto LABEL_71;
  }

  v65 = sub_21BA884DC();
  if (!v65)
  {
    goto LABEL_63;
  }

LABEL_42:
  v115 = MEMORY[0x277D84F90];
  sub_21B9BCCB8(0, v65 & ~(v65 >> 63), 0);
  if ((v65 & 0x8000000000000000) == 0)
  {
    v114 = v1;
    v66 = 0;
    v67 = v115;
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x21CEFD920](v66, v64);
      }

      else
      {
        v68 = *(v64 + 8 * v66 + 32);
      }

      v69 = v68;
      v70 = sub_21BA6401C();
      v72 = v71;

      v115 = v67;
      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_21B9BCCB8((v73 > 1), v74 + 1, 1);
        v67 = v115;
      }

      ++v66;
      *(v67 + 16) = v74 + 1;
      v75 = v67 + 16 * v74;
      *(v75 + 32) = v70;
      *(v75 + 40) = v72;
    }

    while (v65 != v66);

    v1 = v114;
    goto LABEL_64;
  }

  __break(1u);
LABEL_73:
  result = sub_21BA88B0C();
  __break(1u);
  return result;
}

char *sub_21BA64A9C(void *a1)
{
  v2 = sub_21BA860EC();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = 60;
  v66 = 0xE100000000000000;
  v4 = a1;
  v5 = [v4 name];
  v6 = sub_21BA87CBC();
  v8 = v7;

  MEMORY[0x21CEFD130](v6, v8);

  v9 = sub_21BA64FF0();
  MEMORY[0x21CEFD130](v9);

  v10 = v65;
  v11 = v66;
  v67 = v65;
  v68 = v66;
  v12 = OBJC_IVAR___RUIXMLElement_mutableChildren;
  swift_beginAccess();
  v13 = *&v4[v12];
  if (v13 >> 62)
  {
    v30 = sub_21BA884DC();
    v15 = &selRef_setTableHeaderView_;
    if (v30)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = &selRef_setTableHeaderView_;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v31 = [v4 v15[125]];
  if (!v31)
  {
    goto LABEL_19;
  }

  v32 = v31;
  v33 = sub_21BA87CBC();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
LABEL_19:
    v63 = v10;
    v64 = v11;

    MEMORY[0x21CEFD130](4075296, 0xE300000000000000);
LABEL_29:

    return v63;
  }

LABEL_3:
  MEMORY[0x21CEFD130](62, 0xE100000000000000);
  v16 = [v4 children];
  type metadata accessor for RUIXMLElement(v16);
  v17 = sub_21BA87F0C();

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_21:

    v21 = MEMORY[0x277D84F90];
LABEL_22:
    v63 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D258);
    sub_21B9B35B8(&qword_27CD9D260, &qword_27CD9D258);
    v37 = sub_21BA87C4C();
    v39 = v38;

    MEMORY[0x21CEFD130](v37, v39);

    v40 = [v4 stringValue];
    if (v40)
    {
      v41 = v40;
      v42 = sub_21BA87CBC();
      v44 = v43;

      v63 = v42;
      v64 = v44;
      v45 = v60;
      sub_21BA860CC();
      sub_21B9BAB9C();
      v46 = sub_21BA883EC();
      v48 = v47;
      (*(v61 + 8))(v45, v62);

      v49 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v49 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {
        v63 = 0x41544144435B213CLL;
        v64 = 0xE90000000000005BLL;
        MEMORY[0x21CEFD130](v46, v48);

        MEMORY[0x21CEFD130](4087133, 0xE300000000000000);
        MEMORY[0x21CEFD130](v63, v64);
      }
    }

    v50 = v67;
    v51 = v68;
    v63 = 12092;
    v64 = 0xE200000000000000;
    v52 = [v4 name];
    v53 = sub_21BA87CBC();
    v55 = v54;

    MEMORY[0x21CEFD130](v53, v55);

    MEMORY[0x21CEFD130](62, 0xE100000000000000);
    v56 = v63;
    v57 = v64;
    v63 = v50;
    v64 = v51;

    MEMORY[0x21CEFD130](v56, v57);

    goto LABEL_29;
  }

  v18 = sub_21BA884DC();
  if (!v18)
  {
    goto LABEL_21;
  }

LABEL_5:
  v63 = MEMORY[0x277D84F90];
  result = sub_21B9BCCB8(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v59 = v4;
    v20 = 0;
    v21 = v63;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x21CEFD920](v20, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = sub_21BA64A9C();
      v26 = v25;

      v63 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_21B9BCCB8((v27 > 1), v28 + 1, 1);
        v21 = v63;
      }

      ++v20;
      *(v21 + 16) = v28 + 1;
      v29 = v21 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
    }

    while (v18 != v20);

    v4 = v59;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA64FF0()
{
  v1 = [v0 attributes];
  v2 = sub_21BA87BCC();

  v3 = *(v2 + 16);

  if (!v3)
  {
    return 0;
  }

  v4 = [v0 attributes];
  v5 = sub_21BA87BCC();

  MEMORY[0x28223BE20](v6);
  sub_21BA687CC(v5, sub_21BA69128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D258);
  sub_21B9B35B8(&qword_27CD9D260, &qword_27CD9D258);
  v7 = sub_21BA87C4C();
  v9 = v8;

  MEMORY[0x21CEFD130](v7, v9);

  return 32;
}

void sub_21BA65214(void *a1)
{
  v1 = sub_21BA6373C(a1);
  if (v1)
  {
    v2 = OBJC_IVAR___RUIXMLElement_mutableChildren;
    v3 = v1;
    swift_beginAccess();
    *&v3[v2] = MEMORY[0x277D84F90];

    type metadata accessor for RUIXMLElement(v4);
    v5 = sub_21BA87EFC();
    [v3 appendChildren_];
  }
}

uint64_t sub_21BA652B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21BA884DC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21BA884DC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21BA65700(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21BA657BC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21BA653A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BA884AC() + 1) & ~v5;
    do
    {
      sub_21BA88BAC();

      sub_21BA87D8C();
      v9 = sub_21BA88BCC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21BA65550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21BA659F8(a3, a4, sub_21B940E44);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21BA47C38(v18, a5 & 1);
      v13 = sub_21BA659F8(a3, a4, sub_21B940E44);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_21BA88B0C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21BA47EF8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_21BA65700(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_21BA884DC();
    }

    result = sub_21BA885DC();
    *v1 = result;
  }

  return result;
}

uint64_t sub_21BA657BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21BA884DC();
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
      result = sub_21BA884DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21B9B35B8(&qword_27CD9F890, &qword_27CD9F888);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F888);
            v9 = sub_21BA6595C(v13, i, a3);
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
        type metadata accessor for RUIXMLElement(result);
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

void (*sub_21BA6595C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEFD920](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21BA659DC;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA659F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  v5 = sub_21BA88BCC();

  return a3(a1, a2, v5);
}

uint64_t sub_21BA65A90(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21BA884DC();
  }

  return sub_21BA885DC();
}

uint64_t sub_21BA65AF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

unint64_t sub_21BA65B3C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x21CEFD920](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_21BA65BA8(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(RUIXMLElement);
  v6 = sub_21BA87C8C();
  v7 = sub_21BA87BBC();
  v8 = [v5 initWithName:v6 attributes:v7];

  v9 = OBJC_IVAR___RUIXMLParserDelegate__stack;
  swift_beginAccess();
  v10 = *&v2[v9];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v2[v9] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_21BA48164(0, *(v10 + 2) + 1, 1, v10);
    *&v2[v9] = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_21BA48164((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *&v2[v9] = v10;
  swift_endAccess();
  v15 = [v2 xmlElement];
  [v15 appendChild_];

  v16 = OBJC_IVAR___RUIXMLParserDelegate__xmlElement;
  v17 = *&v2[OBJC_IVAR___RUIXMLParserDelegate__xmlElement];
  *&v2[OBJC_IVAR___RUIXMLParserDelegate__xmlElement] = v8;

  if (!*&v2[OBJC_IVAR___RUIXMLParserDelegate_root])
  {
    v18 = *&v2[v16];
    *&v2[OBJC_IVAR___RUIXMLParserDelegate_root] = v18;

    v19 = v18;
  }
}

void sub_21BA65D80()
{
  v1 = sub_21BA87D1C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21BA87CFC();
  v2 = sub_21BA87CDC();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = [v0 xmlElement];
    if (v6 && (v7 = v6, v8 = [v6 stringValue], v7, v8))
    {
      v9 = sub_21BA87CBC();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = [v0 xmlElement];
    if (v12)
    {
      v13 = v12;

      MEMORY[0x21CEFD130](v5, v4);

      v14 = sub_21BA87C8C();

      [v13 setStringValue_];
    }

    else
    {
    }
  }
}

void sub_21BA65F1C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 xmlElement];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 stringValue];

    if (v7)
    {
      sub_21BA87CBC();
    }
  }

  v8 = [v2 xmlElement];
  if (v8)
  {
    v9 = v8;

    MEMORY[0x21CEFD130](a1, a2);

    v10 = sub_21BA87C8C();

    [v9 setStringValue_];
  }

  else
  {
  }
}

void sub_21BA66074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 xmlElement];
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v6;
  v8 = [v3 stack];
  v9 = sub_21BA87F0C();

  v10 = *(v9 + 16);
  if (!v10)
  {

LABEL_24:
    sub_21BA8859C();
    MEMORY[0x21CEFD130](0x6D656C6520646E65, 0xEC00000020746E65);
    MEMORY[0x21CEFD130](a1, a2);
    MEMORY[0x21CEFD130](0xD000000000000025, 0x800000021BAA6340);
    v24 = [v3 stack];
    v25 = sub_21BA87F0C();

    if (*(v25 + 16))
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D548);
    v26 = sub_21BA87D2C();
    MEMORY[0x21CEFD130](v26);

    goto LABEL_27;
  }

  v11 = (v9 + 16 + 16 * v10);
  v13 = *v11;
  v12 = v11[1];

  if (v13 == a1 && v12 == a2)
  {
  }

  else
  {
    v15 = sub_21BA8899C();

    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v16 = OBJC_IVAR___RUIXMLParserDelegate__stack;
  swift_beginAccess();
  v17 = *&v3[v16];
  if (!*(v17 + 2))
  {
    __break(1u);
LABEL_20:
    v17 = sub_21BA65A7C(v17);
    v18 = *(v17 + 2);
    if (v18)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

  v18 = *(v17 + 2);
  if (!v18)
  {
LABEL_21:
    __break(1u);
LABEL_27:
    sub_21BA886DC();
    __break(1u);
    return;
  }

LABEL_13:
  *(v17 + 2) = v18 - 1;
  *&v3[v16] = v17;
  swift_endAccess();

  v19 = [v7 parent];

  if (v19)
  {
    v20 = OBJC_IVAR___RUIXMLParserDelegate__xmlElement;
    v21 = *&v3[OBJC_IVAR___RUIXMLParserDelegate__xmlElement];
    *&v3[OBJC_IVAR___RUIXMLParserDelegate__xmlElement] = v19;

    if (!*&v3[OBJC_IVAR___RUIXMLParserDelegate_root])
    {
      v22 = *&v3[v20];
      *&v3[OBJC_IVAR___RUIXMLParserDelegate_root] = v22;

      v23 = v22;
    }
  }
}

unint64_t sub_21BA6640C()
{
  result = qword_27CD9F7E8;
  if (!qword_27CD9F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F7E8);
  }

  return result;
}

void sub_21BA66460(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21BA8658C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v35 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >= 1)
  {
    v34 = a2 - 1;

    v13 = sub_21BA3658C(&unk_282D67448);
    sub_21B9BADFC(&unk_282D67468);
    v14 = [a3 name];
    v15 = sub_21BA87CBC();
    v17 = v16;

    LOBYTE(v14) = sub_21BA2C764(v15, v17, v13);

    if (v14)
    {
    }

    else
    {
      v30 = v11;
      v31 = v10;
      sub_21BA8657C();
      v18 = [a3 children];
      type metadata accessor for RUIXMLElement(v18);
      v19 = sub_21BA87F0C();

      v29[1] = a3;
      if (v19 >> 62)
      {
        goto LABEL_21;
      }

      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v34; v20; i = v34)
      {
        v22 = 0;
        v23 = v19 & 0xC000000000000001;
        v36 = v19 & 0xFFFFFFFFFFFFFF8;
        v32 = v19 & 0xC000000000000001;
        v33 = a5;
        while (1)
        {
          if (v23)
          {
            v24 = MEMORY[0x21CEFD920](v22, v19);
          }

          else
          {
            if (v22 >= *(v36 + 16))
            {
              goto LABEL_20;
            }

            v24 = *(v19 + 8 * v22 + 32);
          }

          v25 = v24;
          v26 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (sub_21BA63C88(v24, a4, a5))
          {
            v27 = v25;
            MEMORY[0x21CEFD240]();
            if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21BA87F3C();
            }

            sub_21BA87F6C();
            sub_21BA8656C();
            a5 = v33;
            i = v34;
            v23 = v32;
          }

          sub_21BA66460(a1, i, v25, a4, a5);

          ++v22;
          if (v26 == v20)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v20 = sub_21BA884DC();
      }

LABEL_22:

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F888);
      sub_21B9B35B8(&qword_27CD9F898, &qword_27CD9F888);
      sub_21B9B35B8(&unk_27CD9F8A0, &qword_27CD9F888);
      v28 = v35;
      sub_21BA881CC();
      swift_endAccess();
      (*(v30 + 8))(v28, v31);
    }
  }
}

void sub_21BA66890(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_21BA8658C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >= 1)
  {
    v48 = a4;
    v11 = sub_21BA3658C(&unk_282D67478);
    sub_21B9BADFC(&unk_282D67498);
    v12 = [a3 name];
    v13 = sub_21BA87CBC();
    v15 = v14;

    LOBYTE(v12) = sub_21BA2C764(v13, v15, v11);

    if (v12)
    {
      v16 = v48;
    }

    else
    {
      v40 = v9;
      v41 = v8;
      sub_21BA8657C();
      v17 = [a3 children];
      type metadata accessor for RUIXMLElement(v17);
      v18 = sub_21BA87F0C();

      v42 = v18;
      v39 = a3;
      if (v18 >> 62)
      {
        goto LABEL_30;
      }

      for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
      {
        v20 = 0;
        v46 = v42 & 0xFFFFFFFFFFFFFF8;
        v47 = v42 & 0xC000000000000001;
        v44 = v42 + 32;
        v45 = a1;
        while (1)
        {
          if (v47)
          {
            v23 = MEMORY[0x21CEFD920](v20, v42);
          }

          else
          {
            if (v20 >= *(v46 + 16))
            {
              goto LABEL_29;
            }

            v23 = *(v44 + 8 * v20);
          }

          v24 = v23;
          v25 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          a1 = i;
          v26 = sub_21BA3658C(&unk_282D673B8);
          swift_arrayDestroy();
          v27 = [v24 name];
          v28 = sub_21BA87CBC();
          v30 = v29;

          if (*(v26 + 16) && (sub_21BA88BAC(), sub_21BA87D8C(), v31 = sub_21BA88BCC(), v32 = -1 << *(v26 + 32), v33 = v31 & ~v32, ((*(v26 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = (*(v26 + 48) + 16 * v33);
              v36 = *v35 == v28 && v35[1] == v30;
              if (v36 || (sub_21BA8899C() & 1) != 0)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*(v26 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_24;
              }
            }

            i = a1;
            v21 = v45;
          }

          else
          {
LABEL_24:

            v37 = v24;
            v21 = v45;
            MEMORY[0x21CEFD240]();
            i = a1;
            if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21BA87F3C();
            }

            sub_21BA87F6C();
            sub_21BA8656C();
          }

          v22 = v48;
          sub_21BA66890(v21, 0, v24, v22);

          ++v20;
          if (v25 == i)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_31:

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F888);
      sub_21B9B35B8(&qword_27CD9F898, &qword_27CD9F888);
      sub_21B9B35B8(&unk_27CD9F8A0, &qword_27CD9F888);
      v38 = v43;
      sub_21BA881CC();
      swift_endAccess();
      (*(v40 + 8))(v38, v41);
    }
  }
}

unint64_t sub_21BA66D94(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_21BA884DC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEFD920](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_21B9BDFC0(0, &qword_27CD9F880);
    v7 = sub_21BA882FC();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_21BA66EA8(unint64_t *a1)
{
  v3 = *a1;
  result = sub_21BA66D94(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_21BA884DC();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_27CD9F880;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_21BA884DC())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x21CEFD920](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_21B9BDFC0(0, v8);
    v12 = sub_21BA882FC();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CEFD920](v6, v3);
          v14 = MEMORY[0x21CEFD920](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_21BA65A90(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_21BA65A90(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
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
  return sub_21BA884DC();
}

uint64_t sub_21BA67138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RUIXMLElement(a1);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21BA884DC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_21BA884DC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21BA67234(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21BA884DC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_21BA884DC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_21BA65700(result);

  return sub_21BA67138(v4, v2, 0);
}

void sub_21BA6730C(void *a1, id a2)
{
  v2 = a2;
  v3 = &selRef_stack;
  v4 = [a2 attributes];
  v5 = sub_21BA87BCC();

  v104 = v2;
  if (!*(v5 + 16))
  {

LABEL_5:
    v8 = [a1 attributes];
    v9 = sub_21BA87BCC();

    if (*(v9 + 16) && (v10 = sub_21BA659F8(0x6D496D6574737973, 0xEB00000000656761, sub_21B940E44), (v11 & 1) != 0))
    {
      v12 = (*(v9 + 56) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = [v2 attributes];
    sub_21BA87BCC();

    sub_21BA63620(v13, v14, 0x6D496D6574737973, 0xEB00000000656761);
    v16 = sub_21BA87BBC();

    [v2 setAttributes_];

    v17 = [a1 attributes];
    v18 = sub_21BA87BCC();

    if (*(v18 + 16))
    {
      v19 = sub_21BA659F8(0xD000000000000013, 0x800000021BAA6080, sub_21B940E44);
      if (v20)
      {
        v21 = (*(v18 + 56) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v24 = [v104 attributes];
    sub_21BA87BCC();

    sub_21BA63620(v22, v23, 0xD000000000000013, 0x800000021BAA6080);
    v25 = sub_21BA87BBC();

    [v104 setAttributes_];

    v26 = [a1 attributes];
    v27 = sub_21BA87BCC();

    if (*(v27 + 16) && (v28 = sub_21BA659F8(0xD000000000000010, 0x800000021BAA6290, sub_21B940E44), (v29 & 1) != 0))
    {
      v30 = (*(v27 + 56) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v33 = [v104 attributes];
    sub_21BA87BCC();

    sub_21BA63620(v31, v32, 0xD000000000000010, 0x800000021BAA6290);
    v34 = sub_21BA87BBC();

    [v104 setAttributes_];

    v35 = [a1 attributes];
    v36 = sub_21BA87BCC();

    if (*(v36 + 16) && (v37 = sub_21BA659F8(0xD000000000000011, 0x800000021BAA62B0, sub_21B940E44), (v38 & 1) != 0))
    {
      v39 = (*(v36 + 56) + 16 * v37);
      v40 = *v39;
      v41 = v39[1];
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    v42 = [v104 attributes];
    sub_21BA87BCC();

    v2 = v104;
    sub_21BA63620(v40, v41, 0xD000000000000011, 0x800000021BAA62B0);
    v3 = &selRef_stack;
    v43 = sub_21BA87BBC();

    [v104 setAttributes_];

    goto LABEL_23;
  }

  sub_21BA659F8(0x6D496D6574737973, 0xEB00000000656761, sub_21B940E44);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  for (i = 1; i != 7; ++i)
  {
    if (i != 1)
    {
      v45 = sub_21BA8889C();
      MEMORY[0x21CEFD130](v45);

      MEMORY[0x21CEFD130](120, 0xE100000000000000);
    }

    v46 = [v2 v3[367]];
    v47 = sub_21BA87BCC();

    if (*(v47 + 16))
    {
      sub_21BA659F8(0x6567616D69, 0xE500000000000000, sub_21B940E44);
      if (v48)
      {

        continue;
      }
    }

    v49 = [a1 v3[367]];
    v50 = sub_21BA87BCC();

    if (*(v50 + 16) && (v51 = sub_21BA659F8(0x6567616D69, 0xE500000000000000, sub_21B940E44), (v52 & 1) != 0))
    {
      v53 = (*(v50 + 56) + 16 * v51);
      v54 = *v53;
      v55 = v53[1];
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    v56 = [v2 v3[367]];
    v57 = sub_21BA87BCC();

    if (!v55)
    {
      v72 = sub_21BA659F8(0x6567616D69, 0xE500000000000000, sub_21B940E44);
      v74 = v73;

      if (v74)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_21BA47EF8();
        }

        sub_21BA653A0(v72, v57);
      }

      goto LABEL_49;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = sub_21BA659F8(0x6567616D69, 0xE500000000000000, sub_21B940E44);
    v61 = v57[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      sub_21BA88B0C();
      __break(1u);
      return;
    }

    v64 = v59;
    if (v57[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v59 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_21BA47EF8();
        if ((v64 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_21BA47C38(v63, isUniquelyReferenced_nonNull_native);
      v65 = sub_21BA659F8(0x6567616D69, 0xE500000000000000, sub_21B940E44);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_72;
      }

      v60 = v65;
      if ((v64 & 1) == 0)
      {
LABEL_39:
        v57[(v60 >> 6) + 8] |= 1 << v60;
        v67 = (v57[6] + 16 * v60);
        *v67 = 0x6567616D69;
        v67[1] = 0xE500000000000000;
        v68 = (v57[7] + 16 * v60);
        *v68 = v54;
        v68[1] = v55;
        v69 = v57[2];
        v70 = __OFADD__(v69, 1);
        v71 = v69 + 1;
        if (v70)
        {
          goto LABEL_71;
        }

        v57[2] = v71;
        goto LABEL_48;
      }
    }

    v75 = (v57[7] + 16 * v60);
    *v75 = v54;
    v75[1] = v55;

LABEL_48:
    v2 = v104;
LABEL_49:
    v76 = sub_21BA87BBC();

    [v2 setAttributes_];

    v3 = &selRef_stack;
  }

  v77 = [v2 v3[367]];
  v78 = sub_21BA87BCC();

  if (!*(v78 + 16))
  {

LABEL_56:
    v81 = [a1 v3[367]];
    v82 = sub_21BA87BCC();

    if (*(v82 + 16) && (v83 = sub_21BA659F8(0x6469576567616D69, 0xEA00000000006874, sub_21B940E44), (v84 & 1) != 0))
    {
      v85 = (*(v82 + 56) + 16 * v83);
      v86 = *v85;
      v87 = v85[1];
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v88 = [v2 attributes];
    sub_21BA87BCC();

    v89 = v87;
    v3 = &selRef_stack;
    sub_21BA63620(v86, v89, 0x6469576567616D69, 0xEA00000000006874);
    v2 = v104;
    v90 = sub_21BA87BBC();

    [v104 setAttributes_];

    goto LABEL_61;
  }

  sub_21BA659F8(0x6469576567616D69, 0xEA00000000006874, sub_21B940E44);
  v80 = v79;

  if ((v80 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_61:
  v91 = [v2 v3[367]];
  v92 = sub_21BA87BCC();

  if (*(v92 + 16))
  {
    sub_21BA659F8(0x6965486567616D69, 0xEB00000000746867, sub_21B940E44);
    v94 = v93;

    if (v94)
    {
      return;
    }
  }

  else
  {
  }

  v95 = [a1 v3[367]];
  v96 = sub_21BA87BCC();

  if (*(v96 + 16) && (v97 = sub_21BA659F8(0x6965486567616D69, 0xEB00000000746867, sub_21B940E44), (v98 & 1) != 0))
  {
    v99 = (*(v96 + 56) + 16 * v97);
    v100 = *v99;
    v101 = v99[1];
  }

  else
  {
    v100 = 0;
    v101 = 0;
  }

  v102 = [v2 attributes];
  sub_21BA87BCC();

  sub_21BA63620(v100, v101, 0x6965486567616D69, 0xEB00000000746867);
  v103 = sub_21BA87BBC();

  [v2 setAttributes_];
}

uint64_t sub_21BA6804C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v45 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v50[0] = v17;
    v50[1] = v18;
    v50[2] = v20;
    v50[3] = v21;

    a2(&v46, v50);

    v22 = v46;
    v23 = v47;
    v24 = v48;
    v44 = v49;
    v25 = *v51;
    v27 = sub_21BA659F8(v46, v47, sub_21B940E44);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v45 & 1) == 0)
      {
        sub_21BA47EF8();
      }
    }

    else
    {
      sub_21BA47C38(v30, v45 & 1);
      v32 = sub_21BA659F8(v22, v23, sub_21B940E44);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v51;
    if (v31)
    {

      v12 = (v34[7] + 16 * v27);
      *v12 = v24;
      v12[1] = v44;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      v36 = (v34[7] + 16 * v27);
      *v36 = v24;
      v36[1] = v44;
      v37 = v34[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v34[2] = v39;
    }

    a4 = 1;
    v11 = v13;
    v6 = v41;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_21B9AFF68();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_21BA88B0C();
  __break(1u);
  return result;
}

unint64_t sub_21BA68320(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_21BA884DC();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x21CEFD920](v3, a1);
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 name];
    v7 = sub_21BA87CBC();
    v9 = v8;

    v10 = [a2 name];
    v11 = sub_21BA87CBC();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = sub_21BA8899C();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_21BA684BC(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_21BA68320(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_21BA884DC();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == sub_21BA884DC())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEFD920](v10, v7);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 name];
    v14 = sub_21BA87CBC();
    v16 = v15;

    v3 = v5;
    v17 = [v5 name];
    v18 = sub_21BA87CBC();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = sub_21BA8899C();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x21CEFD920](v33, v7);
        v23 = MEMORY[0x21CEFD920](v10, v7);
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_21BA65A90(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = sub_21BA65A90(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_21BA884DC();
}

uint64_t sub_21BA687CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21B9BCCB8(0, v3, 0);
    v40 = v41;
    v5 = v2 + 64;
    result = sub_21BA8849C();
    v6 = result;
    v7 = 0;
    v8 = *(v2 + 36);
    v34 = v2 + 72;
    v35 = v3;
    v36 = v8;
    v37 = v2 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v39 = v7;
      v11 = *(v2 + 56);
      v12 = (*(v2 + 48) + 16 * v6);
      v13 = v2;
      v14 = *v12;
      v15 = v12[1];
      v16 = (v11 + 16 * v6);
      v17 = *v16;
      v18 = v16[1];

      v19 = a2(v14, v15, v17, v18);
      v21 = v20;

      v22 = v40;
      v24 = *(v40 + 16);
      v23 = *(v40 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_21B9BCCB8((v23 > 1), v24 + 1, 1);
        v22 = v40;
      }

      *(v22 + 16) = v24 + 1;
      v25 = v22 + 16 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v21;
      v9 = 1 << *(v13 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v5 = v37;
      v26 = *(v37 + 8 * v10);
      if ((v26 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v13;
      v40 = v22;
      v27 = *(v13 + 36);
      v8 = v36;
      if (v36 != v27)
      {
        goto LABEL_27;
      }

      v28 = v26 & (-2 << (v6 & 0x3F));
      if (v28)
      {
        v9 = __clz(__rbit64(v28)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v10 << 6;
        v30 = v10 + 1;
        v31 = (v34 + 8 * v10);
        while (v30 < (v9 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_21BA69448(v6, v36, 0);
            v9 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_21BA69448(v6, v36, 0);
      }

LABEL_4:
      v7 = v39 + 1;
      v6 = v9;
      if (v39 + 1 == v35)
      {
        return v40;
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
    __break(1u);
  }

  return result;
}

uint64_t sub_21BA68A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BA87D1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BA860EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a1;
  v21[1] = a2;
  sub_21BA860CC();
  sub_21B9BAB9C();
  sub_21BA883EC();
  (*(v9 + 8))(v11, v8);
  sub_21BA87CFC();
  v12 = sub_21BA87CCC();
  v14 = v13;

  (*(v5 + 8))(v7, v4);
  if (v14 >> 60 != 15)
  {
    v16 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      v17 = v22;
      if (v16 != 2 || *(v12 + 16) == *(v12 + 24))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = v22;
      if (v16)
      {
        if (v12 == v12 >> 32)
        {
LABEL_12:
          v4 = 0;
LABEL_14:
          sub_21B9B91AC(v12, v14);
          return v4;
        }
      }

      else if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    v18 = Data.xmlElement()();
    if (!v17)
    {
      v19 = v18;
      v4 = sub_21BA6401C(v18);
    }

    goto LABEL_14;
  }

  sub_21BA6640C();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();
  return v4;
}

unint64_t sub_21BA68D20()
{
  result = qword_27CD9F7F0;
  if (!qword_27CD9F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F7F0);
  }

  return result;
}

unint64_t sub_21BA68D78()
{
  result = qword_27CD9F7F8;
  if (!qword_27CD9F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F7F8);
  }

  return result;
}

unint64_t sub_21BA68DD0()
{
  result = qword_27CD9F800;
  if (!qword_27CD9F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F800);
  }

  return result;
}

unint64_t sub_21BA68E28()
{
  result = qword_27CD9F808;
  if (!qword_27CD9F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F808);
  }

  return result;
}

unint64_t sub_21BA68E80()
{
  result = qword_27CD9F810;
  if (!qword_27CD9F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RUIXMLSanitizer.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RUIXMLSanitizer.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_21BA69128()
{

  MEMORY[0x21CEFD130](8765, 0xE200000000000000);
  sub_21B9BAB9C();
  sub_21BA883FC();
  sub_21BA883FC();

  sub_21BA883FC();

  sub_21BA883FC();

  sub_21BA883FC();

  sub_21BA883FC();

  v0 = sub_21BA883FC();
  v2 = v1;

  MEMORY[0x21CEFD130](v0, v2);

  MEMORY[0x21CEFD130](34, 0xE100000000000000);
}

uint64_t sub_21BA69448(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21BA69484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 2);
  v6 = *(v2 + 24);
  v12 = *v2;
  v13 = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = *v2;
  *(v7 + 32) = v5;
  *(v7 + 40) = *(v2 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8C0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8C8) + 36));
  *v9 = sub_21BA69864;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  sub_21B9BAD4C(&v12, v11);
  swift_unknownObjectRetain();
  return sub_21BA6991C(&v13, v11);
}

uint64_t View.registerScriptInterface<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21BA885AC();
  v9 = (*(a5 + 24))(a3, a5);
  type metadata accessor for ScriptEnvironment();
  sub_21BA69694();
  v14[0] = sub_21BA86D0C();
  v14[1] = v10;
  v13[0] = v12[0];
  v13[1] = v12[1];
  v12[2] = v9;
  v12[3] = v14[0];
  v12[4] = v10;
  MEMORY[0x21CEFCB90](v12, a2, &type metadata for ScriptInterfaceModifier, a4);
  sub_21B9BADFC(v13);
  swift_unknownObjectRelease();
  return sub_21BA696EC(v14);
}

unint64_t sub_21BA69694()
{
  result = qword_27CD9E660;
  if (!qword_27CD9E660)
  {
    type metadata accessor for ScriptEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E660);
  }

  return result;
}

uint64_t sub_21BA696EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BA69754()
{
  result = qword_27CDAF5D0[0];
  if (!qword_27CDAF5D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAF5D0);
  }

  return result;
}

uint64_t sub_21BA697A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BA697F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BA69864()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[2];
    v5 = v0 + 3;
    v3 = v0[3];
    v4 = v5[1];
    v6 = *(*v1 + 136);

    v6(v4, v2, v3);
  }

  else
  {
    type metadata accessor for ScriptEnvironment();
    sub_21BA69694();
    result = sub_21BA86CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BA6991C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BA6998C()
{
  result = qword_27CD9F8D0;
  if (!qword_27CD9F8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F8C8);
    sub_21BA69A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F8D0);
  }

  return result;
}

unint64_t sub_21BA69A18()
{
  result = qword_27CD9F8D8;
  if (!qword_27CD9F8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F8D8);
  }

  return result;
}

uint64_t ExpandingSubLabelElement.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21BA69AB8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    v2 = 0xE200000000000000;
    v3 = 25705;
    v4 = 0xE500000000000000;
    v5 = 0x6C6562616CLL;
    v6 = a1 == 0;
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x6C6562614C627573;
    v4 = 0xE500000000000000;
    v5 = 0x6567616D69;
    if (a1 != 3)
    {
      v5 = 0xD000000000000015;
      v4 = 0x800000021BAA63E0;
    }

    v6 = a1 == 2;
  }

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 0x6C6562616CLL;
    }

    else
    {
      v13 = 25705;
    }

    if (a2)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE200000000000000;
    }

    if (v7 != v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v9 = 0x6567616D69;
    v10 = 0x800000021BAA63E0;
    if (a2 == 3)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v9 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v11 = 0x6C6562614C627573;
    }

    else
    {
      v11 = v9;
    }

    if (a2 == 2)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v12 = v10;
    }

    if (v7 != v11)
    {
      goto LABEL_33;
    }
  }

  if (v8 != v12)
  {
LABEL_33:
    v14 = sub_21BA8899C();
    goto LABEL_34;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_21BA69C24()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA69CF8()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA69DB8()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA69E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA6B500();
  *a1 = result;
  return result;
}

void sub_21BA69EB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x6C6562614C627573;
  v7 = 0xE500000000000000;
  v8 = 0x6567616D69;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x800000021BAA63E0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6562616CLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21BA69F48()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6C6562614C627573;
  v4 = 0x6567616D69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
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

uint64_t sub_21BA69FD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA6B500();
  *a1 = result;
  return result;
}

uint64_t sub_21BA69FFC(uint64_t a1)
{
  v2 = sub_21BA6B938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA6A038(uint64_t a1)
{
  v2 = sub_21BA6B938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExpandingSubLabelElement.body.getter@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v33 = sub_21BA8718C();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8E8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = *(v1 + 208);
  v37[12] = *(v1 + 192);
  v37[13] = v12;
  v37[14] = *(v1 + 224);
  v38 = *(v1 + 240);
  v13 = *(v1 + 144);
  v37[8] = *(v1 + 128);
  v37[9] = v13;
  v14 = *(v1 + 176);
  v37[10] = *(v1 + 160);
  v37[11] = v14;
  v15 = *(v1 + 80);
  v37[4] = *(v1 + 64);
  v37[5] = v15;
  v16 = *(v1 + 112);
  v37[6] = *(v1 + 96);
  v37[7] = v16;
  v17 = *(v1 + 16);
  v37[0] = *v1;
  v37[1] = v17;
  v18 = *(v1 + 48);
  v37[2] = *(v1 + 32);
  v37[3] = v18;
  v19 = swift_allocObject();
  v20 = *(v1 + 208);
  *(v19 + 208) = *(v1 + 192);
  *(v19 + 224) = v20;
  *(v19 + 240) = *(v1 + 224);
  *(v19 + 256) = *(v1 + 240);
  v21 = *(v1 + 144);
  *(v19 + 144) = *(v1 + 128);
  *(v19 + 160) = v21;
  v22 = *(v1 + 176);
  *(v19 + 176) = *(v1 + 160);
  *(v19 + 192) = v22;
  v23 = *(v1 + 80);
  *(v19 + 80) = *(v1 + 64);
  *(v19 + 96) = v23;
  v24 = *(v1 + 112);
  *(v19 + 112) = *(v1 + 96);
  *(v19 + 128) = v24;
  v25 = *(v1 + 16);
  *(v19 + 16) = *v1;
  *(v19 + 32) = v25;
  v26 = *(v1 + 48);
  *(v19 + 48) = *(v1 + 32);
  *(v19 + 64) = v26;
  v35 = v37;
  sub_21BA6B6A8(v37, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8F0);
  sub_21BA6B6E0();
  sub_21BA879BC();
  sub_21BA8717C();
  sub_21B9B35B8(&qword_27CD9F910, &qword_27CD9F8E0);
  sub_21BA6B798();
  v27 = v33;
  sub_21BA876DC();
  (*(v2 + 8))(v4, v27);
  (*(v6 + 8))(v8, v5);
  v28 = sub_21BA8789C();
  KeyPath = swift_getKeyPath();
  v30 = &v11[*(v9 + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = sub_21BA6B7F0();
  sub_21B9AC578(v31, v34);
  return sub_21B9ABAAC(v11, &qword_27CD9F8E8);
}

uint64_t sub_21BA6A414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F968);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v81 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F970);
  MEMORY[0x28223BE20](v86);
  v91 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v81 - v7;
  MEMORY[0x28223BE20](v8);
  v96 = &v81 - v9;
  v10 = *(a1 + 160);
  v152 = *(a1 + 144);
  v153 = v10;
  v154[0] = *(a1 + 176);
  *(v154 + 9) = *(a1 + 185);
  v11 = *(a1 + 96);
  v148 = *(a1 + 80);
  v149 = v11;
  v12 = *(a1 + 128);
  v150 = *(a1 + 112);
  v151 = v12;
  v13 = *(a1 + 64);
  v146 = *(a1 + 48);
  v147 = v13;
  v90 = sub_21BA86FEC();
  LOBYTE(v138[0]) = 1;

  sub_21BA875BC();
  v94 = sub_21BA8760C();
  v95 = v14;
  LODWORD(v16) = v15;
  v93 = v17;

  v18 = *(a1 + 40);
  v84 = a1;
  if (v18)
  {
    v82 = v16;

    sub_21BA8749C();
    v19 = sub_21BA8760C();
    v21 = v20;
    v23 = v22;

    LODWORD(v114) = sub_21BA871EC();
    v16 = sub_21BA875FC();
    v25 = v24;
    v27 = v26;
    v92 = v28;
    sub_21B9C318C(v19, v21, v23 & 1);

    v114 = *(a1 + 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D558);
    sub_21BA8797C();
    v29 = v108[0];
    if (v108[0])
    {
      v30 = 0;
    }

    else
    {
      v30 = *(a1 + 208);
    }

    KeyPath = swift_getKeyPath();
    v18 = v27 & 1;
    sub_21B9C320C(v16, v25, v27 & 1);

    v33 = KeyPath;

    v31 = v16;
    v32 = v25;
    LOBYTE(v16) = v82;
    v35 = v29;
    v34 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v92 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v37 = v16 & 1;
  LOBYTE(v114) = v16 & 1;
  sub_21B9C320C(v94, v95, v16 & 1);

  v81 = v31;
  v38 = v92;
  sub_21B9D4130(v31, v32, v18, v92);
  sub_21B9D4180(v31, v32, v18, v38);
  v39 = v94;
  v82 = v114;
  sub_21B9D4180(v31, v32, v18, v38);
  v40 = v39;
  v41 = v39;
  v42 = v95;
  sub_21B9C318C(v40, v95, v37);
  v43 = v93;

  *(&v156 + 1) = v108[0];
  DWORD1(v156) = *(v108 + 3);
  *&v155 = v41;
  *(&v155 + 1) = v42;
  LOBYTE(v156) = v82;
  *(&v156 + 1) = v43;
  *&v157 = v81;
  *(&v157 + 1) = v32;
  *&v158 = v18;
  *(&v158 + 1) = v38;
  *&v159 = v33;
  *(&v159 + 1) = v34;
  v160 = v35;
  v161[0] = v41;
  v161[1] = v42;
  v162 = v82;
  *&v163[3] = *(v108 + 3);
  *v163 = v108[0];
  v164 = v43;
  v165 = v81;
  v166 = v32;
  v167 = v18;
  v168 = v38;
  v169 = v33;
  v170 = v34;
  v171 = v35;
  sub_21B9AFF80(&v155, &v114, &qword_27CD9F978);
  sub_21B9ABAAC(v161, &qword_27CD9F978);
  *&v140[39] = v157;
  *&v140[55] = v158;
  *&v140[71] = v159;
  v140[87] = v160;
  *&v140[7] = v155;
  *&v140[23] = v156;
  LODWORD(v95) = LOBYTE(v138[0]);
  v92 = swift_getKeyPath();
  LODWORD(v93) = sub_21BA8742C();
  LOBYTE(v114) = 1;
  LODWORD(v94) = sub_21BA8748C();
  sub_21BA869EC();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v114 = *(v84 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D558);
  sub_21BA8797C();
  v52 = sub_21BA878DC();
  v53 = sub_21BA875AC();
  v54 = swift_getKeyPath();
  *&v114 = v52;
  *(&v114 + 1) = v54;
  *v115 = v53;
  sub_21BA874EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F980);
  sub_21BA6BC28();
  v55 = v87;
  sub_21BA876AC();

  v56 = sub_21BA871DC();
  v57 = v85;
  (*(v88 + 32))(v85, v55, v89);
  *(v57 + *(v86 + 36)) = v56;
  v58 = v96;
  sub_21B94B238(v57, v96);
  v103 = v152;
  v104 = v153;
  v105[0] = v154[0];
  *(v105 + 9) = *(v154 + 9);
  v99 = v148;
  v100 = v149;
  v101 = v150;
  v102 = v151;
  v97 = v146;
  v98 = v147;
  v59 = v91;
  sub_21B94B2A8(v58, v91);
  v60 = v104;
  v106[6] = v103;
  v106[7] = v104;
  v61 = v105[0];
  v107[0] = v105[0];
  *(v107 + 9) = *(v105 + 9);
  v62 = v99;
  v63 = v100;
  v106[2] = v99;
  v106[3] = v100;
  v64 = v101;
  v65 = v102;
  v106[4] = v101;
  v106[5] = v102;
  v66 = v97;
  v67 = v98;
  v106[0] = v97;
  v106[1] = v98;
  v68 = v83;
  *(v83 + 96) = v103;
  *(v68 + 112) = v60;
  *(v68 + 128) = v61;
  *(v68 + 137) = *(v105 + 9);
  *(v68 + 32) = v62;
  *(v68 + 48) = v63;
  *(v68 + 64) = v64;
  *(v68 + 80) = v65;
  *v68 = v66;
  *(v68 + 16) = v67;
  v69 = v90;
  v108[0] = v90;
  v108[1] = 0;
  LOBYTE(v109[0]) = v95;
  *(&v109[2] + 1) = *&v140[32];
  *(&v109[3] + 1) = *&v140[48];
  *(&v109[4] + 1) = *&v140[64];
  *(&v109[5] + 1) = *&v140[80];
  *(v109 + 1) = *v140;
  *(&v109[1] + 1) = *&v140[16];
  *(&v109[5] + 9) = *v141;
  HIDWORD(v109[5]) = *&v141[3];
  v70 = v92;
  *&v110 = v92;
  BYTE8(v110) = 0;
  *(&v110 + 9) = v143[0];
  HIDWORD(v110) = *(v143 + 3);
  LOBYTE(v53) = v93;
  LOBYTE(v111[0]) = v93;
  *(v111 + 1) = *v142;
  DWORD1(v111[0]) = *&v142[3];
  *(v111 + 8) = 0u;
  *(&v111[1] + 8) = 0u;
  BYTE8(v111[2]) = 1;
  HIDWORD(v111[2]) = *&v145[3];
  *(&v111[2] + 9) = *v145;
  LOBYTE(v57) = v94;
  LOBYTE(v112) = v94;
  DWORD1(v112) = *&v144[3];
  *(&v112 + 1) = *v144;
  *(&v112 + 1) = v45;
  *&v113[0] = v47;
  *(&v113[0] + 1) = v49;
  *&v113[1] = v51;
  BYTE8(v113[1]) = 0;
  v71 = v109[0];
  *(v68 + 160) = v90;
  *(v68 + 176) = v71;
  v72 = v109[4];
  *(v68 + 224) = v109[3];
  *(v68 + 240) = v72;
  v73 = v109[2];
  *(v68 + 192) = v109[1];
  *(v68 + 208) = v73;
  v74 = v111[1];
  *(v68 + 288) = v111[0];
  *(v68 + 304) = v74;
  v75 = v110;
  *(v68 + 256) = v109[5];
  *(v68 + 272) = v75;
  v76 = v111[2];
  v77 = v112;
  v78 = v113[0];
  *(v68 + 361) = *(v113 + 9);
  *(v68 + 336) = v77;
  *(v68 + 352) = v78;
  *(v68 + 320) = v76;
  *(v68 + 384) = 0;
  *(v68 + 392) = 1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9A0);
  sub_21B94B2A8(v59, v68 + *(v79 + 80));
  sub_21B9AFF80(&v146, &v114, &unk_27CD9DD50);
  sub_21B9AFF80(v106, &v114, &unk_27CD9DD50);
  sub_21B9AFF80(v108, &v114, &qword_27CD9F9A8);
  sub_21B9ABAAC(v96, &qword_27CD9F970);
  sub_21B9ABAAC(v59, &qword_27CD9F970);
  v117 = *&v140[32];
  v118 = *&v140[48];
  v119 = *&v140[64];
  *&v115[1] = *v140;
  v114 = v69;
  v115[0] = v95;
  v120 = *&v140[80];
  v116 = *&v140[16];
  *&v121[3] = *&v141[3];
  *v121 = *v141;
  v122 = v70;
  v123 = 0;
  *v124 = v143[0];
  *&v124[3] = *(v143 + 3);
  v125 = v53;
  *v126 = *v142;
  *&v126[3] = *&v142[3];
  v127 = 0u;
  v128 = 0u;
  v129 = 1;
  *&v130[3] = *&v145[3];
  *v130 = *v145;
  v131 = v57;
  *&v132[3] = *&v144[3];
  *v132 = *v144;
  v133 = v45;
  v134 = v47;
  v135 = v49;
  v136 = v51;
  v137 = 0;
  sub_21B9ABAAC(&v114, &qword_27CD9F9A8);
  v138[6] = v103;
  v138[7] = v104;
  v139[0] = v105[0];
  *(v139 + 9) = *(v105 + 9);
  v138[2] = v99;
  v138[3] = v100;
  v138[4] = v101;
  v138[5] = v102;
  v138[0] = v97;
  v138[1] = v98;
  return sub_21B9ABAAC(v138, &unk_27CD9DD50);
}

uint64_t ExpandingSubLabelElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F938);
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  LOBYTE(v54) = 0;
  sub_21BA8796C();
  v6 = v68;
  v7 = *(&v68 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA6B938();
  v8 = v95;
  sub_21BA88C0C();
  if (v8)
  {
    goto LABEL_4;
  }

  v9 = v5;
  v10 = v53;
  v95 = v3;
  v50 = v6;
  v51 = v7;
  v11 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = Decoder.decodeRUIID()();
  if (v13)
  {
    (*(v10 + 8))(v9, v95);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  object = v12._object;
  LOBYTE(v68) = 1;
  v15 = v9;
  v16 = sub_21BA887BC();
  v18 = v10;
  if (v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v17)
  {
    v20 = v17;
  }

  v48 = v20;
  LOBYTE(v68) = 2;
  v21 = v15;
  *&v47 = sub_21BA887BC();
  *(&v47 + 1) = v22;
  LOBYTE(v68) = 4;
  v23 = sub_21BA887DC();
  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23;
  }

  v46 = v25;
  sub_21B9B3220(v11, v84);
  RUIImageView.init(from:)(v84, &v68);
  v45 = v19;
  v60 = v74;
  v61 = v75;
  v62[0] = v76[0];
  *(v62 + 9) = *(v76 + 9);
  v56 = v70;
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v54 = v68;
  v55 = v69;
  nullsub_1(&v54);
  v91 = v60;
  v92 = v61;
  *v93 = v62[0];
  *&v93[9] = *(v62 + 9);
  v87 = v56;
  v88 = v57;
  v89 = v58;
  v90 = v59;
  v85 = v54;
  v86 = v55;
  sub_21B9B3220(v11, v84);
  v26 = sub_21B9AC534(v84);
  v27 = *(v18 + 8);
  v28 = v21;
  v30 = v29;
  v44 = v29;
  v27(v28, v95);
  v31 = object;
  *&v54 = v12._countAndFlagsBits;
  *(&v54 + 1) = object;
  v32 = v45;
  *&v55 = v45;
  *(&v55 + 1) = v48;
  v56 = v47;
  v62[1] = v91;
  v63 = v92;
  v64[0] = *v93;
  *(v64 + 9) = *&v93[9];
  v59 = v87;
  v60 = v88;
  v61 = v89;
  v62[0] = v90;
  v57 = v85;
  v58 = v86;
  *&v65 = v46;
  *(&v65 + 1) = v26;
  *&v66 = v30;
  v95 = v11;
  v33 = v50;
  BYTE8(v66) = v50;
  v34 = v51;
  v35 = v52;
  v67 = v51;
  *(v52 + 240) = v51;
  v36 = v62[1];
  v35[8] = v62[0];
  v35[9] = v36;
  v37 = v64[0];
  v35[10] = v63;
  v35[11] = v37;
  v38 = v59;
  v35[4] = v58;
  v35[5] = v38;
  v39 = v61;
  v35[6] = v60;
  v35[7] = v39;
  v40 = v55;
  *v35 = v54;
  v35[1] = v40;
  v41 = v57;
  v35[2] = v56;
  v35[3] = v41;
  v42 = v65;
  v35[12] = v64[1];
  v35[13] = v42;
  v35[14] = v66;
  sub_21BA6B6A8(&v54, &v68);
  __swift_destroy_boxed_opaque_existential_1(v95);
  *&v68 = v12._countAndFlagsBits;
  *(&v68 + 1) = v31;
  *&v69 = v32;
  *(&v69 + 1) = v48;
  v70 = v47;
  v76[1] = v91;
  v76[2] = v92;
  v77[0] = *v93;
  *(v77 + 9) = *&v93[9];
  v73 = v87;
  v74 = v88;
  v75 = v89;
  v76[0] = v90;
  v71 = v85;
  v72 = v86;
  v78 = v46;
  v79 = v26;
  v80 = v44;
  v81 = v33;
  *v82 = v94[0];
  *&v82[3] = *(v94 + 3);
  v83 = v34;
  return sub_21BA6B98C(&v68);
}

uint64_t sub_21BA6B45C()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t sub_21BA6B4A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BA86D6C();
  *a1 = result;
  return result;
}

uint64_t sub_21BA6B500()
{
  v0 = sub_21BA8875C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BA6B54C()
{
  v3 = *(v0 + 248);
  v2[1] = *(v0 + 248);
  v4 = *(&v3 + 1);
  sub_21B9AFF80(&v4, v2, &qword_27CD9F9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D558);
  sub_21BA8797C();
  v2[0] = v3;
  sub_21BA8798C();
  return sub_21B9ABAAC(&v3, &qword_27CD9D558);
}

double sub_21BA6B610@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_21BA86ECC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F960);
  sub_21BA6A414(v3, a1 + *(v4 + 44));
  LOBYTE(v3) = sub_21BA8742C();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8F0) + 36);
  *v5 = v3;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

unint64_t sub_21BA6B6E0()
{
  result = qword_27CD9F8F8;
  if (!qword_27CD9F8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F8F0);
    sub_21B9B35B8(&qword_27CD9F900, &qword_27CD9F908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F8F8);
  }

  return result;
}

unint64_t sub_21BA6B798()
{
  result = qword_27CD9F918;
  if (!qword_27CD9F918)
  {
    sub_21BA8718C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F918);
  }

  return result;
}

unint64_t sub_21BA6B7F0()
{
  result = qword_27CD9F920;
  if (!qword_27CD9F920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F8E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F8E0);
    sub_21BA8718C();
    sub_21B9B35B8(&qword_27CD9F910, &qword_27CD9F8E0);
    sub_21BA6B798();
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9F928, &qword_27CD9F930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F920);
  }

  return result;
}

unint64_t sub_21BA6B938()
{
  result = qword_27CD9F940;
  if (!qword_27CD9F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F940);
  }

  return result;
}

unint64_t sub_21BA6B9C0()
{
  result = qword_27CD9F948;
  if (!qword_27CD9F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F948);
  }

  return result;
}

unint64_t sub_21BA6BA18()
{
  result = qword_27CD9F950;
  if (!qword_27CD9F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F950);
  }

  return result;
}

unint64_t sub_21BA6BA70()
{
  result = qword_27CD9F958;
  if (!qword_27CD9F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F958);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8RemoteUI12RUIImageViewVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_21BA6BB44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BA6BB8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BA6BC28()
{
  result = qword_27CD9F988;
  if (!qword_27CD9F988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F980);
    sub_21B9B35B8(&qword_27CD9F990, &qword_27CD9F998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F988);
  }

  return result;
}

uint64_t sub_21BA6BCE0()
{
  v1 = *v0;
  v2 = 0x746E656D656C65;
  v3 = 0x6E74736F486C7275;
  v4 = 0x687461506C7275;
  if (v1 != 4)
  {
    v4 = 0x7461636572706564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7972617262696CLL;
  if (v1 != 1)
  {
    v5 = 0x737365636F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21BA6BDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BA6C464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BA6BDDC(uint64_t a1)
{
  v2 = sub_21BA6C054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA6BE18(uint64_t a1)
{
  v2 = sub_21BA6C054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA6BE54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA6C054();
  sub_21BA88C1C();
  v8[15] = 0;
  sub_21BA8886C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_21BA8885C();
  v8[13] = 2;
  sub_21BA8886C();
  v8[12] = 3;
  sub_21BA8885C();
  v8[11] = 4;
  sub_21BA8885C();
  v8[10] = 5;
  sub_21BA8887C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21BA6C054()
{
  result = qword_27CDAF990[0];
  if (!qword_27CDAF990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAF990);
  }

  return result;
}

uint64_t sub_21BA6C0A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  return result;
}

unint64_t sub_21BA6C0E8(uint64_t a1)
{
  result = sub_21BA400B8();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21BA6C15C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}