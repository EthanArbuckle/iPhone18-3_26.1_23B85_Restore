uint64_t sub_21D1ABD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21D1AD228(&qword_280D171E0, MEMORY[0x277CC9260]);
  v31 = a1;
  v10 = sub_21DBF9FFC();
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
      sub_21D1AD228(&qword_280D171D0, MEMORY[0x277CC9260]);
      v19 = sub_21DBFA10C();
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
      sub_21D8B26F4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_21D1ACF2C(v13, MEMORY[0x277CC9260], &qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_21D1AC084()
{
  v1 = v0;

  v2 = sub_21DBFBD7C();
  v3 = swift_unknownObjectRetain();
  v4 = sub_21D29F4B8(v3, v2);
  v13 = v4;

  v5 = sub_21DBFB62C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_21D0D8CF0(0, &qword_280D17880);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_21DBFB63C();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
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

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_21D1AC1EC(v7);
  result = sub_21DBFB63C();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21D1AC1EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21DBFBCDC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_21DBFB62C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
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

unint64_t sub_21D1AC38C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21DBFBCDC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21DBFC7DC();
        sub_21DBF8E0C();
        sub_21DBFA27C();
        v10 = sub_21DBFC82C();

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

void sub_21D1AC550(int64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(char *))
{
  v34 = a3;
  v35 = a4;
  v30 = a2(0);
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v29 - v7;
  v8 = *v4;
  v9 = *v4 + 56;
  v10 = -1 << *(*v4 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_21DBFBCDC();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = (v13 + 1) & v12;
      v15 = *(v6 + 72);
      v31 = v8;
      v32 = v9;
      do
      {
        v16 = *(v8 + 48);
        v17 = v15;
        v18 = v15 * v11;
        v19 = v33;
        v20 = v12;
        v21 = v34;
        sub_21D1AD270(v16 + v15 * v11, v33, v34);
        sub_21DBFC7DC();
        v35(v36);
        v22 = sub_21DBFC82C();
        v23 = v21;
        v12 = v20;
        sub_21D1AD2D8(v19, v23);
        v24 = v22 & v20;
        if (a1 >= v14)
        {
          if (v24 < v14)
          {
            v15 = v17;
          }

          else
          {
            v15 = v17;
            if (a1 >= v24)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v15 = v17;
          if (v24 >= v14 || a1 >= v24)
          {
LABEL_13:
            v8 = v31;
            v25 = v15 * a1;
            if (v15 * a1 < v18 || *(v31 + 48) + v15 * a1 >= (*(v31 + 48) + v18 + v15))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v25 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_6;
          }
        }

        v8 = v31;
LABEL_6:
        v11 = (v11 + 1) & v20;
        v9 = v32;
      }

      while (((*(v32 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v8 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v28;
    ++*(v8 + 36);
  }
}

unint64_t sub_21D1AC814(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21DBFBCDC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21DBFC7DC();
        sub_21DBFA27C();

        v10 = sub_21DBFC82C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
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

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_21D1ACBA4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21DBFBCDC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_21DBFC7DC();
        MEMORY[0x223D44FA0](v10);
        v11 = sub_21DBFC82C() & v7;
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

unint64_t sub_21D1ACD4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21DBFBCDC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_21DBFA16C();
        sub_21DBFC7DC();
        v11 = v10;
        sub_21DBFA27C();
        v12 = sub_21DBFC82C();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void sub_21D1ACF2C(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = sub_21DBFBCDC();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_21D1AD228(v40, v41);
        v24 = sub_21DBF9FFC();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

uint64_t sub_21D1AD228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D1AD270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1AD2D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D1AD338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_21D1AD3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TTRListBadgeView();
  *&v3[qword_27CE58DC0] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  v24.receiver = v3;
  v24.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, a1, v7);

  v9 = *&v8[qword_27CE58DC0];
  LOBYTE(v30[0]) = 0;
  LOBYTE(v25) = 0;
  v10 = &v8[qword_27CE655A0];
  swift_beginAccess();
  v25 = *v10;
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  v13 = *(v10 + 3);
  v29 = v10[64];
  v27 = v12;
  v28 = v13;
  v26 = v11;
  v30[0] = *v10;
  v14 = *(v10 + 1);
  v15 = *(v10 + 2);
  v16 = *(v10 + 3);
  v31 = v10[64];
  v30[2] = v15;
  v30[3] = v16;
  v30[1] = v14;
  *v10 = v9;
  *(v10 + 8) = vdupq_n_s64(0x4040000000000000uLL);
  v17 = MEMORY[0x277D768C8];
  *(v10 + 3) = 0;
  v18 = v17[1];
  *(v10 + 2) = *v17;
  *(v10 + 3) = v18;
  v10[64] = 64;
  v19 = v8;
  v20 = v9;
  sub_21D1ADB0C(&v25, v22);
  sub_21D1ADB7C(v30);
  v22[2] = v27;
  v22[3] = v28;
  v23 = v29;
  v22[0] = v25;
  v22[1] = v26;
  sub_21DA7EF48(v22);
  sub_21D1ADB7C(&v25);
  *&v22[0] = [objc_opt_self() secondaryLabelColor];
  sub_21DA7BAF4(v22);

  return v19;
}

char *sub_21D1AD598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D1AD3A0(a3, a4, v6);
}

id sub_21D1AD6B4(void *a1)
{
  v1 = a1;
  sub_21D1AD72C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_21DBFA12C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_21D1AD72C()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v30, sel_accessibilityLabel);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

LABEL_9:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v7 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_21D210A84((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
LABEL_10:
  v11 = *&v0[qword_27CE58DC0];
  v12 = [v11 accessibilityLabel];
  if (v12)
  {
    v13 = v12;
    v14 = sub_21DBFA16C();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
    }

    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    if (v18 >= v17 >> 1)
    {
      v7 = sub_21D210A84((v17 > 1), v18 + 1, 1, v7);
    }

    *(v7 + 2) = v18 + 1;
    v19 = &v7[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
  }

  v20 = [v11 accessibilityValue];
  if (v20)
  {
    v21 = v20;
    v22 = sub_21DBFA16C();
    v24 = v23;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
    }

    v26 = *(v7 + 2);
    v25 = *(v7 + 3);
    if (v26 >= v25 >> 1)
    {
      v7 = sub_21D210A84((v25 > 1), v26 + 1, 1, v7);
    }

    *(v7 + 2) = v26 + 1;
    v27 = &v7[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v24;
  }

  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v28 = sub_21DBFA07C();

  return v28;
}

uint64_t type metadata accessor for TTRIReminderListPickerTableViewCell()
{
  result = qword_27CE58DC8;
  if (!qword_27CE58DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D1ADAA8()
{
  result = qword_280D178D0;
  if (!qword_280D178D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CE61630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D178D0);
  }

  return result;
}

uint64_t sub_21D1ADB0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1ADB7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D1ADC08()
{
  v1 = v0;
  v2 = v0[7];
  v3 = *(v2 + 2);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v47[0] = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    v4 = v47;
    sub_21DBFC01C();
    v5 = 0;
    v6 = (v2 + 32);
    while (v5 < *(v2 + 2))
    {
      v9 = *v6;
      v10 = v6[1];
      v11 = v6[2];
      sub_21DBF8E0C();
      sub_21D486C20(v46);
      swift_beginAccess();
      v12 = v1[9];
      if (*(v12 + 16) && (v13 = sub_21D181DFC(v9), (v14 & 1) != 0))
      {
        v15 = *(*(v12 + 56) + 8 * v13);
        swift_endAccess();
        v7 = v15;
      }

      else
      {
        swift_endAccess();
        v7 = sub_21D1AE204(v46, v1, v9);
      }

      v8 = v7;
      ++v5;
      [v7 setImage_];
      [v8 setSelected_];
      [v8 setEnabled_];
      sub_21D1AEF04(v46);

      v4 = v47;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v6 += 16;
      if (v3 == v5)
      {

        v3 = v47[0];
        v4 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_11:
  v5 = [objc_opt_self() flexibleSpaceItem];
  [v5 setHidesSharedBackground_];
  v2 = &unk_21DC09000;
  if (v3 >> 62)
  {
LABEL_27:
    v16 = sub_21DBFBD7C();
    if (!v16)
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_13:
  v46[0] = v4;
  sub_21D18E7E0(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
    return;
  }

  v4 = v46[0];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v17 = 0;
    v44 = *(v2 + 207);
    do
    {
      v18 = MEMORY[0x223D44740](v17, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = v44;
      *(v19 + 32) = v18;
      v46[0] = v4;
      v21 = v4[2];
      v20 = v4[3];
      if (v21 >= v20 >> 1)
      {
        v42 = v5;
        v22 = v19;
        sub_21D18E7E0((v20 > 1), v21 + 1, 1);
        v19 = v22;
        v5 = v42;
        v4 = v46[0];
      }

      ++v17;
      v4[2] = v21 + 1;
      v4[v21 + 4] = v19;
    }

    while (v16 != v17);
  }

  else
  {
    v43 = v5;
    v23 = 32;
    v45 = *(v2 + 207);
    do
    {
      v24 = *(v3 + v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v25 = swift_allocObject();
      *(v25 + 16) = v45;
      *(v25 + 32) = v24;
      v46[0] = v4;
      v26 = v4[2];
      v27 = v4[3];
      v28 = v24;
      if (v26 >= v27 >> 1)
      {
        sub_21D18E7E0((v27 > 1), v26 + 1, 1);
        v4 = v46[0];
      }

      v4[2] = v26 + 1;
      v4[v26 + 4] = v25;
      v23 += 8;
      --v16;
    }

    while (v16);

    v5 = v43;
  }

  v2 = &unk_21DC09000;
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = *(v2 + 207);
  *(inited + 32) = v5;
  v30 = v5;
  v31 = sub_21D1AE604(inited, v4);
  v33 = v32;

  sub_21D1AED1C(v31, v33);
  v34 = v1[5];
  v35 = [v34 items];
  if (v35 && (v36 = v35, sub_21D0D8CF0(0, &qword_280D0C300), v37 = sub_21DBFA5EC(), v36, v38 = , LOBYTE(v36) = sub_21D1D7B8C(v38, v37), , , (v36 & 1) != 0))
  {
  }

  else
  {
    sub_21D0D8CF0(0, &qword_280D0C300);
    v39 = sub_21DBFA5DC();

    [v34 setItems:v39 animated:0];

    v40 = v1[6];
    v41 = &v40[OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_cachedQuickBarFittingSize];
    *v41 = 0;
    *(v41 + 1) = 0;
    v41[16] = 1;
    [v40 invalidateIntrinsicContentSize];
  }
}

double sub_21D1AE11C@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (*(v5 + 16) && (v6 = sub_21D181DFC(v4), (v7 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    *a2 = v10;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 64;
    *(a2 + 48) = 0;
    *(a2 + 56) = 1;

    v8 = v10;
  }

  else
  {
    swift_endAccess();
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *&result = 254;
    *(a2 + 40) = xmmword_21DC0A830;
    *(a2 + 56) = 0;
  }

  return result;
}

id sub_21D1AE204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0D8CF0(0, &qword_280D0C300);
  v6 = *(a1 + 40);
  sub_21DBF8E0C();
  v7 = sub_21DBFAFDC();
  v8 = sub_21DBFA12C();
  [v7 setAccessibilityHint_];

  LOBYTE(v13) = a3;
  sub_21D1AE388(&v13, &v14);
  v9 = v14;
  if (v15)
  {
    [v7 setPrimaryAction_];
  }

  else
  {
    [v7 setMenu_];
    [v7 setPreferredMenuElementOrder_];
  }

  swift_beginAccess();
  v10 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 72);
  *(a2 + 72) = 0x8000000000000000;
  sub_21D476E20(v10, a3, isUniquelyReferenced_nonNull_native);
  *(a2 + 72) = v13;
  swift_endAccess();
  return v10;
}

uint64_t sub_21D1AE388@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = swift_allocObject();
      swift_weakInit();

      v5 = sub_21D1AEF90;
      goto LABEL_12;
    }

    if (v3 != 4)
    {
      v4 = swift_allocObject();
      swift_weakInit();

      v5 = sub_21D1AEF58;
      goto LABEL_12;
    }
  }

  else
  {
    if (!*a1)
    {
      v4 = swift_allocObject();
      swift_weakInit();

      v5 = sub_21D1AEFD0;
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = swift_allocObject();
      swift_weakInit();

      v5 = sub_21D1AEFC8;
LABEL_12:
      v7 = _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(0, v5, v4);

      v8 = 0;
      goto LABEL_13;
    }
  }

  sub_21D0D8CF0(0, &qword_280D0C1D0);
  swift_allocObject();
  swift_weakInit();
  result = sub_21DBFB77C();
  v7 = result;
  v8 = 1;
LABEL_13:
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_21D1AE604(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v5 = sub_21DBFBD7C();
    if (v5)
    {
      v6 = v5;
      v7 = sub_21D9D9774(v5, 0);
      sub_21DBF8E0C();
      sub_21D564E24(v7 + 32, v6, a1);
      v9 = v8;

      if (v9 != v6)
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21DBF8E0C();
  }

  return a2;
}

uint64_t sub_21D1AE6A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    a3(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D1AE720()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21D1AE7B4(uint64_t a1, char a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  sub_21DBF8E0C();

  sub_21D1ADC08();
}

double sub_21D1AE7F8()
{
  v1 = [*(v0 + 40) traitCollection];
  [v1 displayScale];
  [v1 layoutDirection];

  return 32.0;
}

unint64_t sub_21D1AE878(unint64_t a1, unint64_t a2)
{
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = *v2;
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v6 + 24) >> 1, v9 < v7 + v5))
  {
    sub_21DBFC02C();
    v6 = *v2;
    v9 = *(*v2 + 24) >> 1;
  }

  v10 = *(v6 + 16);
  v11 = v9 - v10;
  result = sub_21D564E24(v6 + 8 * v10 + 32, v9 - v10, v4);
  if (v13 < v5)
  {
    goto LABEL_42;
  }

  v4 = result;
  if (v13 < 1)
  {
    goto LABEL_11;
  }

  v14 = *(v6 + 16);
  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v6 + 16) = v16;
LABEL_11:
  if (v13 != v11)
  {
    goto LABEL_34;
  }

  v3 = *(v6 + 16);
  if (!(result >> 62))
  {
    v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2 != v17)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_44:
  v28 = a2;
  result = sub_21DBFBD7C();
  a2 = v28;
  v17 = result;
  if (v28 != result)
  {
LABEL_14:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v29 = a2;
      result = MEMORY[0x223D44740](a2, v4);
      v19 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
LABEL_18:
        v20 = result;
        v32 = v2;
        v30 = v17;
        while (1)
        {
          sub_21DBFC03C();
          v21 = *(*v2 + 24) >> 1;
          v22 = v21 - v3;
          v33 = *v2;
          if (v21 > v3)
          {
            break;
          }

          v21 = v3;
          v25 = v20;
LABEL_32:
          v20 = v25;
          *(v33 + 16) = v21;
        }

        v23 = 0;
        v24 = v3;
        v3 = v17 - v19;
        v31 = v24;
        v2 = *v2 + 8 * v24 + 32;
        v25 = v20;
        while (1)
        {
          *(v2 + 8 * v23) = v25;
          if (v3 == v23)
          {
            *(v33 + 16) = v31 + v23 + 1;
            goto LABEL_34;
          }

          v26 = v19 + v23;
          if ((v4 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x223D44740](v19 + v23, v4);
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_38;
            }

            if (v26 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v25 = *(v4 + 32 + 8 * v19 + 8 * v23);
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              v5 = sub_21DBFBD7C();
              goto LABEL_3;
            }
          }

          if (v22 == ++v23)
          {
            v19 = v27;
            v3 = v21;
            v2 = v32;
            v17 = v30;
            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (a2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v18 = a2;
      result = *(v4 + 8 * a2 + 32);
      v19 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_34:

  return sub_21DBFBFFC();
}

void *sub_21D1AEB4C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || (v6 = *(v3 + 24) >> 1, v6 < (v4 + v2)))
  {
    result = sub_21DBFC02C();
    v3 = *v1;
    v6 = *(*v1 + 24) >> 1;
  }

  v7 = *(v3 + 16);
  v8 = v6 - v7;
  if (v2)
  {
    if (v8 < v2)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_21D0D8CF0(0, &qword_280D0C300);
    result = swift_arrayInitWithCopy();
    v9 = *(v3 + 16);
    v7 = v9 + v2;
    if (__OFADD__(v9, v2))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *(v3 + 16) = v7;
  }

  if (v2 == v8)
  {
    v10 = v5[2];
    if (v2 != v10)
    {
      if (v2 >= v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v11 = v2 + 1;
      v20 = v5[v2 + 4];
      v12 = v20;
LABEL_14:
      while (1)
      {
        sub_21DBFC03C();
        v13 = *v1;
        v14 = *(*v1 + 24) >> 1;
        v15 = v14 - v7;
        if (v14 > v7)
        {
          break;
        }

        *(v13 + 16) = v7;
      }

      v16 = (v13 + 8 * v7 + 32);
      v17 = v7 + 1;
      result = v20;
      while (1)
      {
        *v16 = result;
        v18 = v5[2];
        if (v11 == v18)
        {
          *(v13 + 16) = v17;
          goto LABEL_21;
        }

        if (v11 >= v18)
        {
          break;
        }

        v19 = v11 + 1;
        result = v5[v11 + 4];
        ++v16;
        ++v17;
        ++v11;
        if (!--v15)
        {
          v20 = result;
          v7 = v14;
          v11 = v19;
          *(v13 + 16) = v14;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_25;
    }
  }

LABEL_21:

  return sub_21DBFBFFC();
}

unint64_t sub_21D1AED1C(uint64_t a1, uint64_t a2)
{
  v17 = MEMORY[0x277D84F90];
  if (!*(a2 + 16))
  {

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = 0;
      while (v13 < *(a1 + 16))
      {
        v14 = v13 + 1;
        v15 = sub_21DBF8E0C();
        result = sub_21D1AE878(v15, v16);
        v13 = v14;
        if (v12 == v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_12:

    return v17;
  }

  v3 = *(a1 + 16);
  if (!v3 || (v4 = sub_21DBF8E0C(), result = sub_21D1AE878(v4, v5), v3 == 1))
  {
LABEL_7:

    goto LABEL_12;
  }

  v7 = (a1 + 40);
  v8 = 1;
  while (v8 < *(a1 + 16))
  {
    ++v8;
    v9 = *v7++;
    sub_21DBF8E0C();

    sub_21D1AEB4C(v10);
    result = sub_21D1AE878(v9, v11);
    if (v3 == v8)
    {
      goto LABEL_7;
    }
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_21D1AEE40()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v2, &off_282EC0338, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  [*(*(v1 + 48) + OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_scrollPocket) _setScrollView_];
}

id sub_21D1AF050()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  type metadata accessor for TTRIReminderListPickerTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58E80);
  sub_21DBFA1AC();
  v5 = sub_21DBFA12C();

  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  result = [v1 tableView];
  if (!result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  type metadata accessor for TTRIReminderListPickerTableViewHeader();
  v7 = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5B0);
  sub_21DBFA1AC();
  v8 = sub_21DBFA12C();

  [v6 registerClass:v7 forHeaderFooterViewReuseIdentifier:v8];

  if (v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_isPresentedInPopover] != 1)
  {
    return sub_21D1AF3DC();
  }

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_11;
  }

  v9 = result;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v9 setTableHeaderView_];

  result = [v1 tableView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v11 setTableFooterView_];

  result = [v1 tableView];
  if (result)
  {
    v13 = result;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = sub_21DBF530C();

    v15 = *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_contentSizeObserver];
    *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_contentSizeObserver] = v14;

    return sub_21D1AF3DC();
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_21D1AF358(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 contentSize];
    [v3 setPreferredContentSize_];
  }
}

uint64_t sub_21D1AF3DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_21D1B3724();
  if (v3)
  {
    v4 = sub_21DBFA12C();
  }

  else
  {
    v4 = 0;
  }

  [v1 setTitle_];

  sub_21D1B3940();
  if (v5)
  {
    v6 = &v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette];
    v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette];
    v8 = *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette + 8];
    if (v7)
    {
      v9 = *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette + 8];
      v10 = *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette];
    }

    else
    {
      type metadata accessor for PaletteContentView();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v16 = [objc_allocWithZone(MEMORY[0x277D76118]) initWithContentView_];
      [v16 _setContentViewMarginType_];
      v36 = ObjectType;
      v17 = *v6;
      v35 = v6[1];
      *v6 = v16;
      v6[1] = v15;
      v10 = v16;
      v9 = v15;
      v18 = v17;
      ObjectType = v36;
      sub_21D0D9834(v18, v35);
    }

    v19 = *&v9[OBJC_IVAR____TtC15RemindersUICoreP33_7BA5891348DD5304637361581A4B546418PaletteContentView_titleLabel];
    sub_21D10EC0C(v7, v8);
    v20 = v19;
    v21 = sub_21DBFA12C();

    [v20 setText_];

    sub_21D1AF7E0();
    v14 = [v1 navigationItem];
    [v14 _setBottomPalette_];
  }

  else
  {
    v11 = &v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette];
    v12 = *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette];
    v13 = *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette + 8];
    *v11 = 0;
    *(v11 + 1) = 0;
    sub_21D0D9834(v12, v13);
    v14 = [v1 navigationItem];
    [v14 _setBottomPalette_];
  }

  result = sub_21D1B3AFC();
  if (v23)
  {
    v25 = result;
    v26 = v23;
    v27 = v24;
    v28 = [v1 navigationItem];
    v29 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelButtonAction_];
    [v28 setLeftBarButtonItem_];

    v30 = [v1 &selRef_parameters + 2];
    sub_21D0D8CF0(0, &qword_280D0C300);
    v37[3] = ObjectType;
    v37[0] = v1;
    v31 = v1;
    sub_21DBF8E0C();
    v32 = UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)(v25, v26, v37, sel_moveButtonAction_);
    [v30 setRightBarButtonItem_];

    v33 = [v31 &selRef_parameters + 2];
    v34 = [v33 rightBarButtonItem];

    if (v34)
    {
      [v34 setEnabled_];
    }
  }

  return result;
}

void sub_21D1AF7E0()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette + 8];
  v4 = v1;
  v5 = v3;
  v6 = [v2 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [v6 window];

  if (v8)
  {
  }

  else
  {
    v28 = [v2 parentViewController];
    if (v28)
    {
      v29 = v28;
      v31 = [v28 viewIfLoaded];

      v9 = v31;
      if (v31)
      {
        goto LABEL_6;
      }
    }
  }

  v9 = [v2 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    return;
  }

LABEL_6:
  v30 = v9;
  [v9 layoutMargins];
  [v5 setLayoutMargins_];
  v10 = [v2 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v33.origin.x = v13;
  v33.origin.y = v15;
  v33.size.width = v17;
  v33.size.height = v19;
  Width = CGRectGetWidth(v33);
  [v5 layoutMargins];
  v22 = v21;
  [v5 layoutMargins];
  v24 = Width - (v22 + v23);
  [*&v5[OBJC_IVAR____TtC15RemindersUICoreP33_7BA5891348DD5304637361581A4B546418PaletteContentView_titleLabel] sizeThatFits_];
  v34.size.height = v25;
  v34.origin.y = 0.0;
  v34.origin.x = v22;
  v34.size.width = v24;
  MaxY = CGRectGetMaxY(v34);
  [v5 layoutMargins];
  [v4 setPreferredHeight_];
}

uint64_t sub_21D1AFAD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58E88);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v77 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v77 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v77 - v14;
  v16 = sub_21DBF8A0C();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  MEMORY[0x28223BE20](v23);
  v28 = &v77 - v27;
  result = 0;
  v30 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter) + 32);
  if (*(v30 + 16) > a2)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      v77 = v26;
      v78 = v6;
      v31 = v30 + 48 * a2;
      v32 = *(v31 + 40);
      v33 = *(v31 + 48);
      v34 = *(v31 + 56);
      v35 = *(v31 + 64);
      v82 = *(v31 + 32);
      v83 = v25;
      v36 = v32;
      v79 = v24;
      v80 = v33;
      v81 = v34;
      sub_21D1B201C(v82, v32, v33, v34, v35);
      sub_21DBD2284();
      if (v35)
      {
        if (v35 == 1)
        {
          v38 = v37;
          v39 = *(v37 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader_prominentView);
          sub_21DBF8E0C();
          [v39 setHidden_];
          sub_21DBFB21C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E90);
          v40 = v79;
          v41 = swift_dynamicCast();
          v42 = v82;
          if (v41)
          {
            v43 = v83;
            (*(v83 + 56))(v15, 0, 1, v40);
            (*(v43 + 32))(v28, v15, v40);
            sub_21DBF89EC();
            v85 = v40;
            v86 = MEMORY[0x277D74C30];
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v84);
            (*(v43 + 16))(boxed_opaque_existential_0, v28, v40);
            sub_21DBFB22C();
            (*(v43 + 8))(v28, v40);
            v46 = v80;
            v45 = v81;
          }

          else
          {
            v46 = v80;
            v45 = v81;
            sub_21D1B2084(v82, v36, v80, v81, 1u);
            (*(v83 + 56))(v15, 1, 1, v40);
            sub_21D0CF7E0(v15, &qword_27CE58E88);
          }

          [*(v38 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader_standardView) setHidden_];
          v63 = v42;
          v64 = v36;
          v65 = v46;
          v66 = v45;
          v67 = 1;
        }

        else
        {
          v55 = v37;
          [*(v37 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader_prominentView) setHidden_];
          v38 = v55;
          v56 = *(v55 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader_standardView);
          v57 = v36;
          sub_21DBF8E0C();
          [v56 setHidden_];
          sub_21DBFB21C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E90);
          v58 = v79;
          v59 = swift_dynamicCast();
          v60 = v82;
          if (v59)
          {
            v61 = v83;
            (*(v83 + 56))(v12, 0, 1, v58);
            (*(v61 + 32))(v22, v12, v58);
            sub_21DBF89EC();
            v85 = v58;
            v86 = MEMORY[0x277D74C30];
            v62 = __swift_allocate_boxed_opaque_existential_0(v84);
            (*(v61 + 16))(v62, v22, v58);
            sub_21DBFB22C();
            (*(v61 + 8))(v22, v58);
            v63 = v60;
            v64 = v57;
            v65 = v80;
            v66 = v81;
          }

          else
          {
            v76 = v80;
            v75 = v81;
            sub_21D1B2084(v82, v57, v80, v81, 2u);
            (*(v83 + 56))(v12, 1, 1, v58);
            sub_21D0CF7E0(v12, &qword_27CE58E88);
            v63 = v60;
            v64 = v57;
            v65 = v76;
            v66 = v75;
          }

          v67 = 2;
        }
      }

      else
      {
        v38 = v37;
        v47 = *(v37 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader_prominentView);
        v48 = v36;
        sub_21DBF8E0C();
        v49 = &selRef_setAttributedText_;
        [v47 setHidden_];
        sub_21DBFB21C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E90);
        v50 = v79;
        if (swift_dynamicCast())
        {
          v51 = v83;
          v52 = *(v83 + 56);
          v52(v9, 0, 1, v50);
          (*(v51 + 32))(v19, v9, v50);
          sub_21DBF89EC();
          v85 = v50;
          v86 = MEMORY[0x277D74C30];
          v53 = __swift_allocate_boxed_opaque_existential_0(v84);
          (*(v51 + 16))(v53, v19, v50);
          sub_21DBFB22C();
          v54 = v51;
          v49 = &selRef_setAttributedText_;
          (*(v54 + 8))(v19, v50);
        }

        else
        {

          v52 = *(v83 + 56);
          v52(v9, 1, 1, v50);
          sub_21D0CF7E0(v9, &qword_27CE58E88);
        }

        v68 = v81;
        v69 = *(v38 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader_standardView);
        sub_21DBF8E0C();
        [v69 v49[43]];
        sub_21DBFB21C();
        v70 = v78;
        if (swift_dynamicCast())
        {
          v71 = v83;
          v52(v70, 0, 1, v50);
          v72 = v77;
          (*(v71 + 32))(v77, v70, v50);
          v73 = v80;
          sub_21DBF89EC();
          v85 = v50;
          v86 = MEMORY[0x277D74C30];
          v74 = __swift_allocate_boxed_opaque_existential_0(v84);
          (*(v71 + 16))(v74, v72, v50);
          sub_21DBFB22C();
          (*(v71 + 8))(v72, v50);
          v63 = v82;
          v64 = v48;
          v65 = v73;
        }

        else
        {

          v52(v70, 1, 1, v50);
          sub_21D0CF7E0(v70, &qword_27CE58E88);
          v63 = v82;
          v64 = v48;
          v65 = v80;
        }

        v66 = v68;
        v67 = 0;
      }

      sub_21D1B2084(v63, v64, v65, v66, v67);
      return v38;
    }
  }

  return result;
}

char *sub_21D1B03FC()
{
  sub_21D1B087C();
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter);
  v4 = *(v3 + 40);
  *&v49 = *(v3 + 32);
  *(&v49 + 1) = v4;
  v5 = v4;
  sub_21DBF8E0C();
  v6 = sub_21DBF5CCC();
  v7 = sub_21DBF5D0C();
  TTRReminderListPickerViewModel.list(at:inSectionAt:)(v6, v7, v54);

  v8 = *&v2[qword_27CE65590];
  v9 = v2;
  sub_21DBF8E0C();
  v10 = v8;
  v11 = sub_21DBFA12C();

  [v10 setText_];

  v12 = v63;
  v13 = v64;
  sub_21DBF8E0C();
  sub_21DA7B5A0(v12, v13);
  v15 = v60;
  v14 = v61;
  if (v62)
  {
    v16 = qword_27CE58DC0;
    v17 = *&v9[qword_27CE58DC0];
    v18 = &v17[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji];
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    *v18 = v15;
    v18[1] = v14;
    sub_21D0FB9BC(v15, v14, 1);
    v21 = v17;
    sub_21D1136D0(v19, v20);

    v22 = *&v9[v16];
    v23 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
    swift_beginAccess();
    v24 = *(v22 + v23);
    *(v22 + v23) = 0x4030000000000000;
    if (v24 != 16.0)
    {
      v25 = *(v22 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
      if (v25)
      {
        v26 = v25;
        v27 = [v26 font];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 fontWithSize_];
          [v26 setFont_];
        }
      }
    }
  }

  else
  {
    v30 = qword_27CE58DC0;
    v31 = *&v9[qword_27CE58DC0];
    sub_21D0FB9BC(v60, v61, 0);
    v32 = v31;
    sub_21D114670(0);

    v33 = *&v9[v30];
    v34 = REMListBadgeEmblem.image.getter(v15);
    sub_21D112D3C(v34);

    sub_21D0FB9F4(v15, v14, 0);
  }

  if (v65 == 1)
  {
    if (qword_27CE57088 != -1)
    {
      swift_once();
    }

    v49 = xmmword_27CE65AC0;
    v50 = *algn_27CE65AD0;
    v51 = qword_27CE65AE0;
    LOBYTE(v52) = byte_27CE65AE8;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    LOBYTE(v52) = 2;
  }

  sub_21D113874(&v49);
  v35 = qword_27CE58DC0;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v52 = v58;
  v53 = v59;
  sub_21D0FB960(v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58, v59);
  sub_21D113E3C(&v49);
  v36 = *&v9[v35];
  v38 = v54[7];
  v37 = v54[8];
  v39 = &v36[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName];
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 1) = v37;
  v40 = v36;
  sub_21DBF8E0C();

  if (*(v3 + 56) == 255 || (v41 = *(v3 + 48), v42 = v54[0], v43 = [v41 objectID], sub_21D0D8CF0(0, &qword_280D17880), LOBYTE(v41) = sub_21DBFB63C(), v43, v42, (v41 & 1) == 0))
  {
    v44 = 0;
  }

  else
  {
    v44 = 3;
  }

  [v9 setAccessoryType_];
  v45 = v66;
  v46 = qword_27CE655A8;
  swift_beginAccess();
  v47 = v9[v46];
  v9[v46] = (v45 & 1) == 0;
  sub_21DA7ECAC(v47);
  sub_21D1B1FC8(v54);

  return v9;
}

void sub_21D1B087C()
{
  v1 = v0;
  type metadata accessor for TTRIReminderListPickerTableViewCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58E80);
  v2 = sub_21DBFA1AC();
  v4 = v3;
  v5 = sub_21DBFA12C();
  inited = [v1 dequeueReusableCellWithIdentifier_];

  if (inited)
  {
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  else
  {
    if (qword_27CE565E0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5A590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    inited[1] = xmmword_21DC08D00;
    *(inited + 4) = 48;
    *(inited + 5) = 0xE100000000000000;
    *(inited + 9) = MEMORY[0x277D837D0];
    *(inited + 6) = v2;
    *(inited + 7) = v4;
    sub_21D17716C(inited);

    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEAB00("Failed to dequeue cell for identifier {identifier: %@}", 54, 2);
    __break(1u);
  }

  if (qword_27CE565E0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE5A590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_21DC08D20;
  *(v9 + 32) = 48;
  *(v9 + 40) = 0xE100000000000000;
  v10 = sub_21D0D8CF0(0, &unk_280D0C2F0);
  *(v9 + 48) = inited;
  *(v9 + 72) = v10;
  *(v9 + 80) = 49;
  *(v9 + 88) = 0xE100000000000000;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = inited;
  v13 = [ObjCClassFromMetadata description];
  v14 = sub_21DBFA16C();
  v16 = v15;

  *(v9 + 120) = MEMORY[0x277D837D0];
  *(v9 + 96) = v14;
  *(v9 + 104) = v16;
  sub_21D17716C(v9);

  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEAB00("Failed to cast dequeued cell to expected type {cell: %@, expectedType: %@}", 74, 2);
  __break(1u);
}

void sub_21D1B0DE4(void *a1, uint64_t a2)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58968);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v30 = *(v7 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC08D00;
  v14 = *(v7 + 16);
  v31 = a2;
  v14(v13 + v12, a2, v6);
  sub_21D1B11B4(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE58E70);
  }

  else
  {
    v28 = *(v7 + 32);
    v28(v11, v5, v6);
    v15 = v29;
    v14(v29, v11, v6);
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v17 >= v16 >> 1)
    {
      v13 = sub_21D2111BC(v16 > 1, v17 + 1, 1, v13);
    }

    (*(v7 + 8))(v11, v6);
    *(v13 + 16) = v17 + 1;
    v28((v13 + v12 + v17 * v30), v15, v6);
  }

  v18 = v33;
  v19 = *&v33[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter];
  v20 = *(v19 + 40);
  v34 = *(v19 + 32);
  v35 = v20;
  v21 = v20;
  sub_21DBF8E0C();
  v22 = sub_21DBF5CCC();
  v23 = sub_21DBF5D0C();
  TTRReminderListPickerViewModel.remListOrCustomSmartList(at:inSectionAt:)(v22, v23, &v36);
  v24 = v35;

  v25 = v36;
  v34 = v36;
  LOBYTE(v35) = v37;
  sub_21D1B3D38(&v34, v18);
  v26 = v32;
  [v32 beginUpdates];
  v27 = sub_21DBFA5DC();

  [v26 reloadRowsAtIndexPaths:v27 withRowAnimation:5];

  sub_21D1AF3DC();
  [v26 endUpdates];
  if ([v18 modalPresentationStyle] == 7)
  {
    if (*(v19 + 72) == 1)
    {
      sub_21D1B3DF4(v18);
    }

    else
    {
      [v18 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_21D1B11B4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - v6;
  v7 = sub_21DBF648C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter);
  v16 = *(v14 + 32);
  v15 = *(v14 + 40);
  v17 = sub_21DBF5D5C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v49 = v17;
  v50 = a1;
  v42 = v19;
  v43 = v18 + 56;
  result = (v19)(a1, 1, 1);
  v47 = *(v16 + 16);
  if (v47)
  {
    v46 = v16 + 32;
    v56 = v8 + 88;
    v57 = v8 + 16;
    v55 = *MEMORY[0x277D45028];
    v54 = *MEMORY[0x277D45020];
    v52 = (v8 + 96);
    v53 = (v8 + 8);
    v45 = (v18 + 48);
    sub_21DBF8E0C();
    v41 = v15;
    v21 = 0;
    v51 = v7;
    while (v21 < *(v16 + 16))
    {
      v22 = v46 + 48 * v21;
      v59 = *(*(v22 + 40) + 16);
      v60 = v22 + 40;
      if (v59)
      {
        v23 = 0;
        v58 = v21;
        while (v21 < *(v16 + 16))
        {
          if (v23 >= *(*v60 + 16))
          {
            goto LABEL_24;
          }

          v24 = *(v8 + 16);
          v24(v13, *v60 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, v7);
          v24(v10, v13, v7);
          v25 = (*(v8 + 88))(v10, v7);
          if (v25 != v55 && v25 != v54)
          {
            goto LABEL_26;
          }

          (*v53)(v13, v7);
          (*v52)(v10, v7);
          v27 = *v10;
          v28 = [*v10 objectID];
          v29 = v28;
          if (*(v14 + 56) == 255)
          {
          }

          else
          {
            v30 = [*(v14 + 48) objectID];
            v31 = v10;
            v32 = v8;
            v33 = v13;
            v34 = v14;
            v35 = v16;
            v36 = v30;
            sub_21D0D8CF0(0, &qword_280D17880);
            v37 = sub_21DBFB63C();

            v16 = v35;
            v14 = v34;
            v13 = v33;
            v8 = v32;
            v10 = v31;
            v7 = v51;

            if (v37)
            {
              v38 = v44;
              v21 = v58;
              MEMORY[0x223D3E470](v23, v58);

              v39 = v50;
              sub_21D0CF7E0(v50, &unk_27CE58E70);
              v42(v38, 0, 1, v49);
              sub_21D1B1EE8(v38, v39);
              goto LABEL_18;
            }
          }

          ++v23;

          v21 = v58;
          if (v59 == v23)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
        break;
      }

LABEL_18:
      v40 = v48;
      sub_21D1B1F58(v50, v48);
      if ((*v45)(v40, 1, v49) != 1)
      {

        return sub_21D0CF7E0(v40, &unk_27CE58E70);
      }

      ++v21;
      sub_21D0CF7E0(v40, &unk_27CE58E70);
      if (v21 == v47)
      {
      }
    }

    __break(1u);
LABEL_26:
    result = sub_21DBFC63C();
    __break(1u);
  }

  return result;
}

void sub_21D1B1850()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter);
  v2 = *(v1 + 56);
  if (v2 == 255)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong dismissViewControllerAnimated:1 completion:0];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = *(v1 + 48);
    swift_beginAccess();
    v4 = *(v1 + 80);
    if (v4)
    {
      v6 = v3;
      v7 = v2 & 1;
      sub_21D1B1ED4(v3, v2);
      sub_21D0D0E78(v4);
      v4(v0, &v6);
      sub_21D0D0E88(v4);
      sub_21D157864(v3, v2);
    }
  }
}

id sub_21D1B1ACC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v10 setNumberOfLines_];
  v11 = sub_21D10FA9C(*MEMORY[0x277D76918], *MEMORY[0x277D74420], 0, 0);
  [v10 setFont_];

  [v10 setTextAlignment_];
  [v10 setUserInteractionEnabled_];
  v12 = [objc_opt_self() labelColor];
  [v10 setTextColor_];

  [v10 setAdjustsFontSizeToFitWidth_];
  [v10 setBaselineAdjustment_];
  [v10 setMinimumScaleFactor_];
  *&v4[OBJC_IVAR____TtC15RemindersUICoreP33_7BA5891348DD5304637361581A4B546418PaletteContentView_titleLabel] = v10;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = v10;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 addSubview_];

  return v14;
}

id sub_21D1B1ED4(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_21D1B1EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1B1F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1B201C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {

    return sub_21DBF8E0C();
  }

  if (!a5)
  {
    sub_21DBF8E0C();

    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D1B2084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {
  }

  if (!a5)
  {
  }

  return result;
}

unint64_t sub_21D1B20EC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter) + 32);
    if (*(v2 + 16) > result)
    {
      return *(*(v2 + 48 * result + 72) + 16);
    }
  }

  __break(1u);
  return result;
}

uint64_t static TTRIReminderListPickerAssembly.createViewController(mode:action:store:selectedListID:showingInstructionsForMovingReminders:modalPresentationStyle:)(char *a1, uint64_t a2, void *a3, void *a4, unint64_t a5, unsigned __int8 *a6)
{
  v85 = a4;
  v11 = sub_21DBF647C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *a2;
  v15 = *(a2 + 8);
  v77 = *a6;
  type metadata accessor for TTRReminderListPickerInteractor();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  v78 = a3;
  *(v16 + 32) = a3;
  v17 = type metadata accessor for TTRIReminderListPickerRouter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = v12;
  v19 = *(v12 + 16);
  v75 = v14;
  v82 = v11;
  v74 = v12 + 16;
  v73 = v19;
  v19(v14, a1, v11);
  v90[3] = v17;
  v90[4] = &off_282EAAAD8;
  v90[0] = v18;
  type metadata accessor for TTRIReminderListPickerPresenter();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v90, v17);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v24;
  v27 = v85;
  v89[3] = v17;
  v89[4] = &off_282EAAAD8;
  v89[0] = v26;
  *(v20 + 24) = 0;
  result = swift_unknownObjectWeakInit();
  *(v20 + 48) = 0;
  *(v20 + 56) = -1;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0;
  v84 = v16;
  v83 = v15;
  v80 = v18;
  if (a5)
  {
    v29 = a5 & 0xFFFFFFFFFFFFFF8;
    v81 = a5 & 0xFFFFFFFFFFFFFF8;
    if (a5 >> 62)
    {
      goto LABEL_21;
    }

    v30 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v84;
    v27 = v85;
    if (v30)
    {
      do
      {
        if ((a5 & 0xC000000000000001) != 0)
        {
          v69 = v27;
          sub_21DBF8E0C();
          v70 = v69;
          v71 = v78;

          sub_21D1B29D8(v79, v83);
          sub_21DBF8E0C();
          v36 = MEMORY[0x223D44740](0, a5);
        }

        else
        {
          if (!*(v29 + 16))
          {
            __break(1u);
            return result;
          }

          v32 = *(a5 + 32);
          v33 = v27;
          sub_21DBF8E0C();
          v34 = v33;
          v35 = v78;

          sub_21D1B29D8(v79, v83);
          sub_21DBF8E0C();
          v36 = v32;
        }

        v78 = v36;
        v37 = [v36 list];
        v27 = [v37 objectID];

        v38 = 0;
        while (1)
        {
          if (v30 == v38)
          {

            goto LABEL_18;
          }

          if ((a5 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x223D44740](v38, a5);
          }

          else
          {
            if (v38 >= *(v81 + 16))
            {
              goto LABEL_20;
            }

            v39 = *(a5 + 8 * v38 + 32);
          }

          v40 = v39;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          sub_21D1B2ABC();
          v41 = [v40 list];
          v42 = [v41 objectID];

          v43 = sub_21DBFB63C();
          ++v38;
          if ((v43 & 1) == 0)
          {

            v27 = v85;
LABEL_18:
            v31 = v84;
            v47 = v75;
            v48 = v79;
            v15 = v83;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        result = sub_21DBFBD7C();
        v29 = v81;
        v30 = result;
        v31 = v84;
        v27 = v85;
      }

      while (result);
    }

    v49 = v27;
    v50 = v78;

    v48 = v79;
    v15 = v83;
    sub_21D1B29D8(v79, v83);
    sub_21DBF8E0C();
    v47 = v75;
  }

  else
  {
    v44 = v27;
    v45 = v78;

    v46 = v79;
    sub_21D1B29D8(v79, v15);
    v31 = v16;
    v47 = v75;
    v48 = v46;
  }

LABEL_23:
  *(v20 + 96) = v31;
  *(v20 + 104) = &protocol witness table for TTRReminderListPickerInteractor;
  sub_21D0D32E4(v89, v20 + 112);
  v73(v20 + OBJC_IVAR____TtC15RemindersUICore31TTRIReminderListPickerPresenter_mode, v47, v82);
  *(v20 + 64) = v48;
  *(v20 + 72) = v15;
  *(v20 + OBJC_IVAR____TtC15RemindersUICore31TTRIReminderListPickerPresenter_reminders) = a5;
  if (!v15)
  {
    v52 = v48;
    goto LABEL_27;
  }

  if (v15 != 1)
  {
LABEL_27:
    v51 = v27;
    v27 = 0;
    goto LABEL_28;
  }

  v51 = 0;
LABEL_28:
  sub_21DBF8E0C();

  v53 = v47;
  v54 = TTRReminderListPickerInteractor.fetchAccounts(for:includeSmartLists:)();

  if (!v54)
  {
    v54 = MEMORY[0x277D84F90];
  }

  v87 = v48;
  v55 = v83;
  LOBYTE(v88) = v83;
  v56 = sub_21D1B4264(&v87, a5);

  sub_21D1B2AAC(v48, v55);
  if (v56 <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56;
  }

  v86 = v57;
  v58 = v27;
  v59 = v56;
  TTRReminderListPickerViewModel.init(accounts:customSmartListPredicate:disabledListID:)(v54, &v86, v27, &v87);
  v60 = v88;
  *(v20 + 32) = v87;
  *(v20 + 40) = v60;
  if (v51)
  {
    sub_21D1B33D4(v51, &v87);

    (*(v76 + 8))(v53, v82);
    __swift_destroy_boxed_opaque_existential_0(v89);
    v61 = v88;
    v62 = *(v20 + 48);
    *(v20 + 48) = v87;
    v63 = *(v20 + 56);
    *(v20 + 56) = v61;
    sub_21D157864(v62, v63);
  }

  else
  {
    (*(v76 + 8))(v53, v82);

    __swift_destroy_boxed_opaque_existential_0(v89);
  }

  v64 = v77;
  __swift_destroy_boxed_opaque_existential_0(v90);
  v65 = objc_allocWithZone(type metadata accessor for TTRIReminderListPickerViewController());

  v67 = sub_21D1B29E8(v66, v64, v65);
  v68 = v84;
  swift_beginAccess();
  *(v68 + 24) = &off_282EAACA8;
  swift_unknownObjectWeakAssign();

  *(v20 + 24) = &off_282EAAB78;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v67;
}

id TTRIReminderListPickerAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIReminderListPickerAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIReminderListPickerAssembly();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTRIReminderListPickerAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIReminderListPickerAssembly();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21D1B29D8(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

id sub_21D1B29E8(uint64_t a1, unsigned __int8 a2, _BYTE *a3)
{
  v6 = a2;
  ObjectType = swift_getObjectType();
  v8 = &a3[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette];
  *v8 = 0;
  v8[1] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_contentSizeObserver] = 0;
  v9 = &a3[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter];
  *v9 = a1;
  v9[1] = &off_282EAAC40;
  if (v6 == 2)
  {
    a3[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_isPresentedInPopover] = 1;
    v10 = 2;
  }

  else
  {
    a3[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_isPresentedInPopover] = 0;
    if (a2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }
  }

  v12.receiver = a3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithStyle_, v10);
}

void sub_21D1B2AAC(id a1, char a2)
{
  if (!a2)
  {
  }
}

unint64_t sub_21D1B2ABC()
{
  result = qword_280D17680;
  if (!qword_280D17680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17680);
  }

  return result;
}

id sub_21D1B2B68(void *a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_21DBF8A0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  sub_21DBF898C();
  sub_21DBF89BC();
  sub_21D0D8CF0(0, &qword_27CE58FD0);
  v58 = v7;
  v16 = *(v7 + 16);
  v56 = v15;
  v16(v12, v15, v6);
  v17 = sub_21DBFB23C();
  *&v2[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader_prominentView] = v17;
  v18 = v17;
  sub_21DBF88EC();
  v57 = v9;
  v59 = v6;
  v16(v12, v9, v6);
  v19 = sub_21DBFB23C();
  *&v3[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader_standardView] = v19;
  v20 = v19;
  if (a2)
  {
    v21 = sub_21DBFA12C();
  }

  else
  {
    v21 = 0;
  }

  v60.receiver = v3;
  v60.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v60, sel_initWithReuseIdentifier_, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21DC0AA00;
  *(v23 + 32) = v18;
  *(v23 + 40) = v19;
  v24 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_21D0D8CF0(0, &qword_280D176A0);
  v25 = v22;
  v26 = v18;
  v55 = v19;
  v27 = v25;
  v28 = sub_21DBFA5DC();

  v29 = [v24 initWithArrangedSubviews_];

  [v29 setAxis_];
  v30 = v29;
  [v30 setPreservesSuperviewLayoutMargins_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [v27 contentView];
  [v31 addSubview_];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21DC0AA10;
  v33 = [v27 contentView];
  v34 = [v33 leadingAnchor];

  v35 = [v30 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v32 + 32) = v36;
  v37 = [v27 contentView];
  v38 = [v37 trailingAnchor];

  v39 = [v30 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v32 + 40) = v40;
  v41 = [v27 contentView];
  v42 = [v41 topAnchor];

  v43 = [v30 topAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v32 + 48) = v44;
  v45 = [v27 contentView];

  v46 = [v45 bottomAnchor];
  v47 = [v30 bottomAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  *(v32 + 56) = v48;
  v49 = objc_opt_self();
  sub_21D0D8CF0(0, &qword_280D177D0);
  v50 = sub_21DBFA5DC();

  [v49 activateConstraints_];

  v51 = *(v58 + 8);
  v52 = v59;
  v51(v57, v59);
  v51(v56, v52);
  return v27;
}

uint64_t getEnumTagSinglePayload for TTRSnapshotApplicationOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRSnapshotApplicationOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_21D1B33AC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_21D1B33D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a1;
  v29 = a2;
  v4 = sub_21DBF648C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v8);
  v42 = &v27 - v10;
  v11 = *(v2 + 32);
  v30 = *(v11 + 16);
  if (v30)
  {
    v12 = 0;
    v31 = v11 + 32;
    v37 = v5 + 88;
    v38 = v5 + 16;
    v40 = *MEMORY[0x277D45028];
    v35 = (v5 + 96);
    v36 = (v5 + 8);
    v32 = *MEMORY[0x277D45020];
    v33 = v2;
    v28 = v11;
    while (v12 < *(v11 + 16))
    {
      v41 = *(*(v31 + 48 * v12 + 40) + 16);
      if (v41)
      {
        v13 = 0;
        v34 = v12;
        while (1)
        {
          v14 = *(v2 + 32);
          if (v12 >= *(v14 + 16))
          {
            break;
          }

          v15 = *(v14 + 48 * v12 + 72);
          if (v13 >= *(v15 + 16))
          {
            goto LABEL_18;
          }

          v3 = *(v2 + 40);
          v16 = *(v5 + 16);
          v17 = v42;
          v16(v42, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4, v9);
          (v16)(v7, v17, v4);
          v18 = (*(v5 + 88))(v7, v4);
          v19 = v18;
          if (v18 != v40 && v18 != v32)
          {
            goto LABEL_20;
          }

          v20 = *v36;
          sub_21DBF8E0C();
          v21 = v3;
          v20(v42, v4);
          (*v35)(v7, v4);
          v3 = *v7;

          v22 = [v3 objectID];
          sub_21D0D8CF0(0, &qword_280D17680);
          v23 = sub_21DBFB63C();

          if (v23)
          {
            v24 = v19 != v40;
            goto LABEL_16;
          }

          ++v13;

          v2 = v33;
          v12 = v34;
          if (v41 == v13)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

LABEL_3:
      ++v12;
      v11 = v28;
      if (v12 == v30)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    v26 = v3;
    sub_21DBF8E0C();
    sub_21DBFC63C();
    __break(1u);
  }

  else
  {
LABEL_15:
    v3 = 0;
    v24 = -1;
LABEL_16:
    v25 = v29;
    *v29 = v3;
    *(v25 + 8) = v24;
  }
}

uint64_t sub_21D1B3724()
{
  if (!*(v0 + 72))
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_11;
  }

  if (*(v0 + 72) == 1)
  {
    return 0;
  }

  if (*(v0 + 64))
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_11;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_11:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D1B3940()
{
  if (*(v0 + 72) < 2u)
  {
    return 0;
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  if (!v2)
  {
    if (v4 != 255)
    {
      sub_21D1B1ED4(v3, v4);
      v10 = v3;
      if (v4)
      {
        v11 = [v10 name];
        v12 = sub_21DBFA16C();
        v14 = v13;

        v9 = _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO013createInSmartE12Instructions05smartE4NameS2S_tFZ_0(v12, v14);
      }

      else
      {
        v19 = [v10 displayName];
        v20 = sub_21DBFA16C();
        v22 = v21;

        v9 = _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO08createInE12Instructions8listNameS2S_tFZ_0(v20, v22);
      }

      goto LABEL_15;
    }

    return 0;
  }

  if (v2 != 1)
  {
    if (v4 != 255 && (v4 & 1) == 0)
    {
      sub_21D1B1ED4(v3, v4);
      v15 = [v3 displayName];
      v16 = sub_21DBFA16C();
      v18 = v17;

      v9 = _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO07excludeE12Instructions8listNameS2S_tFZ_0(v16, v18);
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 == 255 || (v4 & 1) != 0)
  {
    return 0;
  }

  sub_21D1B1ED4(v3, v4);
  v5 = [v3 displayName];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO07includeE12Instructions8listNameS2S_tFZ_0(v6, v8);
LABEL_15:
  v23 = v9;

  sub_21D157864(v3, v4);
  sub_21D157864(v3, v4);
  return v23;
}

uint64_t sub_21D1B3AFC()
{
  if (*(v0 + 72) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    v2 = *(v0 + 48);
    v3 = qword_280D1BAA8;
    v4 = v2;
    if (v1)
    {
      if (v3 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (v3 == -1)
    {
LABEL_11:
      v6 = sub_21DBF516C();
      sub_21D157864(v2, v1);
      return v6;
    }

    swift_once();
    goto LABEL_11;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

void sub_21D1B3D38(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v2 + 48);
  *(v2 + 48) = *a1;
  v7 = *(v2 + 56);
  *(v2 + 56) = v5;
  v8 = v4;
  sub_21D157864(v6, v7);
  if (!*(v2 + 72) || *(v2 + 72) != 1)
  {
    swift_beginAccess();
    v9 = *(v2 + 80);
    if (v9)
    {
      v10 = v4;
      v11 = v5;

      v9(a2, &v10);
      sub_21D0D0E88(v9);
    }
  }
}

void sub_21D1B3DF4(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (v2 == 255)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong dismissViewControllerAnimated:1 completion:0];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v4 = *(v1 + 48);
    swift_beginAccess();
    v5 = *(v1 + 80);
    if (v5)
    {
      v7 = v4;
      v8 = v2 & 1;
      sub_21D1B1ED4(v4, v2);
      sub_21D0D0E78(v5);
      v5(a1, &v7);
      sub_21D0D0E88(v5);
      sub_21D157864(v4, v2);
    }
  }
}

id sub_21D1B3EFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountID];
  *a2 = result;
  return result;
}

uint64_t sub_21D1B3F40()
{
  sub_21D157444(v0 + 16);
  v1 = *(v0 + 40);

  sub_21D157864(*(v0 + 48), *(v0 + 56));
  sub_21D1B2AAC(*(v0 + 64), *(v0 + 72));
  sub_21D0D0E88(*(v0 + 80));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);
  v2 = OBJC_IVAR____TtC15RemindersUICore31TTRIReminderListPickerPresenter_mode;
  v3 = sub_21DBF647C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t sub_21D1B3FF4()
{
  sub_21D1B3F40();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderListPickerPresenter()
{
  result = qword_27CE58FE8;
  if (!qword_27CE58FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D1B40A0()
{
  result = sub_21DBF647C();
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

uint64_t sub_21D1B4170()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t sub_21D1B41C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return sub_21D0D0E88(v5);
}

id sub_21D1B4264(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 8))
  {
    v2 = *a1;
    v3 = *a1;
    return v2;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D0D0F1C(&qword_27CE589E8, &qword_27CE5DF80);
  sub_21D183A0C();
  sub_21DBFA49C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58FF8);
  sub_21D0D0F1C(&qword_27CE59000, &qword_27CE58FF8);
  sub_21DBFAC6C();

  return v5;
}

uint64_t sub_21D1B43F4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F120);
  v1 = __swift_project_value_buffer(v0, qword_280D0F120);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRLocationChangeMonitor.lastResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_lastResult;
  swift_beginAccess();
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_21D1B6F48(v4, v5);
}

void *TTRLocationChangeMonitor.currentLocation.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_lastResult;
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (v2 == 255 || (v2 & 1) != 0)
  {
    return 0;
  }

  v4 = *v1;
  sub_21D1B6F60(v4, 0);
  return v4;
}

char *TTRLocationChangeMonitor.init(changeRadius:)(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_lastResult];
  *v4 = 0;
  v4[8] = -1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_timerInterval] = 0x403E000000000000;
  v1[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_hasStarted] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state] = 2;
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationChangePassthroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59038);
  swift_allocObject();
  *&v1[v5] = sub_21DBF907C();
  v6 = OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_authorizationTracker;
  type metadata accessor for TTRLocationAuthorizationTracker();
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59048);
  swift_allocObject();
  *(v7 + 16) = sub_21DBF7D2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59050);
  swift_allocObject();
  *(v7 + 24) = sub_21DBF907C();
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_timer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_changeRadius] = a1;
  v8 = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationManager] = v8;
  [v8 setDesiredAccuracy_];
  v12 = *&v1[v5];
  sub_21D1B6F7C();
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationChange] = sub_21DBF920C();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [*&v9[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationManager] setDelegate_];
  return v9;
}

id TTRLocationChangeMonitor.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_timer;
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_timer];
  if (v3)
  {
    [v3 invalidate];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  [*&v0[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationManager] stopUpdatingLocation];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

Swift::Void __swiftcall TTRLocationChangeMonitor.startIfPossible()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_hasStarted;
  if ((v0[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_hasStarted] & 1) == 0)
  {
    if (qword_280D17EA8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F120);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Starting location monitor", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    v1[v5] = 1;
    v10 = sub_21DBFA89C();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_21DBFA84C();
    v11 = v1;
    v12 = sub_21DBFA83C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    sub_21D1B5178(0, 0, v4, &unk_21DC0AC28, v13);
  }
}

uint64_t sub_21D1B4B20()
{
  v0[2] = sub_21DBFA84C();
  v0[3] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21D1B4BCC;

  return sub_21D1B4D08();
}

uint64_t sub_21D1B4BCC()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D1B7E08, v1, v0);
}

uint64_t sub_21D1B4D08()
{
  v1[2] = v0;
  v1[3] = sub_21DBFA84C();
  v1[4] = sub_21DBFA83C();

  return MEMORY[0x2822009F8](sub_21D1B4D84, 0, 0);
}

uint64_t sub_21D1B4D84()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationManager);
  v0[5] = v1;
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_21D1B4E7C;

  return sub_21D3A5554(sub_21D1B7D8C, v2, 3.0);
}

uint64_t sub_21D1B4E7C(int a1)
{
  *(*v1 + 64) = a1;

  v3 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D1B4FE4, v3, v2);
}

void sub_21D1B4FE4()
{
  v11 = v0;
  v1 = *(v0 + 64);
  if ((v1 - 1) < 2)
  {

    v9 = 0;
    v10 = 1;
    sub_21D1B6114(&v9);
    goto LABEL_7;
  }

  if ((v1 - 3) < 2)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 16);

    *(v3 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state) = 1;
    [v2 requestLocation];
LABEL_7:
    v6 = *(v0 + 8);

    v6();
    return;
  }

  if (!v1)
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 16);

    *(v5 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state) = 0;
    [v4 requestWhenInUseAuthorization];
    goto LABEL_7;
  }

  if (qword_280D17EA8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F120);
  v8 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v8);

  sub_21DAEAB00("unknown authorization status", 28, 2);
}

uint64_t sub_21D1B5178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21D1B777C(a3, v25 - v10);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21D0EC98C(v11);
  }

  else
  {
    sub_21DBFA88C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DBFA7CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DBFA1EC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21D0EC98C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21D0EC98C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21D1B5438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21D1B777C(a3, v25 - v10);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21D0EC98C(v11);
  }

  else
  {
    sub_21DBFA88C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DBFA7CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DBFA1EC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21D0EC98C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21D0EC98C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21D1B56F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21D1B777C(a3, v25 - v10);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21D0EC98C(v11);
  }

  else
  {
    sub_21DBFA88C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DBFA7CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DBFA1EC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_21D0EC98C(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21D0EC98C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21D1B59C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21D1B777C(a3, v25 - v10);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21D0EC98C(v11);
  }

  else
  {
    sub_21DBFA88C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DBFA7CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DBFA1EC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21D0EC98C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21D0EC98C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

BOOL sub_21D1B5C7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t sub_21D1B5CD4()
{
  v1 = *v0;
  v2 = 0x68635372656D6974;
  v3 = 0xD00000000000001BLL;
  if ((v1 & 1) == 0)
  {
    v3 = 0xD000000000000021;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0x646573756170;
  }

  else
  {
    return v2;
  }
}

void sub_21D1B5D5C()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state) == 2)
  {
    *(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state) = 3;
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_21D1B7CD0;
    v6[5] = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_21D1B6000;
    v6[3] = &block_descriptor_2;
    v3 = _Block_copy(v6);

    v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:30.0];
    _Block_release(v3);
    v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_timer);
    *(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_timer) = v4;
  }
}

void sub_21D1B5E88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state) == 3)
    {
      v5 = *(Strong + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_timer);
      *(Strong + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_timer) = 0;

      v6 = sub_21DBFA89C();
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      sub_21DBFA84C();
      v7 = v4;
      v8 = sub_21DBFA83C();
      v9 = swift_allocObject();
      v10 = MEMORY[0x277D85700];
      v9[2] = v8;
      v9[3] = v10;
      v9[4] = v7;
      sub_21D1B5178(0, 0, v2, &unk_21DC0ADB8, v9);
    }
  }
}

void sub_21D1B6000(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21D1B6068()
{
  v0[2] = sub_21DBFA84C();
  v0[3] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21D0EF998;

  return sub_21D1B4D08();
}

void sub_21D1B6114(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state;
  if (v1[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state] != 2)
  {
    if (qword_280D17EA8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F120);
    v7 = v1;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAE9C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v46[0] = v11;
      *v10 = 136315394;
      v12 = v2[v5];
      if (v12 == 2)
      {
        v13 = 0xE600000000000000;
        v14 = 0x646573756170;
      }

      else if (v12 == 3)
      {
        v13 = 0xEE0064656C756465;
        v14 = 0x68635372656D6974;
      }

      else
      {
        v14 = 0xD00000000000001BLL;
        if (v12)
        {
          v13 = 0x800000021DC45860;
        }

        else
        {
          v13 = 0x800000021DC45880;
          v14 = 0xD000000000000021;
        }
      }

      v15 = sub_21D0CDFB4(v14, v13, v46);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_21D0CDFB4(0x646573756170, 0xE600000000000000, v46);
      _os_log_impl(&dword_21D0C9000, v8, v9, "TTRLocationChangeMonitor updating state { from: %s, to: %s }", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    else
    {
    }

    v2[v5] = 2;
  }

  v16 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_lastResult];
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[8];
  if (v4 & 1) != 0 || v18 == 255 || (v18)
  {
    sub_21D1B6F48(*v16, v16[8]);
    sub_21D1B6F60(v3, v4);
    sub_21D1B70AC(v3, v4);
    sub_21D1B7094(v17, v18);
    v19 = *v16;
    v20 = v16[8];
    v44 = v3;
    v45 = v4;
    if (v20 == 255)
    {
      sub_21D1B6F60(v3, v4);
      sub_21D1B6F48(v19, 255);
      sub_21D1B6F48(v3, v4);
      sub_21D1B70AC(v3, v4);
      sub_21D1B7094(v3, v4);
      sub_21D1B7094(v19, 255);
    }

    else
    {
      v42 = v19;
      v43 = v20 & 1;
      sub_21D1B6F60(v3, v4);
      sub_21D1B6F48(v19, v20);
      sub_21D1B6F48(v3, v4);
      sub_21D0D8CF0(0, &qword_280D17760);
      sub_21D1B7BC0();
      sub_21D1B7C28();
      sub_21D1B7C7C();
      v21 = sub_21DBFC85C();
      sub_21D1B70AC(v42, v20 & 1);
      sub_21D1B70AC(v44, v45);
      sub_21D1B7094(v3, v4);
      if (v21)
      {
LABEL_20:
        if (qword_280D17EA8 != -1)
        {
          swift_once();
        }

        v22 = sub_21DBF84BC();
        __swift_project_value_buffer(v22, qword_280D0F120);
        v23 = sub_21DBF84AC();
        v24 = sub_21DBFAE9C();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_21D0C9000, v23, v24, "TTRLocationChangeMonitor no change in result", v25, 2u);
          MEMORY[0x223D46520](v25, -1, -1);
        }

        goto LABEL_31;
      }
    }
  }

  else
  {
    v36 = *&v2[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_changeRadius];
    sub_21D1B6F48(*v16, v16[8]);
    sub_21D1B6F60(v3, 0);
    if (v36 <= 0.0)
    {
      v41 = [v3 isContentEqual_];
      sub_21D1B70AC(v3, 0);
      sub_21D1B7094(v17, v18);
      if (v41)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v37 = sub_21DBFB3AC();
      v38 = sub_21DBFB3AC();
      [v37 distanceFromLocation_];
      v40 = v39;
      sub_21D1B70AC(v3, 0);
      sub_21D1B7094(v17, v18);

      if (v36 > v40)
      {
        goto LABEL_20;
      }
    }
  }

  if (qword_280D17EA8 != -1)
  {
    swift_once();
  }

  v26 = sub_21DBF84BC();
  __swift_project_value_buffer(v26, qword_280D0F120);
  sub_21D1B6F60(v3, v4);
  v27 = sub_21DBF84AC();
  v28 = sub_21DBFAE9C();
  sub_21D1B70AC(v3, v4);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 136315138;
    v44 = v3;
    v45 = v4;
    sub_21D1B6F60(v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE590E0);
    v31 = sub_21DBFA1AC();
    v33 = sub_21D0CDFB4(v31, v32, &v42);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_21D0C9000, v27, v28, "TTRLocationChangeMonitor reporting change { result = %s }", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x223D46520](v30, -1, -1);
    MEMORY[0x223D46520](v29, -1, -1);
  }

  v34 = *v16;
  *v16 = v3;
  v35 = v16[8];
  v16[8] = v4;
  sub_21D1B6F60(v3, v4);
  sub_21D1B7094(v34, v35);
  v44 = v3;
  v45 = v4;
  sub_21DBF906C();
LABEL_31:
  sub_21D1B5D5C();
}

id TTRLocationChangeMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall TTRLocationChangeMonitor.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  v2 = v1;
  isa = a1.super.isa;
  sub_21D3A61B0([(objc_class *)a1.super.isa authorizationStatus]);
  v4 = v1 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_lastResult;
  swift_beginAccess();
  if (*(v4 + 8) == 255)
  {
    sub_21D0D8CF0(0, &qword_280D17760);
    v7 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationManager) location];
    v8 = sub_21DBFB3DC();

    if (v8)
    {
      v9 = *v4;
      *v4 = v8;
      v10 = *(v4 + 8);
      *(v4 + 8) = 0;
      v11 = v8;
      sub_21D1B7094(v9, v10);
      v12 = *(v4 + 8);
      if (v12 == 255)
      {
      }

      else
      {
        v15 = *v4;
        v16 = v12 & 1;
        sub_21D1B6F60(v15, v12 & 1);
        sub_21DBF906C();

        sub_21D1B7094(v15, v12);
      }
    }
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state;
  if ((*(v2 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state) & 0xFE) != 2 && (*(v2 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state) & 1) == 0)
  {
    v6 = [(objc_class *)isa authorizationStatus];
    if (v6 >= 3)
    {
      if (v6 - 3 >= 2)
      {
        if (qword_280D17EA8 != -1)
        {
          swift_once();
        }

        v13 = sub_21DBF84BC();
        __swift_project_value_buffer(v13, qword_280D0F120);
        v14 = MEMORY[0x277D84F90];
        sub_21D17716C(MEMORY[0x277D84F90]);
        sub_21D17716C(v14);
        sub_21DAEAB00("unknown authorization status", 28, 2);
        __break(1u);
      }

      else
      {
        *(v2 + v5) = 1;
        [*(v2 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationManager) requestLocation];
      }
    }

    else
    {
      v15 = 0;
      v16 = 1;
      sub_21D1B6114(&v15);
    }
  }
}

uint64_t sub_21D1B6C3C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21D1B6D30;

  return v5(v2 + 32);
}

uint64_t sub_21D1B6D30()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

BOOL _s15RemindersUICore24TTRLocationChangeMonitorC13FailureReasonO2eeoiySbAE_AEtFZ_0(void **a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    sub_21D1B6F6C(*a2);
    sub_21D1B70B8(v2);
    sub_21D1B70B8(v3);
    return 1;
  }

  if (v3 < 2)
  {
LABEL_8:
    sub_21D1B6F6C(*a2);
    sub_21D1B6F6C(v2);
    sub_21D1B70B8(v2);
    sub_21D1B70B8(v3);
    return 0;
  }

  sub_21D1B6F6C(*a2);
  sub_21D1B6F6C(v2);
  v5 = sub_21DBF52CC();
  v6 = [v5 code];

  v7 = sub_21DBF52CC();
  v8 = [v7 code];
  sub_21D1B70B8(v2);
  sub_21D1B70B8(v3);

  return v6 == v8;
}

id sub_21D1B6F48(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_21D1B6F60(result, a2 & 1);
  }

  return result;
}

id sub_21D1B6F60(id result, char a2)
{
  if (a2)
  {
    return sub_21D1B6F6C(result);
  }

  else
  {
    return result;
  }
}

id sub_21D1B6F6C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

unint64_t sub_21D1B6F7C()
{
  result = qword_280D17960;
  if (!qword_280D17960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE59038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17960);
  }

  return result;
}

uint64_t sub_21D1B6FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D0F00D0;

  return sub_21D1B4B20();
}

void sub_21D1B7094(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_21D1B70AC(a1, a2 & 1);
  }
}

void sub_21D1B70AC(id a1, char a2)
{
  if (a2)
  {
    sub_21D1B70B8(a1);
  }

  else
  {
  }
}

void sub_21D1B70B8(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_21D1B70C8(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state) & 0xFE) != 2 && (*(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state))
  {
    if (a1 >> 62)
    {
      v16 = a1;
      v2 = sub_21DBFBD7C();
      a1 = v16;
      if (!v2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        goto LABEL_13;
      }
    }

    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else if ((a1 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = v1;
        v6 = *(a1 + 8 * v4 + 32);
LABEL_10:
        v7 = v6;
        sub_21D0D8CF0(0, &qword_280D17760);
        v8 = sub_21DBFB3DC();
        if (v8)
        {
          v19 = v8;
          v20 = 0;
          v9 = v8;
          sub_21D1B6114(&v19);

          v10 = v19;
          v11 = v20;
LABEL_18:
          sub_21D1B70AC(v10, v11);
          return;
        }

        v1 = v5;
LABEL_13:
        v12 = v1 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_lastResult;
        swift_beginAccess();
        v13 = *(v12 + 8);
        if (v13 == 255 || (v13 & 1) != 0)
        {
          v14 = 1;
          v15 = 1;
        }

        else
        {
          v14 = *v12;
          sub_21D1B6F60(v14, 0);
          v15 = 0;
        }

        v17 = v14;
        v18 = v15;
        sub_21D1B6F60(v14, v15);
        sub_21D1B6114(&v17);
        sub_21D1B70AC(v14, v15);
        v10 = v17;
        v11 = v18;
        goto LABEL_18;
      }

      __break(1u);
      return;
    }

    v5 = v1;
    v6 = MEMORY[0x223D44740](v4, a1);
    goto LABEL_10;
  }
}

void sub_21D1B7290(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state) & 0xFE) != 2 && (*(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_state))
  {
    v3 = sub_21DBF52CC();
    v4 = [v3 code];

    if (v4)
    {
      if (v4 == 1)
      {
        v14 = 0;
        v15 = 1;
        sub_21D1B6114(&v14);
        return;
      }

      v14 = a1;
      v15 = 1;
      v9 = a1;
      sub_21D1B6114(&v14);
      v10 = v14;
      v11 = v15;
    }

    else
    {
      v5 = v1 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_lastResult;
      swift_beginAccess();
      v6 = *(v5 + 8);
      if (v6 == 255 || (v6 & 1) != 0)
      {
        v7 = 1;
        v8 = 1;
      }

      else
      {
        v7 = *v5;
        sub_21D1B6F60(v7, 0);
        v8 = 0;
      }

      v12 = v7;
      v13 = v8;
      sub_21D1B6F60(v7, v8);
      sub_21D1B6114(&v12);
      sub_21D1B70AC(v7, v8);
      v10 = v12;
      v11 = v13;
    }

    sub_21D1B70AC(v10, v11);
  }
}

void destroy for TTRLocationChangeMonitor.FailureReason(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **assignWithCopy for TTRLocationChangeMonitor.FailureReason(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v7 = v4;
    }

    *a1 = v4;
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    v5 = v4;
    v6 = *a1;
    *a1 = v4;
  }

  return a1;
}

void **assignWithTake for TTRLocationChangeMonitor.FailureReason(void **result, unint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v3;
  }

  else if (v3 < 0xFFFFFFFF)
  {
    v5 = result;

    result = v5;
    *v5 = v3;
  }

  else
  {
    *result = v3;
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRLocationChangeMonitor.FailureReason(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRLocationChangeMonitor.FailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRLocationChangeMonitor.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle.Separator(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21D1B7748(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21D1B775C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_21D1B777C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1B77EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D1B6C3C(a1, v4);
}

uint64_t sub_21D1B78A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return sub_21D1B6C3C(a1, v4);
}

uint64_t sub_21D1B795C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21D1B7A50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D1B6C3C(a1, v4);
}

uint64_t sub_21D1B7B08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D1B6C3C(a1, v4);
}

unint64_t sub_21D1B7BC0()
{
  result = qword_27CE590E8;
  if (!qword_27CE590E8)
  {
    sub_21D0D8CF0(255, &qword_280D17760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE590E8);
  }

  return result;
}

unint64_t sub_21D1B7C28()
{
  result = qword_27CE590F0;
  if (!qword_27CE590F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE590F0);
  }

  return result;
}

unint64_t sub_21D1B7C7C()
{
  result = qword_27CE590F8;
  if (!qword_27CE590F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE590F8);
  }

  return result;
}

uint64_t sub_21D1B7CD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B795C;

  return sub_21D1B6068();
}

unint64_t sub_21D1B7DB0()
{
  result = qword_27CE59100[0];
  if (!qword_27CE59100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE59100);
  }

  return result;
}

void TTRUserDefaultsBacked.init(_:userDefaults:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = type metadata accessor for TTRUserDefaultsBacked();
  *(a3 + *(v6 + 28)) = a1;
  *(a3 + *(v6 + 32)) = a2;

  v7 = a2;
  swift_getAtKeyPath();
  sub_21DBF9B4C();
}

uint64_t TTRUserDefaultsBacked.wrappedValue.getter()
{
  sub_21DBF9B7C();

  return sub_21DBF9B5C();
}

uint64_t TTRUserDefaultsBacked.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_21D1B84F0(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*TTRUserDefaultsBacked.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  sub_21DBF9B7C();
  sub_21DBF9B5C();
  return sub_21D1B80F8;
}

void sub_21D1B80F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_21D1B84F0(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_21D1B84F0((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t TTRUserDefaultsBacked.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v16[0] = *(v3 + 16);
  (v16[0])(v16 - v7, v6);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v11 = *(a1 + 16);
  *(v10 + 4) = v11;
  v12 = *(v3 + 32);
  v12(&v10[v9], v8, a1);
  v13 = v17;
  (v16[0])(v17, v16[1], a1);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v11;
  v12(&v14[v9], v13, a1);
  return sub_21DBF9BDC();
}

uint64_t sub_21D1B83C4()
{
  type metadata accessor for TTRUserDefaultsBacked();
  sub_21DBF9B7C();
  return sub_21DBF9B5C();
}

uint64_t sub_21D1B8420(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_21DBF9B7C();
  return sub_21DBF9B6C();
}

uint64_t sub_21D1B84F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + *(a2 + 32));
  v10 = *(v5 + 16);
  v10(v8, v6);
  v15[0] = v9;
  v11 = v9;
  swift_setAtReferenceWritableKeyPath();
  v15[4] = v11;
  v12 = swift_readAtKeyPath();
  (v10)(v8);
  v12(v15, 0);

  sub_21D1B8420(v8, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21D1B865C()
{
  type metadata accessor for TTRUserDefaultsBacked();

  return sub_21D1B83C4();
}

uint64_t sub_21D1B8750()
{
  result = sub_21DBF9B7C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D1B87FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v4 + 80);
  if ((v7 & 0x1000F8) != 0 || ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    v10 = v6 + 8;
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = *v14;
    *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *v14;

    v16 = v15;
  }

  return v3;
}

void sub_21D1B893C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + 7;

  v5 = *((((a1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t sub_21D1B89D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  *((v8 + 15) & 0xFFFFFFFFFFFFFFF8) = *v10;

  v12 = v11;
  return a1;
}

uint64_t sub_21D1B8A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a1 + v7 + 7;
  v9 = a2 + v7 + 7;
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v8 & 0xFFFFFFFFFFFFFFF8) = *(v9 & 0xFFFFFFFFFFFFFFF8);
  v11 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;

  v12 = *(v10 & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  *(v11 & 0xFFFFFFFFFFFFFFF8) = v12;
  v14 = v12;

  return a1;
}

uint64_t sub_21D1B8B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  *((v8 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_21D1B8C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a1 + v7 + 7;
  v9 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v8 & 0xFFFFFFFFFFFFFFF8) = *v9;
  v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;

  v11 = *(v10 & 0xFFFFFFFFFFFFFFF8);
  *(v10 & 0xFFFFFFFFFFFFFFF8) = *((v9 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_21D1B8CF4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v16) + 1;
}

void sub_21D1B8E40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
    v15 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v19 = v9 + 8;
      if (v6 < 0x7FFFFFFF)
      {
        v22 = (&a1[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = a2 - 1;
        }

        *v22 = v23;
      }

      else if (v7 >= a2)
      {
        v24 = *(v5 + 56);

        v24();
      }

      else if (v9 != -8)
      {
        v20 = ~v7 + a2;
        v21 = a1;
        bzero(a1, v19);
        *v21 = v20;
      }

      return;
    }
  }

  if (((((v9 + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v8 + a2;
    v18 = a1;
    bzero(a1, ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }
}

id TTRIMenuButtonAttachment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static TTRIMenuButtonAttachment.buttonAttachmentUTI.getter()
{
  swift_beginAccess();
  v0 = qword_27CE59190;
  sub_21DBF8E0C();
  return v0;
}

uint64_t static TTRIMenuButtonAttachment.buttonAttachmentUTI.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27CE59190 = a1;
  off_27CE59198 = a2;
}

uint64_t sub_21D1B9184(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27CE59190 = v2;
  off_27CE59198 = v1;
  sub_21DBF8E0C();
}

void *TTRIMenuButtonAttachment.menu.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_menu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIMenuButtonAttachment.menu.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_menu;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TTRIMenuButtonAttachment.traitCollection.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_traitCollection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIMenuButtonAttachment.traitCollection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_traitCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id TTRIMenuButtonAttachment.font.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void TTRIMenuButtonAttachment.font.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id TTRIMenuButtonAttachment.textColor.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_textColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void TTRIMenuButtonAttachment.textColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_textColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TTRIMenuButtonAttachment.attributedTitle.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_menu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = [v2 selectedElements];
  sub_21D0D8CF0(0, &qword_27CE5DE90);
  v4 = sub_21DBFA5EC();

  if (v4 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_4;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v4 & 0xC000000000000001) != 0)
    {
LABEL_15:
      v5 = MEMORY[0x223D44740](0, v4);
      goto LABEL_7;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v5 = *(v4 + 32);
LABEL_7:
      v6 = v5;

      v7 = [v6 title];

      sub_21DBFA16C();
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC08D00;
      v12 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v13 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
      swift_beginAccess();
      v14 = *(v0 + v13);
      *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0);
      *(inited + 40) = v14;
      v15 = v12;
      v16 = v14;
      sub_21D11274C(inited);
      swift_setDeallocating();
      sub_21D1BAED0(inited + 32);
      v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v18 = sub_21DBFA12C();

      type metadata accessor for Key(0);
      sub_21D112874();
      v19 = sub_21DBF9E5C();

      v20 = [v17 initWithString:v18 attributes:v19];

      return v20;
    }

    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v0 + v1);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = [v8 children];
  v4 = sub_21DBFA5EC();

  if (v4 >> 62)
  {
LABEL_17:
    result = sub_21DBFBD7C();
    if (!result)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_12:
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

double TTRIMenuButtonAttachment.baselineOffset.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
  swift_beginAccess();
  [*(v0 + v1) descender];
  return 4.0 - v2;
}

id TTRIMenuButtonAttachment.init()()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  v1 = sub_21DBFA12C();

  v2 = [v0 initWithData:0 ofType:v1];

  return v2;
}

id TTRIMenuButtonAttachment.__allocating_init(data:ofType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v6 = sub_21DBF54FC();
    sub_21D1BAF38(a1, a2);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_21DBFA12C();

LABEL_6:
  v10 = [objc_allocWithZone(v4) initWithData:v6 ofType:v7];

  return v10;
}

id TTRIMenuButtonAttachment.init(data:ofType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_menu] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_traitCollection] = 0;
  v10 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
  *&v5[v10] = [objc_opt_self() preferredFontForTextStyle_];
  v11 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_textColor;
  v12 = 0;
  *&v5[v11] = [objc_opt_self() labelColor];
  *&v5[OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_verticalPadding] = 0x4010000000000000;
  *&v5[OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_horizontalPadding] = 0x4020000000000000;
  if (a2 >> 60 != 15)
  {
    sub_21D1BAF70(a1, a2);
    v12 = sub_21DBF54FC();
    sub_21D1BAF38(a1, a2);
  }

  if (a4)
  {
    v13 = sub_21DBFA12C();
  }

  else
  {
    v13 = 0;
  }

  v22.receiver = v5;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, sel_initWithData_ofType_, v12, v13);

  v15 = objc_opt_self();
  swift_beginAccess();
  v16 = v14;
  sub_21DBF8E0C();
  v17 = sub_21DBFA12C();

  v18 = [v15 textAttachmentViewProviderClassForFileType_];

  if (v18)
  {

    sub_21D1BAF38(a1, a2);
  }

  else
  {
    type metadata accessor for TTRIMenuButtonAttachmentProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_21DBF8E0C();
    v20 = sub_21DBFA12C();

    [v15 registerTextAttachmentViewProviderClass:ObjCClassFromMetadata forFileType:v20];

    sub_21D1BAF38(a1, a2);
  }

  return v16;
}

id TTRIMenuButtonAttachment.lineLayoutPadding.getter()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultMetrics];
  v3 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_traitCollection;
  swift_beginAccess();
  [v2 scaledValueForValue:*&v0[v3] compatibleWithTraitCollection:2.0];

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_lineLayoutPadding);
}

id TTRIMenuButtonAttachment.lineLayoutPadding.setter(double a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_setLineLayoutPadding_, a1);
}

void (*TTRIMenuButtonAttachment.lineLayoutPadding.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 88) = ObjectType;
  v6 = [objc_opt_self() defaultMetrics];
  v7 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_traitCollection;
  swift_beginAccess();
  [v6 scaledValueForValue:*(v1 + v7) compatibleWithTraitCollection:2.0];
  v9 = v8;

  *(v4 + 24) = v1;
  *(v4 + 32) = ObjectType;
  objc_msgSendSuper2((v4 + 24), sel_lineLayoutPadding);
  if (v9 > v10)
  {
    v10 = v9;
  }

  *(v4 + 72) = v10;
  return sub_21D1BA1D8;
}

void sub_21D1BA1D8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 9);
  v4 = *(*a1 + 11);
  v5 = 56;
  if (a2)
  {
    v5 = 40;
  }

  v6 = 64;
  if (a2)
  {
    v6 = 48;
  }

  *&v2[v5] = *(*a1 + 10);
  *&v2[v6] = v4;
  objc_msgSendSuper2(&v2[v5], sel_setLineLayoutPadding_, v3);

  free(v2);
}

id TTRIMenuButtonAttachmentProvider.__allocating_init(textAttachment:parentView:textLayoutManager:location:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(v4) initWithTextAttachment:a1 parentView:a2 textLayoutManager:a3 location:a4];

  swift_unknownObjectRelease();
  return v8;
}

id TTRIMenuButtonAttachmentProvider.init(textAttachment:parentView:textLayoutManager:location:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider_lightBackgroundAlpha] = 0x3FB999999999999ALL;
  *&v5[OBJC_IVAR____TtC15RemindersUICore32TTRIMenuButtonAttachmentProvider_darkBackgroundAlpha] = 0x3FB999999999999ALL;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithTextAttachment_parentView_textLayoutManager_location_, a1, a2, a3, a4);
  [v11 setTracksTextAttachmentViewBounds_];

  swift_unknownObjectRelease();
  return v11;
}

double TTRIMenuButtonAttachmentProvider.attachmentBounds(for:location:textContainer:proposedLineFragment:position:)(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for Key(0);
  sub_21D112874();
  v19 = sub_21DBF9E5C();
  v29.receiver = v9;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_attachmentBoundsForAttributes_location_textContainer_proposedLineFragment_position_, v19, a8, a9, a1, a2, a3, a4, a5, a6);
  v21 = v20;

  v22 = [v9 textAttachment];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for TTRIMenuButtonAttachment();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
      v26 = v24;
      swift_beginAccess();
      v27 = *(v26 + v25);
      [v27 descender];
    }
  }

  return v21;
}

Swift::Void __swiftcall TTRIMenuButtonAttachmentProvider.loadView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_21DBFB95C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v30 - v11;
  v13 = [v1 textAttachment];
  if (v13)
  {
    v30 = v13;
    type metadata accessor for TTRIMenuButtonAttachment();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v16 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_menu;
      swift_beginAccess();
      v17 = *(v15 + v16);
      if (v17)
      {
        v18 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
        swift_beginAccess();
        v19 = *(v15 + v18);
        v20 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_textColor;
        swift_beginAccess();
        v21 = *(v15 + v20);
        v22 = v17;
        v23 = v19;
        v24 = v21;
        sub_21DBFB8EC();
        *(swift_allocObject() + 16) = v23;
        v25 = v23;
        sub_21DBF8D6C();
        v26 = sub_21DBF8D5C();
        (*(*(v26 - 8) + 56))(v4, 0, 1, v26);
        sub_21DBFB8CC();
        v27 = v24;
        sub_21DBFB89C();
        sub_21DBFB82C();
        type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
        (*(v6 + 16))(v8, v12, v5);
        v28 = sub_21DBFB96C();

        (*(v6 + 8))(v12, v5);
        [v28 setMenu_];
        [v28 setShowsMenuAsPrimaryAction_];
        [v28 setChangesSelectionAsPrimaryAction_];
        [v1 setView_];
      }

      else
      {
      }
    }

    else
    {
      v29 = v30;
    }
  }
}

uint64_t sub_21D1BAB78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF51AC();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_21D1BB110();
  v7 = a2;
  return sub_21DBF51CC();
}

id TTRIInlineButtonAttachmentTextViewButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIInlineButtonAttachmentTextViewButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id TTRIInlineButtonAttachmentTextViewButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIInlineButtonAttachmentTextViewButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TTRIInlineButtonAttachmentTextViewButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D1BAED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D1BAF38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21D17B8A8(a1, a2);
  }

  return a1;
}

uint64_t sub_21D1BAF70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_21D1BB014()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_menu) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_traitCollection) = 0;
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
  *(v0 + v1) = [objc_opt_self() preferredFontForTextStyle_];
  v2 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_textColor;
  *(v0 + v2) = [objc_opt_self() labelColor];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_verticalPadding) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_horizontalPadding) = 0x4020000000000000;
  sub_21DBFC31C();
  __break(1u);
}

unint64_t sub_21D1BB110()
{
  result = qword_27CE62940;
  if (!qword_27CE62940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62940);
  }

  return result;
}

uint64_t sub_21D1BB168()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE591E0);
  v1 = __swift_project_value_buffer(v0, qword_27CE591E0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRListEditor.unitTest_oneShotSyncSaveForUndo.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t TTRListEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:userDefaults:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_21D1CD868(a1, a2, a3, v14, v8, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v16;
}

uint64_t TTRListEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:userDefaults:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_21D1CD868(a1, a2, a3, v14, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v16;
}

unint64_t TTRListEditor.ReminderParentListMutationOperation.DisallowReason.debugDescription.getter()
{
  v1 = 0xD000000000000035;
  v2 = 0xD000000000000037;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000036;
  }

  if (*v0)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t TTRListEditor.ReminderParentListMutationOperation.DisallowReason.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D1BB634()
{
  v1 = 0xD000000000000035;
  v2 = 0xD000000000000037;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000036;
  }

  if (*v0)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL static TTRListEditor.ReminderParentListMutationOperation.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 5)
  {
    return v3 == 5;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_21D1BB6FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 4;
  v5 = v3 == 5;
  v7 = v2 == v3 && (v3 & 0xFE) != 4;
  if (v2 == 5)
  {
    v7 = v5;
  }

  if (v2 == 4)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t TTRListEditor.AssignmentCopying.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

Swift::Void __swiftcall TTRListEditor.edit(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = [v4 name];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = v6 == countAndFlagsBits && v8 == object;
  if (v9 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE591E0);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v4 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Updating list name {listID: %@}", v13, 0xCu);
      sub_21D0CF7E0(v14, &unk_27CE60070);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    v16 = sub_21DBFA12C();
    [v4 setName_];

    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = v8;
    sub_21D182B38(sub_21D1CD938, v17);
  }
}

void TTRListEditor.edit(color:)(void *a1)
{
  v3 = *v1;
  v4 = sub_21DBF619C();
  v53 = *(v4 - 8);
  v54 = v4;
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v1;
  v8 = v1[2];
  v9 = [v8 color];
  v10 = v9;
  if (a1)
  {
    if (v9)
    {
      sub_21D0D8CF0(0, &qword_27CE59200);
      v11 = a1;
      v49 = v10;
      v12 = sub_21DBFB63C();

      if (v12)
      {
        v13 = v49;

        return;
      }
    }
  }

  else if (!v9)
  {
    return;
  }

  if (qword_27CE56580 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_27CE591E0);
  v15 = a1;
  v16 = v10;
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAE9C();
  v19 = v15;

  v48 = v18;
  v20 = os_log_type_enabled(v17, v18);
  v50 = v3;
  v51 = v10;
  v49 = v16;
  if (v20)
  {
    v47 = v8;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v55 = v22;
    *v21 = 136315394;
    if (v10)
    {
      v23 = [v16 hexString];
      v24 = sub_21DBFA16C();
      v26 = v25;
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v27 = v19;
    v28 = sub_21D0CDFB4(v24, v26, &v55);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    if (a1)
    {
      v29 = [v19 hexString];
      v30 = sub_21DBFA16C();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = sub_21D0CDFB4(v30, v32, &v55);

    *(v21 + 14) = v33;
    _os_log_impl(&dword_21D0C9000, v17, v48, "Changing list color {from: %s, to: %s}", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v21, -1, -1);

    v8 = v47;
  }

  else
  {

    v27 = v15;
  }

  [v8 setColor_];
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  sub_21DBF62DC();
  sub_21DBF62CC();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
  v35 = &v7[v34[12]];
  v36 = v34[16];
  v37 = &v7[v34[20]];
  v38 = *MEMORY[0x277D44E38];
  v39 = sub_21DBF613C();
  (*(*(v39 - 8) + 104))(v7, v38, v39);
  *v35 = TTRUserDefaults.activitySessionId.getter();
  v35[1] = v40;
  TTRUserDefaults.activitySessionBeginTime.getter(&v7[v36]);
  *v37 = sub_21DBFC8EC();
  v37[1] = v41;
  v42 = v53;
  v43 = v54;
  (*(v53 + 104))(v7, *MEMORY[0x277D44E98], v54);
  sub_21DBF62BC();

  (*(v42 + 8))(v7, v43);
  v44 = swift_allocObject();
  *(v44 + 16) = v51;
  v45 = v49;
  sub_21D182B38(sub_21D1CD964, v44);
}

Swift::Void __swiftcall TTRListEditor.edit(isPinned:isUndo:)(Swift::Bool isPinned, Swift::Bool isUndo)
{
  v3 = v2;
  v6 = isPinned;
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = *(v3 + 16);
  v8 = [v7 isPinned];
  if (v8 != v6)
  {
    v9 = v8;
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE591E0);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v7 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Updating list isPinned {listID: %@}", v13, 0xCu);
      sub_21D0CF7E0(v14, &unk_27CE60070);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    [v7 setIsPinned_];
    if (!isUndo && !isPinned)
    {
      v16 = [v7 saveRequest];
      v17 = [v16 store];

      v18 = [v7 accountID];
      v37[0] = 0;
      v19 = [v17 fetchAccountWithObjectID:v18 error:v37];

      if (v19)
      {
        v20 = v37[0];
        v21 = [v7 saveRequest];
        v22 = [v21 updateAccount_];

        [v22 insertListChangeItem:v7 afterListChangeItem:0];
      }

      else
      {
        v23 = v37[0];
        v24 = sub_21DBF52DC();

        swift_willThrow();

        v25 = v24;
        v26 = sub_21DBF84AC();
        v27 = sub_21DBFAEBC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v37[0] = v36;
          *v28 = 138412802;
          v30 = [v7 objectID];
          *(v28 + 4) = v30;
          *v29 = v30;
          *(v28 + 12) = 2112;
          v31 = [v7 accountID];
          *(v28 + 14) = v31;
          v29[1] = v31;
          *(v28 + 22) = 2080;
          swift_getErrorValue();
          v32 = sub_21DBFC75C();
          v34 = sub_21D0CDFB4(v32, v33, v37);

          *(v28 + 24) = v34;
          _os_log_impl(&dword_21D0C9000, v26, v27, "Failed to fetch account of unpinned list {listID: %@, accountID: %@, error: %s}", v28, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v29, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x223D46520](v36, -1, -1);
          MEMORY[0x223D46520](v28, -1, -1);
        }

        else
        {
        }
      }
    }

    v35 = swift_allocObject();
    *(v35 + 16) = v9;
    sub_21D182B38(sub_21D1CD990, v35);
  }
}

id TTRListEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

Swift::Void __swiftcall TTRListEditor.edit(badgeEmblem:)(__C::REMListBadgeEmblem badgeEmblem)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
  TTRListEditor.edit(badge:)(v1);
}

void TTRListEditor.edit(badge:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_21DBF619C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF613C();
  v61 = *(v9 - 8);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v2[2] appearanceContext];
  if (!v13)
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE591E0);
    v62 = sub_21DBF84AC();
    v19 = sub_21DBFAECC();
    if (os_log_type_enabled(v62, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21D0C9000, v62, v19, "Attempted to set the badge on a legacy style reminder list", v20, 2u);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_19;
  }

  v59 = v4;
  v60 = v6;
  v58 = v12;
  v62 = v13;
  v14 = [v13 badge];
  if (v14)
  {
    if (a1)
    {
      sub_21D0D8CF0(0, &qword_27CE59210);
      v15 = v14;
      v16 = a1;
      v17 = sub_21DBFB63C();

      if (v17)
      {

LABEL_19:
        v38 = v62;

        return;
      }
    }
  }

  else if (!a1)
  {
    goto LABEL_19;
  }

  v56 = v5;
  v57 = v2;
  if (qword_27CE56580 != -1)
  {
    swift_once();
  }

  v21 = sub_21DBF84BC();
  __swift_project_value_buffer(v21, qword_27CE591E0);
  v22 = a1;
  v23 = v14;
  v24 = sub_21DBF84AC();
  v25 = v14;
  v26 = sub_21DBFAE9C();

  v54 = v23;
  v27 = os_log_type_enabled(v24, v26);
  v55 = v14;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v63 = v25;
    v64 = v29;
    *v28 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59208);
    v53 = v9;
    v30 = sub_21DBFBA5C();
    v32 = sub_21D0CDFB4(v30, v31, &v64);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v63 = a1;
    v9 = v53;
    v33 = sub_21DBFBA5C();
    v35 = sub_21D0CDFB4(v33, v34, &v64);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_21D0C9000, v24, v26, "Changing list badge {from: %s, to: %s}", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v29, -1, -1);
    MEMORY[0x223D46520](v28, -1, -1);
  }

  [v62 setBadge:v22];
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v36 = [v22 emblem];
  if (v36)
  {

    v37 = MEMORY[0x277D44E50];
  }

  else
  {
    v37 = MEMORY[0x277D44E58];
  }

  v39 = v61;
  v40 = v58;
  (*(v61 + 104))(v58, *v37, v9);
  sub_21DBF62DC();
  sub_21DBF62CC();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
  v42 = v9;
  v43 = &v8[v41[12]];
  v44 = v41[16];
  v45 = &v8[v41[20]];
  (*(v39 + 16))(v8, v40, v42);
  *v43 = TTRUserDefaults.activitySessionId.getter();
  v43[1] = v46;
  TTRUserDefaults.activitySessionBeginTime.getter(&v8[v44]);
  *v45 = sub_21DBFC8EC();
  v45[1] = v47;
  v48 = v60;
  v49 = v56;
  (*(v60 + 104))(v8, *MEMORY[0x277D44E98], v56);
  sub_21DBF62BC();

  (*(v48 + 8))(v8, v49);
  v50 = swift_allocObject();
  v51 = v54;
  *(v50 + 16) = v55;
  v52 = v51;
  sub_21D182B38(sub_21D1CD9C0, v50);

  (*(v39 + 8))(v40, v42);
}

Swift::Void __swiftcall TTRListEditor.edit(badgeEmoji:)(Swift::String badgeEmoji)
{
  v1 = objc_allocWithZone(MEMORY[0x277D44678]);
  v2 = sub_21DBFA12C();
  v3 = [v1 initWithEmoji_];

  TTRListEditor.edit(badge:)(v3);
}

Swift::Void __swiftcall TTRListEditor.edit(shouldCategorizeGroceryItems:)(Swift::Bool shouldCategorizeGroceryItems)
{
  v2 = shouldCategorizeGroceryItems;
  v3 = *v1;
  v4 = sub_21DBF582C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF619C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[2];
  v14 = [v13 groceryContextChangeItem];
  if (v14)
  {
    v67 = v14;
    if ([v14 shouldCategorizeGroceryItems] != v2)
    {
      if (!v2)
      {
        v58 = 0;
        v57 = 0;
LABEL_20:
        sub_21D1BD4C8(v2, v58, v57);

        return;
      }

      v64 = v9;
      v65 = v3;
      v61 = v5;
      v62 = v4;
      swift_beginAccess();
      v15 = v1[12];
      v16 = v1[13];
      v66 = v1;
      __swift_project_boxed_opaque_existential_1(v1 + 9, v15);
      v17 = (*(v16 + 16))(v15, v16);
      swift_endAccess();
      if ((v17 & 1) == 0)
      {
        if (qword_27CE56580 != -1)
        {
          swift_once();
        }

        v18 = sub_21DBF84BC();
        __swift_project_value_buffer(v18, qword_27CE591E0);
        v19 = sub_21DBF84AC();
        v20 = sub_21DBFAEDC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_21D0C9000, v19, v20, "TTRUserDefault hasCreatedGroceryList set to true after converting a standard list into a grocery list and shouldHideEmptySections is set to true by default", v21, 2u);
          MEMORY[0x223D46520](v21, -1, -1);
        }

        v22 = v66;
        swift_beginAccess();
        v24 = v22[12];
        v23 = v22[13];
        __swift_mutable_project_boxed_opaque_existential_1((v22 + 9), v24);
        (*(v23 + 24))(1, v24, v23);
        swift_endAccess();
        sub_21D0D32E4((v22 + 9), v68);
        v25 = v69;
        v26 = v70;
        __swift_project_boxed_opaque_existential_1(v68, v69);
        v27 = [v13 objectID];
        (*(v26 + 48))(1, v27, v25, v26);

        __swift_destroy_boxed_opaque_existential_0(v68);
        v28 = swift_allocObject();
        *(v28 + 16) = 1;
        sub_21D182B38(sub_21D1CD9EC, v28);

        sub_21DBF62DC();
        v63 = sub_21DBF62CC();
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
        v30 = &v12[*(v29 + 48)];
        v31 = &v12[*(v29 + 80)];
        v32 = *MEMORY[0x277D44E68];
        v33 = sub_21DBF613C();
        (*(*(v33 - 8) + 104))(v12, v32, v33);
        swift_beginAccess();
        v35 = v22[12];
        v34 = v22[13];
        __swift_project_boxed_opaque_existential_1(v22 + 9, v35);
        *v30 = (*(*(v34 + 8) + 8))(v35);
        *(v30 + 1) = v36;
        v38 = v22[12];
        v37 = v22[13];
        __swift_project_boxed_opaque_existential_1(v22 + 9, v38);
        (*(*(v37 + 8) + 32))(v38);
        swift_endAccess();
        *v31 = sub_21DBFC8EC();
        v31[1] = v39;
        v40 = v64;
        (*(v64 + 104))(v12, *MEMORY[0x277D44E98], v8);
        sub_21DBF62BC();

        (*(v40 + 8))(v12, v8);
      }

      LODWORD(v63) = v2;
      sub_21DBF62DC();
      sub_21DBF62CC();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60D90);
      v42 = &v12[*(v41 + 48)];
      v43 = &v12[*(v41 + 80)];
      v44 = *MEMORY[0x277D458F8];
      v45 = sub_21DBF802C();
      (*(*(v45 - 8) + 104))(v12, v44, v45);
      v46 = v66;
      swift_beginAccess();
      v48 = v46[12];
      v47 = v46[13];
      __swift_project_boxed_opaque_existential_1(v46 + 9, v48);
      *v42 = (*(*(v47 + 8) + 8))(v48);
      *(v42 + 1) = v49;
      v51 = v46[12];
      v50 = v46[13];
      __swift_project_boxed_opaque_existential_1(v46 + 9, v51);
      (*(*(v50 + 8) + 32))(v51);
      swift_endAccess();
      *v43 = sub_21DBFC8EC();
      v43[1] = v52;
      v53 = v64;
      (*(v64 + 104))(v12, *MEMORY[0x277D44EA0], v8);
      sub_21DBF62BC();

      (*(v53 + 8))(v12, v8);
      v54 = [objc_opt_self() daemonUserDefaults];
      v55 = [v54 preferredLocalizations];

      if (v55)
      {
        v56 = sub_21DBFA5EC();

        if (v56[2])
        {
          v58 = v56[4];
          v57 = v56[5];
          sub_21DBF8E0C();

LABEL_19:
          LOBYTE(v2) = v63;
          goto LABEL_20;
        }
      }

      sub_21DBF57AC();
      v58 = sub_21DBF570C();
      v57 = v60;
      (*(v61 + 8))(v7, v62);
      goto LABEL_19;
    }

    v59 = v67;
  }
}

Swift::Void __swiftcall TTRListEditor.editHideEmptySections(shouldHideEmptySections:)(Swift::Bool shouldHideEmptySections)
{
  v2 = shouldHideEmptySections;
  swift_beginAccess();
  sub_21D0D32E4(v1 + 72, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = [*(v1 + 16) objectID];
  (*(v4 + 48))(v2, v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0(v7);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  sub_21D182B38(sub_21D1D20CC, v6);
}

void sub_21D1BD4C8(char a1, uint64_t a2, void *a3)
{
  v6 = [*(v3 + 16) groceryContextChangeItem];
  if (v6)
  {
    v14 = v6;
    v7 = [v6 shouldCategorizeGroceryItems];
    v8 = [v14 groceryLocaleID];
    if (v8)
    {
      v9 = v8;
      v10 = sub_21DBFA16C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    [v14 setShouldCategorizeGroceryItems_];
    if (a3)
    {
      a3 = sub_21DBFA12C();
    }

    [v14 setGroceryLocaleID_];

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = v10;
    *(v13 + 32) = v12;
    sub_21D182B38(sub_21D1D1F5C, v13);
  }
}

uint64_t sub_21D1BD630(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_beginAccess();
  sub_21D0D32E4(v3 + 72, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v6 = [*(v3 + 16) objectID];
  (*(v5 + 48))((a2 & 1) == 0, v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0(v9);
  v7 = swift_allocObject();
  *(v7 + 16) = (a2 & 1) == 0;
  sub_21D182B38(sub_21D1D20CC, v7);
}

Swift::Void __swiftcall TTRListEditor.edit(shouldAutoCategorizeItems:)(Swift::Bool shouldAutoCategorizeItems)
{
  v3 = *(v1 + 16);
  v4 = [v3 autoCategorizeContextChangeItem];
  if (v4)
  {
    v12 = v4;
    v5 = shouldAutoCategorizeItems;
    if ([v4 shouldAutoCategorizeItems] == v5)
    {
    }

    else
    {
      v6 = [v12 shouldAutoCategorizeItems];
      [v12 setShouldAutoCategorizeItems_];
      swift_beginAccess();
      sub_21D0D32E4(v1 + 72, v13);
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9 = [v3 objectID];
      (*(v8 + 48))(1, v9, v7, v8);

      __swift_destroy_boxed_opaque_existential_0(v13);
      v10 = swift_allocObject();
      *(v10 + 16) = 1;
      sub_21D182B38(sub_21D1D20CC, v10);

      v11 = swift_allocObject();
      *(v11 + 16) = v6;
      sub_21D182B38(sub_21D1CD9F4, v11);
    }
  }
}

void sub_21D1BD92C(uint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = [*(*a1 + 16) autoCategorizeContextChangeItem];
  if (v4)
  {
    v11 = v4;
    if (([v4 shouldAutoCategorizeItems] ^ a2))
    {
      v5 = [v11 shouldAutoCategorizeItems];
      [v11 setShouldAutoCategorizeItems_];
      swift_beginAccess();
      sub_21D0D32E4(v3 + 72, v12);
      v6 = v13;
      v7 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v8 = [*(v3 + 16) objectID];
      (*(v7 + 48))(1, v8, v6, v7);

      __swift_destroy_boxed_opaque_existential_0(v12);
      v9 = swift_allocObject();
      *(v9 + 16) = 1;
      sub_21D182B38(sub_21D1D20CC, v9);

      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      sub_21D182B38(sub_21D1D20D8, v10);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall TTRListEditor.removeExistingSections()()
{
  v33[6] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = [v1 sectionsContextChangeItem];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 saveRequest];
    v5 = [v4 store];

    v33[0] = 0;
    v6 = [v5 fetchListSectionsForListSectionContextChangeItem:v3 error:v33];

    v7 = v33[0];
    if (v6)
    {
      sub_21D0D8CF0(0, &qword_27CE584F8);
      v8 = sub_21DBFA5EC();
      v9 = v7;

      if (v8 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v11 = v8 & 0xC000000000000001;
        v31 = v8 & 0xFFFFFFFFFFFFFF8;
        v32 = v8;
        v29 = v3;
        v30 = v8 + 32;
        while (1)
        {
          if (__OFSUB__(i--, 1))
          {
            __break(1u);
LABEL_19:

            goto LABEL_20;
          }

          if (v11)
          {
            v12 = MEMORY[0x223D44740](i, v32);
            goto LABEL_7;
          }

          if ((i & 0x8000000000000000) != 0)
          {
            break;
          }

          if (i >= *(v31 + 16))
          {
            goto LABEL_23;
          }

          v12 = *(v30 + 8 * i);
LABEL_7:
          v13 = v12;
          v14 = [v1 saveRequest];
          v15 = [v14 updateListSection_];

          [v15 removeFromList];
          v16 = [v13 objectID];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21DC09CF0;
          *(inited + 32) = v16;
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          v8 = v16;
          TTRUndoNavigationEditingTarget.init(sectionIDs:)(inited);
          v19 = v33[0];
          v3 = swift_allocObject();
          v3[2] = sub_21D1CD9FC;
          v3[3] = v18;

          sub_21D1C3EB8(v19, sub_21D1CDA04, v3);

          if (!i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

LABEL_20:
    }

    else
    {
      v21 = v33[0];
      v22 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_27CE56580 != -1)
      {
        swift_once();
      }

      v23 = sub_21DBF84BC();
      __swift_project_value_buffer(v23, qword_27CE591E0);

      v24 = sub_21DBF84AC();
      v25 = sub_21DBFAEBC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = [v1 objectID];
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&dword_21D0C9000, v24, v25, "TTRListEditor#removeExistingSections() : Failed to fetch sections in list {listID: %@}", v26, 0xCu);
        sub_21D0CF7E0(v27, &unk_27CE60070);
        MEMORY[0x223D46520](v27, -1, -1);
        MEMORY[0x223D46520](v26, -1, -1);
      }
    }
  }
}

void TTRListEditor.deleteSection(_:)(void *a1)
{
  v3 = [*(v1 + 16) saveRequest];
  v4 = [v3 updateListSection_];

  [v4 removeFromList];
  v5 = [a1 objectID];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = v5;
  TTRUndoNavigationEditingTarget.init(sectionIDs:)(inited);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D1D20D0;
  *(v9 + 24) = v7;

  sub_21D1C3EB8(v10, sub_21D1D20DC, v9);
}

Swift::Void __swiftcall TTRListEditor.edit(showingLargeAttachments:)(Swift::Bool showingLargeAttachments)
{
  v3 = [*(v1 + 16) appearanceContext];
  if (v3)
  {
    v20 = v3;
    if ([v3 showingLargeAttachments]!= showingLargeAttachments)
    {
      if (qword_27CE56580 != -1)
      {
        swift_once();
      }

      v4 = sub_21DBF84BC();
      __swift_project_value_buffer(v4, qword_27CE591E0);
      v20 = v20;
      v5 = sub_21DBF84AC();
      v6 = sub_21DBFAE9C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v21 = v8;
        *v7 = 136315394;
        v9 = [v20 showingLargeAttachments];
        v10 = v9 == 0;
        if (v9)
        {
          v11 = 1702195828;
        }

        else
        {
          v11 = 0x65736C6166;
        }

        if (v10)
        {
          v12 = 0xE500000000000000;
        }

        else
        {
          v12 = 0xE400000000000000;
        }

        v13 = sub_21D0CDFB4(v11, v12, &v21);

        *(v7 + 4) = v13;
        *(v7 + 12) = 2080;
        if (showingLargeAttachments)
        {
          v14 = 1702195828;
        }

        else
        {
          v14 = 0x65736C6166;
        }

        if (showingLargeAttachments)
        {
          v15 = 0xE400000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }

        v16 = sub_21D0CDFB4(v14, v15, &v21);

        *(v7 + 14) = v16;
        _os_log_impl(&dword_21D0C9000, v5, v6, "Changing showing large attachments {from: %s, to: %s}", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v8, -1, -1);
        MEMORY[0x223D46520](v7, -1, -1);
      }

      [v20 setShowingLargeAttachments:showingLargeAttachments];
    }
  }

  else
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE591E0);
    v20 = sub_21DBF84AC();
    v18 = sub_21DBFAECC();
    if (os_log_type_enabled(v20, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v18, "Attempted to set the badge emblem on an legacy style reminder list", v19, 2u);
      MEMORY[0x223D46520](v19, -1, -1);
    }
  }
}

id TTRListEditor.edit(sortingStyle:reason:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 sortingStyle];
  v5 = sub_21DBFA16C();
  v7 = v6;
  if (v5 == sub_21DBFA16C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218);
      inited = swift_initStackObject();
      *(inited + 32) = 0x657079547473696CLL;
      *(inited + 16) = xmmword_21DC0AFB0;
      *(inited + 40) = 0xE800000000000000;
      *(inited + 48) = sub_21DBFA12C();
      *(inited + 56) = 0x6E6F73616572;
      *(inited + 64) = 0xE600000000000000;
      v13 = sub_21DBFA12C();

      *(inited + 72) = v13;
      *(inited + 80) = 0x6974726F53646C6FLL;
      *(inited + 88) = 0xEF656C797453676ELL;
      *(inited + 96) = [v3 sortingStyle];
      *(inited + 104) = 0x6974726F5377656ELL;
      *(inited + 112) = 0xEF656C797453676ELL;
      *(inited + 120) = a1;
      v14 = a1;
      v15 = sub_21D1777B4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220);
      swift_arrayDestroy();
      sub_21DBF835C();
      MEMORY[0x223D40B00](0xD00000000000001ALL, 0x800000021DC45C80, v15, 0, 1);

      return [v3 setSortingStyle_];
    }
  }

  return result;
}

Swift::Void __swiftcall TTRListEditor.setSuggestedGroceryListProperties()()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0._countAndFlagsBits = sub_21DBF516C();
  TTRListEditor.edit(name:)(v0);

  v1 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
  TTRListEditor.edit(badge:)(v1);

  sub_21DBFA16C();
  v2 = objc_allocWithZone(MEMORY[0x277D445D0]);
  v3 = sub_21DBFA12C();

  v4 = [v2 initWithCKSymbolicColorName:v3 hexString:0];

  TTRListEditor.edit(color:)(v4);

  TTRListEditor.edit(shouldCategorizeGroceryItems:)(1);
}

id TTRListEditor.addNewReminder(with:title:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 saveRequest];
  v5 = sub_21DBFA12C();
  v6 = [v4 addReminderWithTitle:v5 toListChangeItem:v3 reminderObjectID:a1];

  v7 = [v3 accountCapabilities];
  v8 = [v7 defaultReminderPriorityLevel];

  if (v8)
  {
    [v6 setPriority_];
  }

  return v6;
}

id TTRListEditor.addNewSection(with:displayName:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF619C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v10 = [v9 sectionsContextChangeItem];
  if (v10)
  {
    v11 = v10;
    v46 = v4;
    v12 = [v9 saveRequest];
    v13 = sub_21DBFA12C();
    v47 = [v12 addListSectionWithDisplayName:v13 toListSectionContextChangeItem:v11 listSectionObjectID:a1];

    v14 = [v9 groceryContextChangeItem];
    if (v14 && (v15 = v14, v16 = [v14 shouldCategorizeGroceryItems], v15, v16))
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_21DBFBEEC();
      v17 = sub_21DBFC8EC();
      v19 = v18;

      v49 = v17;
      v50 = v19;
      v20 = 0x207473694C202D20;
      v21 = 0xEF797265636F7247;
    }

    else
    {
      v49 = sub_21DBFC8EC();
      v50 = v22;
      v20 = 0x7473694C202D20;
      v21 = 0xE700000000000000;
    }

    MEMORY[0x223D42AA0](v20, v21);
    v23 = v50;
    v45 = v49;
    v48 = v11;
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    sub_21DBF62DC();
    sub_21DBF62CC();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
    v25 = &v8[v24[12]];
    v26 = v24[16];
    v27 = &v8[v24[20]];
    v28 = *MEMORY[0x277D44E60];
    v29 = sub_21DBF613C();
    (*(*(v29 - 8) + 104))(v8, v28, v29);
    *v25 = TTRUserDefaults.activitySessionId.getter();
    v25[1] = v30;
    TTRUserDefaults.activitySessionBeginTime.getter(&v8[v26]);
    v31 = v46;
    *v27 = v45;
    *(v27 + 1) = v23;
    (*(v5 + 104))(v8, *MEMORY[0x277D44E98], v31);
    sub_21DBF62BC();

    (*(v5 + 8))(v8, v31);
    v32 = v47;
    v33 = [v47 objectID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    v36 = v33;
    TTRUndoNavigationEditingTarget.init(sectionIDs:)(inited);
    v37 = v49;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_21D1CDCB8;
    *(v38 + 24) = v35;

    sub_21D1C3EB8(v37, sub_21D1D20DC, v38);
  }

  else
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v39 = sub_21DBF84BC();
    __swift_project_value_buffer(v39, qword_27CE591E0);
    v40 = sub_21DBF84AC();
    v41 = sub_21DBFAECC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_21D0C9000, v40, v41, "Attempted to set the add a section to a list that does not support it.", v42, 2u);
      MEMORY[0x223D46520](v42, -1, -1);
    }

    return 0;
  }

  return v32;
}

void sub_21D1BEEAC(uint64_t a1)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v51 = *(v1 + 16);
  v4 = [v51 saveRequest];
  v5 = [v4 store];

  sub_21D198698(a1);
  sub_21D0D8CF0(0, &qword_280D17880);
  v6 = sub_21DBFA5DC();

  v53[0] = 0;
  v7 = [v5 fetchListSectionsWithObjectIDs:v6 error:v53];

  v8 = v53[0];
  if (v7)
  {
    sub_21D0D8CF0(0, &qword_27CE584F8);
    sub_21D183A0C();
    v9 = sub_21DBF9E6C();
    v10 = v8;

    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = sub_21DBFC21C();
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v9 = v11 | 0x8000000000000000;
    }

    else
    {
      v28 = -1 << *(v9 + 32);
      v12 = v9 + 64;
      v13 = ~v28;
      v29 = -v28;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v14 = v30 & *(v9 + 64);
    }

    v31 = 0;
    v32 = (v13 + 64) >> 6;
    v50 = v12;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v33 = v31;
      v34 = v14;
      v35 = v31;
      if (!v14)
      {
        break;
      }

LABEL_16:
      v36 = (v34 - 1) & v34;
      v37 = (v35 << 9) | (8 * __clz(__rbit64(v34)));
      v38 = *(*(v9 + 56) + v37);
      v39 = *(*(v9 + 48) + v37);
      v40 = v38;
      if (!v39)
      {
LABEL_22:
        sub_21D0CFAF8();
        return;
      }

      while (1)
      {

        v41 = [v51 saveRequest];
        v42 = [v41 updateListSection_];

        [v42 removeFromList];
        v43 = [v40 objectID];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC09CF0;
        *(inited + 32) = v43;
        v52 = v36;
        v2 = v32;
        v45 = v9;
        v46 = swift_allocObject();
        *(v46 + 16) = v43;
        v47 = v43;
        TTRUndoNavigationEditingTarget.init(sectionIDs:)(inited);
        v48 = v53[0];
        v49 = swift_allocObject();
        *(v49 + 16) = sub_21D1D20D0;
        *(v49 + 24) = v46;

        sub_21D1C3EB8(v48, sub_21D1D20DC, v49);

        v9 = v45;
        v32 = v2;

        v12 = v50;
        v31 = v35;
        v14 = v52;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        if (sub_21DBFC2DC())
        {
          swift_dynamicCast();
          v39 = v53[0];
          swift_dynamicCast();
          v40 = v53[0];
          v35 = v31;
          v36 = v14;
          if (v39)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        goto LABEL_22;
      }

      v34 = *(v12 + 8 * v35);
      ++v33;
      if (v34)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v53[0];
    v2 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56580 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_27CE591E0);
  sub_21DBF8E0C();
  v17 = v2;
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAEBC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v53[0] = v21;
    *v20 = 136446466;
    sub_21D183A0C();
    v22 = sub_21DBFAABC();
    v24 = sub_21D0CDFB4(v22, v23, v53);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    swift_getErrorValue();
    v25 = sub_21DBFC75C();
    v27 = sub_21D0CDFB4(v25, v26, v53);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_21D0C9000, v18, v19, "Failed to delete sections {sectionIDs: %{public}s, error: %{public}s}", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v21, -1, -1);
    MEMORY[0x223D46520](v20, -1, -1);
  }

  else
  {
  }
}

void sub_21D1BF4B8(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 16) sectionsContextChangeItem];
  if (v3)
  {
    v4 = v3;
    [v3 undeleteSectionWithID_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v7 = a2;
    TTRUndoNavigationEditingTarget.init(sectionIDs:)(inited);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21D1D20D4;
    *(v8 + 24) = v6;

    sub_21D1C3EB8(v9, sub_21D1D20DC, v8);
  }
}

void TTRListEditor.moveWithinList(_:togetherWith:position:)(void *a1, unint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = [a1 listID];
  v9 = [*(v3 + 16) objectID];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v11 = sub_21DBFB63C();

      if (v11)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    v10 = v8;
  }

  else if (!v9)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (qword_27CE56580 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE591E0);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAECC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21D0C9000, v13, v14, "Trying to use moveWithinList for moving across lists. This may fail in some cases.", v15, 2u);
    MEMORY[0x223D46520](v15, -1, -1);
  }

LABEL_14:
  v16 = v6;
  v17 = v7;
  sub_21D1BF7A0(a1, a2, &v16);
}

void sub_21D1BF7A0(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v16 = *a3;
  if (!*(a3 + 8))
  {
    goto LABEL_6;
  }

  if (v7 == 1)
  {
    v8 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
    v16 = *a3;
    goto LABEL_7;
  }

  v16 = 0;
  if (v6)
  {
    v8 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
  }

  else
  {
LABEL_6:
    v8 = &selRef_insertReminderChangeItem_beforeReminderChangeItem_;
  }

LABEL_7:
  v9 = *(v3 + 16);
  sub_21D157850(v6, v7);
  [v9 *v8];
  v10 = [a1 subtaskContext];
  if (v10)
  {
    v11 = v10;
    if (a2 >> 62)
    {
      goto LABEL_21;
    }

    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      while (!__OFSUB__(v12--, 1))
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x223D44740](v12, a2);
LABEL_12:
          v14 = v13;
          [v11 addReminderChangeItem_];

          if (!v12)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_19;
          }

          if (v12 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(a2 + 32 + 8 * v12);
            goto LABEL_12;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          v12 = sub_21DBFBD7C();
          if (!v12)
          {
            goto LABEL_22;
          }
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_22:
  }
}

void *TTRListEditor.move(_:togetherWith:position:)(void *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(v3 + 16);
  v14 = 0;
  v8 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(a1, a2, v7, 0, 0, &v14);
  v12 = v5;
  v13 = v6;
  sub_21D1BF7A0(v8, v9, &v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC09CF0;
  *(v10 + 32) = [a1 objectID];
  sub_21D1BF9F4();

  return v8;
}

uint64_t sub_21D1BF9F4()
{
  v1 = sub_21DBF604C();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = [v6 groceryContextChangeItem];
  if (v7)
  {
    v8 = v7;
    if ([v7 shouldCategorizeGroceryItems])
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v9 = sub_21DBFA5DC();
      [v8 categorizeGroceryItemsWithReminderIDs_];

      return 1;
    }
  }

  (*(v2 + 104))(v5, *MEMORY[0x277D44D98], v1);
  v11 = sub_21DBF603C();
  (*(v2 + 8))(v5, v1);
  if (v11)
  {
    result = [v6 autoCategorizeContextChangeItem];
    if (!result)
    {
      return result;
    }

    v12 = result;
    if ([result shouldAutoCategorizeItems])
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v13 = sub_21DBFA5DC();
      [v12 categorizeAutoCategorizationItemsWithReminderIDs_];

      return 1;
    }
  }

  return 0;
}

void TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(uint64_t a1, void **a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(v4 + 16);
  v15 = [v14 sectionsContextChangeItem];
  if (v15)
  {
    v16 = v15;
    v17 = v13;
    sub_21DBF560C();
    sub_21D0D8CF0(0, &qword_27CE59228);
    sub_21DBF815C();

    (*(v9 + 8))(v12, v8);
    if (a3)
    {
      sub_21DBF8E0C();
      v18 = sub_21D198698(a1);
      v19 = swift_allocObject();
      *(v19 + 16) = a3;
      *(v19 + 24) = v13;
      v20 = v17;
      TTRUndoNavigationEditingTarget.init(reminderIDs:)(v18);
      v21 = v29[1];
      v22 = swift_allocObject();
      *(v22 + 16) = sub_21D1CF120;
      *(v22 + 24) = v19;

      sub_21D1C3EB8(v21, sub_21D1D20DC, v22);
    }
  }

  else
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v23 = sub_21DBF84BC();
    __swift_project_value_buffer(v23, qword_27CE591E0);

    v29[0] = sub_21DBF84AC();
    v24 = sub_21DBFAECC();

    if (os_log_type_enabled(v29[0], v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = [v14 objectID];
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&dword_21D0C9000, v29[0], v24, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v25, 0xCu);
      sub_21D0CF7E0(v26, &unk_27CE60070);
      MEMORY[0x223D46520](v26, -1, -1);
      MEMORY[0x223D46520](v25, -1, -1);
    }

    v28 = v29[0];
  }
}

void sub_21D1BFF68(uint64_t a1, void **a2)
{
  v3 = v2;
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(v3 + 16);
  v13 = [v12 sectionsContextChangeItem];
  if (v13)
  {
    v14 = v13;
    sub_21DBF560C();
    sub_21D1E449C(a1, v10);
    (*(v7 + 8))(v10, v6);
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59330);
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D1D1E74();
    sub_21D183A0C();
    v15 = sub_21DBFA49C();
    v16 = sub_21D198698(v15);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v11;
    v17[4] = a1;
    v18 = v11;
    sub_21DBF8E0C();
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(v16);
    v19 = v29;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_21D1D1ED8;
    *(v20 + 24) = v17;

    sub_21D1C3EB8(v19, sub_21D1D20DC, v20);
  }

  else
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v21 = sub_21DBF84BC();
    __swift_project_value_buffer(v21, qword_27CE591E0);

    v28 = sub_21DBF84AC();
    v22 = sub_21DBFAECC();

    if (os_log_type_enabled(v28, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = [v12 objectID];
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&dword_21D0C9000, v28, v22, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v23, 0xCu);
      sub_21D0CF7E0(v24, &unk_27CE60070);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    v26 = v28;
  }
}

Swift::Void __swiftcall TTRListEditor.updateOrderingOfSections(withSectionIDsOrdering:initialSectionIDsOrdering:)(Swift::OpaquePointer withSectionIDsOrdering, Swift::OpaquePointer_optional initialSectionIDsOrdering)
{
  rawValue = initialSectionIDsOrdering.value._rawValue;
  v5 = *(v2 + 16);
  v6 = [v5 sectionsContextChangeItem];
  if (v6)
  {
    oslog = v6;
    sub_21D0D8CF0(0, &qword_27CE59228);
    sub_21DBF80CC();
    if (rawValue)
    {
      v7 = swift_allocObject();
      v7[2]._rawValue = rawValue;
      v7[3]._rawValue = withSectionIDsOrdering._rawValue;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D182B38(sub_21D1CF15C, v7);
    }
  }

  else
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE591E0);

    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAECC();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = [v5 objectID];
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Failed to update ordering of sections in list because list does not support sections {listID: %@}", v10, 0xCu);
      sub_21D0CF7E0(v11, &unk_27CE60070);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }
  }
}

void TTRListEditor.remove(reminder:)(void *a1)
{
  v3 = [*(v1 + 16) saveRequest];
  v20 = [v3 updateReminder_];

  v4 = [a1 objectID];
  v5 = [v20 removeFromListAllowingUndo];
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v4;
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v6;
    v9 = v4;
    v10 = v6;
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(inited);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_21D1CF188;
    *(v11 + 24) = v8;

    sub_21D1C3EB8(v21, sub_21D1D20DC, v11);
  }

  else
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE591E0);
    v13 = v4;
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEBC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v19 = v13;
      _os_log_impl(&dword_21D0C9000, v14, v15, "Unable to obtain an undo object for removing reminder {reminderID: %@}", v16, 0xCu);
      sub_21D0CF7E0(v17, &unk_27CE60070);
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);

      v18 = v19;
    }

    else
    {

      v18 = v20;
    }
  }
}

void TTRListEditor.undelete(reminderID:undoToken:)(void *a1, uint64_t a2)
{
  sub_21DBF7A6C();
  v5 = *(v2 + 16);
  v6 = [v5 saveRequest];
  v7 = [v6 store];

  v8 = sub_21DBF7A5C();
  if (v8)
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE591E0);
    v10 = a1;
    oslog = sub_21DBF84AC();
    v11 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v10;
      v14 = v10;
      _os_log_impl(&dword_21D0C9000, oslog, v11, "Skipping undelete of reminder because it is permanently hidden {reminderID: %@}", v12, 0xCu);
      sub_21D0CF7E0(v13, &unk_27CE60070);
      MEMORY[0x223D46520](v13, -1, -1);
      MEMORY[0x223D46520](v12, -1, -1);
    }
  }

  else
  {
    [v5 undeleteReminderWithID:a1 usingUndo:{a2, v19}];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = a1;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    v17 = a1;
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(inited);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_21D1CF1B4;
    *(v18 + 24) = v16;

    sub_21D1C3EB8(v21, sub_21D1D20DC, v18);
  }
}

void sub_21D1C0CC4(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 16) saveRequest];
  v4 = [v3 store];

  v20[0] = 0;
  v5 = [v4 fetchReminderWithObjectID:a2 error:v20];

  if (v5)
  {
    v6 = v20[0];
    TTRListEditor.remove(reminder:)(v5);
LABEL_7:

    return;
  }

  v7 = v20[0];
  v8 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_27CE56580 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_27CE591E0);
  v10 = v8;
  v11 = a2;
  v5 = sub_21DBF84AC();
  v12 = sub_21DBFAEBC();

  if (os_log_type_enabled(v5, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v13 = 136315394;
    swift_getErrorValue();
    v16 = sub_21DBFC74C();
    v18 = sub_21D0CDFB4(v16, v17, v20);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v11;
    *v14 = v11;
    v19 = v11;
    _os_log_impl(&dword_21D0C9000, v5, v12, "Failed to get reminder for undelete {error: %s, reminderID: %@}", v13, 0x16u);
    sub_21D0CF7E0(v14, &unk_27CE60070);
    MEMORY[0x223D46520](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);

    goto LABEL_7;
  }
}

void TTRListEditor.recover(reminderID:)(void *a1)
{
  sub_21DBF7A6C();
  v3 = *(v1 + 16);
  v4 = [v3 saveRequest];
  v5 = [v4 store];

  v6 = sub_21DBF7A5C();
  if (v6)
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE591E0);
    v8 = a1;
    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v8;
      *v11 = v8;
      v12 = v8;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Skipping recovery of reminder because it is permanently hidden {reminderID: %@}", v10, 0xCu);
      sub_21D0CF7E0(v11, &unk_27CE60070);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21DC09CF0;
    *(v13 + 32) = a1;
    sub_21D0D8CF0(0, &qword_280D17880);
    v14 = a1;
    v15 = sub_21DBFA5DC();

    [v3 undeleteRemindersWithoutUndoWithIDs_];

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21DC09CF0;
    *(v16 + 32) = v14;
    v17 = v14;
    LOBYTE(v15) = sub_21D1BF9F4();

    if ((v15 & 1) == 0)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC09CF0;
      *(inited + 32) = v17;
      v19 = v17;
      sub_21D1CE1BC(inited, &qword_27CE59328, &unk_21DC19F50, &qword_280D17880);
      v21 = v20;
      swift_setDeallocating();
      swift_arrayDestroy();
      v28 = 0;
      TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v21, &v28, 0);
    }

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_21DC09CF0;
    *(v22 + 32) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    v24 = v17;
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(v22);
    v25 = v28;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_21D1CF1BC;
    *(v26 + 24) = v23;

    sub_21D1C3EB8(v25, sub_21D1D20DC, v26);
  }
}

uint64_t sub_21D1C1544(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC09CF0;
  *(v2 + 32) = a1;
  v3 = a1;
  sub_21D1C2354(v2);

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = v3;
  TTRUndoNavigationEditingTarget.init(reminderIDs:)(inited);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D1D1E48;
  *(v7 + 24) = v5;

  sub_21D1C3EB8(v9, sub_21D1D20DC, v7);
}

void *TTRListEditor.paste(_:after:updateProperties:)(uint64_t a1, void *a2, void (*a3)(id, unint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = [v6 saveRequest];
  v8 = [v7 store];

  v61 = TTRReminderCopyPasteItem.reminders(in:)(v8);
  v70 = a3;

  v66 = v6;
  v9 = [v6 saveRequest];
  v73 = MEMORY[0x277D84F90];
  v69 = a2;
  if (a2)
  {
    v10 = a2;
    v11 = [v10 parentReminder];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 updateReminder_];
      v14 = [v13 subtaskContext];

      if (v14)
      {
        sub_21D1C1F2C(v61, v14, v10, a3);
        v16._rawValue = v15;

        v17 = 0;
LABEL_84:
        v56 = swift_allocObject();
        *(v56 + 16) = v16;
        swift_bridgeObjectRetain_n();
        TTRUndoNavigationEditingTarget.init(reminderIDs:)(v16);
        v57 = v71;
        v58 = swift_allocObject();
        *(v58 + 16) = sub_21D1CF1E8;
        *(v58 + 24) = v56;

        sub_21D1C3EB8(v57, sub_21D1D20DC, v58);

        return v16._rawValue;
      }
    }

    v17 = [v9 updateReminder_];
  }

  else
  {
    v17 = 0;
  }

  result = v61;
  v60 = *(v61 + 16);
  if (!v60)
  {

    v16._rawValue = MEMORY[0x277D84F90];
    goto LABEL_84;
  }

  v19 = 0;
  v59 = v9;
  while (v19 < result[2])
  {
    v20 = v61 + 32 + 16 * v19;
    v21 = *(v20 + 8);
    v22 = *v20;
    sub_21DBF8E0C();
    v65 = [v9 _copyReminder_toListChangeItem_];
    if (v17 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v17;
    }

    if (v17)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    v25 = v21 >> 62;
    if (v21 >> 62)
    {
      v26 = sub_21DBFBD7C();
    }

    else
    {
      v26 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = v19;
    v64 = v17;
    v62 = v22;
    v67 = v24;
    if (!v26)
    {
      goto LABEL_43;
    }

    v27 = [v65 subtaskContext];
    if (v27)
    {
      v28 = v27;
      if (v25)
      {
        v29 = sub_21DBFBD7C();
        if (!v29)
        {
LABEL_35:

LABEL_43:
          v33 = MEMORY[0x277D84F90];
          v34 = MEMORY[0x277D84F90];
          goto LABEL_44;
        }
      }

      else
      {
        v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v29)
        {
          goto LABEL_35;
        }
      }

      v71 = MEMORY[0x277D84F90];
      result = sub_21DBFC01C();
      if (v29 < 0)
      {
        goto LABEL_88;
      }

      v30 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x223D44740](v30, v21);
        }

        else
        {
          v31 = *(v21 + 8 * v30 + 32);
        }

        v32 = v31;
        ++v30;
        [v9 _copyReminder_toReminderSubtaskContextChangeItem_];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v29 != v30);

      v33 = v71;
      v34 = MEMORY[0x277D84F90];
    }

    else
    {
      if (v25)
      {
        v35 = sub_21DBFBD7C();
        if (!v35)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v35 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v35)
        {
          goto LABEL_43;
        }
      }

      v71 = MEMORY[0x277D84F90];
      result = sub_21DBFC01C();
      if (v35 < 0)
      {
        goto LABEL_89;
      }

      v36 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x223D44740](v36, v21);
        }

        else
        {
          v37 = *(v21 + 8 * v36 + 32);
        }

        v38 = v37;
        ++v36;
        [v9 _copyReminder_toListChangeItem_];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v35 != v36);
      v34 = v71;
      v33 = MEMORY[0x277D84F90];
    }

LABEL_44:
    v70(v65, v33, v69);
    v71 = v23;
    v72 = v67;
    sub_21D1BF7A0(v65, v33, &v71);
    v39 = [v65 objectID];
    MEMORY[0x223D42D80]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    if (v33 >> 62)
    {
      v40 = sub_21DBFBD7C();
      if (!v40)
      {
LABEL_58:

        v45 = MEMORY[0x277D84F90];
        goto LABEL_59;
      }
    }

    else
    {
      v40 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_58;
      }
    }

    v71 = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v40 < 0)
    {
      goto LABEL_86;
    }

    v41 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x223D44740](v41, v33);
      }

      else
      {
        v42 = *(v33 + 8 * v41 + 32);
      }

      v43 = v42;
      ++v41;
      v44 = [v42 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v40 != v41);

    v45 = v71;
LABEL_59:
    result = sub_21D562328(v45);
    if (v17)
    {

      v17 = v65;
      result = v65;
    }

    if (v34 >> 62)
    {
      result = sub_21DBFBD7C();
      v46 = result;
      if (!result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v46 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_10;
      }
    }

    if (v46 < 1)
    {
      goto LABEL_87;
    }

    v47 = 0;
    v68 = v34 & 0xC000000000000001;
    v48 = v34;
    do
    {
      if (v68)
      {
        v49 = MEMORY[0x223D44740](v47, v34);
      }

      else
      {
        v49 = v34[v47 + 4];
      }

      v50 = v49;
      if (v17 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v17;
      }

      if (v17)
      {
        v52 = 1;
      }

      else
      {
        v52 = 2;
      }

      v53 = v17;
      v54 = MEMORY[0x277D84F90];
      v70(v50, MEMORY[0x277D84F90], v69);
      v71 = v51;
      v72 = v52;
      sub_21D1BF7A0(v50, v54, &v71);
      v55 = [v50 objectID];
      MEMORY[0x223D42D80]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      if (v17)
      {

        v17 = v50;
      }

      else
      {
      }

      v34 = v48;
      ++v47;
    }

    while (v46 != v47);
LABEL_10:
    v19 = v63 + 1;

    result = v61;
    v9 = v59;
    if (v63 + 1 == v60)
    {

      v16._rawValue = v73;
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}