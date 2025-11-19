void *sub_2977FA19C(size_t a1)
{
  result = malloc_type_malloc(a1, 0x298B2278uLL);
  if (!result)
  {
    sub_2978F4440();
  }

  return result;
}

uint64_t sub_2977FA1C8(void *a1, uint64_t a2)
{
  *a1 = a2;
  result = sub_2977FA204(a1);
  if (result >= 2)
  {
    result = sub_2977FA198((8 * result));
    a1[1] = result;
  }

  return result;
}

void sub_2977FA214(uint64_t a1)
{
  if (sub_2977FA260(a1))
  {
    v2 = *(a1 + 8);
    if (v2)
    {

      j__free(v2);
    }
  }
}

void *sub_2977FA280(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 18) & 0xF7 | (8 * ((*(a2 + 18) >> 3) & 1));
  *(a1 + 18) = v4;
  *(a1 + 18) = v4 & 0xF8 | *(a2 + 18) & 7;
  *(a1 + 16) = *(a2 + 16);
  result = sub_2977FA308(a1);
  if ((result & 1) != 0 || (*(a1 + 18) & 7) == 1)
  {

    return sub_2977FA33C(a1, a2);
  }

  return result;
}

BOOL sub_2977FA308(uint64_t a1)
{
  result = sub_2977FB4C0(a1);
  if (result)
  {
    return !sub_2977FB4AC(a1);
  }

  return result;
}

void *sub_2977FA33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FA3A0(a1);
  v5 = sub_2977FA3D8(a2);
  v6 = sub_2977FA204(a1);

  return sub_2978020D4(v4, v5, v6);
}

uint64_t sub_2977FA3A0(uint64_t a1)
{
  v2 = sub_2977FA204(a1);
  result = a1 + 8;
  if (v2 >= 2)
  {
    return *result;
  }

  return result;
}

uint64_t sub_2977FA3DC(_BYTE *a1, int a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    v7 = 9;
  }

  else
  {
    v7 = 1;
  }

  a1[18] = v7 | a1[18] & 0xF0;
  v8 = sub_2977FA3A0(a1);
  v9 = sub_2977FA204(a1);
  v19 = v9;
  if (a4)
  {
    if (sub_2977FA554(a4) < v9)
    {
      sub_2978020B4(v8, 0, v9);
    }

    v10 = sub_2977FA55C(a4);
    v18 = sub_2977FA554(a4);
    v11 = sub_2977FA590(&v18, &v19);
    sub_2978020D4(v8, v10, *v11);
    v12 = *(*a1 + 4);
    v13 = (v12 - 1) >> 6;
    v8[v13] &= ~(-1 << (v12 - 1));
    v14 = v19;
    v15 = v13 + 1;
    if (v15 != v19)
    {
      do
      {
        v8[v15++] = 0;
      }

      while (v14 != v15);
    }
  }

  else
  {
    sub_2978020B4(v8, 0, v9);
    v12 = *(*a1 + 4);
  }

  v16 = v12 - 2;
  if (a2)
  {
    sub_297802168(v8, v16);
    result = sub_2978020F0(v8, v19);
    if (!result)
    {
      goto LABEL_15;
    }

    v16 = v12 - 3;
  }

  result = sub_29780214C(v8, v16);
LABEL_15:
  if (*a1 == &unk_2978F4C50)
  {
    return sub_29780214C(v8, v12 - 1);
  }

  return result;
}

_DWORD *sub_2977FA55C(_DWORD *a1)
{
  v2 = sub_2977FD1C4(a1);
  result = a1 + 2;
  if (!v2)
  {
    return *result;
  }

  return result;
}

uint64_t sub_2977FA59C(uint64_t a1, uint64_t a2)
{
  sub_2977FA214(a1);
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a1 + 18) & 0xF8 | *(a2 + 18) & 7;
  *(a1 + 18) = v4;
  *(a1 + 18) = v4 & 0xF7 | *(a2 + 18) & 8;
  *a2 = &unk_2978F4C58;
  return a1;
}

BOOL sub_2977FA610(unsigned __int16 *a1)
{
  result = sub_2977FA308(a1);
  if (result)
  {
    v3 = *a1;
    if (a1[8] == *(*a1 + 2))
    {
      v4 = sub_2977FA3D8(a1);
      return sub_297802138(v4, *(v3 + 4) - 1) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2977FA670(uint64_t a1)
{
  v2 = sub_2977FA3D8(a1);
  v3 = sub_2977FA204(a1);

  return sub_2978021FC(v2, v3);
}

void sub_2977FA6B8(uint64_t a1)
{
  v2 = sub_2977FA3A0(a1);
  v3 = sub_2977FA204(a1);

  sub_2978020B4(v2, 0, v3);
}

uint64_t sub_2977FA704(__int16 **a1, int a2, int a3)
{
  result = sub_2977FA308(a1);
  if (result)
  {
    v7 = sub_2977FA670(a1);
    v8 = v7 + 1;
    if (v7 == -1)
    {
      if (a3)
      {
        if ((sub_2977FB1D8(a1, a2, a3, 0) & 1) == 0)
        {
          if (!*(*a1 + 1))
          {
            return 16;
          }

LABEL_37:
          *(a1 + 18) = *(a1 + 18) & 0xF8 | 3;
          return 24;
        }

        goto LABEL_5;
      }

      goto LABEL_31;
    }

    v11 = *(a1 + 8);
    v12 = v8 - *(*a1 + 1) + v11;
    if (v12 <= **a1)
    {
      v13 = (*a1)[1];
      v14 = v13 - v11;
      if (v12 >= v13)
      {
        v15 = v8 - *(*a1 + 1);
      }

      else
      {
        v15 = v14;
      }

      if ((v15 & 0x80000000) != 0)
      {
        sub_2977FB060(a1, -v15);
      }

      else
      {
        if (v15)
        {
          v16 = sub_2977FADF4(a1, v15);
          a3 = sub_2977FB03C(v16, a3);
          if (v8 >= v15)
          {
            v8 -= v15;
          }

          else
          {
            v8 = 0;
          }
        }

        if (a3)
        {
          if ((sub_2977FB1D8(a1, a2, a3, 0) & 1) == 0)
          {
            v10 = *(*a1 + 1);
            goto LABEL_34;
          }

          if (v8)
          {
LABEL_6:
            sub_2977FAA14(a1);
            v9 = sub_2977FA670(a1);
            v10 = *(*a1 + 1);
            if (v9 == v10)
            {
              if (*(a1 + 8) == **a1)
              {
                *(a1 + 18) &= 0xF8u;
                return 20;
              }

              sub_2977FADF4(a1, 1u);
              return 16;
            }

            v8 = v9 + 1;
LABEL_34:
            if (v8 == v10)
            {
              return 16;
            }

            if (v8)
            {
              return 24;
            }

            goto LABEL_37;
          }

LABEL_5:
          *(a1 + 8) = (*a1)[1];
          goto LABEL_6;
        }

        if (!v8)
        {
LABEL_31:
          result = 0;
          *(a1 + 18) = *(a1 + 18) & 0xF8 | 3;
          return result;
        }
      }

      return 0;
    }

    return sub_2977FB13C(a1, a2);
  }

  return result;
}

void *sub_2977FA91C(void *a1, uint64_t *a2)
{
  sub_2977FA1C8(a1, *a2);
  sub_2977FA280(a1, a2);
  return a1;
}

uint64_t sub_2977FA998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*a1 == &unk_2978F4C30)
  {
    return sub_2977FBCE4(a1, a2);
  }

  if (v2 == &unk_2978F4C38)
  {
    return sub_2977FBC2C(a1, a2);
  }

  if (v2 == &unk_2978F4C40)
  {
    return sub_2977FBA68(a1, a2);
  }

  if (v2 == &unk_2978F4C48)
  {
    return sub_2977FBB28(a1, a2);
  }

  if (v2 == &unk_2978F4C60)
  {
    return sub_2977FB8D4(a1, a2);
  }

  return sub_2977FB7D8(a1, a2);
}

BOOL sub_2977FAA14(uint64_t a1)
{
  v2 = sub_2977FA3A0(a1);
  v3 = sub_2977FA204(a1);

  return sub_297802364(v2, v3);
}

BOOL sub_2977FAA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FA3A0(a1);
  v5 = sub_2977FA3D8(a2);
  v6 = sub_2977FA204(a1);

  return sub_2978022D4(v4, v5, 0, v6);
}

uint64_t sub_2977FAAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FA3A0(a1);
  v7 = sub_2977FA3D8(a2);
  v8 = sub_2977FA204(a1);

  return sub_29780231C(v6, v7, a3, v8);
}

uint64_t sub_2977FAB30(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v8 = *a1;
  v9 = *(a2 + 4);
  v10 = sub_2977FAA08(v9 + 1);
  v11 = sub_2977FA204(a1);
  v12 = 0;
  v13 = v9 - *(v8 + 1);
  if (a2 != &unk_2978F4C50 && v8 == &unk_2978F4C50)
  {
    if ((*(a1 + 18) & 7) != 1)
    {
      v12 = 0;
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }

    v12 = *sub_2977FA3A0(a1) >> 62 != 3;
  }

  if ((v13 & 0x80000000) == 0)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_16;
  }

LABEL_8:
  if (sub_2977FA308(a1))
  {
    v15 = sub_2977FA670(a1) - *(v8 + 1);
    v16 = *(a1 + 16);
    v17 = *(a2 + 2);
    v18 = v15 + 1 + v16 >= v17 ? v15 + 1 : v17 - v16;
    if ((v18 & 0x80000000) != 0)
    {
      if (v18 <= v13)
      {
        v18 = v13;
      }

      *(a1 + 16) = v16 + v18;
      v13 -= v18;
      if (v13 >= 0)
      {
        goto LABEL_6;
      }
    }
  }

  if (!sub_2977FA308(a1) && (*(a1 + 18) & 7) != 1)
  {
    goto LABEL_6;
  }

  v19 = sub_2977FA3A0(a1);
  v14 = sub_2977FAFF0(v19, v11, -v13);
LABEL_16:
  if (v10 <= v11)
  {
    if (v10 == 1 && v11 != 1)
    {
      if (sub_2977FA308(a1) || (*(a1 + 18) & 7) == 1)
      {
        v23 = *sub_2977FA3A0(a1);
      }

      else
      {
        v23 = 0;
      }

      sub_2977FA214(a1);
      *(a1 + 8) = v23;
    }
  }

  else
  {
    v20 = sub_2977FA198(8 * v10);
    sub_2978020B4(v20, 0, v10);
    if (sub_2977FA308(a1) || (*(a1 + 18) & 7) == 1)
    {
      v21 = sub_2977FA3A0(a1);
      sub_2978020D4(v20, v21, v11);
    }

    sub_2977FA214(a1);
    *(a1 + 8) = v20;
  }

  *a1 = a2;
  if (v13 >= 1 && (sub_2977FA308(a1) || (*(a1 + 18) & 7) == 1))
  {
    v24 = sub_2977FA3A0(a1);
    sub_2978023A4(v24, v10, v13);
  }

  if (sub_2977FA308(a1))
  {
    result = sub_2977FA704(a1, a3, v14);
    *a4 = result != 0;
  }

  else if ((*(a1 + 18) & 7) == 1)
  {
    if (v14)
    {
      v26 = 1;
    }

    else
    {
      v26 = v12;
    }

    *a4 = v26;
    if (!v12 && *a1 == &unk_2978F4C50)
    {
      v27 = sub_2977FA3A0(a1);
      sub_29780214C(v27, 0x3Fu);
    }

    return 0;
  }

  else
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t sub_2977FADF4(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) += a2;
  v4 = sub_2977FA3A0(a1);
  v5 = sub_2977FA204(a1);

  return sub_2977FAFF0(v4, v5, a2);
}

uint64_t sub_2977FAE58(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 16);
  v6 = *(a1 + 16) - v5;
  if ((((((*(a2 + 18) ^ *(a1 + 18)) & 8) == 0) ^ a3) & 1) == 0)
  {
    v8 = *(a1 + 16);
    v9 = *(a2 + 16);
    sub_2977FA958(v15, a2);
    if (v8 == v9)
    {
      v10 = 0;
      v11 = 0;
      if (!sub_2977FB0BC(a1, v15))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v6 < 1)
      {
        v10 = sub_2977FADF4(a1, ~v6);
        sub_2977FB060(v15, 1u);
LABEL_12:
        sub_2977FAAC4(v15, a1, v10 != 0);
        sub_2977FA33C(a1, v15);
        *(a1 + 18) ^= 8u;
        goto LABEL_13;
      }

      v11 = sub_2977FADF4(v15, v6 - 1);
      sub_2977FB060(a1, 1u);
    }

    sub_2977FAAC4(a1, v15, v11 != 0);
    v10 = v11;
LABEL_13:
    if (v10 == 3)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    if (v10 == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = v14;
    }

    goto LABEL_19;
  }

  if (v6 < 1)
  {
    v12 = sub_2977FADF4(a1, v5 - *(a1 + 16));
    sub_2977FAA5C(a1, a2);
    return v12;
  }

  sub_2977FA958(v15, a2);
  v7 = sub_2977FADF4(v15, v6);
  sub_2977FAA5C(a1, v15);
LABEL_19:
  sub_2977FA598(v15);
  return v7;
}

uint64_t sub_2977FAFF0(unint64_t *a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_2977FB574(a1, a2, a3);
  sub_29780226C(a1, a2, a3);
  return v6;
}

uint64_t sub_2977FB03C(uint64_t result, int a2)
{
  if (result == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = result;
  }

  if (result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return result;
  }
}

void sub_2977FB060(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v4 = sub_2977FA204(a1);
    v5 = sub_2977FA3A0(a1);
    sub_2978023A4(v5, v4, a2);
    *(a1 + 16) -= a2;
  }
}

uint64_t sub_2977FB0BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = v3 - v4;
  if (v3 == v4)
  {
    v7 = sub_2977FA3D8(a1);
    v8 = sub_2977FA3D8(a2);
    v9 = sub_2977FA204(a1);
    v5 = sub_297802420(v7, v8, v9);
  }

  if (v5 <= 0)
  {
    return v5 >= 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2977FB13C(uint64_t a1, int a2)
{
  v3 = *(a1 + 18);
  if ((a2 & 0xFFFFFFFB) == 0)
  {
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    if ((*(a1 + 18) & 8) != 0)
    {
LABEL_5:
      *(a1 + 18) = v3 & 0xF8;
      return 20;
    }
  }

  else if (a2 == 1 && (*(a1 + 18) & 8) == 0)
  {
    goto LABEL_5;
  }

  *(a1 + 18) = v3 & 0xF8 | 2;
  v5 = *a1;
  *(a1 + 16) = **a1;
  v6 = sub_2977FA3A0(a1);
  v7 = sub_2977FA204(a1);
  sub_297802458(v6, v7, *(v5 + 1));
  return 16;
}

uint64_t sub_2977FB1D8(uint64_t a1, int a2, int a3, unsigned int a4)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      return (*(a1 + 18) >> 3) & 1;
    }

    if (a2 != 3)
    {
      return (a3 & 0xFFFFFFFE) == 2;
    }

    return 0;
  }

  if (!a2)
  {
    if (a3 == 3)
    {
      return 1;
    }

    if (a3 == 2 && (*(a1 + 18) & 7) != 3)
    {
      v7 = sub_2977FA3D8(a1);
      return sub_297802138(v7, a4) != 0;
    }

    return 0;
  }

  return (*(a1 + 18) & 8) == 0;
}

uint64_t sub_2977FB284(_BYTE *a1, uint64_t a2, int a3)
{
  result = 0;
  v7 = a1[18];
  v8 = *(a2 + 18);
  v9 = 4 * (v7 & 7) + (v8 & 7);
  if (v9 <= 7)
  {
    if ((v9 - 2) < 6)
    {
      return result;
    }

    if (!v9)
    {
      if ((((((v8 ^ v7) & 8) == 0) ^ a3) & 1) == 0)
      {
        sub_2977FA3DC(a1, 0, 0, 0);
        return 1;
      }

      return 0;
    }

LABEL_9:
    if (a3 != (v8 & 8) >> 3)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    a1[18] = v7 & 0xF0 | v10 | 1;
    sub_2977FA33C(a1, a2);
    return 0;
  }

  if (v9 > 11)
  {
    if (v9 > 13)
    {
      if (v9 != 14)
      {
        return result;
      }

      sub_2977FA280(a1, a2);
      result = 0;
      if (a3 != (*(a2 + 18) & 8) >> 3)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      v12 = v13 | a1[18] & 0xF7;
      goto LABEL_28;
    }

    if (v9 != 12)
    {
      goto LABEL_9;
    }

LABEL_16:
    result = 0;
    a1[18] = v7 & 0xF8;
    if (a3 != (*(a2 + 18) & 8) >> 3)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v7 & 0xF0;
LABEL_28:
    a1[18] = v12;
    return result;
  }

  if (v9 <= 9)
  {
    if (v9 != 8)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v9 == 10)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2977FB3F4(__int16 **a1, uint64_t a2, int a3, int a4)
{
  result = sub_2977FB284(a1, a2, a4);
  if (result == 2)
  {
    v9 = sub_2977FAE58(a1, a2, a4);
    result = sub_2977FA704(a1, a3, v9);
  }

  v10 = *(a1 + 18);
  if ((v10 & 7) == 3)
  {
    v11 = *(a2 + 18);
    if ((v11 & 7) != 3 || a4 != ((v11 ^ v10) & 8) >> 3)
    {
      *(a1 + 18) = v10 & 0xF3 | (8 * (a3 == 2));
    }
  }

  return result;
}

uint64_t sub_2977FB4FC(unint64_t a1)
{
  v1 = a1 | (a1 >> 1) | ((a1 | (a1 >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  return (v2 | (v2 >> 16) | ((v2 | (v2 >> 16)) >> 32)) + 1;
}

unsigned int *sub_2977FB520(unsigned int *a1, uint64_t a2)
{
  sub_2977FD31C(a1, a2, v4);
  sub_2977FB698(a1, v4);
  sub_2977FAA04(v4);
  return a1;
}

uint64_t sub_2977FB574(unint64_t *a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_297802184(a1, a2);
  if (v6 >= a3)
  {
    return 0;
  }

  if (v6 + 1 == a3)
  {
    return 2;
  }

  if (a3 <= a2 << 6 && sub_297802138(a1, a3 - 1))
  {
    return 3;
  }

  return 1;
}

uint64_t sub_2977FB640@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2977FB51C(v5, *a1, 0, 0);
  sub_2977FEFA8(v5, a1, a2);
  return sub_2977FAA04(v5);
}

uint64_t sub_2977FB698(uint64_t a1, int *a2)
{
  if (sub_2977FD1C4(a1))
  {
LABEL_5:
    *(a1 + 8) = *(a2 + 1);
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    return a1;
  }

  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      j__free(v4);
    }

    goto LABEL_5;
  }

  return a1;
}

void sub_2977FB734(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = sub_2977FA594(a3, a1);

  sub_2977FD138(v4, a2);
}

uint64_t sub_2977FB7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = *MEMORY[0x29EDCA608];
  if (sub_2977FA308(a1))
  {
    v4 = *(a1 + 16) + 0x3FFFLL;
    v5 = *sub_2977FA3D8(a1);
    v6 = v5 >> 63;
    if (v4 != 1)
    {
      LOWORD(v6) = v4;
    }

    v7 = v6 & 0x7FFF;
    v8 = *(a1 + 18);
  }

  else
  {
    v8 = *(a1 + 18);
    if ((v8 & 7) == 3)
    {
      v7 = 0;
      v5 = 0;
    }

    else
    {
      if ((v8 & 7) != 0)
      {
        v5 = *sub_2977FA3D8(a1);
      }

      else
      {
        v5 = 0x8000000000000000;
      }

      v7 = 0x7FFFLL;
    }
  }

  v12[0] = v5;
  v12[1] = v7 | (((v8 >> 3) & 1) << 15);
  sub_2977FB8D0(v11, v12);
  result = sub_2977FE63C(a2, 80, v11[0], v11[1]);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2977FB8D4@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v10 = 0;
  v9 = **a1;
  WORD1(v9) = -1022;
  sub_2977FA958(v8, a1);
  sub_2977FAB30(v8, &v9, 0, &v10);
  sub_2977FA958(v7, v8);
  sub_2977FAB30(v7, &unk_2978F4C40, 0, &v10);
  sub_2977FBA68(v7, v6);
  v11 = *sub_2977FA55C(v6);
  sub_2977FAA04(v6);
  if (sub_2977FA308(v7) && v10 == 1)
  {
    sub_2977FAB30(v7, &v9, 0, &v10);
    sub_2977FA958(v6, v8);
    sub_2977FB4A4(v6, v7, 0);
    sub_2977FAB30(v6, &unk_2978F4C40, 0, &v10);
    sub_2977FBA68(v6, v5);
    v12 = *sub_2977FA55C(v5);
    sub_2977FAA04(v5);
    sub_2977FA598(v6);
  }

  else
  {
    v12 = 0;
  }

  sub_2977FB8D0(v6, &v11);
  sub_2977FE63C(a2, 128, v6[0], v6[1]);
  sub_2977FA598(v7);
  result = sub_2977FA598(v8);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2977FBA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_2977FA308(a1))
  {
    v4 = *(a1 + 16) + 1023;
    v5 = *sub_2977FA3D8(a1);
    v6 = (v5 >> 52) & 1;
    if (v4 != 1)
    {
      LOWORD(v6) = v4;
    }
  }

  else if ((*(a1 + 18) & 7) == 3)
  {
    LOWORD(v6) = 0;
    v5 = 0;
  }

  else
  {
    if ((*(a1 + 18) & 7) != 0)
    {
      v5 = *sub_2977FA3D8(a1);
    }

    else
    {
      v5 = 0;
    }

    LOWORD(v6) = 2047;
  }

  v7 = (*(a1 + 18) << 60) & 0x8000000000000000 | ((v6 & 0x7FF) << 52) | v5 & 0xFFFFFFFFFFFFFLL;

  return sub_2977FB51C(a2, 64, v7, 0);
}

uint64_t sub_2977FBB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  if (sub_2977FA308(a1))
  {
    v4 = *(a1 + 16) + 0x3FFFLL;
    v5 = sub_2977FA3D8(a1);
    v6 = *v5;
    v7 = v5[1];
    v8 = HIWORD(v7) & 1;
    if (v4 != 1)
    {
      LOWORD(v8) = v4;
    }
  }

  else if ((*(a1 + 18) & 7) == 3)
  {
    LOWORD(v8) = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    if ((*(a1 + 18) & 7) != 0)
    {
      v9 = sub_2977FA3D8(a1);
      v6 = *v9;
      v7 = v9[1];
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    LOWORD(v8) = 0x7FFF;
  }

  v10 = (*(a1 + 18) << 60) & 0x8000000000000000 | ((v8 & 0x7FFF) << 48) | v7 & 0xFFFFFFFFFFFFLL;
  v14[0] = v6;
  v14[1] = v10;
  sub_2977FB8D0(v13, v14);
  result = sub_2977FE63C(a2, 128, v13[0], v13[1]);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2977FBC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_2977FA308(a1))
  {
    v4 = *(a1 + 16) + 127;
    v5 = *sub_2977FA3D8(a1);
    v6 = (v5 >> 23) & 1;
    if (v4 != 1)
    {
      LOBYTE(v6) = v4;
    }
  }

  else
  {
    v5 = *(a1 + 18) & 7;
    if (v5 == 3)
    {
      LOBYTE(v6) = 0;
      v5 = 0;
    }

    else
    {
      if ((*(a1 + 18) & 7) != 0)
      {
        v5 = *sub_2977FA3D8(a1);
      }

      LOBYTE(v6) = -1;
    }
  }

  v7 = (*(a1 + 18) << 28) & 0x80000000 | (v6 << 23) | v5 & 0x7FFFFF;

  return sub_2977FB51C(a2, 32, v7, 0);
}

uint64_t sub_2977FBCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_2977FA308(a1))
  {
    v4 = *(a1 + 16) + 15;
    v5 = *sub_2977FA3D8(a1);
    v6 = (v5 >> 10) & 1;
    if (v4 != 1)
    {
      LOBYTE(v6) = v4;
    }
  }

  else
  {
    v5 = *(a1 + 18) & 7;
    if (v5 == 3)
    {
      LOBYTE(v6) = 0;
      LOWORD(v5) = 0;
    }

    else
    {
      if ((*(a1 + 18) & 7) != 0)
      {
        v5 = *sub_2977FA3D8(a1);
      }

      LOBYTE(v6) = 31;
    }
  }

  v7 = ((v6 & 0x1F) << 10) & 0x7C00 | (((*(a1 + 18) >> 3) & 1) << 15) | v5 & 0x3FF;

  return sub_2977FB51C(a2, 16, v7, 0);
}

float sub_2977FBD9C(uint64_t a1)
{
  sub_2977FA998(a1, v3);
  v1 = sub_2977FBDE0(v3);
  sub_2977FAA04(v3);
  return v1;
}

float sub_2977FBDE0(_DWORD *a1)
{
  v2 = sub_2977FD1C4(a1);
  v3 = a1 + 2;
  if (!v2)
  {
    v3 = *v3;
  }

  return *v3;
}

uint64_t sub_2977FBE14(uint64_t a1, _DWORD *a2)
{
  v4 = *sub_2977FA55C(a2);
  v5 = *(sub_2977FA55C(a2) + 1);
  v6 = v5 & 0x7FFF;
  result = sub_2977FA1C8(a1, &unk_2978F4C50);
  v8 = *(a1 + 18) & 0xF7 | (8 * ((v5 >> 15) & 1));
  if (!(v6 | v4))
  {
    v9 = *(a1 + 18) & 0xF0 | (8 * ((v5 & 0x8000) != 0)) | 3;
LABEL_15:
    *(a1 + 18) = v9;
    return result;
  }

  if (v6 == 0x7FFF && v4 == 0x8000000000000000)
  {
    v9 = *(a1 + 18) & 0xF0 | (8 * ((v5 & 0x8000) != 0));
    goto LABEL_15;
  }

  v11 = *(a1 + 18) & 0xF0 | (8 * ((v5 & 0x8000) != 0));
  if (v6 != 0x7FFF || v4 == 0x8000000000000000)
  {
    *(a1 + 18) = v11 | 2;
    *(a1 + 16) = v6 - 0x3FFF;
    *sub_2977FA3A0(a1) = v4;
    result = sub_2977FA3A0(a1);
    *(result + 8) = 0;
    if ((v5 & 0x7FFF) == 0)
    {
      *(a1 + 16) = -16382;
    }
  }

  else
  {
    *(a1 + 18) = v11 | 1;
    *sub_2977FA3A0(a1) = v4;
    result = sub_2977FA3A0(a1);
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2977FBF1C(__int16 **a1, _DWORD *a2)
{
  v4 = *sub_2977FA55C(a2);
  v5 = *(sub_2977FA55C(a2) + 1);
  sub_2977FB51C(v8, 64, v4, 0);
  sub_2977FC014(a1, v8);
  sub_2977FAA04(v8);
  sub_2977FAB30(a1, &unk_2978F4C60, 0, &v9);
  result = sub_2977FA308(a1);
  if (result)
  {
    sub_2977FB51C(v7, 64, v5, 0);
    sub_2977FC104(v8, &unk_2978F4C40, v7);
    sub_2977FAA04(v7);
    sub_2977FAB30(v8, &unk_2978F4C60, 0, &v9);
    sub_2977FB49C(a1, v8, 0);
    return sub_2977FA598(v8);
  }

  return result;
}

void *sub_2977FC014(uint64_t a1, _DWORD *a2)
{
  v3 = *sub_2977FA55C(a2);
  v4 = (v3 >> 52) & 0x7FF;
  v5 = v3 & 0xFFFFFFFFFFFFFLL;
  result = sub_2977FA1C8(a1, &unk_2978F4C40);
  v7 = *(a1 + 18) & 0xF7 | (8 * (((v3 >> 60) >> 3) & 1));
  if (!(v4 | v3 & 0xFFFFFFFFFFFFFLL))
  {
    v8 = *(a1 + 18) & 0xF0 | (8 * (((v3 >> 60) & 8) != 0)) | 3;
LABEL_15:
    *(a1 + 18) = v8;
    return result;
  }

  if (v4 == 2047 && v5 == 0)
  {
    v8 = *(a1 + 18) & 0xF0 | (8 * (((v3 >> 60) & 8) != 0));
    goto LABEL_15;
  }

  v10 = *(a1 + 18) & 0xF0 | (8 * (((v3 >> 60) & 8) != 0));
  if (v4 != 2047 || v5 == 0)
  {
    *(a1 + 18) = v10 | 2;
    *(a1 + 16) = v4 - 1023;
    result = sub_2977FA3A0(a1);
    *result = v5;
    if (v4)
    {
      result = sub_2977FA3A0(a1);
      *result |= 0x10000000000000uLL;
    }

    else
    {
      *(a1 + 16) = -1022;
    }
  }

  else
  {
    *(a1 + 18) = v10 | 1;
    result = sub_2977FA3A0(a1);
    *result = v5;
  }

  return result;
}

uint64_t sub_2977FC108(uint64_t a1, _DWORD *a2)
{
  v4 = *sub_2977FA55C(a2);
  v5 = *(sub_2977FA55C(a2) + 1);
  v6 = HIWORD(v5) & 0x7FFF;
  v7 = v5 & 0xFFFFFFFFFFFFLL;
  result = sub_2977FA1C8(a1, &unk_2978F4C48);
  v9 = *(a1 + 18) & 0xF7 | (8 * (((v5 >> 60) >> 3) & 1));
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4 == 0;
  }

  if (v10 && v7 == 0)
  {
    v16 = *(a1 + 18) & 0xF0 | (8 * (((v5 >> 60) & 8) != 0)) | 3;
LABEL_24:
    *(a1 + 18) = v16;
    return result;
  }

  if (v6 == 0x7FFF && v4 == 0 && v7 == 0)
  {
    v16 = *(a1 + 18) & 0xF0 | (8 * (((v5 >> 60) & 8) != 0));
    goto LABEL_24;
  }

  v14 = *(a1 + 18) & 0xF0 | (8 * (((v5 >> 60) & 8) != 0));
  if (v6 != 0x7FFF || (v4 | v7) == 0)
  {
    *(a1 + 18) = v14 | 2;
    *(a1 + 16) = v6 - 0x3FFF;
    *sub_2977FA3A0(a1) = v4;
    result = sub_2977FA3A0(a1);
    *(result + 8) = v7;
    if (v6)
    {
      result = sub_2977FA3A0(a1);
      *(result + 8) |= 0x1000000000000uLL;
    }

    else
    {
      *(a1 + 16) = -16382;
    }
  }

  else
  {
    *(a1 + 18) = v14 | 1;
    *sub_2977FA3A0(a1) = v4;
    result = sub_2977FA3A0(a1);
    *(result + 8) = v7;
  }

  return result;
}

void *sub_2977FC244(uint64_t a1, _DWORD *a2)
{
  v3 = *sub_2977FA55C(a2);
  v4 = (v3 >> 23);
  v5 = v3 & 0x7FFFFF;
  result = sub_2977FA1C8(a1, &unk_2978F4C38);
  v7 = *(a1 + 18) & 0xF7 | (8 * (v3 >> 31));
  if (!(v4 | v3 & 0x7FFFFF))
  {
    v8 = *(a1 + 18) & 0xF0 | (8 * (v3 < 0)) | 3;
LABEL_15:
    *(a1 + 18) = v8;
    return result;
  }

  if (v4 == 255 && v5 == 0)
  {
    v8 = *(a1 + 18) & 0xF0 | (8 * (v3 < 0));
    goto LABEL_15;
  }

  v10 = *(a1 + 18) & 0xF0 | (8 * (v3 < 0));
  if (v4 != 255 || v5 == 0)
  {
    *(a1 + 18) = v10 | 2;
    *(a1 + 16) = v4 - 127;
    result = sub_2977FA3A0(a1);
    *result = v3 & 0x7FFFFF;
    if ((v3 >> 23))
    {
      result = sub_2977FA3A0(a1);
      *result |= 0x800000uLL;
    }

    else
    {
      *(a1 + 16) = -126;
    }
  }

  else
  {
    *(a1 + 18) = v10 | 1;
    result = sub_2977FA3A0(a1);
    *result = v3 & 0x7FFFFF;
  }

  return result;
}

void *sub_2977FC338(uint64_t a1, _DWORD *a2)
{
  v3 = *sub_2977FA55C(a2);
  v4 = (v3 >> 10) & 0x1F;
  v5 = v3 & 0x3FF;
  result = sub_2977FA1C8(a1, &unk_2978F4C30);
  v7 = *(a1 + 18) & 0xF7 | (8 * ((v3 >> 15) & 1));
  if (!(v4 | v5))
  {
    v8 = *(a1 + 18) & 0xF0 | (8 * ((v3 & 0x8000) != 0)) | 3;
LABEL_15:
    *(a1 + 18) = v8;
    return result;
  }

  if (v4 == 31 && v5 == 0)
  {
    v8 = *(a1 + 18) & 0xF0 | (8 * ((v3 & 0x8000) != 0));
    goto LABEL_15;
  }

  v10 = *(a1 + 18) & 0xF0 | (8 * ((v3 & 0x8000) != 0));
  if (v4 != 31 || v5 == 0)
  {
    *(a1 + 18) = v10 | 2;
    *(a1 + 16) = v4 - 15;
    result = sub_2977FA3A0(a1);
    *result = v3 & 0x3FF;
    if (v4)
    {
      result = sub_2977FA3A0(a1);
      *result |= 0x400uLL;
    }

    else
    {
      *(a1 + 16) = -14;
    }
  }

  else
  {
    *(a1 + 18) = v10 | 1;
    result = sub_2977FA3A0(a1);
    *result = v3 & 0x3FF;
  }

  return result;
}

void *sub_2977FC42C(__int16 **a1, void *a2, _DWORD *a3)
{
  if (a2 == &unk_2978F4C30)
  {
    return sub_2977FC338(a1, a3);
  }

  if (a2 == &unk_2978F4C38)
  {
    return sub_2977FC244(a1, a3);
  }

  if (a2 == &unk_2978F4C40)
  {
    return sub_2977FC014(a1, a3);
  }

  if (a2 == &unk_2978F4C50)
  {
    return sub_2977FBE14(a1, a3);
  }

  if (a2 == &unk_2978F4C48)
  {
    return sub_2977FC108(a1, a3);
  }

  return sub_2977FBF1C(a1, a3);
}

void *sub_2977FC4AC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 10;
  }

  else
  {
    v3 = 2;
  }

  *(a1 + 18) = v3 | *(a1 + 18) & 0xF0;
  *(a1 + 16) = **a1;
  v4 = sub_2977FA3A0(a1);
  v5 = sub_2977FA204(a1);
  v6 = v5;
  v7 = v5 - 1;
  result = memset(v4, 255, 8 * (v5 - 1));
  *(v4 + v7) = 0xFFFFFFFFFFFFFFFFLL >> ((v6 << 6) - *(*a1 + 4));
  return result;
}

void *sub_2977FC544@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = sub_2977FA594(a3, a1);

  return sub_2977FC4AC(v4, a2);
}

uint64_t sub_2977FC588@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sub_2977FA594(a3, a1);
  *(a3 + 18) = *(a3 + 18) & 0xF8 | 2;
  sub_2977FA6B8(a3);
  if (a2)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *(a3 + 18) = *(a3 + 18) & 0xF7 | v6;
  *(a3 + 16) = *(a1 + 2);
  v7 = *(a1 + 4);
  v8 = sub_2977FA3A0(a3);
  result = sub_2977FAA08(v7);
  *(v8 + 8 * (result - 1)) |= 1 << (v7 - 1);
  return result;
}

__int16 **sub_2977FC660(__int16 **a1, float a2)
{
  sub_2977FC6B0(v4, LODWORD(a2));
  sub_2977FC42C(a1, &unk_2978F4C38, v4);
  sub_2977FAA04(v4);
  return a1;
}

uint64_t sub_2977FC6C8(uint64_t a1, const void **a2, unsigned int a3, unsigned int a4)
{
  v7 = *(a1 + 18) & 7;
  if (v7 == 3)
  {
    if (sub_2977FB568(a1))
    {
      LOBYTE(v53[0]) = 45;
      sub_2977FCD50(a2, v53);
    }

    if (a4)
    {
      LOBYTE(v53[0]) = 48;
      return sub_2977FCD50(a2, v53);
    }

    v8 = "0.0E+0";
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v8 = "NaN";
LABEL_20:
    sub_2977FB7B4(v53, v8);
    return sub_2977FCD00(a2, v53[0], v53[1]);
  }

  if ((*(a1 + 18) & 7) == 0)
  {
    if (sub_2977FB568(a1))
    {
      v8 = "-Inf";
    }

    else
    {
      v8 = "+Inf";
    }

    goto LABEL_20;
  }

  if (sub_2977FB568(a1))
  {
    LOBYTE(v53[0]) = 45;
    sub_2977FCD50(a2, v53);
  }

  v11 = *(*a1 + 4);
  v12 = *(a1 + 16) - v11 + 1;
  v13 = sub_2977FA3D8(a1);
  v14 = sub_2977FAA08(v11);
  v15 = sub_2977FB6F0(v13, v14);
  v17 = sub_2977FE63C(v54, v11, v15, v16);
  if (!a3)
  {
    a3 = 59 * *(*a1 + 4) / 0xC4u + 2;
  }

  v18 = sub_2977FF614(v17);
  v19 = v18 + v12;
  v55 = v18 + v12;
  sub_2977FFF14(v54, v18, v53);
  sub_2977FB698(v54, v53);
  sub_2977FAA04(v53);
  if (v19)
  {
    if (v19 < 1)
    {
      v20 = -v19;
      v21 = *(*a1 + 4);
      v22 = (-137 * v19 + 136) / 0x3Bu;
      sub_2977FFAF8(v54, v21 + v22, v53);
      sub_2977FB698(v54, v53);
      sub_2977FAA04(v53);
      sub_2977FB51C(v53, v21 + v22, 5, 0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_22:
      sub_2977FE9D8(v54, v53);
LABEL_23:
      while (v20 >= 2)
      {
        v20 >>= 1;
        sub_2977FE9D8(v53, v53);
        if (v20)
        {
          goto LABEL_22;
        }
      }

      sub_2977FAA04(v53);
    }

    else
    {
      sub_2977FFAF8(v54, (*(*a1 + 4) + v19), v53);
      sub_2977FB698(v54, v53);
      sub_2977FAA04(v53);
      sub_2977FB520(v54, v19);
      v55 = 0;
    }
  }

  sub_2977FCDC0(v54, &v55, a3);
  sub_2977FCF14();
  v23 = sub_2977FB5F0(v54);
  sub_2977FB51C(v52, v23, 10, 0);
  sub_2977FB51C(v51, v23, 0, 0);
  v24 = v55;
  if (sub_2977FCF18(v54, 0))
  {
    LOBYTE(v25) = 1;
    do
    {
      sub_2978006A0(v54, v52, v54, v51);
      v26 = sub_2977FCF34(v51);
      v25 = v25 & (v26 == 0);
      if (v25 == 1)
      {
        ++v24;
      }

      else
      {
        v50[0] = v26 + 48;
        sub_2977FCD50(v53, v50);
      }
    }

    while (sub_2977FCF18(v54, 0));
  }

  v55 = v24;
  sub_2977FCF68(v53, &v55, a3);
  v27 = sub_2977FD0D4(v53);
  v28 = v27;
  v29 = v55;
  if (!a4)
  {
    goto LABEL_45;
  }

  if ((v55 & 0x80000000) != 0)
  {
    if (((v27 + v55 - 1) & 0x80000000) == 0 || 1 - (v27 + v55) <= a4)
    {
      v42 = v55 + v27;
      if ((v55 + v27) < 1)
      {
        v50[0] = 48;
        sub_2977FCD50(a2, v50);
        v50[0] = 46;
        sub_2977FCD50(a2, v50);
        if (v42)
        {
          do
          {
            v50[0] = 48;
            sub_2977FCD50(a2, v50);
          }

          while (!__CFADD__(v42++, 1));
          v42 = 0;
        }
      }

      else
      {
        v43 = v27 - 1;
        v44 = v55 + v27;
        do
        {
          v45 = sub_2977FD108(v53, v43);
          sub_2977FCD50(a2, v45);
          --v43;
          --v44;
        }

        while (v44);
        v50[0] = 46;
        sub_2977FCD50(a2, v50);
      }

      if (v42 != v28)
      {
        v47 = ~v42 + v28;
        do
        {
          v48 = sub_2977FD108(v53, v47);
          sub_2977FCD50(a2, v48);
          --v47;
        }

        while (v47 != -1);
      }

      goto LABEL_61;
    }

    goto LABEL_45;
  }

  if (v55 > a4 || v55 + v27 > a3)
  {
LABEL_45:
    v32 = sub_2977FD108(v53, v27 - 1);
    sub_2977FCD50(a2, v32);
    v50[0] = 46;
    sub_2977FCD50(a2, v50);
    v33 = v29 + v28 - 1;
    if (v28 == 1)
    {
      v50[0] = 48;
      sub_2977FCD50(a2, v50);
    }

    else
    {
      v34 = v28 - 2;
      do
      {
        v35 = sub_2977FD108(v53, v34);
        sub_2977FCD50(a2, v35);
        --v34;
      }

      while (v34 != -1);
    }

    v50[0] = 69;
    sub_2977FCD50(a2, v50);
    if (v33 < 0)
    {
      v36 = 45;
    }

    else
    {
      v36 = 43;
    }

    v50[0] = v36;
    if (v33 >= 0)
    {
      v37 = v29 + v28 - 1;
    }

    else
    {
      v37 = -v33;
    }

    sub_2977FCD50(a2, v50);
    sub_2977FD130();
    do
    {
      v49 = v37 % 10 + 48;
      sub_2977FCD50(v50, &v49);
      v38 = v37 + 9;
      v37 /= 10;
    }

    while (v38 > 0x12);
    v39 = sub_2977FD0D4(v50);
    if (v39)
    {
      v40 = v39 - 1;
      do
      {
        v41 = sub_2977FD108(v50, v40);
        sub_2977FCD50(a2, v41);
        --v40;
      }

      while (v40 != -1);
    }

    sub_2977FD134(v50);
    goto LABEL_61;
  }

  if (v27)
  {
    v30 = v27 - 1;
    do
    {
      v31 = sub_2977FD108(v53, v30);
      sub_2977FCD50(a2, v31);
      --v30;
    }

    while (v30 != -1);
  }

  for (; v29; --v29)
  {
    v50[0] = 48;
    sub_2977FCD50(a2, v50);
  }

LABEL_61:
  sub_2977FAA04(v51);
  sub_2977FAA04(v52);
  sub_2977FD134(v53);
  return sub_2977FAA04(v54);
}

uint64_t sub_2977FCD00(const void **a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB728(v7);
  return sub_2977FD4F8(a1, v4, v5);
}

uint64_t sub_2977FCD50(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_2977FD5B8(a1, 0);
  }

  *sub_2977FB7B8(a1) = *a2;
  v4 = sub_2977FB7B8(a1) + 1;

  return sub_2977FD5DC(a1, v4);
}

uint64_t sub_2977FCDC0(int *a1, _DWORD *a2, int a3)
{
  result = sub_2977FD698(a1);
  v7 = (196 * a3 + 58) / 0x3Bu;
  v8 = result >= v7;
  v9 = result - v7;
  if (v9 != 0 && v8)
  {
    v10 = 59 * v9;
    if (v10 >= 0xC4)
    {
      v11 = v10 / 0xC4;
      *a2 += v10 / 0xC4;
      v12 = sub_2977FB5F0(a1);
      sub_2977FB51C(v17, v12, 1, 0);
      v13 = sub_2977FB5F0(a1);
      sub_2977FB51C(v16, v13, 10, 0);
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      sub_2977FE9D8(v17, v16);
LABEL_6:
      while (v11 >= 2)
      {
        v11 >>= 1;
        sub_2977FE9D8(v16, v16);
        if (v11)
        {
          goto LABEL_5;
        }
      }

      sub_2978004D0(a1, v17, v15);
      sub_2977FB698(a1, v15);
      sub_2977FAA04(v15);
      v14 = sub_2977FD698(a1);
      sub_2977FF8C4(a1, v14, v15);
      sub_2977FB698(a1, v15);
      sub_2977FAA04(v15);
      sub_2977FAA04(v16);
      return sub_2977FAA04(v17);
    }
  }

  return result;
}

uint64_t sub_2977FCF34(_DWORD *a1)
{
  v2 = sub_2977FD1C4(a1);
  v3 = a1 + 2;
  if (!v2)
  {
    v3 = *v3;
  }

  return *v3;
}

uint64_t sub_2977FCF68(void *a1, _DWORD *a2, unsigned int a3)
{
  result = sub_2977FD0D4(a1);
  v7 = result;
  v8 = result - a3;
  if (result > a3)
  {
    if (*sub_2977FD108(a1, v8 - 1) >= 53)
    {
      if (a3)
      {
        while (*sub_2977FD108(a1, v8) == 57)
        {
          ++v8;
          if (!--a3)
          {
            goto LABEL_13;
          }
        }

        v9 = sub_2977FD108(a1, v8);
        ++*v9;
      }

      if (v8 == v7)
      {
LABEL_13:
        *a2 += v7;
        sub_2977FD800(a1);
        v11 = 49;
        return sub_2977FCD50(a1, &v11);
      }
    }

    else if (v8 < v7)
    {
      while (*sub_2977FD108(a1, v8) == 48)
      {
        ++v8;
        if (!--a3)
        {
          v8 = v7;
          break;
        }
      }
    }

    *a2 += v8;
    v10 = sub_2977FD108(a1, 0);
    sub_2977FD108(a1, v8);

    return sub_2977FD794(a1, v10);
  }

  return result;
}

void sub_2977FD138(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 11;
  }

  else
  {
    v3 = 3;
  }

  *(a1 + 18) = v3 | *(a1 + 18) & 0xF0;
  *(a1 + 16) = *(*a1 + 2) - 1;
  v4 = sub_2977FA3A0(a1);
  v5 = sub_2977FA204(a1);

  sub_2978020B4(v4, 0, v5);
}

uint64_t sub_2977FD1D4(uint64_t a1)
{
  if (sub_2977FD20C(a1))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      j__free(v2);
    }
  }

  return a1;
}

uint64_t sub_2977FD238(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  if (sub_2977FD1C4(a1))
  {
    *(a1 + 8) = a3;
  }

  else
  {
    sub_2977FE428(a1, a2, a3, a4);
  }

  sub_2977FD2A4(a1);
  return a1;
}

uint64_t sub_2977FD2A4(uint64_t a1)
{
  if ((*a1 & 0x3F) != 0)
  {
    v2 = 0xFFFFFFFFFFFFFFFFLL >> -(*a1 & 0x3F);
    if (sub_2977FD1C4(a1))
    {
      v3 = (a1 + 8);
    }

    else
    {
      v4 = *(a1 + 8);
      v3 = (v4 + 8 * (sub_2977FA554(a1) - 1));
    }

    *v3 &= v2;
  }

  return a1;
}

uint64_t sub_2977FD31C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_2977FD1C4(a1))
  {
    v6 = *a1;
    if (v6 <= a2)
    {
      v8 = a3;
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 1) << a2;
      v8 = a3;
    }

    return sub_2977FB51C(v8, v6, v7, 0);
  }

  else
  {

    return sub_2978001AC(a1, a2, a3);
  }
}

uint64_t sub_2977FD3B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  if (sub_2977FD1C4(a1))
  {
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    sub_2977FE4DC(a1, a2);
  }

  return a1;
}

BOOL sub_2977FD40C(_DWORD *a1, unsigned int a2)
{
  v4 = sub_2977FD470(a2);
  v5 = sub_2977FD1C4(a1);
  v6 = (a1 + 2);
  if (!v5)
  {
    v7 = *v6;
    v6 = (v7 + 8 * sub_2977FD490(a2));
  }

  return (*v6 & v4) != 0;
}

uint64_t sub_2977FD4A0(const void *a1, const void *a2, size_t a3)
{
  if (a3)
  {
    return memcmp(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void *sub_2977FD4B0(void *a1, char *__s)
{
  *a1 = __s;
  a1[1] = strlen(__s);
  return a1;
}

void *sub_2977FD4E4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

void *sub_2977FD4EC(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 2;
  return result;
}

uint64_t sub_2977FD4F8(const void **a1, char *a2, char *a3)
{
  v6 = sub_2977FD5AC(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > v7 - sub_2977FB7B8(a1))
  {
    v8 = sub_2977FD0D4(a1);
    sub_2977FD5B8(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_2977FD5C0(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_2977FD5FC(char *a1, char *a2, _BYTE *a3)
{
  v7 = a3;
  v8 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      v5 = *v4++;
      *v7++ = v5;
      v8 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v9, &v8, &v7);
  return v9;
}

void *sub_2977FD684(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t sub_2977FD6C0(uint64_t a1)
{
  if (sub_2977FD1C4(a1))
  {
    v2 = *a1;
    return v2 + sub_2977FD720(*(a1 + 8), 2) - 64;
  }

  else
  {

    return sub_2977FF444(a1);
  }
}

uint64_t sub_2977FD720(unint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = __clz(a1);
  if (v2)
  {
    return 64;
  }

  else
  {
    return v3;
  }
}

BOOL sub_2977FD738(uint64_t a1, uint64_t a2)
{
  if (sub_2977FD1C4(a1))
  {
    return *(a1 + 8) == a2;
  }

  return sub_2977FF138(a1, a2);
}

uint64_t sub_2977FD794(uint64_t a1, uint64_t a2)
{
  sub_2977FB7B8(a1);
  v4 = sub_2977FD844();
  v5 = sub_2977FB7B8(a1);
  nullsub_1(v4, v5);
  sub_2977FD5DC(a1, v4);
  return a2;
}

uint64_t sub_2977FD800(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  result = nullsub_1(v2, v3);
  a1[1] = *a1;
  return result;
}

uint64_t sub_2977FD86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_2977FD944(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2977FD8FC(uint64_t a1, uint64_t a2)
{
  v6 = j_j_nullsub_1(a1, a2);
  v5 = j_j_nullsub_1(a2, v3);
  return sub_2977FD958(&v6, &v5);
}

uint64_t sub_2977FD990(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_2977FD9E8(a3, a1, a2 - a1);
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_2977FD9E8(void *__dst, const void *__src, size_t __len)
{
  if (__len)
  {
    return memmove(__dst, __src, __len);
  }

  return __dst;
}

void *sub_2977FDA2C(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  nullsub_1(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

_DWORD *sub_2977FDA94(_DWORD *a1, _DWORD *a2)
{
  if (sub_2977FDAD4(&v5, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void *sub_2977FDAE8(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a2;
  result[2] = a2 + a3;
  return result;
}

uint64_t sub_2977FDAF8()
{
  if (*off_2A1A900D8())
  {
    v0 = off_2A1A900F0();
    *v0 = v1;
    *v2 = 0;
  }

  else
  {
    v0 = off_2A1A900F0();
  }

  return *v0;
}

uint64_t *sub_2977FDB7C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a2;
  a3[2] = sub_2977FDD88(a2, 0xB492B66FBE98F273);
  a3[3] = sub_2977FDDB8(a2 ^ 0xB492B66FBE98F273, 49);
  a3[4] = 0xB492B66FBE98F273 * a2;
  v6 = sub_2977FDDC0(a2);
  a3[5] = v6;
  a3[6] = sub_2977FDD88(0xB492B66FBE98F273 * a2, v6);

  return sub_2977FDC18(a3, a1);
}

uint64_t *sub_2977FDC18(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1] + *a1;
  v5 = a1 + 3;
  v6 = a1[3];
  v7 = sub_2977FB720(a2 + 8);
  *a1 = 0xB492B66FBE98F273 * sub_2977FDDB8(v4 + v6 + v7, 37);
  v8 = a1[4] + a1[1];
  v9 = sub_2977FB720(a2 + 48);
  v10 = sub_2977FDDB8(v8 + v9, 42);
  *a1 ^= a1[6];
  a1[1] = 0xB492B66FBE98F273 * v10;
  v11 = *v5;
  a1[1] += sub_2977FB720(a2 + 40) + v11;
  a1[2] = 0xB492B66FBE98F273 * sub_2977FDDB8(a1[5] + a1[2], 33);
  *v5 = 0xB492B66FBE98F273 * a1[4];
  a1[4] = a1[5] + *a1;
  sub_2977FDDC8(a2, v5, a1 + 4);
  a1[5] = a1[6] + a1[2];
  v12 = a1[1];
  a1[6] = sub_2977FB720(a2 + 16) + v12;
  sub_2977FDDC8(a2 + 32, a1 + 5, a1 + 6);

  return sub_2977FDE84(a1 + 2, a1);
}

uint64_t sub_2977FDDC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a2 += sub_2977FB720(a1);
  v6 = sub_2977FB720(a1 + 24);
  *a3 = sub_2977FDDB8(*a3 + v6 + *a2, 21);
  v7 = *a2;
  v8 = sub_2977FB720(a1 + 8);
  v9 = sub_2977FB720(a1 + 16) + v8 + *a2;
  *a2 = v9;
  result = sub_2977FDDB8(v9, 44);
  *a3 += result + v7;
  *a2 += v6;
  return result;
}

uint64_t *sub_2977FDE84(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

unint64_t sub_2977FDE98(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 <= 4)
  {
    return sub_2977FDF94(a1, a2, a3);
  }

  if (a2 - 9 <= 7)
  {
    return sub_2977FDFF4(a1, a2, a3);
  }

  if (a2 - 17 <= 0xF)
  {
    return sub_2977FE058(a1, a2, a3);
  }

  if (a2 >= 0x21)
  {
    return sub_2977FE168(a1, a2, a3);
  }

  if (a2)
  {
    return sub_2977FE320(a1, a2, a3);
  }

  return a3 ^ 0x9AE16A3B2F90404FLL;
}

unint64_t sub_2977FDEF8(void *a1, unint64_t a2)
{
  v4 = sub_2977FDD88(a1[3], a1[5]);
  v5 = v4 - 0x4B6D499041670D8DLL * sub_2977FDDC0(a1[1]);
  v6 = a1[2];
  v7 = sub_2977FDD88(a1[4], a1[6]);
  v8 = v7 - 0x4B6D499041670D8DLL * sub_2977FDDC0(a2) + *a1;

  return sub_2977FDD88(v5 + v6, v8);
}

unint64_t sub_2977FDF94(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v6 = a2 + 8 * sub_2977FB5F0(a1);
  v7 = sub_2977FB5F0((a1 + a2 - 4)) ^ a3;

  return sub_2977FDD88(v6, v7);
}

unint64_t sub_2977FDFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FB720(a1);
  v7 = sub_2977FB720(a1 + a2 - 8);
  v8 = sub_2977FDDB8(v7 + a2, a2);
  return sub_2977FDD88(v6 ^ a3, v8) ^ v7;
}

unint64_t sub_2977FE058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xB492B66FBE98F273 * sub_2977FB720(a1);
  v7 = sub_2977FB720(a1 + 8);
  v8 = a1 + a2;
  v9 = 0x9AE16A3B2F90404FLL * sub_2977FB720(v8 - 8);
  v10 = sub_2977FB720(v8 - 16);
  v11 = sub_2977FDDB8(v6 - v7, 43);
  v12 = sub_2977FDDB8(v9 ^ a3, 30);
  v13 = sub_2977FDDB8(v7 ^ 0xC949D7C7509E6557, 20);

  return sub_2977FDD88(v11 - 0x3C5A37A36834CED9 * v10 + v12, a3 + a2 + v6 - v9 + v13);
}

unint64_t sub_2977FE168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FB720(a1 + 24);
  v6 = sub_2977FB720(a1);
  v7 = a1 + a2;
  v8 = a1 + a2 - 16;
  v9 = v6 - 0x3C5A37A36834CED9 * (sub_2977FB720(v8) + a2);
  v10 = sub_2977FDDB8(v9 + v5, 52);
  v11 = sub_2977FDDB8(v9, 37);
  v12 = v9 + sub_2977FB720(a1 + 8);
  v13 = sub_2977FDDB8(v12, 7);
  v14 = sub_2977FB720(a1 + 16) + v12;
  v15 = v11 + v10 + v13 + sub_2977FDDB8(v14, 31);
  v16 = sub_2977FB720(a1 + 16);
  v17 = sub_2977FB720(v7 - 32) + v16;
  v18 = sub_2977FB720(v7 - 8);
  v19 = sub_2977FDDB8(v17 + v18, 52);
  v20 = sub_2977FDDB8(v17, 37);
  v21 = sub_2977FB720(v7 - 24) + v17;
  v22 = sub_2977FDDB8(v21, 7);
  v23 = sub_2977FB720(v8) + v21;
  v24 = sub_2977FDDB8(v23, 31);
  v25 = sub_2977FDDC0(0x9AE16A3B2F90404FLL * (v14 + v5 + v19 + v20 + v22 + v24) - 0x3C5A37A36834CED9 * (v18 + v23 + v15));
  return 0x9AE16A3B2F90404FLL * sub_2977FDDC0(((0xC3A5C85C97CB3127 * v25) ^ a3) + v15);
}

uint64_t sub_2977FE398(const void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 - (a2 - a1));
  v5 = a2;
  sub_2977FD9E8(v4, a1, a2 - a1);
  return sub_2977FD958(&v5, &v4);
}

char *sub_2977FE3EC(char *result, char *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void *sub_2977FE428(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_2977FA554(a1);
  result = sub_2977FE4A4(v7);
  *(a1 + 8) = result;
  *result = a3;
  if (a3 < 0)
  {
    if (a4)
    {
      result = sub_2977FA554(a1);
      if (result >= 2)
      {
        v9 = 1;
        do
        {
          *(*(a1 + 8) + 8 * v9++) = -1;
          result = sub_2977FA554(a1);
        }

        while (v9 < result);
      }
    }
  }

  return result;
}

void *sub_2977FE4A4(unsigned int a1)
{
  v1 = 8 * a1;
  v2 = sub_2977FA198(v1);
  bzero(v2, v1);
  return v2;
}

void *sub_2977FE4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FA554(a1);
  v5 = sub_2977FE540(v4);
  *(a1 + 8) = v5;
  v6 = *(a2 + 8);
  v7 = 8 * sub_2977FA554(a1);

  return memcpy(v5, v6, v7);
}

uint64_t sub_2977FE548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a2;
  v11[1] = a3;
  if (sub_2977FD1C4(a1))
  {
    *(a1 + 8) = *sub_2977FE5F8(v11, 0);
  }

  else
  {
    v4 = sub_2977FA554(a1);
    *(a1 + 8) = sub_2977FE4A4(v4);
    v10 = sub_2977FB7B8(v11);
    v9 = sub_2977FA554(a1);
    v5 = *sub_2977FA590(&v10, &v9);
    v6 = *(a1 + 8);
    v7 = sub_2977FB720(v11);
    memcpy(v6, v7, (8 * v5));
  }

  return sub_2977FD2A4(a1);
}

uint64_t sub_2977FE604(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  sub_2977FE548(a1, a3, a4);
  return a1;
}

uint64_t sub_2977FE640(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a1;
  if (v4 == sub_2977FB5F0(a2))
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    v7 = sub_2977FA554(a1);
    memcpy(v5, v6, (8 * v7));
    return a1;
  }

  if (sub_2977FD1C4(a1))
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v11 = sub_2977FA554(a1);
    if (v11 == sub_2977FA554(a2))
    {
      v10 = *(a1 + 8);
      goto LABEL_10;
    }

    v14 = sub_2977FD1C4(a2);
    v15 = *(a1 + 8);
    if (v14)
    {
      if (v15)
      {
        j__free(v15);
      }

      *(a1 + 8) = *(a2 + 8);
      goto LABEL_11;
    }

    if (v15)
    {
      j__free(v15);
    }
  }

  v9 = sub_2977FA554(a2);
  v10 = sub_2977FE540(v9);
  *(a1 + 8) = v10;
LABEL_10:
  v12 = *(a2 + 8);
  v13 = sub_2977FA554(a2);
  memcpy(v10, v12, (8 * v13));
LABEL_11:
  *a1 = *a2;

  return sub_2977FD2A4(a1);
}

uint64_t sub_2977FE770(uint64_t a1, uint64_t a2)
{
  if (sub_2977FD1C4(a1))
  {
    *(a1 + 8) = a2;
  }

  else
  {
    **(a1 + 8) = a2;
    v4 = *(a1 + 8);
    v5 = sub_2977FA554(a1);
    bzero((v4 + 8), (8 * v5 - 8));
  }

  return sub_2977FD2A4(a1);
}

uint64_t sub_2977FE7DC(uint64_t a1)
{
  if (sub_2977FD1C4(a1))
  {
    ++*(a1 + 8);
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = sub_2977FA554(a1);
    sub_2977FE844(v2, v2, v3);
  }

  return sub_2977FD2A4(a1);
}

void *sub_2977FE844(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3 - 1;
    do
    {
      v4 = *a2++;
      *result++ = v4 + 1;
    }

    while (v4 == -1 && v3-- != 0);
  }

  return result;
}

uint64_t sub_2977FE870(uint64_t a1, uint64_t a2)
{
  if (sub_2977FD1C4(a1))
  {
    *(a1 + 8) += *(a2 + 8);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    v6 = sub_2977FA554(a1);
    sub_2977FE8F0(v4, v4, v5, v6);
  }

  return sub_2977FD2A4(a1);
}

unint64_t *sub_2977FE8F0(unint64_t *result, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  if (a4)
  {
    v6 = result;
    v7 = 0;
    v8 = a4;
    do
    {
      result = sub_297802578(a2, a3);
      v10 = *a2++;
      v9 = v10;
      v11 = *a3++;
      v12 = *result;
      v13 = v9 + (v7 & 1) + v11;
      *v6 = v13;
      if (v13 >= v12)
      {
        v7 &= v13 == v12;
      }

      else
      {
        v7 = 1;
      }

      ++v6;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *sub_2977FE984(void *result, unint64_t *a2, unint64_t *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = a4;
    do
    {
      v7 = *a2++;
      v6 = v7;
      if (v4)
      {
        v8 = *a3;
        v4 = *a3 > v6 - 1 || v6 == 0;
        --v6;
      }

      else
      {
        v8 = *a3;
        v4 = *a3 > v6;
      }

      *result++ = v6 - v8;
      ++a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2977FE9D8(uint64_t a1, uint64_t a2)
{
  if (sub_2977FD1C4(a1))
  {
    *(a1 + 8) *= *(a2 + 8);
    sub_2977FD2A4(a1);
  }

  else
  {
    v4 = sub_2977FD698(a1);
    if (v4)
    {
      v5 = sub_2977FD490(v4 - 1);
      v6 = v5 + 1;
      if (v5 != -1)
      {
        v7 = sub_2977FD698(a2);
        if (v7 && (v8 = sub_2977FD490(v7 - 1), v9 = v8 + 1, v8 != -1))
        {
          v10 = v9 + v6;
          v11 = sub_2977FE540(v9 + v6);
          sub_2977FEB3C(v11, *(a1 + 8), v6, *(a2 + 8), v9);
          sub_2977FEAE0(a1);
          if (v9 + v6 >= sub_2977FA554(a1))
          {
            v10 = sub_2977FA554(a1);
          }

          memcpy(*(a1 + 8), v11, 8 * v10);
          sub_2977FD2A4(a1);
          j__free(v11);
        }

        else
        {
          sub_2977FEAE0(a1);
        }
      }
    }
  }

  return a1;
}

void sub_2977FEAE0(uint64_t a1)
{
  if (sub_2977FD1C4(a1))
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = 8 * sub_2977FA554(a1);

    bzero(v2, v3);
  }
}

unint64_t sub_2977FEB3C(unint64_t *a1, unint64_t *a2, unsigned int a3, uint64_t *a4, unsigned int a5)
{
  result = sub_2978025D0(a1, a2, a3, *a4);
  a1[a3] = result;
  if (a5 >= 2)
  {
    v11 = 1;
    do
    {
      v12 = 0;
      if (a3)
      {
        v13 = a4[v11];
        v14 = HIDWORD(a4[v11]);
        v15 = a3;
        v16 = a2;
        v17 = v11;
        do
        {
          v18 = *v16++;
          v19 = v18;
          result = HIDWORD(v18);
          v20 = v18 * v13;
          v21 = __CFADD__(v20, v12);
          v22 = v20 + v12;
          v23 = v21;
          if (v21)
          {
            v24 = 0x100000000;
          }

          else
          {
            v24 = 0;
          }

          v25 = HIDWORD(v22) + result * v13 + v24;
          v26 = v25 != 0;
          if (v25)
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

          v28 = v19 * v14;
          v29 = v25 + v28;
          v30 = v22 | (v29 << 32);
          v31 = a1[v17];
          if ((v29 == 0) & (v26 | v23) | v27 & 1)
          {
            v32 = 0x100000000;
          }

          else
          {
            v32 = 0;
          }

          a1[v17] = v30 + v31;
          v12 = v32 + __CFADD__(v30, v31) + HIDWORD(v28) + result * v14 + HIDWORD(v29);
          ++v17;
          --v15;
        }

        while (v15);
      }

      a1[v11++ + a3] = v12;
    }

    while (v11 != a5);
  }

  return result;
}

uint64_t sub_2977FEC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2977FA554(a1);
  v7 = sub_2977FE540(v6);
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 8);
    v10 = *(a2 + 8);
    v11 = v6;
    v12 = v7;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v15 = *v10++;
      *v12++ = v15 & v13;
      --v11;
    }

    while (v11);
  }

  v16 = sub_2977FB5F0(a1);

  return sub_2977FECEC(a3, v8, v16);
}

uint64_t sub_2977FECF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2977FA554(a1);
  v7 = sub_2977FE540(v6);
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 8);
    v10 = *(a2 + 8);
    v11 = v6;
    v12 = v7;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v15 = *v10++;
      *v12++ = v15 | v13;
      --v11;
    }

    while (v11);
  }

  v16 = sub_2977FB5F0(a1);

  return sub_2977FECEC(a3, v8, v16);
}

uint64_t sub_2977FED88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2977FA554(a1);
  v7 = sub_2977FE540(v6);
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 8);
    v10 = *(a2 + 8);
    v11 = v6;
    v12 = v7;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v15 = *v10++;
      *v12++ = v15 ^ v13;
      --v11;
    }

    while (v11);
  }

  v16 = sub_2977FB5F0(a1);
  sub_2977FECEC(v19, v8, v16);
  v17 = sub_2977FD2A4(v19);
  sub_2977FB630(a3, v17);
  return sub_2977FAA04(v19);
}

uint64_t sub_2977FEE38@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_2977FD1C4(a1))
  {
    v6 = *a1;
    v7 = *(a2 + 8) * *(a1 + 1);

    return sub_2977FB51C(a3, v6, v7, 0);
  }

  else
  {
    v9 = sub_2977FB630(a3, a1);

    return sub_2977FE9D8(v9, a2);
  }
}

uint64_t sub_2977FEEC8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_2977FD1C4(a1))
  {
    v6 = *a1;
    v7 = *(a2 + 8) + *(a1 + 1);

    return sub_2977FB51C(a3, v6, v7, 0);
  }

  else
  {
    sub_2977FB51C(v14, *a1, 0, 0);
    v9 = v14[1];
    v10 = *(a1 + 1);
    v11 = *(a2 + 8);
    v12 = sub_2977FA554(a1);
    sub_2977FE8F0(v9, v10, v11, v12);
    v13 = sub_2977FD2A4(v14);
    sub_2977FB630(a3, v13);
    return sub_2977FAA04(v14);
  }
}

uint64_t sub_2977FEFA8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_2977FD1C4(a1))
  {
    v6 = *a1;
    v7 = *(a1 + 1) - *(a2 + 8);

    return sub_2977FB51C(a3, v6, v7, 0);
  }

  else
  {
    sub_2977FB51C(v14, *a1, 0, 0);
    v9 = v14[1];
    v10 = *(a1 + 1);
    v11 = *(a2 + 8);
    v12 = sub_2977FA554(a1);
    sub_2977FE984(v9, v10, v11, v12);
    v13 = sub_2977FD2A4(v14);
    sub_2977FB630(a3, v13);
    return sub_2977FAA04(v14);
  }
}

uint64_t sub_2977FF088(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FD698(a1);
  if (v4 != sub_2977FD698(a2))
  {
    return 0;
  }

  if (v4 <= 0x40)
  {
    return **(a1 + 8) == **(a2 + 8);
  }

  v6 = sub_2977FD490(v4 - 1);
  if (v6 < 0)
  {
    return 1;
  }

  v7 = v6;
  do
  {
    v8 = *(*(a1 + 8) + 8 * v7);
    v9 = *(*(a2 + 8) + 8 * v7);
    result = v8 == v9;
    v10 = __OFSUB__(v7--, 1);
  }

  while (v7 < 0 == v10 && v8 == v9);
  return result;
}

uint64_t sub_2977FF180(uint64_t a1, uint64_t a2)
{
  if (sub_2977FD1C4(a1))
  {
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    return v4 < v5;
  }

  v7 = sub_2977FD698(a1);
  v17 = v7;
  v8 = sub_2977FD698(a2);
  v16 = v8;
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 < v7)
  {
    return 0;
  }

  if (v8 <= 0x40)
  {
    v4 = **(a1 + 8);
    v5 = **(a2 + 8);
    return v4 < v5;
  }

  v9 = sub_2977FF288(&v17, &v16);
  v10 = sub_2977FD490(*v9 - 1);
  if (v10 < 0)
  {
    return 0;
  }

  v11 = *(a2 + 8);
  while (1)
  {
    v12 = *(*(a1 + 8) + 8 * v10);
    v13 = *(v11 + 8 * v10);
    if (v12 > v13)
    {
      break;
    }

    if (v12 < v13)
    {
      v15 = 1;
      LODWORD(v11) = 1;
      return v15 & v11;
    }

    v14 = __OFSUB__(v10--, 1);
    if (v10 < 0 != v14)
    {
      v15 = 0;
      return v15 & v11;
    }
  }

  LODWORD(v11) = 0;
  v15 = 1;
  return v15 & v11;
}

BOOL sub_2977FF28C(uint64_t a1, uint64_t a2)
{
  if (!sub_2977FD1C4(a1))
  {
    sub_2977FB630(v10, a1);
    sub_2977FB630(v9, a2);
    v4 = sub_2977FB634(a1);
    v5 = sub_2977FB634(v9);
    v6 = v5;
    if (v4)
    {
      sub_2977FF380(v10);
      sub_2977FE7DC(v10);
      if (!v6)
      {
        v4 = 1;
LABEL_11:
        sub_2977FAA04(v9);
        sub_2977FAA04(v10);
        return v4;
      }
    }

    else if (!v5)
    {
      v7 = sub_2977FF180(v10, v9);
      goto LABEL_10;
    }

    sub_2977FF380(v9);
    sub_2977FE7DC(v9);
    if (!v4)
    {
      goto LABEL_11;
    }

    v7 = sub_2977FF400(v10, v9);
LABEL_10:
    v4 = v7;
    goto LABEL_11;
  }

  return *(a1 + 8) << -*a1 < *(a2 + 8) << -*a1;
}

uint64_t sub_2977FF380(uint64_t a1)
{
  if (sub_2977FD1C4(a1))
  {
    *(a1 + 8) = ~*(a1 + 8);
  }

  else if (sub_2977FA554(a1))
  {
    v2 = 0;
    do
    {
      *(*(a1 + 8) + 8 * v2) = ~*(*(a1 + 8) + 8 * v2);
      ++v2;
    }

    while (v2 < sub_2977FA554(a1));
  }

  return sub_2977FD2A4(a1);
}

uint64_t sub_2977FF400(uint64_t a1, uint64_t a2)
{
  if (sub_2977FF180(a1, a2))
  {
    return 0;
  }

  else
  {
    return sub_297802670(a1, a2) ^ 1;
  }
}

uint64_t sub_2977FF444(uint64_t a1)
{
  v2 = *a1 & 0x3F;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = ~(-1 << *a1);
  }

  else
  {
    v4 = -1;
  }

  v5 = sub_2977FA554(a1);
  v6 = *(a1 + 8);
  if ((v4 & *(v6 + 8 * (v5 - 1))) != 0)
  {
    return v3 + sub_2977FD720(v4 & *(v6 + 8 * (v5 - 1)), 2) - 64;
  }

  if (v5 != 1)
  {
    v8 = (v3 + (v5 << 6) - 64);
    v9 = v5 - 2;
    while (1)
    {
      v10 = *(v6 + 8 * v9);
      if (v10)
      {
        break;
      }

      LODWORD(v3) = v3 + 64;
      if (!v9--)
      {
        return v8;
      }
    }

    return sub_2977FD720(v10, 2) + v3;
  }

  return v3;
}

uint64_t sub_2977FF4FC(uint64_t a1)
{
  if (sub_2977FD1C4(a1))
  {
    v2 = -*a1;
    v3 = *(a1 + 8) << -*a1;

    return sub_2977FF5F4(v3);
  }

  else
  {
    if ((*a1 & 0x3F) != 0)
    {
      v5 = *a1 & 0x3F;
    }

    else
    {
      v5 = 64;
    }

    if ((*a1 & 0x3F) != 0)
    {
      v6 = 64 - (*a1 & 0x3F);
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_2977FA554(a1);
    v8 = v7 - 1;
    result = sub_2977FF5F4(*(*(a1 + 8) + 8 * (v7 - 1)) << v6);
    if (result == v5)
    {
      if (v7 - 2 < 0)
      {
        return v5;
      }

      else
      {
        result = (v5 + (v7 << 6) - 64);
        while (1)
        {
          --v8;
          v9 = *(a1 + 8);
          if (*(v9 + 8 * v8) != -1)
          {
            break;
          }

          LODWORD(v5) = v5 + 64;
          if (v8 <= 0)
          {
            return result;
          }
        }

        return sub_2977FF5F4(*(v9 + 8 * v8)) + v5;
      }
    }
  }

  return result;
}

uint64_t sub_2977FF614(uint64_t a1)
{
  if (sub_2977FD1C4(a1))
  {
    v7 = sub_2977FF6E4(*(a1 + 8), 2);
    v2 = &v7;
  }

  else
  {
    if (sub_2977FA554(a1))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if (*(*(a1 + 8) + 8 * v3))
        {
          break;
        }

        v4 += 64;
        ++v3;
      }

      while (v3 < sub_2977FA554(a1));
    }

    else
    {
      v4 = 0;
      LODWORD(v3) = 0;
    }

    v6 = v4;
    if (v3 < sub_2977FA554(a1))
    {
      v6 = v4 + sub_2977FF6E4(*(*(a1 + 8) + 8 * v3), 2);
    }

    v2 = &v6;
  }

  return *sub_2977FA590(v2, a1);
}

uint64_t sub_2977FF6E4(unint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = __clz(__rbit64(a1));
  if (v2)
  {
    return 64;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2977FF700(uint64_t a1)
{
  if (!sub_2977FA554(a1))
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  do
  {
    v3 = sub_2977FF768(*(*(a1 + 8) + 8 * v2++)) + v3;
  }

  while (v2 < sub_2977FA554(a1));
  return v3;
}

uint64_t sub_2977FF768(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

uint64_t sub_2977FF780(uint64_t result, uint64_t a2, int a3, char a4)
{
  if (a3 - 1 >= 0)
  {
    v4 = 0;
    v5 = 8 * (a3 - 1);
    do
    {
      v6 = *(a2 + v5);
      *(result + v5) = (v6 >> a4) | v4;
      v4 = v6 << (64 - a4);
      v5 -= 8;
    }

    while (v5 != -8);
  }

  return result;
}

BOOL sub_2977FF7C0(uint64_t a1)
{
  if (sub_2977FD1C4(a1))
  {
    return *(a1 + 8) == 0;
  }

  if (!sub_2977FA554(a1))
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = *(*(a1 + 8) + 8 * v3);
    v2 = v4 == 0;
    if (v4)
    {
      break;
    }

    ++v3;
  }

  while (v3 != sub_2977FA554(a1));
  return v2;
}

uint64_t sub_2977FF844(uint64_t a1, uint64_t a2)
{
  if (sub_2977FD1C4(a1) && sub_2977FD1C4(a2))
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;

    return sub_2977FD2A4(a1);
  }

  else
  {

    return sub_2977FE640(a1, a2);
  }
}

uint64_t sub_2977FF8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 > 0x40)
  {
    v8 = sub_2977FD1B4(a2);
    v9 = sub_2977FE540(v8);
    result = sub_2977FECEC(a3, v9, a2);
    v10 = 0;
    do
    {
      *(*(a3 + 8) + v10) = *(*(a1 + 8) + v10);
      v10 += 8;
    }

    while (8 * (a2 >> 6) != v10);
    v11 = -a2 & 0x3F;
    if (v11)
    {
      *(*(a3 + 8) + 8 * (a2 >> 6)) = *(*(a1 + 8) + 8 * (a2 >> 6)) & (0xFFFFFFFFFFFFFFFFLL >> v11);
    }
  }

  else
  {
    v6 = *sub_2977FA55C(a1);

    return sub_2977FB51C(a3, a2, v6, 0);
  }

  return result;
}

uint64_t sub_2977FF9A0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (a2 > 0x40)
  {
    v8 = sub_2977FD1B4(a2);
    v9 = sub_2977FE540(v8);
    result = sub_2977FECEC(a3, v9, v3);
    v10 = *a1;
    if (*a1 >= 0x40)
    {
      v11 = 0;
      do
      {
        result = sub_2977FA55C(a1);
        v13 = *(result + 8 * v11);
        *(*(a3 + 8) + 8 * v11++) = v13;
        v10 = *a1;
      }

      while (v11 != *a1 >> 6);
      v12 = v13 >> 63;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v14 = -v10 & 0x3F;
    if (v14)
    {
      result = sub_2977FA55C(a1);
      v12 = (*(result + 8 * v11) << v14) >> v14;
    }

    if (v11 != v3 >> 6)
    {
      do
      {
        *(*(a3 + 8) + 8 * v11) = v12;
        v12 >>= 63;
        ++v11;
      }

      while (v3 >> 6 != v11);
      v11 = v3 >> 6;
    }

    v15 = -v3 & 0x3F;
    if (v15)
    {
      *(*(a3 + 8) + 8 * v11) = v12 & (0xFFFFFFFFFFFFFFFFLL >> v15);
    }
  }

  else
  {
    v6 = ((*(a1 + 1) << -*a1) >> (a2 - *a1)) >> -a2;

    return sub_2977FB51C(a3, a2, v6, 0);
  }

  return result;
}

void sub_2977FFAF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (a2 > 0x40)
  {
    v7 = sub_2977FD1B4(a2);
    v8 = sub_2977FE540(v7);
    sub_2977FECEC(a3, v8, v3);
    v9 = 0;
    if (sub_2977FA554(a1))
    {
      do
      {
        *(*(a3 + 8) + 8 * v9) = *&sub_2977FA55C(a1)[2 * v9];
        ++v9;
      }

      while (v9 != sub_2977FA554(a1));
    }

    v10 = (*(a3 + 8) + 8 * v9);
    v11 = 8 * (sub_2977FA554(a3) - v9);

    bzero(v10, v11);
  }

  else
  {
    v6 = *(a1 + 8);

    sub_2977FB51C(a3, a2, v6, 0);
  }
}

uint64_t sub_2977FFBE0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = sub_2977FD1C4(a1);
    v7 = *a1;
    if (v6)
    {
      if (v7 != a2)
      {
        v11 = (*(a1 + 1) << -v7) >> -v7 >> a2;
        v8 = a3;
LABEL_29:
        v12 = 0;
        goto LABEL_30;
      }

      v8 = a3;
      v7 = a2;
LABEL_28:
      v11 = 0;
      goto LABEL_29;
    }

    if (v7 == a2)
    {
      v10 = sub_2977FB634(a1);
      v7 = *a1;
      if (v10)
      {
        v8 = a3;
        v11 = -1;
        v12 = 1;
LABEL_30:

        return sub_2977FB51C(v8, v7, v11, v12);
      }

      v8 = a3;
      goto LABEL_28;
    }

    v13 = sub_2977FA554(a1);
    v14 = sub_2977FA198(8 * v13);
    v15 = a2 & 0x3F;
    v16 = sub_2977FA554(a1) - 1;
    v17 = v16 - (a2 >> 6);
    v18 = sub_2977FD498(*a1);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = 64;
    }

    if ((a2 & 0x3F) != 0)
    {
      v20 = a2 >> 6;
      v21 = *(a1 + 1);
      if (v16 != v20)
      {
        if (v17 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v17;
        }

        v23 = v20;
        v24 = v14;
        do
        {
          v25 = *(v21 + 8 * v23++);
          *v24++ = (*(v21 + 8 * v23) << (64 - v15)) | (v25 >> v15);
          --v22;
        }

        while (v22);
      }

      v26 = *(v21 + 8 * v16) >> v15;
      *(v14 + 8 * v17) = v26;
      if (sub_2977FB634(a1))
      {
        v27 = v19 - v15;
        if (v19 >= v15)
        {
          v28 = v26 | (-1 << v27);
        }

        else
        {
          if (v16 != v20)
          {
            *(v14 + 8 * (v17 - 1)) |= -1 << v27;
          }

          v28 = -1;
        }

        *(v14 + 8 * v17) = v28;
      }
    }

    else
    {
      v29 = 0;
      v30 = *(a1 + 1);
      do
      {
        *(v14 + 8 * v29) = *(v30 + 8 * ((a2 >> 6) + v29));
      }

      while (v29++ < v17);
      if (sub_2977FB634(a1) && v19 < 0x40)
      {
        *(v14 + 8 * v17) |= -1 << v19;
      }
    }

    v32 = sub_2977FB634(a1);
    v33 = (v17 + 1);
    if (v33 < sub_2977FA554(a1))
    {
      v34 = v32 << 63 >> 63;
      do
      {
        *(v14 + 8 * v33++) = v34;
      }

      while (v33 < sub_2977FA554(a1));
    }

    sub_2977FECEC(v36, v14, *a1);
    v35 = sub_2977FD2A4(v36);
    sub_2977FB630(a3, v35);
    return sub_2977FAA04(v36);
  }

  else
  {

    return sub_2977FB630(a3, a1);
  }
}

uint64_t sub_2977FFEB0(int *a1, unint64_t a2)
{
  if (sub_2977FD698(a1) > 0x40 || sub_2977FCF34(a1) > a2)
  {
    return a2;
  }

  return sub_2977FCF34(a1);
}

uint64_t sub_2977FFF14@<X0>(unsigned int *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2977FD1C4(a1);
  v7 = *a1;
  if (v6)
  {
    if (v7 > a2)
    {
      v8 = *(a1 + 1) >> a2;
      v9 = a3;
LABEL_9:

      return sub_2977FB51C(v9, v7, v8, 0);
    }

LABEL_8:
    v9 = a3;
    v8 = 0;
    goto LABEL_9;
  }

  if (v7 <= a2)
  {
    goto LABEL_8;
  }

  if (a2)
  {
    v10 = sub_2977FA554(a1);
    v11 = sub_2977FA198(8 * v10);
    if (a2 > 0x3F)
    {
      v15 = a2 & 0x3F;
      v16 = a2 >> 6;
      v17 = sub_2977FA554(a1);
      if ((a2 & 0x3F) != 0)
      {
        v18 = v17 - v16;
        v19 = *(a1 + 1);
        v20 = (v18 - 1);
        if (v18 == 1)
        {
          v20 = 0;
        }

        else
        {
          v21 = (v18 - 1);
          v22 = v11;
          do
          {
            v23 = *(v19 + 8 * v16++);
            *v22++ = (*(v19 + 8 * v16) << (64 - v15)) | (v23 >> v15);
            --v21;
          }

          while (v21);
        }

        *(v11 + 8 * v20) = *(v19 + 8 * (v17 - 1)) >> v15;
        if (v18 < sub_2977FA554(a1))
        {
          do
          {
            *(v11 + 8 * v18++) = 0;
          }

          while (v18 < sub_2977FA554(a1));
        }
      }

      else
      {
        if (v17 != v16)
        {
          v24 = 0;
          v25 = a2 >> 6;
          do
          {
            *(v11 + 8 * v24) = *(*(a1 + 1) + 8 * (v25 + v24));
            ++v24;
          }

          while (v24 < sub_2977FA554(a1) - v16);
        }

        v26 = sub_2977FA554(a1) - v16;
        if (v26 < sub_2977FA554(a1))
        {
          do
          {
            *(v11 + 8 * v26++) = 0;
          }

          while (v26 < sub_2977FA554(a1));
        }
      }
    }

    else
    {
      v12 = *(a1 + 1);
      v13 = sub_2977FA554(a1);
      sub_2977FF780(v11, v12, v13, a2);
    }

    sub_2977FECEC(v28, v11, *a1);
    v27 = sub_2977FD2A4(v28);
    sub_2977FB630(a3, v27);
    return sub_2977FAA04(v28);
  }

  else
  {

    return sub_2977FB630(a3, a1);
  }
}

uint64_t sub_29780015C@<X0>(unsigned int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2977FFEB0(a2, *a1);

  return sub_2977FD31C(a1, v5, a3);
}

uint64_t sub_2978001AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (*a1 == a2)
  {

    return sub_2977FB51C(a3, a2, 0, 0);
  }

  else if (a2)
  {
    v7 = sub_2977FA554(a1);
    v8 = sub_2977FA198(8 * v7);
    v9 = v8;
    if (v3 > 0x3F)
    {
      v15 = v3 >> 6;
      v16 = v3 & 0x3F;
      if (v16)
      {
        v17 = sub_2977FA554(a1);
        v18 = v17 - 1;
        v19 = *(a1 + 8);
        if (v17 - 1 > v15)
        {
          v20 = v17 - v15 - 2;
          v21 = &v9[v18];
          do
          {
            *v21-- = (v19[v20] >> (64 - v16)) | (v19[v20 + 1] << v16);
            --v20;
            --v18;
          }

          while (v15 < v18);
        }

        v9[v15] = *v19 << v16;
        if (v15 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v15;
        }

        bzero(v9, (8 * v22));
      }

      else
      {
        bzero(v8, 8 * (v15 - 1) + 8);
        if (v15 < sub_2977FA554(a1))
        {
          v23 = 0;
          v24 = &v9[v15];
          do
          {
            *&v24[v23] = *(*(a1 + 8) + v23);
            ++v15;
            v23 += 8;
          }

          while (v15 < sub_2977FA554(a1));
        }
      }
    }

    else if (sub_2977FA554(a1))
    {
      v10 = 0;
      v11 = 0;
      v12 = v3;
      v13 = 64 - v3;
      do
      {
        v14 = *(a1 + 8);
        v9[v10] = (*(v14 + 8 * v10) << v12) | v11;
        v11 = *(v14 + 8 * v10++) >> v13;
      }

      while (v10 < sub_2977FA554(a1));
    }

    sub_2977FECEC(v26, v9, *a1);
    v25 = sub_2977FD2A4(v26);
    sub_2977FB630(a3, v25);
    return sub_2977FAA04(v26);
  }

  else
  {

    return sub_2977FB630(a3, a1);
  }
}

uint64_t sub_2978003E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_2977FD1C4(a1))
  {
    v6 = sub_2977FB5F0(a1);
    v7 = *(a2 + 8) | *(a1 + 8);

    return sub_2977FB51C(a3, v6, v7, 0);
  }

  else
  {

    return sub_2977FECF0(a1, a2, a3);
  }
}

uint64_t sub_29780047C(uint64_t a1, uint64_t a2)
{
  if (sub_2977FF180(a1, a2))
  {
    return 1;
  }

  return sub_297802670(a1, a2);
}

uint64_t sub_2978004D0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_2977FD1C4(a1))
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    v8 = *(a2 + 8);
  }

  else
  {
    v11 = sub_2977FD698(a2);
    if (v11)
    {
      v12 = sub_2977FD490(v11 - 1) + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_2977FD698(a1);
    if (!v13 || (v14 = sub_2977FD490(v13 - 1), v15 = v14 + 1, v14 == -1) || v15 < v12 || (v16 = v14, sub_2977FF180(a1, a2)))
    {
      v6 = *a1;
      v10 = a3;
      v9 = 0;
      goto LABEL_12;
    }

    if (sub_297800A3C(a1, a2))
    {
      v6 = *a1;
      v10 = a3;
      v9 = 1;
      goto LABEL_12;
    }

    if (v16 || v12 != 1)
    {
      sub_2977FB51C(a3, 1, 0, 0);
      sub_2977FB630(v18, a1);
      sub_297800A9C(v18, v15, a2, v12, a3, 0);
      return sub_2977FAA04(v18);
    }

    v6 = *a1;
    v7 = **(a1 + 1);
    v8 = **(a2 + 8);
  }

  v9 = v7 / v8;
  v10 = a3;
LABEL_12:

  return sub_2977FB51C(v10, v6, v9, 0);
}

uint64_t sub_297800648@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2977FB51C(v6, *a1, a2, 0);
  sub_2977FEEC8(a1, v6, a3);
  return sub_2977FAA04(v6);
}

uint64_t sub_2978006A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2977FD698(a1);
  if (v8)
  {
    v9 = sub_2977FD490(v8 - 1) + 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2977FD698(a2);
  if (!v10)
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_10:
    v13 = a3;
    v14 = 0;
LABEL_11:
    sub_2977FE770(v13, v14);
    v12 = a4;
    goto LABEL_12;
  }

  v11 = sub_2977FD490(v10 - 1) + 1;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v9 < v11 || sub_2977FF180(a1, a2))
  {
    sub_2977FF844(a4, a1);
    v12 = a3;
LABEL_12:

    return sub_2977FE770(v12, 0);
  }

  if (sub_297800A3C(a1, a2))
  {
    v13 = a3;
    v14 = 1;
    goto LABEL_11;
  }

  if (v9 == 1 && v11 == 1)
  {
    v16 = sub_2977FD1C4(a1);
    v17 = (a1 + 8);
    if (!v16)
    {
      v17 = *(a1 + 8);
    }

    v18 = *v17;
    v19 = sub_2977FD1C4(a2);
    v22 = *(a2 + 8);
    v21 = (a2 + 8);
    v20 = v22;
    if (v19)
    {
      v20 = v21;
    }

    v23 = *v20;
    v24 = sub_2977FB5F0(a1);
    sub_2977FB51C(v28, v24, v18 / v23, 0);
    sub_2977FB698(a3, v28);
    sub_2977FAA04(v28);
    v25 = sub_2977FB5F0(a1);
    sub_2977FB51C(v28, v25, v18 % v23, 0);
    sub_2977FB698(a4, v28);
    v26 = v28;
  }

  else
  {
    sub_2977FB630(v27, a1);
    sub_297800A9C(v27, v9, a2, v11, a3, a4);
    v26 = v27;
  }

  return sub_2977FAA04(v26);
}

uint64_t sub_297800880@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_2977FD1C4(a1))
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    v8 = *(a2 + 8);
LABEL_3:
    v9 = v7 % v8;
    v10 = a3;
LABEL_18:

    return sub_2977FB51C(v10, v6, v9, 0);
  }

  v11 = sub_2977FD698(a1);
  if (v11)
  {
    v12 = sub_2977FD490(v11 - 1) + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_2977FD698(a2);
  if (v13)
  {
    v14 = sub_2977FD490(v13 - 1) + 1;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12 >= v14 && !sub_2977FF180(a1, a2))
  {
    if (!sub_297800A3C(a1, a2))
    {
      if (v12 != 1)
      {
        sub_2977FB51C(a3, 1, 0, 0);
        sub_2977FB630(v16, a1);
        sub_297800A9C(v16, v12, a2, v14, 0, a3);
        return sub_2977FAA04(v16);
      }

      v6 = *a1;
      v7 = **(a1 + 1);
      v8 = **(a2 + 8);
      goto LABEL_3;
    }

LABEL_17:
    v6 = *a1;
    v10 = a3;
    v9 = 0;
    goto LABEL_18;
  }

  return sub_2977FB630(a3, a1);
}

uint64_t sub_297800A3C(uint64_t a1, uint64_t a2)
{
  if (sub_2977FD1C4(a1))
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return sub_2977FF088(a1, a2);
}

void sub_297800A9C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = *MEMORY[0x29EDCA608];
  v10 = (2 * a4);
  v11 = 2 * a2;
  v64 = a4;
  if (a6)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  v58 = v11 - 2 * a4;
  v13 = (v12 * v10 + 2 * v58) | 1;
  v14 = (2 * a2) | 1;
  v15 = 4 * v14;
  if (v13 > 0x80)
  {
    v16 = sub_2977FA198(4 * v14);
    v17 = sub_2977FA198(4 * v10);
    v61 = sub_2977FA198(4 * v11);
    if (a6)
    {
      v60 = sub_2977FA198(4 * v10);
    }

    else
    {
      v60 = 0;
    }
  }

  else
  {
    v16 = v65;
    v17 = &v65[v14];
    v18 = v10 + v14;
    v19 = &v65[v18];
    v20 = &v65[(v18 + v11)];
    if (!a6)
    {
      v20 = 0;
    }

    v60 = v20;
    v61 = v19;
  }

  v62 = a6;
  bzero(v16, v15);
  v63 = a2;
  if (a2)
  {
    v21 = 0;
    v22 = 8 * a2;
    v23 = 1;
    do
    {
      v24 = sub_2977FA554(a1);
      v25 = (a1 + 8);
      if (v24 != 1)
      {
        v25 = (*(a1 + 8) + v21);
      }

      v26 = *v25;
      v16[v23 - 1] = v26;
      v16[v23] = HIDWORD(v26);
      v21 += 8;
      v23 += 2;
    }

    while (v22 != v21);
  }

  v16[v11] = 0;
  bzero(v17, 4 * v10);
  if (v64)
  {
    v27 = 0;
    v28 = 8 * v64;
    v29 = 1;
    do
    {
      v30 = sub_2977FA554(a3);
      v31 = (*(a3 + 8) + v27);
      if (v30 == 1)
      {
        v31 = (a3 + 8);
      }

      v32 = *v31;
      v17[v29 - 1] = v32;
      v17[v29] = HIDWORD(v32);
      v27 += 8;
      v29 += 2;
    }

    while (v28 != v27);
  }

  bzero(v61, 4 * v11);
  if (v62)
  {
    bzero(v60, 4 * v10);
  }

  if (v10)
  {
    while (!v17[v10 - 1])
    {
      if (!--v10)
      {
        goto LABEL_29;
      }
    }

    LODWORD(v11) = v11 - v10;
  }

  else
  {
    LODWORD(v11) = v58;
  }

LABEL_29:
  if (v10 + v11)
  {
    v33 = (v10 + v11);
    while (!v16[v33 - 1])
    {
      LODWORD(v11) = v11 - 1;
      if (!(--v33 * 4))
      {
        LODWORD(v11) = -v10;
        break;
      }
    }
  }

  if (v10 == 1)
  {
    v34 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      v35 = *v17;
      v36 = v11;
      v37 = v64;
      v38 = a5;
      while (1)
      {
        v39 = v34;
        v34 = v16[v36];
        v40 = v34 | (v39 << 32);
        if (v40)
        {
          if (v40 >= v35)
          {
            if (v40 == v35)
            {
              v34 = 0;
              *(v61 + v36) = 1;
            }

            else
            {
              v42 = v40 / v35;
              *(v61 + v36) = v42;
              v34 = (v34 - v35 * v42);
            }

            goto LABEL_44;
          }
        }

        else
        {
          v34 = 0;
        }

        *(v61 + v36) = 0;
LABEL_44:
        if (v36-- <= 0)
        {
          goto LABEL_49;
        }
      }
    }

    v37 = v64;
    v38 = a5;
LABEL_49:
    if (v60)
    {
      *v60 = v34;
    }
  }

  else
  {
    sub_297800F8C(v16, v17, v61, v60, v11, v10);
    v37 = v64;
    v38 = a5;
  }

  if (v38)
  {
    if (*v38 == *a1)
    {
      sub_2977FEAE0(v38);
    }

    else
    {
      if (sub_2977FD1C4(v38))
      {
        *(v38 + 8) = 0;
      }

      else
      {
        v43 = *(v38 + 8);
        if (v43)
        {
          j__free(v43);
        }
      }

      *v38 = *a1;
      if (!sub_2977FD1C4(v38))
      {
        v44 = sub_2977FA554(v38);
        *(v38 + 8) = sub_2977FE4A4(v44);
      }
    }

    if (v63 == 1)
    {
      v45 = *v61;
      v46 = sub_2977FD1C4(v38);
      v47 = (v38 + 8);
      if (!v46)
      {
        v47 = *v47;
      }

      *v47 = v45;
    }

    else if (v63)
    {
      v48 = 0;
      v49 = 1;
      do
      {
        *(*(v38 + 8) + v48) = *(v61 + v49 - 1) | (*(v61 + v49) << 32);
        v48 += 8;
        v49 += 2;
      }

      while (8 * v63 != v48);
    }
  }

  if (v62)
  {
    if (*v62 == *a3)
    {
      sub_2977FEAE0(v62);
    }

    else
    {
      if (sub_2977FD1C4(v62))
      {
        *(v62 + 8) = 0;
      }

      else
      {
        v50 = *(v62 + 8);
        if (v50)
        {
          j__free(v50);
        }
      }

      *v62 = *a3;
      if (!sub_2977FD1C4(v62))
      {
        v51 = sub_2977FA554(v62);
        *(v62 + 8) = sub_2977FE4A4(v51);
      }
    }

    if (v37 == 1)
    {
      v52 = *v60;
      v53 = sub_2977FD1C4(v62);
      v54 = (v62 + 8);
      if (!v53)
      {
        v54 = *v54;
      }

      *v54 = v52;
    }

    else if (v37)
    {
      v55 = 0;
      v56 = 1;
      do
      {
        *(*(v62 + 8) + v55) = v60[v56 - 1] | (v60[v56] << 32);
        v55 += 8;
        v56 += 2;
      }

      while (8 * v37 != v55);
    }
  }

  if (v16 != v65)
  {
    j__free(v16);
    j__free(v17);
    j__free(v61);
    if (v60)
    {
      j__free(v60);
    }
  }

  v57 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297800F8C(int *a1, int *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v6 = a6;
  v11 = a6 - 1;
  v12 = sub_2978026A0(a2[v11], 2);
  v13 = v6 + a5;
  v60 = v12;
  v61 = a4;
  if (v12)
  {
    if (v13)
    {
      v14 = 0;
      v15 = v6 + a5;
      v16 = a1;
      v17 = a3;
      do
      {
        v18 = *v16 >> (32 - v12);
        *v16 = (*v16 << v12) | v14;
        ++v16;
        v14 = v18;
        --v15;
      }

      while (v15);
      if (!v6)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v18 = 0;
    v17 = a3;
    if (v6)
    {
LABEL_9:
      v19 = 0;
      v20 = v6;
      v21 = a2;
      do
      {
        v22 = *v21 >> (32 - v12);
        *v21 = (*v21 << v12) | v19;
        ++v21;
        v19 = v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v18 = 0;
    v17 = a3;
  }

LABEL_11:
  a1[v13] = v18;
  result = v6 - 2;
  v24 = a5;
  v25 = a5 + 3;
  v26 = v6;
  v64 = v11;
  v62 = v6 - 2;
  v63 = v6;
  do
  {
    v27 = v24 + v6;
    v28 = a1[v27 - 1] | (a1[v27] << 32);
    v29 = a2[v11];
    v30 = v28 / v29;
    v31 = v28 % v29;
    if (v28 / v29 == 0x100000000 || (v32 = v28 / v29, v30 * a2[result] > (a1[v27 - 2] | (v31 << 32))))
    {
      v32 = v30 - 1;
      v33 = v31 + v29;
      if (!HIDWORD(v33) && (v30 == 0x100000001 || v32 * a2[result] > (a1[v27 - 2] | (v33 << 32))))
      {
        v32 = v30 - 2;
      }
    }

    if (!v6)
    {
      goto LABEL_43;
    }

    v34 = 0;
    v35 = 0;
    v36 = v25;
    do
    {
      v37 = v34 + v24 + 1;
      v38 = a1[(v34 + v24)] | (a1[v37] << 32);
      v39 = v32 * a2[v34];
      v40 = v38 >= v39;
      v41 = v38 - v39;
      a1[(v34 + v24)] = v41;
      v42 = !v40;
      a1[v37] = HIDWORD(v41);
      v43 = v40 || v34 + v24 + 2 > v13;
      if (!v43)
      {
        v44 = v36;
        do
        {
          v45 = a1[v44 - 1];
          v42 = v45 == 0;
          a1[v44 - 1] = v45 - 1;
          if (v45)
          {
            v46 = 1;
          }

          else
          {
            v46 = v44 > v13;
          }

          ++v44;
        }

        while (!v46);
      }

      v35 |= v42;
      ++v34;
      ++v36;
    }

    while (v34 != v26);
    if (v35)
    {
      v47 = 1;
      v48 = -1;
      v49 = a1;
      do
      {
        v50 = ~*v49 + (v47 & 1);
        *v49++ = v50;
        v47 &= v50 == 0;
        ++v48;
      }

      while (v48 < v13);
      *(v17 + 4 * v24) = v32 - 1;
      v66 = v24 + v6;
      v67 = v25;
      LOBYTE(v51) = 0;
      v52 = v26;
      v53 = a2;
      v54 = v24;
      do
      {
        v55 = &a1[v54];
        v56 = *sub_2977FA590(v55, v53);
        v57 = *v53++;
        v58 = v57 + (v51 & 1) + *v55;
        *v55 = v58;
        if (v58 >= v56)
        {
          v51 = v51 & (v58 == v56);
        }

        else
        {
          v51 = 1;
        }

        ++v54;
        --v52;
      }

      while (v52);
      v11 = v64;
      v17 = a3;
      result = v62;
      v6 = v63;
      v25 = v67;
      a1[v66] += v51;
    }

    else
    {
LABEL_43:
      *(v17 + 4 * v24) = v32;
    }

    --v25;
    v43 = v24-- <= 0;
  }

  while (!v43);
  if (v61)
  {
    if (v60)
    {
      if ((v11 & 0x80000000) == 0)
      {
        v59 = 0;
        do
        {
          *(v61 + 4 * v11) = (a1[v11] >> v60) | v59;
          v59 = a1[v11] << (32 - v60);
          v43 = v11-- <= 0;
        }

        while (!v43);
      }
    }

    else if ((v11 & 0x80000000) == 0)
    {
      do
      {
        *(v61 + 4 * v11) = a1[v11];
        v43 = v11-- <= 0;
      }

      while (!v43);
    }
  }

  return result;
}

uint64_t sub_297801314@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2977FB634(a1);
  v7 = sub_2977FB634(a2);
  if (v6)
  {
    if (v7)
    {
      sub_2977FB640(a1, v13);
      sub_2977FB640(a2, v12);
      sub_2978004D0(v13, v12, a3);
      sub_2977FAA04(v12);
      v8 = v13;
      return sub_2977FAA04(v8);
    }

    sub_2977FB640(a1, v12);
    v10 = v12;
    v9 = a2;
LABEL_7:
    sub_2978004D0(v10, v9, v13);
    sub_2977FB640(v13, a3);
    sub_2977FAA04(v13);
    v8 = v12;
    return sub_2977FAA04(v8);
  }

  if (v7)
  {
    sub_2977FB640(a2, v12);
    v9 = v12;
    v10 = a1;
    goto LABEL_7;
  }

  return sub_2978004D0(a1, a2, a3);
}

uint64_t sub_297801424@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2977FB634(a1);
  v7 = sub_2977FB634(a2);
  if (v6)
  {
    if (v7)
    {
      sub_2977FB640(a1, v12);
      sub_2977FB640(a2, v11);
      sub_297800880(v12, v11, v13);
      sub_2977FB640(v13, a3);
      sub_2977FAA04(v13);
      v8 = v11;
    }

    else
    {
      sub_2977FB640(a1, v12);
      sub_297800880(v12, a2, v13);
      sub_2977FB640(v13, a3);
      v8 = v13;
    }

    sub_2977FAA04(v8);
    v9 = v12;
    return sub_2977FAA04(v9);
  }

  if (v7)
  {
    sub_2977FB640(a2, v13);
    sub_297800880(a1, v13, a3);
    v9 = v13;
    return sub_2977FAA04(v9);
  }

  return sub_297800880(a1, a2, a3);
}

BOOL sub_297801544@<W0>(unsigned int *a1@<X0>, _DWORD *a2@<X1>, BOOL *a3@<X2>, _DWORD *a4@<X8>)
{
  sub_2977FEEC8(a1, a2, a4);
  v8 = sub_2978015C4(a1);
  result = sub_2978015C4(a2);
  if (v8 == result)
  {
    v11 = sub_2978015C4(a4);
    result = sub_2978015C4(a1);
    v10 = v11 ^ result;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

BOOL sub_2978015E0@<W0>(unsigned int *a1@<X0>, _DWORD *a2@<X1>, BOOL *a3@<X2>, _DWORD *a4@<X8>)
{
  sub_2977FEFA8(a1, a2, a4);
  v8 = sub_2978015C4(a1);
  result = sub_2978015C4(a2);
  if (v8 == result)
  {
    v11 = 0;
  }

  else
  {
    v10 = sub_2978015C4(a4);
    result = sub_2978015C4(a1);
    v11 = v10 ^ result;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_297801660@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2978016C4(a1);
  if (v8)
  {
    LOBYTE(v8) = sub_29780172C(a2);
  }

  *a3 = v8;

  return sub_297801314(a1, a2, a4);
}

BOOL sub_2978016C4(uint64_t a1)
{
  if (*a1 == 1)
  {
    return *(a1 + 8) == 1;
  }

  result = sub_2977FB634(a1);
  if (result)
  {

    return sub_2978026B8(a1);
  }

  return result;
}

BOOL sub_29780172C(uint64_t a1)
{
  if (sub_2977FD1C4(a1))
  {
    return *(a1 + 8) == 0xFFFFFFFFFFFFFFFFLL >> -*a1;
  }

  else
  {
    return sub_2977FF700(a1) == *a1;
  }
}

uint64_t sub_297801784@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, _BYTE *a3@<X2>, unsigned int *a4@<X8>)
{
  sub_2977FEE38(a1, a2, a4);
  result = sub_2977FCF18(a1, 0);
  if (result && (result = sub_2977FCF18(a2, 0), result))
  {
    sub_297801314(a4, a2, v10);
    if (sub_297801848(v10, a1))
    {
      *a3 = 1;
    }

    else
    {
      sub_297801314(a4, a1, v9);
      *a3 = sub_297801848(v9, a2);
      sub_2977FAA04(v9);
    }

    return sub_2977FAA04(v10);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_297801864@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2977FB5F0(a1);
  v9 = sub_29780192C(a2, v8);
  *a3 = v9;
  if (v9)
  {
    v10 = *a1;

    return sub_2977FB51C(a4, v10, 0, 0);
  }

  else
  {
    if (sub_2978015C4(a1))
    {
      v12 = sub_2977FD6C0(a1);
    }

    else
    {
      v12 = sub_2977FF4FC(a1);
    }

    *a3 = sub_29780192C(a2, v12);

    return sub_29780198C(a1, a2, a4);
  }
}

uint64_t sub_29780192C(unsigned int *a1, uint64_t a2)
{
  v4 = sub_2977FB5F0(a1);
  sub_2977FB51C(v7, v4, a2, 0);
  v5 = sub_297800A20(a1, v7);
  sub_2977FAA04(v7);
  return v5;
}

uint64_t sub_297801990@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2977FB5F0(a1);
  v9 = sub_29780192C(a2, v8);
  *a3 = v9;
  if (v9)
  {
    v10 = *a1;

    return sub_2977FB51C(a4, v10, 0, 0);
  }

  else
  {
    v12 = sub_2977FD6C0(a1);
    *a3 = sub_297801A40(a2, v12);

    return sub_29780198C(a1, a2, a4);
  }
}

uint64_t sub_297801A40(unsigned int *a1, uint64_t a2)
{
  v4 = sub_2977FB5F0(a1);
  sub_2977FB51C(v7, v4, a2, 0);
  v5 = sub_2977FF400(a1, v7);
  sub_2977FAA04(v7);
  return v5;
}

uint64_t sub_297801AA0(_DWORD *a1, const void **a2, unsigned int a3, int a4, int a5)
{
  v36 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    HIDWORD(v9) = a3 - 2;
    LODWORD(v9) = a3 - 2;
    v10 = off_29EE6E2B8[(v9 >> 1)];
  }

  else
  {
    v10 = &byte_2978FC3E5;
  }

  if (sub_2977FD738(a1, 0))
  {
    if (*v10)
    {
      do
      {
        sub_2977FCD50(a2, v10);
      }

      while (*++v10);
    }

    LOBYTE(v34[0]) = 48;
    result = sub_2977FCD50(a2, v34);
    goto LABEL_42;
  }

  if (!sub_2977FD1C4(a1))
  {
    sub_2977FB630(v34, a1);
    if (a4 && sub_2977FB634(a1))
    {
      sub_2977FF380(v34);
      sub_2977FE7DC(v34);
      LOBYTE(v33[0]) = 45;
      sub_2977FCD50(a2, v33);
    }

    if (*v10)
    {
      do
      {
        sub_2977FCD50(a2, v10);
      }

      while (*++v10);
    }

    v15 = sub_2977FD0D4(a2);
    if (a3 != 2)
    {
      if (a3 == 16)
      {
        v16 = 4;
        goto LABEL_31;
      }

      if (a3 != 8)
      {
        if (a3 == 10)
        {
          v22 = 4;
        }

        else
        {
          v22 = 8;
        }

        sub_2977FB51C(v33, v22, a3, 0);
        while (sub_2977FCF18(v34, 0))
        {
          sub_2977FB51C(v32, 1, 0, 0);
          v23 = sub_2977FB5F0(v34);
          sub_2977FB51C(v31, v23, 0, 0);
          sub_2977FB630(v30, v34);
          v24 = sub_2977FA554(v34);
          v25 = sub_2977FA554(v33);
          sub_297800A9C(v30, v24, v33, v25, v31, v32);
          sub_2977FAA04(v30);
          v26 = sub_2977FCF34(v32);
          sub_2977FCD50(a2, &a0123456789abcd_0[v26]);
          sub_2977FF844(v34, v31);
          sub_2977FAA04(v31);
          sub_2977FAA04(v32);
        }

        sub_2977FAA04(v33);
        goto LABEL_41;
      }
    }

    if (a3 == 8)
    {
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }

LABEL_31:
    if (sub_2977FCF18(v34, 0))
    {
      v20 = a3 - 1;
      do
      {
        v21 = sub_2977FA55C(v34);
        sub_2977FCD50(a2, &a0123456789abcd_0[v20 & *v21]);
        sub_2977FFF14(v34, v16, v33);
        sub_2977FB698(v34, v33);
        sub_2977FAA04(v33);
      }

      while (sub_2977FCF18(v34, 0));
    }

LABEL_41:
    v27 = sub_2977FB720(a2) + v15;
    v28 = sub_2977FB7B8(a2);
    sub_297801E8C(v27, v28);
    result = sub_2977FAA04(v34);
    goto LABEL_42;
  }

  if (a4)
  {
    v13 = sub_297801E44(a1);
    if ((v13 & 0x8000000000000000) != 0)
    {
      LOBYTE(v33[0]) = 45;
      sub_2977FCD50(a2, v33);
      v13 = -v13;
    }
  }

  else
  {
    v13 = sub_2977FCF34(a1);
  }

  if (*v10)
  {
    do
    {
      sub_2977FCD50(a2, v10);
    }

    while (*++v10);
  }

  v18 = v35;
  if (v13)
  {
    v18 = v35;
    do
    {
      *--v18 = a0123456789abcd_0[v13 % a3];
      v19 = v13 >= a3;
      v13 /= a3;
    }

    while (v19);
  }

  result = sub_2977FD4F8(a2, v18, v35);
LABEL_42:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297801E44(uint64_t a1)
{
  if (!sub_2977FD1C4(a1))
  {
    return **(a1 + 8);
  }

  v2 = -*a1;
  return (*(a1 + 8) << -*a1) >> -*a1;
}

uint64_t sub_297801E90@<X0>(_DWORD *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_297801F0C(v11);
  sub_297801AA0(a1, v11, a2, a3, 0);
  v10[0] = sub_297801F10(v11);
  v10[1] = v8;
  sub_297801F5C(v10, a4);
  return sub_297801F60(v11);
}

uint64_t sub_297801F10(uint64_t a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FD0D4(a1);
  sub_2977FB7C0(&v5, v2, v3);
  return v5;
}

void **sub_297801FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  v4 = sub_2977FB7B8(v9);
  v5 = *(a1 + 24);
  v6 = *(a1 + 16) - v5;
  v7 = sub_2977FB720(v9);
  if (v4 > v6)
  {
    return sub_29781E2C0(a1, v7, v4);
  }

  memcpy(v5, v7, v4);
  *(a1 + 24) += v4;
  return a1;
}

uint64_t sub_297802034(_DWORD *a1, uint64_t a2, int a3)
{
  sub_297801F0C(v9);
  sub_297801AA0(a1, v9, 0xAu, a3, 0);
  v6 = sub_297801F10(v9);
  sub_297801FA8(a2, v6, v7);
  return sub_297801F60(v9);
}

void sub_2978020B4(void *a1, uint64_t a2, unsigned int a3)
{
  *a1 = a2;
  if (a3 >= 2)
  {
    bzero(a1 + 1, 8 * (a3 - 1));
  }
}

void *sub_2978020D4(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v4 = *a2++;
      *result++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL sub_2978020F0(void *a1, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    if (a2 == v3)
    {
      break;
    }
  }

  while (!a1[v3++]);
  return v4 >= a2;
}

uint64_t sub_297802184(unint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = a2;
  while (1)
  {
    v5 = *a1++;
    v4 = v5;
    if (v5)
    {
      break;
    }

    v2 -= 64;
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return sub_2978021E0(v4) - v2;
}

uint64_t sub_2978021FC(uint64_t a1, int a2)
{
  v2 = 64 - (a2 << 6);
  v3 = a2 - 1;
  while (!*(a1 + 8 * v3))
  {
    v2 += 64;
    if (--v3 == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return sub_297802250(*(a1 + 8 * v3)) - v2;
}

unint64_t *sub_29780226C(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a3 && a2)
  {
    v3 = a3 >> 6;
    v4 = a2;
    v5 = result;
    do
    {
      if (v3 >= a2)
      {
        v6 = 0;
      }

      else
      {
        v6 = result[v3];
        if ((a3 & 0x3F) != 0)
        {
          v6 >>= a3 & 0x3F;
          if (v3 + 1 < a2)
          {
            v6 |= result[v3 + 1] << (64 - (a3 & 0x3F));
          }
        }
      }

      *v5++ = v6;
      ++v3;
      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL sub_2978022D4(unint64_t *a1, uint64_t *a2, _BOOL8 a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v5 = *a1;
      v7 = *a2++;
      v6 = v7;
      v8 = v7 + *a1;
      v9 = __CFADD__(v7, *a1);
      v10 = v5 + v6;
      v11 = v10 + 1 <= v5;
      if (a3)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v8;
      }

      if (a3)
      {
        a3 = v11;
      }

      else
      {
        a3 = v9;
      }

      *a1++ = v12;
      --v4;
    }

    while (v4);
  }

  return a3;
}

uint64_t sub_29780231C(unint64_t *a1, unint64_t *a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v5 = *a2++;
      v6 = *a1 - v5;
      v7 = *a1 < v5;
      v8 = *a1 + ~v5;
      if (a3)
      {
        a3 = v8 >= *a1;
      }

      else
      {
        v8 = v6;
        a3 = v7;
      }

      *a1++ = v8;
      --v4;
    }

    while (v4);
  }

  return a3;
}

BOOL sub_297802364(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(a1 + 8 * v2);
      *(a1 + 8 * v2) = v3 + 1;
      if (v3 != -1)
      {
        break;
      }

      if (a2 == ++v2)
      {
        LODWORD(v2) = a2;
        return v2 == a2;
      }
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  return v2 == a2;
}

void sub_2978023A4(void *a1, unsigned int a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3 >> 6;
    if (a3 >> 6 < a2)
    {
      v4 = a2 - 1;
      v5 = &a1[a2 - 1];
      do
      {
        v6 = a1[v4 - v3];
        if ((a3 & 0x3F) != 0)
        {
          v6 <<= a3 & 0x3F;
          if (v3 < v4)
          {
            v6 |= a1[v4 - v3 - 1] >> (64 - (a3 & 0x3F));
          }
        }

        *v5-- = v6;
        v7 = v4 - 1;
      }

      while (v3 < v4--);
      a2 = v7 + 1;
    }

    if (a2)
    {
      bzero(a1, 8 * a2);
    }
  }
}

uint64_t sub_297802420(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 8 * a3;
  do
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *(a1 - 8 + v3);
    v5 = *(a2 - 8 + v3);
    v3 -= 8;
  }

  while (v4 == v5);
  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_297802458(char *__b, unsigned int a2, unsigned int a3)
{
  v3 = a3;
  if (a3 < 0x41)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = (a3 - 65) >> 6;
  memset(__b, 255, (8 * v6 + 8));
  v7 = v6 + 1;
  v8 = v3;
  v9 = vdupq_n_s64(v6);
  v10 = 4;
  v11.i64[0] = 0x3F0000003FLL;
  v11.i64[1] = 0x3F0000003FLL;
  do
  {
    v12 = v8;
    v8 = vaddq_s32(v8, v11);
    v10 -= 4;
  }

  while (((v6 + 4) & 0x7FFFFFC) + v10 != 4);
  v13 = vdupq_n_s64(-v10);
  v14 = vaddvq_s32(vbslq_s8(vuzp1q_s32(vcgtq_u64(vorrq_s8(v13, xmmword_2978F4C70), v9), vcgtq_u64(vorrq_s8(v13, xmmword_2978F4C80), v9)), v12, v8));
  LOBYTE(v3) = v14;
  if (v14)
  {
LABEL_7:
    *&__b[8 * v7++] = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  }

LABEL_8:
  if (v7 < a2)
  {

    bzero(&__b[8 * v7], 8 * (~v7 + a2) + 8);
  }
}

void *sub_29780257C(void *a1, void *a2)
{
  if (sub_2978025BC(&v5, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_2978025D0(unint64_t *a1, unint64_t *a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      v7 = v6;
      v8 = HIDWORD(v6);
      v9 = v6 * a4;
      v10 = __CFADD__(v9, v4);
      v11 = v9 + v4;
      v12 = v10;
      if (v10)
      {
        v13 = 0x100000000;
      }

      else
      {
        v13 = 0;
      }

      v14 = HIDWORD(v11) + v8 * a4 + v13;
      v15 = v14 != 0;
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v12;
      }

      v17 = v7 * HIDWORD(a4);
      v18 = v14 + v17;
      *a1++ = v11 | (v18 << 32);
      if ((v18 == 0) & (v15 | v12) | v16 & 1)
      {
        v19 = 0x100000000;
      }

      else
      {
        v19 = 0;
      }

      v4 = HIDWORD(v17) + v8 * HIDWORD(a4) + HIDWORD(v18) + v19;
      --v5;
    }

    while (v5);
  }

  return v4;
}

uint64_t sub_297802664(uint64_t result, uint64_t a2, int a3)
{
  *result = a3;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_29780267C(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *a2 = 0;
  return result;
}

uint64_t sub_2978026A0(unsigned int a1, int a2)
{
  if (a2)
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = __clz(a1);
  if (v2)
  {
    return 32;
  }

  else
  {
    return v3;
  }
}

BOOL sub_2978026B8(uint64_t a1)
{
  if (!sub_2977FD1C4(a1))
  {
    return sub_2977FF700(a1) == 1;
  }

  v2 = *(a1 + 8);

  return sub_297802710(v2);
}

uint64_t sub_297802728@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    return sub_297802748(a2, *a1, a1[1]);
  }

  else
  {
    return sub_297802744(a2);
  }
}

void *sub_29780274C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = j_j_nullsub_1();
  nullsub_1(v2, 0);
  return a1;
}

uint64_t sub_297802784(uint64_t a1, const std::string::value_type *a2, std::string::size_type a3)
{
  v6 = j_j_nullsub_1(a1, a2);
  std::string::__init(v6, a2, a3);
  return a1;
}

uint64_t sub_2978027C8(unint64_t a1, int a2)
{
  if (a1 || a2 != 1)
  {
    return sub_2977FF6E4(a1, 0);
  }

  else
  {
    return sub_2978027E0();
  }
}

uint64_t sub_2978027EC(unint64_t a1, int a2)
{
  if (a1 || a2 != 1)
  {
    return sub_2977FD720(a1, 0) ^ 0x3F;
  }

  return sub_2978027E0();
}

_DWORD *sub_297802828(_DWORD *a1, _DWORD *a2)
{
  if (sub_2977FDAD4(&v5, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_297802870(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (result != a2)
  {
    v2 = a2 - 1;
    if (a2 - 1 > result)
    {
      do
      {
        result = sub_2977FE3DC(&v3, &v2);
        --v2;
        ++v3;
      }

      while (v3 < v2);
    }
  }

  return result;
}

uint64_t sub_2978028D8(uint64_t result, char a2)
{
  v2 = *(result + 24);
  if (v2 >= *(result + 16))
  {
    return sub_29781E8A8(result, a2);
  }

  *(result + 24) = v2 + 1;
  *v2 = a2;
  return result;
}

uint64_t sub_2978028FC(unsigned int **a1, unint64_t a2, uint64_t *a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 >= a2)
  {
    v7 = 0;
    goto LABEL_38;
  }

  LODWORD(v7) = 0;
  v8 = *a1;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    if (!a5 && (v9 & 0xFFFFF800) == 0xD800)
    {
      v7 = 3;
      goto LABEL_37;
    }

    if (v9 >= 0x110000)
    {
      v11 = 65533;
    }

    else
    {
      v11 = v9;
    }

    if (v9 >= 0x110000)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    if (v9 >= 0x110000)
    {
      v13 = 3;
    }

    else
    {
      v13 = v7;
    }

    if (v9 < 0x10000)
    {
      v11 = v9;
      v12 = 3;
      v13 = v7;
    }

    if (v9 < 0x800)
    {
      v11 = v9;
      v12 = 2;
      v13 = v7;
    }

    v14 = v9 >= 0x80;
    if (v9 < 0x80)
    {
      v12 = 1;
    }

    else
    {
      v9 = v11;
    }

    v7 = v14 ? v13 : v7;
    v15 = v6 + v12;
    if (v15 > a4)
    {
      break;
    }

    if (v12 > 2u)
    {
      if (v12 != 3)
      {
        *--v15 = v9 & 0x3F | 0x80;
        v9 >>= 6;
      }

      *--v15 = v9 & 0x3F | 0x80;
      v9 >>= 6;
    }

    else if (v12 == 1)
    {
      goto LABEL_32;
    }

    *--v15 = v9 & 0x3F | 0x80;
    v9 >>= 6;
LABEL_32:
    *(v15 - 1) = byte_2978F4CB8[v12] | v9;
    v6 = v15 - 1 + v12;
    v8 = v5;
    if (v5 >= a2)
    {
      goto LABEL_38;
    }
  }

  v7 = 2;
LABEL_37:
  v5 = v8;
LABEL_38:
  *a1 = v5;
  *a3 = v6;
  return v7;
}

BOOL sub_297802A60(unsigned __int8 *a1, int a2)
{
  v2 = 0;
  v3 = &a1[a2];
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v7 = *a1;
      goto LABEL_16;
    }

    if (a2 != 2)
    {
      return v2;
    }

LABEL_9:
    if (*(v3 - 1) > -65)
    {
      return 0;
    }

    v6 = *(v3 - 1);
    v7 = *a1;
    if (v7 <= 0xEF)
    {
      if (v7 != 224)
      {
        if (v7 == 237)
        {
          if (v6 <= 0x9F)
          {
            v7 = 237;
            return v7 < 0xF5;
          }

          return 0;
        }

        goto LABEL_16;
      }

      if (v6 >= 0xA0)
      {
        v7 = 224;
        return v7 < 0xF5;
      }

      return 0;
    }

    if (v7 == 240)
    {
      if (v6 >= 0x90)
      {
        v7 = 240;
        return v7 < 0xF5;
      }

      return 0;
    }

    if (v7 == 244)
    {
      if (v6 <= 0x8F)
      {
        v7 = 244;
        return v7 < 0xF5;
      }

      return 0;
    }

LABEL_16:
    if (v7 >= -62)
    {
      return v7 < 0xF5;
    }

    return 0;
  }

  if (a2 == 3)
  {
LABEL_8:
    v5 = *--v3;
    if (v5 > -65)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (a2 == 4)
  {
    v4 = *--v3;
    if (v4 > -65)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return v2;
}

BOOL sub_297802B60(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    return 1;
  }

  while (1)
  {
    v5 = byte_2978F4CBF[*v2] + 1;
    if (a2 - v2 < v5)
    {
      break;
    }

    result = sub_297802A60(v2, byte_2978F4CBF[*v2] + 1);
    if (!result)
    {
      return result;
    }

    v2 += v5;
    *a1 = v2;
    if (v2 == a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_297802BEC(unsigned __int8 **a1, unint64_t a2, _WORD **a3, unint64_t a4, int a5)
{
  v7 = *a1;
  v8 = *a3;
  if (*a1 >= a2)
  {
LABEL_29:
    result = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v12 = *v7;
    if ((a2 - v7) <= byte_2978F4CBF[*v7])
    {
      result = 1;
      goto LABEL_34;
    }

    v13 = byte_2978F4CBF[*v7];
    v14 = byte_2978F4CBF[*v7] + 1;
    if (!sub_297802A60(v7, v14))
    {
      goto LABEL_33;
    }

    v15 = 0;
    v16 = v13;
    if (v13 > 2u)
    {
      if (v13 != 3)
      {
        if (v13 != 4)
        {
          if (v13 != 5)
          {
            goto LABEL_18;
          }

          v15 = v12 << 6;
          v17 = *++v7;
          v12 = v17;
        }

        v18 = v15 + v12;
        v19 = *++v7;
        v12 = v19;
        v15 = v18 << 6;
      }

      v20 = v15 + v12;
      v21 = *++v7;
      v12 = v21;
      v15 = v20 << 6;
LABEL_15:
      v22 = v15 + v12;
      v23 = *++v7;
      v12 = v23;
      v15 = v22 << 6;
LABEL_16:
      v24 = v15 + v12;
      v25 = *++v7;
      v12 = v25;
      v16 = v24 << 6;
LABEL_17:
      ++v7;
      v15 = v16 + v12;
      goto LABEL_18;
    }

    if (!v13)
    {
      goto LABEL_17;
    }

    if (v13 == 1)
    {
      goto LABEL_16;
    }

    if (v13 == 2)
    {
      goto LABEL_15;
    }

LABEL_18:
    if (v8 >= a4)
    {
      goto LABEL_30;
    }

    v26 = v15 - dword_2978F4DC0[v13];
    if (!HIWORD(v26))
    {
      break;
    }

    if (v26 >= 0x110000)
    {
      goto LABEL_23;
    }

    if ((v8 + 1) >= a4)
    {
LABEL_30:
      v7 -= v14;
      result = 2;
      goto LABEL_34;
    }

    *v8 = ((v26 + 67043328) >> 10) - 10240;
    v8[1] = v26 & 0x3FF | 0xDC00;
    v8 += 2;
LABEL_28:
    if (v7 >= a2)
    {
      goto LABEL_29;
    }
  }

  if ((v26 & 0xF800) != 0xD800)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (a5)
  {
    LOWORD(v26) = -3;
LABEL_25:
    *v8++ = v26;
    goto LABEL_28;
  }

  v7 -= v14;
LABEL_33:
  result = 3;
LABEL_34:
  *a1 = v7;
  *a3 = v8;
  return result;
}

uint64_t sub_297802DB0(unsigned __int8 **a1, unsigned __int8 *a2, unsigned int **a3, unint64_t a4, int a5, int a6)
{
  v6 = *a1;
  v7 = *a3;
  if (*a1 < a2)
  {
    v10 = 0;
    if (a5)
    {
      v11 = a6 == 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    while (1)
    {
      v13 = *v6;
      if (a2 - v6 <= byte_2978F4CBF[*v6])
      {
        if (v12)
        {
          v10 = 1;
          goto LABEL_41;
        }

LABEL_19:
        v6 += sub_297802F8C(v6, a2);
LABEL_20:
        v10 = 3;
        v18 = 65533;
        goto LABEL_21;
      }

      if (v7 >= a4)
      {
        v10 = 2;
        goto LABEL_41;
      }

      v14 = byte_2978F4CBF[*v6];
      v15 = byte_2978F4CBF[*v6] + 1;
      if (!sub_297802A60(v6, v15))
      {
        if (!a5)
        {
          goto LABEL_39;
        }

        goto LABEL_19;
      }

      v16 = 0;
      v17 = v14;
      if (v14 > 2u)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_31;
      }

      if (v14 == 1)
      {
        goto LABEL_30;
      }

      if (v14 == 2)
      {
        goto LABEL_29;
      }

LABEL_32:
      v18 = v16 - dword_2978F4DC0[v14];
      if (HIWORD(v18) > 0x10u)
      {
        goto LABEL_20;
      }

      if ((v18 & 0x1FF800) == 0xD800)
      {
        v18 = 65533;
        v28 = a5 == 0;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v6 -= v15;
LABEL_39:
        v10 = 3;
        goto LABEL_41;
      }

LABEL_21:
      *v7++ = v18;
      if (v6 >= a2)
      {
        goto LABEL_41;
      }
    }

    if (v14 != 3)
    {
      if (v14 != 4)
      {
        if (v14 != 5)
        {
          goto LABEL_32;
        }

        v16 = v13 << 6;
        v19 = *++v6;
        v13 = v19;
      }

      v20 = v16 + v13;
      v21 = *++v6;
      v13 = v21;
      v16 = v20 << 6;
    }

    v22 = v16 + v13;
    v23 = *++v6;
    v13 = v23;
    v16 = v22 << 6;
LABEL_29:
    v24 = v16 + v13;
    v25 = *++v6;
    v13 = v25;
    v16 = v24 << 6;
LABEL_30:
    v26 = v16 + v13;
    v27 = *++v6;
    v13 = v27;
    v17 = v26 << 6;
LABEL_31:
    ++v6;
    v16 = v17 + v13;
    goto LABEL_32;
  }

  v10 = 0;
LABEL_41:
  *a1 = v6;
  *a3 = v7;
  return v10;
}

uint64_t sub_297802F8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = *a1;
  if ((v2 - 194) < 0x1E || a1 + 1 == a2)
  {
    return 1;
  }

  v5 = a1[1];
  if (v2 == 224)
  {
    if ((v5 & 0xE0) == 0xA0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  if ((v2 - 225) <= 0xB)
  {
    goto LABEL_14;
  }

  if (v2 == 237)
  {
    v6 = v5 < -96;
LABEL_17:
    if (v6)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  if ((v2 & 0xFE) == 0xEE)
  {
LABEL_14:
    v6 = v5 < -64;
    goto LABEL_17;
  }

  v7 = (a1 + 2);
  if (v2 == 240)
  {
    if ((v5 - 144) <= 0x2F)
    {
      goto LABEL_29;
    }

    return 1;
  }

  if ((v2 - 241) > 2)
  {
    result = 1;
    if (v2 != 244 || v5 > -113)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v5 > -65)
  {
    return 1;
  }

LABEL_29:
  result = 2;
  if (v7 != a2)
  {
    if (*v7 >= -64)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

BOOL sub_297803088(int a1, uint64_t a2, uint64_t a3, _WORD **a4, void *a5)
{
  v23[0] = a2;
  v23[1] = a3;
  if (a1 == 4)
  {
    v17 = sub_2977FB720(v23);
    v21 = *a4;
    v22 = v17;
    v18 = sub_2977FB7B8(v23);
    v19 = sub_2977FB7B8(v23);
    v12 = sub_297802F84(&v22, &v17[v18], &v21, &v21[8 * v19], 0);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = v21;
LABEL_10:
    *a4 = v13;
    return v12 == 0;
  }

  if (a1 != 2)
  {
    if (a1 != 1)
    {
      v12 = 0;
      return v12 == 0;
    }

    v22 = sub_2977FB720(v23);
    v7 = sub_2977FB728(v23);
    if (!sub_297802B60(&v22, v7))
    {
      *a5 = v22;
      v12 = 3;
      return v12 == 0;
    }

    v8 = *a4;
    v9 = sub_2977FB720(v23);
    v10 = sub_2977FB7B8(v23);
    memcpy(v8, v9, v10);
    v11 = sub_2977FB7B8(v23);
    v12 = 0;
    v13 = (*a4 + v11);
    goto LABEL_10;
  }

  v14 = sub_2977FB720(v23);
  v21 = *a4;
  v22 = v14;
  v15 = sub_2977FB7B8(v23);
  v16 = sub_2977FB7B8(v23);
  v12 = sub_297802BEC(&v22, &v14[v15], &v21, &v21[2 * v16], 0);
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_7:
  *a5 = v22;
  return v12 == 0;
}

BOOL sub_297803204(int a1, uint64_t *a2)
{
  v7 = a1;
  v5 = *a2;
  v6 = &v7;
  v3 = sub_2978028FC(&v6, &v8, &v5, v5 + 4, 0);
  if (!v3)
  {
    *a2 = v5;
  }

  return v3 == 0;
}

uint64_t sub_2978032A4(uint64_t a1)
{
  if (sub_29780344C(a1))
  {

    return sub_2977FB7B8(a1);
  }

  else
  {

    return sub_297803458(a1);
  }
}

uint64_t sub_297803300(uint64_t a1)
{
  v2 = sub_2978032A4(a1);
  if (sub_29780344C(a1))
  {
    v4 = sub_2977FB720(a1);
    v8 = 0;
    sub_297803464(v4, &v8);
    sub_2977FD5DC(a1, 0);
  }

  else
  {
    v5 = j_nullsub_1(a1, v3);
    v7 = 0;
    sub_297803464(v5, &v7);
    sub_297803470(a1, 0);
  }

  return nullsub_1(a1, v2);
}

void *sub_2978033AC(void *a1, void *a2)
{
  if (sub_2978025BC(&v5, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_2978033F0(uint64_t a1)
{
  if (sub_29780344C(a1))
  {

    return sub_2977FB720(a1);
  }

  else
  {

    return j_nullsub_1(a1, v2);
  }
}

void *sub_297803518()
{
  if ((atomic_load_explicit(&qword_2A13A2718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A2718))
  {
    sub_2978035A4(&unk_2A13A2708, 1);
    __cxa_atexit(sub_2978035A8, &unk_2A13A2708, &dword_2977F7000);
    __cxa_guard_release(&qword_2A13A2718);
  }

  return &unk_2A13A2708;
}

void sub_2978035E4(uint64_t *a1, uint64_t a2)
{
  sub_297803518();
  sub_2978035AC(&v13, &unk_2A13A2708);
  v4 = off_2A13A2720;
  v5 = qword_2A13A2728;
  sub_2978035B0(&v13);
  if (v4)
  {
    sub_297812960(a1, &v13);
    v4(v5, &v13, a2);
    std::string::~string(&v13);
  }

  else
  {
    sub_2978036EC();
    sub_29781F238(v12);
    v6 = sub_297801F64(v12, "LLVM ERROR: ");
    v7 = sub_2978036F0(v6, a1);
    sub_297801F64(v7, "\n");
    v11[0] = sub_29781F384(v12);
    v11[1] = v8;
    v9 = sub_2977FB720(v11);
    v10 = sub_2977FB7B8(v11);
    write(2, v9, v10);
    sub_29781F290(v12);
    sub_2977FD134(&v13);
  }

  sub_297809824();
  exit(1);
}

void *sub_297803724(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_297803754(a2);
  return a1;
}

uint64_t sub_297803788(uint64_t result, _BYTE *a2)
{
  v2 = 1;
  *(result + 17) = 1;
  if (*a2)
  {
    *result = a2;
    v2 = 3;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_2978037A8(uint64_t result, uint64_t a2)
{
  *(result + 16) = 260;
  *result = a2;
  return result;
}

uint64_t sub_2978037B8(uint64_t result, uint64_t a2)
{
  *(result + 16) = 261;
  *result = a2;
  return result;
}

uint64_t sub_2978037CC(uint64_t a1)
{
  v1 = sub_2978033F0(a1);

  return nullsub_1(v1, v2);
}

pthread_mutex_t **sub_2978037F4(pthread_mutex_t **a1, int a2)
{
  v2 = a2;
  result = sub_297805A08(a1, a2);
  *(result + 2) = 0;
  *(result + 12) = v2;
  return result;
}

uint64_t sub_2978038D4(const void **a1, int *a2, int *a3)
{
  v6 = sub_297803D6C(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > (v7 - sub_2977FB7B8(a1)) >> 2)
  {
    v8 = sub_297803A80(a1);
    sub_297803D70(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_297803D7C(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + 4 * v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_297803988(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_297803D70(a1, 0);
  }

  *sub_2977FB7B8(a1) = *a2;
  v4 = sub_2977FB7B8(a1) + 4;

  return sub_2977FD5DC(a1, v4);
}

uint64_t sub_297803A2C(uint64_t a1)
{
  v2 = sub_297803A7C(a1);
  v3 = sub_297803A80(a1);
  sub_2977FB7C0(v5, v2, v3);
  return sub_297803828(v5);
}

BOOL sub_297803AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_297803A7C(a2);
  v5 = sub_297803A80(a2);
  sub_2977FB7C0(v7, v4, v5);
  return sub_297803B1C(a1, v7[0], v7[1]);
}

BOOL sub_297803B1C(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = sub_297803A7C(a1);
  v7 = sub_297803A80(a1);
  sub_2977FB7C0(v9, v6, v7);
  return sub_297803864(v9, a2, a3);
}

uint64_t sub_297803B90(uint64_t a1, char a2)
{
  *a1 = &unk_2A1E54880;
  *(a1 + 16) = 1 << a2;
  *(a1 + 8) = sub_297803BE8(1 << a2);
  *(a1 + 20) = 0;
  return a1;
}

void *sub_297803BE8(int a1)
{
  result = malloc_type_calloc((a1 + 1), 8uLL, 0x80040B8603338uLL);
  result[a1] = -1;
  return result;
}

uint64_t sub_297803C2C(uint64_t a1)
{
  *a1 = &unk_2A1E54880;
  free(*(a1 + 8));
  return a1;
}

uint64_t sub_297803C84(unsigned int *a1, uint64_t a2)
{
  v4 = sub_2977FDAF8();
  v5 = sub_2977FD5AC(a1, a2);
  v6 = v5;
  if (v5 > 0x40)
  {
    v8 = v5 & 0xFFFFFFFFFFFFFFC0;
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_2977FDB7C(a1, v4, v12);
    v9 = v8 - 64;
    if (v8 != 64)
    {
      v10 = (a1 + 16);
      do
      {
        sub_2977FDC18(v12, v10);
        v10 += 64;
        v9 -= 64;
      }

      while (v9);
    }

    if ((v6 & 0x3F) != 0)
    {
      sub_2977FDC18(v12, a2 - 64);
    }

    v7 = sub_2977FDEF8(v12, v6);
  }

  else
  {
    v7 = sub_2977FDE98(a1, v5, v4);
  }

  sub_2977FDEF4(&v14, v7);
  return v14;
}

uint64_t sub_297803DA4(int *a1, int *a2, _DWORD *a3)
{
  v8 = a3;
  v9 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      v5 = *v4++;
      v6 = v8;
      *v8 = v5;
      v8 = v6 + 1;
      v9 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v10, &v9, &v8);
  return v10;
}

uint64_t sub_297803E1C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    sub_297803F00(a1);
    v6 = *a1;
  }

  a1[15] += a2;
  if (a3 <= 1)
  {
    a3 = 1;
  }

  result = sub_297803F64(v6, a3);
  v8 = result + a2;
  if (result + a2 > a1[1])
  {
    v9 = a2 + a3 - 1;
    v13 = v9;
    if (v9 > 0x1000)
    {
      v12 = sub_297803F78(a1 + 128, v9);
      *&v11 = sub_297803FF8(&v12, &v13);
      *(&v11 + 1) = v10;
      sub_297803F88((a1 + 9), &v11);
      return sub_297803F64(v12, a3);
    }

    sub_297803F00(a1);
    result = sub_297803F64(*a1, a3);
    v8 = result + a2;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_297803F00(void *a1)
{
  v2 = sub_29780406C((a1 + 2));
  v3 = sub_297804028(v2);
  v6 = sub_297803F78(a1 + 128, v3);
  result = sub_2978040A4((a1 + 2), &v6);
  v5 = &v6[v3];
  *a1 = v6;
  a1[1] = v5;
  return result;
}

uint64_t sub_297803F88(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_297804120(a1, 0);
  }

  *sub_2977FB7B8(a1) = *a2;
  v4 = sub_2977FB7B8(a1) + 16;

  return sub_2977FD5DC(a1, v4);
}

uint64_t sub_297804028(unsigned int a1)
{
  v3 = 30;
  v2 = a1 >> 7;
  return 4096 << *sub_297802578(&v3, &v2);
}

uint64_t sub_2978040A4(uint64_t a1, void *a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_297804114(a1, 0);
  }

  *sub_2977FB7B8(a1) = *a2;
  v4 = sub_2977FB7B8(a1) + 8;

  return sub_2977FD5DC(a1, v4);
}

void *sub_297804130(void *result, void *a2, uint64_t *a3)
{
  v3 = *a3;
  *result = *a2;
  result[1] = v3;
  return result;
}

void sub_297804140(std::string *a1@<X8>)
{
  v2 = sub_2977FB7B4(&v9, "x86_64-apple-darwin19.0.0");
  sub_297804298(v2, 0x2Du, v8);
  sub_297801F5C(v8, &__str);
  std::string::basic_string(&v6, &__str);
  sub_297804334(&v6, 45);
  sub_29780435C(&v6, v8[2], v8[3]);
  if (*sub_29780327C(&v6, 0) == 105)
  {
    v3 = sub_29780327C(&v6, 1);
    if (sub_2978043AC(*v3) && *sub_29780327C(&v6, 2) == 56 && *sub_29780327C(&v6, 3) == 54)
    {
      *sub_29780327C(&v6, 1) = 51;
    }
  }

  v4 = sub_2978043B4(&v6, "-darwin", 0);
  if (v4 != -1)
  {
    sub_297803274(&v6, v4 + 7);
    sub_297804424(&v5);
    sub_2978044E4(&v6, &v5);
    std::string::~string(&v5);
  }

  sub_2978044E8(&v5, &v6);
  sub_297811454(v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_, a1);
  std::string::~string(&v6);
  std::string::~string(&__str);
}

uint64_t sub_297804298@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_2978044F0(a1, a2, 0);
  if (v5 == -1)
  {
    sub_297804560(v11);
    return sub_297804550(a1, v11, a3);
  }

  else
  {
    v6 = v5;
    v11[0] = sub_297804564(a1, 0, v5);
    v11[1] = v7;
    v10[0] = sub_297804564(a1, v6 + 1, 0xFFFFFFFFFFFFFFFFLL);
    v10[1] = v8;
    return sub_297804550(v11, v10, a3);
  }
}

std::string *sub_29780435C(std::string *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB7B8(v7);
  return std::string::append(a1, v4, v5);
}

uint64_t sub_2978043B4(uint64_t a1, char *a2, unint64_t a3)
{
  v6 = sub_2978037CC(a1);
  v7 = sub_2978032A4(a1);
  v8 = sub_297803510(a2);

  return sub_297804824(v6, v7, a2, a3, v8);
}

uint64_t sub_297804424@<X0>(uint64_t a1@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  if (uname(&v5))
  {
    v2 = *MEMORY[0x29EDCA608];

    return sub_297804638(a1, &byte_2978FC3E5);
  }

  else
  {
    result = sub_297804638(a1, v5.release);
    v4 = *MEMORY[0x29EDCA608];
  }

  return result;
}

unint64_t sub_2978044F0(void *a1, unsigned __int8 a2, unint64_t a3)
{
  result = sub_2978045D4(a3, a1[1]);
  v6 = a1[1];
  if (result == v6)
  {
    return -1;
  }

  while (*(*a1 + result) != a2)
  {
    if (v6 == ++result)
    {
      return -1;
    }
  }

  return result;
}

uint64_t sub_297804564(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_2978045D4(a2, a1[1]);
  v6 = sub_297804600(v5, a3);
  v7 = sub_2978045D4(v6, a1[1]);
  sub_2977FB7C0(&v9, *a1 + v5, v7 - v5);
  return v9;
}

unint64_t sub_2978045D4(unint64_t result, unint64_t a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

__n128 sub_2978045E4(_OWORD *a1, _OWORD *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  a1[1] = *a3;
  return result;
}

void *sub_2978045F8(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

unint64_t sub_297804600(unint64_t result, unint64_t a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

std::string *sub_29780463C(std::string *a1, const std::string::value_type *a2)
{
  j_j_nullsub_1(a1, a2);
  v4 = sub_297803510(a2);
  std::string::__init(a1, a2, v4);
  return a1;
}

uint64_t *sub_297804680(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_2978037CC(a2);
  a1[1] = sub_2978046C0(a2);
  return a1;
}

uint64_t sub_2978046EC(uint64_t a1, uint64_t a2)
{
  nullsub_1(a1, a2);
  if (sub_29780344C(a1))
  {
    v4 = sub_2977FB720(a1);
    v5 = sub_2978047FC(a1);
    sub_2978047F8(a1, v4, v5);
  }

  v6 = sub_2978032A4(a2);
  v7 = sub_29780344C(a2);
  j_nullsub_1(a1, a2);
  v8 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v8;
  sub_297803470(a2, 0);
  v10 = j_nullsub_1(a2, v9);
  v13 = 0;
  sub_297803464(v10, &v13);
  if (a1 == a2 || v7)
  {
    nullsub_1(a2, 0);
  }

  else
  {
    nullsub_1(a2, v6);
  }

  result = sub_29780344C(a1);
  if (a1 != a2 && !result)
  {
    v12 = sub_297803458(a1);
    return nullsub_1(a1, v12);
  }

  return result;
}

uint64_t sub_297804824(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5)
{
  if (a4 > a2)
  {
    return -1;
  }

  if (a5)
  {
    v6 = (a1 + a2);
    v7 = sub_297804880((a1 + a4), a1 + a2, a3, &a3[a5]);
    if (v7 == v6)
    {
      return -1;
    }

    else
    {
      return &v7[-a1];
    }
  }

  return a4;
}

char *sub_297804880(char *a1, uint64_t a2, char *a3, char *a4)
{
  v4 = a1;
  v5 = a4 - a3;
  if (a4 != a3)
  {
    v7 = a2 - a1;
    if (a2 - a1 >= v5)
    {
      v11 = *a3;
      do
      {
        v9 = sub_297804918(v4, v7 - v5 + 1, &v11);
        if (!v9)
        {
          break;
        }

        v4 = v9;
        if (!j__memcmp(v9, a3, v5))
        {
          return v4;
        }

        v7 = a2 - ++v4;
      }

      while (a2 - v4 >= v5);
    }

    return a2;
  }

  return v4;
}

void *sub_297804918(void *a1, size_t __n, char *a3)
{
  if (__n)
  {
    return j__memchr(a1, *a3, __n);
  }

  else
  {
    return 0;
  }
}

std::string *sub_29780493C(std::string *a1, uint64_t a2)
{
  v4 = sub_2978037CC(a2);
  v5 = sub_2978032A4(a2);

  return std::string::append(a1, v4, v5);
}

uint64_t sub_2978049FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

void *sub_297804A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2977FB7C0(v8, a3, a4);
  v6 = sub_297804A68(24, v8);
  return sub_297804ABC(v6, a1, a2);
}

uint64_t sub_297804A68(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2977FB7B8(a2);
  v5 = sub_2977FA198(a1 + v4 + 1);
  sub_297804BF8((v5 + a1), *a2, a2[1]);
  return v5;
}

void *sub_297804AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a1;
  v13[1] = a2;
  v6 = sub_2977FB7B8(v13);
  v7 = sub_297804B48(v6, a3, a4);
  v8 = v7;
  if (v7)
  {
    v9 = sub_2977FB7B8(v7);
    v10 = sub_2977FB720(v13);
    v11 = sub_2977FB7B8(v13);
    memcpy(v9, v10, v11);
  }

  return v8;
}

void *sub_297804B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v11 = a3;
  v4 = sub_2977FB7B8(&v10);
  v5 = sub_297804BE4(v4 + 25, 0x10uLL);
  v6 = sub_2977FA198(a1 + v5 + 1);
  v7 = v6;
  if (v6)
  {
    sub_297804BF8((v6 + 24), v10, v11);
    *(v7 + v5 + a1) = 0;
    sub_2977FB7C0(v9, v7 + v5, a1);
    sub_297804ABC(v7, v9[0], v9[1]);
  }

  return v7;
}

uint64_t sub_297804BF8(void *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB7B8(v7);
  memcpy(a1, v4, v5);
  result = sub_2977FB7B8(v7);
  *(a1 + result) = 0;
  return result;
}

void *sub_297804C54(size_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_297804B48(a1, a2, a3);
  v5 = v4;
  if (v4)
  {
    v6 = sub_2977FB7B8(v4);
    bzero(v6, a1);
  }

  return v5;
}

uint64_t sub_297804C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_2977FB7B4(v9, "-");
  if (sub_297804D28(a1, a2, v9[0], v9[1]))
  {
    return sub_297804D58();
  }

  sub_2978036E8(v9, v10);
  return sub_297804DA4(v9, a3, 1, 0, a4);
}

BOOL sub_297804D28(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return sub_2977FB778(v5, a3, a4);
}

uint64_t sub_297804D58()
{
  sub_297808BD8();
  sub_2977FB7B4(&v1, "<stdin>");
  return sub_2978051E4();
}

uint64_t sub_297804DA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_297804E28(v14);
  v13[0] = sub_297812BF8(a1, v14);
  v13[1] = v10;
  v11 = sub_2977FB720(v13);
  sub_297804E2C(v11, a2, a3, a4, a5);
  return sub_297801F60(v14);
}

uint64_t sub_297804E2C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v15 = 0;
  sub_2978036E0(v12, a1);
  v13 = sub_297807130(v12, &v15);
  v14 = v10;
  if (sub_297805430(&v13))
  {
    return sub_297805440(a5, v13, v14);
  }

  sub_297804EF0(v15, a1, a2, a2, 0, a3, a4, a5);
  return close(v15);
}

uint64_t sub_297804EF0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  if ((atomic_load_explicit(&qword_2A13A2738, memory_order_acquire) & 1) == 0)
  {
    v36 = a3;
    v34 = __cxa_guard_acquire(&qword_2A13A2738);
    a3 = v36;
    if (v34)
    {
      v35 = sub_2978085F0();
      dword_2A13A2730 = sub_2977FB7B8(v35);
      __cxa_guard_release(&qword_2A13A2738);
      a3 = v36;
    }
  }

  if (a4 == -1)
  {
    a4 = a3;
    if (a3 == -1)
    {
      sub_297805504(v43);
      v41 = sub_297807698(a1, v43);
      v42 = v29;
      if (sub_297805430(&v41))
      {
        v26 = v41;
        v27 = v42;
        v25 = a8;
        return sub_297805440(v25, v26, v27);
      }

      v31 = sub_297805508(v43);
      if (v31 != 2 && v31 != 5)
      {
        sub_2977FB7B4(v40, a2);
        return sub_2978051E4();
      }

      a4 = sub_297805510(v43);
      a3 = a4;
    }
  }

  if (sub_297805518(a1, a3, a4, a5, a6, dword_2A13A2730, a7))
  {
    sub_2978055DC(v43);
    sub_2977FB7B4(v40, a2);
    sub_2977FB7C0(&v41, v40[0], v40[1]);
    v15 = sub_297804A68(48, &v41);
    sub_2978055E0(v15, a6, a1, a4, a5, *&v43[0], *(&v43[0] + 1));
    sub_2977FDEF4(&v39, v15);
    if (!sub_297805430(v43))
    {
      sub_2978055E4(v38, &v39);
      sub_2978055E8(a8, v38);
      sub_29780548C(v38);
      v28 = &v39;
      return sub_29780548C(v28);
    }

    sub_29780548C(&v39);
  }

  sub_2977FB7B4(v43, a2);
  v16 = sub_297804B48(a4, *&v43[0], *(&v43[0] + 1));
  if (!v16)
  {
    v22 = sub_2978055EC(12);
    v24 = v23;
    v25 = a8;
    v26 = v22;
    v27 = v24;
    return sub_297805440(v25, v26, v27);
  }

  sub_2977FDEF4(&v41, v16);
  v17 = sub_2977FB720(&v41);
  v18 = sub_2977FB7B8(v17);
  if (!a4)
  {
LABEL_25:
    sub_2978055E4(v37, &v41);
    sub_2978055E8(a8, v37);
    sub_29780548C(v37);
    goto LABEL_26;
  }

  v19 = v18;
  v20 = a4 + a5;
  while (1)
  {
    v21 = pread(a1, v19, a4, v20 - a4);
    if (v21 == -1)
    {
      break;
    }

    if (!v21)
    {
      bzero(v19, a4);
      goto LABEL_25;
    }

    a4 -= v21;
    v19 += v21;
LABEL_14:
    if (!a4)
    {
      goto LABEL_25;
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_14;
  }

  v32 = *__error();
  v33 = std::generic_category();
  sub_29780562C(v43, v32, v33);
  sub_297805440(a8, *&v43[0], *(&v43[0] + 1));
LABEL_26:
  v28 = &v41;
  return sub_29780548C(v28);
}

uint64_t sub_2978051E4()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  sub_297805920(v20);
  while (1)
  {
    v8 = sub_2977FD0D4(v20);
    sub_297805924(v20, v8 + 0x4000);
    v9 = sub_2977FB7B8(v20);
    v10 = read(v5, v9, 0x4000uLL);
    if (v10 == -1)
    {
      break;
    }

    v11 = sub_2977FD0D4(v20);
    sub_297805978(v20, v11 + v10);
LABEL_5:
    if (!v10)
    {
      v12 = sub_2978059B8(v20);
      v14 = sub_297804AC0(v12, v13, v4, v2);
      sub_2977FDEF4(v19, v14);
      sub_2978055E4(&v18, v19);
      sub_2978055E8(v7, &v18);
      sub_29780548C(&v18);
      sub_29780548C(v19);
      return sub_297801F60(v20);
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_5;
  }

  v15 = *__error();
  v16 = std::generic_category();
  sub_29780562C(v19, v15, v16);
  sub_297805440(v7, v19[0], v19[1]);
  return sub_297801F60(v20);
}

uint64_t sub_297805334(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_2978059FC(a1);
  sub_2977FB7C0(&v4, v1, v2);
  return v4;
}

void *sub_297805380(void *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  *sub_2978053F8(a1) = &unk_2A1E548E8;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB728(v7);
  sub_2978049FC(a1, v4, v5);
  return a1;
}

uint64_t sub_297805444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) |= 1u;
  v6 = nullsub_1(a1, a2);
  *v6 = a2;
  v6[1] = a3;
  return a1;
}

uint64_t *sub_2978054BC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978054D4(result, v3);
  }

  return result;
}

uint64_t sub_2978054D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

BOOL sub_297805518(int a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, unsigned int a6, char a7)
{
  if (a7)
  {
    return 0;
  }

  v19 = v7;
  v20 = v8;
  result = (a3 & 0xFFFFFFFFFFFFC000) != 0 && a6 <= a3;
  if (result && a5 != 0)
  {
    if (a2 == -1)
    {
      sub_297805504(v18);
      v17[0] = sub_297807698(a1, v18);
      v17[1] = v16;
      if (sub_297805430(v17))
      {
        return 0;
      }

      a2 = sub_297805510(v18);
    }

    return a4 + a3 == a2 && (a2 & (a6 - 1)) != 0;
  }

  return result;
}

uint64_t sub_2978055EC(int a1)
{
  v2 = std::generic_category();
  sub_29780562C(&v4, a1, v2);
  return v4;
}

double sub_297805630(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0xFFFF00000000;
  return result;
}

uint64_t sub_29780564C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = std::system_category();
  return a1;
}

void *sub_29780567C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a6;
  v17[1] = a7;
  v11 = sub_2978053F8(a1);
  *v11 = &unk_2A1E54918;
  v12 = v11 + 3;
  v13 = sub_297805750(a4, a5);
  v14 = sub_297805784(a5);
  sub_297807894(v12, a3, 0, 0, v13, v14, v17);
  if (!sub_297805430(v17))
  {
    v15 = sub_2978057B4(a1, a5);
    sub_2978049FC(a1, v15, v15 + a4);
  }

  return a1;
}

void sub_2978057F4()
{
  v0 = sub_2978057F0();

  j__free(v0);
}

void *sub_29780582C(void *a1)
{
  *a1 = &unk_2A1E54918;
  sub_2978078CC(a1 + 3);
  return a1;
}

uint64_t *sub_297805870(uint64_t *a1, uint64_t *a2)
{
  *a1 = sub_2978058AC(a2);
  nullsub_1(a2, v4);
  return a1;
}

uint64_t sub_2978058AC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  return v1;
}

uint64_t sub_2978058BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) &= ~1u;
  v4 = nullsub_1(a1, a2);
  v6 = nullsub_1(a2, v5);
  sub_2978055E4(v4, v6);
  return a1;
}

uint64_t sub_297805914(uint64_t result, int a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

char *sub_297805924(const void **a1, unsigned int a2)
{
  result = sub_2978059C8(a1);
  if (result < a2)
  {

    return sub_2977FD5B8(a1, a2);
  }

  return result;
}

uint64_t sub_297805978(uint64_t a1, unsigned int a2)
{
  v3 = sub_2977FB720(a1) + a2;

  return sub_2977FD5DC(a1, v3);
}

pthread_mutex_t **sub_297805A08(pthread_mutex_t **a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  v4 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  pthread_mutexattr_init(&v8);
  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  pthread_mutexattr_settype(&v8, v5);
  pthread_mutex_init(v4, &v8);
  pthread_mutexattr_destroy(&v8);
  *a1 = v4;
  v6 = *MEMORY[0x29EDCA608];
  return a1;
}

pthread_mutex_t **sub_297805AC0(pthread_mutex_t **a1)
{
  v2 = *a1;
  pthread_mutex_destroy(*a1);
  free(v2);
  return a1;
}

uint64_t sub_297805B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_297805B90(a3);
  *a3 = a1;
  a3[1] = a2;
  result = sub_297805B94(a1, a2);
  a3[2] = result;
  a3[3] = v7;
  a3[4] = 0;
  return result;
}

uint64_t sub_297805B94(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  if (sub_297806914(v10))
  {
    return v10[0];
  }

  if (sub_2977FB7B8(v10) >= 3)
  {
    v3 = sub_297803A20(v10, 0);
    if (sub_297805E98(v3))
    {
      v4 = sub_297803A20(v10, 0);
      if (v4 == sub_297803A20(v10, 1))
      {
        v5 = sub_297803A20(v10, 2);
        if (!sub_297805E98(v5))
        {
          v8 = 2;
          goto LABEL_14;
        }
      }
    }
  }

  v6 = sub_297803A20(v10, 0);
  if (!sub_297805E98(v6))
  {
    sub_2977FB7B4(v9, "..");
    if (sub_297807C54(v10, v9[0], v9[1]))
    {
      v7 = 2;
      return sub_297805EA4(v10, 0, v7);
    }

    if (sub_297803A20(v10, 0) != 46)
    {
      v8 = 0;
LABEL_14:
      v7 = sub_297805F10(v10, 0x2Fu, v8);
      return sub_297805EA4(v10, 0, v7);
    }
  }

  v7 = 1;
  return sub_297805EA4(v10, 0, v7);
}

uint64_t sub_297805CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v5 = a1;
  *(&v5 + 1) = a2;
  sub_297805B90(a3);
  *a3 = v5;
  result = sub_2977FB7B8(&v5);
  a3[4] = result;
  return result;
}

uint64_t *sub_297805D0C(uint64_t *a1)
{
  v2 = a1[4] + sub_2977FB7B8((a1 + 2));
  a1[4] = v2;
  if (v2 != sub_2977FB7B8(a1))
  {
    if (sub_2977FB7B8((a1 + 2)) >= 3 && (v3 = sub_297803A20(a1 + 2, 0), sub_297805E98(v3)) && (v4 = sub_297803A20(a1 + 2, 1), v4 == sub_297803A20(a1 + 2, 0)))
    {
      v5 = sub_297803A20(a1 + 2, 2);
      v6 = !sub_297805E98(v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_297803A20(a1, a1[4]);
    if (sub_297805E98(v7))
    {
      v8 = a1[4];
      v9 = a1;
      if (v6)
      {
        v10 = sub_297805EA4(a1, a1[4], 1uLL);
LABEL_18:
        a1[2] = v10;
        a1[3] = v11;
        return a1;
      }

      while (v8 != sub_2977FB7B8(v9))
      {
        v12 = sub_297803A20(a1, a1[4]);
        if (!sub_297805E98(v12))
        {
          break;
        }

        v8 = a1[4] + 1;
        a1[4] = v8;
        v9 = a1;
      }

      v13 = a1[4];
      if (v13 == sub_2977FB7B8(a1))
      {
        --a1[4];
        sub_2977FB7B4(&v16, ".");
        goto LABEL_3;
      }
    }

    v14 = sub_297805F10(a1, 0x2Fu, a1[4]);
    v10 = sub_297804564(a1, a1[4], v14);
    goto LABEL_18;
  }

  sub_297804560(&v16);
LABEL_3:
  *(a1 + 1) = v16;
  return a1;
}

uint64_t sub_297805EA4(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_2978045D4(a2, a1[1]);
  v6 = *a1;
  v7 = sub_2978045D4(a3, a1[1] - v5);
  sub_2977FB7C0(&v9, v6 + v5, v7);
  return v9;
}

double sub_297805F70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  sub_297805B90(v6);
  v6[0] = v8;
  v7 = sub_2977FB7B8(&v8);
  sub_297805FD0(v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_297805FD0(uint64_t a1)
{
  v2 = sub_2978060DC(*a1, *(a1 + 8));
  v3 = *(a1 + 32);
  if (v3 == sub_2977FB7B8(a1) && sub_2977FB7B8(a1) > v2 + 1 && (v4 = sub_297803A20(a1, *(a1 + 32) - 1), sub_297805E98(v4)))
  {
    --*(a1 + 32);
    sub_2977FB7B4(&v14, ".");
    *(a1 + 16) = v14;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v2 + 1;
    do
    {
      v7 = v5;
      if (!v5)
      {
        break;
      }

      if (v6 == v5)
      {
        break;
      }

      --v5;
      v8 = sub_297803A20(a1, v7 - 1);
    }

    while (sub_297805E98(v8));
    v9 = sub_297805EA4(a1, 0, v7);
    v11 = sub_2978061E8(v9, v10);
    *(a1 + 16) = sub_297804564(a1, v11, v7);
    *(a1 + 24) = v12;
    *(a1 + 32) = v11;
  }

  return a1;
}

unint64_t sub_2978060DC(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  if (sub_2977FB7B8(v10) == 2)
  {
    v2 = sub_297803A20(v10, 0);
    if (sub_297805E98(v2))
    {
      v3 = sub_297803A20(v10, 0);
      if (v3 == sub_297803A20(v10, 1))
      {
        return -1;
      }
    }
  }

  if (sub_2977FB7B8(v10) >= 4)
  {
    v4 = sub_297803A20(v10, 0);
    if (sub_297805E98(v4))
    {
      v5 = sub_297803A20(v10, 0);
      if (v5 == sub_297803A20(v10, 1))
      {
        v6 = sub_297803A20(v10, 2);
        if (!sub_297805E98(v6))
        {
          return sub_297805F10(v10, 0x2Fu, 2uLL);
        }
      }
    }
  }

  if (!sub_2977FB7B8(v10))
  {
    return -1;
  }

  v7 = sub_297803A20(v10, 0);
  v8 = sub_297805E98(v7);
  result = 0;
  if (!v8)
  {
    return -1;
  }

  return result;
}

uint64_t sub_2978061E8(uint64_t a1, uint64_t a2)
{
  v11[0] = a1;
  v11[1] = a2;
  if (sub_2977FB7B8(v11) == 2)
  {
    v2 = sub_297803A20(v11, 0);
    if (sub_297805E98(v2))
    {
      v3 = sub_297803A20(v11, 0);
      if (v3 == sub_297803A20(v11, 1))
      {
        return 0;
      }
    }
  }

  if (sub_2977FB7B8(v11))
  {
    v4 = sub_2977FB7B8(v11);
    v5 = sub_297803A20(v11, v4 - 1);
    if (sub_297805E98(v5))
    {
      return sub_2977FB7B8(v11) - 1;
    }
  }

  v7 = sub_2977FB7B8(v11);
  v8 = sub_297806AF0(v11, 0x2Fu, v7 - 1);
  if (v8 == -1)
  {
    return 0;
  }

  v9 = v8;
  if (v8 == 1 && (v10 = sub_297803A20(v11, 0), sub_297805E98(v10)))
  {
    return 0;
  }

  else
  {
    return v9 + 1;
  }
}

uint64_t sub_2978062DC(uint64_t a1, uint64_t a2)
{
  v25[0] = a1;
  v25[1] = a2;
  sub_297805B40(a1, a2, v23);
  v21[0] = v23[0];
  v21[1] = v23[1];
  v22 = v24;
  sub_297805CC4(a1, a2, v20);
  if (!sub_297806444(v23, v20))
  {
    goto LABEL_10;
  }

  v4 = sub_297806460(v23);
  if (sub_2977FB7B8(v4) < 3 || (v5 = sub_297806460(v23), v6 = sub_297803A20(v5, 0), !sub_297805E98(v6)) || (v7 = sub_297806460(v23), v8 = sub_297803A20(v7, 1), v9 = sub_297806460(v23), v8 != sub_297803A20(v9, 0)))
  {
    v17 = sub_297806460(v23);
    v18 = sub_297803A20(v17, 0);
    if (sub_297805E98(v18))
    {
      return *sub_297806460(v23);
    }

LABEL_10:
    sub_297804560(&v26);
    return v26;
  }

  sub_297805D0C(v21);
  if (!sub_297806444(v21, v20))
  {
    return *sub_297806460(v23);
  }

  v10 = sub_297806460(v21);
  v11 = sub_297803A20(v10, 0);
  if (!sub_297805E98(v11))
  {
    return *sub_297806460(v23);
  }

  v12 = sub_297806460(v23);
  v13 = sub_2977FB7B8(v12);
  v14 = sub_297806460(v21);
  v15 = sub_2977FB7B8(v14);
  *&v26 = sub_297805EA4(v25, 0, v15 + v13);
  *(&v26 + 1) = v16;
  return v26;
}

uint64_t sub_297806468(uint64_t a1, uint64_t a2)
{
  sub_297805B40(a1, a2, v12);
  sub_297805CC4(a1, a2, v11);
  if (sub_297806444(v12, v11) && (v4 = sub_297806460(v12), sub_2977FB7B8(v4) >= 3) && (v5 = sub_297806460(v12), v6 = sub_297803A20(v5, 0), sub_297805E98(v6)) && (v7 = sub_297806460(v12), v8 = sub_297803A20(v7, 1), v9 = sub_297806460(v12), v8 == sub_297803A20(v9, 0)))
  {
    return *sub_297806460(v12);
  }

  else
  {
    sub_297804560(&v13);
  }

  return v13;
}

uint64_t sub_297806534(uint64_t a1, uint64_t a2)
{
  sub_297805B40(a1, a2, v19);
  v17[0] = v19[0];
  v17[1] = v19[1];
  v18 = v20;
  sub_297805CC4(a1, a2, v16);
  if (!sub_297806444(v19, v16))
  {
    goto LABEL_11;
  }

  v4 = sub_297806460(v19);
  if (sub_2977FB7B8(v4) < 3 || (v5 = sub_297806460(v19), v6 = sub_297803A20(v5, 0), !sub_297805E98(v6)) || (v7 = sub_297806460(v19), v8 = sub_297803A20(v7, 1), v9 = sub_297806460(v19), v8 != sub_297803A20(v9, 0)))
  {
    v13 = sub_297806460(v19);
    v14 = sub_297803A20(v13, 0);
    if (sub_297805E98(v14))
    {
      v12 = v19;
      return *sub_297806460(v12);
    }

LABEL_11:
    sub_297804560(&v21);
    return v21;
  }

  sub_297805D0C(v17);
  if (!sub_297806444(v17, v16))
  {
    goto LABEL_11;
  }

  v10 = sub_297806460(v17);
  v11 = sub_297803A20(v10, 0);
  if (!sub_297805E98(v11))
  {
    goto LABEL_11;
  }

  v12 = v17;
  return *sub_297806460(v12);
}

uint64_t sub_297806664(const void **a1, char **a2, char **a3, char **a4, char **a5)
{
  v36 = *MEMORY[0x29EDCA608];
  sub_2978068F8(v34);
  sub_2978068F8(v33);
  sub_2978068F8(v32);
  sub_2978068F8(v31);
  sub_2978068FC(v35);
  if (!sub_297806900(a2))
  {
    *&v30 = sub_297812A04(a2, v34);
    *(&v30 + 1) = v10;
    sub_297803F88(v35, &v30);
  }

  if (!sub_297806900(a3))
  {
    *&v30 = sub_297812A04(a3, v33);
    *(&v30 + 1) = v11;
    sub_297803F88(v35, &v30);
  }

  if (!sub_297806900(a4))
  {
    *&v30 = sub_297812A04(a4, v32);
    *(&v30 + 1) = v12;
    sub_297803F88(v35, &v30);
  }

  if (!sub_297806900(a5))
  {
    *&v30 = sub_297812A04(a5, v31);
    *(&v30 + 1) = v13;
    sub_297803F88(v35, &v30);
  }

  v14 = sub_2977FB720(v35);
  v15 = sub_2977FB7B8(v35);
  if (v14 != v15)
  {
    v16 = v15;
    do
    {
      if (sub_297806904(a1))
      {
        v17 = 0;
      }

      else
      {
        v18 = sub_2977FD0D4(a1);
        v19 = sub_2977FD108(a1, v18 - 1);
        v17 = sub_297805E98(*v19);
      }

      if (sub_297806914(v14))
      {
        v20 = 0;
      }

      else
      {
        v21 = sub_297803A20(v14, 0);
        v20 = sub_297805E98(v21);
      }

      sub_2978036E8(&v30, v14);
      v22 = sub_297806924(&v30);
      if (v17)
      {
        v23 = sub_29780F944(v14, 0x2Fu, 0);
        *&v30 = sub_297805EA4(v14, v23, 0xFFFFFFFFFFFFFFFFLL);
        *(&v30 + 1) = v24;
        v25 = sub_2977FB720(&v30);
        v26 = &v30;
      }

      else
      {
        if (!v20 && ((sub_297806904(a1) | v22) & 1) == 0)
        {
          sub_2977FCD50(a1, byte_2978F4DD8);
        }

        v25 = sub_2977FB720(v14);
        v26 = v14;
      }

      v27 = sub_2977FB728(v26);
      sub_2977FD4F8(a1, v25, v27);
      v14 += 2;
    }

    while (v14 != v16);
  }

  sub_2977FD134(v35);
  sub_297801F60(v31);
  sub_297801F60(v32);
  sub_297801F60(v33);
  result = sub_297801F60(v34);
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297806924(char **a1)
{
  sub_297806EC8(v7);
  v2 = sub_297812A04(a1, v7);
  v6[0] = sub_297806468(v2, v3);
  v6[1] = v4;
  LODWORD(a1) = sub_297806914(v6);
  sub_297801F60(v7);
  return a1 ^ 1;
}

uint64_t sub_297806980(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = sub_2978069CC(a1, a2);
  if (v2 != -1)
  {
    return sub_297805EA4(v4, 0, v2);
  }

  sub_297804560(&v5);
  return v5;
}

uint64_t sub_2978069CC(uint64_t a1, uint64_t a2)
{
  v13[0] = a1;
  v13[1] = a2;
  v2 = sub_2978061E8(a1, a2);
  if (sub_2977FB7B8(v13))
  {
    v3 = sub_297803A20(v13, v2);
    v4 = !sub_297805E98(v3);
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_297805EA4(v13, 0, v2);
  v7 = sub_2978060DC(v5, v6);
  do
  {
    v8 = v2;
    if (!v2)
    {
      break;
    }

    if (v7 + 1 == v2)
    {
      break;
    }

    --v2;
    v9 = sub_297803A20(v13, v8 - 1);
  }

  while (sub_297805E98(v9));
  if (v8 != 1 || v7 != 0 || v4)
  {
    return v8;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_297806A8C(uint64_t a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FD0D4(a1);
  sub_2977FB7C0(v5, v2, v3);
  result = sub_2978069CC(v5[0], v5[1]);
  if (result != -1)
  {
    return sub_297805978(a1, result);
  }

  return result;
}

unint64_t sub_297806AF4(uint64_t *a1, void *a2)
{
  sub_2977FD800(a2);
  sub_297812A78(a1);

  return sub_297806B40(a2);
}

unint64_t sub_297806B40(uint64_t a1)
{
  v2 = sub_2977FB720(a1);
  result = sub_2977FB7B8(a1);
  if (v2 < result)
  {
    do
    {
      if (*v2 == 92)
      {
        v4 = v2 + 1;
        if ((v2 + 1) < result && *v4 == 92)
        {
          goto LABEL_7;
        }

        *v2 = 47;
      }

      v4 = v2;
LABEL_7:
      v2 = v4 + 1;
    }

    while ((v4 + 1) < result);
  }

  return result;
}

uint64_t sub_297806BB4(uint64_t a1, uint64_t a2)
{
  sub_297805F70(a1, a2, v5);
  v2 = sub_297806460(v5);
  v3 = v2[1];
  return *v2;
}

uint64_t sub_297806BE8(uint64_t a1, uint64_t a2)
{
  v12 = sub_297806BB4(a1, a2);
  v13 = v2;
  v3 = sub_297806AF0(&v12, 0x2Eu, 0xFFFFFFFFFFFFFFFFLL);
  if (v3 == -1)
  {
    return v12;
  }

  v4 = v3;
  if (sub_2977FB7B8(&v12) == 1)
  {
    v5 = v12;
    v6 = v13;
    sub_2977FB7B4(&v10, ".");
    if (sub_297804D28(v5, v6, v10, v11))
    {
      return v12;
    }
  }

  if (sub_2977FB7B8(&v12) == 2 && (v7 = v12, v8 = v13, sub_2977FB7B4(&v10, ".."), sub_297804D28(v7, v8, v10, v11)))
  {
    return v12;
  }

  else
  {
    return sub_297805EA4(&v12, 0, v4);
  }
}

uint64_t sub_297806CC0(uint64_t a1, uint64_t a2)
{
  v13 = sub_297806BB4(a1, a2);
  v14 = v2;
  v3 = sub_297806AF0(&v13, 0x2Eu, 0xFFFFFFFFFFFFFFFFLL);
  if (v3 == -1 || (v4 = v3, sub_2977FB7B8(&v13) == 1) && (v5 = v13, v6 = v14, sub_2977FB7B4(&v11, "."), sub_297804D28(v5, v6, v11, v12)) || sub_2977FB7B8(&v13) == 2 && (v7 = v13, v8 = v14, sub_2977FB7B4(&v11, ".."), sub_297804D28(v7, v8, v11, v12)))
  {
    sub_297804560(v15);
  }

  else
  {
    v15[0] = sub_297805EA4(&v13, v4, 0xFFFFFFFFFFFFFFFFLL);
    v15[1] = v9;
  }

  return v15[0];
}

unint64_t sub_297806DA4(const void **a1, unsigned int a2)
{
  v3 = a2;
  if (sub_2977FD0D4(a1) <= a2)
  {
    result = sub_2977FD0D4(a1);
    if (result >= v3)
    {
      return result;
    }

    if (sub_2978059C8(a1) < v3)
    {
      sub_2977FD5B8(a1, v3);
    }

    v7 = sub_2977FB7B8(a1);
    v8 = (sub_2977FB720(a1) + v3);
    if (v7 != v8)
    {
      bzero(v7, v8 - v7);
    }
  }

  else
  {
    v4 = sub_2977FB720(a1);
    v5 = sub_2977FB7B8(a1);
    nullsub_1(v4 + v3, v5);
  }

  v9 = sub_2977FB720(a1) + v3;

  return sub_2977FD5DC(a1, v9);
}

uint64_t sub_297806E8C(uint64_t a1)
{
  v2 = sub_2977FB7B8(a1) - 1;

  return sub_2977FD5DC(a1, v2);
}

uint64_t sub_297806ECC(char **a1)
{
  sub_297806EC8(v7);
  v2 = sub_297812A04(a1, v7);
  v6[0] = sub_297806534(v2, v3);
  v6[1] = v4;
  LODWORD(a1) = sub_297806914(v6);
  sub_297801F60(v7);
  return a1 ^ 1;
}

uint64_t sub_297806F28(char **a1)
{
  sub_297806EC8(v7);
  v2 = sub_297812A04(a1, v7);
  v6[0] = sub_297806980(v2, v3);
  v6[1] = v4;
  LODWORD(a1) = sub_297806914(v6);
  sub_297801F60(v7);
  return a1 ^ 1;
}

uint64_t sub_297806F84(char **a1)
{
  sub_297806EC8(v7);
  v6[0] = sub_297812A04(a1, v7);
  v6[1] = v2;
  sub_2978036E8(v5, v6);
  v3 = sub_297806ECC(v5);
  sub_297801F60(v7);
  return v3;
}

uint64_t sub_297807004(uint64_t *a1, uint64_t *a2)
{
  sub_297805504(v8);
  *&v7 = sub_297807078(a1, v8);
  *(&v7 + 1) = v4;
  if (sub_297805430(&v7))
  {
    return v7;
  }

  else
  {
    *a2 = sub_2978070F8(v8);
    a2[1] = v5;
    sub_2978055DC(&v9);
  }

  return v9;
}

uint64_t sub_297807078(uint64_t *a1, _OWORD *a2)
{
  sub_297806EC8(v11);
  v10[0] = sub_297812BF8(a1, v11);
  v10[1] = v4;
  v5 = sub_2977FB720(v10);
  v6 = stat(v5, &v9);
  v7 = sub_2978075A0(v6, &v9, a2);
  sub_297801F60(v11);
  return v7;
}

uint64_t sub_297807130(uint64_t *a1, int *a2)
{
  sub_297806EC8(v11);
  v10[0] = sub_297812BF8(a1, v11);
  v10[1] = v4;
  while (1)
  {
    v5 = sub_2977FB720(v10);
    v6 = open(v5, 0);
    *a2 = v6;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v7 = *__error();
      v8 = std::generic_category();
      sub_29780562C(&v12, v7, v8);
      goto LABEL_6;
    }
  }

  sub_2978055DC(&v12);
LABEL_6:
  sub_297801F60(v11);
  return v12;
}

uint64_t sub_2978071D0(uint64_t *a1, int *a2, char a3, uint64_t a4)
{
  if ((a3 & 8) != 0)
  {
    v7 = 514;
  }

  else
  {
    v7 = 513;
  }

  if ((a3 & 2) != 0)
  {
    v8 = 8;
  }

  else
  {
    v8 = 1024;
  }

  v9 = v8 & 0xFFFFF7FF | ((a3 & 1) << 11);
  sub_297806EC8(v18);
  v16 = sub_297812BF8(a1, v18);
  v17 = v10;
  while (1)
  {
    v11 = sub_2977FB720(&v16);
    v12 = open(v11, v9 | v7, a4, v16, v17);
    *a2 = v12;
    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v13 = *__error();
      v14 = std::generic_category();
      sub_29780562C(&v19, v13, v14);
      goto LABEL_12;
    }
  }

  sub_2978055DC(&v19);
LABEL_12:
  sub_297801F60(v18);
  return v19;
}

uint64_t sub_2978072A8(uint64_t a1, char **a2, __int128 *a3)
{
  v6 = sub_29780739C(a1);
  v7 = sub_2978073D8(a1);
  sub_297807420(v15, v6, v7);
  sub_297806A8C(v15);
  sub_2978036E0(&v14, &byte_2978FC3E5);
  sub_2978036E0(v13, &byte_2978FC3E5);
  sub_2978036E0(v12, &byte_2978FC3E5);
  sub_297806664(v15, a2, &v14.__r_.__value_.__l.__data_, v13, v12);
  v13[0] = sub_297801F10(v15);
  v13[1] = v8;
  sub_297801F5C(v13, &v14);
  sub_2978046C4(a1, &v14);
  std::string::~string(&v14);
  v9 = *a3;
  v10 = a3[1];
  *(a1 + 56) = a3[2];
  *(a1 + 40) = v10;
  *(a1 + 24) = v9;
  return sub_297801F60(v15);
}

uint64_t sub_29780739C(uint64_t a1)
{
  v2 = sub_2978033F0(a1);

  return sub_2978082EC(a1, v2);
}

uint64_t sub_2978073D8(uint64_t a1)
{
  v2 = sub_2978033F0(a1);
  v3 = v2 + sub_2978032A4(a1);

  return sub_2978082EC(a1, v3);
}

uint64_t sub_297807464(uint64_t a1)
{
  sub_2978074A4(&v3);
  sub_2978074A8(&v3, *(a1 + 16));
  return v3;
}

uint64_t sub_2978074A8(uint64_t result, uint64_t a2)
{
  *result = a2 - 946684800;
  *(result + 8) = 0;
  return sub_297810158(result);
}

uint64_t sub_2978074F0(uint64_t *a1, char *a2)
{
  sub_297806EC8(v11);
  v10[0] = sub_297812BF8(a1, v11);
  v10[1] = v4;
  v5 = sub_2977FB720(v10);
  if (access(v5, 0) == -1)
  {
    if (*__error() != 2)
    {
      v8 = *__error();
      v9 = std::generic_category();
      sub_29780562C(&v12, v8, v9);
      goto LABEL_6;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  *a2 = v6;
  sub_2978055DC(&v12);
LABEL_6:
  sub_297801F60(v11);
  return v12;
}

uint64_t sub_2978075A0(int a1, uint64_t a2, _OWORD *a3)
{
  if (a1)
  {
    v4 = *__error();
    v5 = std::generic_category();
    sub_29780562C(&v15, v4, v5);
    sub_29780712C(&v12, 2);
    v6 = sub_297807F18(&v15, &v12);
    sub_297808154(&v12, v6);
    v9 = v13;
    *a3 = v12;
    a3[1] = v9;
    a3[2] = v14;
  }

  else
  {
    v7 = *(a2 + 4);
    if ((v7 >> 12) == 7)
    {
      v8 = 9;
    }

    else
    {
      v8 = dword_2978F4DDC[(v7 >> 12) ^ 8];
    }

    sub_297808158(&v12, v8, v7, *a2, *(a2 + 8), *(a2 + 48), *(a2 + 16), *(a2 + 20), *(a2 + 96));
    v10 = v13;
    *a3 = v12;
    a3[1] = v10;
    a3[2] = v14;
    sub_2978055DC(&v15);
  }

  return v15;
}

uint64_t sub_2978076EC(uint64_t a1, int a2, char a3, off_t a4)
{
  v8 = sub_2978077EC(&v18, a2);
  if ((a3 & 1) == 0)
  {
    sub_2978077F0(v8);
  }

  if (fstat(a2, &v17) == -1)
  {
    goto LABEL_17;
  }

  st_size = v17.st_size;
  v10 = *(a1 + 8);
  if (v10)
  {
    if (v17.st_size < v10)
    {
      if (ftruncate(a2, v10) == -1)
      {
LABEL_17:
        v14 = *__error();
        v15 = std::generic_category();
        sub_29780562C(&v19, v14, v15);
        goto LABEL_18;
      }

      v10 = *(a1 + 8);
    }
  }

  else
  {
    *(a1 + 8) = v17.st_size;
    v10 = st_size;
  }

  if (*a1 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*a1)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = mmap(0, v10, v12, v11, a2, a4);
  *(a1 + 16) = v13;
  if (v13 == -1)
  {
    goto LABEL_17;
  }

  sub_2978055DC(&v19);
LABEL_18:
  sub_2978077FC(&v18);
  return v19;
}

uint64_t sub_297807800(uint64_t a1, int a2, char a3, int a4, unint64_t a5, off_t a6, uint64_t a7)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = 0;
  if (sub_2978027E0() >= a5)
  {
    *a7 = sub_2978076EC(a1, a2, a3, a6);
    *(a7 + 8) = v13;
    if (sub_297805430(a7))
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *a7 = sub_2978055EC(22);
    *(a7 + 8) = v12;
  }

  return a1;
}

uint64_t sub_297807898(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    munmap(v2, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_2978078EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297807A08(v15, a2, a3);
  v4 = sub_297807A0C(v15);
  v5 = opendir(v4);
  if (v5)
  {
    *(a1 + 8) = v5;
    sub_2978036E0(&v12, ".");
    sub_2978036E0(v11, &byte_2978FC3E5);
    sub_2978036E0(v14, &byte_2978FC3E5);
    sub_2978036E0(v13, &byte_2978FC3E5);
    sub_297806664(v15, &v12.__r_.__value_.__l.__data_, v11, v14, v13);
    v13[0] = sub_297801F10(v15);
    v13[1] = v6;
    sub_2978036E8(v14, v13);
    sub_297805504(v11);
    sub_297807A50(&v12, v14, v11);
    sub_297807A54(a1 + 16, &v12);
    j_std::string::~string(&v12);
    v16[0] = sub_297807A98(a1);
    v16[1] = v7;
  }

  else
  {
    v8 = *__error();
    v9 = std::generic_category();
    sub_29780562C(v16, v8, v9);
  }

  sub_297801F60(v15);
  return v16[0];
}

uint64_t sub_297807A0C(uint64_t a1)
{
  v3 = 0;
  sub_2977FCD50(a1, &v3);
  sub_297806E8C(a1);
  return sub_297803A7C(a1);
}

uint64_t sub_297807A54(uint64_t a1, uint64_t a2)
{
  sub_2978046C4(a1, a2);
  v4 = *(a2 + 56);
  v5 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v5;
  *(a1 + 56) = v4;
  return a1;
}

uint64_t sub_297807A98(uint64_t a1)
{
  *__error() = 0;
  v2 = readdir(*(a1 + 8));
  if (v2)
  {
    v3 = v2;
    v4 = strlen(v2->d_name);
    v5 = sub_2977FB7C0(v13, v3->d_name, v4);
    if (sub_2977FB7B8(v5) == 1 && sub_297803A20(v13, 0) == 46 || sub_2977FB7B8(v13) == 2 && sub_297803A20(v13, 0) == 46 && sub_297803A20(v13, 1) == 46)
    {
      v6 = sub_297807A98(a1);
LABEL_12:
      v14[0] = v6;
      v14[1] = v7;
      return v14[0];
    }

    sub_2978036E8(v12, v13);
    sub_297805504(v11);
    sub_2978072A8(a1 + 16, v12, v11);
    sub_2978055DC(v14);
  }

  else
  {
    if (!*__error())
    {
      v6 = sub_297807BC0(a1);
      goto LABEL_12;
    }

    v8 = *__error();
    v9 = std::generic_category();
    sub_29780562C(v14, v8, v9);
  }

  return v14[0];
}

uint64_t sub_297807BC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    closedir(v2);
  }

  *(a1 + 8) = 0;
  sub_297807C20(&v4);
  sub_297807A54(a1 + 16, &v4);
  j_std::string::~string(&v4);
  sub_2978055DC(&v5);
  return v5;
}

void *sub_297807C24(void *a1)
{
  v2 = sub_297804560(a1);
  sub_297804560(v2 + 2);
  return a1;
}

BOOL sub_297807C90(uint64_t a1)
{
  if (sub_297807CDC(a1))
  {
    return 1;
  }

  return sub_297807CFC(a1);
}

uint64_t sub_297807D24(void *a1, unsigned __int8 a2, unint64_t a3)
{
  v4 = a2;
  v5 = sub_2978045D4(a3, a1[1]);
  while (v5)
  {
    result = v5 - 1;
    v7 = *(*a1 + v5-- - 1);
    if (v7 == v4)
    {
      return result;
    }
  }

  return -1;
}

const void **sub_297807D80(const void **a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = sub_2977FD0D4(a2);
    v5 = sub_2977FD0D4(a1);
    if (v5 >= v4)
    {
      if (v4)
      {
        sub_2977FB720(a2);
        sub_2977FB720(a2);
        sub_2977FB720(a1);
        v10 = sub_2977FD84C();
      }

      else
      {
        v10 = sub_2977FB720(a1);
      }

      v16 = v10;
      v17 = sub_2977FB7B8(a1);
      nullsub_1(v16, v17);
      v15 = a1;
      v14 = v16;
    }

    else
    {
      v6 = v5;
      if (sub_2978059C8(a1) >= v4)
      {
        if (v6)
        {
          sub_2977FB720(a2);
          sub_2977FB720(a2);
          sub_2977FB720(a1);
          sub_2977FD84C();
        }
      }

      else
      {
        v7 = sub_2977FB720(a1);
        v8 = sub_2977FB7B8(a1);
        nullsub_1(v7, v8);
        v9 = sub_2977FB720(a1);
        sub_2977FD5DC(a1, v9);
        sub_2977FD5B8(a1, v4);
        v6 = 0;
      }

      v11 = sub_2977FB720(a2);
      v12 = sub_2977FB7B8(a2);
      v13 = sub_2977FB720(a1);
      sub_297807F80((v11 + v6), v12, (v13 + v6));
      v14 = sub_2977FB720(a1) + v4;
      v15 = a1;
    }

    sub_2977FD5DC(v15, v14);
  }

  return a1;
}

BOOL sub_297807F18(unsigned int *a1, unsigned int *a2)
{
  v4 = sub_2977FB7B8(a1);
  v5 = sub_2977FB7B8(a2);
  result = sub_297807F98(v4, v5);
  if (result)
  {
    v7 = sub_2977FB5F0(a1);
    return v7 == sub_2977FB5F0(a2);
  }

  return result;
}

uint64_t sub_297807FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  if (sub_297807CDC(a1) || sub_297807CDC(a2))
  {

    return sub_2978080D8(a3, 0);
  }

  result = sub_297807CFC(v4);
  if (result)
  {
    *a3 = *a2;
    v7 = *(a2 + 16);
LABEL_10:
    *(a3 + 16) = v7;
    return result;
  }

  result = sub_297807CFC(a2);
  if (result)
  {
    *a3 = *v4;
    v7 = *(v4 + 16);
    goto LABEL_10;
  }

  if (sub_2978080DC(v4))
  {
    v8 = *v4;
    v9 = sub_297807D1C(v4);
    v4 = v8;
  }

  else
  {
    v9 = 2;
  }

  if (sub_2978080DC(a2))
  {
    v10 = *a2;
    v11 = sub_297807D1C(a2);
    a2 = v10;
  }

  else
  {
    v11 = 2;
  }

  return sub_29780811C(a3, v4, v9, a2, v11);
}

uint64_t sub_297808120(uint64_t result, char a2)
{
  *(result + 16) = a2;
  *(result + 17) = 1;
  return result;
}

uint64_t sub_297808138(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *result = a2;
  *(result + 8) = a4;
  *(result + 16) = a3;
  *(result + 17) = a5;
  return result;
}

uint64_t sub_297808148(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

double sub_297808164(uint64_t a1, int a2)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = a2;
  *(a1 + 44) = 0xFFFF;
  return result;
}

uint64_t sub_297808180(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  *result = a4;
  *(result + 8) = a5;
  *(result + 16) = a6;
  *(result + 24) = a7;
  *(result + 28) = a8;
  *(result + 32) = a9;
  *(result + 40) = a2;
  *(result + 44) = a3;
  return result;
}

int *sub_2978081A4(int *a1)
{
  v2 = *a1;
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return a1;
}

uint64_t sub_2978081D4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_297812960(a2, a1);
  v5 = *a3;
  v6 = a3[1];
  *(a1 + 56) = a3[2];
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  return a1;
}

uint64_t sub_29780821C(uint64_t a1)
{
  v2 = sub_297802744(a1);
  sub_297805504(v2 + 24);
  return a1;
}

uint64_t *sub_297808258(uint64_t *a1, int a2)
{
  *a1 = sub_2978055EC(a2);
  a1[1] = v3;
  return a1;
}

uint64_t sub_2978082A4(uint64_t a1, char *a2, char *a3)
{
  v6 = sub_2977FE408();
  sub_2977FD4F8(v6, a2, a3);
  return a1;
}

uint64_t sub_297808318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FE408();
  sub_297808360(v6, a2, a3);
  return a1;
}

uint64_t sub_297808360(const void **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_297808414(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > v7 - sub_2977FB7B8(a1))
  {
    v8 = sub_2977FD0D4(a1);
    sub_2977FD5B8(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_297808418(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_297808434(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return sub_297808460(&v3, &v4);
}

uint64_t sub_297808494(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = a2;
  v6 = a1;
  for (i = a3; sub_29780852C(&v6, &v5); ++i)
  {
    if (sub_2977FD678())
    {
      break;
    }

    *i = *sub_2977FB720(&v6);
    sub_297808548(&v6);
  }

  sub_2977FD680(&v7, &v6, &i);
  return v7;
}

uint64_t sub_297808598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB728(v7);
  return sub_2978082A4(a1, v4, v5);
}

uint64_t sub_2978085F0()
{
  v0 = 0x2A13A2000uLL;
  if ((atomic_load_explicit(&qword_2A13A2748, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A13A2748);
    v0 = 0x2A13A2000;
    if (v2)
    {
      v3 = sub_2977FA198(16);
      qword_2A13A2740 = sub_29780865C(v3);
      __cxa_guard_release(&qword_2A13A2748);
      v0 = 0x2A13A2000;
    }
  }

  return *(v0 + 1856);
}

uint64_t sub_297808684()
{
  v0 = 0x2A13A2000uLL;
  if ((atomic_load_explicit(&qword_2A13A2758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A2758))
  {
    v3 = sub_2977FA198(16);
    *v3 = sub_297810254();
    *(v3 + 8) = v4;
    qword_2A13A2750 = v3;
    v0 = 0x2A13A2000;
    __cxa_guard_release(&qword_2A13A2758);
  }

  v5 = sub_297810254();
  v6 = v1;
  return sub_297808A34(&v5, *(v0 + 1872));
}

uint64_t sub_29780871C(uint64_t *a1)
{
  v5 = 0;
  v4[0] = sub_2978074F0(a1, &v5);
  v4[1] = v1;
  v2 = sub_297805430(v4);
  return !v2 & v5;
}

uint64_t sub_297808788@<X0>(uint64_t a1@<X8>)
{
  getrusage(0, &v5);
  sub_297808A80(v4, v5.ru_utime.tv_sec, (1000 * v5.ru_utime.tv_usec));
  sub_297808A80(v3, v5.ru_stime.tv_sec, (1000 * v5.ru_stime.tv_usec));
  return sub_297804550(v4, v3, a1);
}

void *sub_297808820(void *a1)
{
  *sub_297808870(a1) = &unk_2A1E54948;
  a1[1] = j__getpagesize();
  return a1;
}

BOOL sub_2978088B4(int a1)
{
  result = sub_297808894(a1);
  if (result)
  {

    return sub_2978088FC(a1);
  }

  return result;
}

BOOL sub_2978088FC(int a1)
{
  if ((atomic_load_explicit(&qword_2A13A2770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A2770))
  {
    sub_2978035A4(&unk_2A13A2760, 1);
    __cxa_atexit(sub_2978035A8, &unk_2A13A2760, &dword_2977F7000);
    __cxa_guard_release(&qword_2A13A2770);
  }

  sub_2978035AC(&v7, &unk_2A13A2760);
  v6 = 0;
  v2 = setupterm(0, a1, &v6);
  v3 = 0;
  if (!v2)
  {
    v3 = tigetnum("colors") > 0;
    v4 = set_curterm(0);
    del_curterm(v4);
  }

  sub_2978035B0(&v7);
  return v3;
}

uint64_t sub_297808A34(uint64_t a1, uint64_t a2)
{
  sub_297808A80(&v3, *a1 - *a2, (*(a1 + 8) - *(a2 + 8)));
  sub_297810158(&v3);
  return v3;
}

uint64_t sub_297808A84(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_297810158(a1);
  return a1;
}

uint64_t sub_297808AB8(uint64_t a1, void *a2)
{
  v4 = sub_297808B34(&v8, a2);
  v5 = *(v4 + 16);
  *a1 = *v4;
  *(a1 + 16) = v5;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  nullsub_1(a2, 0);
  if ((sub_29780344C(a1) & 1) == 0)
  {
    v6 = sub_2978032A4(a1);
    nullsub_1(a1, v6);
  }

  return a1;
}

uint64_t sub_297808B34(uint64_t a1, uint64_t a2)
{
  if ((sub_29780344C(a2) & 1) == 0)
  {
    nullsub_1(a2, v3);
  }

  return a2;
}

uint64_t sub_297808B6C(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = j_j_nullsub_1(a1, a2);
  v8 = j_j_nullsub_1(a2, v7);
  v9 = sub_297808FD0(v6, v8, a3);
  return sub_2977FD98C(a1, v9);
}

unint64_t sub_297808C5C(unint64_t a1)
{
  if (a1 < 0x17)
  {
    return 22;
  }

  result = sub_297808D1C(a1 + 1);
  if (result != 24)
  {
    --result;
  }

  return result;
}

uint64_t sub_297808CCC(uint64_t a1, unint64_t a2)
{
  if (sub_2978027E0() < a2)
  {
    sub_29780339C();
  }

  return sub_297808D14(a2, 1);
}

uint64_t sub_297808D28@<X0>(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_29780493C(a1, a2);

  return sub_297808AB4(a3, v4);
}

uint64_t sub_297808D80@<X0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = std::string::append(a1, a2);

  return sub_297808AB4(a3, v4);
}

_BYTE *sub_297808DBC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2978032A4(a1);
  v7 = sub_297803510(a2);
  nullsub_1(a1, v8);
  nullsub_1(&v16, v9);
  v10 = sub_297808E78(a3, v7 + v6);
  v11 = sub_2978033F0(v10);
  v13 = nullsub_1(v11, v12);
  v14 = sub_2978037CC(a1);
  sub_297808CA4(v13, v14, v6);
  sub_297808CA4(&v13[v6], a2, v7);
  return sub_297808E7C(&v13[v6 + v7], 1, 0);
}

_BYTE *sub_297808E7C(_BYTE *a1, uint64_t a2, char a3)
{
  v5 = a3;
  sub_297808F70(a1, a2, &v5);
  return a1;
}