_BYTE *sub_19A4D34E8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_19A356D60(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_19A4D37E8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_19A4D3864(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_19A4D357C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_19A4D35E4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_19A57096C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_19A57099C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_19A57098C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

id sub_19A4D3698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_19A4D3908(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

uint64_t sub_19A4D36E0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_19A356D40(result);
    }

    else
    {
      sub_19A5709BC();
      swift_allocObject();
      sub_19A57097C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_19A570EDC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_19A4D3780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_19A4D357C(sub_19A4D38E8, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_19A4D37E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_19A5709BC();
  swift_allocObject();
  result = sub_19A57095C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_19A570EDC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_19A4D3864(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_19A5709BC();
  swift_allocObject();
  result = sub_19A57095C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_19A4D3908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_19A5736DC();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != sub_19A5736EC())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = sub_19A5736FC();
        v12 = sub_19A5736DC();
        result = sub_19A5736EC();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = sub_19A5736EC();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_19A4D3A08@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
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

uint64_t sub_19A4D3A60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static JSONValue.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_19A4D3B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A57112C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_19A4170CC();
    v21 = sub_19A572C2C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A4D3D04(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v4 = a1[6];
  v3 = a1[7];
  v6 = a1[8];
  v5 = a1[9];
  v8 = a2[6];
  v7 = a2[7];
  v10 = a2[8];
  v9 = a2[9];
  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    v27 = a1;
    v11 = a2;
    v12 = a1[7];
    v13 = sub_19A573F1C();
    v3 = v12;
    a2 = v11;
    v14 = v13;
    a1 = v27;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v2 - 1;
  v16 = a2 + 15;
  v17 = a1 + 15;
  while (!v5)
  {

    if (v9)
    {
      goto LABEL_26;
    }

LABEL_19:
    if (!v15)
    {
      return 1;
    }

    v4 = *(v17 - 3);
    v3 = *(v17 - 2);
    v6 = *(v17 - 1);
    v5 = *v17;
    v8 = *(v16 - 3);
    v7 = *(v16 - 2);
    v10 = *(v16 - 1);
    v9 = *v16;
    if (*(v17 - 5) != *(v16 - 5) || *(v17 - 4) != *(v16 - 4))
    {
      v28 = v15;
      v18 = *v16;
      v19 = *v17;
      v20 = *(v16 - 1);
      v21 = *(v17 - 1);
      v22 = *(v16 - 2);
      v23 = *(v16 - 3);
      v24 = *(v17 - 2);
      v25 = sub_19A573F1C();
      v3 = v24;
      v8 = v23;
      v7 = v22;
      v6 = v21;
      v10 = v20;
      v5 = v19;
      v9 = v18;
      v15 = v28;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    --v15;
    v16 += 6;
    v17 += 6;
  }

  if (v9)
  {
    if ((v6 != v10 || v5 != v9 || v4 >> 16 != v8 >> 16 || v3 >> 16 != v7 >> 16) && (sub_19A573ECC() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_19;
  }

LABEL_26:

  return 0;
}

uint64_t sub_19A4D3EEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v25 = v2;
  v26 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v17 = *v5;
    v18 = v8;
    v9 = v5[3];
    v19 = v5[2];
    v20 = v9;
    v10 = v6[1];
    v21 = *v6;
    v22 = v10;
    v11 = v6[3];
    v23 = v6[2];
    v24 = v11;
    if (v17 != v21 && (sub_19A573F1C() & 1) == 0 || v18 != v22)
    {
      return 0;
    }

    v12 = *(&v18 + 1);
    v13 = *(&v22 + 1);
    sub_19A37820C(&v17, v16);
    sub_19A37820C(&v21, v16);
    if ((sub_19A4D406C(v12, v13) & 1) == 0 || (sub_19A4D406C(v19, v23) & 1) == 0)
    {
      sub_19A378268(&v21);
      sub_19A378268(&v17);
      return 0;
    }

    v14 = sub_19A4D406C(*(&v19 + 1), *(&v23 + 1));
    sub_19A378268(&v21);
    sub_19A378268(&v17);
    if ((v14 & 1) == 0 || (v24 ^ v20) >> 14 || (*(&v20 + 1) ^ *(&v24 + 1)) >= 0x4000)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_19A4D406C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  v21 = result + 32;
  v22 = *(result + 16);
  v20 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_46;
    }

    v6 = (v4 + 24 * v3);
    v7 = (v5 + 24 * v3);
    if ((*v7 ^ *v6) >> 14)
    {
      return 0;
    }

    if ((v7[1] ^ v6[1]) >> 14)
    {
      return 0;
    }

    v8 = v6[2];
    v9 = v7[2];
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10 && v8 != v9)
    {
      break;
    }

LABEL_7:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v12 = 32;
  while ((v12 - 32) < *(v8 + 16))
  {
    if ((v12 - 32) >= *(v9 + 16))
    {
      goto LABEL_45;
    }

    v14 = *(v8 + v12);
    if (v14 == 1)
    {
      v15 = 0x6E616D6F77;
    }

    else
    {
      v15 = 0x6E79676F72646E61;
    }

    v16 = 0xEB0000000073756FLL;
    if (v14 == 1)
    {
      v16 = 0xE500000000000000;
    }

    if (*(v8 + v12))
    {
      v17 = v15;
    }

    else
    {
      v17 = 7233901;
    }

    if (*(v8 + v12))
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    if (*(v9 + v12))
    {
      if (*(v9 + v12) == 1)
      {
        v19 = 0xE500000000000000;
        if (v17 != 0x6E616D6F77)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = 0xEB0000000073756FLL;
        if (v17 != 0x6E79676F72646E61)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v19 = 0xE300000000000000;
      if (v17 != 7233901)
      {
        goto LABEL_17;
      }
    }

    if (v18 == v19)
    {

      goto LABEL_18;
    }

LABEL_17:
    v13 = sub_19A573F1C();

    if ((v13 & 1) == 0)
    {

      return 0;
    }

LABEL_18:
    ++v12;
    if (!--v10)
    {

      v4 = v21;
      v2 = v22;
      v5 = v20;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_19A4D42C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x6E616D6F77;
      }

      else
      {
        v8 = 0x6E79676F72646E61;
      }

      if (v6 == 1)
      {
        v9 = 0xE500000000000000;
      }

      else
      {
        v9 = 0xEB0000000073756FLL;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 7233901;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (v7 == 1)
      {
        v12 = 0x6E616D6F77;
      }

      else
      {
        v12 = 0x6E79676F72646E61;
      }

      if (v7 == 1)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0xEB0000000073756FLL;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 7233901;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_19A573F1C();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_19A4D4414(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0xD000000000000013;
      if (v6 != 5)
      {
        v8 = 0x6C616E7265747865;
      }

      v9 = 0xE800000000000000;
      if (v6 == 5)
      {
        v9 = 0x800000019A595400;
      }

      if (v6 == 3)
      {
        v10 = 0x686374656B73;
      }

      else
      {
        v10 = 0x747241656E696CLL;
      }

      v11 = 0xE600000000000000;
      if (v6 != 3)
      {
        v11 = 0xE700000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0x61727473756C6C69;
      if (v6 == 1)
      {
        v12 = 0x696A6F6D65;
      }

      v13 = 0xEC0000006E6F6974;
      if (v6 == 1)
      {
        v13 = 0xE500000000000000;
      }

      if (!*v3)
      {
        v12 = 0x6F6974616D696E61;
        v13 = 0xE90000000000006ELL;
      }

      if (*v3 <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE500000000000000;
            if (v14 != 0x696A6F6D65)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xEC0000006E6F6974;
            if (v14 != 0x61727473756C6C69)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE90000000000006ELL;
          if (v14 != 0x6F6974616D696E61)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0x800000019A595400;
          if (v14 != 0xD000000000000013)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = 0xE800000000000000;
          if (v14 != 0x6C616E7265747865)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7 == 3)
      {
        v16 = 0xE600000000000000;
        if (v14 != 0x686374656B73)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        if (v14 != 0x747241656E696CLL)
        {
          goto LABEL_5;
        }
      }

      if (v15 != v16)
      {
LABEL_5:
        v5 = sub_19A573F1C();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t static PersonIndications.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_19A573F1C() & 1) == 0 || (sub_19A4D3D04(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_19A4D3EEC(v3, v4);
}

unint64_t PersonIndications.spans.getter()
{
  v1 = v0[3];
  v112 = *(v1 + 16);
  if (!v112)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v92 = *v0;
  v97 = v0[1];
  v3 = v0[2];
  v111 = v1 + 32;
  v121 = v3 + 32;
  v113 = v3 + 40;
  v98 = MEMORY[0x1E69E7CC0];
  v91 = v0[3];
  v125 = v3;
  while (1)
  {
    v114 = v2;
    v4 = (v111 + (v2 << 6));
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[3];
    v129 = v4[2];
    v130 = v7;
    v127 = v5;
    v128 = v6;
    v8 = v7;
    sub_19A37820C(&v127, v126);
    result = sub_19A386F84(v3, v131);
    if ((v132 & 1) != 0 || (v10 = v131[0], v131[0] != v131[2]))
    {
      result = sub_19A378268(&v127);
      goto LABEL_18;
    }

    if ((v131[0] & 0x8000000000000000) != 0)
    {
      goto LABEL_149;
    }

    if (v131[0] >= *(v3 + 16))
    {
      goto LABEL_150;
    }

    v11 = (v121 + 48 * v131[0]);
    if (!v11[5])
    {
      result = sub_19A378268(&v127);
      v3 = v125;
      goto LABEL_18;
    }

    v95 = v11[3];
    v96 = v11[2];
    if (v95 >> 14 < v96 >> 14)
    {
      goto LABEL_151;
    }

    v12 = 0;
    if (v131[0])
    {
      break;
    }

LABEL_13:

    sub_19A386EC4(v125);
    v16 = sub_19A572EBC();
    sub_19A572E7C();

    v17 = sub_19A572EBC();

    if (v17 >> 14 < v16 >> 14)
    {
      goto LABEL_152;
    }

    if (v16 >> 14 == v8 >> 14 && v17 >> 14 == *(&v8 + 1) >> 14)
    {
      v3 = v125;
LABEL_25:
      v22 = *(&v128 + 1);
      v23 = *(*(&v128 + 1) + 16);
      if (v23)
      {
        v24 = 0;
        v115 = *(&v128 + 1) + 32;
        v94 = MEMORY[0x1E69E7CC0];
        v105 = *(&v128 + 1);
        v108 = *(*(&v128 + 1) + 16);
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_133;
          }

          v25 = (v115 + 24 * v24);
          v27 = *v25;
          v26 = v25[1];
          ++v24;
          v122 = v25[2];

          v118 = v26;
          result = sub_19A386F84(v3, v133);
          if ((v134 & 1) == 0)
          {
            v28 = v133[0];
            if (v133[0] == v133[2])
            {
              if ((v133[0] & 0x8000000000000000) != 0)
              {
                goto LABEL_136;
              }

              if (v133[0] >= *(v3 + 16))
              {
                goto LABEL_137;
              }

              v29 = (v121 + 48 * v133[0]);
              if (v29[5])
              {
                if (v29[3] >> 14 < v29[2] >> 14)
                {
                  goto LABEL_143;
                }

                v99 = v29[3];
                v102 = v29[2];
                v30 = 0;
                if (v133[0])
                {
                  v31 = v113;
                  while (1)
                  {

                    v32 = sub_19A572E7C();

                    v15 = __OFADD__(v30, v32);
                    v30 += v32;
                    if (v15)
                    {
                      break;
                    }

                    v31 += 48;
                    if (!--v28)
                    {
                      goto LABEL_38;
                    }
                  }

                  __break(1u);
LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
                  goto LABEL_132;
                }

LABEL_38:

                sub_19A386EC4(v3);
                v33 = sub_19A572EBC();
                sub_19A572E7C();

                v34 = sub_19A572EBC();

                if (v34 >> 14 < v33 >> 14)
                {
                  goto LABEL_144;
                }

                if (v33 >> 14 == v27 >> 14 && v34 >> 14 == v118 >> 14)
                {
                  v39 = v102;
                  v22 = v105;
                  v40 = v99;
LABEL_50:
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_19A31CD00(0, *(v94 + 16) + 1, 1, v94);
                    v94 = result;
                  }

                  v42 = *(v94 + 16);
                  v41 = *(v94 + 24);
                  if (v42 >= v41 >> 1)
                  {
                    result = sub_19A31CD00((v41 > 1), v42 + 1, 1, v94);
                    v94 = result;
                  }

                  *(v94 + 16) = v42 + 1;
                  v43 = (v94 + 24 * v42);
                  v43[4] = v39;
                  v43[5] = v40;
                  v43[6] = v122;
                  v23 = v108;
                  goto LABEL_44;
                }

                v35 = v29[5];

                v36 = sub_19A572E7C();
                if (v35)
                {
                  v37 = sub_19A5737BC();

                  v38 = v36 == v37;
                  v3 = v125;
                  v22 = v105;
                  v23 = v108;
                  if (v38)
                  {
                    goto LABEL_47;
                  }
                }

                else
                {

                  v3 = v125;
                  v22 = v105;
                  v23 = v108;
                  if (!v36)
                  {
LABEL_47:
                    sub_19A386EC4(v3);
                    sub_19A572F2C();
                    sub_19A572F2C();

                    v39 = sub_19A572EBC();
                    result = sub_19A572EBC();
                    if (result >> 14 < v39 >> 14)
                    {
                      goto LABEL_154;
                    }

                    v40 = result;
                    goto LABEL_50;
                  }
                }
              }
            }
          }

LABEL_44:
          if (v24 == v23)
          {
            goto LABEL_56;
          }
        }
      }

      v94 = MEMORY[0x1E69E7CC0];
LABEL_56:
      v44 = v129;
      v45 = *(v129 + 16);
      if (v45)
      {
        v46 = 0;
        v116 = v129 + 32;
        v93 = MEMORY[0x1E69E7CC0];
        v106 = *(v129 + 16);
        v109 = v129;
        while (1)
        {
          if (v46 >= *(v44 + 16))
          {
            goto LABEL_134;
          }

          v47 = (v116 + 24 * v46);
          v49 = *v47;
          v48 = v47[1];
          ++v46;
          v123 = v47[2];

          v120 = v49;
          result = sub_19A386F84(v3, v135);
          if (v136)
          {
            goto LABEL_59;
          }

          v50 = v135[0];
          if (v135[0] != v135[2])
          {
            goto LABEL_59;
          }

          if ((v135[0] & 0x8000000000000000) != 0)
          {
            goto LABEL_139;
          }

          if (v135[0] >= *(v3 + 16))
          {
            goto LABEL_140;
          }

          v51 = (v121 + 48 * v135[0]);
          if (!v51[5])
          {
            goto LABEL_59;
          }

          if (v51[3] >> 14 < v51[2] >> 14)
          {
            goto LABEL_145;
          }

          v100 = v51[3];
          v103 = v51[2];
          v52 = 0;
          if (v135[0])
          {
            v53 = v113;
            do
            {

              v54 = sub_19A572E7C();

              v15 = __OFADD__(v52, v54);
              v52 += v54;
              if (v15)
              {
                goto LABEL_130;
              }

              v53 += 48;
            }

            while (--v50);
          }

          sub_19A386EC4(v3);
          v55 = sub_19A572EBC();
          sub_19A572E7C();

          v56 = sub_19A572EBC();

          if (v56 >> 14 < v55 >> 14)
          {
            goto LABEL_146;
          }

          if (v55 >> 14 == v120 >> 14 && v56 >> 14 == v48 >> 14)
          {
            v61 = v100;
            v60 = v103;
LABEL_80:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_19A31CD00(0, *(v93 + 16) + 1, 1, v93);
              v93 = result;
            }

            v63 = *(v93 + 16);
            v62 = *(v93 + 24);
            if (v63 >= v62 >> 1)
            {
              result = sub_19A31CD00((v62 > 1), v63 + 1, 1, v93);
              v93 = result;
            }

            *(v93 + 16) = v63 + 1;
            v64 = (v93 + 24 * v63);
            v64[4] = v60;
            v64[5] = v61;
            v64[6] = v123;
            v45 = v106;
            v44 = v109;
            if (v46 == v106)
            {
              goto LABEL_87;
            }
          }

          else
          {
            v57 = v51[5];

            v58 = sub_19A572E7C();
            if (v57)
            {
              v59 = sub_19A5737BC();

              v38 = v58 == v59;
              v3 = v125;
              v45 = v106;
              v44 = v109;
              if (!v38)
              {
                goto LABEL_59;
              }

LABEL_77:
              sub_19A386EC4(v3);
              sub_19A572F2C();
              sub_19A572F2C();

              v60 = sub_19A572EBC();
              result = sub_19A572EBC();
              if (result >> 14 < v60 >> 14)
              {
                goto LABEL_155;
              }

              v61 = result;
              goto LABEL_80;
            }

            v3 = v125;
            v45 = v106;
            v44 = v109;
            if (!v58)
            {
              goto LABEL_77;
            }

LABEL_59:

            if (v46 == v45)
            {
              goto LABEL_87;
            }
          }
        }
      }

      v93 = MEMORY[0x1E69E7CC0];
LABEL_87:
      v65 = *(&v129 + 1);
      v66 = *(*(&v129 + 1) + 16);
      if (v66)
      {
        v67 = 0;
        v119 = *(&v129 + 1) + 32;
        v101 = MEMORY[0x1E69E7CC0];
        v117 = *(&v129 + 1);
        v110 = *(*(&v129 + 1) + 16);
        while (1)
        {
          if (v67 >= *(v65 + 16))
          {
            goto LABEL_135;
          }

          v68 = (v119 + 24 * v67);
          v70 = *v68;
          v69 = v68[1];
          ++v67;
          v124 = v68[2];

          result = sub_19A386F84(v125, v137);
          if (v138)
          {
            goto LABEL_90;
          }

          v71 = v137[0];
          if (v137[0] != v137[2])
          {
            goto LABEL_90;
          }

          if ((v137[0] & 0x8000000000000000) != 0)
          {
            goto LABEL_141;
          }

          if (v137[0] >= *(v125 + 16))
          {
            goto LABEL_142;
          }

          v72 = (v121 + 48 * v137[0]);
          if (!v72[5])
          {
            goto LABEL_90;
          }

          if (v72[3] >> 14 < v72[2] >> 14)
          {
            goto LABEL_147;
          }

          v104 = v72[3];
          v107 = v72[2];
          v73 = 0;
          if (v137[0])
          {
            v74 = v113;
            do
            {

              v75 = sub_19A572E7C();

              v15 = __OFADD__(v73, v75);
              v73 += v75;
              if (v15)
              {
                goto LABEL_131;
              }

              v74 += 48;
            }

            while (--v71);
          }

          sub_19A386EC4(v125);
          v76 = sub_19A572EBC();
          sub_19A572E7C();

          v77 = sub_19A572EBC();

          if (v77 >> 14 < v76 >> 14)
          {
            goto LABEL_148;
          }

          if (v76 >> 14 == v70 >> 14 && v77 >> 14 == v69 >> 14)
          {
            v82 = v104;
            v81 = v107;
LABEL_111:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_19A31CD00(0, *(v101 + 16) + 1, 1, v101);
              v101 = result;
            }

            v84 = *(v101 + 16);
            v83 = *(v101 + 24);
            if (v84 >= v83 >> 1)
            {
              result = sub_19A31CD00((v83 > 1), v84 + 1, 1, v101);
              v101 = result;
            }

            *(v101 + 16) = v84 + 1;
            v85 = (v101 + 24 * v84);
            v85[4] = v81;
            v85[5] = v82;
            v85[6] = v124;
            v66 = v110;
            v65 = v117;
            if (v67 == v110)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v78 = v72[5];

            v79 = sub_19A572E7C();
            if (v78)
            {
              v80 = sub_19A5737BC();

              v38 = v79 == v80;
              v65 = v117;
              v66 = v110;
              if (!v38)
              {
                goto LABEL_90;
              }

LABEL_108:
              sub_19A386EC4(v125);
              sub_19A572F2C();
              sub_19A572F2C();

              v81 = sub_19A572EBC();
              result = sub_19A572EBC();
              if (result >> 14 < v81 >> 14)
              {
                goto LABEL_156;
              }

              v82 = result;
              goto LABEL_111;
            }

            v65 = v117;
            v66 = v110;
            if (!v79)
            {
              goto LABEL_108;
            }

LABEL_90:

            if (v67 == v66)
            {
              goto LABEL_118;
            }
          }
        }
      }

      v101 = MEMORY[0x1E69E7CC0];
LABEL_118:
      v86 = v128;

      sub_19A378268(&v127);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v3 = v125;
        v87 = v98;
      }

      else
      {
        result = sub_19A31CBF4(0, *(v98 + 16) + 1, 1, v98);
        v87 = result;
        v3 = v125;
      }

      v89 = *(v87 + 16);
      v88 = *(v87 + 24);
      if (v89 >= v88 >> 1)
      {
        result = sub_19A31CBF4((v88 > 1), v89 + 1, 1, v87);
        v87 = result;
      }

      *(v87 + 16) = v89 + 1;
      v98 = v87;
      v90 = v87 + (v89 << 6);
      *(v90 + 32) = v92;
      *(v90 + 40) = v97;
      *(v90 + 48) = v86;
      *(v90 + 56) = v94;
      *(v90 + 64) = v93;
      *(v90 + 72) = v101;
      *(v90 + 80) = v96;
      *(v90 + 88) = v95;
      goto LABEL_125;
    }

    v18 = v11[5];

    v19 = sub_19A572E7C();
    if (v18)
    {
      v20 = sub_19A5737BC();

      v3 = v125;
      if (v19 == v20)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v3 = v125;
      if (!v19)
      {
LABEL_24:
        sub_19A386EC4(v3);
        sub_19A572F2C();
        sub_19A572F2C();

        v21 = sub_19A572EBC();
        result = sub_19A572EBC();
        v95 = result;
        v96 = v21;
        if (result >> 14 < v21 >> 14)
        {
          goto LABEL_153;
        }

        goto LABEL_25;
      }
    }

    result = sub_19A378268(&v127);
LABEL_125:
    v1 = v91;
LABEL_18:
    v2 = v114 + 1;
    if (v114 + 1 == v112)
    {
      return v98;
    }

    if (v2 >= *(v1 + 16))
    {
      goto LABEL_138;
    }
  }

  v13 = v113;
  while (1)
  {

    v14 = sub_19A572E7C();

    v15 = __OFADD__(v12, v14);
    v12 += v14;
    if (v15)
    {
      break;
    }

    v13 += 48;
    if (!--v10)
    {
      goto LABEL_13;
    }
  }

LABEL_132:
  __break(1u);
LABEL_133:
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
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t PersonIndications.Indication.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x19A900A50](0x636972656E656720, 0xE800000000000000);
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x19A900A50](0x70756F726720, 0xE600000000000000);
  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  MEMORY[0x19A900A50](0x6C7069746C756D20, 0xEF656C706F655065);
  if ((v1 & 8) == 0)
  {
LABEL_5:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  MEMORY[0x19A900A50](0x7265646E656720, 0xE700000000000000);
  if ((v1 & 0x10) == 0)
  {
LABEL_6:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    MEMORY[0x19A900A50](0x6963696E68746520, 0xEA00000000007974);
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  MEMORY[0x19A900A50](1701273888, 0xE400000000000000);
  if ((v1 & 0x20) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v1 & 0x40) != 0)
  {
LABEL_8:
    MEMORY[0x19A900A50](0xD00000000000002CLL, 0x800000019A59C210);
  }

LABEL_9:
  MEMORY[0x19A900A50](23840, 0xE200000000000000);
  return 91;
}

uint64_t PersonIndications.Span.prompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PersonIndications.Span.description.getter()
{
  MEMORY[0x19A900A50](39, 0xE100000000000000);
  v0 = sub_19A572F9C();
  v1 = MEMORY[0x19A900970](v0);
  v3 = v2;

  MEMORY[0x19A900A50](v1, v3);

  MEMORY[0x19A900A50](541073447, 0xE400000000000000);
  sub_19A573ACC();
  MEMORY[0x19A900A50](8250, 0xE200000000000000);
  v4 = PersonIndications.Indication.description.getter();
  MEMORY[0x19A900A50](v4);

  return 0;
}

uint64_t sub_19A4D5A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19A573ACC();
  MEMORY[0x19A900A50](3943982, 0xE300000000000000);
  sub_19A573ACC();
  MEMORY[0x19A900A50](0x7265646E6567202CLL, 0xEB00000000203A73);
  v4 = MEMORY[0x19A900C10](a3, &type metadata for Gender);
  MEMORY[0x19A900A50](v4);

  return 0;
}

uint64_t sub_19A4D5B3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2B70);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D8204();
  sub_19A5741AC();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_19A387CB4();
  sub_19A573E7C();
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1460);
    sub_19A4D8258();
    sub_19A573E7C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_19A4D5CF0()
{
  if (*v0)
  {
    return 0x737265646E6567;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_19A4D5D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000019A59C320 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x737265646E6567 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_19A4D5E18(uint64_t a1)
{
  v2 = sub_19A4D8204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4D5E54(uint64_t a1)
{
  v2 = sub_19A4D8204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4D5E90(void *a1, void *a2)
{
  if ((*a2 ^ *a1) >> 14 || (a1[1] ^ a2[1]) >> 14)
  {
    return 0;
  }

  else
  {
    return sub_19A4D42C4(a1[2], a2[2]);
  }
}

uint64_t sub_19A4D5ED8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_19A4D7E10(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_19A4D5F2C()
{
  v1 = *v0;
  v2 = 0x74706D6F7270;
  if (v1 == 4)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6974616369646E69;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_19A4D5FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A4D8000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A4D6024(uint64_t a1)
{
  v2 = sub_19A4D742C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4D6060(uint64_t a1)
{
  v2 = sub_19A4D742C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonIndications.Span.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2AD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v21 = *(v1 + 16);
  v7 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v7;
  v8 = *(v1 + 40);
  v13 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D742C();
  sub_19A5741AC();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_19A573E2C();
  if (!v9)
  {
    v11 = v16;
    v10 = v17;
    LODWORD(v19) = v21;
    v22 = 1;
    sub_19A44B004();
    sub_19A573E7C();
    v19 = v10;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2AE8);
    sub_19A4D7480();
    sub_19A573E7C();
    v19 = v11;
    v22 = 3;
    sub_19A573E7C();
    v19 = v15;
    v22 = 4;
    sub_19A573E7C();
    v19 = v13;
    v20 = v14;
    v22 = 5;
    sub_19A387CB4();
    sub_19A573E7C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PersonIndications.Span.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2B00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D742C();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v31[0]) = 0;
  v9 = sub_19A573CFC();
  v11 = v10;
  v26 = v9;
  LOBYTE(v27) = 1;
  sub_19A44AFB0();
  sub_19A573D4C();
  v39 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2AE8);
  LOBYTE(v27) = 2;
  v25 = sub_19A4D7558();
  sub_19A573D4C();
  v24 = v31[0];
  LOBYTE(v27) = 3;
  sub_19A573D4C();
  v23 = v31[0];
  LOBYTE(v27) = 4;
  sub_19A573D4C();
  v25 = v31[0];
  v40 = 5;
  sub_19A387D08();
  sub_19A573D4C();
  (*(v6 + 8))(v8, v5);
  v21 = *(&v38 + 1);
  v22 = v38;
  v12 = v25;
  v13 = v26;
  *&v27 = v26;
  *(&v27 + 1) = v11;
  v14 = v39;
  LODWORD(v28) = v39;
  v15 = v24;
  v16 = v23;
  *(&v28 + 1) = v24;
  *&v29 = v23;
  *(&v29 + 1) = v25;
  v30 = v38;
  v17 = v28;
  *a2 = v27;
  a2[1] = v17;
  v18 = v30;
  a2[2] = v29;
  a2[3] = v18;
  sub_19A37820C(&v27, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v31[0] = v13;
  v31[1] = v11;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = v12;
  v36 = v22;
  v37 = v21;
  return sub_19A378268(v31);
}

uint64_t PersonIndications.prompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PersonIndications.description.getter()
{
  v1 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = v0[3];
  v35 = *v0;
  v30 = *(v0 + 1);
  v36 = v30;
  v37 = v11;
  v12 = PersonIndications.spans.getter();
  v13 = *(v12 + 16);
  if (v13)
  {
    v29[2] = v10;
    v29[3] = v9;
    v29[4] = v6;
    v29[5] = v3;
    v34 = MEMORY[0x1E69E7CC0];
    sub_19A322580(0, v13, 0);
    v14 = v34;
    v29[1] = v12;
    v15 = v12 + 48;
    do
    {
      v16 = *v15;
      v17 = *(v15 + 32);
      v32 = 0;
      v33 = 0xE000000000000000;
      MEMORY[0x19A900A50](39, 0xE100000000000000);
      v18 = sub_19A572F9C();
      v19 = MEMORY[0x19A900970](v18);
      v21 = v20;

      MEMORY[0x19A900A50](v19, v21);

      MEMORY[0x19A900A50](541073447, 0xE400000000000000);
      v31 = v17;
      sub_19A573ACC();
      MEMORY[0x19A900A50](8250, 0xE200000000000000);
      LODWORD(v31) = v16;
      v22 = PersonIndications.Indication.description.getter();
      MEMORY[0x19A900A50](v22);

      v23 = v32;
      v24 = v33;
      v34 = v14;
      v26 = *(v14 + 16);
      v25 = *(v14 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_19A322580((v25 > 1), v26 + 1, 1);
        v14 = v34;
      }

      v15 += 64;
      *(v14 + 16) = v26 + 1;
      v27 = v14 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v35 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  sub_19A572BEC();

  sub_19A572C8C();
  sub_19A572C7C();

  sub_19A572C6C();

  sub_19A572C7C();
  sub_19A572C6C();

  sub_19A572C7C();
  sub_19A572CAC();
  sub_19A5710EC();
  return sub_19A572D7C();
}

double sub_19A4D6BB8()
{
  v0 = sub_19A572F9C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFA8);
  v7 = swift_allocObject();
  *&result = 1;
  *(v7 + 16) = xmmword_19A576E10;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  *(v7 + 48) = v0;
  *(v7 + 56) = v2;
  *(v7 + 64) = v4;
  *(v7 + 72) = v6;
  qword_1ED82BD08 = 0;
  unk_1ED82BD10 = 0xE000000000000000;
  qword_1ED82BD18 = v7;
  unk_1ED82BD20 = MEMORY[0x1E69E7CC0];
  return result;
}

unint64_t sub_19A4D6C5C()
{
  v1 = 0x74706D6F7270;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x736E617073;
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

uint64_t sub_19A4D6CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A4D8360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A4D6D00(uint64_t a1)
{
  v2 = sub_19A4D7630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4D6D3C(uint64_t a1)
{
  v2 = sub_19A4D7630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonIndications.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2B18);
  v12 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v11[0] = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D7630();

  sub_19A5741AC();
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = 2;
  sub_19A3A40A4();
  v9 = v11[1];
  sub_19A573E7C();

  if (!v9)
  {
    v13 = v11[0];
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2B20);
    sub_19A4D7684();
    sub_19A573E7C();
  }

  return (*(v12 + 8))(v5, v3);
}

uint64_t PersonIndications.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2B28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D7630();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = 2;
  sub_19A3A4050();
  sub_19A573CDC();
  v10 = v21;
  if (v21)
  {
    v18 = a2;
    v19 = v22;
    v17 = v20;
  }

  else
  {
    LOBYTE(v20) = 0;
    v11 = sub_19A573CFC();
    v18 = a2;
    v17 = sub_19A3871A0(v11, v12);
    v10 = v13;
    v19 = v14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2B20);
  v23 = 3;
  sub_19A4D7794();
  sub_19A573CDC();
  v15 = v20;
  if (v20)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v23 = 1;
    sub_19A573D4C();
    (*(v6 + 8))(v8, v5);
    v15 = v20;
  }

  v16 = v18;
  *v18 = v17;
  v16[1] = v10;
  v16[2] = v19;
  v16[3] = v15;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A4D725C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_19A573F1C() & 1) == 0 || (sub_19A4D3D04(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_19A4D3EEC(v3, v4);
}

uint64_t _s16VisualGeneration17PersonIndicationsV4SpanV2eeoiySbAE_AEtFZ_0(int8x16_t *a1, int8x16_t *a2)
{
  v2 = a1[1].i32[0];
  v4 = a1[1].i64[1];
  v3 = a1[2].i64[0];
  v5 = a1[2].i64[1];
  v6 = a2[1].i32[0];
  v8 = a2[1].i64[1];
  v7 = a2[2].i64[0];
  v9 = a2[2].i64[1];
  v14 = a2[3];
  v15 = a1[3];
  if (a1->i64[0] == a2->i64[0] && a1->i64[1] == a2->i64[1])
  {
    if (v2 != v6)
    {
LABEL_11:
      v11 = 0;
      return v11 & 1;
    }
  }

  else
  {
    v10 = sub_19A573F1C();
    v11 = 0;
    if ((v10 & 1) == 0 || v2 != v6)
    {
      return v11 & 1;
    }
  }

  if ((sub_19A4D406C(v4, v8) & 1) == 0 || (sub_19A4D406C(v3, v7) & 1) == 0 || (sub_19A4D406C(v5, v9) & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4000uLL), veorq_s8(v14, v15)));
  v11 = v12.i8[0] & v12.i8[4];
  return v11 & 1;
}

unint64_t sub_19A4D742C()
{
  result = qword_1EAFA2AE0;
  if (!qword_1EAFA2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2AE0);
  }

  return result;
}

unint64_t sub_19A4D7480()
{
  result = qword_1EAFA2AF0;
  if (!qword_1EAFA2AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2AE8);
    sub_19A4D7504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2AF0);
  }

  return result;
}

unint64_t sub_19A4D7504()
{
  result = qword_1EAFA2AF8;
  if (!qword_1EAFA2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2AF8);
  }

  return result;
}

unint64_t sub_19A4D7558()
{
  result = qword_1EAFA2B08;
  if (!qword_1EAFA2B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2AE8);
    sub_19A4D75DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B08);
  }

  return result;
}

unint64_t sub_19A4D75DC()
{
  result = qword_1EAFA2B10;
  if (!qword_1EAFA2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B10);
  }

  return result;
}

unint64_t sub_19A4D7630()
{
  result = qword_1ED8248A8;
  if (!qword_1ED8248A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248A8);
  }

  return result;
}

unint64_t sub_19A4D7684()
{
  result = qword_1EAF9F108;
  if (!qword_1EAF9F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2B20);
    sub_19A4D7708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F108);
  }

  return result;
}

unint64_t sub_19A4D7708()
{
  result = qword_1EAF9F678;
  if (!qword_1EAF9F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F678);
  }

  return result;
}

uint64_t sub_19A4D775C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_19A4D7794()
{
  result = qword_1EAF9E8B0;
  if (!qword_1EAF9E8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2B20);
    sub_19A4D7818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E8B0);
  }

  return result;
}

unint64_t sub_19A4D7818()
{
  result = qword_1EAF9EC90;
  if (!qword_1EAF9EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EC90);
  }

  return result;
}

unint64_t sub_19A4D7870()
{
  result = qword_1EAFA2B30;
  if (!qword_1EAFA2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B30);
  }

  return result;
}

unint64_t sub_19A4D78C8()
{
  result = qword_1EAFA2B38;
  if (!qword_1EAFA2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B38);
  }

  return result;
}

unint64_t sub_19A4D791C()
{
  result = qword_1EAFA2B40;
  if (!qword_1EAFA2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B40);
  }

  return result;
}

unint64_t sub_19A4D7974()
{
  result = qword_1EAFA2B48;
  if (!qword_1EAFA2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B48);
  }

  return result;
}

uint64_t sub_19A4D79E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_19A4D7A30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonIndications.Span.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonIndications.Span.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A4D7C04()
{
  result = qword_1EAFA2B50;
  if (!qword_1EAFA2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B50);
  }

  return result;
}

unint64_t sub_19A4D7C5C()
{
  result = qword_1EAFA2B58;
  if (!qword_1EAFA2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B58);
  }

  return result;
}

unint64_t sub_19A4D7CB4()
{
  result = qword_1ED824898;
  if (!qword_1ED824898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824898);
  }

  return result;
}

unint64_t sub_19A4D7D0C()
{
  result = qword_1ED8248A0;
  if (!qword_1ED8248A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248A0);
  }

  return result;
}

unint64_t sub_19A4D7D64()
{
  result = qword_1EAFA2B60;
  if (!qword_1EAFA2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B60);
  }

  return result;
}

unint64_t sub_19A4D7DBC()
{
  result = qword_1EAFA2B68;
  if (!qword_1EAFA2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B68);
  }

  return result;
}

uint64_t sub_19A4D7E10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2B88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D8204();
  sub_19A57417C();
  v9 = 0;
  sub_19A387D08();
  sub_19A573D4C();
  v6 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1460);
  v9 = 1;
  sub_19A4D82DC();
  sub_19A573D4C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

uint64_t sub_19A4D8000(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616369646E69 && a2 == 0xEA00000000006E6FLL || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A59C260 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000019A59C280 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000019A59C2A0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000019A59C2C0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_19A4D8204()
{
  result = qword_1EAFA2B78;
  if (!qword_1EAFA2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B78);
  }

  return result;
}

unint64_t sub_19A4D8258()
{
  result = qword_1EAFA2B80;
  if (!qword_1EAFA2B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1460);
    sub_19A37AEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B80);
  }

  return result;
}

unint64_t sub_19A4D82DC()
{
  result = qword_1EAFA2B90;
  if (!qword_1EAFA2B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1460);
    sub_19A37ADAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B90);
  }

  return result;
}

uint64_t sub_19A4D8360(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E617073 && a2 == 0xE500000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A59C2E0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000019A59C300 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_19A4D84DC()
{
  result = qword_1EAFA2B98;
  if (!qword_1EAFA2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2B98);
  }

  return result;
}

unint64_t sub_19A4D8534()
{
  result = qword_1EAFA2BA0;
  if (!qword_1EAFA2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2BA0);
  }

  return result;
}

unint64_t sub_19A4D858C()
{
  result = qword_1EAFA2BA8;
  if (!qword_1EAFA2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2BA8);
  }

  return result;
}

uint64_t dispatch thunk of ForceInProcessGenerationAssignable.forceInProcessGeneration.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A31845C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ForceInProcessGenerationAssignable.assign(forceInProcessGeneration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A2F759C;

  return v9(a1, a2, a3);
}

uint64_t BidirectionalCollection._visualGeneration_suffix(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18 = a2;
  v17 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v14 - v7;
  swift_getAssociatedConformanceWitness();
  v9 = sub_19A573ADC();
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v12 = v19;
  result = BidirectionalCollection._visualGeneration_startOfSuffix(while:)(a1, v18, a3, v8);
  if (!v12)
  {
    v19 = 0;
    result = sub_19A572C2C();
    if (result)
    {
      (*(v16 + 32))(v11, v8, AssociatedTypeWitness);
      swift_getWitnessTable();
      sub_19A57343C();
      return (*(v15 + 8))(v11, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BidirectionalCollection._visualGeneration_startOfSuffix(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a1;
  v41 = a2;
  v31 = a4;
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v29 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  sub_19A57341C();
  v14 = (v7 + 8);
  v30 = v7;
  v32 = (v4 + 16);
  v33 = (v7 + 16);
  v34 = (v4 + 8);
  v37 = v13;
  v38 = v6;
  v36 = (v7 + 8);
  while (1)
  {
    v15 = v43;
    sub_19A5733DC();
    swift_getAssociatedConformanceWitness();
    v16 = sub_19A572C2C();
    v17 = *v14;
    v17(v15, v6);
    if (v16)
    {
      v26 = v13;
      return (*(v30 + 32))(v31, v26, v6);
    }

    v18 = v44;
    (*v33)(v44, v13, v6);
    sub_19A572BDC();
    v19 = sub_19A57345C();
    v20 = v35;
    v21 = AssociatedTypeWitness;
    (*v32)(v35);
    v19(v45, 0);
    v22 = v46;
    v23 = v40(v20);
    if (v22)
    {
      (*v34)(v20, v21);
      v27 = v38;
      v17(v18, v38);
      return (v17)(v37, v27);
    }

    v24 = v23;
    (*v34)(v20, v21);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v46 = 0;
    v6 = v38;
    v25 = v36;
    v17(v44, v38);
    v14 = v25;
    v13 = v37;
  }

  v6 = v38;
  v17(v37, v38);
  v26 = v44;
  return (*(v30 + 32))(v31, v26, v6);
}

uint64_t sub_19A4D8E80(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1701736302;
  }

  if (!result && a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 7958113;
  }

  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    if (a2 - result == 1)
    {
      v5[0] = 0x20796C6E6FLL;
      v5[1] = 0xE500000000000000;
LABEL_16:
      v4 = sub_19A573EDC();
      MEMORY[0x19A900A50](v4);

      return v5[0];
    }

    if (result)
    {
      if (a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_19A57395C();

        v5[0] = 0x726F6D20796C6E6FLL;
        v5[1] = 0xEF206E6168742065;
        goto LABEL_16;
      }
    }

    else
    {
      strcpy(v5, "no more than ");
      HIWORD(v5[1]) = -4864;
      if (!__OFSUB__(a2, 1))
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    v5[0] = sub_19A573EDC();
    v5[1] = v3;
    result = MEMORY[0x19A900A50](544175136, 0xE400000000000000);
    if (!__OFSUB__(a2, 1))
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for DetectedFacesPolicy()
{
  result = qword_1EAF9F5C8;
  if (!qword_1EAF9F5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetectedFacesPolicy.detectedFaces.getter()
{
  type metadata accessor for DetectedFacesPolicy();
}

uint64_t DetectedFacesPolicy.description.getter()
{
  sub_19A57395C();
  type metadata accessor for DetectedFacesPolicy();
  v0 = sub_19A573EDC();

  MEMORY[0x19A900A50](0xD000000000000011, 0x800000019A59B3B0);
  sub_19A573ACC();
  MEMORY[0x19A900A50](3943982, 0xE300000000000000);
  sub_19A573ACC();
  MEMORY[0x19A900A50](0, 0xE000000000000000);

  MEMORY[0x19A900A50](0x6465776F6C6C6120, 0xE800000000000000);
  return v0;
}

uint64_t sub_19A4D922C(uint64_t a1)
{
  result = sub_19A4D92B4(&qword_1EAFA2BB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A4D9270(uint64_t a1)
{
  result = sub_19A4D92B4(&unk_1EAFA2BB8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A4D92B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DetectedFacesPolicy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A4D92FC()
{
  v1 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_19A572C8C();
  sub_19A572C7C();
  v4 = type metadata accessor for DetectedFacesPolicy();
  sub_19A572C5C();
  sub_19A572C7C();
  sub_19A4D8E80(*(v0 + *(v4 + 20)), *(v0 + *(v4 + 20) + 8));
  sub_19A572C6C();

  sub_19A572C7C();
  sub_19A572CAC();
  sub_19A5710EC();
  return sub_19A572D7C();
}

void sub_19A4D953C()
{
  type metadata accessor for GeneratedImage();
  if (v0 <= 0x3F)
  {
    sub_19A35AF08();
    if (v1 <= 0x3F)
    {
      sub_19A4D95D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A4D95D8()
{
  if (!qword_1EAF9F0D8)
  {
    sub_19A57288C();
    v0 = sub_19A57312C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F0D8);
    }
  }
}

uint64_t dispatch thunk of GenerationSeedAssignable.assignedGenerationSeed.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A4D9748;

  return v7(a1, a2);
}

uint64_t sub_19A4D9748(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t dispatch thunk of GenerationSeedAssignable.assign(generationSeed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19A2F759C;

  return v11(a1, a2 & 1, a3, a4);
}

unint64_t AppleDiffusionPipeline.IPASetting.rawValue.getter(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000021;
      break;
    case 2:
    case 3:
    case 6:
    case 7:
      result = 0xD000000000000022;
      break;
    case 8:
    case 9:
    case 18:
    case 19:
      result = 0xD000000000000028;
      break;
    case 10:
    case 11:
    case 12:
    case 13:
      result = 0xD00000000000002BLL;
      break;
    case 14:
    case 15:
      result = 0xD00000000000002ELL;
      break;
    case 16:
    case 17:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19A4D9AF8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = AppleDiffusionPipeline.IPASetting.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AppleDiffusionPipeline.IPASetting.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A4D9B80()
{
  v1 = *v0;
  sub_19A5740BC();
  AppleDiffusionPipeline.IPASetting.rawValue.getter(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A4D9BE4()
{
  AppleDiffusionPipeline.IPASetting.rawValue.getter(*v0);
  sub_19A572E4C();
}

uint64_t sub_19A4D9C38()
{
  v1 = *v0;
  sub_19A5740BC();
  AppleDiffusionPipeline.IPASetting.rawValue.getter(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A4D9C98@<X0>(_BYTE *a1@<X8>)
{
  result = _s13DiffusionBase05AppleA8PipelineV10IPASettingO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_19A4D9CC8@<X0>(unint64_t *a1@<X8>)
{
  result = AppleDiffusionPipeline.IPASetting.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double variable initialization expression of AppleDiffusionPipeline.layoutConditioner@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

DiffusionBase::AppleDiffusionPipeline::MemoryReductionLevel_optional __swiftcall AppleDiffusionPipeline.MemoryReductionLevel.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_19A4D9D84@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t AppleDiffusionPipeline.init(unet:encoder:decoder:sketchConditioner:imageConditioner:layoutConditioner:reduceMemory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16)
{
  v103 = a7;
  v104 = a8;
  v102 = a6;
  v98 = a4;
  v99 = a5;
  v94 = a15;
  v97 = a14;
  v100 = a11;
  v101 = a10;
  LODWORD(v105) = a16;
  v96 = a12;
  v93 = a13;
  v118 = sub_19A570EAC();
  v106 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v107 = &v83[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v89 = &v83[-v22];
  v23 = type metadata accessor for AppleDiffusionPipeline(0);
  v24 = (a9 + v23[6]);
  v25 = v23[11];
  v26 = a9 + v23[10];
  v90 = v23[5];
  sub_19A4E78A8(a1, a9 + v90, type metadata accessor for AppleDiffusionUnet);
  v91 = a2;
  v92 = a3;
  *v24 = a2;
  v24[1] = a3;
  v27 = v99;
  v24[2] = v98;
  v24[3] = v27;
  v28 = (a9 + v23[7]);
  v29 = v103;
  *v28 = v102;
  v28[1] = v29;
  v30 = v100;
  v31 = v101;
  v28[2] = v104;
  v28[3] = v31;
  *(a9 + v23[8]) = v30;
  v32 = (a9 + v23[9]);
  v33 = v93;
  *v32 = v96;
  v32[1] = v33;
  v34 = a9;
  v35 = v94;
  v32[2] = v97;
  v36 = *(v35 + 16);
  *v26 = *v35;
  *(v26 + 16) = v36;
  *(v26 + 32) = *(v35 + 32);
  *(v34 + v25) = v105;
  v37 = a1;
  v38 = v23[12];
  sub_19A57235C();
  v39 = *(a1 + 208);
  if (v39 >> 62)
  {
    v82 = sub_19A573B4C();
    v40 = v95;
    if (!v82)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v40 = v95;
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if (qword_1ED824D40 != -1)
      {
        swift_once();
      }

      v42 = sub_19A5723FC();
      __swift_project_value_buffer(v42, qword_1ED82BD48);
      v43 = sub_19A5723DC();
      v44 = sub_19A57355C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_19A2DE000, v43, v44, "Unable to get unet user metadata", v45, 2u);
        MEMORY[0x19A902C50](v45, -1, -1);
      }

      sub_19A4E6F34();
      swift_allocError();
      *v46 = xmmword_19A577090;
      *(v46 + 16) = 5;
      swift_willThrow();
      goto LABEL_13;
    }
  }

  v105 = v39 & 0xC000000000000001;
  v93 = v38;
  if ((v39 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x19A901520](0, v39);
  }

  else
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v41 = *(v39 + 32);
  }

  sub_19A52C5EC(v41 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v114);
  memcpy(v115, v114, sizeof(v115));
  if (sub_19A4E6F10(v115) == 1)
  {

    v38 = v93;
    goto LABEL_8;
  }

  memcpy(v112, v115, sizeof(v112));
  memcpy(v113, v115, sizeof(v113));
  v49 = sub_19A489468(v113);
  v104 = v39;
  v86 = v39 >> 62;
  if (v49 == 1)
  {
    v84 = 0;
    v85 = 0;
    goto LABEL_29;
  }

  if (v113[1] != 1)
  {
    v50 = v113[2];
    v51 = v113[3];

    if (v51)
    {
      if (v50 == 7168876 && v51 == 0xE300000000000000)
      {
        HIDWORD(v85) = 1;
      }

      else
      {
        HIDWORD(v85) = sub_19A573F1C();
        if (v50 == 0x776F6C662D6D636CLL && v51 == 0xE800000000000000)
        {
          LODWORD(v85) = 1;
LABEL_27:

          v52 = v112[28];
          if (!v112[28])
          {
            goto LABEL_28;
          }

LABEL_23:
          *v111 = 1634889580;
          *&v111[8] = 0xE400000000000000;
          MEMORY[0x1EEE9AC00](v49);
          *&v83[-16] = v111;

          v84 = sub_19A374F10(sub_19A33E48C, &v83[-32], v52);

          goto LABEL_29;
        }
      }

      LODWORD(v85) = sub_19A573F1C();
      goto LABEL_27;
    }
  }

  v85 = 0;
  v52 = v112[28];
  if (v112[28])
  {
    goto LABEL_23;
  }

LABEL_28:
  v84 = 0;
LABEL_29:
  v88 = sub_19A4E6FD0(&unk_1F0DB5498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C08);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_19A57A9D0;
  v54 = 4;
  *(v53 + 32) = 4;
  *(v53 + 36) = 0x3ECCCCCD00000000;
  *(v53 + 44) = 5;
  *(v53 + 48) = 0x3ECCCCCD00000000;
  *(v53 + 56) = 6;
  *(v53 + 60) = 0x3ECCCCCD00000000;
  *(v53 + 68) = 7;
  *(v53 + 72) = 0x3ECCCCCD00000000;
  v87 = sub_19A4E70BC(v53);
  swift_setDeallocating();
  swift_deallocClassInstance();
  memcpy(v111, v112, sizeof(v111));
  if (sub_19A489468(v111) == 1)
  {
    v55 = v104;
    v56 = v89;
    goto LABEL_43;
  }

  *&v110[96] = *&v111[128];
  *&v110[112] = *&v111[144];
  *&v110[128] = *&v111[160];
  *&v110[141] = *&v111[173];
  *&v110[32] = *&v111[64];
  *&v110[48] = *&v111[80];
  *&v110[64] = *&v111[96];
  *&v110[80] = *&v111[112];
  *v110 = *&v111[32];
  *&v110[16] = *&v111[48];
  if (sub_19A4E7208(v110) != 1)
  {
    v116[6] = *&v110[96];
    v116[7] = *&v110[112];
    v117[0] = *&v110[128];
    *(v117 + 13) = *&v110[141];
    v116[2] = *&v110[32];
    v116[3] = *&v110[48];
    v116[4] = *&v110[64];
    v116[5] = *&v110[80];
    v116[0] = *v110;
    v116[1] = *&v110[16];
    sub_19A33546C(&v111[32], v109, &unk_1EAFA2C20);
    v57 = sub_19A4E7350(v116);
    v55 = v104;
    if (v40)
    {

      sub_19A2F3FA0(&v111[32], &unk_1EAFA2C20);
      sub_19A2F3FA0(v114, &unk_1EAFA2C10);
      v38 = v93;
LABEL_13:
      sub_19A4E71A8(v37, type metadata accessor for AppleDiffusionUnet);
      sub_19A4E71A8(v34 + v90, type metadata accessor for AppleDiffusionUnet);
      sub_19A4E6F88(v91, v92, v98, v99);

      sub_19A2F3FA0(v35, &qword_1EAFA2C00);
      v47 = sub_19A57236C();
      return (*(*(v47 - 8) + 8))(v34 + v38, v47);
    }

    v61 = v57;
    v103 = v58;
    sub_19A2F3FA0(&v111[32], &unk_1EAFA2C20);

    v62 = v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109[0] = v62;
    sub_19A4E4104(v61, sub_19A4E6E50, 0, isUniquelyReferenced_nonNull_native, v109);

    v88 = v109[0];
    v64 = v87;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v109[0] = v64;
    sub_19A4E3EDC(v103, sub_19A4E6E3C, 0, v65, v109);
    v40 = 0;
    v87 = v109[0];
    v56 = v89;
    if ((v112[36] & 0x10000) != 0)
    {
      goto LABEL_38;
    }

    v59 = v112[33];
    v60 = v112[34];
LABEL_40:
    if (v60)
    {
      v54 = 4;
    }

    else
    {
      v54 = v59;
    }

    goto LABEL_43;
  }

  v55 = v104;
  if ((v112[36] & 0x10000) == 0)
  {
    v59 = v112[33];
    v60 = v112[34];
    v56 = v89;
    goto LABEL_40;
  }

  v56 = v89;
LABEL_38:
  v54 = 4;
LABEL_43:
  v66 = type metadata accessor for AppleDiffusionUnet();
  sub_19A33546C(v37 + *(v66 + 24), v56, &unk_1EAFA2BF0);
  v67 = type metadata accessor for ConcreteAdapter();
  if ((*(*(v67 - 8) + 48))(v56, 1, v67) == 1)
  {
    sub_19A2F3FA0(v56, &unk_1EAFA2BF0);
    LODWORD(v102) = 11;
  }

  else
  {
    LODWORD(v102) = *v56;
    sub_19A4E71A8(v56, type metadata accessor for ConcreteAdapter);
  }

  v103 = v54;
  if (v86)
  {
    v68 = sub_19A573B4C();
    if (v68)
    {
LABEL_48:
      v99 = v41;
      v100 = v37;
      v95 = v40;
      v101 = v34;
      *v110 = MEMORY[0x1E69E7CC0];
      sub_19A4E432C(0, v68 & ~(v68 >> 63), 0);
      if ((v68 & 0x8000000000000000) == 0)
      {
        v69 = 0;
        v70 = *v110;
        v71 = (v106 + 16);
        v72 = v104;
        do
        {
          if (v105)
          {
            v73 = MEMORY[0x19A901520](v69, v72);
            (*v71)(v107, v73 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v118);
            v72 = v104;
            swift_unknownObjectRelease();
          }

          else
          {
            (*v71)(v107, *(v72 + 8 * v69 + 32) + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v118);
          }

          *v110 = v70;
          v75 = *(v70 + 16);
          v74 = *(v70 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_19A4E432C(v74 > 1, v75 + 1, 1);
            v72 = v104;
            v70 = *v110;
          }

          ++v69;
          *(v70 + 16) = v75 + 1;
          (*(v106 + 32))(v70 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v75, v107, v118);
        }

        while (v68 != v69);

        v37 = v100;
        v34 = v101;
        goto LABEL_59;
      }

LABEL_67:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v68 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v68)
    {
      goto LABEL_48;
    }
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_59:
  memcpy(v110, v112, sizeof(v110));
  if (sub_19A489468(v110) == 1)
  {
    sub_19A2F3FA0(v114, &unk_1EAFA2C10);
    v76 = 0;
  }

  else
  {
    memcpy(v109, v112, sizeof(v109));
    sub_19A4895B4(v109, &v108);
    sub_19A2F3FA0(v114, &unk_1EAFA2C10);
    v76 = *&v110[232];

    sub_19A2F3FA0(v112, &qword_1EAFA2510);
  }

  v77 = BYTE4(v85) & 1;
  v78 = v85 & 1;
  v79 = v84 & 1;
  result = sub_19A4E71A8(v37, type metadata accessor for AppleDiffusionUnet);
  *v34 = v77;
  *(v34 + 1) = v78;
  *(v34 + 2) = v79;
  *(v34 + 3) = v102;
  v80 = v87;
  *(v34 + 8) = v88;
  *(v34 + 16) = v80;
  v81 = v103;
  *(v34 + 24) = v70;
  *(v34 + 32) = v81;
  *(v34 + 40) = v76;
  return result;
}

uint64_t sub_19A4DAA34(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v4;
  v7 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v7;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_19A4E434C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v20;
    v10 = a4;
    if (a4 <= a3)
    {
      v10 = a3;
    }

    v15 = v10 - a3 + 1;
    while (v9 < v5)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v9;
      a1(v19, &v18);
      if (v6)
      {
        goto LABEL_22;
      }

      v6 = 0;
      v20 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_19A4E434C((v12 > 1), v13 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v13 + 1;
      sub_19A2EA460(v19, v7 + 40 * v13 + 32);
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v9)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_19A4DABB0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v16 - v7;
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_19A4E436C(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_19A4E436C(v13 > 1, v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A4DAD74(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v34 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC8);
  v6 = MEMORY[0x1EEE9AC00](v32);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v24 - v9;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_19A4E452C(0, v10, 0);
  v11 = v36;
  v12 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v13 = *(v30 - 8);
  v14 = *(v13 + 16);
  v28 = v13 + 16;
  v29 = v14;
  v15 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v26 = v8;
  v27 = (v13 + 32);
  v24 = *(v13 + 72);
  v25 = v10;
  while (1)
  {
    v17 = v31;
    v16 = v32;
    v18 = *(v32 + 48);
    v19 = v30;
    v29(&v31[v18], v15, v30);
    *v8 = v12;
    (*v27)(v8 + *(v16 + 48), &v17[v18], v19);
    v33(&v35, v8);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_19A2F3FA0(v8, &qword_1EAFA2DC8);
    v20 = v35;
    v36 = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_19A4E452C((v21 > 1), v22 + 1, 1);
      v11 = v36;
    }

    ++v12;
    *(v11 + 16) = v22 + 1;
    *(v11 + 8 * v22 + 32) = v20;
    v15 += v24;
    v8 = v26;
    if (v25 == v12)
    {
      return v11;
    }
  }

  sub_19A2F3FA0(v8, &qword_1EAFA2DC8);

  __break(1u);
  return result;
}

uint64_t sub_19A4DAFD8(void (*a1)(uint64_t *__return_ptr, char *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC8);
  v5 = MEMORY[0x1EEE9AC00](v26);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v19 - v8;
  v9 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v11 = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
    v12 = *(v24 - 8);
    v13 = *(v12 + 16);
    v22 = v12 + 16;
    v23 = v13;
    v14 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v20 = *(v12 + 72);
    v21 = (v12 + 32);
    while (1)
    {
      v16 = v25;
      v15 = v26;
      v17 = *(v26 + 48);
      v18 = v24;
      v23(&v25[v17], v14, v24);
      *v7 = v11;
      (*v21)(&v7[*(v15 + 48)], &v16[v17], v18);
      v27(&v30, v7, &v29);
      sub_19A2F3FA0(v7, &qword_1EAFA2DC8);
      if (v3)
      {
        break;
      }

      ++v11;
      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      v14 += v20;
      if (v9 == v11)
      {
        return v31;
      }
    }
  }

  return result;
}

uint64_t sub_19A4DB1FC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D48);
  v25 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v19 - v7;
  v26 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_19A4E45CC(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v27 = v4;
    v11 = 0;
    v10 = v29;
    v12 = v26;
    if (v26 <= a3)
    {
      v12 = a3;
    }

    v20 = v12 - a3 + 1;
    v21 = v25 + 32;
    while (v11 < v9)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v14 = a3;
      v28 = a3 + v11;
      v15 = v27;
      v23(&v28);
      v27 = v15;
      if (v15)
      {
        goto LABEL_22;
      }

      v29 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_19A4E45CC(v16 > 1, v17 + 1, 1);
        v10 = v29;
      }

      *(v10 + 16) = v17 + 1;
      (*(v25 + 32))(v10 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v17, v8, v22);
      if (v26 < v14)
      {
        goto LABEL_18;
      }

      if (v20 == ++v11)
      {
        goto LABEL_19;
      }

      a3 = v14;
      if (v13 == v9)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDiffusionPipeline.loadResources()()
{
  v2 = v1;
  v3 = v0;
  if (qword_1ED824D40 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v4 = sub_19A5723FC();
    __swift_project_value_buffer(v4, qword_1ED82BD48);
    v5 = sub_19A5723DC();
    v6 = sub_19A57354C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19A2DE000, v5, v6, "loading all pipeline resources", v7, 2u);
      MEMORY[0x19A902C50](v7, -1, -1);
    }

    v8 = type metadata accessor for AppleDiffusionPipeline(0);
    v9 = *(v3 + *(v8 + 44));
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        AppleDiffusionPipeline.prewarmResources()();
        return;
      }

LABEL_21:
      v23 = *(v3 + *(v8 + 20) + 208);
      if (v23 >> 62)
      {
        v40 = v8;
        v24 = sub_19A573B4C();
        v48 = v40;
        v50 = v3;
        if (v24)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v48 = v8;
        v50 = v3;
        if (v24)
        {
LABEL_23:
          v25 = 0;
          v3 = v23 & 0xC000000000000001;
          v56 = v23 & 0xFFFFFFFFFFFFFF8;
          v52 = v23 & 0xC000000000000001;
          v54 = v23;
          do
          {
            if (v3)
            {
              MEMORY[0x19A901520](v25, v23);
              v26 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                goto LABEL_34;
              }
            }

            else
            {
              if (v25 >= *(v56 + 16))
              {
                goto LABEL_37;
              }

              v26 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }
            }

            v58 = v26;

            v27 = sub_19A5723DC();
            v28 = sub_19A57354C();

            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              v60 = v2;
              v30 = swift_slowAlloc();
              v61 = v30;
              *v29 = 136446210;
              v31 = sub_19A57397C();
              v33 = sub_19A31F114(v31, v32, &v61);
              v3 = v52;

              *(v29 + 4) = v33;
              _os_log_impl(&dword_19A2DE000, v27, v28, "Loading resources for %{public}s", v29, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v30);
              v34 = v30;
              v2 = v60;
              MEMORY[0x19A902C50](v34, -1, -1);
              v35 = v29;
              v23 = v54;
              MEMORY[0x19A902C50](v35, -1, -1);
            }

            sub_19A5735DC();
            if (v2)
            {
              goto LABEL_35;
            }

            ++v25;
          }

          while (v58 != v24);
        }
      }

      if (!*(v50 + v48[6]) || (ManagedMLModel.loadResources()(), !v41))
      {
        v42 = *(v50 + v48[7] + 8);
        ManagedMLModel.loadResources()();
        if (!v43)
        {
          sub_19A4E3544();
          if (v42)
          {
            ManagedMLModel.loadResources()();
            if (v44)
            {
            }

            sub_19A4E3544();
          }

          ManagedMLModel.loadResources()();
          if (!v45)
          {
            ManagedMLModel.loadResources()();
            if (!v46)
            {
              if (*(v50 + v48[10]))
              {
                ManagedMLModel.loadResources()();
              }
            }
          }
        }
      }

      return;
    }

    v10 = *(v3 + *(v8 + 20) + 208);
    if (!(v10 >> 62))
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = v8;
      v49 = v3;
      if (!v11)
      {
        break;
      }

      goto LABEL_9;
    }

    v36 = v8;
    v11 = sub_19A573B4C();
    v47 = v36;
    v49 = v3;
    if (!v11)
    {
      break;
    }

LABEL_9:
    v12 = 0;
    v3 = v10 & 0xC000000000000001;
    v55 = v10 & 0xFFFFFFFFFFFFFF8;
    v51 = v10 & 0xC000000000000001;
    v53 = v10;
    while (v3)
    {
      v8 = MEMORY[0x19A901520](v12, v10);
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_13:
      v57 = v13;

      v14 = sub_19A5723DC();
      v15 = sub_19A57354C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v59 = v2;
        v17 = swift_slowAlloc();
        v61 = v17;
        *v16 = 136446210;
        v18 = sub_19A57397C();
        v20 = sub_19A31F114(v18, v19, &v61);
        v3 = v51;

        *(v16 + 4) = v20;
        _os_log_impl(&dword_19A2DE000, v14, v15, "Loading resources for %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        v21 = v17;
        v2 = v59;
        MEMORY[0x19A902C50](v21, -1, -1);
        v22 = v16;
        v10 = v53;
        MEMORY[0x19A902C50](v22, -1, -1);
      }

      sub_19A5735DC();
      if (v2)
      {
LABEL_35:

        return;
      }

      ++v12;
      if (v57 == v11)
      {
        goto LABEL_40;
      }
    }

    if (v12 < *(v55 + 16))
    {

      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_40:
  v37 = *(v49 + *(v47 + 28) + 8);
  ManagedMLModel.loadResources()();
  if (!v38)
  {
    sub_19A4E3544();
    if (v37)
    {
      ManagedMLModel.loadResources()();
      if (v39)
      {
      }

      sub_19A4E3544();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDiffusionPipeline.prewarmResources()()
{
  v2 = v1;
  v3 = type metadata accessor for AppleDiffusionPipeline(0);
  v4 = *(v0 + *(v3 + 20) + 208);
  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v3;
  for (i = v0; v5; i = v0)
  {
    v6 = 0;
    v32 = v4 & 0xFFFFFFFFFFFFFF8;
    v33 = v4 & 0xC000000000000001;
    v30 = v5;
    v31 = v4;
    while (v33)
    {
      v3 = MEMORY[0x19A901520](v6, v4);
      v7 = v3;
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

LABEL_7:
      v34 = v8;
      if (qword_1ED824D40 != -1)
      {
        swift_once();
      }

      v9 = sub_19A5723FC();
      __swift_project_value_buffer(v9, qword_1ED82BD48);

      v10 = sub_19A5723DC();
      v11 = sub_19A57354C();

      v12 = v11;
      if (os_log_type_enabled(v10, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v35 = v14;
        *v13 = 136446210;
        v15 = sub_19A57397C();
        v17 = v2;
        v18 = sub_19A31F114(v15, v16, &v35);
        v5 = v30;

        *(v13 + 4) = v18;
        v2 = v17;
        _os_log_impl(&dword_19A2DE000, v10, v12, "Loading resources for %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x19A902C50](v14, -1, -1);
        v19 = v13;
        v4 = v31;
        MEMORY[0x19A902C50](v19, -1, -1);
      }

      sub_19A5735DC();
      if (v2)
      {

        return;
      }

      v0 = v7;
      ManagedMLModel.unloadResources()();

      ++v6;
      if (v34 == v5)
      {
        goto LABEL_21;
      }
    }

    if (v6 >= *(v32 + 16))
    {
      goto LABEL_19;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v20 = v3;
    v5 = sub_19A573B4C();
    v3 = v20;
    v28 = v20;
  }

LABEL_21:
  if (*(i + v28[6]))
  {
    ManagedMLModel.loadResources()();
    if (v21)
    {
      return;
    }

    ManagedMLModel.unloadResources()();
  }

  v22 = *(i + v28[7] + 8);
  ManagedMLModel.loadResources()();
  if (!v23)
  {
    sub_19A4E3544();
    if (v22)
    {
      ManagedMLModel.loadResources()();
      if (v24)
      {
      }

      sub_19A4E3544();
      ManagedMLModel.unloadResources()();
    }

    ManagedMLModel.unloadResources()();
    ManagedMLModel.loadResources()();
    if (!v25)
    {
      ManagedMLModel.unloadResources()();
      ManagedMLModel.loadResources()();
      if (!v26)
      {
        ManagedMLModel.unloadResources()();
        if (*(i + v28[10]))
        {
          ManagedMLModel.loadResources()();
          if (!v27)
          {
            ManagedMLModel.unloadResources()();
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall AppleDiffusionPipeline.unloadResources()()
{
  v1 = v0;
  if (qword_1ED824D40 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BD48);
  v3 = sub_19A5723DC();
  v4 = sub_19A57354C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A2DE000, v3, v4, "unloading all pipeline resources", v5, 2u);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  v6 = type metadata accessor for AppleDiffusionPipeline(0);
  v7 = *(v1 + v6[5] + 208);
  if (v7 >> 62)
  {
    v8 = sub_19A573B4C();
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](i, v7);
    }

    else
    {
    }

    ManagedMLModel.unloadResources()();
  }

LABEL_14:
  if (*(v1 + v6[6]))
  {
    ManagedMLModel.unloadResources()();
  }

  v10 = *(v1 + v6[7] + 8);
  ManagedMLModel.unloadResources()();
  if (v10)
  {
    ManagedMLModel.unloadResources()();
  }

  ManagedMLModel.unloadResources()();
  ManagedMLModel.unloadResources()();
  if (*(v1 + v6[10]))
  {
    ManagedMLModel.unloadResources()();
  }
}

uint64_t AppleDiffusionPipeline.generateImages(configuration:requestIdentifier:generationID:diagnosticsAccessor:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C30);
  v7[37] = swift_task_alloc();
  v7[38] = type metadata accessor for PipelineProgress();
  v7[39] = swift_task_alloc();
  type metadata accessor for AppleDiffusionUnet();
  v7[40] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v7[41] = v8;
  v7[42] = *(v8 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C38);
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C40);
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v9 = type metadata accessor for AppleDiffusionPipeline.ConditioningInputs(0);
  v7[61] = v9;
  v7[62] = *(v9 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v10 = sub_19A57102C();
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v11 = sub_19A570EAC();
  v7[69] = v11;
  v7[70] = *(v11 - 8);
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();
  v12 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  v7[73] = v12;
  v7[74] = *(v12 - 8);
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4DC504, 0, 0);
}

uint64_t sub_19A4DC504()
{
  v348 = v0;
  v1 = v0;
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[74];
  v5 = v0[73];
  v6 = v1[30];
  v7 = *(v4 + 56);
  v7(v2, 1, 1, v5);
  v8 = type metadata accessor for PipelineConfiguration(0);
  sub_19A33546C(v6 + *(v8 + 140), v3, &qword_1EAFA3300);
  v9 = *(v4 + 48);
  v10 = v9(v3, 1, v5);
  v11 = v1[82];
  v346 = v1;
  if (v10 == 1)
  {
    v312 = v9;
    v314 = v8;
    sub_19A2F3FA0(v11, &qword_1EAFA3300);
  }

  else
  {
    v12 = v1[72];
    sub_19A4E8BA0(v11, v1[77], type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    sub_19A502328(v12);
    v312 = v9;
    v314 = v8;
    v340 = v1[83];
    v13 = v1[81];
    v14 = v1[77];
    v15 = v1[73];
    v331 = v1[72];
    v16 = v1[70];
    v17 = v1[69];
    (*(v16 + 16))(v13);
    v18 = v15[5];
    v338 = *(v14 + v15[6]);
    v336 = *(v14 + v15[7]);
    v19 = *(v14 + v18 + 8);
    v333 = *(v14 + v18);
    v334 = *(v14 + v15[8]);
    v20 = (v13 + v18);
    v21 = *(v16 + 8);

    v21(v331, v17);
    sub_19A4E71A8(v14, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    v22 = v15[6];
    v23 = v15[7];
    v24 = v15[8];
    *v20 = v333;
    v20[1] = v19;
    v1 = v346;
    *(v13 + v22) = v338;
    *(v13 + v23) = v336;
    *(v13 + v24) = v334;
    v7(v13, 0, 1, v15);
    sub_19A4E8C08(v13, v340);
  }

  v25 = v1[68];
  v26 = v1[67];
  v27 = v1[66];
  v28 = v1[65];
  v29 = v1[36];
  v30 = v1[32];
  v31 = *(v27 + 16);
  v31(v25, v1[31], v28);
  v31(v26, v30, v28);
  _s15PowerLogMetricsCMa();
  v32 = swift_allocObject();
  v346[84] = v32;
  sub_19A570FAC();
  *(v32 + OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__adapters) = 0;
  *(v32 + OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__inputPixelsCount) = 0;
  *(v32 + OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__unetIterationsCount) = 0;
  *(v32 + OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__outputPixelsCount) = 0;
  v33 = sub_19A570FDC();
  v346[85] = v34;
  v32[2] = v33;
  v32[3] = v34;
  v35 = sub_19A570FDC();
  v37 = v36;
  v346[86] = v36;
  v38 = *(v27 + 8);
  v38(v26, v28);
  v38(v25, v28);
  v32[4] = v35;
  v32[5] = v37;
  v39 = *(v29 + 3);
  if (v39 != 11)
  {
    v40 = OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__adapters;
    swift_beginAccess();
    *(v32 + v40) = MEMORY[0x1E69E7CD0];
    sub_19A4E5308(v347, v39);
    swift_endAccess();
  }

  v41 = v346[36];
  v42 = sub_19A57231C();
  v346[87] = v42;
  v339 = *(v42 - 8);
  v346[88] = v339;
  v43 = swift_task_alloc();
  v346[89] = v43;
  v44 = type metadata accessor for AppleDiffusionPipeline(0);
  v45 = v41 + *(v44 + 48);
  sub_19A57234C();
  sub_19A5722EC();
  if (qword_1ED824D40 != -1)
  {
    swift_once();
  }

  v46 = sub_19A5723FC();
  __swift_project_value_buffer(v46, qword_1ED82BD48);
  v47 = sub_19A5723DC();
  v48 = sub_19A57354C();
  v315 = v44;
  v337 = v43;
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v347[0] = v50;
    *v49 = 136315138;
    v51 = sub_19A57397C();
    v53 = v42;
    v54 = sub_19A31F114(v51, v52, v347);

    *(v49 + 4) = v54;
    v42 = v53;
    _os_log_impl(&dword_19A2DE000, v47, v48, "Entering %s.", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x19A902C50](v50, -1, -1);
    MEMORY[0x19A902C50](v49, -1, -1);
  }

  v335 = v32;
  v55 = sub_19A57234C();
  v56 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v55, v56, v58, "diffusion generateImages", "", v57, 2u);
    MEMORY[0x19A902C50](v57, -1, -1);
  }

  v317 = v346[80];
  v319 = v346[83];
  v341 = v346[55];
  v324 = v346[56];
  v321 = v346[30];

  swift_task_alloc();
  v311 = *(v339 + 16);
  v311();
  sub_19A5723BC();
  swift_allocObject();
  v346[90] = sub_19A5723AC();

  v59 = sub_19A57236C();
  v60 = *(v59 - 8);
  v332 = v42;
  v61 = swift_task_alloc();
  v330 = v59;
  v313 = *(v60 + 16);
  v313(v61, v45, v59);
  v62 = swift_slowAlloc();
  *v62 = 0;
  v63 = sub_19A57234C();
  LOBYTE(v59) = sub_19A57361C();
  v64 = sub_19A5722FC();
  v316 = v63;
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v63, v59, v64, "encodeConditioning", "", v62, 2u);
  v65 = *(v341 + 48);
  sub_19A33546C(v319, v317, &qword_1EAFA3300);
  sub_19A4DFFA0(v324, v324 + v65, v321, v317);
  v305 = v45;
  v66 = v346[64];
  v327 = v346[60];
  v67 = v346[58];
  v68 = v346[57];
  v69 = v346[56];
  v70 = v346[36];
  sub_19A2F3FA0(v346[80], &qword_1EAFA3300);
  v71 = sub_19A57360C();
  v72 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v316, v71, v72, "encodeConditioning", "", v62, 2u);

  sub_19A3351B8(v69, v68, &qword_1EAFA2C38);
  MEMORY[0x19A902C50](v62, -1, -1);
  sub_19A3351B8(v68, v67, &qword_1EAFA2C38);
  v302 = *(v60 + 8);
  v302(v61, v330);

  v73 = *(v341 + 48);
  sub_19A4E8BA0(v67, v66, type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
  sub_19A3351B8(v67 + v73, v327, &qword_1EAFA2C40);
  v74 = v315[11];
  v75 = *(v70 + v74);
  if (*(v70 + v74))
  {
    v76 = v346[36];
    ManagedMLModel.unloadResources()();
    ManagedMLModel.unloadResources()();
    if (*(v76 + v315[10]))
    {
      ManagedMLModel.unloadResources()();
    }
  }

  sub_19A57325C();
  v77 = v335;
  v78 = v332;
  v79 = v339;
  v294 = v75;
  v82 = v346[30];
  v83 = *(v82 + v314[19]);
  if (v83 < 0)
  {
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
    goto LABEL_132;
  }

  v79 = v335;
  v75 = v346[36];
  v84 = swift_task_alloc();
  *(v84 + 16) = v82;
  *(v84 + 24) = v75;
  v303 = v83;
  v85 = sub_19A4DAA34(sub_19A4E786C, v84, 0, v83);

  if (!*(v85 + 16))
  {
    goto LABEL_127;
  }

  v86 = v346[83];
  v87 = v346[79];
  v88 = v346[30];
  sub_19A2F3EF0(v85 + 32, (v346 + 2));
  sub_19A33546C(v86, v87, &qword_1EAFA3300);
  v290 = v85 + 32;
  v304 = v85;
  v293 = sub_19A4E0C60(v88, v346 + 2, v87);
  sub_19A2F3FA0(v346[79], &qword_1EAFA3300);
  __swift_destroy_boxed_opaque_existential_0Tm((v346 + 2));
  if (v294 && *(v346[36] + v315[6]))
  {
    ManagedMLModel.unloadResources()();
  }

  sub_19A57325C();
  v92 = *(v293 + 16);
  v93 = MEMORY[0x1E69E7CC0];
  if (v92)
  {
    v94 = v346;
    v95 = v346[42];
    v347[0] = MEMORY[0x1E69E7CC0];
    sub_19A4E436C(0, v92, 0);
    v93 = v347[0];
    v97 = *(v95 + 16);
    v96 = v95 + 16;
    v325 = (*(v96 + 64) + 32) & ~*(v96 + 64);
    v98 = v293 + v325;
    v322 = *(v96 + 56);
    v99 = v97;
    do
    {
      v100 = v346[53];
      v101 = v346[52];
      v102 = v346[41];
      v99(v100, v98, v102);
      v99(v101, v100, v102);
      sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
      sub_19A5726BC();
      (*(v96 - 8))(v100, v102);
      v347[0] = v93;
      v104 = *(v93 + 16);
      v103 = *(v93 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_19A4E436C(v103 > 1, v104 + 1, 1);
        v93 = v347[0];
      }

      v105 = v346[54];
      v106 = v346[41];
      *(v93 + 16) = v104 + 1;
      (*(v96 + 16))(v93 + v325 + v104 * v322, v105, v106);
      v98 += v322;
      --v92;
    }

    while (v92);
    v77 = v335;
  }

  else
  {
    v94 = v346;
  }

  v78 = v332;
  v107 = v94[30];
  v108 = *(v107 + v314[14]);
  v301 = v93;
  if (v108)
  {
    v109 = *(v107 + v314[16]);
  }

  else
  {
    v109 = 0.0;
  }

  sub_19A2F3EF0(v290, (v346 + 7));
  v110 = v346[10];
  v75 = v346[11];
  __swift_project_boxed_opaque_existential_1(v346 + 7, v110);
  v111 = *(v75 + 32);
  LOBYTE(v347[0]) = v108 == 0;
  if (v108)
  {
    v112 = v109;
  }

  else
  {
    v112 = 1.0;
  }

  v79 = v111(LODWORD(v109) | ((v108 == 0) << 32), v110, v75);
  __swift_destroy_boxed_opaque_existential_0Tm((v346 + 7));
  v113 = *(v79 + 16);
  v114 = v112 * v113;
  if (COERCE_INT(fabs(v114)) > 2139095039)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v114 <= -9.2234e18)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v114 >= 9.2234e18)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    v250 = sub_19A573B4C();
    if (!v250)
    {
LABEL_136:
      v251 = v346;
      v252 = v346[64];
      v253 = v346[60];
      v254 = v346[36];
      swift_willThrow();
      sub_19A4E71A8(v252, type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
      sub_19A2F3FA0(v253, &qword_1EAFA2C40);

      sub_19A4E1290(v254, "diffusion generateImages", 24, 2);

      (*(v79 + 8))(v337, v78);
      goto LABEL_16;
    }

    if (v250 >= 1)
    {
      for (i = 0; i != v250; ++i)
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A901520](i, v75);
        }

        else
        {
        }

        ManagedMLModel.unloadResources()();
      }

      goto LABEL_136;
    }

    __break(1u);
    goto LABEL_138;
  }

  v115 = v114;
  if (v113 < v114)
  {
    v115 = *(v79 + 16);
  }

  v116 = v113 - v115;
  if (__OFSUB__(v113, v115))
  {
    goto LABEL_135;
  }

  v117 = (v346[30] + v314[11]);
  if (*(v117 + 8))
  {
    v118 = *(v79 + 16);
  }

  else
  {
    v118 = *v117;
  }

  v280 = v118;

  v119 = sub_19A5723DC();
  v120 = sub_19A57354C();
  if (os_log_type_enabled(v119, v120))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    *(v75 + 4) = *(v79 + 16);

    _os_log_impl(&dword_19A2DE000, v119, v120, "Running denoise loop for %ld iterations.", v75, 0xCu);
    MEMORY[0x19A902C50](v75, -1, -1);
  }

  else
  {
  }

  v276 = *(v79 + 16);
  if (v276)
  {
    v275 = v113;
    v316 = 0;
    v279 = v116 & ~(v116 >> 63);
    v121 = 0;
    v274 = v346[30];
    v122 = *(v274 + v314[22]);
    v281 = v79 + 32;
    v123 = v346[42];
    v323 = (v123 + 8);
    v326 = (v123 + 16);
    v318 = (v123 + 32);
    v284 = (v346[62] + 48);
    v297 = v123;
    v306 = (v123 + 40);
    v271 = v346[73];
    v272 = v346[38];
    v273 = v346[39];
    v277 = OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__unetIterationsCount;
    v278 = v346[61];
    v289 = v79;
    while (v121 < *(v79 + 16))
    {
      v291 = v121;
      v124 = *(v281 + 4 * v121);
      v125 = sub_19A5723DC();
      v126 = sub_19A57354C();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 134218240;
        *(v127 + 4) = v121;
        *(v127 + 12) = 2048;
        *(v127 + 14) = v124;
        _os_log_impl(&dword_19A2DE000, v125, v126, "Denoise step %ld: %f", v127, 0x16u);
        MEMORY[0x19A902C50](v127, -1, -1);
      }

      sub_19A57325C();
      v128 = sub_19A57234C();
      v129 = sub_19A57361C();
      if (sub_19A57376C())
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        v131 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v128, v129, v131, "denoiseStep", "", v130, 2u);
        MEMORY[0x19A902C50](v130, -1, -1);
      }

      swift_task_alloc();
      v311();
      swift_allocObject();
      sub_19A5723AC();

      v132 = *(v293 + 16);
      v77 = v315;
      if (v132)
      {
        v347[0] = MEMORY[0x1E69E7CC0];
        sub_19A4E436C(0, v132, 0);
        v133 = (*(v297 + 80) + 32) & ~*(v297 + 80);
        v134 = v293 + v133;
        v135 = *(v297 + 72);
        v316 = *(v297 + 16);
        v136 = v347[0];
        v307 = v133;
        do
        {
          v342 = v132;
          v137 = v346[53];
          v138 = v346[41];
          (v316)(v137, v134, v138);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060);
          v139 = swift_allocObject();
          *(v139 + 16) = xmmword_19A576E20;
          v140 = v139 + v133;
          (v316)(v140, v137, v138);
          (v316)(v140 + v135, v137, v138);
          v346[29] = v139;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50);
          sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50);
          sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
          sub_19A5725EC();
          (*v323)(v137, v138);
          v347[0] = v136;
          v142 = *(v136 + 16);
          v141 = *(v136 + 24);
          if (v142 >= v141 >> 1)
          {
            sub_19A4E436C(v141 > 1, v142 + 1, 1);
            v136 = v347[0];
          }

          v143 = v346[51];
          v144 = v346[41];
          *(v136 + 16) = v142 + 1;
          v133 = v307;
          (*v318)(v136 + v307 + v142 * v135, v143, v144);
          v134 += v135;
          v132 = v342 - 1;
        }

        while (v342 != 1);
        v328 = v136;
        v77 = v315;
        v79 = v289;
      }

      else
      {
        v328 = MEMORY[0x1E69E7CC0];
      }

      v146 = v346[60];
      v145 = v346[61];
      v147 = *v284;
      if ((*v284)(v146, 1, v145) == 1 || v280 >= v291)
      {
        v148 = v346;
        sub_19A4E78A8(v346[64], v346[63], type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
      }

      else
      {
        v148 = v346;
        v149 = v346[59];
        sub_19A33546C(v146, v149, &qword_1EAFA2C40);
        result = (v147)(v149, 1, v145);
        if (result == 1)
        {
          goto LABEL_147;
        }

        sub_19A4E8BA0(v346[59], v346[63], type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
      }

      v150 = v148[40];
      v151 = v148[36];
      v152 = swift_task_alloc();
      v313(v152, v305, v330);
      v78 = swift_slowAlloc();
      *v78 = 0;
      v153 = sub_19A57234C();
      v75 = sub_19A57361C();
      v154 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v153, v75, v154, "unet", "", v78, 2u);
      sub_19A4E78A8(v151 + *(v77 + 20), v150, type metadata accessor for AppleDiffusionUnet);
      if (__OFADD__(v279, v291))
      {
        goto LABEL_130;
      }

      buf = v78;
      v316 = v153;
      v320 = v152;
      v155 = *(v79 + 16);
      v310 = v279 + v155;
      if (__OFADD__(v279, v155))
      {
        goto LABEL_131;
      }

      v156 = v346[83];
      v157 = v346[73];
      v158 = v346[63];
      v159 = v346[49];
      v160 = v346[48];
      v161 = v346[41];
      v162 = v346[30];
      v163 = (v162 + v314[12]);
      v299 = *v163;
      v287 = *(v163 + 4);
      v164 = (v162 + v314[13]);
      v308 = *v164;
      v295 = *(v164 + 4);
      v165 = *v326;
      (*v326)(v346[50], v158, v161);
      (v165)(v159, v158 + v278[5], v161);
      v298 = v165;
      (v165)(v160, v158 + v278[6], v161);
      v166 = *(v158 + v278[7]);
      v167 = v158 + v278[8];
      v168 = *v167;
      v169 = *(v167 + 8);
      v170 = *(v167 + 16);
      v171 = *(v167 + 24);
      v172 = *(v158 + v278[9]);
      if (v312(v156, 1, v157))
      {
        v173 = [objc_opt_self() defaultOptions];
      }

      else
      {
        v174 = v346[76];
        sub_19A4E78A8(v346[83], v174, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
        v269 = [objc_opt_self() defaultOptions];
        v270 = v172;
        v282 = v166;
        v267 = *(v174 + v271[7]);
        v268 = *(v174 + v271[6]);
        v266 = *(v174 + v271[8]);
        v175 = v171;
        v176 = v170;
        v177 = v169;
        v178 = objc_allocWithZone(MEMORY[0x1E695FE88]);
        v179 = v168;
        v180 = sub_19A570DEC();
        v181 = sub_19A572CCC();
        v182 = v178;
        v169 = v177;
        v170 = v176;
        v171 = v175;
        v166 = v282;
        v183 = [v182 initWithOutputDirectory:v180 prefix:v181 shouldOverwrite:v268 modelIOFrameData:v267 segmentIOFrameData:v266];

        v168 = v179;
        v173 = v269;
        [v269 setInferenceFrameDataSerialization_];

        v172 = v270;
        sub_19A4E71A8(v174, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
      }

      v185 = v346[49];
      v184 = v346[50];
      v186 = v346[48];
      LOBYTE(v347[0]) = v295;
      v187 = sub_19A4EC548(v328, v299 | (v287 << 32), v308 | (v295 << 32), v184, v185, v186, v166, v168, v124, (v279 + v291) / v310, v169, v170, v171, v172, v122 == 1.0, v173);
      v189 = v346[49];
      v188 = v346[50];
      v190 = v346[48];
      v191 = v173;
      v192 = v346[40];
      v193 = v346[41];
      v343 = v346[36];

      v194 = *v323;
      (*v323)(v190, v193);
      v194(v189, v193);
      v296 = v194;
      v194(v188, v193);
      sub_19A4E71A8(v192, type metadata accessor for AppleDiffusionUnet);
      LOBYTE(v189) = sub_19A57360C();
      v195 = sub_19A5722FC();
      v75 = &dword_19A2DE000;
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v316, v189, v195, "unet", "", buf, 2u);

      MEMORY[0x19A902C50](buf, -1, -1);

      v302(v320, v330);

      v292 = v291 + 1;
      *(v335 + v277) = v292;
      v196 = swift_task_alloc();
      *(v196 + 16) = v343;
      *(v196 + 24) = v122;
      v300 = sub_19A4DABB0(sub_19A4E7910, v196, v187);
      v316 = 0;
      swift_bridgeObjectRelease_n();

      v197 = swift_task_alloc();
      v313(v197, v305, v330);
      v198 = swift_slowAlloc();
      *v198 = 0;
      v288 = v197;
      v199 = sub_19A57234C();
      LOBYTE(v189) = sub_19A57361C();
      v200 = sub_19A5722FC();
      bufa = v199;
      v283 = v198;
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v199, v189, v200, "schedulerStep", "", v198, 2u);
      v201 = v301;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v201 = sub_19A4E52B8(v301);
      }

      v77 = v293;
      v202 = v304;
      v78 = v298;
      v203 = v290;
      v301 = v201;
      if (v303)
      {
        v79 = 0;
        while (v79 < *(v202 + 16))
        {
          v204 = v77;
          v77 = v78;
          v78 = v326;
          sub_19A2F3EF0(v203, (v346 + 12));
          v205 = v346[15];
          v75 = v346[16];
          __swift_project_boxed_opaque_existential_1(v346 + 12, v205);
          if (v79 >= *(v300 + 16))
          {
            goto LABEL_122;
          }

          v329 = v203;
          v206 = (*(v297 + 80) + 32) & ~*(v297 + 80);
          v309 = *(v297 + 72);
          v207 = v309 * v79;
          v78 = v77;
          (v77)(v346[46], v300 + v206 + v309 * v79, v346[41]);
          v344 = v79;
          if (v79 >= *(v204 + 16))
          {
            goto LABEL_123;
          }

          v77 = v204;
          v208 = v78;
          v209 = v346[46];
          v210 = v346[45];
          (v208)(v210, v204 + v206 + v207, v346[41]);
          (*(v75 + 80))(v209, v210, v205, v75, v124);
          v211 = v346[46];
          v212 = v346[41];
          v75 = v323;
          v296(v346[45], v212);
          v296(v211, v212);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_19A4E52B8(v77);
          }

          v78 = v298;
          v79 = v206;
          if (v344 >= *(v77 + 16))
          {
            goto LABEL_124;
          }

          v213 = *v306;
          (*v306)(v77 + v206 + v207, v346[47], v346[41]);
          __swift_destroy_boxed_opaque_existential_0Tm((v346 + 12));
          sub_19A2F3EF0(v329, (v346 + 17));
          v214 = v346[20];
          v75 = v346[21];
          __swift_project_boxed_opaque_existential_1(v346 + 17, v214);
          v215 = (*(v75 + 72))(v214, v75);
          v216 = *(v215 + 16);
          if (v216)
          {
            v218 = v346[43];
            v217 = v346[44];
            v75 = v346[41];
            (v298)(v218, v215 + v206 + (v216 - 1) * v309, v75);

            (*v318)(v217, v218, v75);
            v219 = v301;
            v79 = v344;
          }

          else
          {

            v79 = v344;
            if (v344 >= *(v77 + 16))
            {
              goto LABEL_128;
            }

            (v298)(v346[44], v77 + v206 + v207, v346[41]);
            v219 = v301;
          }

          __swift_destroy_boxed_opaque_existential_0Tm((v346 + 17));
          if (v79 >= v219[2])
          {
            goto LABEL_125;
          }

          ++v79;
          v213(v219 + v206 + v207, v346[44], v346[41]);
          v316 = 0;
          v203 = v329 + 40;
          v202 = v304;
          if (v303 == v79)
          {
            goto LABEL_95;
          }
        }

        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

LABEL_95:
      v75 = v346[39];
      v220 = v346[34];
      v221 = v346[30];
      v222 = sub_19A57360C();
      v223 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, bufa, v222, v223, "schedulerStep", "", v283, 2u);

      MEMORY[0x19A902C50](v283, -1, -1);
      v302(v288, v330);

      v293 = v77;
      if (*(v221 + v314[25]))
      {
        v224 = v301;
      }

      else
      {
        v224 = v77;
      }

      __swift_project_boxed_opaque_existential_1(v221, *(v274 + 24));
      v225 = sub_19A573EDC();
      v227 = v226;
      sub_19A4E78A8(v221, v75 + *(v272 + 32), type metadata accessor for PipelineConfiguration);
      *v75 = v225;
      v121 = v292;
      v273[1] = v227;
      v273[2] = v292;
      v273[3] = v275;
      v273[4] = v224;
      if ((v220(v75) & 1) == 0)
      {
        v245 = v346[63];
        v246 = v346[64];
        v247 = v346[60];
        v248 = v346[39];
        v249 = v346[36];

        sub_19A4E71A8(v248, type metadata accessor for PipelineProgress);

        sub_19A4E71A8(v245, type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
        sub_19A4E1290(v249, "denoiseStep", 11, 2);

        sub_19A4E71A8(v246, type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
        sub_19A2F3FA0(v247, &qword_1EAFA2C40);

        sub_19A4E1290(v249, "diffusion generateImages", 24, 2);

        (*(v339 + 8))(v337, v332);

        sub_19A515FD8();

        v345 = MEMORY[0x1E69E7CC0];
        sub_19A2F3FA0(v346[83], &qword_1EAFA3300);

        v89 = v346[1];

        return v89(v345);
      }

      v228 = v346[63];
      v229 = v346[36];
      sub_19A4E71A8(v346[39], type metadata accessor for PipelineProgress);

      sub_19A4E71A8(v228, type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
      sub_19A4E1290(v229, "denoiseStep", 11, 2);

      v77 = v335;
      v78 = v332;
      v79 = v289;
      if (v292 == v276)
      {

        goto LABEL_108;
      }
    }

    goto LABEL_129;
  }

  v316 = 0;
LABEL_108:
  v346[92] = v301;
  v346[91] = v293;
  v231 = v346[83];
  v232 = v346[73];

  if (v312(v231, 1, v232))
  {
    sub_19A2F3FA0(v346[33], &qword_1EAFA0C30);
    v233 = 1;
  }

  else
  {
    v239 = v346[75];
    v240 = v346[71];
    v241 = v346[70];
    v242 = v346[69];
    v243 = v346[37];
    sub_19A4E78A8(v346[83], v239, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    (*(v241 + 16))(v240, v239, v242);
    sub_19A5027D0(v240, v243);
    v244 = v346[75];
    sub_19A2F3FA0(v346[33], &qword_1EAFA0C30);
    sub_19A4E71A8(v244, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    v316 = 0;
    v233 = 0;
  }

  v234 = v346[37];
  v235 = v346[33];
  v236 = type metadata accessor for InferenceDiagnosticsAccessor();
  (*(*(v236 - 8) + 56))(v234, v233, 1, v236);
  result = sub_19A3351B8(v234, v235, &qword_1EAFA0C30);
  if (v294 != 2)
  {
    goto LABEL_139;
  }

  v75 = *(v346[36] + v315[5] + 208);
  if (!(v75 >> 62))
  {
    v237 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v237)
    {
      goto LABEL_139;
    }

    goto LABEL_113;
  }

LABEL_138:
  result = sub_19A573B4C();
  v237 = result;
  if (!result)
  {
    goto LABEL_139;
  }

LABEL_113:
  if (v237 < 1)
  {
    __break(1u);
LABEL_147:
    __break(1u);
    return result;
  }

  for (j = 0; j != v237; ++j)
  {
    if ((v75 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](j, v75);
    }

    else
    {
    }

    ManagedMLModel.unloadResources()();
  }

LABEL_139:
  sub_19A57325C();
  if (v316)
  {
    v251 = v346;
    v255 = v346[60];
    v256 = v346[36];
    sub_19A4E71A8(v346[64], type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
    sub_19A2F3FA0(v255, &qword_1EAFA2C40);

    sub_19A4E1290(v256, "diffusion generateImages", 24, 2);

    (*(v339 + 8))(v337, v332);
LABEL_16:

    sub_19A515FD8();

    swift_setDeallocating();
    v80 = OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__startDate;
    v81 = sub_19A570FBC();
    (*(*(v81 - 8) + 8))(v77 + v80, v81);

    swift_deallocClassInstance();
    sub_19A2F3FA0(v251[83], &qword_1EAFA3300);

    v91 = v251[1];

    return v91();
  }

  v257 = sub_19A57234C();
  v258 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v259 = swift_slowAlloc();
    *v259 = 0;
    v260 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v257, v258, v260, "decodeToImage", "", v259, 2u);
    MEMORY[0x19A902C50](v259, -1, -1);
  }

  v261 = v346[83];
  v262 = v346[78];

  swift_task_alloc();
  v311();
  swift_allocObject();
  v346[93] = sub_19A5723AC();

  sub_19A33546C(v261, v262, &qword_1EAFA3300);
  v263 = swift_task_alloc();
  v346[94] = v263;
  *v263 = v346;
  v263[1] = sub_19A4DF6CC;
  v264 = v346[78];
  v265 = v346[30];

  return AppleDiffusionPipeline.decodeToImages(_:configuration:inferenceDiagnostics:)(v301, v265, v264);
}

uint64_t sub_19A4DF6CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 760) = a1;
  *(v4 + 768) = v1;

  sub_19A2F3FA0(*(v3 + 624), &qword_1EAFA3300);
  if (v1)
  {
    v5 = sub_19A4DFBC8;
  }

  else
  {
    v5 = sub_19A4DF81C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_19A4DF81C()
{
  v1 = v0[95];
  sub_19A4E1290(v0[36], "decodeToImage", 13, 2);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[84];
    v5 = OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__outputPixelsCount;
    v6 = (v0[95] + 32);
    while (1)
    {
      v8 = *v6;
      v6 += 2;
      v7 = v8;
      if (v8)
      {
        v9 = v7;
        Width = CVPixelBufferGetWidth(v9);
        Height = CVPixelBufferGetHeight(v9);

        v7 = Width * Height;
        if ((Width * Height) >> 64 != (Width * Height) >> 63)
        {
          break;
        }
      }

      v12 = __OFADD__(v3, v7);
      v3 += v7;
      if (v12)
      {
        __break(1u);
        break;
      }

      *(v4 + v5) = v3;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v13 = v0[89];
    v14 = v0[88];
    v15 = v0[87];
    v16 = v0[60];
    v17 = v0[36];
    sub_19A4E71A8(v0[64], type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
    sub_19A2F3FA0(v16, &qword_1EAFA2C40);

    sub_19A4E1290(v17, "diffusion generateImages", 24, 2);

    (*(v14 + 8))(v13, v15);

    sub_19A515FD8();

    v19 = v0[95];
    sub_19A2F3FA0(v0[83], &qword_1EAFA3300);

    v18 = v0[1];

    v18(v19);
  }
}

uint64_t sub_19A4DFBC8()
{
  v1 = v0[89];
  v2 = v0[88];
  v11 = v0[87];
  v3 = v0[84];
  v4 = v0[64];
  v5 = v0[60];
  v6 = v0[36];
  sub_19A4E1290(v6, "decodeToImage", 13, 2);

  sub_19A4E71A8(v4, type metadata accessor for AppleDiffusionPipeline.ConditioningInputs);
  sub_19A2F3FA0(v5, &qword_1EAFA2C40);

  sub_19A4E1290(v6, "diffusion generateImages", 24, 2);

  (*(v2 + 8))(v1, v11);

  sub_19A515FD8();

  swift_setDeallocating();
  v7 = OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__startDate;
  v8 = sub_19A570FBC();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  swift_deallocClassInstance();
  sub_19A2F3FA0(v0[83], &qword_1EAFA3300);

  v9 = v0[1];

  return v9();
}

uint64_t sub_19A4DFFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a2;
  v106 = a4;
  v104 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630);
  MEMORY[0x1EEE9AC00](v5 - 8);
  *&v108 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v111 = *(v7 - 8);
  v112 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v113 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v94 - v12;
  v14 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PipelineConfiguration(0);
  sub_19A33546C(a3 + *(v18 + 32), v13, &unk_1EAFA2F50);
  v19 = *(v15 + 48);
  v107 = v14;
  if (v19(v13, 1, v14) == 1)
  {
    sub_19A2F3FA0(v13, &unk_1EAFA2F50);
    sub_19A4E6F34();
    swift_allocError();
    *v20 = xmmword_19A57B400;
    *(v20 + 16) = 5;
    return swift_willThrow();
  }

  v115 = v17;
  sub_19A4E8BA0(v13, v17, type metadata accessor for PipelineConfiguration.InputConditioning);
  v103 = v18;
  v22 = a3;
  v23 = v108;
  sub_19A33546C(a3 + *(v18 + 28), v108, &qword_1EAFA2630);
  v24 = v111;
  v25 = v112;
  v26 = *(v111 + 48);
  if (v26(v23, 1, v112) == 1)
  {
    type metadata accessor for AppleDiffusionPipeline(0);
    v27 = v114;
    AppleDiffusionUnet.defaultGeometricConditioning.getter();
    if (v26(v23, 1, v25) != 1)
    {
      sub_19A2F3FA0(v23, &qword_1EAFA2630);
    }
  }

  else
  {
    v27 = v114;
    (*(v24 + 32))(v114, v23, v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060);
  v28 = *(v24 + 72);
  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_19A576E20;
  v31 = v30 + v29;
  v32 = v24;
  v34 = *(v24 + 16);
  v33 = v24 + 16;
  v34(v31, v27, v25);
  v100 = v34;
  v34(v31 + v28, v27, v25);
  v116 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50);
  sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50);
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
  sub_19A5725EC();
  v35 = v103;
  v36 = *(v103 + 60);
  v102 = v22;
  v37 = v22 + v36;
  v39 = *v37;
  v38 = *(v37 + 8);
  v40 = *(v37 + 16);
  v41 = *(v37 + 24);
  v42 = v115;
  if (v38 >= 0xFFFFFFFE00000000 && (v41 & 0xFE) == 2)
  {
    v43 = v109;
LABEL_10:
    v101 = sub_19A4E7C6C(MEMORY[0x1E69E7CC0]);
    *&v108 = 0;
    v44 = v114;
    goto LABEL_11;
  }

  v60 = *(v37 + 8);
  sub_19A4E92F8(v39, v38, v40, v41);
  v61 = v41;
  v62 = v41;
  v43 = v109;
  v63 = v110;
  v64 = sub_19A4E19BC(v39, v60, v40, v61, v102, v106, 0);
  if (v63)
  {
    sub_19A4B0C38(v39, v60, v40, v62);
    v66 = v112;
    v67 = *(v111 + 8);
    v67(v113, v112);
    v67(v114, v66);
    return sub_19A4E71A8(v42, type metadata accessor for PipelineConfiguration.InputConditioning);
  }

  v95 = v60;
  v96 = v39;
  v97 = v40;
  LODWORD(v98) = v62;
  v110 = 0;
  if (!v64)
  {
    sub_19A4B0C38(v96, v95, v97, v98);
    v32 = v111;
    v25 = v112;
    goto LABEL_10;
  }

  v52 = v64;
  v101 = v65;
  if (v64 >> 62)
  {
    v68 = sub_19A573B4C();
    v69 = v98;
    if (v68)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v68 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v98;
    if (v68)
    {
LABEL_19:
      v99 = v33;
      v116 = MEMORY[0x1E69E7CC0];
      sub_19A573A5C();
      if (v68 < 0)
      {
        __break(1u);
LABEL_42:
        sub_19A5730AC();
        v42 = v115;
        goto LABEL_29;
      }

      v70 = objc_opt_self();
      v71 = 0;
      v108 = xmmword_19A58F190;
      do
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v72 = MEMORY[0x19A901520](v71, v52);
        }

        else
        {
          v72 = *(v52 + 8 * v71 + 32);
        }

        v73 = v72;
        ++v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
        v74 = swift_allocObject();
        *(v74 + 16) = v108;
        *(v74 + 32) = v73;
        *(v74 + 40) = v73;
        sub_19A2F1600(0, &qword_1ED823EE0);
        v75 = v73;
        v76 = sub_19A57307C();

        v77 = [v70 multiArrayByConcatenatingMultiArrays:v76 alongAxis:0 dataType:65552];

        sub_19A573A2C();
        sub_19A573A6C();
        sub_19A573A7C();
        sub_19A573A3C();
        v42 = v115;
      }

      while (v68 != v71);
      sub_19A4B0C38(v96, v95, v97, v98);

      *&v108 = v116;
      v25 = v112;
      v33 = v99;
      goto LABEL_40;
    }
  }

  sub_19A4B0C38(v96, v95, v97, v69);
  *&v108 = MEMORY[0x1E69E7CC0];
  v25 = v112;
LABEL_40:
  v32 = v111;
  v44 = v114;
  v43 = v109;
  v35 = v103;
LABEL_11:
  v45 = MEMORY[0x1E69E7CC0];
  v116 = MEMORY[0x1E69E7CC0];
  v46 = type metadata accessor for AppleDiffusionPipeline(0);
  v47 = *(v42 + *(v107 + 24));
  if (!v47[2])
  {
    goto LABEL_30;
  }

  v98 = v46;
  v99 = v33;
  v48 = (v43 + *(v46 + 36));
  v49 = *v48;
  v50 = v48[1];
  v51 = v48[2];
  v52 = v47[4];
  v40 = v47[5];
  sub_19A356EC8(v52, v40);

  v54 = sub_19A4E3094(v53);
  v55 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v56 = v110;
  v57 = sub_19A52A8D8(v54, 65552);
  if (v56)
  {

    sub_19A33EFC4(v52, v40);

    v58 = v112;
    v59 = *(v111 + 8);
    v59(v113, v112);
    v59(v114, v58);
    return sub_19A4E71A8(v115, type metadata accessor for PipelineConfiguration.InputConditioning);
  }

  v62 = v57;
  sub_19A52A9C4(v52, v40, v62);
  AppleDiffusionGlobalImageConditioner.encode(_:inferenceDiagnostics:)(v62, v106, v49, v50, v51);
  v60 = 0;
  MEMORY[0x19A900BE0]();
  v42 = v115;
  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_42;
  }

LABEL_29:
  sub_19A5730FC();

  sub_19A33EFC4(v52, v40);

  v45 = v116;
  v110 = v60;
  v32 = v111;
  v25 = v112;
  v44 = v114;
  v35 = v103;
LABEL_30:
  if (v45 >> 62)
  {
    v87 = sub_19A573B4C();
    v35 = v103;
    if (v87)
    {
      goto LABEL_32;
    }

LABEL_36:
    v86 = v32;
    (*(v32 + 8))(v44, v25);

    v109 = 0;
    v115 = 0;
    v82 = 0;
    LODWORD(v114) = 0;
    goto LABEL_37;
  }

  if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_32:
  v78 = v110;
  v79 = sub_19A4EE7FC(v45, *(v102 + *(v35 + 36)));
  v115 = v80;
  v82 = v81;
  v84 = v83;

  v110 = v78;
  if (v78)
  {

    v85 = *(v32 + 8);
    v85(v113, v25);
    v85(v114, v25);
    return sub_19A4E71A8(v42, type metadata accessor for PipelineConfiguration.InputConditioning);
  }

  v109 = v79;
  v86 = v32;
  (*(v32 + 8))(v114, v25);
  LODWORD(v114) = v84 & 1;
LABEL_37:
  v88 = v104;
  v89 = v100;
  v100(v104, v42, v25);
  v90 = *(v107 + 20);
  v91 = type metadata accessor for AppleDiffusionPipeline.ConditioningInputs(0);
  v89(v88 + v91[5], v42 + v90, v25);
  sub_19A4E71A8(v42, type metadata accessor for PipelineConfiguration.InputConditioning);
  (*(v86 + 32))(v88 + v91[6], v113, v25);
  *(v88 + v91[7]) = v108;
  v92 = v88 + v91[8];
  v93 = v115;
  *v92 = v109;
  *(v92 + 8) = v93;
  *(v92 + 16) = v82;
  *(v92 + 24) = v114;
  *(v88 + v91[9]) = v101;
  return (*(*(v91 - 1) + 56))(v105, 1, 1, v91);
}

uint64_t sub_19A4E0C60(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = a3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F28);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v73 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - v11;
  v13 = type metadata accessor for PipelineConfiguration(0);
  v14 = *(a1 + *(v13 + 108));
  v68 = v13;
  v15 = *(a1 + *(v13 + 84));
  v64 = v10;
  if (!v14)
  {
    sub_19A4EB8FC(v15);
    v17 = v24;
    v19 = v25;
    v21 = v26;
    v23 = v27;
    v78 = &type metadata for NumPyRandomSource;
    v79 = &off_1F0DB7940;
    goto LABEL_5;
  }

  if (v14 == 1)
  {
    sub_19A4EB8FC(v15);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v78 = &type metadata for TorchRandomSource;
    v79 = &off_1F0DB7820;
LABEL_5:
    v28 = swift_allocObject();
    v76 = v28;
    *(v28 + 16) = v17;
    *(v28 + 24) = v19;
    *(v28 + 32) = v21;
    *(v28 + 40) = v23 & 1;
    goto LABEL_7;
  }

  v78 = &type metadata for NvRandomSource;
  v79 = &off_1F0DB8000;
  v76 = v15;
  v77 = 0;
LABEL_7:
  v29 = type metadata accessor for AppleDiffusionPipeline(0);
  v30 = *(v29 + 20);
  v65 = v3;
  v31 = *(v3 + v30 + 160);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v31 + 16))
    {
      goto LABEL_9;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = sub_19A4E527C(v31);
  v31 = result;
  if (!*(result + 16))
  {
    goto LABEL_27;
  }

LABEL_9:
  v74 = v31;
  *(v31 + 32) = 1;
  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  result = (*(v34 + 64))(v33, v34);
  v36 = v68;
  v37 = *(a1 + *(v68 + 76));
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v66 = a1;
    v61 = a2;
    if (v37)
    {
      v39 = v35;
      v62 = v29;
      v75 = MEMORY[0x1E69E7CC0];
      sub_19A4E436C(0, v37, 0);
      v38 = v75;
      v69 = v73 + 32;
      v70 = v7;
      v40 = v39;
      do
      {
        v42 = v78;
        v41 = v79;
        __swift_mutable_project_boxed_opaque_existential_1(&v76, v78);
        v43 = v41[2];

        v43(v44, v42, v41, 0.0, v40);

        sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
        sub_19A2F12E4(&qword_1EAF9E950, &unk_1EAFA2F28);
        v7 = v70;
        sub_19A5726BC();
        v75 = v38;
        v46 = *(v38 + 16);
        v45 = *(v38 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_19A4E436C(v45 > 1, v46 + 1, 1);
          v38 = v75;
        }

        *(v38 + 16) = v46 + 1;
        (*(v73 + 32))(v38 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v46, v12, v7);
        --v37;
      }

      while (v37);
      a1 = v66;
      v47 = v67;
      v36 = v68;
      v29 = v62;
    }

    else
    {
      v47 = v67;
    }

    v48 = *(a1 + *(v36 + 56));
    if (v48)
    {
      v49 = (v65 + *(v29 + 24));
      v50 = *v49;
      if (!*v49)
      {
        v57 = v48;

        sub_19A4E6F34();
        swift_allocError();
        *v58 = 0;
        *(v58 + 8) = 0;
        *(v58 + 16) = 5;
        swift_willThrow();

        goto LABEL_22;
      }

      v52 = v49[2];
      v51 = v49[3];
      v53 = v47;
      v54 = v49[1];
      v55 = v48;
      sub_19A4E92AC(v50, v54, v52, v51);
      v56 = v64;
      Encoder.encode(_:scaleFactor:random:inferenceDiagnostics:)(v55, &v76, v63, v50, v54, v52);
      if (v53)
      {

LABEL_22:
        __swift_destroy_boxed_opaque_existential_0Tm(&v76);
        return v38;
      }

      v59 = v61[4];
      v72 = v61[3];
      __swift_project_boxed_opaque_existential_1(v61, v72);
      v67 = 0;
      v60 = (*(v59 + 88))(v56, v38, v72, v59, *(v66 + *(v68 + 64)));

      (*(v73 + 8))(v56, v7);
      v38 = v60;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v76);
    return v38;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_19A4E1290(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  type metadata accessor for AppleDiffusionPipeline(0);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
LABEL_14:

    return (*(v8 + 8))(v10, v7);
  }

  v22 = v11;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {
      a2 = &v23;
LABEL_9:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a2, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

id PipelineConfiguration.InferenceFrameDiagnosticsConfiguration.predictionOptions.getter()
{
  v1 = [objc_opt_self() defaultOptions];
  v2 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  v3 = *(v0 + v2[6]);
  v4 = *(v0 + v2[7]);
  v5 = *(v0 + v2[8]);
  v6 = objc_allocWithZone(MEMORY[0x1E695FE88]);
  v7 = sub_19A570DEC();
  v8 = sub_19A572CCC();
  v9 = [v6 initWithOutputDirectory:v7 prefix:v8 shouldOverwrite:v3 modelIOFrameData:v4 segmentIOFrameData:v5];

  [v1 setInferenceFrameDataSerialization_];
  return v1;
}

uint64_t AppleDiffusionPipeline.decodeToImages(_:configuration:inferenceDiagnostics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A4E1658, 0, 0);
}

uint64_t sub_19A4E1658()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for AppleDiffusionPipeline(0);
  v0[6] = v3;
  v4 = (v1 + *(v3 + 28));
  v5 = *v4;
  v0[7] = *v4;
  v6 = v4[1];
  v0[8] = v6;
  v7 = v4[2];
  v8 = v4[3];
  v9 = *(v2 + *(type metadata accessor for PipelineConfiguration(0) + 116));
  v10 = *(v2 + 80);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_19A4E1768;
  v12 = v0[4];
  v13 = v0[2];

  return Decoder.decode(_:scaleFactor:outputRange:inferAlpha:inferenceDiagnostics:)(v13, v10, v12, v5, v6, v7, v8, v9, 0.0, 1.0);
}

uint64_t sub_19A4E1768(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_19A4E1938;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_19A4E1890;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A4E1890()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_19A4E2E58(v0[11]);

  if (*(v2 + *(v1 + 44)) == 2)
  {
    v4 = v0[8];
    ManagedMLModel.unloadResources()();
    if (v4)
    {
      ManagedMLModel.unloadResources()();
    }
  }

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_19A4E1938()
{
  if (*(v0[5] + *(v0[6] + 44)) == 2)
  {
    v1 = v0[8];
    ManagedMLModel.unloadResources()();
    if (v1)
    {
      ManagedMLModel.unloadResources()();
    }
  }

  v2 = v0[1];

  return v2();
}

void *sub_19A4E19BC(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v139 = a6;
  v140 = a2;
  v141 = a5;
  v142 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v129[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v129[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v129[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v129[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v138 = &v129[-v25];
  v148 = a4;
  if ((a4 & 0x80) != 0)
  {
    v36 = type metadata accessor for AppleDiffusionPipeline(0);
    v37 = v7 + *(v36 + 40);
    v38 = *v37;
    if (!*v37)
    {
      return 0;
    }

    v137 = a1;
    v39 = *(v37 + 1);
    v40 = *(v37 + 2);
    v41 = *(v37 + 3);
    v42 = *(v37 + 4);
    v147[0] = v38;
    v147[1] = v39;
    v147[2] = v40;
    v147[3] = v41;
    v147[4] = v42;
    v43 = (v7 + *(v36 + 24));
    v7 = *v43;
    if (!*v43)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
      (*(*(v59 - 8) + 56))(v21, 1, 1, v59);
      sub_19A4E9344(v38);
      v60 = v140;
      sub_19A4E92F8(v137, v140, v142, v148);
      v61 = v139;
      goto LABEL_24;
    }

    v135 = v38;
    v136 = v42;
    v138 = v40;
    v44 = v43[1];
    v133 = v43[2];
    v134 = v43[3];
    v45 = type metadata accessor for PipelineConfiguration(0);
    v46 = *(v141 + *(v45 + 108));
    v132 = v45;
    v47 = *(v141 + *(v45 + 84));
    if (v46)
    {
      v48 = v137;
      if (v46 != 1)
      {
        v145 = &type metadata for NvRandomSource;
        v146 = &off_1F0DB8000;
        v143 = v47;
        v144 = 0;
        sub_19A4E9344(v135);
        sub_19A4E92F8(v48, v140, v142, v148);
        v70 = v44;
        v71 = v44;
        v51 = v133;
        v52 = v134;
        sub_19A4E92AC(v7, v71, v133, v134);
        v69 = v70;
        goto LABEL_21;
      }

      sub_19A4E9344(v135);
      sub_19A4E92F8(v48, v140, v142, v148);
      v49 = v44;
      v50 = v44;
      v51 = v133;
      v52 = v134;
      sub_19A4E92AC(v7, v50, v133, v134);
      sub_19A4EB8FC(v47);
      v54 = v53;
      v131 = v55;
      v57 = v56;
      v130 = v58;
      v145 = &type metadata for TorchRandomSource;
      v146 = &off_1F0DB7820;
    }

    else
    {
      sub_19A4E9344(v135);
      sub_19A4E92F8(v137, v140, v142, v148);
      v49 = v44;
      v62 = v44;
      v51 = v133;
      v52 = v134;
      sub_19A4E92AC(v7, v62, v133, v134);
      sub_19A4EB8FC(v47);
      v54 = v63;
      v131 = v64;
      v57 = v65;
      v130 = v66;
      v145 = &type metadata for NumPyRandomSource;
      v146 = &off_1F0DB7940;
    }

    v67 = swift_allocObject();
    v143 = v67;
    v68 = v131;
    *(v67 + 16) = v54;
    *(v67 + 24) = v68;
    *(v67 + 32) = v57;
    v48 = v137;
    v69 = v49;
    *(v67 + 40) = v130 & 1;
LABEL_21:
    v61 = v139;
    Encoder.encode(_:scaleFactor:random:inferenceDiagnostics:)(v48, &v143, v139, v7, v69, v51);
    if (v8)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v143);

      sub_19A4B0C5C(v48, v140, v142, v148);

LABEL_26:

      return v7;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v143);

    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
    (*(*(v72 - 8) + 56))(v18, 0, 1, v72);
    sub_19A3351B8(v18, v21, &qword_1EAFA2630);
    v60 = v140;
LABEL_24:
    v7 = v147;
    v73 = AppleDiffusionLocalImageConditioner.encode(latentEncoding:conditioningScale:inferenceDiagnostics:)(v21, (v60 | ((HIDWORD(v60) & 1) << 32)), v61);
    if (!v8)
    {
      v7 = v73;
      sub_19A2F3FA0(v21, &qword_1EAFA2630);
      sub_19A4B0C5C(v137, v60, v142, v148);

      return v7;
    }

    sub_19A2F3FA0(v21, &qword_1EAFA2630);
    sub_19A4B0C5C(v137, v60, v142, v148);

    goto LABEL_26;
  }

  if (!a7)
  {
    goto LABEL_6;
  }

  v26 = a1;
  v27 = a1;
  Width = CVPixelBufferGetWidth(v27);
  Height = CVPixelBufferGetHeight(v27);

  v30 = Width * Height;
  if ((Width * Height) >> 64 != (Width * Height) >> 63)
  {
    __break(1u);
    goto LABEL_67;
  }

  v31 = *(a7 + OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__inputPixelsCount);
  v32 = __OFADD__(v31, v30);
  v33 = v31 + v30;
  if (v32)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(a7 + OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__inputPixelsCount) = v33;
  a1 = v26;
LABEL_6:
  v34 = sub_19A50E55C();
  if (v8)
  {
    return v7;
  }

  if (v34 & 1) == 0 || (v148)
  {
    v27 = a1;
  }

  else
  {
    v35 = [objc_opt_self() whiteColor];
    v74 = sub_19A55CEA4(v35);

    v27 = v74;
  }

  v75 = type metadata accessor for AppleDiffusionPipeline(0);
  v76 = (v7 + *(v75 + 24));
  Height = *v76;
  v136 = v75;
  if (!Height)
  {
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
    v85 = v138;
    (*(*(v84 - 8) + 56))(v138, 1, 1, v84);
    v86 = v139;
    goto LABEL_59;
  }

  v77 = v76[1];
  v137 = v76[2];
  v78 = v76[3];
  v79 = v7 + *(v75 + 20);
  v80 = type metadata accessor for AppleDiffusionUnet();
  sub_19A33546C(&v79[*(v80 + 24)], v14, &unk_1EAFA2BF0);
  v81 = type metadata accessor for ConcreteAdapter();
  v82 = (*(*(v81 - 8) + 48))(v14, 1, v81);
  v135 = v78;
  v134 = v77;
  if (v82 == 1)
  {
    v83 = v27;
    sub_19A4E92AC(Height, v77, v137, v78);
    sub_19A2F3FA0(v14, &unk_1EAFA2BF0);
    goto LABEL_44;
  }

  v87 = *&v14[*(v81 + 24) + 304];
  v88 = v27;
  v89 = v78;
  v90 = v88;
  sub_19A4E92AC(Height, v77, v137, v89);

  sub_19A4E71A8(v14, type metadata accessor for ConcreteAdapter);
  if (!v87)
  {
LABEL_44:
    v14 = v7;
    if (qword_1ED824D40 == -1)
    {
LABEL_45:
      v101 = sub_19A5723FC();
      __swift_project_value_buffer(v101, qword_1ED82BD48);
      v90 = sub_19A5723DC();
      v102 = sub_19A57355C();
      if (os_log_type_enabled(v90, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_19A2DE000, v90, v102, "unable to find sketch conditioner encoder size metadata, assuming correct size. If this is for ADMv8b or later models this is unexpected.", v103, 2u);
        MEMORY[0x19A902C50](v103, -1, -1);
      }

      v128 = v27;
      v7 = v14;
      goto LABEL_48;
    }

LABEL_68:
    swift_once();
    goto LABEL_45;
  }

  if (!*(v87 + 16))
  {

    goto LABEL_44;
  }

  v133 = v27;
  v91 = sub_19A31F6BC(3226161, 0xE300000000000000);
  if ((v92 & 1) == 0 || (v93 = *(*(v87 + 56) + 8 * v91), , , v93[2] != 3))
  {

    v27 = v133;
    goto LABEL_44;
  }

  v95 = v93[5];
  v94 = v93[6];

  v96 = v94;
  v97 = v95;
  v98 = CVPixelBufferGetWidth(v90);
  v99 = CVPixelBufferGetHeight(v90);
  if (v98 == v96 && v99 == v97)
  {
    v27 = v133;
LABEL_49:
    v104 = type metadata accessor for PipelineConfiguration(0);
    v105 = *(v141 + *(v104 + 108));
    v106 = *(v141 + *(v104 + 84));
    if (v105)
    {
      if (v105 != 1)
      {
        v145 = &type metadata for NvRandomSource;
        v146 = &off_1F0DB8000;
        v143 = v106;
        v144 = 0;
        goto LABEL_55;
      }

      sub_19A4EB8FC(v106);
      v108 = v107;
      v133 = v27;
      v110 = v109;
      v112 = v111;
      v132 = Height;
      v114 = v113;
      v145 = &type metadata for TorchRandomSource;
      v146 = &off_1F0DB7820;
    }

    else
    {
      sub_19A4EB8FC(v106);
      v108 = v115;
      v133 = v27;
      v110 = v116;
      v112 = v117;
      v132 = Height;
      v114 = v118;
      v145 = &type metadata for NumPyRandomSource;
      v146 = &off_1F0DB7940;
    }

    v119 = swift_allocObject();
    v143 = v119;
    *(v119 + 16) = v108;
    *(v119 + 24) = v110;
    v27 = v133;
    *(v119 + 32) = v112;
    v120 = v114 & 1;
    Height = v132;
    *(v119 + 40) = v120;
LABEL_55:
    v86 = v139;
    v121 = v135;
    Encoder.encode(_:scaleFactor:random:inferenceDiagnostics:)(v90, &v143, v139, Height, v134, v137);
    if (v8)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v143);
      return v7;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v143);

    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
    (*(*(v122 - 8) + 56))(v24, 0, 1, v122);
    v85 = v138;
    sub_19A3351B8(v24, v138, &qword_1EAFA2630);
LABEL_59:
    v7 = sub_19A50E94C(v27, v85, v142, v148 & 1, v86, *(v7 + *(v136 + 32)));
    sub_19A2F3FA0(v85, &qword_1EAFA2630);

    return v7;
  }

  if (v96 / v97 == v98 / v99)
  {
    v128 = sub_19A55D1CC(v96, v97);
    v27 = v133;
LABEL_48:

    v90 = v128;
    goto LABEL_49;
  }

  if (qword_1ED824D40 != -1)
  {
    swift_once();
  }

  v124 = sub_19A5723FC();
  __swift_project_value_buffer(v124, qword_1ED82BD48);
  v125 = sub_19A5723DC();
  v7 = sub_19A57355C();
  if (os_log_type_enabled(v125, v7))
  {
    v126 = swift_slowAlloc();
    *v126 = 134218752;
    *(v126 + 4) = v98;
    *(v126 + 12) = 2048;
    *(v126 + 14) = v99;
    *(v126 + 22) = 2048;
    *(v126 + 24) = v96;
    *(v126 + 32) = 2048;
    *(v126 + 34) = v97;
    _os_log_impl(&dword_19A2DE000, v125, v7, "unexpected mismatch between input sketch image aspect ratio (%f:%f) and image encoder aspect ratio (%f:%f)", v126, 0x2Au);
    MEMORY[0x19A902C50](v126, -1, -1);
  }

  sub_19A4E6F34();
  swift_allocError();
  *v127 = xmmword_19A58F1A0;
  *(v127 + 16) = 5;
  swift_willThrow();

  return v7;
}

int *sub_19A4E283C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = type metadata accessor for PipelineConfiguration(0);
  v5 = *(a1 + result[26]);
  v6 = v5 >> 14;
  if (v5 >> 14 <= 1)
  {
    if (!v6)
    {
      v7 = *(a1 + result[20]);
      v8 = type metadata accessor for DPMSolverMultistepScheduler();
      swift_allocObject();
      result = DPMSolverMultistepScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:timeStepSpacing:predictionType:)(v7, 1000, 1, v5 >> 8, v5, 0.00085, 0.012);
      v9 = &protocol witness table for DPMSolverMultistepScheduler;
      a2[3] = v8;
LABEL_14:
      a2[4] = v9;
      *a2 = result;
      return result;
    }

    v22 = *(a1 + result[21]);
    v11 = __CFADD__(v22, 1);
    v23 = (v22 + 1);
    if (!v11)
    {
      if (*(a1 + result[27]))
      {
        if (*(a1 + result[27]) != 1)
        {
          v77 = &type metadata for NvRandomSource;
          v78 = &off_1F0DB8000;
          v75 = v23;
          v76 = 0;
          goto LABEL_36;
        }

        v24 = result;
        sub_19A4EB8FC(v23);
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v77 = &type metadata for TorchRandomSource;
        v78 = &off_1F0DB7820;
      }

      else
      {
        v24 = result;
        sub_19A4EB8FC(v23);
        v26 = v40;
        v28 = v41;
        v30 = v42;
        v32 = v43;
        v77 = &type metadata for NumPyRandomSource;
        v78 = &off_1F0DB7940;
      }

      v44 = swift_allocObject();
      result = v24;
      v75 = v44;
      *(v44 + 16) = v26;
      *(v44 + 24) = v28;
      *(v44 + 32) = v30;
      *(v44 + 40) = v32 & 1;
LABEL_36:
      v66 = *(a1 + result[20]);
      sub_19A2F3EF0(&v75, v74);
      v67 = type metadata accessor for LCMScheduler();
      swift_allocObject();
      v68 = LCMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:predictionType:generator:)(v66, 0x3E8uLL, 1, v5, v74, 0.00085, 0.012);
      a2[3] = v67;
      a2[4] = &protocol witness table for LCMScheduler;
      *a2 = v68;
      return __swift_destroy_boxed_opaque_existential_0Tm(&v75);
    }

    goto LABEL_42;
  }

  if (v6 != 2)
  {
    v33 = *(a1 + result[20]);
    v34 = type metadata accessor for PNDMScheduler();
    swift_allocObject();
    result = PNDMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:)(v33, 1000, 1, 0.00085, 0.012);
    v9 = &protocol witness table for PNDMScheduler;
    a2[3] = v34;
    goto LABEL_14;
  }

  v10 = *(a1 + result[21]);
  v11 = __CFADD__(v10, 1);
  v12 = (v10 + 1);
  if (v11)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!*(a1 + result[27]))
  {
    v13 = result;
    sub_19A4EB8FC(v12);
    v15 = v35;
    v17 = v36;
    v19 = v37;
    v21 = v38;
    v77 = &type metadata for NumPyRandomSource;
    v78 = &off_1F0DB7940;
    goto LABEL_16;
  }

  if (*(a1 + result[27]) == 1)
  {
    v13 = result;
    sub_19A4EB8FC(v12);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v77 = &type metadata for TorchRandomSource;
    v78 = &off_1F0DB7820;
LABEL_16:
    v39 = swift_allocObject();
    result = v13;
    v75 = v39;
    *(v39 + 16) = v15;
    *(v39 + 24) = v17;
    *(v39 + 32) = v19;
    *(v39 + 40) = v21 & 1;
    goto LABEL_20;
  }

  v77 = &type metadata for NvRandomSource;
  v78 = &off_1F0DB8000;
  v75 = v12;
  v76 = 0;
LABEL_20:
  v45 = *(a1 + result[17]);
  v46 = *(v45 + 16);
  if (v46)
  {
    sub_19A2F3EF0(&v75, v74);
    v47 = type metadata accessor for RectifiedFlowLCMScheduler();
    v48 = swift_allocObject();
    v49 = MEMORY[0x1E69E7CC0];
    *(v48 + 24) = v46;
    *(v48 + 32) = v49;
    *(v48 + 48) = v49;
    *(v48 + 56) = 0;
    *(v48 + 120) = v49;
    *(v48 + 128) = 1092616192;
    *(v48 + 16) = 1000;
    *(v48 + 112) = v5;
    sub_19A2F3EF0(v74, v48 + 72);

    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    *(v48 + 40) = &unk_1F0DB58D8;
    *(v48 + 64) = v45;
    a2[3] = v47;
    a2[4] = &protocol witness table for RectifiedFlowLCMScheduler;
    *a2 = v48;
    return __swift_destroy_boxed_opaque_existential_0Tm(&v75);
  }

  v50 = *(a1 + result[20]);
  sub_19A2F3EF0(&v75, v74);
  result = (v50 + 1);
  if (__OFADD__(v50, 1))
  {
    goto LABEL_43;
  }

  v51 = sub_19A51B9CC(result, 1.0, 0.0);
  result = sub_19A5253A8(1uLL, v51);
  v55 = v54 >> 1;
  v56 = (v54 >> 1) - v53;
  if (__OFSUB__(v54 >> 1, v53))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v56)
  {
    v57 = v52;
    v58 = v53;
    v72 = result;
    v73[0] = MEMORY[0x1E69E7CC0];
    result = sub_19A4E44CC(0, v56 & ~(v56 >> 63), 0);
    if (v56 < 0)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    v59 = v73[0];
    if (v58 <= v55)
    {
      v60 = v55;
    }

    else
    {
      v60 = v58;
    }

    v61 = v60 - v58;
    v62 = (v57 + 4 * v58);
    result = v72;
    while (v61)
    {
      v63 = *v62;
      v73[0] = v59;
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_19A4E44CC((v64 > 1), v65 + 1, 1);
        result = v72;
        v59 = v73[0];
      }

      *(v59 + 16) = v65 + 1;
      *(v59 + 4 * v65 + 32) = (v63 * 3.0) / ((v63 + v63) + 1.0);
      --v61;
      ++v62;
      if (!--v56)
      {
        swift_unknownObjectRelease();
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  swift_unknownObjectRelease();
  v59 = MEMORY[0x1E69E7CC0];
LABEL_39:
  sub_19A2F3EF0(v74, v73);
  v69 = type metadata accessor for RectifiedFlowLCMScheduler();
  v70 = swift_allocObject();
  v71 = MEMORY[0x1E69E7CC0];
  *(v70 + 32) = MEMORY[0x1E69E7CC0];
  *(v70 + 48) = v71;
  *(v70 + 56) = 0;
  *(v70 + 120) = v71;
  *(v70 + 128) = 1092616192;
  *(v70 + 16) = 1000;
  *(v70 + 24) = *(v59 + 16);
  *(v70 + 112) = v5;
  sub_19A2F3EF0(v73, v70 + 72);
  __swift_destroy_boxed_opaque_existential_0Tm(v73);
  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  *(v70 + 40) = &unk_1F0DB58B0;
  *(v70 + 64) = v59;
  a2[3] = v69;
  a2[4] = &protocol witness table for RectifiedFlowLCMScheduler;
  *a2 = v70;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v75);
}

uint64_t sub_19A4E2E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_19A4E44EC(0, v1, 0);
    v2 = v12;
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E50);
      swift_dynamicCast();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_19A4E44EC((v6 > 1), v7 + 1, 1);
      }

      v4 += 16;
      *(v12 + 16) = v7 + 1;
      v8 = v12 + 16 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_19A4E2F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_19A3227A0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DD8);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_19A3227A0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_19A2E10E0(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_19A4E3094(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_19A5733BC();
      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_19A4E313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_19A34F28C;

  return AppleDiffusionPipeline.generateImages(configuration:requestIdentifier:generationID:diagnosticsAccessor:progressHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_19A4E3210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A34B5BC;

  return AppleDiffusionPipeline.decodeToImages(_:configuration:inferenceDiagnostics:)(a1, a2, a3);
}

uint64_t variable initialization expression of TextEncoder.queue()
{
  v7 = sub_19A5735CC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A5735BC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_19A57298C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_19A2F1600(0, &unk_1EAF9E7A0);
  sub_19A57297C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_19A4E94C8(&qword_1EAF9E7B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C60);
  sub_19A2F12E4(&unk_1EAF9E840, &unk_1EAFA2C60);
  sub_19A57388C();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  return sub_19A5735FC();
}

void sub_19A4E3544()
{
  if (MEMORY[0x1E6985FA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x800000019A59B780;
    v1 = sub_19A570E4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v1;
    *(inited + 56) = v2;
    sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA2F00);
    v3 = sub_19A572CCC();
    v4 = sub_19A572ADC();
  }
}

uint64_t variable initialization expression of Encoder.queue()
{
  v6[0] = sub_19A5735CC();
  v0 = *(v6[0] - 8);
  MEMORY[0x1EEE9AC00](v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A5735BC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_19A57298C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_19A2F1600(0, &unk_1EAF9E7A0);
  sub_19A57297C();
  v6[1] = MEMORY[0x1E69E7CC0];
  sub_19A4E94C8(&qword_1EAF9E7B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C60);
  sub_19A2F12E4(&unk_1EAF9E840, &unk_1EAFA2C60);
  sub_19A57388C();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v6[0]);
  return sub_19A5735FC();
}

void variable initialization expression of PipelineConfiguration.negativePrompt(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E61C8];
  a1[3] = MEMORY[0x1E69E6158];
  a1[4] = v1;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

uint64_t _s13DiffusionBase13PNDMSchedulerC13currentSample6CoreML13MLShapedArrayVySfGSgvpfi_0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_19A4E3C0C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

unint64_t variable initialization expression of ManagedMLModel.loadedModel@<X0>(uint64_t a1@<X8>)
{
  result = sub_19A4E7D70(MEMORY[0x1E69E7CC0]);
  *a1 = 0;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A4E3E20(uint64_t a1)
{
  v2 = sub_19A4E94C8(&qword_1ED823ED0, type metadata accessor for MLModelMetadataKey);
  v3 = sub_19A4E94C8(&qword_1EAFA2FC8, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19A4E3EDC(uint64_t a1, void (*a2)(unsigned __int8 *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    v15 = *(a1 + 56);
    v36[0] = *(*(a1 + 48) + v14);
    v37 = *(v15 + 8 * v14);
    a2(v34, v36);
    v16 = v34[0];
    v17 = v35;
    v18 = *a5;
    v19 = sub_19A3200C0(v34[0]);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v19;
        sub_19A554B34();
        v19 = v31;
      }
    }

    else
    {
      sub_19A550874(v24, a4 & 1);
      v19 = sub_19A3200C0(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v10 &= v10 - 1;
    v27 = *a5;
    if (v25)
    {
      *(v27[7] + 8 * v19) = v17;
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + v19) = v16;
      *(v27[7] + 8 * v19) = v17;
      v28 = v27[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v27[2] = v29;
    }

    a4 = 1;
    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A4E4104(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    v15 = *(*(a1 + 56) + 4 * v14);
    v35[0] = *(*(a1 + 48) + v14);
    v36 = v15;
    a2(&v34, v35);
    v16 = v34;
    v17 = HIDWORD(v34);
    v18 = *a5;
    v19 = sub_19A3200C0(v34);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v19;
        sub_19A5549E8();
        v19 = v31;
      }
    }

    else
    {
      sub_19A550338(v24, a4 & 1);
      v19 = sub_19A3200C0(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v10 &= v10 - 1;
    v27 = *a5;
    if (v25)
    {
      *(v27[7] + 4 * v19) = v17;
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + v19) = v16;
      *(v27[7] + 4 * v19) = v17;
      v28 = v27[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v27[2] = v29;
    }

    a4 = 1;
    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

size_t sub_19A4E432C(size_t a1, int64_t a2, char a3)
{
  result = sub_19A4E464C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A4E434C(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E4824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A4E436C(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34C7C8(a1, a2, a3, *v3, &qword_1EAFA1060, &unk_19A580FA0, &qword_1EAFA2C30);
  *v3 = result;
  return result;
}

void *sub_19A4E43AC(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E4EFC(a1, a2, a3, *v3, &qword_1EAFA2E58, &unk_19A58F798, &qword_1EAFA2E60);
  *v3 = result;
  return result;
}

void *sub_19A4E43EC(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E4EFC(a1, a2, a3, *v3, &qword_1EAFA2E98, &unk_19A58F7B8, &qword_1EAFA2EA0);
  *v3 = result;
  return result;
}

void *sub_19A4E442C(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E4EFC(a1, a2, a3, *v3, &qword_1EAFA2DB8, &unk_19A58F708, &qword_1EAFA2DC0);
  *v3 = result;
  return result;
}

char *sub_19A4E446C(char *a1, int64_t a2, char a3)
{
  result = sub_19A4E496C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A4E448C(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E4EFC(a1, a2, a3, *v3, &qword_1EAFA2EB8, &unk_19A58F7D8, &qword_1EAFA2EC0);
  *v3 = result;
  return result;
}

char *sub_19A4E44CC(char *a1, int64_t a2, char a3)
{
  result = sub_19A4E4A78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A4E44EC(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E4B7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A4E450C(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E4CB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A4E452C(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E4EFC(a1, a2, a3, *v3, &qword_1EAFA2F18, &unk_19A58F818, &qword_1EAFA2F20);
  *v3 = result;
  return result;
}

char *sub_19A4E456C(char *a1, int64_t a2, char a3)
{
  result = sub_19A4E4DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A4E458C(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E4EFC(a1, a2, a3, *v3, &qword_1EAFA2DD0, &unk_19A58F720, &qword_1EAFA2DD8);
  *v3 = result;
  return result;
}

size_t sub_19A4E45CC(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34C7C8(a1, a2, a3, *v3, &qword_1EAFA2D50, &unk_19A58F700, &qword_1EAFA2D48);
  *v3 = result;
  return result;
}

char *sub_19A4E460C(char *a1, int64_t a2, char a3)
{
  result = sub_19A4E5030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A4E462C(void *a1, int64_t a2, char a3)
{
  result = sub_19A4E5134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A4E464C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F88);
  v10 = *(sub_19A570EAC() - 8);
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
  v15 = *(sub_19A570EAC() - 8);
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

void *sub_19A4E4824(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A4E496C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EB0);
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

char *sub_19A4E4A78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_19A4E4B7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C48);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19A4E4CB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EE0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A4E4DF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1068);
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

void *sub_19A4E4EFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_19A4E5030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EA8);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_19A4E5134(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D38);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19A4E5308(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_19A5740BC();
  AppleDiffusionAdapter.rawValue.getter(a2);
  sub_19A572E4C();

  v5 = sub_19A57410C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v32 = ~v6;
    v8 = 0xE90000000000006ELL;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      v33 = v7;
      if (v9 <= 4)
      {
        if (v9 == 3)
        {
          v12 = 0xD000000000000012;
        }

        else
        {
          v12 = 0x61727473756C6C69;
        }

        if (v9 == 3)
        {
          v13 = 0x800000019A5965C0;
        }

        else
        {
          v13 = 0xEC0000006E6F6974;
        }

        if (v9 == 2)
        {
          v12 = 0x696A6F6D65;
          v13 = 0xE500000000000000;
        }

        v14 = 0xD000000000000016;
        if (*(*(v4 + 48) + v7))
        {
          v15 = 0x800000019A5965E0;
        }

        else
        {
          v14 = 0x6F6974616D696E61;
          v15 = 0xE90000000000006ELL;
        }

        v11 = *(*(v4 + 48) + v7) <= 1u ? v14 : v12;
        v10 = *(*(v4 + 48) + v7) <= 1u ? v15 : v13;
      }

      else if (*(*(v4 + 48) + v7) > 7u)
      {
        if (v9 == 8)
        {
          v11 = 0x63735F656C797473;
          v10 = 0xEE00656C62626972;
        }

        else if (v9 == 9)
        {
          v11 = 0xD00000000000001BLL;
          v10 = 0x800000019A596560;
        }

        else
        {
          v11 = 0xD000000000000014;
          v10 = 0x800000019A596540;
        }
      }

      else if (v9 == 5)
      {
        v11 = 0xD000000000000019;
        v10 = 0x800000019A5965A0;
      }

      else if (v9 == 6)
      {
        v10 = 0xE600000000000000;
        v11 = 0x686374656B73;
      }

      else
      {
        v11 = 0xD000000000000013;
        v10 = 0x800000019A596580;
      }

      v16 = 0xD00000000000001BLL;
      if (a2 != 9)
      {
        v16 = 0xD000000000000014;
      }

      v17 = 0x800000019A596540;
      if (a2 == 9)
      {
        v17 = 0x800000019A596560;
      }

      if (a2 == 8)
      {
        v16 = 0x63735F656C797473;
        v17 = 0xEE00656C62626972;
      }

      v18 = 0xD000000000000019;
      v19 = 0x686374656B73;
      if (a2 != 6)
      {
        v19 = 0xD000000000000013;
      }

      v20 = 0x800000019A596580;
      if (a2 == 6)
      {
        v20 = 0xE600000000000000;
      }

      if (a2 != 5)
      {
        v18 = v19;
      }

      v21 = 0x800000019A5965A0;
      if (a2 != 5)
      {
        v21 = v20;
      }

      if (a2 <= 7u)
      {
        v16 = v18;
        v17 = v21;
      }

      if (a2 == 3)
      {
        v22 = 0xD000000000000012;
      }

      else
      {
        v22 = 0x61727473756C6C69;
      }

      if (a2 == 3)
      {
        v23 = 0x800000019A5965C0;
      }

      else
      {
        v23 = 0xEC0000006E6F6974;
      }

      if (a2 == 2)
      {
        v22 = 0x696A6F6D65;
        v23 = 0xE500000000000000;
      }

      v24 = 0xD000000000000016;
      if (a2)
      {
        v8 = 0x800000019A5965E0;
      }

      else
      {
        v24 = 0x6F6974616D696E61;
      }

      if (a2 <= 1u)
      {
        v22 = v24;
        v23 = v8;
      }

      v25 = a2 <= 4u ? v22 : v16;
      v26 = a2 <= 4u ? v23 : v17;
      if (v11 == v25 && v10 == v26)
      {
        break;
      }

      v27 = sub_19A573F1C();

      if (v27)
      {
        goto LABEL_74;
      }

      v7 = (v33 + 1) & v32;
      v8 = 0xE90000000000006ELL;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

LABEL_74:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v33);
  }

  else
  {
LABEL_72:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v30;
    sub_19A4E5F54(a2, v7, isUniquelyReferenced_nonNull_native);
    *v30 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_19A4E56F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A572E4C();
  v11 = sub_19A57410C();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_19A573F1C() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_19A573F1C() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_19A4E6390(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_19A4E58D0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F10);
  result = sub_19A57390C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_19A4E5CD0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E68);
  result = sub_19A57390C();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v0;
    v31 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      sub_19A5740BC();
      sub_19A572E4C();
      sub_19A572E4C();
      result = sub_19A57410C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      ++*(v4 + 16);
      v2 = v31;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero(v6, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v30;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_19A4E5F54(uint64_t result, unint64_t a2, char a3)
{
  v41 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_79;
  }

  if (a3)
  {
    sub_19A4E58D0();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_19A4E655C();
      goto LABEL_79;
    }

    sub_19A4E6808();
  }

  v7 = *v3;
  sub_19A5740BC();
  AppleDiffusionAdapter.rawValue.getter(v41);
  sub_19A572E4C();

  result = sub_19A57410C();
  v39 = v7 + 56;
  v40 = v7;
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v38 = ~v8;
    v9 = 0xEC0000006E6F6974;
    v10 = 0x800000019A5965C0;
    do
    {
      v11 = *(*(v40 + 48) + a2);
      if (v11 <= 4)
      {
        if (v11 == 3)
        {
          v14 = 0xD000000000000012;
        }

        else
        {
          v14 = 0x61727473756C6C69;
        }

        if (v11 == 3)
        {
          v15 = v10;
        }

        else
        {
          v15 = v9;
        }

        if (v11 == 2)
        {
          v14 = 0x696A6F6D65;
          v15 = 0xE500000000000000;
        }

        v16 = 0xD000000000000016;
        if (*(*(v40 + 48) + a2))
        {
          v17 = 0x800000019A5965E0;
        }

        else
        {
          v16 = 0x6F6974616D696E61;
          v17 = 0xE90000000000006ELL;
        }

        v13 = *(*(v40 + 48) + a2) <= 1u ? v16 : v14;
        v12 = *(*(v40 + 48) + a2) <= 1u ? v17 : v15;
      }

      else if (*(*(v40 + 48) + a2) > 7u)
      {
        if (v11 == 8)
        {
          v13 = 0x63735F656C797473;
          v12 = 0xEE00656C62626972;
        }

        else if (v11 == 9)
        {
          v13 = 0xD00000000000001BLL;
          v12 = 0x800000019A596560;
        }

        else
        {
          v13 = 0xD000000000000014;
          v12 = 0x800000019A596540;
        }
      }

      else if (v11 == 5)
      {
        v13 = 0xD000000000000019;
        v12 = 0x800000019A5965A0;
      }

      else if (v11 == 6)
      {
        v12 = 0xE600000000000000;
        v13 = 0x686374656B73;
      }

      else
      {
        v13 = 0xD000000000000013;
        v12 = 0x800000019A596580;
      }

      v18 = 0xD00000000000001BLL;
      if (v41 != 9)
      {
        v18 = 0xD000000000000014;
      }

      v19 = 0x800000019A596540;
      if (v41 == 9)
      {
        v19 = 0x800000019A596560;
      }

      if (v41 == 8)
      {
        v18 = 0x63735F656C797473;
        v19 = 0xEE00656C62626972;
      }

      v20 = 0xD000000000000019;
      v21 = 0x686374656B73;
      if (v41 != 6)
      {
        v21 = 0xD000000000000013;
      }

      v22 = 0x800000019A596580;
      if (v41 == 6)
      {
        v22 = 0xE600000000000000;
      }

      if (v41 != 5)
      {
        v20 = v21;
      }

      v23 = 0x800000019A5965A0;
      if (v41 != 5)
      {
        v23 = v22;
      }

      if (v41 <= 7u)
      {
        v18 = v20;
        v19 = v23;
      }

      if (v41 == 3)
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = 0x61727473756C6C69;
      }

      v25 = v9;
      v26 = v10;
      if (v41 == 3)
      {
        v27 = v10;
      }

      else
      {
        v27 = v9;
      }

      if (v41 == 2)
      {
        v24 = 0x696A6F6D65;
        v27 = 0xE500000000000000;
      }

      v28 = 0xD000000000000016;
      if (v41)
      {
        v29 = 0x800000019A5965E0;
      }

      else
      {
        v28 = 0x6F6974616D696E61;
        v29 = 0xE90000000000006ELL;
      }

      if (v41 <= 1u)
      {
        v24 = v28;
        v27 = v29;
      }

      v30 = v41 <= 4u ? v24 : v18;
      v31 = v41 <= 4u ? v27 : v19;
      if (v13 == v30 && v12 == v31)
      {
        goto LABEL_82;
      }

      v32 = sub_19A573F1C();

      if (v32)
      {
        goto LABEL_83;
      }

      a2 = (a2 + 1) & v38;
      v9 = v25;
      v10 = v26;
    }

    while (((*(v39 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_79:
  v33 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v33 + 48) + a2) = v41;
  v34 = *(v33 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (!v35)
  {
    *(v33 + 16) = v36;
    return result;
  }

  __break(1u);
LABEL_82:

LABEL_83:
  result = sub_19A57403C();
  __break(1u);
  return result;
}