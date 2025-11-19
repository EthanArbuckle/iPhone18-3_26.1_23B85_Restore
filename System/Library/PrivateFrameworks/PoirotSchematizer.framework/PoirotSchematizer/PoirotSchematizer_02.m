void *sub_1D8C42D20(void *result, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = a2[3];
  v55 = a2[2];
  if (v5 < v55)
  {
    v8 = a2;
    v9 = result;
    v10 = *a2;
    v41 = a2[1] - *a2;
    v42 = *a2;
    v39 = *a2 + 1;
    while (1)
    {
      if (v10)
      {
        v11 = v41;
        if (v5 >= v41)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v11 = 0;
      }

      v12 = *(v10 + v5);
      v13 = v5 + 1;
      if ((v12 & 0x8000000000000000) != 0)
      {
        if (v13 >= v11)
        {
          goto LABEL_54;
        }

        v12 &= 0x7Fu;
        v14 = (v39 + v5);
        v13 = v5 + 2;
        v15 = 7;
        while (1)
        {
          v16 = *v14++;
          v12 |= (v16 & 0x7F) << v15;
          if ((v16 & 0x80) == 0)
          {
            break;
          }

          if (v13 < v11)
          {
            ++v13;
            v17 = v15 > 0x38;
            v15 += 7;
            if (!v17)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        v8[3] = v13;
        if (v12 > 0xFFFFFFFE)
        {
LABEL_54:
          sub_1D8C36A64();
          swift_allocError();
          *v34 = xmmword_1D8C86190;
          *(v34 + 16) = 2;
          return swift_willThrow();
        }
      }

      else
      {
        v8[3] = v13;
      }

      v18 = v12 & 7;
      if (v12 < 8 || v18 >= 6)
      {
        goto LABEL_54;
      }

      if (!v9[2])
      {
        break;
      }

      v20 = sub_1D8C46878(v12 >> 3);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v38 = v8;
      v36 = v9;
      v37 = a3;
      v22 = a4;
      v40 = *(v9[7] + 16 * v20);
      ObjectType = swift_getObjectType();
      v24 = *(*(&v40 + 1) + 56);
      swift_unknownObjectRetain();
      result = v24(&v51, ObjectType, *(&v40 + 1));
      if (v4)
      {
        return swift_unknownObjectRelease();
      }

      v25 = v51;
      if (v18 != 2 || *(&v51 + 1) >> 62 == 1 || *(&v51 + 1) >> 62 == 2 && __PAIR128__((v51 >= 0xD) + *(&v51 + 1) + 0x7FFFFFFFFFFFFFFFLL, v51 - 13) < 2)
      {
        v53 = v51;
        sub_1D8C29F08(&v53, v18, v54);
        a4 = v22;
        sub_1D8C29EAC(v54, v52);
        v51 = v40;
        swift_unknownObjectRetain();
        FieldValueImpl.asPublic()(&v47);
        a3 = v37;
        v37(&v47);
        v43 = v47;
        v44 = v48;
        v45 = v49;
        v46 = v50;
        sub_1D8C437F4(&v43);
        sub_1D8C2BBF0(v25, *(&v25 + 1));
        swift_unknownObjectRelease();
        sub_1D8C3D128(&v51);
        result = sub_1D8C2AB08(v54);
        v9 = v36;
LABEL_28:
        v10 = v42;
        goto LABEL_29;
      }

      a4 = v22;
      v10 = v42;
      if (v42)
      {
        v26 = v41;
        a3 = v37;
        if (v13 >= v41)
        {
          goto LABEL_57;
        }
      }

      else
      {
        a3 = v37;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }

        v26 = 0;
      }

      v27 = *(v42 + v13);
      v28 = v13 + 1;
      if (v27 < 0)
      {
        if (v28 >= v26)
        {
          goto LABEL_57;
        }

        v27 &= 0x7Fu;
        v31 = (v39 + v13);
        v28 = v13 + 2;
        v32 = 7;
        while (1)
        {
          v33 = *v31++;
          v27 |= (v33 & 0x7F) << v32;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          if (v28 < v26)
          {
            ++v28;
            v17 = v32 > 0x38;
            v32 += 7;
            if (!v17)
            {
              continue;
            }
          }

          goto LABEL_57;
        }
      }

      v8[3] = v28;
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      v29 = v27 & 0x7FFFFFFF;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        __break(1u);
        return result;
      }

      if (v28 < v30)
      {
        do
        {
          v53 = v25;
          sub_1D8C6DE1C(&v53, v54);
          sub_1D8C29EAC(v54, v52);
          v51 = v40;
          swift_unknownObjectRetain();
          FieldValueImpl.asPublic()(&v47);
          a3(&v47);
          v43 = v47;
          v44 = v48;
          v45 = v49;
          v46 = v50;
          sub_1D8C437F4(&v43);
          sub_1D8C3D128(&v51);
          sub_1D8C2AB08(v54);
          v28 = v38[3];
        }

        while (v28 < v30);
        v10 = v42;
      }

      if (v28 != v30)
      {
LABEL_57:
        sub_1D8C36A64();
        swift_allocError();
        *v35 = xmmword_1D8C86190;
        *(v35 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        return sub_1D8C2BBF0(v25, *(&v25 + 1));
      }

      swift_unknownObjectRelease();
      result = sub_1D8C2BBF0(v25, *(&v25 + 1));
      v8 = v38;
      v9 = v36;
LABEL_29:
      v5 = v8[3];
      if (v5 >= v55)
      {
        return result;
      }
    }

    result = sub_1D8C452D0(v12);
    if (v4)
    {
      return result;
    }

    goto LABEL_28;
  }

  return result;
}

void *sub_1D8C432AC(void *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2[3];
  v45 = a2[2];
  if (v5 < v45)
  {
    v9 = result;
    v10 = *a2;
    v40 = a2[1] - *a2;
    v41 = *a2;
    v38 = *a2 + 1;
    while (1)
    {
      if (v10)
      {
        v11 = v40;
        if (v5 >= v40)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v11 = 0;
      }

      v12 = *(v10 + v5);
      v13 = v5 + 1;
      if ((v12 & 0x8000000000000000) != 0)
      {
        if (v13 >= v11)
        {
          goto LABEL_54;
        }

        v12 &= 0x7Fu;
        v14 = (v38 + v5);
        v13 = v5 + 2;
        v15 = 7;
        while (1)
        {
          v16 = *v14++;
          v12 |= (v16 & 0x7F) << v15;
          if ((v16 & 0x80) == 0)
          {
            break;
          }

          if (v13 < v11)
          {
            ++v13;
            v17 = v15 > 0x38;
            v15 += 7;
            if (!v17)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        a2[3] = v13;
        if (v12 > 0xFFFFFFFE)
        {
LABEL_54:
          sub_1D8C36A64();
          swift_allocError();
          *v33 = xmmword_1D8C86190;
          *(v33 + 16) = 2;
          return swift_willThrow();
        }
      }

      else
      {
        a2[3] = v13;
      }

      v18 = v12 & 7;
      if (v12 < 8 || v18 >= 6)
      {
        goto LABEL_54;
      }

      if (!v9[2])
      {
        break;
      }

      v20 = sub_1D8C46878(v12 >> 3);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v37 = a3;
      v35 = v9;
      v36 = a4;
      v39 = *(v9[7] + 16 * v20);
      ObjectType = swift_getObjectType();
      v23 = *(*(&v39 + 1) + 56);
      swift_unknownObjectRetain();
      result = v23(&v42, ObjectType, *(&v39 + 1));
      if (v4)
      {
        return swift_unknownObjectRelease();
      }

      v24 = v42;
      if (v18 != 2 || *(&v42 + 1) >> 62 == 1 || *(&v42 + 1) >> 62 == 2 && __PAIR128__((v42 >= 0xD) + *(&v42 + 1) + 0x7FFFFFFFFFFFFFFFLL, v42 - 13) < 2)
      {
        sub_1D8C29F08(&v42, v18, v44);
        a4 = v36;
        sub_1D8C29EAC(v44, v43);
        v42 = v39;
        swift_unknownObjectRetain();
        sub_1D8C58CC4(&v42, a3, v36);
        sub_1D8C2BBF0(v24, *(&v24 + 1));
        swift_unknownObjectRelease();
        sub_1D8C3D128(&v42);
        result = sub_1D8C2AB08(v44);
        v9 = v35;
LABEL_28:
        v10 = v41;
        goto LABEL_29;
      }

      a4 = v36;
      v10 = v41;
      if (v41)
      {
        v25 = v40;
        if (v13 >= v40)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }

        v25 = 0;
      }

      v26 = *(v41 + v13);
      v27 = v13 + 1;
      if (v26 < 0)
      {
        if (v27 >= v25)
        {
          goto LABEL_57;
        }

        v26 &= 0x7Fu;
        v30 = (v38 + v13);
        v27 = v13 + 2;
        v31 = 7;
        while (1)
        {
          v32 = *v30++;
          v26 |= (v32 & 0x7F) << v31;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          if (v27 < v25)
          {
            ++v27;
            v17 = v31 > 0x38;
            v31 += 7;
            if (!v17)
            {
              continue;
            }
          }

          goto LABEL_57;
        }
      }

      a2[3] = v27;
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      v28 = v26 & 0x7FFFFFFF;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        __break(1u);
        return result;
      }

      if (v27 < v29)
      {
        do
        {
          v42 = v24;
          sub_1D8C6DE1C(&v42, v44);
          sub_1D8C29EAC(v44, v43);
          v42 = v39;
          swift_unknownObjectRetain();
          sub_1D8C58CC4(&v42, v37, v36);
          sub_1D8C3D128(&v42);
          sub_1D8C2AB08(v44);
          v27 = a2[3];
        }

        while (v27 < v29);
        v10 = v41;
      }

      if (v27 != v29)
      {
LABEL_57:
        sub_1D8C36A64();
        swift_allocError();
        *v34 = xmmword_1D8C86190;
        *(v34 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        return sub_1D8C2BBF0(v24, *(&v24 + 1));
      }

      swift_unknownObjectRelease();
      result = sub_1D8C2BBF0(v24, *(&v24 + 1));
      a3 = v37;
      v9 = v35;
LABEL_29:
      v5 = a2[3];
      if (v5 >= v45)
      {
        return result;
      }
    }

    result = sub_1D8C452D0(v12);
    if (v4)
    {
      return result;
    }

    goto LABEL_28;
  }

  return result;
}

unint64_t sub_1D8C437A8()
{
  result = qword_1ECAAB130;
  if (!qword_1ECAAB130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAB130);
  }

  return result;
}

void *sub_1D8C43848(void *result, void (*a2)(__int128 *), uint64_t a3)
{
  v5 = v3[3];
  v45 = v3[2];
  if (v5 < v45)
  {
    v6 = v3;
    v9 = result;
    v10 = *v3;
    v40 = v6[1] - v10;
    v41 = v10;
    v38 = v10 + 1;
    while (1)
    {
      if (v10)
      {
        v11 = v40;
        if (v5 >= v40)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v11 = 0;
      }

      v12 = *(v10 + v5);
      v13 = v5 + 1;
      if ((v12 & 0x8000000000000000) != 0)
      {
        if (v13 >= v11)
        {
          goto LABEL_54;
        }

        v12 &= 0x7Fu;
        v14 = (v38 + v5);
        v13 = v5 + 2;
        v15 = 7;
        while (1)
        {
          v16 = *v14++;
          v12 |= (v16 & 0x7F) << v15;
          if ((v16 & 0x80) == 0)
          {
            break;
          }

          if (v13 < v11)
          {
            ++v13;
            v17 = v15 > 0x38;
            v15 += 7;
            if (!v17)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        v6[3] = v13;
        if (v12 > 0xFFFFFFFE)
        {
LABEL_54:
          sub_1D8C36A64();
          swift_allocError();
          *v33 = xmmword_1D8C86190;
          *(v33 + 16) = 2;
          return swift_willThrow();
        }
      }

      else
      {
        v6[3] = v13;
      }

      v18 = v12 & 7;
      if (v12 < 8 || v18 >= 6)
      {
        goto LABEL_54;
      }

      if (!v9[2])
      {
        break;
      }

      v20 = sub_1D8C46878(v12 >> 3);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v37 = a2;
      v35 = v9;
      v36 = a3;
      v39 = *(v9[7] + 16 * v20);
      ObjectType = swift_getObjectType();
      v23 = *(*(&v39 + 1) + 56);
      swift_unknownObjectRetain();
      result = v23(&v42, ObjectType, *(&v39 + 1));
      if (v4)
      {
        return swift_unknownObjectRelease();
      }

      v24 = v42;
      if (v18 != 2 || *(&v42 + 1) >> 62 == 1 || *(&v42 + 1) >> 62 == 2 && __PAIR128__((v42 >= 0xD) + *(&v42 + 1) + 0x7FFFFFFFFFFFFFFFLL, v42 - 13) < 2)
      {
        sub_1D8C29F08(&v42, v18, v44);
        a3 = v36;
        sub_1D8C29EAC(v44, v43);
        v42 = v39;
        swift_unknownObjectRetain();
        a2(&v42);
        sub_1D8C2BBF0(v24, *(&v24 + 1));
        swift_unknownObjectRelease();
        sub_1D8C3D128(&v42);
        result = sub_1D8C2AB08(v44);
        v9 = v35;
LABEL_28:
        v10 = v41;
        goto LABEL_29;
      }

      a3 = v36;
      v10 = v41;
      if (v41)
      {
        v25 = v40;
        if (v13 >= v40)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }

        v25 = 0;
      }

      v26 = *(v41 + v13);
      v27 = v13 + 1;
      if (v26 < 0)
      {
        if (v27 >= v25)
        {
          goto LABEL_57;
        }

        v26 &= 0x7Fu;
        v30 = (v38 + v13);
        v27 = v13 + 2;
        v31 = 7;
        while (1)
        {
          v32 = *v30++;
          v26 |= (v32 & 0x7F) << v31;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          if (v27 < v25)
          {
            ++v27;
            v17 = v31 > 0x38;
            v31 += 7;
            if (!v17)
            {
              continue;
            }
          }

          goto LABEL_57;
        }
      }

      v6[3] = v27;
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      v28 = v26 & 0x7FFFFFFF;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        __break(1u);
        return result;
      }

      if (v27 < v29)
      {
        do
        {
          v42 = v24;
          sub_1D8C6DE1C(&v42, v44);
          sub_1D8C29EAC(v44, v43);
          v42 = v39;
          swift_unknownObjectRetain();
          v37(&v42);
          sub_1D8C3D128(&v42);
          sub_1D8C2AB08(v44);
          v27 = v6[3];
        }

        while (v27 < v29);
        v10 = v41;
      }

      if (v27 != v29)
      {
LABEL_57:
        sub_1D8C36A64();
        swift_allocError();
        *v34 = xmmword_1D8C86190;
        *(v34 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        return sub_1D8C2BBF0(v24, *(&v24 + 1));
      }

      swift_unknownObjectRelease();
      result = sub_1D8C2BBF0(v24, *(&v24 + 1));
      a2 = v37;
      v9 = v35;
LABEL_29:
      v5 = v6[3];
      if (v5 >= v45)
      {
        return result;
      }
    }

    result = sub_1D8C452D0(v12);
    if (v4)
    {
      return result;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1D8C43D40(uint64_t result, void (*a2)(_OWORD *))
{
  v4 = *(result + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    v8 = v2[2];
    while (2)
    {
      v35 = v7;
      while (1)
      {
        v9 = v2[3];
        if (v9 >= v8)
        {
          return result;
        }

        v10 = *v2;
        if (*v2)
        {
          v11 = v2[1] - v10;
          if (v9 >= v11)
          {
            goto LABEL_40;
          }
        }

        else
        {
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v11 = 0;
        }

        v12 = *(v10 + v9);
        v13 = v9 + 1;
        if ((v12 & 0x8000000000000000) != 0)
        {
          if (v13 >= v11)
          {
            goto LABEL_40;
          }

          v12 &= 0x7Fu;
          v14 = (v10 + v9 + 1);
          v15 = v9 + 2;
          v16 = 7;
          while (1)
          {
            v17 = *v14++;
            v12 |= (v17 & 0x7F) << v16;
            if ((v17 & 0x80) == 0)
            {
              break;
            }

            if (v15 < v11)
            {
              ++v15;
              v18 = v16 > 0x38;
              v16 += 7;
              if (!v18)
              {
                continue;
              }
            }

            goto LABEL_40;
          }

          v2[3] = v15;
          if (v12 > 0xFFFFFFFE)
          {
LABEL_40:
            sub_1D8C36A64();
            swift_allocError();
            *v25 = xmmword_1D8C86190;
            *(v25 + 16) = 2;
            return swift_willThrow();
          }
        }

        else
        {
          v2[3] = v13;
        }

        v19 = v12 & 7;
        if (v12 < 8 || v19 >= 6)
        {
          goto LABEL_40;
        }

        if (*(v6 + 16))
        {
          v21 = sub_1D8C46878(v12 >> 3);
          if (v22)
          {
            break;
          }
        }

        result = sub_1D8C452D0(v12);
        if (v3)
        {
          return result;
        }
      }

      v29 = *(*(v6 + 56) + 16 * v21);
      ObjectType = swift_getObjectType();
      v26 = *(*(&v29 + 1) + 56);
      v27 = ObjectType;
      swift_unknownObjectRetain();
      v26(v33, v27, *(&v29 + 1));
      if (v3)
      {
        return swift_unknownObjectRelease();
      }

      v24 = *(&v33[0] + 1);
      v28 = *&v33[0];
      if ((v12 & 7) <= 2 && v19 > 1)
      {
        if (*(&v33[0] + 1) >> 62 != 1 && (*(&v33[0] + 1) >> 62 != 2 || __PAIR128__((*&v33[0] >= 0xDuLL) + *(&v33[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v33[0] - 13) >= 2))
        {
          sub_1D8C2BBF0(*&v33[0], *(&v33[0] + 1));
          result = swift_unknownObjectRelease();
LABEL_33:
          v7 = v35 + 1;
          if (v35 + 1 < v4)
          {
            continue;
          }

          return result;
        }

        v30[0] = *&v33[0];
        LOBYTE(v19) = 2;
      }

      else
      {
        v30[0] = *&v33[0];
      }

      break;
    }

    v30[1] = *(&v33[0] + 1);
    sub_1D8C29F08(v30, v19, &v31);
    v33[0] = v29;
    v33[1] = v31;
    v34[0] = v32[0];
    *(v34 + 9) = *(v32 + 9);
    swift_unknownObjectRetain();
    a2(v33);
    sub_1D8C3D128(v33);
    sub_1D8C2BBF0(v28, v24);
    result = swift_unknownObjectRelease();
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_1D8C4406C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  ObjectType = swift_getObjectType();
  v11 = (*(a2 + 24))(0xD000000000000024, 0x80000001D8C8BB70, ObjectType, a2);
  if (!v3)
  {
    v13 = v11;
    *(&v20 + 1) = v12;
    v21 = MEMORY[0x1DA725490](16, MEMORY[0x1E69E6158], &type metadata for SchematizedDataComposer.Container, MEMORY[0x1E69E6168]);
    *&v20 = v13;

    SchematizedDataComposer.subscript.setter(v6, v7, 1701667182, 0xE400000000000000);
    if (v9 >> 60 == 15)
    {
      sub_1D8C75164(0x736E6F6974706FLL, 0xE700000000000000, &v16);
      sub_1D8C31D74(v16, *(&v16 + 1), v17, v18, v19);
    }

    else
    {
      v22[0] = v8;
      v22[1] = v9;
      v22[2] = 0;
      v22[3] = 0;
      v23 = 2304;
      sub_1D8C2C5E4(v8, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D8C7590C(v22, 0x736E6F6974706FLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    }

    v16 = v20;
    v17 = v21;
    swift_unknownObjectRetain();

    v4 = SchematizedDataComposer.compose()();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return v4;
}

unint64_t UnsafeSchematizedData.data.getter()
{
  v8 = MEMORY[0x1E69E6290];
  v9 = MEMORY[0x1E6969DF8];
  *v7 = *(v0 + 16);
  v1 = __swift_project_boxed_opaque_existential_1(v7, MEMORY[0x1E69E6290]);
  v2 = *v1;
  if (*v1 && (v3 = v1[1], v4 = v3 - v2, v3 != v2))
  {
    if (v4 <= 14)
    {
      v5 = sub_1D8C45074(v2, v3);
    }

    else if (v4 >= 0x7FFFFFFF)
    {
      v5 = sub_1D8C45134(v2, v3);
    }

    else
    {
      v5 = sub_1D8C2B5D0(v2, v3);
    }
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t UnsafeSchematizedData.messageSchema.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t UnsafeSchematizedData.unsafeData.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t UnsafeSchematizedData.value(forFieldPath:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = v11 - v10;
  if (!v10)
  {
    v12 = 0;
  }

  v24 = v3[2];
  v25 = v11;
  v27 = 0;
  v28 = 0;
  v26 = v12;
  v29 = 1;
  swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v9, &v17);
  v20[0] = v17;
  v20[1] = v18 | 0x4000000000000000;

  result = sub_1D8C52B5C(a1, a2, v20, &v21);
  if (!v4)
  {
    v14 = v22;
    v15 = v23;
    if (*(v21 + 2))
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      sub_1D8C2B670(&v17, 0, a3);
    }

    else
    {
      sub_1D8C2F8AC();
      swift_allocError();
      *v16 = 0xD000000000000011;
      *(v16 + 8) = 0x80000001D8C8BBA0;
      *(v16 + 16) = 5;
      swift_willThrow();
    }

    return sub_1D8C2BBF0(v14, v15);
  }

  return result;
}

uint64_t *sub_1D8C4449C(uint64_t *result, uint64_t a2, _BYTE *a3, void (*a4)(unsigned __int128 *), uint64_t a5)
{
  if (*(a2 + 16))
  {
    v22 = *(a2 + 16);
    v20 = result[3];
    v21 = result[2];
    v7 = *result;
    v8 = result[1];
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    v25 = *(a2 + 48);
    v27 = *(a2 + 56);
    ObjectType = swift_getObjectType();
    v12 = *(v8 + 56);

    v13 = v12(v10, v9, ObjectType, v8);
    if (v5)
    {
    }

    else
    {
      v15 = v13;
      v16 = v14;
      v17 = 1;
      if ((*a3 & 1) == 0)
      {
        v18 = swift_getObjectType();
        v17 = (*(v16 + 16))(v18, v16) & v27;
      }

      *a3 = v17 & 1;
      v30 = 0;
      v19 = v20 - v21;
      if (!v21)
      {
        v19 = 0;
      }

      v28[0] = v21;
      v28[1] = v20;
      v28[3] = 0;
      v28[4] = 0;
      v28[2] = v19;
      v29 = 1;
      swift_bridgeObjectRetain_n();

      LOBYTE(v10) = sub_1D8C3D1D0(v15, v16, v28, &v30, v10, v9, v25, v27, v22 == 1, a2, a3, a4, a5);

      swift_unknownObjectRelease();
    }

    return (v10 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1D8C44684(uint64_t *result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (*(a2 + 16))
  {
    v21 = *(a2 + 16);
    v19 = result[3];
    v20 = result[2];
    v6 = *result;
    v7 = result[1];
    v9 = *(a2 + 32);
    v8 = *(a2 + 40);
    v23 = *(a2 + 48);
    v25 = *(a2 + 56);
    ObjectType = swift_getObjectType();
    v11 = *(v7 + 56);

    v12 = v11(v9, v8, ObjectType, v7);
    if (v4)
    {
    }

    else
    {
      v14 = v12;
      v15 = v13;
      v16 = 1;
      if ((*a3 & 1) == 0)
      {
        v17 = swift_getObjectType();
        v16 = (*(v15 + 16))(v17, v15) & v25;
      }

      *a3 = v16 & 1;
      v28 = 0;
      v18 = v19 - v20;
      if (!v20)
      {
        v18 = 0;
      }

      v26[0] = v20;
      v26[1] = v19;
      v26[3] = 0;
      v26[4] = 0;
      v26[2] = v18;
      v27 = 1;

      LOBYTE(v9) = sub_1D8C3EA00(v14, v15, v26, &v28, v9, v8, v23, v25, v21 == 1, a2, a3, a4);

      swift_unknownObjectRelease();
    }

    return (v9 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1D8C448BC(uint64_t *result, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *, uint64_t *, uint64_t, uint64_t, uint64_t, void, BOOL, uint64_t, _BYTE *, uint64_t))
{
  if (*(a2 + 16))
  {
    v22 = *(a2 + 16);
    v20 = result[3];
    v21 = result[2];
    v7 = *result;
    v8 = result[1];
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    v24 = *(a2 + 48);
    v27 = *(a2 + 56);
    ObjectType = swift_getObjectType();
    v12 = *(v8 + 56);

    v13 = v12(v10, v9, ObjectType, v8);
    if (v5)
    {
    }

    else
    {
      v15 = v13;
      v16 = v14;
      v17 = 1;
      if ((*a3 & 1) == 0)
      {
        v18 = swift_getObjectType();
        v17 = (*(v16 + 16))(v18, v16) & v27;
      }

      *a3 = v17 & 1;
      v30 = 0;
      v19 = v20 - v21;
      if (!v21)
      {
        v19 = 0;
      }

      v28[0] = v21;
      v28[1] = v20;
      v28[3] = 0;
      v28[4] = 0;
      v28[2] = v19;
      v29 = 1;

      LOBYTE(ObjectType) = a5(v15, v16, v28, &v30, v10, v9, v24, v27, v22 == 1, a2, a3, a4);

      swift_unknownObjectRelease();
    }

    return (ObjectType & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *UnsafeSchematizedData.forEachValue(_:)(void (*a1)(__int128 *), uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[3] - v2[2];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 40))(ObjectType, v7);
  if (!v3)
  {
    sub_1D8C43848(result, a1, a2);
  }

  return result;
}

uint64_t UnsafeSchematizedData.forEachScalarValue(_:_:)(uint64_t a1, void (*a2)(_OWORD *))
{
  v3 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 24) - v3;
  }

  return sub_1D8C43D40(a1, a2);
}

uint64_t sub_1D8C44BA8()
{
  v1 = sub_1D8C845B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = *(v0 + 2);
  v13 = *(v0 + 3);
  v5 = sub_1D8C845F4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1D8C845E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB140, &qword_1D8C861E0);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1D8C861D0;
  sub_1D8C845A4();
  sub_1D8C84594();
  sub_1D8C451B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB150, &qword_1D8C861E8);
  sub_1D8C45208();
  v12 = *v0;
  sub_1D8C850B4();
  sub_1D8C845C4();
  sub_1D8C4526C();
  v10 = sub_1D8C845D4();

  return v10;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnsafeSchematizedData.asJSON()()
{
  v1 = v0;
  v2 = sub_1D8C84DC4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25[1] = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8C845B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(v0 + 16);
  v27 = *(v0 + 24);
  v9 = sub_1D8C845F4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D8C845E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB140, &qword_1D8C861E0);
  v12 = *(v6 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D8C861D0;
  sub_1D8C845A4();
  sub_1D8C84594();
  *&v28 = v14;
  sub_1D8C451B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB150, &qword_1D8C861E8);
  sub_1D8C45208();
  v26 = *v1;
  sub_1D8C850B4();
  sub_1D8C845C4();
  v28 = v26;
  v29 = v8;
  v30 = v27;
  sub_1D8C4526C();
  v15 = v31;
  v16 = sub_1D8C845D4();
  if (!v15)
  {
    v18 = v16;
    v19 = v17;
    sub_1D8C84DB4();
    v5 = sub_1D8C84DA4();
    v8 = v20;
    sub_1D8C2C684(v18, v19);
    if (!v8)
    {
      v5 = 0x80000001D8C8BBC0;
      sub_1D8C2F8AC();
      swift_allocError();
      *v23 = 0xD000000000000017;
      *(v23 + 8) = 0x80000001D8C8BBC0;
      *(v23 + 16) = 2;
      swift_willThrow();
    }
  }

  v21 = v5;
  v22 = v8;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

unint64_t sub_1D8C45074(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1D8C3A85C(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8C45134(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D8C846C4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D8C84674();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D8C84714();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_1D8C451B0()
{
  result = qword_1ECAAB148;
  if (!qword_1ECAAB148)
  {
    sub_1D8C845B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB148);
  }

  return result;
}

unint64_t sub_1D8C45208()
{
  result = qword_1ECAAB158;
  if (!qword_1ECAAB158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAB150, &qword_1D8C861E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB158);
  }

  return result;
}

unint64_t sub_1D8C4526C()
{
  result = qword_1ECAAB160;
  if (!qword_1ECAAB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB160);
  }

  return result;
}

uint64_t sub_1D8C452D0(uint64_t result)
{
  v2 = result & 7;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return sub_1D8C45570(result >> 3);
    }

    if (v2 == 4)
    {
      goto LABEL_44;
    }

    if (v2 != 5)
    {
      goto LABEL_46;
    }

    v6 = v1[3];
    v7 = __OFADD__(v6, 4);
    v8 = v6 + 4;
    if (!v7)
    {
LABEL_15:
      v1[3] = v8;
      return result;
    }

    __break(1u);
LABEL_14:
    v9 = v1[3];
    v7 = __OFADD__(v9, 8);
    v8 = v9 + 8;
    if (v7)
    {
LABEL_47:
      __break(1u);
      return result;
    }

    goto LABEL_15;
  }

  if ((result & 7) == 0)
  {
    v10 = *v1;
    if (*v1)
    {
      v8 = v1[1] - v10;
      v4 = v1[3];
      if (v4 >= v8)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v4 = v1[3];
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_44;
      }

      v8 = 0;
    }

    v3 = (v4 + 1);
    if ((*(v10 + v4) & 0x80000000) == 0)
    {
      v1[3] = v3;
      return result;
    }

    goto LABEL_31;
  }

  if (v2 == 1)
  {
    goto LABEL_14;
  }

  if (v2 != 2)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v3 = *v1;
  if (*v1)
  {
    v4 = v1[1] - v3;
    v5 = v1[3];
    if (v5 >= v4)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v5 = v1[3];
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_44;
    }

    v4 = 0;
  }

  v11 = v3[v5];
  v10 = v5 + 1;
  if (v11 < 0)
  {
    if (v10 >= v4)
    {
      goto LABEL_44;
    }

    v11 &= 0x7Fu;
    v3 += v10;
    v10 = v5 + 2;
    v18 = 7;
    while (1)
    {
      v19 = *v3++;
      v11 |= (v19 & 0x7F) << v18;
      if ((v19 & 0x80) == 0)
      {
        break;
      }

      if (v10 < v4)
      {
        ++v10;
        v17 = v18 > 0x38;
        v18 += 7;
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_44;
    }
  }

  v1[3] = v10;
  if ((v11 & 0x80000000) != 0)
  {
LABEL_44:
    sub_1D8C36A64();
    swift_allocError();
    *v20 = xmmword_1D8C86190;
    *(v20 + 16) = 2;
    return swift_willThrow();
  }

  v12 = v11 & 0x7FFFFFFF;
  v7 = __OFADD__(v10, v12);
  v8 = v10 + v12;
  if (!v7)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_31:
  if (v3 >= v8)
  {
    goto LABEL_44;
  }

  v13 = &v3[v10];
  v14 = v4 + 2;
  v15 = 7;
  while (1)
  {
    v16 = *v13++;
    if ((v16 & 0x80000000) == 0)
    {
      break;
    }

    if (v14 < v8)
    {
      ++v14;
      v17 = v15 > 0x38;
      v15 += 7;
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_44;
  }

  v1[3] = v14;
  return result;
}

uint64_t Reader.init(unsafeData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 - result;
  *a3 = result;
  *(a3 + 8) = a2;
  if (!result)
  {
    v3 = 0;
  }

  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = v3;
  *(a3 + 40) = 1;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8C454F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8C45518(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1D8C45570(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB168, &qword_1D8C86250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8C861A0;
  *(inited + 32) = a1;
  v4 = *v1;
  v5 = v1[1] - *v1;
  v6 = *v1 + 1;
  while (1)
  {
    v7 = v1[3];
    if (v4)
    {
      v8 = v5;
      if (v7 >= v5)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_71;
      }

      v8 = 0;
    }

    v9 = *(v4 + v7);
    v10 = v7 + 1;
    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    v1[3] = v10;
LABEL_17:
    v14 = v9 & 7;
    v15 = v9 < 8 || v14 > 5;
    if (v15)
    {
      goto LABEL_71;
    }

    if ((v9 & 7) > 2)
    {
      if (v14 != 3)
      {
        if (v14 != 4)
        {
          v16 = __OFADD__(v10, 4);
          v17 = v10 + 4;
          if (v16)
          {
            goto LABEL_75;
          }

          goto LABEL_56;
        }

        v18 = *(inited + 16);
        if (!v18 || (v19 = v18 - 1, v20 = *(inited + 8 * v19 + 32), *(inited + 16) = v19, v20 != v9 >> 3))
        {

          sub_1D8C36A64();
          swift_allocError();
          *v37 = xmmword_1D8C86190;
          *(v37 + 16) = 2;
          result = swift_willThrow();
          goto LABEL_73;
        }

        goto LABEL_49;
      }

      v24 = *(inited + 16);
      v23 = *(inited + 24);
      if (v24 >= v23 >> 1)
      {
        inited = sub_1D8C4A780((v23 > 1), v24 + 1, 1, inited);
      }

      *(inited + 16) = v24 + 1;
      *(inited + 8 * v24 + 32) = v9 >> 3;
      if (!*(inited + 16))
      {
        goto LABEL_72;
      }
    }

    else if ((v9 & 7) != 0)
    {
      if (v14 == 1)
      {
        v16 = __OFADD__(v10, 8);
        v17 = v10 + 8;
        if (v16)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
        }
      }

      else
      {
        if (v4)
        {
          v22 = v5;
          if (v10 >= v5)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_71;
          }

          v22 = 0;
        }

        v26 = *(v4 + v10);
        v27 = v10 + 1;
        if (v26 < 0)
        {
          if (v27 >= v22)
          {
            goto LABEL_71;
          }

          v26 &= 0x7Fu;
          v31 = (v6 + v10);
          v27 = v10 + 2;
          v32 = 7;
          while (1)
          {
            v33 = *v31++;
            v26 |= (v33 & 0x7F) << v32;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            if (v27 < v22)
            {
              ++v27;
              v15 = v32 > 0x38;
              v32 += 7;
              if (!v15)
              {
                continue;
              }
            }

            goto LABEL_71;
          }
        }

        v1[3] = v27;
        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_71;
        }

        v17 = v27 + (v26 & 0x7FFFFFFF);
        if (__OFADD__(v27, v26 & 0x7FFFFFFF))
        {
          goto LABEL_76;
        }
      }

LABEL_56:
      v1[3] = v17;
      if (!*(inited + 16))
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v4)
      {
        v21 = v5;
        if (v10 >= v5)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_71;
        }

        v21 = 0;
      }

      v25 = v10 + 1;
      if (*(v4 + v10) < 0)
      {
        if (v25 >= v21)
        {
          goto LABEL_71;
        }

        v28 = (v6 + v10);
        v17 = v10 + 2;
        v29 = 7;
        while (1)
        {
          v30 = *v28++;
          if ((v30 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          if (v17 < v21)
          {
            ++v17;
            v15 = v29 > 0x38;
            v29 += 7;
            if (!v15)
            {
              continue;
            }
          }

          goto LABEL_71;
        }
      }

      v1[3] = v25;
LABEL_49:
      if (!*(inited + 16))
      {
        goto LABEL_72;
      }
    }
  }

  if (v10 < v8)
  {
    v9 &= 0x7Fu;
    v11 = (v6 + v7);
    v10 = v7 + 2;
    v12 = 7;
    while (1)
    {
      v13 = *v11++;
      v9 |= (v13 & 0x7F) << v12;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      if (v10 < v8)
      {
        ++v10;
        v15 = v12 > 0x38;
        v12 += 7;
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_71;
    }

    v1[3] = v10;
    if (v9 <= 0xFFFFFFFE)
    {
      goto LABEL_17;
    }
  }

LABEL_71:
  sub_1D8C36A64();
  swift_allocError();
  *v34 = xmmword_1D8C86190;
  *(v34 + 16) = 2;
  swift_willThrow();
LABEL_72:

LABEL_73:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_enum_tag_for_layout_string_17PoirotSchematizer18SerializationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D8C45930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8C45978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8C459BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t FieldSchemaDescribing.asPublic()@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
  return swift_unknownObjectRetain();
}

uint64_t FieldSchema.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(*(v2 + 8) + 8))(ObjectType);
}

uint64_t FieldSchema.options.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 32))(ObjectType, v2);
}

uint64_t FieldSchema.isRepeated.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(ObjectType, v2) & 1;
}

uint64_t FieldSchema.isOptional.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 24))(ObjectType, v2) & 1;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FieldSchema.getFieldNumber()()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 48))(ObjectType, v2);
}

uint64_t FieldSchema.getType()()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 56))(ObjectType, v2);
}

uint64_t static SchemaManifestConstructing.makeSchemaManifest()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1EDED2ED0 != -1)
  {
    swift_once();
  }

  v6 = unk_1EDED2EC0;
  *a3 = qword_1EDED2EB8;
  a3[1] = v6;
  v8 = *(a2 + 40);

  return v8(a3, a1, a2);
}

uint64_t Sequence<>.makeSchemaManifest()()
{
  if (qword_1EDED2ED0 != -1)
  {
    swift_once();
  }

  return sub_1D8C84F24();
}

double sub_1D8C45E84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  (*(a4 + 40))(a2, a3, a4);
  (*(a4 + 32))(&v15, a3, a4);
  v11 = v15;
  v12 = (*(a4 + 16))(a3, a4);
  *a6 = v11;
  *(a6 + 8) = v12;
  *(a6 + 16) = v13;
  *(a6 + 24) = a1;
  *(a6 + 32) = a5;
  *(a6 + 36) = 0;
  *(a6 + 40) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  result = 0.0;
  *(a6 + 48) = xmmword_1D8C86390;
  return result;
}

uint64_t static SchemaManifestConstructing.makeAsOneofField(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(a5 + 40))(a3, a4, a5);
  (*(a5 + 32))(&v14, a4, a5);
  v11 = v14;
  result = (*(a5 + 16))(a4, a5);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    *a6 = v11;
    *(a6 + 8) = result;
    *(a6 + 16) = v13;
    *(a6 + 24) = a1;
    *(a6 + 32) = 0;
    *(a6 + 36) = a2;
    *(a6 + 40) = 0;
    result = sub_1D8C2C670(0, 0xF000000000000000);
    *(a6 + 48) = xmmword_1D8C86390;
    return result;
  }

  __break(1u);
  return result;
}

__n128 static MessageManifestConstructing.makeMapEntryField(_:_:_:_:_:_:_:)@<Q0>(unint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, char *a5@<X6>, uint64_t a6@<X7>, __n128 *a7@<X8>, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v31 = *a2;
  v32 = *a5;
  v33 = (*(*(a11 + 8) + 16))(a10);
  v35 = v16;
  MEMORY[0x1DA7255C0](46, 0xE100000000000000);
  sub_1D8C46638();
  v17 = sub_1D8C85084();
  MEMORY[0x1DA7255C0](v17);

  MEMORY[0x1DA7255C0](0x7972746E45, 0xE500000000000000);
  v18 = v33;
  v19 = &type_layout_string_17PoirotSchematizer6AnyKeyV;
  if (*(*a9 + 16))
  {
    sub_1D8C4668C(v33, v35);
    if (v20)
    {
      v30 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB178, &unk_1D8C863A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D8C861D0;
      *(inited + 32) = 7955819;
      *(inited + 40) = 0xE300000000000000;
      if (a3)
      {
        (*(a4 + 40))(a9, a3, a4);
        v22 = (*(a4 + 16))(a3, a4);
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(inited + 96) = xmmword_1D8C86390;
      *(inited + 48) = v31;
      *(inited + 56) = v22;
      *(inited + 64) = v23;
      *(inited + 72) = 1;
      *(inited + 80) = 0;
      *(inited + 84) = 0;
      *(inited + 88) = 1;
      sub_1D8C2C670(0, 0xF000000000000000);
      *(inited + 96) = xmmword_1D8C86390;
      *(inited + 112) = 0x65756C6176;
      *(inited + 120) = 0xE500000000000000;
      if (a6)
      {
        (*(a8 + 40))(a9, a6, a8);
        v24 = (*(a8 + 16))(a6, a8);
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      *(inited + 176) = xmmword_1D8C86390;
      *(inited + 128) = v32;
      *(inited + 136) = v24;
      *(inited + 144) = v25;
      *(inited + 152) = 2;
      *(inited + 160) = 0;
      *(inited + 164) = 0;
      *(inited + 168) = 1;
      sub_1D8C2C670(0, 0xF000000000000000);
      *(inited + 176) = xmmword_1D8C86390;
      v26 = sub_1D8C2E464(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB068, &unk_1D8C87380);
      swift_arrayDestroy();
      sub_1D8C2C670(0, 0xF000000000000000);

      v27 = *a9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *a9;
      sub_1D8C75B98(v26, MEMORY[0x1E69E7CC0], 0, 0xF000000000000000, v18, v35, isUniquelyReferenced_nonNull_native);

      *a9 = v34;
      a1 = v30;
      v19 = &type_layout_string_17PoirotSchematizer6AnyKeyV;
    }
  }

  a7->n128_u8[0] = 9;
  a7->n128_u64[1] = v18;
  a7[1].n128_u64[0] = v35;
  a7[1].n128_u64[1] = a1;
  a7[2].n128_u8[0] = 0;
  a7[2].n128_u32[1] = 0;
  a7[2].n128_u8[8] = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  result = v19[57];
  a7[3] = result;
  return result;
}

uint64_t static EnumManifestConstructing.ensureManifest(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = (*(v5 + 16))(a2, v5);
  v8 = v6;
  v9 = v7;
  if (*(*(a1 + 8) + 16) && (sub_1D8C4668C(v6, v7), (v10 & 1) != 0))
  {
  }

  else
  {
    (*(v5 + 24))(v19, a1, a2, v5);
    v12 = v19[0];
    v13 = v19[1];
    v14 = v19[2];
    v15 = v19[3];
    v16 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + 8);
    sub_1D8C75D50(v12, v13, v14, v15, v8, v9, isUniquelyReferenced_nonNull_native);

    *(a1 + 8) = v18;
  }

  return result;
}

uint64_t static MessageManifestConstructing.ensureManifest(in:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = (*(v5 + 16))(a2, v5);
  v8 = v6;
  v9 = v7;
  if (*(*a1 + 16) && (sub_1D8C4668C(v6, v7), (v10 & 1) != 0))
  {
  }

  else
  {
    (*(v5 + 24))(v19, a1, a2, v5);
    v12 = v19[0];
    v13 = v19[1];
    v14 = v19[2];
    v15 = v19[3];
    v16 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *a1;
    sub_1D8C75B98(v12, v13, v14, v15, v8, v9, isUniquelyReferenced_nonNull_native);

    *a1 = v18;
  }

  return result;
}

unint64_t sub_1D8C46638()
{
  result = qword_1ECAAB170;
  if (!qword_1ECAAB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB170);
  }

  return result;
}

unint64_t sub_1D8C4668C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D8C853B4();
  sub_1D8C84E24();
  v6 = sub_1D8C853E4();

  return sub_1D8C46704(a1, a2, v6);
}

unint64_t sub_1D8C46704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D8C852A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D8C467BC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Bool __swiftcall UnsafeSchematizedData.evaluate(predicateString:)(Swift::String predicateString)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = type metadata accessor for QueryableMessage();
  v11 = *v1;
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
  *v6 = v11;
  *(v6 + 2) = v2;
  *(v6 + 3) = v3;
  v12.receiver = v5;
  v12.super_class = v4;
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v12, sel_init);
  sub_1D8C437A8();
  v8 = sub_1D8C84FF4();
  v9 = [v8 evaluateWithObject_];

  return v9;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SchematizedData.evaluate(predicateString:)(Swift::String predicateString)
{
  v3 = v1[2];
  v4 = v1[3];
  swift_getObjectType();
  v5 = v1[4];
  v6 = v1[5];
  MessageSchemaDescribing.schematizing<A>(data:block:)();
  if (!v2)
  {
    v7 = v9;
  }

  return v7 & 1;
}

void sub_1D8C469FC(__int128 *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = type metadata accessor for QueryableMessage();
  v12 = *a1;
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
  *v8 = v12;
  *(v8 + 2) = v4;
  *(v8 + 3) = v5;
  v13.receiver = v7;
  v13.super_class = v6;
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v13, sel_init);
  sub_1D8C437A8();
  v10 = sub_1D8C84FF4();
  v11 = [v10 evaluateWithObject_];

  *a2 = v11;
}

void sub_1D8C46AF4(__int128 *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1D8C469FC(a1, a2);
}

void *sub_1D8C46B10@<X0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  result = v5(&v10, v9);
  if (!v3)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1D8C46B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[3];
  v42 = v4[2];
  v44 = v4[1];
  *&v51 = sub_1D8C51504(*v4);

  sub_1D8C34214(&v51);
  v11 = v5;
  if (!v5)
  {

    v12 = v51;
    ObjectType = swift_getObjectType();
    v15 = (*(a4 + 24))(0xD00000000000001FLL, 0x80000001D8C8BBE0, ObjectType, a4);
    v17 = v16;
    v45 = a3;
    v18 = MEMORY[0x1DA725490](16, MEMORY[0x1E69E6158], &type metadata for SchematizedDataComposer.Container, MEMORY[0x1E69E6168]);
    *(&v56 + 1) = v17;
    v57 = v18;
    *&v56 = v15;

    SchematizedDataComposer.subscript.setter(a1, a2, 1701667182, 0xE400000000000000);
    if (v10 >> 60 != 15)
    {
      goto LABEL_9;
    }

    sub_1D8C75164(0x736E6F6974706FLL, 0xE700000000000000, &v51);
    sub_1D8C31D74(v51, *(&v51 + 1), v52, *(&v52 + 1), v53);
    v19 = *(v12 + 16);
    if (v19)
    {
      while (1)
      {
        v60 = MEMORY[0x1E69E7CC0];
        sub_1D8C85184();
        if (*(v12 + 16))
        {
          break;
        }

LABEL_8:
        __break(1u);
LABEL_9:
        v58[0] = v42;
        v58[1] = v10;
        v58[2] = 0;
        v58[3] = 0;
        v59 = 2304;
        sub_1D8C2C5E4(v42, v10);
        v30 = v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v51 = v30;
        sub_1D8C7590C(v58, 0x736E6F6974706FLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v57 = v51;
        v19 = *(v12 + 16);
        if (!v19)
        {
          goto LABEL_10;
        }
      }

      v20 = 0;
      v21 = (v12 + 48);
      v22 = v19 - 1;
      while (1)
      {
        v51 = *(v21 - 1);
        v23 = *v21;
        v24 = v21[1];
        v25 = v21[3];
        v54 = v21[2];
        v55 = v25;
        v52 = v23;
        v53 = v24;
        v27 = *(&v51 + 1);
        v26 = v51;
        v28 = v21[1];
        v47 = *v21;
        v48 = v28;
        v29 = v21[3];
        v49 = v21[2];
        v50 = v29;
        sub_1D8C34EF8(&v51, v46);
        sub_1D8C36E20(v26, v27, v45, a4);
        sub_1D8C34F68(&v51);
        sub_1D8C85154();
        v10 = *(v60 + 16);
        sub_1D8C85194();
        sub_1D8C851A4();
        sub_1D8C85164();
        if (v22 == v20)
        {
          break;
        }

        v21 += 5;
        if (++v20 >= *(v12 + 16))
        {
          goto LABEL_8;
        }
      }

      v32 = v60;
    }

    else
    {
LABEL_10:

      v32 = MEMORY[0x1E69E7CC0];
    }

    SchematizedDataComposer.subscript.setter(v32, 0x646C656966, 0xE500000000000000);
    v11 = v44;
    v33 = *(v44 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    if (!v33)
    {
LABEL_17:
      SchematizedDataComposer.subscript.setter(v34, 0x65645F666F656E6FLL, 0xEA00000000006C63);
      v51 = v56;
      *&v52 = v57;
      swift_unknownObjectRetain();

      v41 = SchematizedDataComposer.compose()();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return v41;
    }

    v43 = a4;
    v46[0] = MEMORY[0x1E69E7CC0];
    sub_1D8C85184();
    v35 = 0;
    v36 = (v44 + 56);
    while (v35 < *(v11 + 16))
    {
      v37 = *(v36 - 2);
      v38 = *(v36 - 1);
      v39 = *v36;
      *&v51 = *(v36 - 3);
      *(&v51 + 1) = v37;
      *&v52 = v38;
      *(&v52 + 1) = v39;

      sub_1D8C2C5D0(v38, v39);
      sub_1D8C4406C(v45, v43);

      sub_1D8C2C670(v38, v39);
      ++v35;
      sub_1D8C85154();
      v40 = *(v46[0] + 16);
      sub_1D8C85194();
      sub_1D8C851A4();
      sub_1D8C85164();
      v36 += 4;
      v11 = v44;
      if (v33 == v35)
      {
        v34 = v46[0];
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  MEMORY[0x1DA725E90](v11);

  __break(1u);
  return result;
}

uint64_t sub_1D8C4702C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  v9 = *a3;
  v38 = a3[1];
  v39 = a3[2];
  v35 = a3[3];
  v10 = *(*a3 + 64);
  v42 = MEMORY[0x1E69E7CD0];
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v13; result = sub_1D8C47994(&v41, *(*(v9 + 56) + ((v17 << 9) | (8 * v18)))))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      v19 = v42;
      v5[4] = v9;
      v5[5] = v19;
      ObjectType = swift_getObjectType();

      v21 = 0;
      if (sub_1D8C4ED24(ObjectType, a5))
      {
        v22 = v36;
        if (v39 >> 60 != 15)
        {
          sub_1D8C2C5E4(v38, v39);
          sub_1D8C4ED88(ObjectType, a5);
          if (v36)
          {
            sub_1D8C2C670(v38, v39);

            swift_unknownObjectRelease();

            sub_1D8C2C670(v38, v39);

            v26 = 0;
            goto LABEL_24;
          }

          v24 = v23;
          v25 = swift_getObjectType();
          v21 = (*(v24 + 80))(v38, v39, v25, v24);
          swift_unknownObjectRelease();
          sub_1D8C2C670(v38, v39);
        }
      }

      else
      {
        v22 = v36;
      }

      v5[6] = v21;
      if (*(v35 + 16) && (sub_1D8C4EDD0(ObjectType, a5) & 1) != 0)
      {
        v27 = sub_1D8C4EE34(ObjectType, a5);
        if (v22)
        {

          sub_1D8C2C670(v38, v39);
          swift_unknownObjectRelease();

          v26 = 1;
LABEL_24:
          v32 = v6[4];

          v33 = v6[5];

          if (v26)
          {
            v34 = v6[6];
          }

          swift_deallocPartialClassInstance();
          return v6;
        }

        v30 = v27;
        v31 = v28;
        swift_unknownObjectRetain();
        v29 = sub_1D8C4885C(v35, v30, v31);

        swift_unknownObjectRelease_n();
        sub_1D8C2C670(v38, v39);
        swift_unknownObjectRelease();
      }

      else
      {

        sub_1D8C2C670(v38, v39);

        v29 = sub_1D8C2E35C(MEMORY[0x1E69E7CC0]);
        swift_unknownObjectRelease();
      }

      v6[7] = v29;
      v6[2] = a1;
      v6[3] = a2;
      return v6;
    }

    v13 = *(v9 + 64 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C47458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  if (*(v6 + 16))
  {
    v7 = sub_1D8C4668C(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 8 * v7);
    }
  }

  sub_1D8C85124();

  MEMORY[0x1DA7255C0](*(v3 + 16), *(v3 + 24));
  MEMORY[0x1DA7255C0](8236, 0xE200000000000000);
  MEMORY[0x1DA7255C0](a1, a2);
  MEMORY[0x1DA7255C0](0x65756C617620, 0xE600000000000000);
  sub_1D8C2F8AC();
  swift_allocError();
  *v10 = 0x203A6D756E45;
  *(v10 + 8) = 0xE600000000000000;
  *(v10 + 16) = 4;
  return swift_willThrow();
}

uint64_t sub_1D8C47574(uint64_t result)
{
  v2 = 0;
  v3 = v1[4];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v8 << 6);
    if (*(*(v3 + 56) + 8 * v10) == result)
    {
      v11 = (*(v3 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];

      return v12;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      sub_1D8C85124();

      MEMORY[0x1DA7255C0](v1[2], v1[3]);
      MEMORY[0x1DA7255C0](8236, 0xE200000000000000);
      v14 = sub_1D8C85274();
      MEMORY[0x1DA7255C0](v14);

      MEMORY[0x1DA7255C0](0x65756C617620, 0xE600000000000000);
      v12 = 0x203A6D756E45;
      sub_1D8C2F8AC();
      swift_allocError();
      *v15 = 0x203A6D756E45;
      *(v15 + 8) = 0xE600000000000000;
      *(v15 + 16) = 4;
      swift_willThrow();
      return v12;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C47728()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];
}

uint64_t sub_1D8C47768()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1D8C47844(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D8C853B4();
  sub_1D8C84E24();
  v9 = sub_1D8C853E4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1D8C852A4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D8C47EF8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D8C47994(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1D8C853A4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1D8C48078(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8C47A74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB188, &qword_1D8C86488);
  result = sub_1D8C850F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8C47CD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB180, &qword_1D8C86480);
  result = sub_1D8C850F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1D8C853A4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8C47EF8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D8C47A74(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D8C48198();
      goto LABEL_16;
    }

    sub_1D8C48434(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D8C853B4();
  sub_1D8C84E24();
  result = sub_1D8C853E4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D8C852A4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D8C85344();
  __break(1u);
  return result;
}

uint64_t sub_1D8C48078(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8C47CD4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D8C482F4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D8C4866C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1D8C853A4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8C85344();
  __break(1u);
  return result;
}

void *sub_1D8C48198()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB188, &qword_1D8C86488);
  v2 = *v0;
  v3 = sub_1D8C850E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D8C482F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB180, &qword_1D8C86480);
  v2 = *v0;
  v3 = sub_1D8C850E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D8C48434(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB188, &qword_1D8C86488);
  result = sub_1D8C850F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1D8C853B4();

      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D8C4866C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB180, &qword_1D8C86480);
  result = sub_1D8C850F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1D8C853A4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D8C4885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAFF0, &qword_1D8C85BF8);
  result = sub_1D8C85214();
  v8 = 0;
  v31 = result;
  v32 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v29 = (v12 + 63) >> 6;
  v33 = a3;
  v30 = result + 64;
  if (v14)
  {
    while (1)
    {
      v35 = v4;
      v15 = __clz(__rbit64(v14));
      v34 = (v14 - 1) & v14;
LABEL_10:
      v18 = v15 | (v8 << 6);
      v19 = *(*(v32 + 48) + 8 * v18);
      v20 = (*(v32 + 56) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      ObjectType = swift_getObjectType();
      v24 = *(v33 + 80);
      sub_1D8C2C5E4(v21, v22);
      v25 = v24(v21, v22, ObjectType, v33);
      v4 = v35;
      sub_1D8C2C684(v21, v22);
      if (v35)
      {
        break;
      }

      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v31;
      *(v31[6] + 8 * v18) = v19;
      *(v31[7] + 8 * v18) = v25;
      v26 = v31[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      v31[2] = v28;
      v14 = v34;
      if (!v34)
      {
        goto LABEL_5;
      }
    }

    return v31;
  }

  else
  {
LABEL_5:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v29)
      {
        return result;
      }

      v17 = *(v10 + 8 * v8);
      ++v16;
      if (v17)
      {
        v35 = v4;
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t _s17PoirotSchematizer0B5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 3)
  {
    if (*(a1 + 16) > 1u)
    {
      if (v4 == 2)
      {
        if (v7 == 2)
        {
          if (v3 == v6 && v2 == v5)
          {
            sub_1D8C49360(*a1, v2, 2u);
            sub_1D8C49360(v3, v2, 2u);
            sub_1D8C49378(v3, v2, 2u);
            v8 = v3;
            v9 = v2;
            v10 = 2;
            goto LABEL_89;
          }

          v17 = *a1;
          v13 = sub_1D8C852A4();
          sub_1D8C49360(v6, v5, 2u);
          sub_1D8C49360(v3, v2, 2u);
          sub_1D8C49378(v3, v2, 2u);
          v14 = v6;
          v15 = v5;
          v16 = 2;
          goto LABEL_71;
        }
      }

      else if (v7 == 3)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1D8C49360(*a1, v2, 3u);
          sub_1D8C49360(v3, v2, 3u);
          sub_1D8C49378(v3, v2, 3u);
          v8 = v3;
          v9 = v2;
          v10 = 3;
          goto LABEL_89;
        }

        v19 = *a1;
        v13 = sub_1D8C852A4();
        sub_1D8C49360(v6, v5, 3u);
        sub_1D8C49360(v3, v2, 3u);
        sub_1D8C49378(v3, v2, 3u);
        v14 = v6;
        v15 = v5;
        v16 = 3;
        goto LABEL_71;
      }

      goto LABEL_90;
    }

    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1D8C49360(*a1, v2, 0);
          sub_1D8C49360(v3, v2, 0);
          sub_1D8C49378(v3, v2, 0);
          v8 = v3;
          v9 = v2;
          v10 = 0;
          goto LABEL_89;
        }

        v23 = *a1;
        v13 = sub_1D8C852A4();
        sub_1D8C49360(v6, v5, 0);
        sub_1D8C49360(v3, v2, 0);
        sub_1D8C49378(v3, v2, 0);
        v14 = v6;
        v15 = v5;
        v16 = 0;
LABEL_71:
        sub_1D8C49378(v14, v15, v16);
        return v13 & 1;
      }

LABEL_90:
      sub_1D8C49360(*a2, *(a2 + 8), v7);
      sub_1D8C49360(v3, v2, v4);
      sub_1D8C49378(v3, v2, v4);
      sub_1D8C49378(v6, v5, v7);
      return 0;
    }

    if (v7 != 1)
    {
      goto LABEL_90;
    }

    if (v3 != v6 || v2 != v5)
    {
      v18 = *a1;
      v13 = sub_1D8C852A4();
      sub_1D8C49360(v6, v5, 1u);
      sub_1D8C49360(v3, v2, 1u);
      sub_1D8C49378(v3, v2, 1u);
      v14 = v6;
      v15 = v5;
      v16 = 1;
      goto LABEL_71;
    }

    v11 = 1;
    sub_1D8C49360(*a1, v2, 1u);
    sub_1D8C49360(v3, v2, 1u);
    sub_1D8C49378(v3, v2, 1u);
    sub_1D8C49378(v3, v2, 1u);
  }

  else
  {
    if (*(a1 + 16) <= 5u)
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          if (v3 == v6 && v2 == v5)
          {
            sub_1D8C49360(*a1, v2, 4u);
            sub_1D8C49360(v3, v2, 4u);
            sub_1D8C49378(v3, v2, 4u);
            v8 = v3;
            v9 = v2;
            v10 = 4;
            goto LABEL_89;
          }

          v21 = *a1;
          v13 = sub_1D8C852A4();
          sub_1D8C49360(v6, v5, 4u);
          sub_1D8C49360(v3, v2, 4u);
          sub_1D8C49378(v3, v2, 4u);
          v14 = v6;
          v15 = v5;
          v16 = 4;
          goto LABEL_71;
        }
      }

      else if (v7 == 5)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1D8C49360(*a1, v2, 5u);
          sub_1D8C49360(v3, v2, 5u);
          sub_1D8C49378(v3, v2, 5u);
          v8 = v3;
          v9 = v2;
          v10 = 5;
          goto LABEL_89;
        }

        v22 = *a1;
        v13 = sub_1D8C852A4();
        sub_1D8C49360(v6, v5, 5u);
        sub_1D8C49360(v3, v2, 5u);
        sub_1D8C49378(v3, v2, 5u);
        v14 = v6;
        v15 = v5;
        v16 = 5;
        goto LABEL_71;
      }

      goto LABEL_90;
    }

    if (v4 == 6)
    {
      if (v7 == 6)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1D8C49360(*a1, v2, 6u);
          sub_1D8C49360(v3, v2, 6u);
          sub_1D8C49378(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
          goto LABEL_89;
        }

        v12 = *a1;
        v13 = sub_1D8C852A4();
        sub_1D8C49360(v6, v5, 6u);
        sub_1D8C49360(v3, v2, 6u);
        sub_1D8C49378(v3, v2, 6u);
        v14 = v6;
        v15 = v5;
        v16 = 6;
        goto LABEL_71;
      }

      goto LABEL_90;
    }

    if (v4 == 7)
    {
      if (v7 == 7)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1D8C49360(*a1, v2, 7u);
          sub_1D8C49360(v3, v2, 7u);
          sub_1D8C49378(v3, v2, 7u);
          v8 = v3;
          v9 = v2;
          v10 = 7;
LABEL_89:
          sub_1D8C49378(v8, v9, v10);
          return 1;
        }

        v20 = *a1;
        v13 = sub_1D8C852A4();
        sub_1D8C49360(v6, v5, 7u);
        sub_1D8C49360(v3, v2, 7u);
        sub_1D8C49378(v3, v2, 7u);
        v14 = v6;
        v15 = v5;
        v16 = 7;
        goto LABEL_71;
      }

      goto LABEL_90;
    }

    if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 ^ 6 | v2)
        {
          if (v7 != 8 || v6 != 7 || v5)
          {
            goto LABEL_90;
          }

          sub_1D8C49378(*a1, v2, 8u);
          v8 = 7;
        }

        else
        {
          if (v7 != 8 || v6 != 6 || v5)
          {
            goto LABEL_90;
          }

          sub_1D8C49378(*a1, v2, 8u);
          v8 = 6;
        }
      }

      else if (v3 ^ 4 | v2)
      {
        if (v7 != 8 || v6 != 5 || v5)
        {
          goto LABEL_90;
        }

        sub_1D8C49378(*a1, v2, 8u);
        v8 = 5;
      }

      else
      {
        if (v7 != 8 || v6 != 4 || v5)
        {
          goto LABEL_90;
        }

        sub_1D8C49378(*a1, v2, 8u);
        v8 = 4;
      }

      goto LABEL_88;
    }

    if (v3 > 1)
    {
      if (v3 ^ 2 | v2)
      {
        if (v7 != 8 || v6 != 3 || v5)
        {
          goto LABEL_90;
        }

        sub_1D8C49378(*a1, v2, 8u);
        v8 = 3;
      }

      else
      {
        if (v7 != 8 || v6 != 2 || v5)
        {
          goto LABEL_90;
        }

        sub_1D8C49378(*a1, v2, 8u);
        v8 = 2;
      }

      goto LABEL_88;
    }

    if (!(v3 | v2))
    {
      if (v7 != 8 || v5 | v6)
      {
        goto LABEL_90;
      }

      sub_1D8C49378(*a1, v2, 8u);
      v8 = 0;
LABEL_88:
      v9 = 0;
      v10 = 8;
      goto LABEL_89;
    }

    if (v7 != 8 || v6 != 1 || v5)
    {
      goto LABEL_90;
    }

    sub_1D8C49378(*a1, v2, 8u);
    v11 = 1;
    sub_1D8C49378(1, 0, 8u);
  }

  return v11;
}

uint64_t get_enum_tag_for_layout_string_17PoirotSchematizer0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

uint64_t sub_1D8C492AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8C492F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8C49338(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D8C49360(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t sub_1D8C49378(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t SchemaManifest.init(withJSON:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v68 = a3;
  v87 = sub_1D8C84B74();
  v82 = *(v87 - 8);
  v6 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v81 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8C848C4();
  v9 = *(v8 - 8);
  v85 = v8;
  v86 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v72 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D8C84994();
  v88 = *(v71 - 8);
  v12 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D8C84A14();
  v73 = *(v77 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v80 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D8C84C74();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = sub_1D8C84914();
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D8C84DC4();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  sub_1D8C84DB4();
  sub_1D8C84DA4();
  if (!v25)
  {
    sub_1D8C4B228();
    swift_allocError();
    *v57 = 0xD000000000000022;
    v57[1] = 0x80000001D8C8BC60;
    swift_willThrow();
    return sub_1D8C2C684(a1, a2);
  }

  sub_1D8C84C64();
  sub_1D8C4B27C();
  sub_1D8C84CD4();
  if (v3)
  {
    return sub_1D8C2C684(a1, a2);
  }

  v26 = MEMORY[0x1E69E7CC0];
  v90 = sub_1D8C2E72C(MEMORY[0x1E69E7CC0]);
  v89 = sub_1D8C2E600(v26);
  result = MEMORY[0x1DA725040]();
  v28 = *(result + 16);
  v29 = v22;
  if (v28)
  {
    v30 = 0;
    v31 = v73;
    v32 = result + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v83 = v88 + 16;
    v84 = (v88 + 8);
    v78 = v86 + 16;
    v79 = (v86 + 8);
    v70 = v82 + 16;
    v69 = (v82 + 8);
    v63 = (v73 + 8);
    v75 = xmmword_1D8C861A0;
    v33 = v80;
    v34 = v81;
    v66 = a2;
    v65 = a1;
    v64 = v19;
    v76 = v29;
    v62 = result;
    v60 = v28;
    v59 = v32;
    v58[1] = v73 + 16;
    while (v30 < *(result + 16))
    {
      v35 = *(v31 + 72);
      v61 = v30;
      (*(v31 + 16))(v33, v32 + v35 * v30, v77);
      sub_1D8C849C4();
      v36 = sub_1D8C84E34();

      v37 = v71;
      if (v36 <= 0)
      {
        v38 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
        v38 = swift_allocObject();
        *(v38 + 16) = v75;
        *(v38 + 32) = sub_1D8C849C4();
        *(v38 + 40) = v39;
      }

      result = sub_1D8C849D4();
      v40 = result;
      v41 = *(result + 16);
      v42 = v72;
      if (v41)
      {
        v43 = 0;
        while (v43 < *(v40 + 16))
        {
          (*(v88 + 16))(v14, v40 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v43, v37);
          sub_1D8C7F8DC(v14, v38, &v90);
          ++v43;
          result = (*v84)(v14, v37);
          if (v41 == v43)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

LABEL_13:

      result = sub_1D8C849A4();
      v44 = result;
      v45 = *(result + 16);
      if (v45)
      {
        v46 = 0;
        while (v46 < *(v44 + 16))
        {
          v47 = v85;
          (*(v86 + 16))(v42, v44 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v46, v85);
          sub_1D8C7D6A4(v42, v38, &v89, &v90);
          ++v46;
          result = (*v79)(v42, v47);
          if (v45 == v46)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_32;
      }

LABEL_17:

      result = sub_1D8C849F4();
      v48 = result;
      v67 = *(result + 16);
      if (v67)
      {
        v49 = 0;
        while (v49 < *(v48 + 16))
        {
          (*(v82 + 16))(v34, v48 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v49, v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
          inited = swift_initStackObject();
          *(inited + 16) = v75;
          *(inited + 32) = sub_1D8C84A54();
          *(inited + 40) = v51;
          v52 = *(v38 + 16);

          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || (v53 = *(v38 + 24) >> 1, v54 = v38, v53 <= v52))
          {
            result = sub_1D8C4AAA0(result, v52 + 1, 1, v38);
            v54 = result;
            v53 = *(result + 24) >> 1;
          }

          if (v53 <= *(v54 + 16))
          {
            goto LABEL_34;
          }

          swift_arrayInitWithCopy();

          ++*(v54 + 16);
          v34 = v81;
          sub_1D8C80328(v81, &v89);
          ++v49;
          (*v69)(v34, v87);

          v29 = v76;
          if (v67 == v49)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_33;
      }

      v29 = v76;
LABEL_27:
      v30 = v61 + 1;
      v33 = v80;
      (*v63)(v80, v77);

      a2 = v66;
      a1 = v65;
      v19 = v64;
      v31 = v73;
      result = v62;
      v32 = v59;
      if (v30 == v60)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:

    sub_1D8C2C684(a1, a2);
    result = (*(v74 + 8))(v29, v19);
    v55 = v90;
    v56 = v68;
    *v68 = v89;
    v56[1] = v55;
  }

  return result;
}

__int128 *SchemaManifest.toJSONDataWithSwiftProtobuf()()
{
  v2 = sub_1D8C84DC4();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8C84C94();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8C84914();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v0;
  v15 = &v25;
  sub_1D8C327B0();
  if (!v1)
  {
    v22 = v11;
    sub_1D8C84C84();
    sub_1D8C4B27C();
    sub_1D8C84CC4();
    v23 = 0;
    (*(v26 + 8))(v9, v6);
    sub_1D8C84DB4();
    v15 = sub_1D8C84D94();
    v17 = v16;

    (*(v24 + 8))(v5, v2);
    if (v17 >> 60 == 15)
    {
      v15 = 0x80000001D8C8BC90;
      sub_1D8C4B228();
      v18 = swift_allocError();
      *v19 = 0xD00000000000001DLL;
      v19[1] = 0x80000001D8C8BC90;
      v23 = v18;
      swift_willThrow();
    }

    (*(v22 + 8))(v14, v10);
  }

  return v15;
}

uint64_t SchemaManifest.toJSONDataWithPoirot()()
{
  v2 = *v0;
  v3 = v0[1];
  *&v12 = v2;
  v4 = sub_1D8C51364(&v12);
  if (!v1)
  {
    *&v12 = v2;
    *(&v12 + 1) = v3;
    v5 = sub_1D8C8130C(v4, &off_1F5450D10);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = v5;
    swift_getObjectType();
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    MessageSchemaDescribing.schematizing<A>(data:block:)();

    v3 = v12;
  }

  return v3;
}

char *sub_1D8C4A268(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1A8, &unk_1D8C866F8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D8C4A36C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1A0, &qword_1D8C866E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB0B0, &qword_1D8C866F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D8C4A5A4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D8C4A780(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB168, &qword_1D8C86250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D8C4A884(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D8C4A994(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8C4AAA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8C4ABAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1C8, &qword_1D8C86728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C4ACC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1B8, &unk_1D8C86710);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C4ADE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1C0, &qword_1D8C87B90);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D8C4AEF4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB208, &unk_1D8C87C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB210, &unk_1D8C86770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C4B028(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1B0, &qword_1D8C86708);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D8C4B134(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D8C4AAA0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1D8C4B228()
{
  result = qword_1ECAAB190;
  if (!qword_1ECAAB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB190);
  }

  return result;
}

unint64_t sub_1D8C4B27C()
{
  result = qword_1ECAAB198;
  if (!qword_1ECAAB198)
  {
    sub_1D8C84914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB198);
  }

  return result;
}

uint64_t sub_1D8C4B2D4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  result = sub_1D8C44BA8();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1D8C4B32C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v3 + 56) + (v12 << 6));
    v17 = v16[2];
    v18 = v16[3];
    v19 = v16[1];
    v44 = *v16;
    v45 = v19;
    v46 = v17;
    v47 = v18;
    v32 = v18;
    v33 = v19;
    v30 = v17;
    v31 = v44;

    sub_1D8C2EE54(&v44, &v40);
    if (!v14)
    {
      return 1;
    }

    v44 = v31;
    v45 = v33;
    v46 = v30;
    v47 = v32;
    v20 = sub_1D8C4668C(v15, v14);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      v40 = v44;
      v41 = v45;
      v42 = v46;
      v43 = v47;
      sub_1D8C2F118(&v40);
      return 0;
    }

    v23 = (*(a2 + 56) + (v20 << 6));
    v24 = v23[3];
    v26 = *v23;
    v25 = v23[1];
    v38[2] = v23[2];
    v38[3] = v24;
    v38[0] = v26;
    v38[1] = v25;
    v27 = v23[1];
    v34 = *v23;
    v35 = v27;
    v28 = v23[3];
    v36 = v23[2];
    v37 = v28;
    sub_1D8C2EE54(v38, &v40);
    v29 = _s17PoirotSchematizer13FieldManifestV2eeoiySbAC_ACtFZ_0(&v34, &v44);
    v39[0] = v34;
    v39[1] = v35;
    v39[2] = v36;
    v39[3] = v37;
    sub_1D8C2F118(v39);
    v40 = v44;
    v41 = v45;
    v42 = v46;
    v43 = v47;
    result = sub_1D8C2F118(&v40);
    if (!v29)
    {
      return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C4B534(uint64_t result, uint64_t a2)
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
  v46 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v47 = (v5 + 63) >> 6;
  v48 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v50 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v3 + 56) + 32 * v11);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];

    v52 = v16;

    v51 = v17;
    v20 = v18;

    sub_1D8C2C5D0(v18, v19);
    v21 = v14 == 0;
    if (!v14)
    {
      return v21;
    }

    v22 = sub_1D8C4668C(v13, v14);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_61;
    }

    v25 = (*(v2 + 56) + 32 * v22);
    v27 = *v25;
    v26 = v25[1];
    v29 = v25[2];
    v28 = v25[3];

    sub_1D8C2C5D0(v29, v28);
    if ((sub_1D8C4B32C(v27, v52) & 1) == 0)
    {
      goto LABEL_60;
    }

    result = sub_1D8C4C4F8(v26, v51);
    if ((result & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v28 >> 60 == 15)
    {
      if (v19 >> 60 != 15)
      {
        goto LABEL_57;
      }

      sub_1D8C2C5D0(v29, v28);
      sub_1D8C2C5D0(v18, v19);
      goto LABEL_54;
    }

    if (v19 >> 60 == 15)
    {
LABEL_57:
      sub_1D8C2C5D0(v29, v28);
      sub_1D8C2C5D0(v18, v19);
      sub_1D8C2C670(v29, v28);
      v44 = v18;
      v45 = v19;
      goto LABEL_59;
    }

    v30 = v28 >> 62;
    v31 = v19 >> 62;
    if (v28 >> 62 == 3)
    {
      if (v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = v28 == 0xC000000000000000;
      }

      v33 = 0;
      v34 = v32 && v19 >> 62 == 3;
      if (v34 && !v18 && v19 == 0xC000000000000000)
      {
        sub_1D8C2C5D0(0, 0xC000000000000000);
        sub_1D8C2C5D0(0, 0xC000000000000000);
        sub_1D8C2C670(0, 0xC000000000000000);
        sub_1D8C2C670(0, 0xC000000000000000);

        sub_1D8C2C670(0, 0xC000000000000000);

        v35 = 0;
        v36 = 0xC000000000000000;
        goto LABEL_55;
      }
    }

    else if (v30)
    {
      if (v30 == 1)
      {
        LODWORD(v33) = HIDWORD(v29) - v29;
        if (__OFSUB__(HIDWORD(v29), v29))
        {
          goto LABEL_67;
        }

        v33 = v33;
      }

      else
      {
        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        v39 = __OFSUB__(v37, v38);
        v33 = v37 - v38;
        if (v39)
        {
          goto LABEL_68;
        }
      }
    }

    else
    {
      v33 = BYTE6(v28);
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        if (v33)
        {
LABEL_58:
          sub_1D8C2C5D0(v29, v28);
          sub_1D8C2C5D0(v18, v19);
          sub_1D8C2C670(v18, v19);
          v44 = v29;
          v45 = v28;
LABEL_59:
          sub_1D8C2C670(v44, v45);
LABEL_60:

          sub_1D8C2C670(v29, v28);
LABEL_61:

          sub_1D8C2C670(v18, v19);
          return 0;
        }

        goto LABEL_53;
      }

      v42 = *(v18 + 16);
      v41 = *(v18 + 24);
      v39 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (v39)
      {
        goto LABEL_65;
      }
    }

    else if (v31)
    {
      LODWORD(v40) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v40 = v40;
    }

    else
    {
      v40 = BYTE6(v19);
    }

    if (v33 != v40)
    {
      goto LABEL_58;
    }

    if (v33 < 1)
    {
LABEL_53:
      sub_1D8C2C5D0(v29, v28);
      sub_1D8C2C5D0(v18, v19);
      sub_1D8C2C670(v18, v19);
LABEL_54:
      sub_1D8C2C670(v29, v28);

      sub_1D8C2C670(v29, v28);

      v35 = v18;
      v36 = v19;
LABEL_55:
      result = sub_1D8C2C670(v35, v36);
      v3 = v48;
      v2 = a2;
      v7 = v50;
    }

    else
    {
      sub_1D8C2C5D0(v29, v28);
      sub_1D8C2C5D0(v18, v19);
      sub_1D8C2C5D0(v18, v19);
      v43 = sub_1D8C76848(v29, v28, v18, v19);
      sub_1D8C2C670(v20, v19);
      sub_1D8C2C670(v29, v28);

      sub_1D8C2C670(v29, v28);

      result = sub_1D8C2C670(v20, v19);
      v3 = v48;
      v2 = a2;
      v7 = v50;
      if ((v43 & 1) == 0)
      {
        return v21;
      }
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v47)
    {
      return 1;
    }

    v10 = *(v46 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v50 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1D8C4BA28(uint64_t result, uint64_t a2)
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
  v45 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v46 = (v5 + 63) >> 6;
  v47 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v49 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(v3 + 56) + 32 * v11);
    v17 = *v15;
    v16 = v15[1];
    v19 = v15[2];
    v18 = v15[3];

    v20 = v17;
    v21 = v19;

    v50 = v16;
    sub_1D8C2C5D0(v16, v19);
    v22 = v13 == 0;

    if (!v13)
    {
      return v22;
    }

    v23 = sub_1D8C4668C(v14, v13);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_61;
    }

    v26 = (*(v2 + 56) + 32 * v23);
    v27 = *v26;
    v28 = v26[1];
    v30 = v26[2];
    v29 = v26[3];

    sub_1D8C2C5D0(v28, v30);

    result = sub_1D8C4BEF8(v27, v20);
    if ((result & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v30 >> 60 == 15)
    {
      if (v21 >> 60 != 15)
      {
        goto LABEL_58;
      }

      sub_1D8C2C5D0(v28, v30);
      sub_1D8C2C5D0(v16, v21);
      goto LABEL_53;
    }

    if (v21 >> 60 == 15)
    {
LABEL_58:
      sub_1D8C2C5D0(v28, v30);
      sub_1D8C2C5D0(v16, v21);
      sub_1D8C2C670(v28, v30);
      sub_1D8C2C670(v16, v21);
LABEL_60:

      sub_1D8C2C670(v28, v30);

LABEL_61:

      sub_1D8C2C670(v50, v21);

      return 0;
    }

    v31 = v30 >> 62;
    v32 = v21 >> 62;
    if (v30 >> 62 == 3)
    {
      if (v28)
      {
        v33 = 0;
      }

      else
      {
        v33 = v30 == 0xC000000000000000;
      }

      v34 = 0;
      v35 = v33 && v21 >> 62 == 3;
      if (v35 && !v16 && v21 == 0xC000000000000000)
      {
        sub_1D8C2C5D0(0, 0xC000000000000000);
        sub_1D8C2C5D0(0, 0xC000000000000000);
        sub_1D8C2C670(0, 0xC000000000000000);
        goto LABEL_53;
      }
    }

    else if (v31)
    {
      if (v31 == 1)
      {
        LODWORD(v34) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
          goto LABEL_68;
        }

        v34 = v34;
      }

      else
      {
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        v38 = __OFSUB__(v36, v37);
        v34 = v36 - v37;
        if (v38)
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v34 = BYTE6(v30);
    }

    if (v32 > 1)
    {
      if (v32 != 2)
      {
        v42 = v29;
        if (v34)
        {
LABEL_59:
          sub_1D8C2C5D0(v28, v30);
          sub_1D8C2C5D0(v50, v21);
          sub_1D8C2C670(v50, v21);
          sub_1D8C2C670(v28, v30);
          goto LABEL_60;
        }

LABEL_52:
        sub_1D8C2C5D0(v28, v30);
        sub_1D8C2C5D0(v50, v21);
        sub_1D8C2C670(v50, v21);
        v29 = v42;
LABEL_53:
        sub_1D8C2C670(v28, v30);
        goto LABEL_54;
      }

      v41 = *(v16 + 16);
      v40 = *(v16 + 24);
      v38 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (v38)
      {
        goto LABEL_65;
      }
    }

    else if (v32)
    {
      LODWORD(v39) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_66;
      }

      v39 = v39;
    }

    else
    {
      v39 = BYTE6(v21);
    }

    v42 = v29;
    if (v34 != v39)
    {
      goto LABEL_59;
    }

    if (v34 < 1)
    {
      goto LABEL_52;
    }

    sub_1D8C2C5D0(v28, v30);
    sub_1D8C2C5D0(v50, v21);
    sub_1D8C2C5D0(v50, v21);
    v44 = sub_1D8C76848(v28, v30, v50, v21);
    sub_1D8C2C670(v50, v21);
    sub_1D8C2C670(v28, v30);
    if ((v44 & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_54:
    v43 = sub_1D8C4C02C(v29, v18);

    sub_1D8C2C670(v28, v30);

    sub_1D8C2C670(v50, v21);

    v3 = v47;
    v2 = a2;
    v7 = v49;
    if (!v43)
    {
      return v22;
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v46)
    {
      return 1;
    }

    v10 = *(v45 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v49 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1D8C4BEF8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1D8C4668C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D8C4C02C(uint64_t a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_75:
    v19 = 1;
    goto LABEL_78;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_77;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v11 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v12 = v4;
      do
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_80;
        }

        if (v4 >= v9)
        {
          goto LABEL_75;
        }

        v13 = *(v5 + 8 * v4);
        ++v12;
      }

      while (!v13);
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
LABEL_13:
      v14 = v10 | (v4 << 6);
      v15 = *(*(v3 + 48) + 8 * v14);
      v16 = (*(v3 + 56) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      sub_1D8C2C5E4(*v16, v17);
      v19 = v17 >> 60 == 15;
      if (v17 >> 60 == 15)
      {
        goto LABEL_78;
      }

      v56 = v11;
      v20 = sub_1D8C46878(v15);
      if ((v21 & 1) == 0)
      {
        goto LABEL_76;
      }

      v22 = (*(v2 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      v25 = v23 >> 62;
      v26 = v17 >> 62;
      if (v23 >> 62 != 3)
      {
        break;
      }

      if (v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = v23 == 0xC000000000000000;
      }

      v28 = v27 && v17 >> 62 == 3;
      if (!v28 || (!v18 ? (v29 = v17 == 0xC000000000000000) : (v29 = 0), !v29))
      {
LABEL_39:
        v32 = 0;
        if (v26 > 1)
        {
          goto LABEL_40;
        }

LABEL_37:
        if (!v26)
        {
          v36 = BYTE6(v17);
          goto LABEL_46;
        }

        LODWORD(v36) = HIDWORD(v18) - v18;
        if (!__OFSUB__(HIDWORD(v18), v18))
        {
          v36 = v36;
          goto LABEL_46;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
      }

      v30 = 0;
      v31 = 0xC000000000000000;
LABEL_53:
      sub_1D8C2C684(v30, v31);
      v3 = a1;
      v8 = v56;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_39;
      }

      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (!v35)
      {
        if (v26 > 1)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_83;
    }

    if (v25)
    {
      LODWORD(v32) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_82;
      }

      v32 = v32;
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = BYTE6(v23);
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    if (v26 != 2)
    {
      if (v32)
      {
        break;
      }

LABEL_52:
      v30 = v18;
      v31 = v17;
      goto LABEL_53;
    }

    v38 = *(v18 + 16);
    v37 = *(v18 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v35)
    {
      goto LABEL_81;
    }

LABEL_46:
    if (v32 != v36)
    {
      break;
    }

    if (v32 < 1)
    {
      goto LABEL_52;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v51 = *(v24 + 24);
        v53 = *(v24 + 16);
        sub_1D8C2C5E4(v24, v23);
        v39 = sub_1D8C84684();
        if (v39)
        {
          v40 = v39;
          v41 = sub_1D8C846A4();
          v42 = v53;
          if (__OFSUB__(v53, v41))
          {
            goto LABEL_86;
          }

          v50 = v53 - v41 + v40;
        }

        else
        {
          v50 = 0;
          v42 = v53;
        }

        if (__OFSUB__(v51, v42))
        {
          goto LABEL_85;
        }

        sub_1D8C84694();
        v47 = v50;
        goto LABEL_72;
      }

      memset(v58, 0, 14);
      sub_1D8C2C5E4(v24, v23);
    }

    else
    {
      if (v25)
      {
        if (v24 >> 32 < v24)
        {
          goto LABEL_84;
        }

        sub_1D8C2C5E4(v24, v23);
        v43 = sub_1D8C84684();
        if (v43)
        {
          v52 = v43;
          v44 = sub_1D8C846A4();
          if (__OFSUB__(v24, v44))
          {
            goto LABEL_87;
          }

          v45 = v24 - v44 + v52;
        }

        else
        {
          v45 = 0;
        }

        sub_1D8C84694();
        v47 = v45;
LABEL_72:
        sub_1D8C76618(v47, v18, v17, v58);
        sub_1D8C2C684(v24, v23);
        sub_1D8C2C684(v18, v17);
        v46 = v58[0];
        goto LABEL_73;
      }

      v58[0] = v24;
      LOWORD(v58[1]) = v23;
      BYTE2(v58[1]) = BYTE2(v23);
      BYTE3(v58[1]) = BYTE3(v23);
      BYTE4(v58[1]) = BYTE4(v23);
      BYTE5(v58[1]) = BYTE5(v23);
      sub_1D8C2C5E4(v24, v23);
    }

    sub_1D8C76618(v58, v18, v17, &v57);
    sub_1D8C2C684(v24, v23);
    sub_1D8C2C684(v18, v17);
    v46 = v57;
LABEL_73:
    v2 = a2;
    v3 = a1;
    v8 = v56;
    if ((v46 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

LABEL_76:
  sub_1D8C2C684(v18, v17);
LABEL_77:
  v19 = 0;
LABEL_78:
  v48 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t sub_1D8C4C4F8(uint64_t a1, uint64_t a2)
{
  v39[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = (a2 + 56);
      v4 = (a1 + 56);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v3 - 1);
        v8 = *v3;
        if (*(v4 - 3) != *(v3 - 3) || *(v4 - 2) != *(v3 - 2))
        {
          v11 = *(v4 - 2);
          v12 = *(v3 - 2);
          if ((sub_1D8C852A4() & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        if (v6 >> 60 == 15)
        {
          break;
        }

        if (v8 >> 60 == 15)
        {
LABEL_68:
          sub_1D8C2C5D0(v7, v6);
          sub_1D8C2C5D0(v9, v8);
          sub_1D8C2C670(v7, v6);
          v32 = v9;
          v33 = v8;
LABEL_70:
          sub_1D8C2C670(v32, v33);
          goto LABEL_71;
        }

        v13 = v6 >> 62;
        v14 = v8 >> 62;
        if (v6 >> 62 != 3)
        {
          if (v13 > 1)
          {
            if (v13 == 2)
            {
              v23 = *(v7 + 16);
              v22 = *(v7 + 24);
              v20 = __OFSUB__(v22, v23);
              v15 = v22 - v23;
              if (v20)
              {
                goto LABEL_75;
              }

LABEL_34:
              if (v14 <= 1)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v15 = 0;
              if (v14 <= 1)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            if (!v13)
            {
              v15 = BYTE6(v6);
              if (v14 > 1)
              {
                goto LABEL_28;
              }

LABEL_35:
              if (v14)
              {
                LODWORD(v21) = HIDWORD(v9) - v9;
                if (__OFSUB__(HIDWORD(v9), v9))
                {
                  goto LABEL_73;
                }

                v21 = v21;
              }

              else
              {
                v21 = BYTE6(v8);
              }

LABEL_41:
              if (v15 != v21)
              {
LABEL_69:

                sub_1D8C2C5D0(v7, v6);

                sub_1D8C2C5D0(v9, v8);
                sub_1D8C2C5D0(v7, v6);
                sub_1D8C2C5D0(v9, v8);
                sub_1D8C2C670(v9, v8);
                sub_1D8C2C670(v7, v6);

                sub_1D8C2C670(v9, v8);

                v32 = v7;
                v33 = v6;
                goto LABEL_70;
              }

              if (v15 >= 1)
              {
                if (v13 > 1)
                {
                  if (v13 != 2)
                  {
                    memset(v39, 0, 14);

                    sub_1D8C2C5D0(v7, v6);

                    sub_1D8C2C5D0(v9, v8);
                    sub_1D8C2C5D0(v7, v6);
                    sub_1D8C2C5D0(v9, v8);
                    sub_1D8C76618(v39, v9, v8, &v38);
                    sub_1D8C2C670(v9, v8);
                    goto LABEL_6;
                  }

                  v36 = *(v7 + 24);
                  v37 = *(v7 + 16);

                  sub_1D8C2C5D0(v7, v6);

                  sub_1D8C2C5D0(v9, v8);
                  sub_1D8C2C5D0(v7, v6);
                  sub_1D8C2C5D0(v9, v8);
                  v24 = sub_1D8C84684();
                  if (v24)
                  {
                    v25 = v24;
                    v26 = sub_1D8C846A4();
                    v27 = v37;
                    if (__OFSUB__(v37, v26))
                    {
                      goto LABEL_78;
                    }

                    v35 = v37 - v26 + v25;
                  }

                  else
                  {
                    v35 = 0;
                    v27 = v37;
                  }

                  if (__OFSUB__(v36, v27))
                  {
                    goto LABEL_77;
                  }

                  sub_1D8C84694();
                  v30 = v35;
                }

                else
                {
                  if (!v13)
                  {
                    v39[0] = v7;
                    LOWORD(v39[1]) = v6;
                    BYTE2(v39[1]) = BYTE2(v6);
                    BYTE3(v39[1]) = BYTE3(v6);
                    BYTE4(v39[1]) = BYTE4(v6);
                    BYTE5(v39[1]) = BYTE5(v6);

                    sub_1D8C2C5D0(v7, v6);

                    sub_1D8C2C5D0(v9, v8);
                    sub_1D8C2C5D0(v7, v6);
                    sub_1D8C2C5D0(v9, v8);
                    sub_1D8C76618(v39, v9, v8, &v38);
                    sub_1D8C2C670(v9, v8);
LABEL_6:
                    v5 = v38;
LABEL_7:
                    sub_1D8C2C670(v7, v6);

                    sub_1D8C2C670(v9, v8);

                    sub_1D8C2C670(v7, v6);
                    if ((v5 & 1) == 0)
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_8;
                  }

                  if (v7 >> 32 < v7)
                  {
                    goto LABEL_76;
                  }

                  sub_1D8C2C5D0(v7, v6);

                  sub_1D8C2C5D0(v9, v8);
                  sub_1D8C2C5D0(v7, v6);
                  sub_1D8C2C5D0(v9, v8);
                  v28 = sub_1D8C84684();
                  if (v28)
                  {
                    v29 = sub_1D8C846A4();
                    if (__OFSUB__(v7, v29))
                    {
                      goto LABEL_79;
                    }

                    v28 += v7 - v29;
                  }

                  sub_1D8C84694();
                  v30 = v28;
                }

                sub_1D8C76618(v30, v9, v8, v39);
                sub_1D8C2C670(v9, v8);
                v5 = v39[0];
                goto LABEL_7;
              }

              goto LABEL_46;
            }

            LODWORD(v15) = HIDWORD(v7) - v7;
            if (__OFSUB__(HIDWORD(v7), v7))
            {
              goto LABEL_74;
            }

            v15 = v15;
            if (v14 <= 1)
            {
              goto LABEL_35;
            }
          }

LABEL_28:
          if (v14 == 2)
          {
            v19 = *(v9 + 16);
            v18 = *(v9 + 24);
            v20 = __OFSUB__(v18, v19);
            v21 = v18 - v19;
            if (v20)
            {
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
            }

            goto LABEL_41;
          }

          if (v15)
          {
            goto LABEL_69;
          }

LABEL_46:

          sub_1D8C2C5D0(v7, v6);

          sub_1D8C2C5D0(v9, v8);
          sub_1D8C2C5D0(v7, v6);
          sub_1D8C2C5D0(v9, v8);
          sub_1D8C2C670(v9, v8);
          sub_1D8C2C670(v7, v6);

          sub_1D8C2C670(v9, v8);

LABEL_47:
          v16 = v7;
          v17 = v6;
          goto LABEL_48;
        }

        v15 = 0;
        if (v7)
        {
          goto LABEL_34;
        }

        if (v6 != 0xC000000000000000)
        {
          goto LABEL_34;
        }

        if (v8 >> 62 != 3)
        {
          goto LABEL_34;
        }

        v15 = 0;
        if (v9 || v8 != 0xC000000000000000)
        {
          goto LABEL_34;
        }

        sub_1D8C2C5D0(0, 0xC000000000000000);

        sub_1D8C2C5D0(0, 0xC000000000000000);
        sub_1D8C2C5D0(0, 0xC000000000000000);
        sub_1D8C2C5D0(0, 0xC000000000000000);
        sub_1D8C2C670(0, 0xC000000000000000);
        sub_1D8C2C670(0, 0xC000000000000000);

        sub_1D8C2C670(0, 0xC000000000000000);

        v16 = 0;
        v17 = 0xC000000000000000;
LABEL_48:
        sub_1D8C2C670(v16, v17);
LABEL_8:
        v3 += 4;
        v4 += 4;
        if (!--v2)
        {
          goto LABEL_67;
        }
      }

      if (v8 >> 60 != 15)
      {
        goto LABEL_68;
      }

      sub_1D8C2C5D0(v7, v6);
      sub_1D8C2C5D0(v9, v8);
      goto LABEL_47;
    }

LABEL_67:
    result = 1;
  }

  else
  {
LABEL_71:
    result = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

PoirotSchematizer::SchemaManifest __swiftcall SchemaManifest.init(messages:enums:)(Swift::OpaquePointer messages, Swift::OpaquePointer enums)
{
  v2->_rawValue = messages._rawValue;
  v2[1]._rawValue = enums._rawValue;
  result.enums = enums;
  result.messages = messages;
  return result;
}

unint64_t sub_1D8C4CC28()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1D8C2E600(MEMORY[0x1E69E7CC0]);
  result = sub_1D8C2E72C(v0);
  qword_1EDED2EB8 = v1;
  unk_1EDED2EC0 = result;
  return result;
}

uint64_t static SchemaManifest.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDED2ED0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EDED2EC0;
  *a1 = qword_1EDED2EB8;
  a1[1] = v1;
}

uint64_t SchemaManifest.messages.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SchemaManifest.enums.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

PoirotSchematizer::SchemaManifest __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SchemaManifest.combining(with:)(PoirotSchematizer::SchemaManifest with)
{
  v4 = v1;
  v5 = *with.messages._rawValue;
  v6 = *(with.messages._rawValue + 1);
  v7 = *v2;
  v8 = v2[1];
  swift_bridgeObjectRetain_n();

  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v7;
  sub_1D8C4E2F4(v5, sub_1D8C4E8CC, 0, isUniquelyReferenced_nonNull_native, &v16, 0);

  if (v3)
  {
  }

  else
  {
    v10 = v16;

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v16 = v8;
    sub_1D8C4DA44(v6, sub_1D8C4E860, 0, v11, &v16, 0);

    v14 = v16;
    *v4 = v10;
    v4[1] = v14;
  }

  result.enums._rawValue = v13;
  result.messages._rawValue = v12;
  return result;
}

uint64_t static SchemaManifest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D8C4B534(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D8C4BA28(v2, v3);
}

uint64_t sub_1D8C4CF4C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D8C4B534(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D8C4BA28(v2, v3);
}

uint64_t sub_1D8C4CFA8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v3 = (*(a1 + 8))(ObjectType, a1);
  v4 = sub_1D8C2E600(MEMORY[0x1E69E7CC0]);
  v5 = v3 + 56;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 56);
  v9 = (v6 + 63) >> 6;
  v89 = a1;
  v80 = v3;

  v10 = 0;
  v76 = v9;
  for (i = v3 + 56; ; v5 = i)
  {
    if (!v8)
    {
      v17 = v90;
      while (1)
      {
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v16 >= v9)
        {
          break;
        }

        v8 = *(v5 + 8 * v16);
        ++v10;
        if (v8)
        {
          goto LABEL_12;
        }
      }

      v74 = v4;

      v39 = (*(v89 + 16))(ObjectType, v89);
      v40 = sub_1D8C2E72C(MEMORY[0x1E69E7CC0]);
      v41 = v39 + 56;
      v42 = 1 << *(v39 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v39 + 56);
      v45 = (v42 + 63) >> 6;
      v81 = v39;

      v46 = 0;
      v77 = v45;
      v79 = v39 + 56;
      while (v44)
      {
        v52 = v46;
LABEL_32:
        v53 = (*(v81 + 48) + ((v52 << 10) | (16 * __clz(__rbit64(v44)))));
        v54 = *v53;
        v55 = v53[1];
        v56 = *(v89 + 32);

        v57 = v56(v54, v55, ObjectType, v89);
        if (v90)
        {
          swift_unknownObjectRelease();

          goto LABEL_45;
        }

        sub_1D8C61B40(v57, v58, &v91);
        v90 = 0;
        v59 = v91;
        v83 = v92;
        v85 = v93;
        v87 = v94;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v40;
        v61 = sub_1D8C4668C(v54, v55);
        v63 = v40[2];
        v64 = (v62 & 1) == 0;
        v37 = __OFADD__(v63, v64);
        v65 = v63 + v64;
        if (v37)
        {
          goto LABEL_49;
        }

        v66 = v62;
        if (v40[3] >= v65)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v72 = v61;
            sub_1D8C74CDC();
            v61 = v72;
          }
        }

        else
        {
          sub_1D8C737B4(v65, isUniquelyReferenced_nonNull_native);
          v61 = sub_1D8C4668C(v54, v55);
          if ((v66 & 1) != (v67 & 1))
          {
            goto LABEL_52;
          }
        }

        v44 &= v44 - 1;
        v40 = v95;
        if (v66)
        {
          v47 = (v95[7] + 32 * v61);
          v48 = *v47;
          v49 = v47[1];
          v50 = v47[2];
          v51 = v47[3];
          *v47 = v59;
          v47[1] = v83;
          v47[2] = v85;
          v47[3] = v87;

          sub_1D8C2C670(v49, v50);
        }

        else
        {
          v95[(v61 >> 6) + 8] |= 1 << v61;
          v68 = (v40[6] + 16 * v61);
          *v68 = v54;
          v68[1] = v55;
          v69 = (v40[7] + 32 * v61);
          *v69 = v59;
          v69[1] = v83;
          v69[2] = v85;
          v69[3] = v87;
          v70 = v40[2];
          v37 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v37)
          {
            goto LABEL_51;
          }

          v40[2] = v71;
        }

        v46 = v52;
        v45 = v77;
        v41 = v79;
      }

      while (1)
      {
        v52 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v52 >= v45)
        {

          result = swift_unknownObjectRelease();
          *a2 = v74;
          a2[1] = v40;
          return result;
        }

        v44 = *(v41 + 8 * v52);
        ++v46;
        if (v44)
        {
          goto LABEL_32;
        }
      }

LABEL_47:
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
      result = sub_1D8C85354();
      __break(1u);
      return result;
    }

    v16 = v10;
    v17 = v90;
LABEL_12:
    v18 = (*(v80 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v8)))));
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v89 + 24);

    v21(v19, v20, ObjectType, v89);
    if (v17)
    {
      break;
    }

    sub_1D8C2D158(v22, 0, &v91);
    v90 = 0;
    v23 = v91;
    v82 = v92;
    v84 = v93;
    v86 = v94;
    v24 = v4;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v24;
    v27 = sub_1D8C4668C(v19, v20);
    v28 = v24[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_48;
    }

    v31 = v26;
    if (v24[3] >= v30)
    {
      if ((v25 & 1) == 0)
      {
        sub_1D8C74B2C();
      }
    }

    else
    {
      sub_1D8C734B4(v30, v25);
      v32 = sub_1D8C4668C(v19, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_52;
      }

      v27 = v32;
    }

    v8 &= v8 - 1;
    v4 = v95;
    if (v31)
    {
      v11 = (v95[7] + 32 * v27);
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      *v11 = v23;
      v11[1] = v82;
      v11[2] = v84;
      v11[3] = v86;

      sub_1D8C2C670(v14, v15);
    }

    else
    {
      v95[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v4[6] + 16 * v27);
      *v34 = v19;
      v34[1] = v20;
      v35 = (v4[7] + 32 * v27);
      *v35 = v23;
      v35[1] = v82;
      v35[2] = v84;
      v35[3] = v86;
      v36 = v4[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_50;
      }

      v4[2] = v38;
    }

    v10 = v16;
    v9 = v76;
  }

  swift_unknownObjectRelease();

LABEL_45:
}

uint64_t Sequence<>.combining()()
{
  if (qword_1EDED2ED0 != -1)
  {
    swift_once();
  }

  sub_1D8C84F34();
}

uint64_t sub_1D8C4D6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t *a8@<X8>, char a9)
{

  sub_1D8C2C5D0(a6, a7);

  sub_1D8C2C5D0(a6, a7);

  v23 = a2;
  v16 = a3;
  v17 = a4;

  sub_1D8C2C5D0(v16, a4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = a1;
  sub_1D8C2D8EC(a5, sub_1D8C2DF14, 0, isUniquelyReferenced_nonNull_native, &v24, a9);
  if (v22)
  {

    sub_1D8C2C670(a6, a7);

    sub_1D8C2C670(v16, a4);

    return sub_1D8C2C670(a6, a7);
  }

  else
  {

    v20 = v24;
    if (a7 >> 60 == 15)
    {

      sub_1D8C2C670(a6, a7);

      result = sub_1D8C2C670(a6, a7);
      *a8 = v20;
      a8[1] = v23;
      a8[2] = v16;
      a8[3] = a4;
    }

    else
    {
      sub_1D8C2C5E4(a6, a7);
      if (a4 >> 60 == 15)
      {
        sub_1D8C2C5E4(a6, a7);
        sub_1D8C2C670(v16, a4);
        sub_1D8C2C5D0(a6, a7);
        sub_1D8C2C670(a6, a7);

        sub_1D8C2C670(a6, a7);
        sub_1D8C2C670(a6, a7);

        result = sub_1D8C2C670(a6, a7);
        *a8 = v20;
        a8[1] = v23;
        a8[2] = a6;
        a8[3] = a7;
      }

      else
      {
        if (a9)
        {
          if (a9 == 1)
          {
            sub_1D8C2C5E4(a6, a7);
            sub_1D8C2C670(v16, a4);
            v16 = a6;
            v17 = a7;
          }

          else
          {
            sub_1D8C2D7A0(v16, a4, a6, a7);
          }
        }

        sub_1D8C2C5D0(v16, v17);
        sub_1D8C2C670(a6, a7);

        sub_1D8C2C670(a6, a7);
        sub_1D8C2C670(v16, v17);

        result = sub_1D8C2C670(a6, a7);
        *a8 = v20;
        a8[1] = v23;
        a8[2] = v16;
        a8[3] = v17;
      }
    }
  }

  return result;
}

uint64_t sub_1D8C4DA44(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t *a5, char a6)
{
  v9 = a1 + 64;
  v10 = -1 << *(a1 + 32);
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v78 = -1 << *(a1 + 32);
  v13 = (63 - v10) >> 6;

  v14 = 0;
  v86 = v13;
  v87 = v9;
  while (v12)
  {
    v22 = v12;
    v23 = v14;
LABEL_14:
    v25 = __clz(__rbit64(v22)) | (v23 << 6);
    v26 = (*(a1 + 48) + 16 * v25);
    v27 = v26[1];
    v28 = (*(a1 + 56) + 32 * v25);
    v30 = *v28;
    v29 = v28[1];
    v31 = v28[2];
    v32 = v28[3];
    v94 = *v26;
    v95 = v27;
    v96 = v30;
    v97 = v29;
    v98 = v31;
    v99 = v32;

    sub_1D8C2C5D0(v29, v31);

    a2(&v100, &v94);
    v33 = v97;
    v34 = v98;

    sub_1D8C2C670(v33, v34);

    if (!v101)
    {
LABEL_67:
      sub_1D8C2F110();
    }

    v35 = v100;
    v7 = v103;
    v94 = v100;
    v95 = v101;
    v36 = v105;
    v90 = v102;
    v91 = v104;
    v6 = *a5;
    v92 = v101;
    v38 = sub_1D8C4668C(v100, v101);
    v39 = *(v6 + 16);
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      sub_1D8C85354();
      __break(1u);
      goto LABEL_80;
    }

    v42 = v37;
    if (*(v6 + 24) >= v41)
    {
      if ((a4 & 1) == 0)
      {
        v6 = a5;
        sub_1D8C74CDC();
      }
    }

    else
    {
      sub_1D8C737B4(v41, a4 & 1);
      v6 = *a5;
      v43 = sub_1D8C4668C(v35, v92);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_79;
      }

      v38 = v43;
    }

    v45 = *a5;
    if (v42)
    {
      v46 = (v45[7] + 32 * v38);
      v47 = *v46;
      v48 = v46[1];
      v9 = v46[2];
      v49 = v46[3];
      v84 = v38;
      v85 = *a5;
      if (!a6)
      {
        v79 = *v46;

        v82 = v48;
        v83 = v9;
        sub_1D8C2C5D0(v48, v9);
        v81 = v49;

        v59 = v7;
        v52 = v91;
        goto LABEL_66;
      }

      if (a6 == 1)
      {
        v15 = v90;
        v16 = v91;
        v6 = v7;
        v17 = v36;
        goto LABEL_6;
      }

      v50 = *v46;

      v82 = v48;
      sub_1D8C2C5D0(v48, v9);

      v81 = v49;
      v83 = v9;

      v77 = v7;
      v51 = v7;
      v52 = v91;
      sub_1D8C2C5D0(v51, v91);

      v79 = v50;
      if ((sub_1D8C4BEF8(v50, v90) & 1) == 0)
      {
        goto LABEL_71;
      }

      if (v9 >> 60 == 15)
      {
        v7 = v77;
        v6 = v48;
        if (v91 >> 60 != 15)
        {
          goto LABEL_68;
        }

        sub_1D8C2C5D0(v48, v9);
        sub_1D8C2C5D0(v77, v91);
        v53 = v36;
LABEL_63:
        sub_1D8C2C670(v6, v9);
LABEL_64:
        v52 = v91;
        if (!sub_1D8C4C02C(v49, v53))
        {
          goto LABEL_71;
        }

        v59 = v77;
        sub_1D8C2C670(v77, v91);

LABEL_66:

        sub_1D8C2C670(v59, v52);

        v6 = v82;
        v16 = v83;
        v15 = v79;
        v17 = v81;
LABEL_6:

        v18 = (*(v85 + 56) + 32 * v84);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v7 = v18[3];
        *v18 = v15;
        v18[1] = v6;
        v18[2] = v16;
        v18[3] = v17;

        sub_1D8C2C670(v20, v21);

        goto LABEL_7;
      }

      v7 = v77;
      v6 = v48;
      if (v91 >> 60 == 15)
      {
LABEL_68:
        v72 = v6;
        sub_1D8C2C5D0(v6, v9);
        v73 = v7;
        v74 = v7;
        v52 = v91;
        sub_1D8C2C5D0(v73, v91);
        sub_1D8C2C670(v72, v9);
        sub_1D8C2C670(v74, v91);
        goto LABEL_71;
      }

      v60 = v9 >> 62;
      v61 = v91 >> 62;
      if (v9 >> 62 == 3)
      {
        v62 = 0;
        if (!v48)
        {
          v53 = v36;
          if (v9 == 0xC000000000000000)
          {
            v13 = v91;
            if (v91 >> 62 == 3)
            {
              v62 = 0;
              if (!v77 && v91 == 0xC000000000000000)
              {
                sub_1D8C2C5D0(0, 0xC000000000000000);
                sub_1D8C2C5D0(0, 0xC000000000000000);
                v63 = 0;
                v64 = 0xC000000000000000;
LABEL_62:
                sub_1D8C2C670(v63, v64);
                goto LABEL_63;
              }
            }

LABEL_47:
            if (v61 <= 1)
            {
              if (v61)
              {
                LODWORD(v67) = HIDWORD(v77) - v77;
                if (__OFSUB__(HIDWORD(v77), v77))
                {
                  goto LABEL_75;
                }

                v67 = v67;
              }

              else
              {
                v67 = BYTE6(v13);
              }

              goto LABEL_56;
            }

            if (v61 == 2)
            {
              v69 = *(v77 + 16);
              v68 = *(v77 + 24);
              v57 = __OFSUB__(v68, v69);
              v67 = v68 - v69;
              if (v57)
              {
                goto LABEL_76;
              }

LABEL_56:
              if (v62 != v67)
              {
                goto LABEL_70;
              }

              if (v62 >= 1)
              {
                sub_1D8C2C5D0(v48, v9);
                sub_1D8C2C5D0(v77, v13);
                sub_1D8C2C5D0(v77, v13);
                v70 = sub_1D8C76848(v48, v9, v77, v13);
                sub_1D8C2C670(v77, v13);
                sub_1D8C2C670(v48, v9);
                v52 = v13;
                if ((v70 & 1) == 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_64;
              }
            }

            else if (v62)
            {
              goto LABEL_70;
            }

            sub_1D8C2C5D0(v48, v9);
            sub_1D8C2C5D0(v77, v13);
            v63 = v77;
            v64 = v13;
            goto LABEL_62;
          }

LABEL_46:
          v13 = v91;
          goto LABEL_47;
        }
      }

      else if (v60)
      {
        if (v60 == 1)
        {
          LODWORD(v62) = HIDWORD(v48) - v48;
          if (__OFSUB__(HIDWORD(v48), v48))
          {
            goto LABEL_78;
          }

          v53 = v36;
          v62 = v62;
          goto LABEL_46;
        }

        v66 = *(v48 + 16);
        v65 = *(v48 + 24);
        v57 = __OFSUB__(v65, v66);
        v62 = v65 - v66;
        if (v57)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v62 = BYTE6(v9);
      }

      v53 = v36;
      goto LABEL_46;
    }

    v45[(v38 >> 6) + 8] |= 1 << v38;
    v54 = (v45[6] + 16 * v38);
    *v54 = v35;
    v54[1] = v92;
    v55 = (v45[7] + 32 * v38);
    *v55 = v90;
    v55[1] = v7;
    v55[2] = v91;
    v55[3] = v36;
    v56 = v45[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_74;
    }

    v45[2] = v58;
LABEL_7:
    v12 = (v22 - 1) & v22;
    a4 = 1;
    v14 = v23;
    v13 = v86;
    v9 = v87;
  }

  v24 = v14;
  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v13)
    {
      goto LABEL_67;
    }

    v22 = *(v9 + 8 * v23);
    ++v24;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_70:
  sub_1D8C2C5D0(v6, v9);
  sub_1D8C2C5D0(v7, v13);
  sub_1D8C2C670(v7, v13);
  sub_1D8C2C670(v6, v9);
  v52 = v13;
LABEL_71:
  sub_1D8C2F0BC();
  v75 = swift_allocError();
  *v76 = 0xD00000000000001DLL;
  v76[1] = 0x80000001D8C8BCB0;
  swift_willThrow();

  sub_1D8C2C670(v77, v52);

  sub_1D8C2C670(v82, v9);

  v106 = v75;
  MEMORY[0x1DA725EA0](v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB000, &unk_1D8C85C00);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1D8C2C670(v77, v52);

    sub_1D8C2F110();

    return MEMORY[0x1DA725E90](v106);
  }

LABEL_80:
  sub_1D8C85124();
  MEMORY[0x1DA7255C0](0xD00000000000001BLL, 0x80000001D8C8B930);
  sub_1D8C851E4();
  MEMORY[0x1DA7255C0](39, 0xE100000000000000);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

uint64_t sub_1D8C4E2F4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v57 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v60 = v11;
  for (i = v7; ; v7 = i)
  {
    if (!v10)
    {
      v21 = v12;
      while (1)
      {
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v20 >= v11)
        {
          goto LABEL_27;
        }

        v19 = *(v7 + 8 * v20);
        ++v21;
        if (v19)
        {
          v68 = a4;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_1D8C85354();
      __break(1u);
      goto LABEL_34;
    }

    v68 = a4;
    v19 = v10;
    v20 = v12;
LABEL_15:
    v22 = __clz(__rbit64(v19)) | (v20 << 6);
    v23 = (*(a1 + 48) + 16 * v22);
    v24 = v23[1];
    v25 = (*(a1 + 56) + 32 * v22);
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
    *&v70 = *v23;
    *(&v70 + 1) = v24;
    *&v71 = v27;
    *(&v71 + 1) = v26;
    v72 = v28;
    v73 = v29;

    sub_1D8C2C5D0(v28, v29);
    a2(&v74, &v70);
    v30 = v72;
    v31 = v73;

    sub_1D8C2C670(v30, v31);
    v32 = v75;
    if (!v75)
    {
LABEL_27:
      sub_1D8C2F110();
    }

    v33 = v74;
    v66 = v77;
    v67 = v76;
    v35 = v78;
    v34 = v79;
    v36 = *a5;
    v38 = sub_1D8C4668C(v74, v75);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_31;
    }

    v42 = v37;
    if (v36[3] < v41)
    {
      break;
    }

    if (v68)
    {
      if (v37)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1D8C74B2C();
      if (v42)
      {
        goto LABEL_23;
      }
    }

LABEL_5:
    v13 = *a5;
    *(*a5 + 8 * (v38 >> 6) + 64) |= 1 << v38;
    v14 = (v13[6] + 16 * v38);
    *v14 = v33;
    v14[1] = v32;
    v15 = (v13[7] + 32 * v38);
    *v15 = v67;
    v15[1] = v66;
    v15[2] = v35;
    v15[3] = v34;
    v16 = v13[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_32;
    }

    v13[2] = v18;
LABEL_7:
    v10 = (v19 - 1) & v19;
    a4 = 1;
    v12 = v20;
    v11 = v60;
  }

  sub_1D8C734B4(v41, v68 & 1);
  v43 = *a5;
  v44 = sub_1D8C4668C(v33, v32);
  if ((v42 & 1) != (v45 & 1))
  {
    goto LABEL_33;
  }

  v38 = v44;
  if ((v42 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  v59 = *a5;
  v46 = (*(*a5 + 56) + 32 * v38);
  v63 = v35;
  v48 = *v46;
  v47 = v46[1];
  v49 = v46[2];
  v50 = v46[3];

  sub_1D8C2C5D0(v49, v50);
  sub_1D8C4D6B8(v48, v47, v49, v50, v67, v63, v34, &v70, a6);
  if (!v64)
  {

    sub_1D8C2C670(v49, v50);

    sub_1D8C2C670(v63, v34);

    v51 = (v59[7] + 32 * v38);
    v53 = *v51;
    v52 = v51[1];
    v54 = v51[2];
    v55 = v51[3];
    *v51 = v70;
    *(v51 + 1) = v71;

    sub_1D8C2C670(v54, v55);
    goto LABEL_7;
  }

  sub_1D8C2C670(v49, v50);
  v80 = v64;
  MEMORY[0x1DA725EA0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB000, &unk_1D8C85C00);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1D8C2C670(v63, v34);
    sub_1D8C2F110();

    return MEMORY[0x1DA725E90](v80);
  }

LABEL_34:
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_1D8C85124();
  MEMORY[0x1DA7255C0](0xD00000000000001BLL, 0x80000001D8C8B930);
  sub_1D8C851E4();
  MEMORY[0x1DA7255C0](39, 0xE100000000000000);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

uint64_t sub_1D8C4E860@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  a2[2] = a1[2];
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  *a2 = v3;
  a2[1] = v2;

  sub_1D8C2C5D0(v4, v5);
}

uint64_t sub_1D8C4E8CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  a2[2] = a1[2];
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  *a2 = v3;
  a2[1] = v2;

  return sub_1D8C2C5D0(v5, v6);
}

uint64_t TypeManifest.hashValue.getter()
{
  v1 = *v0;
  sub_1D8C853B4();
  MEMORY[0x1DA725B20](v1);
  return sub_1D8C853E4();
}

uint64_t sub_1D8C4E9D0()
{
  v1 = *v0;
  sub_1D8C853B4();
  MEMORY[0x1DA725B20](v1);
  return sub_1D8C853E4();
}

uint64_t sub_1D8C4EA44()
{
  v1 = *v0;
  sub_1D8C853B4();
  MEMORY[0x1DA725B20](v1);
  return sub_1D8C853E4();
}

unint64_t sub_1D8C4EA8C()
{
  result = qword_1ECAAB218;
  if (!qword_1ECAAB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TypeManifest(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TypeManifest(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8C4EC78(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = sub_1D8C4EEE0(0xD00000000000001CLL, 0x80000001D8C8BD40, v2);

  return v3 & 1;
}

uint64_t sub_1D8C4ED24(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = sub_1D8C4EEE0(0xD00000000000001BLL, 0x80000001D8C8BCD0, v2);

  return v3 & 1;
}

uint64_t sub_1D8C4EDD0(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = sub_1D8C4EEE0(0xD000000000000020, 0x80000001D8C8BCF0, v2);

  return v3 & 1;
}

uint64_t sub_1D8C4EE7C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = sub_1D8C4EEE0(0xD00000000000001ELL, 0x80000001D8C8BD60, v2);

  return v3 & 1;
}

uint64_t sub_1D8C4EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1D8C853B4();
  sub_1D8C84E24();
  v7 = sub_1D8C853E4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1D8C852A4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D8C4F020(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = sub_1D8C4EEE0(0xD00000000000001CLL, 0x80000001D8C8BD20, v2);

  return v3 & 1;
}

uint64_t static Schematizer.makeSchemaStore(withManifest:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();

  result = sub_1D8C507F4(v6);
  if (!v2)
  {
    *a2 = result;
    a2[1] = &off_1F5450D10;
  }

  return result;
}

_UNKNOWN **static Schematizer.makeSchemaStoreImpl(withManifest:)(uint64_t *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();

  result = sub_1D8C507F4(v4);
  if (v1)
  {
    return &off_1F5450D10;
  }

  return result;
}

double static Schematizer.searchValue(in:withFieldNumber:type:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a4;
  v8 = a4[1];
  v9 = a2 - a1;
  v13[2] = a1;
  v13[3] = a2;
  if (!a1)
  {
    v9 = 0;
  }

  v13[5] = 0;
  v13[6] = 0;
  v13[4] = v9;
  v14 = 1;
  v10 = sub_1D8C29BDC(a3);
  if (!v5)
  {
    if ((v10 & 0x100000000) != 0)
    {
      *(a5 + 32) = 0;
      result = 0.0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 40) = -1;
    }

    else
    {
      v13[0] = v7;
      v13[1] = v8;
      v12 = sub_1D8C29E98(v10);
      sub_1D8C29F08(v13, v12, a5);
    }
  }

  return result;
}

uint64_t static Schematizer.searchValue(in:withFieldPath:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v7 = a4[1];
  v9 = a2 - a1;
  if (!a1)
  {
    v9 = 0;
  }

  v24[3] = a1;
  v24[4] = a2;
  v24[6] = 0;
  v24[7] = 0;
  v24[5] = v9;
  v25 = 1;
  v10 = *(a3 + 16);
  if (v10)
  {
    v23 = a5;
    v26 = v5;
    v24[0] = MEMORY[0x1E69E7CC0];
    sub_1D8C2B3D8(0, v10, 0);
    v12 = v24[0];
    v13 = (a3 + 32);
    v14 = *(v24[0] + 16);
    v15 = 24 * v14;
    do
    {
      v17 = *v13++;
      v16 = v17;
      v24[0] = v12;
      v18 = *(v12 + 24);
      v19 = v14 + 1;
      if (v14 >= v18 >> 1)
      {
        sub_1D8C2B3D8((v18 > 1), v14 + 1, 1);
        v12 = v24[0];
      }

      *(v12 + 16) = v19;
      v20 = v12 + v15;
      *(v20 + 32) = v16;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      v15 += 24;
      v14 = v19;
      --v10;
    }

    while (v10);
    a5 = v23;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      sub_1D8C2F8AC();
      swift_allocError();
      *v22 = 0xD000000000000011;
      *(v22 + 8) = 0x80000001D8C8BBA0;
      *(v22 + 16) = 5;
      swift_willThrow();
      sub_1D8C2B50C(v8, v7);
      goto LABEL_11;
    }
  }

  v24[0] = v12;
  v24[1] = v8;
  v24[2] = v7;
  sub_1D8C2B50C(v8, v7);
  sub_1D8C2B670(v24, 0, a5);
LABEL_11:

  return sub_1D8C2BBF0(v8, v7);
}

void Schematizer.RepeatableFieldIterator.next()(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v69[2] = v1[2];
  v69[3] = v3;
  v4 = *(v1 + 8);
  v70 = v4;
  v5 = v1[1];
  v69[0] = *v1;
  v69[1] = v5;
  if ((~v4 & 0xF000000000000007) == 0)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -256;
    return;
  }

  v7 = v1[1];
  v64 = *v1;
  v65 = v7;
  v8 = v1[3];
  v66 = v1[2];
  v67 = v8;
  v68 = v4;
  v9 = v66;
  sub_1D8C50084(v69, &v58);
  sub_1D8C2C5E4(v9, *(&v9 + 1));
  sub_1D8C4FEB8(v9, *(&v9 + 1), &v64, v63);
  if (!v2)
  {
    sub_1D8C2C684(v9, *(&v9 + 1));
    v11 = v1[3];
    v60 = v1[2];
    v61 = v11;
    v62 = *(v1 + 8);
    v12 = v1[1];
    v58 = *v1;
    v59 = v12;
    sub_1D8C500EC(&v58);
    sub_1D8C5011C(v63, &v54);
    if (v55[24] == 255)
    {
      sub_1D8C2A970(v63);
      sub_1D8C2A970(&v54);
      *v1 = 0u;
      v1[1] = 0u;
      v1[2] = 0u;
      v1[3] = 0u;
      *(v1 + 8) = 0xF000000000000007;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -256;
      v51 = v66;
      v52 = v67;
      v53 = v68;
      v49 = v64;
      v50 = v65;
      v10 = &v49;
      goto LABEL_29;
    }

    v56 = v54;
    v57[0] = *v55;
    *(v57 + 9) = *&v55[9];
    v13 = v67;
    v51 = v66;
    v52 = v67;
    v53 = v68;
    v14 = v68;
    v15 = v65;
    v49 = v64;
    v16 = v64;
    v50 = v65;
    v1[2] = v66;
    v1[3] = v13;
    *(v1 + 8) = v14;
    *v1 = v16;
    v1[1] = v15;
    sub_1D8C29EAC(&v56, &v45);
    v17 = v48;
    if (v48 <= 4u)
    {
      if (v48 <= 1u || v48 != 2 && v48 != 3)
      {
        sub_1D8C5018C(&v49, v40);
        sub_1D8C2AB08(&v56);
        sub_1D8C2A970(v63);
        v18 = 0;
        v19 = 0;
        v20 = v45;
        goto LABEL_27;
      }
    }

    else
    {
      if (v48 > 7u)
      {
        if (v48 == 8)
        {
          sub_1D8C2AA1C(&v45, v42);
          v27 = v43;
          v28 = v44;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          v29 = *(v28 + 24);
          sub_1D8C5018C(&v49, v40);
          v25 = v29(v27, v28);
        }

        else
        {
          if (v48 != 9)
          {
            v43 = MEMORY[0x1E69E6290];
            v44 = MEMORY[0x1E6969DF8];
            v39 = v45;
            *v42 = v46;
            v30 = __swift_project_boxed_opaque_existential_1(v42, MEMORY[0x1E69E6290]);
            v31 = *v30;
            if (*v30 && (v32 = v30[1], v33 = &v32[-v31], v32 != v31))
            {
              if (v33 <= 14)
              {
                v34 = sub_1D8C45074(*v30, v32);
                v35 = v37 & 0xFFFFFFFFFFFFFFLL;
                sub_1D8C5018C(&v49, v40);
                swift_unknownObjectRetain();
              }

              else if (v33 >= 0x7FFFFFFF)
              {
                sub_1D8C5018C(&v49, v40);
                swift_unknownObjectRetain();
                v34 = sub_1D8C45134(v31, v32);
                v35 = v38 | 0x8000000000000000;
              }

              else
              {
                sub_1D8C5018C(&v49, v40);
                swift_unknownObjectRetain();
                v34 = sub_1D8C2B5D0(v31, v32);
                v35 = v36 | 0x4000000000000000;
              }
            }

            else
            {
              sub_1D8C5018C(&v49, v40);
              swift_unknownObjectRetain();
              v34 = 0;
              v35 = 0xC000000000000000;
            }

            sub_1D8C2AB08(&v56);
            sub_1D8C2A970(v63);
            __swift_destroy_boxed_opaque_existential_1(v42);
            swift_unknownObjectRelease();
            type metadata accessor for SchematizedData();
            v20 = swift_allocObject();
            v18 = 0;
            v19 = 0;
            *(v20 + 16) = v39;
            *(v20 + 32) = v34;
            *(v20 + 40) = v35;
            goto LABEL_27;
          }

          sub_1D8C2AA1C(&v45, v42);
          v22 = v43;
          v23 = v44;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          v24 = *(v23 + 16);
          sub_1D8C5018C(&v49, v40);
          v25 = v24(v22, v23);
        }

        v20 = v25;
        v18 = v26;
        sub_1D8C2AB08(&v56);
        sub_1D8C2A970(v63);
        __swift_destroy_boxed_opaque_existential_1(v42);
        v19 = 0;
LABEL_27:
        v21 = 0uLL;
        goto LABEL_28;
      }

      if (v48 != 5)
      {
        if (v48 == 6)
        {
          sub_1D8C5018C(&v49, v40);
          sub_1D8C2AB08(&v56);
          sub_1D8C2A970(v63);
          v18 = 0;
          v19 = 0;
          v20 = v45;
          goto LABEL_27;
        }

        sub_1D8C5018C(&v49, v40);
        sub_1D8C2AB08(&v56);
        sub_1D8C2A970(v63);
        v18 = *(&v45 + 1);
        v20 = v45;
        v21 = v46;
        v19 = v47;
LABEL_28:
        *a1 = v20;
        *(a1 + 8) = v18;
        *(a1 + 16) = v21;
        *(a1 + 32) = v19 | (v17 << 8);
        v40[2] = v66;
        v40[3] = v67;
        v41 = v68;
        v40[0] = v64;
        v40[1] = v65;
        v10 = v40;
        goto LABEL_29;
      }
    }

    sub_1D8C5018C(&v49, v40);
    sub_1D8C2AB08(&v56);
    sub_1D8C2A970(v63);
    v18 = 0;
    v19 = 0;
    v21 = 0uLL;
    v20 = v45;
    goto LABEL_28;
  }

  sub_1D8C2C684(v9, *(&v9 + 1));
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v58 = v64;
  v59 = v65;
  v10 = &v58;
LABEL_29:
  sub_1D8C500BC(v10);
}

uint64_t sub_1D8C4F958@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[7];
  v6 = a3[8];
  if (a3[3])
  {
    v9 = a2 - result;
    if (!result)
    {
      v9 = 0;
    }

    v47 = result;
    v48 = a2;
    v50 = 0;
    v51 = 0;
    v49 = v9;
    v52 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D8C861A0;
    *(v10 + 32) = a3[6];
    *(v10 + 40) = 0;
    *(v10 + 48) = 1;
    v44[0] = v10;
    v44[1] = v7;
    v44[2] = v6;
    sub_1D8C2B50C(v7, v6);
    sub_1D8C2B670(v44, 0, &v45);

    result = sub_1D8C2BBF0(v7, v6);
    if (!v4)
    {
      v11 = v52;
      v13 = v50;
      v12 = v51;
      if (v52)
      {
        v12 = 0;
      }

      *a3 = v12;
      a3[1] = v11;
      a3[2] = v13;
      *(a3 + 24) = 0;
      v14 = v46[0];
      *a4 = v45;
      *(a4 + 16) = v14;
      *(a4 + 25) = *(v46 + 9);
    }

    return result;
  }

  v15 = a3[2];
  if ((a3[1] & 1) == 0)
  {
    v18 = *a3;
    if (v15 < *a3)
    {
      v47 = result;
      v48 = a2;
      v49 = v18;
      v50 = v15;
      v51 = 0;
      v52 = 1;
      *&v45 = v7;
      *(&v45 + 1) = v6;
      result = sub_1D8C6DE1C(&v45, a4);
      if ((a3[3] & 1) == 0)
      {
        a3[2] = v50;
      }

      return result;
    }

    goto LABEL_16;
  }

  if (result)
  {
    v16 = a2 - result;
    if (v15 < a2 - result)
    {
      v17 = result;
      goto LABEL_19;
    }

LABEL_16:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 40) = -1;
    return result;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

  v17 = 0;
  v16 = 0;
LABEL_19:
  v47 = v17;
  v48 = a2;
  v49 = v16;
  v51 = 0;
  v19 = v15 + 1;
  v52 = 1;
  v20 = *(result + v15);
  if ((v20 & 0x8000000000000000) != 0)
  {
    if (v19 >= v16)
    {
LABEL_52:
      sub_1D8C36A64();
      swift_allocError();
      *v38 = xmmword_1D8C86190;
      *(v38 + 16) = 2;
      result = swift_willThrow();
LABEL_53:
      if (a3[3])
      {
        return result;
      }

      goto LABEL_54;
    }

    v20 &= 0x7Fu;
    v34 = (result + v19);
    v35 = v15 + 2;
    v36 = 7;
    while (1)
    {
      v37 = *v34++;
      v20 |= (v37 & 0x7F) << v36;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      if (v35 < v16)
      {
        ++v35;
        v32 = v36 > 0x38;
        v36 += 7;
        if (!v32)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    v50 = v35;
    if (v20 > 0xFFFFFFFE)
    {
      sub_1D8C36A64();
      swift_allocError();
      *v40 = xmmword_1D8C86190;
      *(v40 + 16) = 2;
      result = swift_willThrow();
      v15 = v35;
      if (a3[3])
      {
        return result;
      }

LABEL_54:
      a3[2] = v15;
      return result;
    }

    v21 = a2;
    v22 = result;
    v53 = a4;
    v15 = v35;
  }

  else
  {
    v21 = a2;
    v22 = result;
    v53 = a4;
    v50 = ++v15;
  }

  result = sub_1D8C51474(v20);
  if (v4)
  {
    goto LABEL_53;
  }

  v23 = result;
  sub_1D8C2B50C(v7, v6);
  v24 = v22;
  v25 = v21 - v22;
  v43 = v22 + 1;
  while (a3[6] != v23 >> 3)
  {
    sub_1D8C452D0(v23);
    v26 = v50;
    if (v50 >= v16)
    {
      result = sub_1D8C2BBF0(v7, v6);
      v42 = v53;
      *(v53 + 32) = 0;
      *v42 = 0u;
      *(v42 + 16) = 0u;
      *(v42 + 40) = -1;
      if ((a3[3] & 1) == 0)
      {
        a3[2] = v26;
      }

      return result;
    }

    if (v24)
    {
      v27 = v25;
      if (v50 >= v25)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v50 & 0x8000000000000000) == 0)
      {
        goto LABEL_55;
      }

      v27 = 0;
    }

    v23 = *(v24 + v50);
    v28 = v50 + 1;
    if ((v23 & 0x8000000000000000) != 0)
    {
      if (v28 >= v27)
      {
LABEL_55:
        v28 = v50;
LABEL_56:
        sub_1D8C36A64();
        swift_allocError();
        *v39 = xmmword_1D8C86190;
        *(v39 + 16) = 2;
        swift_willThrow();
        result = sub_1D8C2BBF0(v7, v6);
        if ((a3[3] & 1) == 0)
        {
          a3[2] = v28;
        }

        return result;
      }

      v23 &= 0x7Fu;
      v29 = (v43 + v50);
      v28 = v50 + 2;
      v30 = 7;
      while (1)
      {
        v31 = *v29++;
        v23 |= (v31 & 0x7F) << v30;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        if (v28 < v27)
        {
          ++v28;
          v32 = v30 > 0x38;
          v30 += 7;
          if (!v32)
          {
            continue;
          }
        }

        goto LABEL_55;
      }

      v50 = v28;
      if (v23 > 0xFFFFFFFE)
      {
        goto LABEL_56;
      }
    }

    else
    {
      ++v50;
    }

    if (v23 < 8 || (v23 & 6) == 6)
    {
      goto LABEL_56;
    }
  }

  *&v45 = v7;
  *(&v45 + 1) = v6;
  v41 = sub_1D8C29E98(v23);
  sub_1D8C29F08(&v45, v41, v53);
  result = sub_1D8C2BBF0(v7, v6);
  if ((a3[3] & 1) == 0)
  {
    a3[2] = v50;
  }

  return result;
}

uint64_t static Schematizer.makeRepeatableFieldIterator(in:withFieldNumber:type:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a4;
  v8 = a4[1];
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 24) = 1;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = v7;
  *(a5 + 64) = v8;
  sub_1D8C2B50C(v7, v8);
  return sub_1D8C2C5E4(a1, a2);
}

uint64_t sub_1D8C4FEB8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_9;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
  }

  else
  {
    if (!v4)
    {
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      BYTE4(v10[1]) = BYTE4(a2);
      BYTE5(v10[1]) = BYTE5(a2);
      v5 = v10 + BYTE6(a2);
LABEL_9:
      result = sub_1D8C4F958(v10, v5, a3, a4);
      goto LABEL_10;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1D8C4FFE0(v6, v7, a3, a4);
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8C4FFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_1D8C84684();
  v9 = result;
  if (result)
  {
    result = sub_1D8C846A4();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1D8C84694();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return sub_1D8C4F958(v9, v15, a3, a4);
}

uint64_t sub_1D8C5011C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB138, &unk_1D8C86900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Schematizer(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Schematizer(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}