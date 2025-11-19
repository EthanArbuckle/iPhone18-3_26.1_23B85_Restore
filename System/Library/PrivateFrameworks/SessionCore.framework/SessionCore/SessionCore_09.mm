uint64_t sub_22CFBD830(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 4 * v6);
      result = MEMORY[0x2318C5FF0](*(a2 + 40), *v12, 4);
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 4 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22CFBD9B0(int64_t a1, uint64_t a2)
{
  v4 = sub_22D01436C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_22D016AFC();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v4);
      v24 = *(a2 + 40);
      sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0]);
      v25 = sub_22D01661C();
      result = (*v40)(v10, v4);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22CFBDCF4(int64_t a1, uint64_t a2)
{
  v45 = sub_22D01436C();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45, v6);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v46 = v8;
    v14 = sub_22D016AFC();
    v15 = v45;
    v8 = v46;
    v16 = v13;
    v43 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v44;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v42(v44, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0]);
      v27 = sub_22D01661C();
      result = (*v40)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v43)
      {
        if (v28 >= v43 && a1 >= v28)
        {
LABEL_15:
          v8 = v46;
          v31 = *(v46 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v46;
            v19 = v20;
            v16 = v23;
            v10 = v41;
          }

          else
          {
            v10 = v41;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v46;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + 32 * a1);
          v34 = (v32 + 32 * v12);
          if (a1 != v12 || v33 >= v34 + 2)
          {
            v35 = v34[1];
            *v33 = *v34;
            v33[1] = v35;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v43 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v41;
      v19 = v20;
      v8 = v46;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v8 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v38;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_22CFBE014(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22D016EAC();

      sub_22D0166DC();
      v13 = sub_22D016ECC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBE1C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x2318C5FF0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBE338(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Activity();
      return sub_22CF2D7F0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Activity);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CF28A08(type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
    goto LABEL_7;
  }

  sub_22CF26B04(v15, a4 & 1, type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
  v22 = *v5;
  v23 = sub_22CEEC698(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CF0C04C(v12, a2, a3, a1, v18, type metadata accessor for Activity, type metadata accessor for Activity);
}

uint64_t sub_22CFBE53C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D01534C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_22CFB606C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *v4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for Assertion();
      return sub_22CF2D7F0(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for Assertion);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_22CFB635C();
    goto LABEL_7;
  }

  sub_22CFB8B04(v19, a3 & 1);
  v26 = *v4;
  v27 = sub_22CFB606C(a2);
  if ((v20 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v16 = v27;
  v22 = *v4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v13, a2, v8);
  return sub_22CEFF008(v16, v13, a1, v22, MEMORY[0x277D4D450], type metadata accessor for Assertion, type metadata accessor for Assertion);
}

unint64_t sub_22CFBE74C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CFB938C(v16, a4 & 1);
      v20 = *v5;
      result = sub_22CEEC698(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22D016E1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22CFB6680();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_22CFBE8B0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CFB98EC(v16, a4 & 1);
      v20 = *v5;
      result = sub_22CEEC698(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22D016E1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22CFB6C84();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_22CFBEA1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22CFB8840(MEMORY[0x277CB9590], &qword_27D9F3248, &qword_22D01B1D8);
      goto LABEL_7;
    }

    sub_22CFBC30C(v15, a4 & 1, MEMORY[0x277CB9590], &qword_27D9F3248, &qword_22D01B1D8);
    v26 = *v5;
    v27 = sub_22CEEC698(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22D014AFC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22CFC02C4(v12, a2, a3, a1, v18, MEMORY[0x277CB9590]);
}

unint64_t sub_22CFBEBF8(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CFBA048(v16, a4 & 1);
      v20 = *v5;
      result = sub_22CEEC698(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22D016E1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22CFB7154();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_22CFBED84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22CEF098C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22CFBA5A0(v14, a3 & 1);
      v18 = *v4;
      result = sub_22CEF098C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_22D016E1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22CFB7474();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_22CFBEED0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CFBA810(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22CEEC698(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22D016E1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22CFB75D0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_22CFBF04C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D01534C();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22CFB606C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_22CFB78C4();
      goto LABEL_9;
    }

    sub_22CFBAD3C(v18, a3 & 1);
    v21 = *v4;
    v22 = sub_22CFB606C(a2);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = *v4;
  if (v19)
  {
    v25 = *(v29 + 40);
    v26 = v24[7] + *(v29 + 72) * v15;

    return v25(v26, a1, v8);
  }

  else
  {
    (*(v29 + 16))(v12, a2, v8);
    return sub_22CFC01D0(v15, v12, a1, v24);
  }
}

uint64_t sub_22CFBF244(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22CFB8840(MEMORY[0x277CB9448], &qword_27D9F31A0, &qword_22D01B110);
      goto LABEL_7;
    }

    sub_22CFBC30C(v15, a4 & 1, MEMORY[0x277CB9448], &qword_27D9F31A0, &qword_22D01B110);
    v26 = *v5;
    v27 = sub_22CEEC698(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22D01490C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22CFC02C4(v12, a2, a3, a1, v18, MEMORY[0x277CB9448]);
}

uint64_t sub_22CFBF420(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22CFB8840(MEMORY[0x277CC9578], &qword_27D9F31B0, &qword_22D01B128);
      goto LABEL_7;
    }

    sub_22CFBC30C(v15, a4 & 1, MEMORY[0x277CC9578], &qword_27D9F31B0, &qword_22D01B128);
    v26 = *v5;
    v27 = sub_22CEEC698(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22D01430C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22CFC02C4(v12, a2, a3, a1, v18, MEMORY[0x277CC9578]);
}

uint64_t sub_22CFBF5FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
      return sub_22CF2D7F0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CF28A08(type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    goto LABEL_7;
  }

  sub_22CF26B04(v15, a4 & 1, type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
  v22 = *v5;
  v23 = sub_22CEEC698(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CF0C04C(v12, a2, a3, a1, v18, type metadata accessor for XPCInputParticipant.ActivityUpdate, type metadata accessor for XPCInputParticipant.ActivityUpdate);
}

uint64_t sub_22CFBF800(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for XPCInputBudgetManager.Budget();
      return sub_22CF2D7F0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for XPCInputBudgetManager.Budget);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CF28A08(type metadata accessor for XPCInputBudgetManager.Budget, &qword_27D9F2A20, &qword_22D0196C0, type metadata accessor for XPCInputBudgetManager.Budget);
    goto LABEL_7;
  }

  sub_22CF26B04(v15, a4 & 1, type metadata accessor for XPCInputBudgetManager.Budget, &qword_27D9F2A20, &qword_22D0196C0, type metadata accessor for XPCInputBudgetManager.Budget);
  v22 = *v5;
  v23 = sub_22CEEC698(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CF0C04C(v12, a2, a3, a1, v18, type metadata accessor for XPCInputBudgetManager.Budget, type metadata accessor for XPCInputBudgetManager.Budget);
}

_OWORD *sub_22CFBFA18(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22CFB72D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22CFBA2E8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22CEEC698(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22D016E1C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_22CF1D288(a1, v23);
  }

  else
  {
    sub_22CFC0378(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22CFBFB68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D01436C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_22CEF5CD8(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *v4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
      return sub_22CF2D7F0(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_22CFB7BDC();
    goto LABEL_7;
  }

  sub_22CFBB1D8(v19, a3 & 1);
  v26 = *v4;
  v27 = sub_22CEF5CD8(a2);
  if ((v20 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v16 = v27;
  v22 = *v4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v13, a2, v8);
  return sub_22CEFF008(v16, v13, a1, v22, MEMORY[0x277CC95F0], type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
}

uint64_t sub_22CFBFD78(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v34 = a1;
  v35 = a3;
  v36 = a2;
  v11 = sub_22D01436C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v6;
  v19 = sub_22CEF5CD8(a5);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a6 & 1) == 0)
  {
    if (v24 >= v22 && (a6 & 1) == 0)
    {
      sub_22CFB7F00();
      goto LABEL_9;
    }

    sub_22CFBB678(v22, a6 & 1);
    v25 = *v7;
    v26 = sub_22CEF5CD8(a5);
    if ((v23 & 1) == (v27 & 1))
    {
      v19 = v26;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

LABEL_9:
  v28 = v36;
  v29 = *v7;
  if (v23)
  {
    v30 = v29[7] + 32 * v19;
    v31 = *(v30 + 8);
    v32 = *(v30 + 24);
    *v30 = v34 & 1;
    *(v30 + 8) = v28;
    *(v30 + 16) = v35 & 1;
    *(v30 + 24) = a4;
  }

  else
  {
    (*(v12 + 16))(v16, a5, v11);
    return sub_22CFC03E4(v19, v16, v34 & 1, v28, v35 & 1, a4, v29);
  }
}

uint64_t sub_22CFBFF8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22CEF098C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for TaskScheduler.Task();
      return sub_22CF2D7F0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for TaskScheduler.Task);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22CFB81B0();
    goto LABEL_7;
  }

  sub_22CFBBA98(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_22CEF098C(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_22CFC04C0(v10, a2, a1, v16);
}

unint64_t sub_22CFC0188(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_22CFC01D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22D01534C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_22CFC02C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

_OWORD *sub_22CFC0378(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22CF1D288(a4, (a5[7] + 32 * a1));
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

uint64_t sub_22CFC03E4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_22D01436C();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_22CFC04C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for TaskScheduler.Task();
  result = sub_22CEF0B08(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for TaskScheduler.Task);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_22CFC0568(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22CFC05B8()
{
  result = qword_28143D8E8;
  if (!qword_28143D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D8E8);
  }

  return result;
}

uint64_t sub_22CFC060C(uint64_t a1, unsigned int a2, char a3, void *a4)
{
  v8 = type metadata accessor for AssertionServiceClient();
  v30 = v8;
  v31 = &off_28402E888;
  *&v29 = a1;
  v9 = *a4;
  v11 = sub_22CEE637C(a2);
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      return sub_22CEF44D4(&v29, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_22CFB7740();
    goto LABEL_7;
  }

  sub_22CFBAAB8(v14, a3 & 1);
  v20 = *a4;
  v21 = sub_22CEE637C(a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v8);
  v24 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v23, v23);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_22CFC07EC(v11, a2, *v26, v17);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v29);
}

uint64_t sub_22CFC07EC(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for AssertionServiceClient();
  v14 = &off_28402E888;
  *&v12 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_22CEF44D4(&v12, a4[7] + 40 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

void *sub_22CFC08E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a5;
  ObjectType = a6;
  v50 = a1;
  v51 = a4;
  v48 = a2;
  v49 = a3;
  v55 = *v6;
  v54 = sub_22D01697C();
  v47 = *(v54 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v54, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01691C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v15 = sub_22D01653C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  v20 = MEMORY[0x277D84F98];
  v6[2] = v18;
  v6[3] = v20;
  v6[4] = 0;
  v21 = sub_22CEEC38C();
  v46 = "";
  sub_22D0164EC();
  aBlock = MEMORY[0x277D84F90];
  sub_22CEF57B4(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v47 + 104))(v11, *MEMORY[0x277D85260], v54);
  v23 = v48;
  v22 = v49;
  v54 = v21;
  v6[11] = sub_22D0169BC();
  v6[12] = 0;
  v25 = v50;
  v24 = v51;
  v6[5] = v50;
  v6[6] = v23;
  v6[7] = v22;
  v6[8] = v24;
  v6[9] = v52;
  v6[10] = ObjectType;
  if (v25)
  {
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v28 = v55;
    *(v27 + 16) = v26;
    *(v27 + 24) = v28;
    v29 = *(v23 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v29(sub_22CFC0F14, v27, ObjectType, v23);

    v30 = v28;
    if (!v7[7])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30 = v55;
  if (v22)
  {
LABEL_3:
    v31 = v7[8];
    v32 = swift_getObjectType();
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v30;
    v35 = *(v31 + 16);
    swift_unknownObjectRetain();

    v35(sub_22CFC0F5C, v34, v32, v31);
    swift_unknownObjectRelease();
  }

LABEL_4:
  if (v7[9])
  {
    v36 = v7[10];
    v37 = v7[9];
    v38 = swift_getObjectType();
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = *(v36 + 16);
    swift_unknownObjectRetain();

    v40(sub_22CFC0FA4, v39, v38, v36);
    swift_unknownObjectRelease();
  }

  sub_22CEF0D1C();
  v41 = sub_22D01698C();
  v60 = sub_22CFB4C80;
  v61 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_22CEF2428;
  v59 = &block_descriptor_19;
  v42 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v41, v42);
  _Block_release(v42);

  v43 = sub_22D01698C();
  v60 = sub_22CEF2488;
  v61 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_22CEF2428;
  v59 = &block_descriptor_31;
  v44 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v43, v44);
  _Block_release(v44);

  return v7;
}

uint64_t sub_22CFC0FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3270, &unk_22D01B210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CFC1060()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_22CEF0D1C();
  return sub_22D01562C();
}

uint64_t sub_22CFC10A8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  sub_22CEEC3D8(v0 + 72, &qword_27D9F3278, &unk_22D01B2C0);
  v2 = *(v0 + 112);

  sub_22CF460CC(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_22CFC113C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 128) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CFC11A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v78 = sub_22D01495C();
  v89 = *(v78 - 8);
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v78, v4);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v91 = &v69 - v9;
  v92 = sub_22D01486C();
  v10 = *(v92 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v92, v12);
  v76 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v14 = *(*(v84 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v84, v15);
  v83 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v81 = &v69 - v19;
  v20 = sub_22D01430C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v69 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v69 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v69 - v36;
  os_unfair_lock_assert_owner(*(*(v2 + 16) + 16));
  swift_beginAccess();
  v38 = *(v2 + 112);

  sub_22D01423C();
  v40 = *(v21 + 16);
  v39 = v21 + 16;
  v70 = v37;
  v40(v34, v37, v20);
  v41 = 1 << *(v38 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v38 + 64);
  v90 = (v41 + 63) >> 6;
  v79 = (v10 + 48);
  v74 = (v10 + 32);
  v73 = (v89 + 8);
  v72 = (v10 + 8);
  v88 = (v39 - 8);
  v89 = v39 + 16;
  v87 = v38;
  v44 = v38 + 64;

  v46 = 0;
  v82 = v20;
  v80 = v34;
  v85 = v44;
  v86 = v30;
  v75 = v26;
  while (v43)
  {
LABEL_11:
    v51 = __clz(__rbit64(v43)) | (v46 << 6);
    v52 = *(v87 + 56);
    v53 = (*(v87 + 48) + 16 * v51);
    v55 = *v53;
    v54 = v53[1];
    v56 = (type metadata accessor for Activity() - 8);
    v57 = v84;
    v58 = v81;
    sub_22CF0CCBC(v52 + *(*v56 + 72) * v51, &v81[*(v84 + 48)], type metadata accessor for Activity);
    *v58 = v55;
    v58[1] = v54;
    v59 = v83;
    sub_22CEEB6DC(v58, v83, &unk_27D9F3840, &unk_22D01A2B0);
    v60 = *(v59 + 8);

    v61 = v59 + *(v57 + 48);
    v62 = v91;
    sub_22CEEB6DC(v61 + v56[17], v91, &qword_27D9F26E0, &unk_22D018F80);
    sub_22CF0F640(v61, type metadata accessor for Activity);
    if ((*v79)(v62, 1, v92) == 1)
    {
      sub_22CEEC3D8(v91, &qword_27D9F26E0, &unk_22D018F80);
      v47 = v86;
      sub_22D01423C();
      v48 = v47;
      sub_22CEEC3D8(v58, &unk_27D9F3840, &unk_22D01A2B0);
      v34 = v80;
      v20 = v82;
      (*v88)(v80, v82);
      v49 = *v89;
    }

    else
    {
      v63 = v76;
      (*v74)(v76, v91, v92);
      v64 = v77;
      sub_22D01484C();
      v65 = v75;
      sub_22D01491C();
      (*v73)(v64, v78);
      sub_22CEF888C(&qword_281443A30, MEMORY[0x277CC9578]);
      v34 = v80;
      v20 = v82;
      v66 = sub_22D01663C();
      (*v72)(v63, v92);
      sub_22CEEC3D8(v58, &unk_27D9F3840, &unk_22D01A2B0);
      v67 = v89;
      v68 = *v88;
      if (v66)
      {
        v68(v34, v20);
        v49 = *v67;
        v48 = v86;
        (*v67)(v86, v65, v20);
      }

      else
      {
        v68(v65, v20);
        v49 = *v67;
        v48 = v86;
        (*v67)(v86, v34, v20);
      }
    }

    v44 = v85;
    v43 &= v43 - 1;
    result = (v49)(v34, v48, v20);
  }

  while (1)
  {
    v50 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v50 >= v90)
    {
      (*v88)(v70, v20);

      (*v89)(v71, v34, v20);
    }

    v43 = *(v44 + 8 * v50);
    ++v46;
    if (v43)
    {
      v46 = v50;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC1910(void *a1)
{
  v2 = sub_22D01559C();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0155CC();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01430C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v33 - v20;
  swift_beginAccess();
  sub_22CEEB6DC((a1 + 9), &v39, &qword_27D9F3278, &unk_22D01B2C0);
  if (*(&v40 + 1))
  {
    sub_22CEE3A84(&v39, v38);
    sub_22CEEC3D8(&v39, &qword_27D9F3278, &unk_22D01B2C0);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_22D0163DC();
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  else
  {
    sub_22CEEC3D8(&v39, &qword_27D9F3278, &unk_22D01B2C0);
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  swift_beginAccess();
  sub_22CF1B3B4(&v39, (a1 + 9));
  swift_endAccess();
  sub_22CFC11A4(v21);
  sub_22D01423C();
  v22 = sub_22D01428C();
  v23 = *(v13 + 8);
  v23(v18, v12);
  if (v22)
  {
    (*(v13 + 16))(v18, v21, v12);
    (*(v34 + 104))(v6, *MEMORY[0x277D4D518], v35);
    sub_22D01558C();
    v24 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
    swift_allocObject();
    swift_weakInit();

    sub_22D0155DC();

    (*(v36 + 8))(v11, v37);
    v23(v21, v12);

    sub_22CEF44D4(&v39, v38);
    swift_beginAccess();
    sub_22CF1B3B4(v38, (a1 + 9));
    return swift_endAccess();
  }

  else
  {
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v26 = sub_22D01637C();
    __swift_project_value_buffer(v26, qword_281444450);
    v27 = sub_22D01636C();
    v28 = sub_22D01690C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v12;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22CEE1000, v27, v28, "No more zombies awaiting dismissal", v30, 2u);
      MEMORY[0x2318C6860](v30, -1, -1);

      v31 = v21;
      v32 = v29;
    }

    else
    {

      v31 = v21;
      v32 = v12;
    }

    return (v23)(v31, v32);
  }
}

uint64_t sub_22CFC1E24()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(*(result + 16) + 16);
    v2 = result;
    os_unfair_lock_lock(v1);
    sub_22CFC1EB8(v2);
    os_unfair_lock_unlock(v1);
    v3 = *(*(v2 + 16) + 16);
    os_unfair_lock_lock(v3);
    sub_22CFC1910(v2);
    os_unfair_lock_unlock(v3);
  }

  return result;
}

uint64_t sub_22CFC1EB8(uint64_t a1)
{
  v2 = type metadata accessor for Activity();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v54 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v51 - v17);
  v59 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v19 = *(a1 + 112);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(a1 + 112) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v56 = *(a1 + 112);
  v57 = a1;

  v28 = 0;
  v52 = v15;
  v53 = v7;
  v51 = v18;
  while (v25)
  {
    v29 = v28;
LABEL_15:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = (*(v56 + 48) + 16 * v33);
    v36 = *v34;
    v35 = v34[1];
    v37 = v54;
    sub_22CF0CCBC(*(v56 + 56) + *(v55 + 72) * v33, v54, type metadata accessor for Activity);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v39 = *(v38 + 48);
    v15 = v52;
    *v52 = v36;
    *(v15 + 1) = v35;
    sub_22CF0A72C(v37, &v15[v39], type metadata accessor for Activity);
    (*(*(v38 - 8) + 56))(v15, 0, 1, v38);

    v31 = v29;
    v7 = v53;
    v18 = v51;
LABEL_16:
    sub_22CF82724(v15, v18);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v40 - 8) + 48))(v18, 1, v40) == 1)
    {

      v45 = v57;
      v46 = *(v57 + 112);
      MEMORY[0x28223BE20](v44, v47);
      *(&v51 - 2) = &v59;

      v49 = sub_22CFC3D3C(v48, sub_22CFC3A80);

      v50 = *(v45 + 112);
      *(v45 + 112) = v49;
    }

    v41 = *v18;
    v42 = v18[1];
    sub_22CF0A72C(v18 + *(v40 + 48), v7, type metadata accessor for Activity);
    if (sub_22CFC2374(v7))
    {
      sub_22CEE54CC(&v58, v41, v42);

      result = sub_22CF0F640(v7, type metadata accessor for Activity);
    }

    else
    {
      sub_22CF0F640(v7, type metadata accessor for Activity);
    }

    v28 = v31;
  }

  if (v26 <= v28 + 1)
  {
    v30 = v28 + 1;
  }

  else
  {
    v30 = v26;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v43 - 8) + 56))(v15, 1, 1, v43);
      v25 = 0;
      goto LABEL_16;
    }

    v25 = *(v21 + 8 * v29);
    ++v28;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC2374(uint64_t a1)
{
  v2 = v1;
  v173 = a1;
  v155 = sub_22D0164CC();
  v154 = *(v155 - 8);
  v3 = *(v154 + 64);
  MEMORY[0x28223BE20](v155, v4);
  v152 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22D01653C();
  v151 = *(v153 - 8);
  v6 = *(v151 + 64);
  MEMORY[0x28223BE20](v153, v7);
  v150 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for ActivityParticipantEvent(0);
  v145 = *(v144 - 8);
  v9 = *(v145 + 64);
  v11 = MEMORY[0x28223BE20](v144, v10);
  v147 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v149 = &v140 - v14;
  v15 = sub_22D01495C();
  v158 = *(v15 - 8);
  v16 = *(v158 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v160 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D01430C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v157 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v162 = &v140 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v165 = &v140 - v30;
  v31 = sub_22D01486C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22D01483C();
  v170 = *(v37 - 8);
  v38 = *(v170 + 64);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v140 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for Activity();
  v42 = *(*(v169 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v169, v43);
  v161 = (&v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = MEMORY[0x28223BE20](v44, v46);
  v156 = (&v140 - v48);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v142 = (&v140 - v51);
  MEMORY[0x28223BE20](v50, v52);
  v54 = (&v140 - v53);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v171 = v32;
    v172 = v31;
    v148 = v2;
    v143 = *(v2 + 128);
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v55 = sub_22D01637C();
    v56 = __swift_project_value_buffer(v55, qword_281444450);
    v57 = v173;
    sub_22CF0CCBC(v173, v54, type metadata accessor for Activity);
    v167 = v56;
    v58 = sub_22D01636C();
    v59 = sub_22D01690C();
    v60 = os_log_type_enabled(v58, v59);
    v166 = v36;
    v159 = v15;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v163 = v20;
      v62 = v61;
      v63 = swift_slowAlloc();
      v164 = v19;
      v64 = v63;
      aBlock[0] = v63;
      *v62 = 136446210;
      v65 = v41;
      v66 = v37;
      v67 = *v54;
      v68 = v54[1];

      sub_22CF0F640(v54, type metadata accessor for Activity);
      v69 = v67;
      v41 = v65;
      v57 = v173;
      v70 = sub_22CEEE31C(v69, v68, aBlock);
      v37 = v66;

      *(v62 + 4) = v70;
      _os_log_impl(&dword_22CEE1000, v58, v59, "Dismissing zombie activity: %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      v71 = v64;
      v19 = v164;
      MEMORY[0x2318C6860](v71, -1, -1);
      v72 = v62;
      v20 = v163;
      MEMORY[0x2318C6860](v72, -1, -1);
    }

    else
    {

      sub_22CF0F640(v54, type metadata accessor for Activity);
    }

    v74 = v171;
    v73 = v172;
    v75 = v169;
    v76 = *(v57 + *(v169 + 36));
    if (*(v76 + 16))
    {
      v77 = *(v170 + 16);
      v77(v41, v76 + ((*(v170 + 80) + 32) & ~*(v170 + 80)), v37);
      v78 = v57 + *(v75 + 60);
      v79 = v165;
      sub_22CEEB6DC(v78, v165, &qword_27D9F26E0, &unk_22D018F80);
      if ((*(v74 + 48))(v79, 1, v73) == 1)
      {
        sub_22CEEC3D8(v79, &qword_27D9F26E0, &unk_22D018F80);
        v80 = v156;
        sub_22CF0CCBC(v57, v156, type metadata accessor for Activity);
        v81 = sub_22D01636C();
        v82 = sub_22D01690C();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          aBlock[0] = v84;
          *v83 = 136446210;
          v85 = *v80;
          v86 = v80[1];

          sub_22CF0F640(v80, type metadata accessor for Activity);
          v87 = sub_22CEEE31C(v85, v86, aBlock);

          *(v83 + 4) = v87;
          _os_log_impl(&dword_22CEE1000, v81, v82, "Activity is not a zombie: %{public}s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v84);
          MEMORY[0x2318C6860](v84, -1, -1);
          MEMORY[0x2318C6860](v83, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_22CF0F640(v80, type metadata accessor for Activity);
        }

        (*(v170 + 8))(v41, v37);
        return 0;
      }

      v173 = v41;
      (*(v74 + 32))(v166, v79, v73);
      v96 = v160;
      sub_22D01484C();
      v97 = v162;
      sub_22D01491C();
      (*(v158 + 8))(v96, v159);
      v98 = v157;
      sub_22D0142DC();
      v99 = sub_22D01428C();
      v101 = *(v20 + 8);
      v100 = v20 + 8;
      v102 = v98;
      v103 = v101;
      v101(v102, v19);
      if ((v99 & 1) == 0)
      {
        v131 = v57;
        v132 = v142;
        sub_22CF0CCBC(v131, v142, type metadata accessor for Activity);
        v133 = sub_22D01636C();
        v134 = sub_22D01690C();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          aBlock[0] = v136;
          *v135 = 136446210;
          v163 = v100;
          v164 = v19;
          v137 = *v132;
          v138 = v132[1];

          sub_22CF0F640(v132, type metadata accessor for Activity);
          v139 = sub_22CEEE31C(v137, v138, aBlock);

          *(v135 + 4) = v139;
          _os_log_impl(&dword_22CEE1000, v133, v134, "Activity is not yet eligible for dismissal: %{public}s", v135, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v136);
          MEMORY[0x2318C6860](v136, -1, -1);
          MEMORY[0x2318C6860](v135, -1, -1);
          swift_unknownObjectRelease();

          v103(v97, v164);
        }

        else
        {
          swift_unknownObjectRelease();

          sub_22CF0F640(v132, type metadata accessor for Activity);
          v103(v97, v19);
        }

        (*(v171 + 8))(v166, v172);
        (*(v170 + 8))(v173, v37);
        return 0;
      }

      v104 = *v57;
      v105 = v57[1];
      v164 = v19;
      v165 = v104;
      v158 = v105;
      v106 = v169;
      v107 = (v57 + *(v169 + 52));
      v163 = v100;
      v108 = v107[1];
      v161 = *v107;
      v167 = v103;
      v159 = v108;
      v109 = v37;
      v141 = v37;
      v110 = v144;
      v111 = *(v144 + 24);

      sub_22D01494C();
      v112 = v149;
      sub_22D01485C();
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v77(&v112[v110[7]], v173, v109);
      v113 = v110[9];
      v114 = v170;
      v115 = *(v106 + 56);
      v116 = sub_22D0146BC();
      v117 = *(v116 - 8);
      (*(v117 + 16))(&v112[v113], v57 + v115, v116);
      (*(v117 + 56))(&v112[v113], 0, 1, v116);
      v118 = v158;
      *v112 = v165;
      *(v112 + 1) = v118;
      v119 = v159;
      *(v112 + 2) = v161;
      *(v112 + 3) = v119;
      v120 = &v112[v110[8]];
      v121 = v148;
      *v120 = v148;
      *(v120 + 1) = &off_28402BD78;
      v112[v110[10]] = 0;
      v169 = *(v121 + 64);
      v122 = v147;
      sub_22CF0CCBC(v112, v147, type metadata accessor for ActivityParticipantEvent);
      v123 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v124 = swift_allocObject();
      v125 = v143;
      *(v124 + 16) = Strong;
      *(v124 + 24) = v125;
      sub_22CF0A72C(v122, v124 + v123, type metadata accessor for ActivityParticipantEvent);
      aBlock[4] = sub_22CFA5C9C;
      aBlock[5] = v124;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CEF8B58;
      aBlock[3] = &block_descriptor_20;
      v126 = _Block_copy(aBlock);

      swift_unknownObjectRetain();
      v127 = v150;
      sub_22D0164EC();
      v174 = MEMORY[0x277D84F90];
      sub_22CEF888C(&qword_28143FA60, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CF0EDA8();
      v128 = v152;
      v129 = v155;
      sub_22D016ADC();
      MEMORY[0x2318C5B10](0, v127, v128, v126);
      _Block_release(v126);
      swift_unknownObjectRelease();
      (*(v154 + 8))(v128, v129);
      (*(v151 + 8))(v127, v153);
      sub_22CF0F640(v112, type metadata accessor for ActivityParticipantEvent);
      v167(v162, v164);
      (*(v171 + 8))(v166, v172);
      (*(v114 + 8))(v173, v141);
    }

    else
    {
      v88 = v161;
      sub_22CF0CCBC(v57, v161, type metadata accessor for Activity);
      v89 = sub_22D01636C();
      v90 = sub_22D0168EC();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        aBlock[0] = v92;
        *v91 = 136446210;
        v93 = *v88;
        v94 = v88[1];

        sub_22CF0F640(v88, type metadata accessor for Activity);
        v95 = sub_22CEEE31C(v93, v94, aBlock);

        *(v91 + 4) = v95;
        _os_log_impl(&dword_22CEE1000, v89, v90, "No content sources exist for dismissed activity: %{public}s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        MEMORY[0x2318C6860](v92, -1, -1);
        MEMORY[0x2318C6860](v91, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_22CF0F640(v88, type metadata accessor for Activity);
      }
    }

    return 1;
  }

  result = sub_22D016CFC();
  __break(1u);
  return result;
}

BOOL sub_22CFC3464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;

  LOBYTE(a2) = sub_22CF24034(a1, a2, v6);

  return (a2 & 1) == 0;
}

uint64_t sub_22CFC34C0()
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v1 = *(*(v73 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v73, v2);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v71 = (&v62 - v7);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v70 = (&v62 - v10);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v69 = (&v62 - v13);
  MEMORY[0x28223BE20](v12, v14);
  v68 = &v62 - v15;
  v62 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v62);
  swift_beginAccess();
  v16 = *(v0 + 112);
  v17 = *(v16 + 16);
  v81 = MEMORY[0x277D84F90];
  if (v17)
  {
    v82 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v17, 0);
    v81 = v82;
    v18 = v16 + 64;
    v19 = -1 << *(v16 + 32);
    v20 = sub_22D016AEC();
    v21 = 0;
    v22 = *(v16 + 36);
    v63 = v16 + 72;
    v64 = v17;
    v66 = v16 + 64;
    v65 = v22;
    v67 = v16;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v16 + 32))
    {
      if ((*(v18 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_26;
      }

      if (v22 != *(v16 + 36))
      {
        goto LABEL_27;
      }

      v75 = 1 << v20;
      v76 = v20 >> 6;
      v74 = v21;
      v24 = v73;
      v25 = *(v73 + 48);
      v26 = *(v16 + 56);
      v27 = (*(v16 + 48) + 16 * v20);
      v29 = *v27;
      v28 = v27[1];
      v30 = type metadata accessor for Activity();
      v31 = v68;
      sub_22CF0CCBC(v26 + *(*(v30 - 8) + 72) * v20, &v68[v25], type metadata accessor for Activity);
      v32 = v69;
      *v69 = v29;
      *(v32 + 8) = v28;
      v33 = *(v24 + 48);
      sub_22CF0A72C(&v31[v25], v32 + v33, type metadata accessor for Activity);
      v34 = v70;
      *v70 = v29;
      *(v34 + 8) = v28;
      sub_22CF0CCBC(v32 + v33, v34 + *(v24 + 48), type metadata accessor for Activity);
      v35 = v71;
      sub_22CEEB6DC(v34, v71, &unk_27D9F3840, &unk_22D01A2B0);
      v36 = *v35;
      v79 = v35[1];
      v80 = v36;
      v77 = *(v24 + 48);
      v37 = v72;
      sub_22CEEB6DC(v34, v72, &unk_27D9F3840, &unk_22D01A2B0);
      v38 = *(v37 + 8);
      swift_bridgeObjectRetain_n();

      v39 = *(v24 + 48);
      v78 = sub_22CF0B174();
      v41 = v40;
      v42 = v34;
      v43 = v81;
      sub_22CEEC3D8(v42, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v37 + v39, type metadata accessor for Activity);
      sub_22CF0F640(v35 + v77, type metadata accessor for Activity);
      sub_22CEEC3D8(v32, &unk_27D9F3840, &unk_22D01A2B0);
      v82 = v43;
      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      v81 = v43;
      if (v45 >= v44 >> 1)
      {
        sub_22CF4414C((v44 > 1), v45 + 1, 1);
        v81 = v82;
      }

      v47 = v80;
      v46 = v81;
      *(v81 + 16) = v45 + 1;
      v48 = (v46 + 48 * v45);
      v49 = v78;
      v50 = v79;
      v48[4] = v47;
      v48[5] = v50;
      v48[6] = v49;
      v48[7] = v41;
      v48[9] = MEMORY[0x277D837D0];
      v16 = v67;
      v23 = 1 << *(v67 + 32);
      if (v20 >= v23)
      {
        goto LABEL_28;
      }

      v18 = v66;
      v51 = *(v66 + 8 * v76);
      if ((v51 & v75) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v22) = v65;
      if (v65 != *(v67 + 36))
      {
        goto LABEL_30;
      }

      v52 = v51 & (-2 << (v20 & 0x3F));
      if (v52)
      {
        v23 = __clz(__rbit64(v52)) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v53 = v76 << 6;
        v54 = v76 + 1;
        v55 = (v63 + 8 * v76);
        while (v54 < (v23 + 63) >> 6)
        {
          v57 = *v55++;
          v56 = v57;
          v53 += 64;
          ++v54;
          if (v57)
          {
            sub_22CF44CF8(v20, v65, 0);
            v23 = __clz(__rbit64(v56)) + v53;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v20, v65, 0);
      }

LABEL_4:
      v21 = v74 + 1;
      v20 = v23;
      if (v74 + 1 == v64)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v81 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v58 = sub_22D016D3C();
    }

    else
    {
      v58 = MEMORY[0x277D84F98];
    }

    v82 = v58;

    sub_22CF623EC(v59, 1, &v82);

    v60 = v82;
    os_unfair_lock_unlock(v62);
    return v60;
  }

  return result;
}

void *sub_22CFC3A88(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
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

    v8 = sub_22CFC3B18(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22CFC3B18(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v28 = a2;
  v33 = a4;
  v29 = a1;
  v5 = type metadata accessor for Activity();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  result = MEMORY[0x28223BE20](v5 - 8, v7);
  v30 = 0;
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v34 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v18 = v31;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v35 = (v16 - 1) & v16;
LABEL_11:
    v22 = v19 | (v10 << 6);
    v23 = (v34[6] + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = v22;
    sub_22CF0CCBC(v34[7] + *(v32 + 72) * v22, v18, type metadata accessor for Activity);

    LOBYTE(v24) = v33(v24, v25, v18);
    sub_22CF0F640(v18, type metadata accessor for Activity);

    v16 = v35;
    if (v24)
    {
      *(v29 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return sub_22CEE4A40(v29, v28, v30, v34);
      }
    }
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_22CEE4A40(v29, v28, v30, v34);
    }

    v21 = v12[v10];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v35 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC3D3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = v2;
  v5 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v10);
    v12 = v19 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_22CFC3B18(v12, v9, v5, a2);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v15 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v15;
    goto LABEL_2;
  }

  v16 = swift_slowAlloc();
  v17 = v3;
  v18 = sub_22CFC3A88(v16, v9, v5, a2);
  result = MEMORY[0x2318C6860](v16, -1, -1);
  if (!v17)
  {
    result = v18;
  }

LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityCountLimits(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityCountLimits(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_22CFC3F28()
{
  type metadata accessor for Singleton();
  swift_allocObject();
  result = sub_22CFC3F8C();
  off_281441820 = result;
  return result;
}

uint64_t sub_22CFC3F8C()
{
  v1 = v0;
  sub_22D0166AC();
  v2 = sub_22D0163CC();

  v3 = sub_22D01638C();
  if (v2)
  {
    if (v3 && v2 == v3)
    {
LABEL_4:
      if (qword_28143FB20 != -1)
      {
        swift_once();
      }

      v4 = sub_22D01637C();
      __swift_project_value_buffer(v4, qword_281444408);
      v5 = sub_22D01636C();
      v6 = sub_22D01690C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_22CEE1000, v5, v6, "Detected first launch", v7, 2u);
        MEMORY[0x2318C6860](v7, -1, -1);
      }

      *(v0 + 16) = 1;
      sub_22D0163AC();
      sub_22D0166AC();
      v8 = sub_22D0163BC();

      v9 = sub_22D01638C();
      if (v8)
      {
        if (v9 && v8 == v9)
        {
          goto LABEL_11;
        }
      }

      else if (!v9)
      {
LABEL_11:
        v10 = sub_22D01636C();
        v11 = sub_22D0168EC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 67240192;
          *(v12 + 4) = MEMORY[0x2318C5500]();
          _os_log_impl(&dword_22CEE1000, v10, v11, "Failed to create semaphore for first launch detector: %{public}d", v12, 8u);
          MEMORY[0x2318C6860](v12, -1, -1);
        }

        return v1;
      }

      sem_close(v8);
      return v1;
    }
  }

  else if (!v3)
  {
    goto LABEL_4;
  }

  if (qword_28143FB20 != -1)
  {
    swift_once();
  }

  v13 = sub_22D01637C();
  __swift_project_value_buffer(v13, qword_281444408);
  v14 = sub_22D01636C();
  v15 = sub_22D01690C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22CEE1000, v14, v15, "Detected subsequent launch", v16, 2u);
    MEMORY[0x2318C6860](v16, -1, -1);
  }

  sem_close(v2);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_22CFC4330(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_22CF4412C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22D016AEC();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = *(a1 + 48) + 40 * v7;
    v12 = *(v11 + 24);
    v25 = *(v11 + 16);
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_22CF4412C((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_22CF44CF8(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_22CF44CF8(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
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

uint64_t sub_22CFC455C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_22CF4412C(0, v2, 0);
    v4 = v35;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_22D016AEC();
    v7 = result;
    v8 = 0;
    v28 = v1 + 64;
    v29 = v2;
    v30 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v31 = v8;
      v32 = *(v1 + 36);
      v11 = *(v1 + 48) + 40 * v7;
      v12 = *(v11 + 24);
      v13 = *(v11 + 32);
      v33 = *v11;
      v34 = *(v11 + 8);
      swift_bridgeObjectRetain_n();

      MEMORY[0x2318C5860](10272, 0xE200000000000000);
      if (v13)
      {
        v14 = 2037278052;
      }

      else
      {
        v14 = 0x776F6C6C61;
      }

      if (v13)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      MEMORY[0x2318C5860](v14, v15);

      MEMORY[0x2318C5860](41, 0xE100000000000000);

      v16 = v4;
      v36 = v4;
      v17 = v1;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_22CF4412C((v18 > 1), v19 + 1, 1);
        v16 = v36;
      }

      *(v16 + 16) = v19 + 1;
      v20 = v16 + 16 * v19;
      *(v20 + 32) = v33;
      *(v20 + 40) = v34;
      v9 = 1 << *(v17 + 32);
      if (v7 >= v9)
      {
        goto LABEL_29;
      }

      v5 = v30;
      v21 = *(v30 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_30;
      }

      v1 = v17;
      v4 = v16;
      if (v32 != *(v1 + 36))
      {
        goto LABEL_31;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
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
            result = sub_22CF44CF8(v7, v32, 0);
            v9 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v7, v32, 0);
      }

LABEL_4:
      v8 = v31 + 1;
      v7 = v9;
      if (v31 + 1 == v29)
      {
        return v4;
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
  }

  return result;
}

uint64_t sub_22CFC4814(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_22CF4412C(0, v2, 0);
    v4 = v33;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_22D016AEC();
    v7 = result;
    v8 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v8;
      v30 = *(v1 + 36);
      v11 = (*(v1 + 48) + 40 * v7);
      v13 = v11[2];
      v12 = v11[3];
      v31 = *v11;
      v32 = v11[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x2318C5860](10272, 0xE200000000000000);
      MEMORY[0x2318C5860](v13, v12);
      MEMORY[0x2318C5860](41, 0xE100000000000000);

      v14 = v4;
      v34 = v4;
      v15 = v1;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_22CF4412C((v16 > 1), v17 + 1, 1);
        v14 = v34;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v31;
      *(v18 + 40) = v32;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_22CF44CF8(v7, v30, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v7, v30, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v9;
      if (v29 + 1 == v27)
      {
        return v4;
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

uint64_t sub_22CFC4AC4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v9 = *(v2 + *a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3480, &qword_22D01B598);
    sub_22CEE8394(&qword_28143FA98, &unk_27D9F3480, &qword_22D01B598);
    v6 = v2;
    v5 = sub_22D01646C();
    v7 = *(v2 + v3);
    *(v6 + v3) = v5;
  }

  return v5;
}

uint64_t sub_22CFC4B98()
{
  v1 = OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher;
  if (*(v0 + OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC11SessionCore16AppEventObserver__restrictionsChangedPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
    sub_22CEE8394(&qword_28143D998, &unk_27D9F3470, &qword_22D018BA0);
    v3 = v0;
    v2 = sub_22D01646C();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_22CFC4DB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCore16AppEventObserver_restrictionProviders);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      swift_unknownObjectRetain();
      v8 = v7(ObjectType, v5);
      v10 = v9;
      (*(v5 + 8))(ObjectType, v5);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v8;
      v12[4] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3490, &qword_22D01B5A0);
      sub_22CEE8394(&qword_28143D9C8, &qword_27D9F3490, &qword_22D01B5A0);
      sub_22D0164AC();

      swift_beginAccess();
      sub_22D0163EC();
      swift_endAccess();

      (*(v5 + 24))(ObjectType, v5);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_22CFC4FB0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock);
    v9 = MEMORY[0x28223BE20](Strong, v3);
    MEMORY[0x28223BE20](v9, v6);

    os_unfair_lock_lock(v5 + 4);
    sub_22CFC8C0C(&v10);
    os_unfair_lock_unlock(v5 + 4);
    v7 = v10;

    if (v7 == 1)
    {
      v8 = *&v4[OBJC_IVAR____TtC11SessionCore16AppEventObserver__restrictionsChangedPublisher];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
      sub_22CEE8394(&qword_28143D9A0, &unk_27D9F3470, &qword_22D018BA0);
      sub_22D01645C();
    }
  }
}

uint64_t sub_22CFC5124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock_restrictions;
  v11 = *(a1 + OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock_restrictions);

  v13 = sub_22CFC88F4(v12, a2, a3);

  if (sub_22CF75CFC(v13, a4))
  {

    *a5 = 0;
  }

  else
  {
    v39 = v10;
    if (*(v13 + 16) <= *(a4 + 16) >> 3)
    {
      v41 = a4;

      sub_22CF628D4(v13);
      v15 = a4;
    }

    else
    {

      v15 = sub_22CF631C0(v13, a4);
    }

    v16 = sub_22CFC455C(v15);

    if (*(a4 + 16) <= *(v13 + 16) >> 3)
    {
      v41 = v13;

      sub_22CF628D4(a4);
      v17 = v13;
    }

    else
    {

      v17 = sub_22CF631C0(a4, v13);
    }

    v40 = a1;
    v18 = sub_22CFC455C(v17);

    if (qword_28143DAA0 != -1)
    {
      swift_once();
    }

    v19 = sub_22D01637C();
    __swift_project_value_buffer(v19, qword_281444308);

    v20 = sub_22D01636C();
    v21 = sub_22D01690C();

    if (os_log_type_enabled(v20, v21))
    {
      v38 = a5;
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v22 = 136446723;
      *(v22 + 4) = sub_22CEEE31C(a2, a3, &v41);
      *(v22 + 12) = 2081;
      v23 = MEMORY[0x2318C5950](v16, MEMORY[0x277D837D0]);
      v25 = v24;

      v26 = sub_22CEEE31C(v23, v25, &v41);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2081;
      v27 = MEMORY[0x2318C5950](v18, MEMORY[0x277D837D0]);
      v29 = v28;

      v30 = sub_22CEEE31C(v27, v29, &v41);

      *(v22 + 24) = v30;
      _os_log_impl(&dword_22CEE1000, v20, v21, "Restrictions changed by %{public}s.  Added: %{private}s; removed: %{private}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v37, -1, -1);
      v31 = v22;
      a5 = v38;
      MEMORY[0x2318C6860](v31, -1, -1);
    }

    else
    {
    }

    v32 = *(v40 + v39);
    if (*(v13 + 16) <= *(v32 + 16) >> 3)
    {
      v41 = *(v40 + v39);

      sub_22CF628D4(v13);

      v34 = v41;
    }

    else
    {
      v33 = *(v40 + v39);

      v34 = sub_22CF631C0(v13, v32);
    }

    v41 = v34;

    sub_22CFC5524(v35);
    v36 = *(v40 + v39);
    *(v40 + v39) = v41;

    *a5 = 1;
  }

  return result;
}

uint64_t sub_22CFC5524(uint64_t result)
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
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    v14 = *(v10 + 32);
    v11 = *(v10 + 16);
    v13[0] = *v10;
    v13[1] = v11;
    v15 = v13[0];
    v16 = v11;
    sub_22CF655EC(&v15, v12);
    sub_22CF655EC(&v16, v12);
    sub_22CF768E4(v12, v13);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC56AC(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22D016CBC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22CEEE3E8(i, v6);
    sub_22CFC8B94();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22D016C9C();
    v4 = *(v7 + 16);
    sub_22D016CCC();
    sub_22D016CDC();
    sub_22D016CAC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

unint64_t sub_22CFC57B0(unint64_t result, void *a2)
{
  if (result)
  {
    result = sub_22CFC56AC(result);
    if (result)
    {
      v4 = result;
      v5 = result & 0xFFFFFFFFFFFFFF8;
      if (result >> 62)
      {
LABEL_23:
        v6 = sub_22D016B7C();
        v24 = v2;
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v2 = MEMORY[0x277D84F90];
          do
          {
            v8 = v7;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v9 = MEMORY[0x2318C5DE0](v8, v4);
              }

              else
              {
                if (v8 >= *(v5 + 16))
                {
                  goto LABEL_22;
                }

                v9 = *(v4 + 8 * v8 + 32);
              }

              v10 = v9;
              v7 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

              v11 = [v9 bundleIdentifier];
              if (v11)
              {
                break;
              }

              ++v8;
              if (v7 == v6)
              {
                goto LABEL_25;
              }
            }

            v23 = a2;
            v12 = v11;
            v13 = sub_22D01667C();
            v22 = v14;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_22CFCE000(0, *(v2 + 2) + 1, 1, v2);
            }

            v16 = *(v2 + 2);
            v15 = *(v2 + 3);
            if (v16 >= v15 >> 1)
            {
              v2 = sub_22CFCE000((v15 > 1), v16 + 1, 1, v2);
            }

            *(v2 + 2) = v16 + 1;
            v17 = &v2[16 * v16];
            a2 = v23;
            *(v17 + 4) = v13;
            *(v17 + 5) = v22;
          }

          while (v7 != v6);
          goto LABEL_25;
        }
      }

      else
      {
        v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v2;
        if (v6)
        {
          goto LABEL_5;
        }
      }

      v2 = MEMORY[0x277D84F90];
LABEL_25:

      v18 = __swift_project_boxed_opaque_existential_1(&v24[OBJC_IVAR____TtC11SessionCore16AppEventObserver_knownClientStore], *&v24[OBJC_IVAR____TtC11SessionCore16AppEventObserver_knownClientStore + 24]);
      v19 = *v18;
      v20 = *(*(*v18 + 40) + 16);
      os_unfair_lock_lock(v20);
      sub_22CFCC038(v2, v19);
      os_unfair_lock_unlock(v20);
      v21 = *&v24[*a2];
      sub_22D01641C();
    }
  }

  return result;
}

uint64_t sub_22CFC59CC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_22D0167DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  sub_22CFC57B0(v6, a4);
}

uint64_t sub_22CFC5A48()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_22CF052E4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_22CFC5AD4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock_restrictions;
  v5 = *(a1 + OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock_restrictions);

  v7 = sub_22CFC75FC(v6);
  v8 = sub_22CFC4814(v7);

  v9 = *(a1 + v4);

  v11 = sub_22CFC7828(v10);
  v12 = sub_22CFC4814(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = 0x73694C776F6C6C61;
  *(inited + 40) = 0xE900000000000074;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F8, &unk_22D018B50);
  *(inited + 48) = v12;
  *(inited + 72) = v14;
  *(inited + 80) = 0x7473694C796E6564;
  *(inited + 120) = v14;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v8;
  v15 = sub_22CF11C44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  result = swift_arrayDestroy();
  *a2 = v15;
  return result;
}

uint64_t sub_22CFC5C50()
{
  if (*v0)
  {
    result = 2037278052;
  }

  else
  {
    result = 0x776F6C6C61;
  }

  *v0;
  return result;
}

uint64_t sub_22CFC5C80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22D016EAC();
  sub_22D0166DC();
  sub_22D0166DC();
  MEMORY[0x2318C6020](v5);
  return sub_22D016ECC();
}

uint64_t sub_22CFC5D00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22D0166DC();
  sub_22D0166DC();
  return MEMORY[0x2318C6020](v5);
}

uint64_t sub_22CFC5D54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22D016EAC();
  sub_22D0166DC();
  sub_22D0166DC();
  MEMORY[0x2318C6020](v5);
  return sub_22D016ECC();
}

uint64_t sub_22CFC5DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_22D016DFC()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_22D016DFC()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

id sub_22CFC5E84()
{
  *&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider____lazy_storage___restrictionsPublisher] = 0;
  v1 = OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider__restrictionsPublisher;
  v8 = MEMORY[0x277D84FA0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3468, &unk_22D01B588);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = sub_22D01644C();
  v5 = &v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name];
  strcpy(&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name], "ManagedConfig");
  *(v5 + 7) = -4864;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_profileConnection] = result;
    v7.receiver = v0;
    v7.super_class = type metadata accessor for ManagedConfigRestrictionProvider();
    return objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22CFC5FA8()
{
  v1 = *&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_profileConnection];
  [v1 registerObserver_];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_22CFC872C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_22CF217E0;
  v5[3] = &block_descriptor_21;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 checkInWithCompletion_];
  _Block_release(v3);
}

void sub_22CFC609C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_28143DAA0 != -1)
    {
      swift_once();
    }

    v3 = sub_22D01637C();
    __swift_project_value_buffer(v3, qword_281444308);
    v4 = a1;
    oslog = sub_22D01636C();
    v5 = sub_22D0168EC();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_22CEE1000, oslog, v5, "Failed to check in profile connection: %{public}@", v6, 0xCu);
      sub_22CFC8734(v7);
      MEMORY[0x2318C6860](v7, -1, -1);
      MEMORY[0x2318C6860](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }

  else
  {
    if (qword_28143DAA0 != -1)
    {
      swift_once();
    }

    v11 = sub_22D01637C();
    __swift_project_value_buffer(v11, qword_281444308);
    v12 = sub_22D01636C();
    v13 = sub_22D01690C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22CEE1000, v12, v13, "Checked in profile connection", v14, 2u);
      MEMORY[0x2318C6860](v14, -1, -1);
    }

    sub_22CFC6344();
  }
}

id sub_22CFC6344()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_profileConnection);
  v3 = [v2 effectiveWhitelistedAppBundleIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22D01685C();

    v6 = sub_22CFC663C(v5);
  }

  else
  {
    v6 = 0;
  }

  result = [v2 effectiveBlockedAppBundleIDs];
  if (result)
  {
    v8 = result;
    v9 = sub_22D01685C();

    v10 = sub_22CFC663C(v9);
  }

  else
  {
    v10 = 0;
  }

  v39 = MEMORY[0x277D84FA0];
  if (v6)
  {
    v11 = 0;
    v12 = 1 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v1 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name);
    for (i = (v12 + 63) >> 6; v14; result = )
    {
      v17 = v11;
LABEL_16:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = (*(v6 + 48) + ((v17 << 10) | (16 * v18)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *v15;
      v23 = v15[1];
      v40[0] = v21;
      v40[1] = v20;
      v40[2] = v22;
      v40[3] = v23;
      v41 = 0;

      sub_22CF768E4(v42, v40);
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= i)
      {

        goto LABEL_19;
      }

      v14 = *(v6 + 56 + 8 * v17);
      ++v11;
      if (v14)
      {
        v11 = v17;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (!v10)
    {
LABEL_31:
      v37 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider__restrictionsPublisher);
      v38 = v39;
      sub_22D01643C();
    }

    v24 = 0;
    v25 = 1 << *(v10 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v10 + 56);
    v28 = (v1 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name);
    for (j = (v25 + 63) >> 6; v27; result = )
    {
      v30 = v24;
LABEL_28:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = (*(v10 + 48) + ((v30 << 10) | (16 * v31)));
      v34 = *v32;
      v33 = v32[1];
      v35 = *v28;
      v36 = v28[1];
      v42[0] = v34;
      v42[1] = v33;
      v42[2] = v35;
      v42[3] = v36;
      v43 = 1;

      sub_22CF768E4(&v38, v42);
    }

    while (1)
    {
      v30 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v30 >= j)
      {

        goto LABEL_31;
      }

      v27 = *(v10 + 56 + 8 * v30);
      ++v24;
      if (v27)
      {
        v24 = v30;
        goto LABEL_28;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC663C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
    v2 = sub_22D016C3C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_22CFC088C(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_22CFDAE24(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_22CFC680C(void *a1, SEL *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  [*&v4[*a1] *a2];
  v8.receiver = v4;
  v8.super_class = a4(a3);
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id sub_22CFC68A0(char *a1, uint64_t a2, void *a3, SEL *a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v9 = *&a1[*a3];
  v10 = a1;
  [v9 *a4];
  v12.receiver = v10;
  v12.super_class = a6(a5);
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t sub_22CFC69B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name);
  v2 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name + 8);

  return v1;
}

uint64_t sub_22CFC6A0C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v9 = *(v2 + *a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3468, &unk_22D01B588);
    sub_22CEE8394(&qword_28143D990, &qword_27D9F3468, &unk_22D01B588);
    v6 = v2;
    v5 = sub_22D01646C();
    v7 = *(v2 + v3);
    *(v6 + v3) = v5;
  }

  return v5;
}

id sub_22CFC6BB8()
{
  v1 = *&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_subjectMonitorSubscription];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppProtectionRestrictionProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_22CFC6D10()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 lockedApplications];
  sub_22D0168BC();
  v4 = sub_22D0167DC();

  if (v4 >> 62)
  {
    v5 = sub_22D016B7C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  v40 = v1;
  if (v5)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_22CF4412C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v39 = v2;
    v8 = 0;
    v9 = v41;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2318C5DE0](v8, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 bundleIdentifier];
      v13 = sub_22D01667C();
      v15 = v14;

      v17 = *(v41 + 16);
      v16 = *(v41 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22CF4412C((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v41 + 16) = v17 + 1;
      v18 = v41 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v5 != v8);

    v2 = v39;
    v6 = MEMORY[0x277D84F90];
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v19 = sub_22CF7BDC4(v9);

  v20 = [v2 hiddenApplications];
  v21 = sub_22D0167DC();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_27:

    v24 = MEMORY[0x277D84F90];
LABEL_28:
    v34 = sub_22CF7BDC4(v24);

    v35 = sub_22CFC72E8(v34, v19);
    v36 = v40;
    v37 = sub_22CFC7C84(v35, v36);

    v38 = *&v36[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider__restrictionsPublisher];
    sub_22CF7C1FC(v37);

    sub_22D01643C();
  }

  v22 = sub_22D016B7C();
  if (!v22)
  {
    goto LABEL_27;
  }

LABEL_16:
  result = sub_22CF4412C(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = v6;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2318C5DE0](v23, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v25 bundleIdentifier];
      v28 = sub_22D01667C();
      v30 = v29;

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22CF4412C((v31 > 1), v32 + 1, 1);
      }

      ++v23;
      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    while (v22 != v23);

    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_22CFC70AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_name);
  v2 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_name + 8);

  return v1;
}

char *sub_22CFC70E8()
{
  v1 = [objc_msgSend(objc_opt_self() subjectMonitorRegistry)];
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_subjectMonitorSubscription);
  *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_subjectMonitorSubscription) = v1;
  swift_unknownObjectRelease();

  return sub_22CFC6D10();
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22CFC71D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22CFC7220(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_22CFC7278()
{
  result = qword_28143F3F8;
  if (!qword_28143F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143F3F8);
  }

  return result;
}

uint64_t sub_22CFC72E8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22CEE54CC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC73EC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_22CFC744C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *sub_22CFC74C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

void *sub_22CFC7574(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_22CFC75FC(uint64_t a1)
{
  v1 = a1;
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  v4 = 8 * v3;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1, v4);
    v6 = v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v13 = v12 | (v8 << 6);
LABEL_12:
      if (*(*(v1 + 48) + 40 * v13 + 32) == 1)
      {
        *&v6[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_22CF64D2C(v6, v3, v7, v1);
          goto LABEL_17;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= ((v9 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v15 = *(v1 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v19 = v4;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v4 = v19;
  }

  v20 = swift_slowAlloc();
  v21 = sub_22CFC7574(v20, v3, v1, sub_22CFC7B68);

  MEMORY[0x2318C6860](v20, -1, -1);
  result = v21;
LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CFC7828(uint64_t a1)
{
  v1 = a1;
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  v4 = 8 * v3;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1, v4);
    v6 = v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v13 = v12 | (v8 << 6);
LABEL_12:
      if ((*(*(v1 + 48) + 40 * v13 + 32) & 1) == 0)
      {
        *&v6[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_22CF64D2C(v6, v3, v7, v1);
          goto LABEL_17;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= ((v9 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v15 = *(v1 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v19 = v4;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v4 = v19;
  }

  v20 = swift_slowAlloc();
  v21 = sub_22CFC7574(v20, v3, v1, sub_22CFC7A50);

  MEMORY[0x2318C6860](v20, -1, -1);
  result = v21;
LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CFC7A50(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if ((*(*(a3 + 48) + 40 * v12 + 32) & 1) == 0)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_22CF64D2C(v5, a2, v6, a3);
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC7B68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 40 * v12 + 32) == 1)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_22CF64D2C(v5, a2, v6, a3);
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC7C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v31 = MEMORY[0x277D84F90];
  sub_22CF44304(0, v2, 0);
  v3 = v31;
  v6 = a1 + 56;
  v7 = -1 << *(a1 + 32);
  result = sub_22D016AEC();
  v9 = result;
  v10 = 0;
  v26 = *(a2 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_name + 8);
  v27 = *(a2 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_name);
  v25 = v2;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v10;
    v29 = *(a1 + 36);
    v13 = (*(a1 + 48) + 16 * v9);
    v14 = v13[1];
    v30 = *v13;
    v15 = *(v31 + 16);
    v16 = *(v31 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_22CF44304((v16 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v17 = v31 + 40 * v15;
    *(v17 + 32) = v30;
    *(v17 + 40) = v14;
    *(v17 + 48) = v27;
    *(v17 + 56) = v26;
    *(v17 + 64) = 1;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v6 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v12);
    if ((v18 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v9 & 0x3F));
    if (v19)
    {
      v11 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (a1 + 64 + 8 * v12);
      while (v21 < (v11 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_22CF44CF8(v9, v29, 0);
          v11 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_22CF44CF8(v9, v29, 0);
    }

LABEL_4:
    v10 = v28 + 1;
    v9 = v11;
    if (v28 + 1 == v25)
    {
      return v3;
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

uint64_t sub_22CFC7EDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v24 = 0;
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
LABEL_12:
    v17 = v14 | (v8 << 6);
    v18 = *(a3 + 48) + 40 * v17;
    result = *v18;
    v19 = *(v18 + 32);
    if (*v18 == a4 && *(v18 + 8) == a5)
    {
      if ((*(v18 + 32) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = sub_22D016DFC();
      if (!(v19 & 1 | ((result & 1) == 0)))
      {
LABEL_18:
        *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_21:

          return sub_22CF64D2C(v23, a2, v24, a3);
        }
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
      goto LABEL_21;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC8050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v29 = v10;
    v30 = v4;
    v28 = &v28;
    MEMORY[0x28223BE20](v12, v13);
    v31 = &v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v11);
    v32 = 0;
    v4 = 0;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v11 = v15 & *(a1 + 56);
    v16 = (v14 + 63) >> 6;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v10 = v17 | (v4 << 6);
      v20 = *(a1 + 48) + 40 * v10;
      if (*v20 == a2 && *(v20 + 8) == a3)
      {
        if ((*(v20 + 32) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = *(v20 + 32);
        if (!(v21 & 1 | ((sub_22D016DFC() & 1) == 0)))
        {
LABEL_19:
          *&v31[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
          if (__OFADD__(v32++, 1))
          {
            __break(1u);
LABEL_22:
            v24 = sub_22CF64D2C(v31, v29, v32, a1);

            goto LABEL_23;
          }
        }
      }
    }

    v18 = v4;
    while (1)
    {
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v4 >= v16)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 56 + 8 * v4);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v27 = swift_slowAlloc();

  v24 = sub_22CFC74C0(v27, v10, a1, a2, a3, sub_22CFC7EDC);

  MEMORY[0x2318C6860](v27, -1, -1);

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_22CFC8304(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v24 = 0;
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
LABEL_12:
    v17 = v14 | (v8 << 6);
    v18 = *(a3 + 48) + 40 * v17;
    result = *v18;
    v19 = *(v18 + 32);
    if (*v18 == a4 && *(v18 + 8) == a5)
    {
      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = sub_22D016DFC();
      if (result & v19)
      {
LABEL_18:
        *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_21:

          return sub_22CF64D2C(v23, a2, v24, a3);
        }
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
      goto LABEL_21;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC8478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v29 = v10;
    v30 = v4;
    v28 = &v28;
    MEMORY[0x28223BE20](v12, v13);
    v31 = &v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v11);
    v32 = 0;
    v4 = 0;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v11 = v15 & *(a1 + 56);
    v16 = (v14 + 63) >> 6;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v10 = v17 | (v4 << 6);
      v20 = *(a1 + 48) + 40 * v10;
      v21 = *(v20 + 32);
      if (*v20 == a2 && *(v20 + 8) == a3)
      {
        if (v21)
        {
          goto LABEL_19;
        }
      }

      else if (sub_22D016DFC() & v21)
      {
LABEL_19:
        *&v31[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_22:
          v24 = sub_22CF64D2C(v31, v29, v32, a1);

          goto LABEL_23;
        }
      }
    }

    v18 = v4;
    while (1)
    {
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v4 >= v16)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 56 + 8 * v4);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v27 = swift_slowAlloc();

  v24 = sub_22CFC74C0(v27, v10, a1, a2, a3, sub_22CFC8304);

  MEMORY[0x2318C6860](v27, -1, -1);

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_22CFC8734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2380, &unk_22D019C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CFC879C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = *(a3 + 48) + 40 * v18;
    result = *(v19 + 16);
    if (result != a4 || *(v19 + 24) != a5)
    {
      result = sub_22D016DFC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      return sub_22CF64D2C(v23, a2, v8, a3);
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC88F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v27 = swift_slowAlloc();

      v24 = sub_22CFC74C0(v27, v10, a1, a2, a3, sub_22CFC879C);

      MEMORY[0x2318C6860](v27, -1, -1);

      goto LABEL_22;
    }
  }

  v29 = v10;
  v30 = v4;
  v28[1] = v28;
  MEMORY[0x28223BE20](v12, v13);
  v14 = v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, v11);
  v15 = 0;
  v4 = 0;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v10 = v17 & *(a1 + 56);
  v18 = (v16 + 63) >> 6;
  while (2)
  {
    v31 = v15;
    do
    {
      if (!v10)
      {
        v20 = v4;
        while (1)
        {
          v4 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v4 >= v18)
          {
            goto LABEL_21;
          }

          v21 = *(a1 + 56 + 8 * v4);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v10 = (v21 - 1) & v21;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v11 = v19 | (v4 << 6);
      v22 = *(a1 + 48) + 40 * v11;
      v23 = *(v22 + 16) == a2 && *(v22 + 24) == a3;
    }

    while (!v23 && (sub_22D016DFC() & 1) == 0);
    *&v14[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
    v15 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v24 = sub_22CF64D2C(v14, v29, v31, a1);

LABEL_22:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

unint64_t sub_22CFC8B94()
{
  result = qword_28143F9F8;
  if (!qword_28143F9F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143F9F8);
  }

  return result;
}

void sub_22CFC8BE0(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_22CFC4FB0(a1);
}

void *sub_22CFC8C0C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_22CFC8C64()
{
  result = qword_27D9F3498;
  if (!qword_27D9F3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3498);
  }

  return result;
}

void *sub_22CFC8CB8(void *a1)
{
  v2 = v1;
  v4 = sub_22D015E7C();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v56 = &v53 - v10;
  v63 = sub_22D01697C();
  v11 = *(v63 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v63, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01691C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v19 = sub_22D01653C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  sub_22D015B0C();
  v1[2] = sub_22D015AFC();
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  v2[4] = v22;
  v62 = sub_22CEEC38C();
  sub_22D0164FC();
  v64 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  v24 = v2;
  sub_22D016ADC();
  (*(v11 + 104))(v15, *MEMORY[0x277D85268], v63);
  v25 = a1;
  v24[3] = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v26 = qword_2814444F8;
  v24[5] = qword_2814444F8;
  if (v26)
  {
    v27 = *(v26 + 32);

    v28 = sub_22CF51040();
    v54 = v25;
    v55 = v24;

    v29 = *(v28 + 16);
    v58 = v28;
    v30 = 0;
    if (v29)
    {
      v31 = v60;
      v32 = *(v59 + 16);
      v33 = v28 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v61 = *(v59 + 72);
      v62 = v32;
      v34 = v56;
      v63 = v59 + 16;
      v35 = (v59 + 8);
      v36 = 0xE000000000000000;
      v37 = v29;
      do
      {
        v62(v34, v33, v31);
        v64 = v30;
        v65 = v36;

        MEMORY[0x2318C5860](8236, 0xE200000000000000);
        v38 = sub_22D015E4C();
        MEMORY[0x2318C5860](v38);

        v30 = v64;
        v36 = v65;
        (*v35)(v34, v31);
        v33 += v61;
        --v37;
      }

      while (v37);
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v39 = sub_22D01637C();
    __swift_project_value_buffer(v39, qword_2814443C0);

    v40 = sub_22D01636C();
    v41 = sub_22D01690C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64 = v43;
      *v42 = 136446210;
      v44 = sub_22CEEE31C(v30, v36, &v64);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_22CEE1000, v40, v41, "Restored push tokens with identifiers: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x2318C6860](v43, -1, -1);
      MEMORY[0x2318C6860](v42, -1, -1);
    }

    else
    {
    }

    v24 = v55;
    v45 = v60;
    v46 = v57;
    if (v29)
    {
      v47 = *(v59 + 16);
      v48 = v58 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v49 = *(v59 + 72);
      v50 = (v59 + 8);
      do
      {
        v47(v46, v48, v45);
        v51 = v24[2];
        sub_22D015ADC();
        (*v50)(v46, v45);
        v48 += v49;
        --v29;
      }

      while (v29);
    }
  }

  else
  {
  }

  return v24;
}

uint64_t sub_22CFC936C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D015E7C();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v14 = *(a3 + 40);
  if (v14)
  {
    v22[3] = a2;
    v23 = a1;
    v22[1] = v13;
    v22[2] = v22;
    MEMORY[0x28223BE20](v11, v12);
    v22[0] = a4;
    v22[-2] = a4;
    v15 = *(v14 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v16 = sub_22CF3D558();
    v17 = *(*(v14 + 96) + 16);

    os_unfair_lock_lock(v17);
    v18 = *(v14 + 16);
    MEMORY[0x28223BE20](v19, v20);
    v22[-4] = sub_22CFCBB30;
    v22[-3] = &v22[-4];
    v22[-2] = v16;
    sub_22D0143FC();
    os_unfair_lock_unlock(v17);

    sub_22CF3DC24();

    a1 = v23;
  }

  return a1(v11);
}

void sub_22CFC97C0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v6 = v4;
  v8 = sub_22D015E7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v12 = *(*(v4 + 32) + 16);
  os_unfair_lock_lock(v12);
  v13 = *(v4 + 16);
  a2(a1);
  sub_22D01566C();
  v14 = *(v6 + 24);
  (*(v9 + 16))(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  (*(v9 + 32))(v16 + v15, v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v12);
}

uint64_t sub_22CFC9960(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D015E7C();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v14 = *(a3 + 40);
  if (v14)
  {
    v22[3] = a2;
    v23 = a1;
    v22[1] = v13;
    v22[2] = v22;
    MEMORY[0x28223BE20](v11, v12);
    v22[0] = a4;
    v22[-2] = a4;
    v15 = *(v14 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v16 = sub_22CF3D558();
    v17 = *(*(v14 + 96) + 16);

    os_unfair_lock_lock(v17);
    v18 = *(v14 + 16);
    MEMORY[0x28223BE20](v19, v20);
    v22[-4] = sub_22CFCB9A0;
    v22[-3] = &v22[-4];
    v22[-2] = v16;
    sub_22D0143FC();
    os_unfair_lock_unlock(v17);

    sub_22CF3DC24();

    a1 = v23;
  }

  return a1(v11);
}

uint64_t sub_22CFC9D80(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_22D015E4C();
  sub_22CF51A64(v2, v3);
}

uint64_t sub_22CFC9DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D0161DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v12 = *(a1 + 16);
  sub_22D015AAC();
  sub_22D015A9C();

  v17[1] = sub_22D01566C();
  v13 = *(a1 + 24);
  (*(v9 + 16))(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a1;
  *(v15 + 3) = a2;
  *(v15 + 4) = a3;
  (*(v9 + 32))(&v15[v14], v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  sub_22D01565C();
  sub_22D01564C();
}

uint64_t sub_22CFC9F90(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22D0161DC();
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = *(a3 + 40);
  if (v17)
  {
    v25[4] = a2;
    v26 = a1;
    v25[2] = v15;
    v25[3] = v25;
    MEMORY[0x28223BE20](v15, v16);
    v25[0] = a4;
    v25[1] = a5;
    v25[-4] = a4;
    v25[-3] = a5;
    v25[-2] = a6;
    v18 = *(v17 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v19 = sub_22CF3D558();
    v20 = *(*(v17 + 96) + 16);

    os_unfair_lock_lock(v20);
    v21 = *(v17 + 16);
    MEMORY[0x28223BE20](v22, v23);
    v25[-4] = sub_22CFCB958;
    v25[-3] = &v25[-6];
    v25[-2] = v19;
    sub_22D0143FC();
    os_unfair_lock_unlock(v20);

    sub_22CF3DC24();

    a1 = v26;
  }

  return a1(v15);
}

void sub_22CFCA3E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock(v6);
  v7 = *(v2 + 16);
  sub_22D015A8C();
  sub_22D01566C();
  v8 = *(v3 + 24);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a1;
  v9[4] = a2;

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v6);
}

uint64_t sub_22CFCA4D4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1(a1);
}

void sub_22CFCA800(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v4);
  v5 = *(v1 + 16);
  sub_22D015A9C();
  sub_22D01566C();
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v4);
}

uint64_t sub_22CFCA8E0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1();
}

void sub_22CFCABF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock(v6);
  v7 = *(v2 + 16);
  v8 = sub_22D015ABC();
  sub_22D015A9C();
  sub_22D01566C();
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v8;
  v10[4] = a1;
  v10[5] = a2;

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v6);
}

uint64_t sub_22CFCACF0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1(a1);
}

uint64_t sub_22CFCB01C(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_22D015E7C();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4, v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v14 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v20 = *(v12 + 56);
    v21 = (v12 - 8);
    v22 = v13;
    while (1)
    {
      v15 = v12;
      v22(v10, v14, v4);
      v16 = *(v23 + 24);
      v17 = sub_22D015E4C();
      sub_22CF51A64(v17, v18);
      if (v2)
      {
        break;
      }

      (*v21)(v10, v4);

      v14 += v20;
      --v11;
      v12 = v15;
      if (!v11)
      {
        return result;
      }
    }

    (*v21)(v10, v4);
  }

  return result;
}

void sub_22CFCB1BC()
{
  v1 = v0;
  v2 = *(*(v0 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v0 + 16);
  sub_22D015AEC();
  sub_22D01566C();
  v4 = *(v1 + 24);

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v2);
}

uint64_t sub_22CFCB268(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (v4)
  {
    v5 = *(v4 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v6 = *(*(v4 + 96) + 16);

    os_unfair_lock_lock(v6);
    v7 = *(v4 + 16);
    MEMORY[0x28223BE20](v8, v9);
    sub_22D0143FC();
    os_unfair_lock_unlock(v6);

    sub_22CF3DC24();
  }

  return a1();
}

void sub_22CFCB5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*(v7 + 32) + 16);
  os_unfair_lock_lock(v8);
  sub_22CFC9DD4(v7, a1, a2, a3);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_22CFCB6EC()
{
  v1 = *v0;
  v2 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  v4 = sub_22D015AAC();
  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t sub_22CFCB75C()
{
  v1 = *v0;
  v2 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  v4 = sub_22D015ABC();
  os_unfair_lock_unlock(v2);
  return v4;
}

void sub_22CFCB7BC()
{
  v1 = *v0;
  v2 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  sub_22D015A7C();

  os_unfair_lock_unlock(v2);
}

uint64_t sub_22CFCB838@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22CFCB868(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_22CFCACF0(a1, a2, v2[2]);
}

uint64_t sub_22CFCB898(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_22CFCA4D4(a1, a2, v2[2]);
}

uint64_t sub_22CFCB8A4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 24);
  return sub_22CF51A64(v3, v2);
}

uint64_t sub_22CFCB8D0(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(sub_22D0161DC() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_22CFC9F90(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_22CFCB958(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 24);
  return sub_22CF51A94(v3, v2, v4);
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_22D015E7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CFCBA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_22D015E7C() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_22CFCBB30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  return sub_22CF51468();
}

unint64_t sub_22CFCBB74(char a1)
{
  sub_22D016C6C();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2318C5860](v2, v3);

  MEMORY[0x2318C5860](41, 0xE100000000000000);
  return 0xD000000000000020;
}

uint64_t sub_22CFCBC54()
{
  result = sub_22D01502C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatterTargetResolver.Permissions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_22CFCBD78()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
    sub_22CFCBFE8(&qword_28143D998);
    v2 = v0;
    v1 = sub_22D01646C();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_22CFCBE2C(char a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 24) = sub_22D01642C();
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(v2 + 40) = v7;
  *(v2 + 32) = a1;
  if ((a1 & 1) != 0 && (v9 = [objc_opt_self() standardUserDefaults], v10 = sub_22D01666C(), v11 = objc_msgSend(v9, sel_stringArrayForKey_, v10), v9, v10, v11))
  {
    v12 = sub_22D0167DC();

    v13 = sub_22CF7BDC4(v12);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  *(v2 + 48) = v13;
  return v2;
}

uint64_t sub_22CFCBF74()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_22CFCBFE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F3470, &qword_22D018BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22CFCC038(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1 + 40;
LABEL_3:
    v7 = (v6 + 16 * v5);
    v8 = v5;
    do
    {
      if (v8 >= v3)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_29;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      swift_beginAccess();

      sub_22CF3C4B0(v10, v9);
      v12 = v11;
      swift_endAccess();
      if (v12)
      {

        if (qword_28143DAD0 != -1)
        {
          swift_once();
        }

        v13 = sub_22D01637C();
        __swift_project_value_buffer(v13, qword_281444368);

        v14 = sub_22D01636C();
        v15 = sub_22D01690C();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v27 = v17;
          *v16 = 136380675;
          v18 = sub_22CEEE31C(v10, v9, &v27);

          *(v16 + 4) = v18;
          _os_log_impl(&dword_22CEE1000, v14, v15, "%{private}s is no longer a known client", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
          MEMORY[0x2318C6860](v17, -1, -1);
          MEMORY[0x2318C6860](v16, -1, -1);
        }

        else
        {
        }

        v4 = 1;
        if (v5 != v3)
        {
          goto LABEL_3;
        }

        if (*(a2 + 32))
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      ++v8;
      v7 += 2;
    }

    while (v5 != v3);
    if (*(a2 + 32))
    {
      goto LABEL_21;
    }

    if (v4)
    {
      goto LABEL_24;
    }
  }

  else if (*(a2 + 32))
  {
    v4 = 0;
LABEL_21:
    swift_beginAccess();
    v19 = *(a2 + 48);
    v20 = *(v19 + 16);
    if (v20 && (v21 = sub_22CEE561C(v20, 0), v22 = sub_22CEE56A4(&v27, v21 + 4, v20, v19), , sub_22CEE57FC(), v22 != v20))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v23 = [objc_opt_self() standardUserDefaults];
      v24 = sub_22D0167CC();

      v25 = sub_22D01666C();
      [v23 setObject:v24 forKey:v25];

      if (v4)
      {
LABEL_24:
        v26 = *(a2 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
        sub_22CFCBFE8(&qword_28143D9A0);
        sub_22D01645C();
      }
    }
  }
}

uint64_t sub_22CFCC3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v33 = MEMORY[0x277D84F90];
  sub_22CF440C8(0, v1, 0);
  v2 = v33;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_22D016AEC();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v1;
  v29 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v30 = v8;
    v12 = (*(a1 + 48) + 16 * v7);
    v13 = v12[1];
    v32 = *v12;
    v14 = *(*(a1 + 56) + 8 * v7);
    swift_bridgeObjectRetain_n();

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F34B0, &unk_22D01B8E8);
    v31 = MEMORY[0x2318C5950](v14, v15);
    v17 = v16;

    v19 = *(v33 + 16);
    v18 = *(v33 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_22CF440C8((v18 > 1), v19 + 1, 1);
    }

    *(v33 + 16) = v19 + 1;
    v20 = (v33 + 32 * v19);
    v20[4] = v32;
    v20[5] = v13;
    v20[6] = v31;
    v20[7] = v17;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v11);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v29;
    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v10 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (a1 + 72 + 8 * v11);
      while (v24 < (v10 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_22CF44CF8(v7, v29, 0);
          v10 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_22CF44CF8(v7, v29, 0);
    }

LABEL_4:
    v8 = v30 + 1;
    v7 = v10;
    if (v30 + 1 == v28)
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

void *sub_22CFCC674()
{
  v17 = sub_22D01697C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_22D01653C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v13;
  v0[4] = v13;
  v14 = sub_22CEEC38C();
  v16[0] = "hedule-start-jitter-seconds";
  v16[1] = v14;
  sub_22D0164EC();
  v18 = v12;
  sub_22CEF88D4(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v17);
  v0[5] = sub_22D0169BC();
  if (qword_28143EEA0 != -1)
  {
    swift_once();
  }

  return v0;
}

uint64_t sub_22CFCC908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_22CFCE85C(0, 0, a1, a2);
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_22CF1B8BC(0, v7[2] + 1, 1, v7, &qword_27D9F3518, &qword_22D01B988, &qword_27D9F3510, &qword_22D01B980);
      *(a3 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_22CF1B8BC((v9 > 1), v10 + 1, 1, v7, &qword_27D9F3518, &qword_22D01B988, &qword_27D9F3510, &qword_22D01B980);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = a1;
    v11[5] = a2;
    *(a3 + 16) = v7;
    swift_endAccess();
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22CFCCA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 40);
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22CFCE6E8;
  *(v12 + 24) = v11;
  v15[4] = sub_22CEF4034;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_22CEF3C20;
  v15[3] = &block_descriptor_47_3;
  v13 = _Block_copy(v15);

  swift_unknownObjectRetain();

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CFCCC14()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityParticipantEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2 - 8, v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v7;
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - v10;
  v12 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3508, &qword_22D01B978);
  v33 = v12;
  sub_22D01699C();
  v13 = aBlock[0];
  v37 = MEMORY[0x277D84F90];
  v14 = *(aBlock[0] + 16);
  if (v14)
  {
    v15 = 32;
    do
    {
      v16 = *(v13 + v15);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        swift_unknownObjectRetain();
        v18 = sub_22CFFD8AC();
        sub_22CFA1538(v18);
        swift_unknownObjectRelease();
      }

      v15 += 16;
      --v14;
    }

    while (v14);

    v19 = v37;
    v20 = *(v37 + 16);
    if (!v20)
    {
    }
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (!v20)
    {
    }
  }

  v21 = *(v3 + 80);
  v22 = v19 + ((v21 + 32) & ~v21);
  v23 = *(v3 + 72);
  v29 = v19;
  v30 = v23;
  v24 = (v21 + 24) & ~v21;
  v31 = v36;
  v32 = v21;
  while (1)
  {
    sub_22CEFEA98(v22, v11, type metadata accessor for ActivityParticipantEvent);
    sub_22CEFEA98(v11, v8, type metadata accessor for ActivityParticipantEvent);
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    sub_22CF0A72C(v8, v25 + v24, type metadata accessor for ActivityParticipantEvent);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_22CFCE9C4;
    *(v26 + 24) = v25;
    v36[2] = sub_22CEF4034;
    v36[3] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v36[0] = sub_22CEF3C20;
    v36[1] = &block_descriptor_58;
    v27 = _Block_copy(aBlock);

    dispatch_sync(v33, v27);
    _Block_release(v27);
    sub_22CF0A5FC(v11, type metadata accessor for ActivityParticipantEvent);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      break;
    }

    v22 += v30;
    if (!--v20)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFCCFC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22CFCD03C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v6 = *(*(v72 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v72, v7);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v70 = (&v64 - v12);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v69 = (&v64 - v15);
  MEMORY[0x28223BE20](v14, v16);
  v68 = &v64 - v17;
  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v64 = a1;
    v65 = v2;
    v66 = a2;
    v81 = MEMORY[0x277D84F90];

    sub_22CF440C8(0, v19, 0);
    v20 = v81;
    v21 = -1 << *(v18 + 32);
    v22 = sub_22D016AEC();
    v23 = 0;
    v24 = *(v18 + 36);
    v67 = v18;
    do
    {
      v77 = v23;
      v78 = v22;
      v80 = v19;
      v25 = v72;
      v26 = *(v72 + 48);
      v27 = v68;
      v79 = v24;
      v28 = sub_22CFA3598(&v68[v26], v22, v24, v23 & 1, v18);
      v29 = v69;
      *v69 = v28;
      *(v29 + 8) = v30;
      sub_22CF0A72C(&v27[v26], v29 + *(v25 + 48), type metadata accessor for Activity);
      v31 = v70;
      sub_22CEEB6DC(v29, v70, &unk_27D9F3840, &unk_22D01A2B0);
      v32 = v31[1];
      v76 = *v31;
      v75 = v32;
      v73 = *(v25 + 48);
      v33 = v71;
      sub_22CEEB6DC(v29, v71, &unk_27D9F3840, &unk_22D01A2B0);
      v34 = *(v33 + 8);

      v35 = *(v25 + 48);
      v36 = sub_22CF0B174();
      v74 = v37;
      sub_22CEEC3D8(v29, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0A5FC(v33 + v35, type metadata accessor for Activity);
      sub_22CF0A5FC(v31 + v73, type metadata accessor for Activity);
      v81 = v20;
      v39 = *(v20 + 16);
      v38 = *(v20 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22CF440C8((v38 > 1), v39 + 1, 1);
        v20 = v81;
      }

      *(v20 + 16) = v39 + 1;
      v40 = (v20 + 32 * v39);
      v41 = v75;
      v40[4] = v76;
      v40[5] = v41;
      v42 = v74;
      v40[6] = v36;
      v40[7] = v42;
      v43 = v77;
      v44 = v78;
      v45 = v79;
      v18 = v67;
      v46 = sub_22CFA3518(v78, v79, v77 & 1, v67);
      v48 = v47;
      v50 = v49;
      sub_22CF44CF8(v44, v45, v43 & 1);
      v22 = v46;
      v24 = v48;
      v23 = v50;
      v19 = v80 - 1;
    }

    while (v80 != 1);
    sub_22CF44CF8(v46, v48, v50 & 1);

    a2 = v66;
    v3 = v65;
    a1 = v64;
  }

  swift_beginAccess();
  v51 = *(a1 + 24);

  v53 = sub_22CFCC3E4(v52);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000022D0215A0;
  if (*(v53 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v55 = sub_22D016D3C();
  }

  else
  {
    v55 = MEMORY[0x277D84F98];
  }

  v82 = v55;

  sub_22CF43CD4(v56, 1, &v82);
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v57 = v82;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
    *(inited + 48) = v57;
    *(inited + 72) = v58;
    *(inited + 80) = 0x6974697669746361;
    *(inited + 88) = 0xEA00000000007365;
    if (*(v20 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v59 = sub_22D016D3C();
    }

    else
    {
      v59 = MEMORY[0x277D84F98];
    }

    v82 = v59;

    sub_22CF43CD4(v60, 1, &v82);

    v61 = v82;
    *(inited + 120) = v58;
    *(inited + 96) = v61;
    v62 = sub_22CF11C44(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
    result = swift_arrayDestroy();
    *a2 = v62;
  }

  return result;
}

uint64_t sub_22CFCD64C()
{
  v1 = *(*v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
  sub_22D01699C();
  return v3;
}

void *sub_22CFCD748()
{
  type metadata accessor for IDSBagValueServer();
  swift_allocObject();
  result = sub_22CFCD788();
  off_28143EEA8 = result;
  return result;
}

uint64_t sub_22CFCD788()
{
  v1 = v0;
  v18 = sub_22D01697C();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01691C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = sub_22D01653C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_22CEEC38C();
  v17[0] = "lock_startDateJitter";
  v17[1] = v13;
  sub_22D0164EC();
  v19 = MEMORY[0x277D84F90];
  sub_22CEF88D4(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v18);
  *(v0 + 16) = sub_22D0169BC();
  *(v0 + 24) = 0x4066800000000000;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *(v1 + 32) = v14;
  sub_22CFCDA1C();
  return v1;
}

uint64_t sub_22CFCDA1C()
{
  v1 = sub_22D0164CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01653C();
  v7 = *(v15 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v15, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v0 + 16);
  aBlock[4] = sub_22CFCE6E0;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_22;
  v12 = _Block_copy(aBlock);

  sub_22D0164EC();
  v16 = MEMORY[0x277D84F90];
  sub_22CEF88D4(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v11, v6, v12);
  _Block_release(v12);
  (*(v2 + 8))(v6, v1);
  (*(v7 + 8))(v11, v15);
}

void sub_22CFCDCBC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstanceForBagType_];
  v3 = sub_22D01666C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v5 = sub_22D01637C();
      __swift_project_value_buffer(v5, qword_281444498);
      v6 = sub_22D01636C();
      v7 = sub_22D01690C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134349056;
        *(v8 + 4) = v14;
        _os_log_impl(&dword_22CEE1000, v6, v7, "Fetched IDS bag values; start jitter: %{public}ld;", v8, 0xCu);
        MEMORY[0x2318C6860](v8, -1, -1);
      }

      v9 = *(*(a1 + 32) + 16);
      os_unfair_lock_lock(v9);
      *(a1 + 24) = v14;
      os_unfair_lock_unlock(v9);
      goto LABEL_17;
    }
  }

  else
  {
    sub_22CEEC3D8(v17, &qword_27D9F2B10, &unk_22D01B930);
  }

  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v10 = sub_22D01637C();
  __swift_project_value_buffer(v10, qword_281444498);
  v11 = sub_22D01636C();
  v12 = sub_22D0168EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22CEE1000, v11, v12, "Could not load start jitter bag value", v13, 2u);
    MEMORY[0x2318C6860](v13, -1, -1);
  }

LABEL_17:
}

uint64_t sub_22CFCDF74()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

char *sub_22CFCE000(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CFCE10C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F34C0, &unk_22D01B900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22CFCE308(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F34E8, &unk_22D01B950);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26D8, &qword_22D018F78) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26D8, &qword_22D018F78) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_22CFCE638(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2318C6880](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2318C6880](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CFCE6E8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  return sub_22CF0FA2C(v1, v2, v3, v4);
}

uint64_t sub_22CFCE718@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
}

unint64_t sub_22CFCE768(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3510, &qword_22D01B980);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_22CFCE85C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_22CF1B8BC(isUniquelyReferenced_nonNull_native, v17, 1, v6, &qword_27D9F3518, &qword_22D01B988, &qword_27D9F3510, &qword_22D01B980);
    *v4 = v6;
  }

  result = sub_22CFCE768(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_22CFCE96C()
{
  result = qword_27D9F3520;
  if (!qword_27D9F3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3520);
  }

  return result;
}

uint64_t sub_22CFCE9D0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  sub_22CEEC3D8(v0 + 80, &qword_27D9F3278, &unk_22D01B2C0);
  v2 = *(v0 + 120);

  sub_22CF460CC(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_22CFCEA64(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 136) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CFCEACC@<X0>(char *a1@<X8>)
{
  v65 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v2 = *(*(v74 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v74, v3);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v72 = &v63 - v7;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v70 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v69 = &v63 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v68 = &v63 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v63 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v63 - v25;
  os_unfair_lock_assert_owner(*(*(v1 + 16) + 16));
  swift_beginAccess();
  v75 = v1;
  v27 = *(v1 + 120);

  sub_22D01423C();
  v29 = *(v9 + 16);
  v28 = v9 + 16;
  v79 = v23;
  v80 = v8;
  v64 = v26;
  v67 = v29;
  v29(v23, v26, v8);
  v30 = *(v27 + 64);
  v66 = v27 + 64;
  v31 = 1 << *(v27 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v71 = v28;
  v76 = (v28 - 8);
  v77 = (v28 + 16);
  v78 = v27;

  for (i = 0; v33; result = (v60)(v56, v61, v52))
  {
    v37 = i;
LABEL_9:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v39 = v38 | (v37 << 6);
    v40 = *(v78 + 56);
    v41 = (*(v78 + 48) + 16 * v39);
    v43 = *v41;
    v42 = v41[1];
    v44 = (type metadata accessor for Activity() - 8);
    v45 = v74;
    v46 = v72;
    sub_22CF0CCBC(v40 + *(*v44 + 72) * v39, &v72[*(v74 + 48)], type metadata accessor for Activity);
    *v46 = v43;
    v46[1] = v42;
    v47 = v73;
    sub_22CEEB6DC(v46, v73, &unk_27D9F3840, &unk_22D01A2B0);
    v48 = *(v47 + 8);

    v49 = v47 + *(v45 + 48);
    v50 = v49 + v44[12];
    v51 = v70;
    v52 = v80;
    v67(v70, v50, v80);
    sub_22CF0F640(v49, type metadata accessor for Activity);
    v53 = *(v75 + 64);
    v54 = v69;
    sub_22D01425C();
    v55 = *v76;
    (*v76)(v51, v52);
    sub_22CEF888C(&qword_281443A30, MEMORY[0x277CC9578]);
    v56 = v79;
    v57 = sub_22D01663C();
    sub_22CEEC3D8(v46, &unk_27D9F3840, &unk_22D01A2B0);
    if (v57)
    {
      v58 = v54;
    }

    else
    {
      v58 = v56;
    }

    if (v57)
    {
      v59 = v56;
    }

    else
    {
      v59 = v54;
    }

    v55(v58, v52);
    v60 = *v77;
    v61 = v68;
    (*v77)(v68, v59, v52);
  }

  while (1)
  {
    v37 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      v62 = v80;
      (*v76)(v64, v80);

      (*v77)(v65, v79, v62);
    }

    v33 = *(v66 + 8 * v37);
    ++i;
    if (v33)
    {
      i = v37;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFCEFBC(void *a1)
{
  v2 = sub_22D01559C();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0155CC();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01430C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v33 - v20;
  swift_beginAccess();
  sub_22CEEB6DC((a1 + 10), &v39, &qword_27D9F3278, &unk_22D01B2C0);
  if (*(&v40 + 1))
  {
    sub_22CEE3A84(&v39, v38);
    sub_22CEEC3D8(&v39, &qword_27D9F3278, &unk_22D01B2C0);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_22D0163DC();
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  else
  {
    sub_22CEEC3D8(&v39, &qword_27D9F3278, &unk_22D01B2C0);
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  swift_beginAccess();
  sub_22CF1B3B4(&v39, (a1 + 10));
  swift_endAccess();
  sub_22CFCEACC(v21);
  sub_22D01423C();
  v22 = sub_22D01428C();
  v23 = *(v13 + 8);
  v23(v18, v12);
  if (v22)
  {
    (*(v13 + 16))(v18, v21, v12);
    (*(v34 + 104))(v6, *MEMORY[0x277D4D518], v35);
    sub_22D01558C();
    v24 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
    swift_allocObject();
    swift_weakInit();

    sub_22D0155DC();

    (*(v36 + 8))(v11, v37);
    v23(v21, v12);

    sub_22CEF44D4(&v39, v38);
    swift_beginAccess();
    sub_22CF1B3B4(v38, (a1 + 10));
    return swift_endAccess();
  }

  else
  {
    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v26 = sub_22D01637C();
    __swift_project_value_buffer(v26, qword_281444438);
    v27 = sub_22D01636C();
    v28 = sub_22D01690C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v12;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22CEE1000, v27, v28, "No more activities to forcibly end", v30, 2u);
      MEMORY[0x2318C6860](v30, -1, -1);

      v31 = v21;
      v32 = v29;
    }

    else
    {

      v31 = v21;
      v32 = v12;
    }

    return (v23)(v31, v32);
  }
}

uint64_t sub_22CFCF4D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(*(result + 16) + 16);
    v2 = result;
    os_unfair_lock_lock(v1);
    sub_22CFCF564(v2);
    os_unfair_lock_unlock(v1);
    v3 = *(*(v2 + 16) + 16);
    os_unfair_lock_lock(v3);
    sub_22CFCEFBC(v2);
    os_unfair_lock_unlock(v3);
  }

  return result;
}

uint64_t sub_22CFCF564(uint64_t a1)
{
  v2 = type metadata accessor for Activity();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v8);
  v54 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v51 - v17);
  v59 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v19 = *(a1 + 120);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(a1 + 120) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v56 = *(a1 + 120);
  v57 = a1;

  v28 = 0;
  v52 = v15;
  v53 = v7;
  v51 = v18;
  while (v25)
  {
    v29 = v28;
LABEL_15:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = (*(v56 + 48) + 16 * v33);
    v36 = *v34;
    v35 = v34[1];
    v37 = v54;
    sub_22CF0CCBC(*(v56 + 56) + *(v55 + 72) * v33, v54, type metadata accessor for Activity);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v39 = *(v38 + 48);
    v15 = v52;
    *v52 = v36;
    *(v15 + 1) = v35;
    sub_22CF0A72C(v37, &v15[v39], type metadata accessor for Activity);
    (*(*(v38 - 8) + 56))(v15, 0, 1, v38);

    v31 = v29;
    v7 = v53;
    v18 = v51;
LABEL_16:
    sub_22CF82724(v15, v18);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v40 - 8) + 48))(v18, 1, v40) == 1)
    {

      v45 = v57;
      v46 = *(v57 + 120);
      MEMORY[0x28223BE20](v44, v47);
      *(&v51 - 2) = &v59;

      v49 = sub_22CFC3D3C(v48, sub_22CFC3A80);

      v50 = *(v45 + 120);
      *(v45 + 120) = v49;
    }

    v41 = *v18;
    v42 = v18[1];
    sub_22CF0A72C(v18 + *(v40 + 48), v7, type metadata accessor for Activity);
    if (sub_22CFCFA20(v7))
    {
      sub_22CEE54CC(&v58, v41, v42);

      result = sub_22CF0F640(v7, type metadata accessor for Activity);
    }

    else
    {
      sub_22CF0F640(v7, type metadata accessor for Activity);
    }

    v28 = v31;
  }

  if (v26 <= v28 + 1)
  {
    v30 = v28 + 1;
  }

  else
  {
    v30 = v26;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v43 - 8) + 56))(v15, 1, 1, v43);
      v25 = 0;
      goto LABEL_16;
    }

    v25 = *(v21 + 8 * v29);
    ++v28;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFCFA20(uint64_t *a1)
{
  v3 = sub_22D0164CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v116 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22D01653C();
  v115 = *(v117 - 8);
  v8 = *(v115 + 64);
  MEMORY[0x28223BE20](v117, v9);
  v114 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for ActivityParticipantEvent(0);
  v109 = *(v108 - 8);
  v11 = *(v109 + 64);
  v13 = MEMORY[0x28223BE20](v108, v12);
  v111 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v113 = &v98 - v16;
  v17 = sub_22D01495C();
  v120 = *(v17 - 8);
  v121 = v17;
  v18 = *(v120 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v107 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v122 = &v98 - v23;
  v24 = sub_22D01483C();
  v118 = *(v24 - 8);
  v119 = v24;
  v25 = *(v118 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v123 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Activity();
  v29 = *(*(v28 - 1) + 64);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v106 = (&v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31, v33);
  v35 = (&v98 - v34);
  v127 = sub_22D01430C();
  v36 = *(v127 - 8);
  v37 = *(v36 + 64);
  v39 = MEMORY[0x28223BE20](v127, v38);
  v41 = &v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v98 - v43;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = *(v1 + 136);
    v46 = v28[10];
    v112 = v1;
    v47 = *(v1 + 64);
    v126 = a1;
    sub_22D01425C();
    sub_22D0142DC();
    v48 = sub_22D01428C();
    v51 = *(v36 + 8);
    v50 = v36 + 8;
    v49 = v51;
    v51(v41, v127);
    v125 = v48;
    if (v48)
    {
      v104 = v49;
      v105 = v50;
      if (qword_28143FB30 != -1)
      {
        swift_once();
      }

      v52 = sub_22D01637C();
      v53 = __swift_project_value_buffer(v52, qword_281444438);
      sub_22CF0CCBC(v126, v35, type metadata accessor for Activity);
      v100 = v53;
      v54 = sub_22D01636C();
      v55 = sub_22D01690C();
      v56 = os_log_type_enabled(v54, v55);
      v103 = v3;
      v102 = v4;
      v101 = v45;
      if (v56)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock[0] = v58;
        *v57 = 136446210;
        v59 = v44;
        v60 = *v35;
        v61 = v35[1];

        sub_22CF0F640(v35, type metadata accessor for Activity);
        v62 = sub_22CEEE31C(v60, v61, aBlock);
        v44 = v59;

        *(v57 + 4) = v62;
        _os_log_impl(&dword_22CEE1000, v54, v55, "Ending overdue activity: %{public}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x2318C6860](v58, -1, -1);
        MEMORY[0x2318C6860](v57, -1, -1);
      }

      else
      {

        sub_22CF0F640(v35, type metadata accessor for Activity);
      }

      v63 = v122;
      v64 = *(v126 + v28[9]);
      if (*(v64 + 16))
      {
        v65 = *(v118 + 16);
        v65(v123, v64 + ((*(v118 + 80) + 32) & ~*(v118 + 80)), v119);
        v66 = sub_22CF37A40();
        v99 = v44;
        if (v66)
        {
          sub_22D01494C();
        }

        else
        {
          sub_22D01493C();
        }

        v75 = v126;
        v76 = v126[1];
        v106 = *v126;
        v77 = (v126 + v28[13]);
        v78 = v77[1];
        v100 = *v77;
        v79 = v108;
        v80 = *(v108 + 24);
        (*(v120 + 16))(v107, v63, v121);

        v81 = v113;
        sub_22D01485C();
        type metadata accessor for ActivityParticipantEvent.EventType(0);
        swift_storeEnumTagMultiPayload();
        v82 = v119;
        v65(&v81[v79[7]], v123, v119);
        v83 = v79[9];
        v84 = v28[14];
        v85 = sub_22D0146BC();
        v86 = *(v85 - 8);
        (*(v86 + 16))(&v81[v83], v75 + v84, v85);
        (*(v86 + 56))(&v81[v83], 0, 1, v85);
        *v81 = v106;
        *(v81 + 1) = v76;
        *(v81 + 2) = v100;
        *(v81 + 3) = v78;
        v87 = &v81[v79[8]];
        v88 = v112;
        *v87 = v112;
        *(v87 + 1) = &off_28402C560;
        v81[v79[10]] = 0;
        v126 = *(v88 + 72);
        v89 = v111;
        sub_22CF0CCBC(v81, v111, type metadata accessor for ActivityParticipantEvent);
        v90 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v91 = swift_allocObject();
        v92 = v101;
        *(v91 + 16) = Strong;
        *(v91 + 24) = v92;
        sub_22CF0A72C(v89, v91 + v90, type metadata accessor for ActivityParticipantEvent);
        aBlock[4] = sub_22CFA5C9C;
        aBlock[5] = v91;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22CEF8B58;
        aBlock[3] = &block_descriptor_23;
        v93 = _Block_copy(aBlock);

        swift_unknownObjectRetain();
        v94 = v114;
        sub_22D0164EC();
        v128 = MEMORY[0x277D84F90];
        sub_22CEF888C(&qword_28143FA60, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CF0EDA8();
        v95 = v116;
        v96 = v103;
        sub_22D016ADC();
        MEMORY[0x2318C5B10](0, v94, v95, v93);
        _Block_release(v93);
        swift_unknownObjectRelease();
        (*(v102 + 8))(v95, v96);
        (*(v115 + 8))(v94, v117);
        sub_22CF0F640(v81, type metadata accessor for ActivityParticipantEvent);
        (*(v120 + 8))(v122, v121);
        (*(v118 + 8))(v123, v82);
        v104(v99, v127);
      }

      else
      {
        v67 = v106;
        sub_22CF0CCBC(v126, v106, type metadata accessor for Activity);
        v68 = sub_22D01636C();
        v69 = sub_22D0168EC();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          aBlock[0] = v71;
          *v70 = 136446210;
          v72 = *v67;
          v73 = v67[1];

          sub_22CF0F640(v67, type metadata accessor for Activity);
          v74 = sub_22CEEE31C(v72, v73, aBlock);

          *(v70 + 4) = v74;
          _os_log_impl(&dword_22CEE1000, v68, v69, "No content sources exist for overdue activity: %{public}s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v71);
          MEMORY[0x2318C6860](v71, -1, -1);
          MEMORY[0x2318C6860](v70, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_22CF0F640(v67, type metadata accessor for Activity);
        }

        v104(v44, v127);
      }
    }

    else
    {
      v49(v44, v127);
      swift_unknownObjectRelease();
    }

    return v125 & 1;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CFD0684()
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v1 = *(*(v73 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v73, v2);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v71 = (&v62 - v7);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v70 = (&v62 - v10);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v69 = (&v62 - v13);
  MEMORY[0x28223BE20](v12, v14);
  v68 = &v62 - v15;
  v62 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v62);
  swift_beginAccess();
  v16 = *(v0 + 120);
  v17 = *(v16 + 16);
  v81 = MEMORY[0x277D84F90];
  if (v17)
  {
    v82 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v17, 0);
    v81 = v82;
    v18 = v16 + 64;
    v19 = -1 << *(v16 + 32);
    v20 = sub_22D016AEC();
    v21 = 0;
    v22 = *(v16 + 36);
    v63 = v16 + 72;
    v64 = v17;
    v66 = v16 + 64;
    v65 = v22;
    v67 = v16;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v16 + 32))
    {
      if ((*(v18 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_26;
      }

      if (v22 != *(v16 + 36))
      {
        goto LABEL_27;
      }

      v75 = 1 << v20;
      v76 = v20 >> 6;
      v74 = v21;
      v24 = v73;
      v25 = *(v73 + 48);
      v26 = *(v16 + 56);
      v27 = (*(v16 + 48) + 16 * v20);
      v29 = *v27;
      v28 = v27[1];
      v30 = type metadata accessor for Activity();
      v31 = v68;
      sub_22CF0CCBC(v26 + *(*(v30 - 8) + 72) * v20, &v68[v25], type metadata accessor for Activity);
      v32 = v69;
      *v69 = v29;
      *(v32 + 8) = v28;
      v33 = *(v24 + 48);
      sub_22CF0A72C(&v31[v25], v32 + v33, type metadata accessor for Activity);
      v34 = v70;
      *v70 = v29;
      *(v34 + 8) = v28;
      sub_22CF0CCBC(v32 + v33, v34 + *(v24 + 48), type metadata accessor for Activity);
      v35 = v71;
      sub_22CEEB6DC(v34, v71, &unk_27D9F3840, &unk_22D01A2B0);
      v36 = *v35;
      v79 = v35[1];
      v80 = v36;
      v77 = *(v24 + 48);
      v37 = v72;
      sub_22CEEB6DC(v34, v72, &unk_27D9F3840, &unk_22D01A2B0);
      v38 = *(v37 + 8);
      swift_bridgeObjectRetain_n();

      v39 = *(v24 + 48);
      v78 = sub_22CF0B174();
      v41 = v40;
      v42 = v34;
      v43 = v81;
      sub_22CEEC3D8(v42, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v37 + v39, type metadata accessor for Activity);
      sub_22CF0F640(v35 + v77, type metadata accessor for Activity);
      sub_22CEEC3D8(v32, &unk_27D9F3840, &unk_22D01A2B0);
      v82 = v43;
      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      v81 = v43;
      if (v45 >= v44 >> 1)
      {
        sub_22CF4414C((v44 > 1), v45 + 1, 1);
        v81 = v82;
      }

      v47 = v80;
      v46 = v81;
      *(v81 + 16) = v45 + 1;
      v48 = (v46 + 48 * v45);
      v49 = v78;
      v50 = v79;
      v48[4] = v47;
      v48[5] = v50;
      v48[6] = v49;
      v48[7] = v41;
      v48[9] = MEMORY[0x277D837D0];
      v16 = v67;
      v23 = 1 << *(v67 + 32);
      if (v20 >= v23)
      {
        goto LABEL_28;
      }

      v18 = v66;
      v51 = *(v66 + 8 * v76);
      if ((v51 & v75) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v22) = v65;
      if (v65 != *(v67 + 36))
      {
        goto LABEL_30;
      }

      v52 = v51 & (-2 << (v20 & 0x3F));
      if (v52)
      {
        v23 = __clz(__rbit64(v52)) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v53 = v76 << 6;
        v54 = v76 + 1;
        v55 = (v63 + 8 * v76);
        while (v54 < (v23 + 63) >> 6)
        {
          v57 = *v55++;
          v56 = v57;
          v53 += 64;
          ++v54;
          if (v57)
          {
            sub_22CF44CF8(v20, v65, 0);
            v23 = __clz(__rbit64(v56)) + v53;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v20, v65, 0);
      }

LABEL_4:
      v21 = v74 + 1;
      v20 = v23;
      if (v74 + 1 == v64)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v81 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v58 = sub_22D016D3C();
    }

    else
    {
      v58 = MEMORY[0x277D84F98];
    }

    v82 = v58;

    sub_22CF623EC(v59, 1, &v82);

    v60 = v82;
    os_unfair_lock_unlock(v62);
    return v60;
  }

  return result;
}

uint64_t sub_22CFD0C44()
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v1 = *(*(v70 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v70, v2);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v68 = (&v59 - v7);
  MEMORY[0x28223BE20](v6, v8);
  v67 = &v59 - v9;
  v10 = type metadata accessor for Activity();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10 - 8, v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v61 = &v59 - v18;
  v19 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v19);
  swift_beginAccess();
  v62 = v0;
  v20 = *(v0 + 24);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v60 = v19;
    v76 = MEMORY[0x277D84F90];

    sub_22CF44324(0, v21, 0);
    v22 = v76;
    v23 = v20 + 64;
    v24 = -1 << *(v20 + 32);
    result = sub_22D016AEC();
    v26 = result;
    v27 = 0;
    v63 = v20 + 72;
    v64 = v21;
    v65 = v20 + 64;
    v66 = v20;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v20 + 32))
    {
      if ((*(v23 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_26;
      }

      v73 = 1 << v26;
      v74 = v26 >> 6;
      v29 = *(v20 + 36);
      v71 = v27;
      v72 = v29;
      v30 = v70;
      v31 = *(v70 + 48);
      v32 = *(v20 + 56);
      v33 = (*(v20 + 48) + 16 * v26);
      v35 = *v33;
      v34 = v33[1];
      v75 = *(v11 + 72);
      v36 = v22;
      v37 = v67;
      sub_22CF0CC54(v32 + v75 * v26, &v67[v31], type metadata accessor for Activity);
      v38 = v16;
      v39 = v68;
      *v68 = v35;
      v39[1] = v34;
      v40 = &v37[v31];
      v22 = v36;
      sub_22CFA8FC0(v40, v39 + *(v30 + 48));
      v41 = v39;
      v16 = v38;
      v42 = v69;
      sub_22CFD1F4C(v41, v69);
      v43 = *(v42 + 8);

      sub_22CFA8FC0(v42 + *(v30 + 48), v38);
      v76 = v36;
      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22CF44324(v44 > 1, v45 + 1, 1);
        v22 = v76;
      }

      *(v22 + 16) = v45 + 1;
      result = sub_22CFA8FC0(v38, v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v45 * v75);
      v20 = v66;
      v28 = 1 << *(v66 + 32);
      if (v26 >= v28)
      {
        goto LABEL_27;
      }

      v23 = v65;
      v46 = *(v65 + 8 * v74);
      if ((v46 & v73) == 0)
      {
        goto LABEL_28;
      }

      if (v72 != *(v66 + 36))
      {
        goto LABEL_29;
      }

      v47 = v46 & (-2 << (v26 & 0x3F));
      if (v47)
      {
        v28 = __clz(__rbit64(v47)) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v48 = v74 << 6;
        v49 = v74 + 1;
        v50 = (v63 + 8 * v74);
        while (v49 < (v28 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            result = sub_22CF44CF8(v26, v72, 0);
            v28 = __clz(__rbit64(v51)) + v48;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v26, v72, 0);
      }

LABEL_4:
      v27 = v71 + 1;
      v26 = v28;
      if (v71 + 1 == v64)
      {

        v53 = v62;
        v54 = *(v62 + 24);
        v19 = v60;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v53 = v62;
LABEL_21:
    *(v53 + 24) = MEMORY[0x277D84F98];

    os_unfair_lock_unlock(v19);
    v55 = *(v22 + 16);
    if (v55)
    {
      v56 = v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v57 = *(v11 + 72);
      v58 = v61;
      do
      {
        sub_22CF0CC54(v56, v58, type metadata accessor for Activity);
        sub_22CFD120C(v58);
        sub_22CF0F640(v58, type metadata accessor for Activity);
        v56 += v57;
        --v55;
      }

      while (v55);
    }
  }

  return result;
}

uint64_t sub_22CFD1130()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_22CF460CC((v0 + 5));

  return swift_deallocClassInstance();
}

uint64_t sub_22CFD11A4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

void sub_22CFD120C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D01495C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ActivityParticipantEvent(0);
  v9 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84, v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01483C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v88 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Activity();
  v18 = *(*(v86 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v86, v19);
  v81 = (&v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v76 - v23);
  v25 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v25);
  Strong = swift_unknownObjectWeakLoadStrong();
  v27 = *(v2 + 48);
  os_unfair_lock_unlock(v25);
  if (Strong)
  {
    v82 = v27;
    v83 = v8;
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v28 = sub_22D01637C();
    v29 = __swift_project_value_buffer(v28, qword_281444450);
    sub_22CF0CC54(a1, v24, type metadata accessor for Activity);
    v80 = v29;
    v30 = sub_22D01636C();
    v31 = sub_22D01690C();
    v32 = os_log_type_enabled(v30, v31);
    v87 = Strong;
    v85 = v2;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v77 = a1;
      v34 = v33;
      v35 = swift_slowAlloc();
      v89 = v35;
      *v34 = 136446210;
      v36 = v14;
      v37 = v13;
      v39 = *v24;
      v38 = v24[1];

      sub_22CF0F640(v24, type metadata accessor for Activity);
      v40 = v39;
      v13 = v37;
      v14 = v36;
      v41 = sub_22CEEE31C(v40, v38, &v89);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_22CEE1000, v30, v31, "Dismissing momentary activity: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x2318C6860](v35, -1, -1);
      v42 = v34;
      a1 = v77;
      MEMORY[0x2318C6860](v42, -1, -1);
    }

    else
    {

      sub_22CF0F640(v24, type metadata accessor for Activity);
    }

    v43 = v86;
    v44 = *(a1 + *(v86 + 36));
    if (*(v44 + 16))
    {
      v45 = v14;
      v79 = v14;
      v46 = *(v14 + 80);
      v47 = a1;
      v48 = *(v45 + 16);
      v49 = v88;
      v48(v88, v44 + ((v46 + 32) & ~v46), v13);
      v50 = *v47;
      v51 = v47[1];
      v52 = (v47 + *(v43 + 52));
      v53 = v13;
      v78 = v13;
      v54 = v52[1];
      v80 = *v52;
      v81 = v50;
      v76 = v51;
      v77 = v54;
      v55 = v84;
      v56 = *(v84 + 24);

      sub_22D01494C();
      sub_22D01485C();
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v48(&v12[v55[7]], v49, v53);
      v57 = v55[9];
      v58 = *(v43 + 56);
      v59 = sub_22D0146BC();
      v60 = *(v59 - 8);
      (*(v60 + 16))(&v12[v57], v47 + v58, v59);
      (*(v60 + 56))(&v12[v57], 0, 1, v59);
      v61 = v76;
      *v12 = v81;
      *(v12 + 1) = v61;
      v62 = v79;
      v63 = v77;
      *(v12 + 2) = v80;
      *(v12 + 3) = v63;
      v64 = &v12[v55[8]];
      *v64 = v85;
      *(v64 + 1) = &off_28402C648;
      v12[v55[10]] = 0;
      ObjectType = swift_getObjectType();
      v66 = v82;
      v67 = *(v82 + 24);

      v67(v12, ObjectType, v66);
      swift_unknownObjectRelease();
      sub_22CF0F640(v12, type metadata accessor for ActivityParticipantEvent);
      (*(v62 + 8))(v88, v78);
    }

    else
    {
      v68 = v81;
      sub_22CF0CC54(a1, v81, type metadata accessor for Activity);
      v69 = sub_22D01636C();
      v70 = sub_22D0168EC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v89 = v72;
        *v71 = 136446210;
        v73 = *v68;
        v74 = v68[1];

        sub_22CF0F640(v68, type metadata accessor for Activity);
        v75 = sub_22CEEE31C(v73, v74, &v89);

        *(v71 + 4) = v75;
        _os_log_impl(&dword_22CEE1000, v69, v70, "No content sources exist for dismissed activity: %{public}s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x2318C6860](v72, -1, -1);
        MEMORY[0x2318C6860](v71, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_22CF0F640(v68, type metadata accessor for Activity);
      }
    }
  }

  else
  {
    sub_22D016CFC();
    __break(1u);
  }
}

uint64_t sub_22CFD1930()
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v1 = *(*(v72 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v72, v2);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v70 = (&v61 - v7);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v69 = (&v61 - v10);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v68 = (&v61 - v13);
  MEMORY[0x28223BE20](v12, v14);
  v67 = &v61 - v15;
  v61 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v61);
  swift_beginAccess();
  v16 = *(v0 + 24);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v79 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v17, 0);
    v18 = v79;
    v19 = v16 + 64;
    v20 = -1 << *(v16 + 32);
    v21 = sub_22D016AEC();
    v22 = 0;
    v23 = *(v16 + 36);
    v62 = v16 + 72;
    v63 = v17;
    v64 = v23;
    v65 = v16 + 64;
    v66 = v16;
    while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v16 + 32))
    {
      if ((*(v19 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
      {
        goto LABEL_26;
      }

      if (v23 != *(v16 + 36))
      {
        goto LABEL_27;
      }

      v74 = 1 << v21;
      v75 = v21 >> 6;
      v73 = v22;
      v25 = v72;
      v26 = *(v72 + 48);
      v27 = *(v16 + 56);
      v28 = (*(v16 + 48) + 16 * v21);
      v30 = *v28;
      v29 = v28[1];
      v31 = type metadata accessor for Activity();
      v32 = v67;
      sub_22CF0CC54(v27 + *(*(v31 - 8) + 72) * v21, &v67[v26], type metadata accessor for Activity);
      v33 = v68;
      *v68 = v30;
      *(v33 + 8) = v29;
      v34 = *(v25 + 48);
      sub_22CFA8FC0(&v32[v26], v33 + v34);
      v78 = v18;
      v35 = v69;
      *v69 = v30;
      *(v35 + 8) = v29;
      sub_22CF0CC54(v33 + v34, v35 + *(v25 + 48), type metadata accessor for Activity);
      v36 = v70;
      sub_22CFD1E74(v35, v70);
      v37 = *v36;
      v76 = v36[1];
      v77 = v37;
      v38 = *(v25 + 48);
      v39 = v71;
      sub_22CFD1E74(v35, v71);
      v40 = *(v39 + 8);
      swift_bridgeObjectRetain_n();

      v41 = *(v25 + 48);
      v42 = sub_22CF0B174();
      v44 = v43;
      v45 = v35;
      v18 = v78;
      sub_22CFD1EE4(v45);
      sub_22CF0F640(v39 + v41, type metadata accessor for Activity);
      sub_22CF0F640(v36 + v38, type metadata accessor for Activity);
      sub_22CFD1EE4(v33);
      v79 = v18;
      v47 = *(v18 + 16);
      v46 = *(v18 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_22CF4414C((v46 > 1), v47 + 1, 1);
        v18 = v79;
      }

      *(v18 + 16) = v47 + 1;
      v48 = (v18 + 48 * v47);
      v49 = v76;
      v48[4] = v77;
      v48[5] = v49;
      v48[6] = v42;
      v48[7] = v44;
      v48[9] = MEMORY[0x277D837D0];
      v16 = v66;
      v24 = 1 << *(v66 + 32);
      if (v21 >= v24)
      {
        goto LABEL_28;
      }

      v19 = v65;
      v50 = *(v65 + 8 * v75);
      if ((v50 & v74) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v23) = v64;
      if (v64 != *(v66 + 36))
      {
        goto LABEL_30;
      }

      v51 = v50 & (-2 << (v21 & 0x3F));
      if (v51)
      {
        v24 = __clz(__rbit64(v51)) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v52 = v75 << 6;
        v53 = v75 + 1;
        v54 = (v62 + 8 * v75);
        while (v53 < (v24 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v52 += 64;
          ++v53;
          if (v56)
          {
            sub_22CF44CF8(v21, v64, 0);
            v24 = __clz(__rbit64(v55)) + v52;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v21, v64, 0);
      }

LABEL_4:
      v22 = v73 + 1;
      v21 = v24;
      if (v73 + 1 == v63)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v18 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v57 = sub_22D016D3C();
    }

    else
    {
      v57 = MEMORY[0x277D84F98];
    }

    v79 = v57;

    sub_22CF623EC(v58, 1, &v79);

    v59 = v79;
    os_unfair_lock_unlock(v61);
    return v59;
  }

  return result;
}

uint64_t sub_22CFD1E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFD1EE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CFD1F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22CFD1FBC(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014B3C();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D014B2C();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CFD20E8(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_28143FAE8 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_281444390);
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, a4, v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }

    v12 = *(*&v7[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock] + 16);
    os_unfair_lock_lock(v12);
    swift_beginAccess();
    v13 = sub_22CF60F9C(a3);
    swift_endAccess();

    os_unfair_lock_unlock(v12);
  }
}

void *sub_22CFD2258()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4060, &unk_22D01D5C0);
  v74 = *(v1 - 8);
  v75 = v1;
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v73 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3660, &qword_22D01BBC8);
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v76 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3668, &qword_22D01BBD0);
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v79 = &v60 - v12;
  v86 = sub_22D01696C();
  v88 = *(v86 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v86, v14);
  v85 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v60 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3678, &qword_22D01BBD8);
  v65 = *(v66 - 8);
  v21 = *(v65 + 8);
  MEMORY[0x28223BE20](v66, v22);
  v24 = &v60 - v23;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3680, &qword_22D01BBE0);
  v68 = *(v69 - 8);
  v25 = *(v68 + 64);
  MEMORY[0x28223BE20](v69, v26);
  v67 = &v60 - v27;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3688, &qword_22D01BBE8);
  v71 = *(v72 - 8);
  v28 = *(v71 + 64);
  MEMORY[0x28223BE20](v72, v29);
  v70 = &v60 - v30;
  result = *(v0 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_listener);
  if (result)
  {
    [result activate];
    v32 = *(v0 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer), *(v0 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer + 24));
    v82 = v0;
    v89 = sub_22D015F3C();
    v90 = *(v0 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_requestProcessingQueue);
    v33 = v90;
    v84 = sub_22D01693C();
    v34 = *(v84 - 8);
    v35 = *(v34 + 56);
    v87 = v34 + 56;
    v35(v20, 1, 1, v84);
    v61 = v35;
    v36 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3690, &qword_22D01BBF0);
    v37 = sub_22CEEC38C();
    v64 = MEMORY[0x277CBCD90];
    sub_22CEE8394(&qword_28143D9D0, &unk_27D9F3690, &qword_22D01BBF0);
    v38 = sub_22CEEC438(&qword_28143FA10, sub_22CEEC38C);
    v62 = v37;
    v83 = v38;
    sub_22D01647C();
    sub_22CEEC3D8(v20, &qword_27D9F3670, &qword_22D01BF00);

    v63 = MEMORY[0x277CBCD60];
    sub_22CEE8394(&qword_28143DA10, &qword_27D9F3678, &qword_22D01BBD8);
    sub_22CFD5F5C();
    v39 = v67;
    v40 = v66;
    sub_22D01649C();
    (*(v65 + 1))(v24, v40);
    v41 = v85;
    sub_22D01695C();
    v89 = v36;
    v35(v20, 1, 1, v84);
    v66 = MEMORY[0x277CBCBE0];
    sub_22CEE8394(&unk_28143DA60, &qword_27D9F3680, &qword_22D01BBE0);
    v42 = v36;
    v43 = v70;
    v44 = v69;
    sub_22D01648C();
    sub_22CEEC3D8(v20, &qword_27D9F3670, &qword_22D01BF00);

    v45 = *(v88 + 8);
    v88 += 8;
    v65 = v45;
    v45(v41, v86);
    (*(v68 + 8))(v39, v44);
    swift_allocObject();
    v46 = v82;
    swift_unknownObjectWeakInit();
    v69 = MEMORY[0x277CBCCF8];
    sub_22CEE8394(&unk_28143DA48, &qword_27D9F3688, &qword_22D01BBE8);
    v47 = v72;
    sub_22D0164AC();

    (*(v71 + 8))(v43, v47);
    v72 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_subscriptions;
    swift_beginAccess();
    sub_22D0163EC();
    swift_endAccess();

    v48 = *__swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_authorizationManager), *(v46 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_authorizationManager + 24));
    v89 = sub_22CF464B0();
    v49 = v42;
    v90 = v42;
    v50 = v84;
    v51 = v61;
    v61(v20, 1, 1, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F36B0, &unk_22D01D5E0);
    sub_22CEE8394(&unk_28143D9E8, &unk_27D9F36B0, &unk_22D01D5E0);
    v52 = v73;
    sub_22D01647C();
    sub_22CEEC3D8(v20, &qword_27D9F3670, &qword_22D01BF00);

    sub_22CEE8394(&qword_28143DA30, &unk_27D9F4060, &unk_22D01D5C0);
    sub_22CFD6018();
    v54 = v75;
    v53 = v76;
    sub_22D01649C();
    (*(v74 + 8))(v52, v54);
    v55 = v85;
    sub_22D01694C();
    v89 = v49;
    v51(v20, 1, 1, v50);
    sub_22CEE8394(&qword_28143DA70, &qword_27D9F3660, &qword_22D01BBC8);
    v56 = v79;
    v57 = v55;
    v58 = v78;
    sub_22D01648C();
    sub_22CEEC3D8(v20, &qword_27D9F3670, &qword_22D01BF00);

    v65(v57, v86);
    (*(v77 + 8))(v53, v58);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22CEE8394(&qword_28143DA58, &qword_27D9F3668, &qword_22D01BBD0);
    v59 = v81;
    sub_22D0164AC();

    (*(v80 + 8))(v56, v59);
    swift_beginAccess();
    sub_22D0163EC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}