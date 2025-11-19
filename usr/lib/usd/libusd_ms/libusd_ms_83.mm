void sub_29A4E1CA0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1CDC(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E1CDC(uint64_t a1)
{
  sub_29A4E1D18(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E1D18(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E1D5C(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E1D5C(void **a1)
{
  v2 = a1 + 16;
  sub_29A012C90(&v2);
  v2 = a1 + 13;
  sub_29A012C90(&v2);
  v2 = a1 + 10;
  sub_29A012C90(&v2);
  v2 = a1 + 7;
  sub_29A012C90(&v2);
  v2 = a1 + 4;
  sub_29A012C90(&v2);
  v2 = a1 + 1;
  sub_29A012C90(&v2);
}

void sub_29A4E1DE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1E20(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E1E20(uint64_t a1)
{
  sub_29A4E1E5C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E1E5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E1EA0(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E1EA0(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 0;
        v7 = 152 * *a1;
        do
        {
          v8 = (v5 + v6 + 128);
          sub_29A1E234C(&v8);
          v8 = (v5 + v6 + 104);
          sub_29A1E234C(&v8);
          v8 = (v5 + v6 + 80);
          sub_29A1E234C(&v8);
          v8 = (v5 + v6 + 56);
          sub_29A1E234C(&v8);
          v8 = (v5 + v6 + 32);
          sub_29A1E234C(&v8);
          v8 = (v5 + v6 + 8);
          sub_29A1E234C(&v8);
          v6 += 152;
        }

        while (v7 != v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E1FAC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1FE8(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E1FE8(uint64_t a1)
{
  sub_29A4E2024(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2024(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E2068(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E2068(void **a1)
{
  v2 = a1 + 16;
  sub_29A1E234C(&v2);
  v2 = a1 + 13;
  sub_29A1E234C(&v2);
  v2 = a1 + 10;
  sub_29A1E234C(&v2);
  v2 = a1 + 7;
  sub_29A1E234C(&v2);
  v2 = a1 + 4;
  sub_29A1E234C(&v2);
  v2 = a1 + 1;
  sub_29A1E234C(&v2);
}

void sub_29A4E20F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E212C(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E212C(uint64_t a1)
{
  sub_29A4E2168(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2168(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E21AC(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E21AC(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 0;
        v7 = 152 * *a1;
        do
        {
          v8 = (v5 + v6 + 128);
          sub_29A2463D0(&v8);
          v8 = (v5 + v6 + 104);
          sub_29A2463D0(&v8);
          v8 = (v5 + v6 + 80);
          sub_29A2463D0(&v8);
          v8 = (v5 + v6 + 56);
          sub_29A2463D0(&v8);
          v8 = (v5 + v6 + 32);
          sub_29A2463D0(&v8);
          v8 = (v5 + v6 + 8);
          sub_29A2463D0(&v8);
          v6 += 152;
        }

        while (v7 != v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E22B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E22F4(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E22F4(uint64_t a1)
{
  sub_29A4E2330(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2330(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E2374(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E2374(void **a1)
{
  v2 = a1 + 16;
  sub_29A2463D0(&v2);
  v2 = a1 + 13;
  sub_29A2463D0(&v2);
  v2 = a1 + 10;
  sub_29A2463D0(&v2);
  v2 = a1 + 7;
  sub_29A2463D0(&v2);
  v2 = a1 + 4;
  sub_29A2463D0(&v2);
  v2 = a1 + 1;
  sub_29A2463D0(&v2);
}

void sub_29A4E23FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E2438(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E2438(uint64_t a1)
{
  sub_29A4E2474(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2474(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E24B8(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E24B8(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 152 * *a1;
        v7 = v5 + 80;
        do
        {
          v8 = *(v7 + 48);
          if (v8)
          {
            *(v7 + 56) = v8;
            operator delete(v8);
          }

          v9 = *(v7 + 24);
          if (v9)
          {
            *(v7 + 32) = v9;
            operator delete(v9);
          }

          v10 = *v7;
          if (*v7)
          {
            *(v7 + 8) = v10;
            operator delete(v10);
          }

          v11 = *(v7 - 24);
          if (v11)
          {
            *(v7 - 16) = v11;
            operator delete(v11);
          }

          v12 = *(v7 - 48);
          if (v12)
          {
            *(v7 - 40) = v12;
            operator delete(v12);
          }

          v13 = *(v7 - 72);
          if (v13)
          {
            *(v7 - 64) = v13;
            operator delete(v13);
          }

          v7 += 152;
          v6 -= 152;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E25B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E25EC(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E25EC(uint64_t a1)
{
  sub_29A4E2628(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2628(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E266C(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E266C(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;

    operator delete(v7);
  }
}

void sub_29A4E2704(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E2740(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E2740(uint64_t a1)
{
  sub_29A4E277C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E277C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E24B8(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E27C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E27FC(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E27FC(uint64_t a1)
{
  sub_29A4E2838(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2838(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E24B8(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E287C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E28B8(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E28B8(uint64_t a1)
{
  sub_29A4E28F4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E28F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E24B8(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E2938(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E2974(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E2974(uint64_t a1)
{
  sub_29A4E29B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E29B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E29F4(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E29F4(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 24 * *a1;
        do
        {
          v7 = v5;
          sub_29A1E234C(&v7);
          v5 += 3;
          v6 -= 24;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 2);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E2A9C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E2AD8(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E2AD8(uint64_t a1)
{
  sub_29A4E2B14(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2B14(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 16);
      sub_29A1E234C(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E2B68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E2BA4(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E2BA4(uint64_t a1)
{
  sub_29A4E2BE0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2BE0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E2C24(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E2C24(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 24 * *a1;
        do
        {
          v7 = v5;
          sub_29A124AB0(&v7);
          v5 += 3;
          v6 -= 24;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 2);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E2CCC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E2D08(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E2D08(uint64_t a1)
{
  sub_29A4E2D44(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2D44(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 16);
      sub_29A124AB0(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E2D98(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E2DD4(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E2DD4(uint64_t a1)
{
  sub_29A4E2E10(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2E10(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A213190((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E2E54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E2E90(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E2E90(uint64_t a1)
{
  sub_29A4E2ECC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2ECC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A213190((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E2F10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E2F4C(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E2F4C(uint64_t a1)
{
  sub_29A4E2F88(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E2F88(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A213190((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E2FCC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3008(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3008(uint64_t a1)
{
  sub_29A4E3044(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E3044(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E3088(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3088(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 24 * *a1;
        do
        {
          sub_29A01752C(v5, *(v5 + 8));
          v5 += 24;
          v6 -= 24;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E3128(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3164(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3164(uint64_t a1)
{
  sub_29A4E31A0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E31A0(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A01752C((v2 + 2), v2[3]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E31E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3224(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3224(uint64_t a1)
{
  sub_29A4E3260(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E3260(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E32A4(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E32A4(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 48 * *a1;
        v7 = (v5 + 16);
        do
        {
          v8 = v7;
          sub_29A1D0D38(&v8);
          sub_29A22B614(v7 - 1);
          v7 += 6;
          v6 -= 48;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E3358(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3394(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3394(uint64_t a1)
{
  sub_29A4E33D0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E33D0(uint64_t a1, atomic_uint *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 8);
      sub_29A1D0D38(&v4);
      sub_29A22B614(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3438(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3474(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3474(uint64_t a1)
{
  sub_29A4E34B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E34B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E34F4(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E34F4(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 48 * *a1;
        v7 = (v5 + 28);
        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7);
          sub_29A1DE3A4(v7 - 1);
          if (*(v7 - 5) < 0)
          {
            operator delete(*(v7 - 7));
          }

          v7 += 12;
          v6 -= 48;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E35AC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E35E8(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E35E8(uint64_t a1)
{
  sub_29A4E3624(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E3624(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E3668((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3668(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_29A4E36C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3700(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3700(uint64_t a1)
{
  sub_29A4E373C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E373C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E3780(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3780(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 24 * *a1;
        v7 = (v5 + 8);
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            *v7 = v8;
            operator delete(v8);
          }

          v7 += 3;
          v6 -= 24;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E3828(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4DE848(v3);

    operator delete(v4);
  }
}

void sub_29A4E3864(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E38A0(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E38A0(uint64_t a1)
{
  sub_29A4E38DC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E38DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E3780(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3920(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E395C(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E395C(uint64_t a1)
{
  sub_29A4E3998(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E3998(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E39DC(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E39DC(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 24 * *a1;
        do
        {
          v7 = v5;
          sub_29A012C90(&v7);
          v5 += 3;
          v6 -= 24;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 2);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E3A84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3AC0(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3AC0(uint64_t a1)
{
  sub_29A4E3AFC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E3AFC(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 16);
      sub_29A012C90(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3B50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3B8C(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3B8C(uint64_t a1)
{
  sub_29A4E3BC8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E3BC8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A213190((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3C0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3C48(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3C48(uint64_t a1)
{
  sub_29A4E3C84(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E3C84(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E3CC8(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3CC8(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 16 * *a1;
        do
        {
          v5 = sub_29A186B14(v5) + 16;
          v6 -= 16;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E3D5C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3D98(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3D98(uint64_t a1)
{
  sub_29A4E3DD4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E3DD4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E3CC8(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3E18(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E3E54(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E3E54(uint64_t a1)
{
  sub_29A4E3E90(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E3E90(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E3ED4(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E3ED4(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 0;
        v7 = 152 * *a1;
        do
        {
          v8 = (v5 + v6 + 128);
          sub_29A1D0D38(&v8);
          v8 = (v5 + v6 + 104);
          sub_29A1D0D38(&v8);
          v8 = (v5 + v6 + 80);
          sub_29A1D0D38(&v8);
          v8 = (v5 + v6 + 56);
          sub_29A1D0D38(&v8);
          v8 = (v5 + v6 + 32);
          sub_29A1D0D38(&v8);
          v8 = (v5 + v6 + 8);
          sub_29A1D0D38(&v8);
          v6 += 152;
        }

        while (v7 != v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E3FE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E401C(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E401C(uint64_t a1)
{
  sub_29A4E4058(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E4058(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E409C(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E409C(void **a1)
{
  v2 = a1 + 16;
  sub_29A1D0D38(&v2);
  v2 = a1 + 13;
  sub_29A1D0D38(&v2);
  v2 = a1 + 10;
  sub_29A1D0D38(&v2);
  v2 = a1 + 7;
  sub_29A1D0D38(&v2);
  v2 = a1 + 4;
  sub_29A1D0D38(&v2);
  v2 = a1 + 1;
  sub_29A1D0D38(&v2);
}

void sub_29A4E4124(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E4160(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E4160(uint64_t a1)
{
  sub_29A4E419C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E419C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E41E0(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E41E0(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 0;
        v7 = 152 * *a1;
        do
        {
          v8 = (v5 + v6 + 128);
          sub_29A24A5D0(&v8);
          v8 = (v5 + v6 + 104);
          sub_29A24A5D0(&v8);
          v8 = (v5 + v6 + 80);
          sub_29A24A5D0(&v8);
          v8 = (v5 + v6 + 56);
          sub_29A24A5D0(&v8);
          v8 = (v5 + v6 + 32);
          sub_29A24A5D0(&v8);
          v8 = (v5 + v6 + 8);
          sub_29A24A5D0(&v8);
          v6 += 152;
        }

        while (v7 != v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E42EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E4328(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E4328(uint64_t a1)
{
  sub_29A4E4364(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E4364(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E43A8(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E43A8(void **a1)
{
  v2 = a1 + 16;
  sub_29A24A5D0(&v2);
  v2 = a1 + 13;
  sub_29A24A5D0(&v2);
  v2 = a1 + 10;
  sub_29A24A5D0(&v2);
  v2 = a1 + 7;
  sub_29A24A5D0(&v2);
  v2 = a1 + 4;
  sub_29A24A5D0(&v2);
  v2 = a1 + 1;
  sub_29A24A5D0(&v2);
}

void sub_29A4E4430(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E446C(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E446C(uint64_t a1)
{
  sub_29A4E44A8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E44A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A213190((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E44EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E4528(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E4528(uint64_t a1)
{
  sub_29A4E4564(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E4564(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A219394(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E45A8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E45E4(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E45E4(uint64_t a1)
{
  sub_29A4E4620(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E4620(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A219848((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E4664(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E46A0(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E46A0(uint64_t a1)
{
  sub_29A4E46DC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E46DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E4720(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E4720(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 24 * *a1;
        do
        {
          v7 = v5;
          sub_29A23F9D4(&v7);
          v5 += 3;
          v6 -= 24;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 2);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E47C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E4804(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E4804(uint64_t a1)
{
  sub_29A4E4840(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E4840(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 16);
      sub_29A23F9D4(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E4894(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E48D0(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E48D0(uint64_t a1)
{
  sub_29A4E490C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E490C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E4950(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E4950(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 16 * *a1;
        v7 = (v5 + 8);
        do
        {
          if (*v7)
          {
            sub_29A014BEC(*v7);
          }

          v7 += 2;
          v6 -= 16;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E49F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4B1120(v3);

    operator delete(v4);
  }
}

void sub_29A4E4A2C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        sub_29A4E4AB4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A4E4AB4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  sub_29A1D0D38(&v3);
  sub_29A22B614((a2 + 16));
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29A4E4B0C(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_ullong **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 32) + ((*(a2 + 32) + *(a2 + 24) + (*(a2 + 32) + *(a2 + 24)) * (*(a2 + 32) + *(a2 + 24))) >> 1)));
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29A4E4D04(a1, v8, &v25);
  v14 = a1 + 16;
  if (a3)
  {
    a3[6] = v12;
    *a3 = 0;
  }

  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[6];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && v16[3] == *(v5 + 16) && v16[4] == *(v5 + 24) && v16[5] == *(v5 + 32))
        {
          if (a3)
          {
            tbb::internal::deallocate_via_handler_v3(a3, v13);
          }

          *a4 = v18;
          *(a4 + 8) = v14;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[6];
        v15 = v18;
      }
    }

    if (!a3)
    {
      v5 = 8;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_22;
      }
    }

    add_explicit = v16;
LABEL_22:
    if (v16 == add_explicit || add_explicit == a3)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v14;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v14;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void sub_29A4E4D04(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29A4E4DA0(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29A4E4DA0(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29A4E4DA0(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29A4E4E84(&v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

atomic_ullong *sub_29A4E4E84@<X0>(atomic_ullong **a1@<X1>, unint64_t a2@<X2>, atomic_ullong **a3@<X8>)
{
  i = **a1;
  result = tbb::internal::allocate_via_handler_v3(0x38);
  result[6] = a2;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v10 = *a1;
    *result = i;
    while (1)
    {
      v11 = i;
      atomic_compare_exchange_strong(v10, &v11, result);
      if (v11 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v10, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a1; ; *a1 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v9 = i[6];
      if (v9 > a2)
      {
        goto LABEL_3;
      }

      if (v9 == a2)
      {
        result = tbb::internal::deallocate_via_handler_v3(result, v8);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a3 = i;
  return result;
}

void *sub_29A4E4F44(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A4E518C(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A4E5174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4E5208(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4E518C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = *a3;
  sub_29A1E21F4(v8 + 4, v9);
  result = sub_29A1E2240(v8 + 5, v9 + 1);
  *(v8 + 6) = -1;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A4E5208(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4DE950(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A4E5264(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 8;
  do
  {
    v5 = v3[2];
    v6 = v3[4];
    v7 = v6 - v5 + 0x80000;
    if (v4 >= v7)
    {
      v8 = v6 - v5 + 0x80000;
    }

    else
    {
      v8 = v4;
    }

    v9 = v5 - v6;
    if ((v8 + v9) > v3[6])
    {
      v3[6] = v8 + v9;
    }

    result = memcpy((v3[5] + v9), __src, v8);
    v3[2] += v8;
    if (v7 <= v4)
    {
      result = sub_29A4DE434(v3);
    }

    __src += v8;
    v4 -= v8;
  }

  while (v4);
  return result;
}

uint64_t sub_29A4E5308(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = (*(**a1 + 16))(*a1);
  v7 = a1[2];
  if (v7 < 0 || v7 + a3 > v6)
  {
    v11[0] = "usd/crateFile.cpp";
    v11[1] = "Read";
    v11[2] = 763;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream::Read(void *, size_t)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 3, "Read out-of-bounds: %zd bytes at offset %td in a mapping of length %zd", a3, v7, v6);
    return 0;
  }

  v8 = (*(**a1 + 16))();
  v9 = a1[2];
  if (v8 - v9 < a3 || ((v8 - v9) | v9) < 0)
  {
    sub_29B2AAAE8();
    return 0;
  }

  result = (*(**a1 + 32))(*a1, a2, a3);
  if (result == -1)
  {
    return 0;
  }

  if (!a3 || result)
  {
    a1[2] += result;
    return 1;
  }

  return result;
}

uint64_t sub_29A4E5468(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A4E5600(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A4E55C8();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 58)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 58) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A4E55A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4DABE8(va);
  _Unwind_Resume(a1);
}

void *sub_29A4E55C8()
{
  if ((atomic_load_explicit(&qword_2A14F8078, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AAB60();
  }

  return &unk_2A14F8038;
}

void *sub_29A4E5600(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A1BF94C(a1, a2);
    v4 = a1[1];
    v5 = v4 + (a2 << 6);
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 64;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A4E5688(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_29A4E5708(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        sub_29A4E5790(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A4E5790(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 56);
  sub_29A4E4A2C(&v4);
  v4 = (a2 + 32);
  sub_29A321878(&v4);
  v3 = *(a2 + 8);
  if (v3)
  {
    *(a2 + 16) = v3;
    operator delete(v3);
  }
}

uint64_t sub_29A4E57E8(uint64_t a1)
{
  sub_29A4E5824(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E5824(uint64_t a1, atomic_uint **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A22B614(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E5868(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = 0x434453552D525850;
  *(a3 + 9) = 12;
  if (a2 > 87)
  {
    *a1 = *(**(a1 + 8) + 24);
    sub_29A4E7A0C(a1, a3, 0x58uLL);
    if (*a3 == 0x434453552D525850)
    {
      v7 = *(a3 + 8);
      v8 = *(a3 + 9);
      if (*(a3 + 8) || v8 >= 0xD)
      {
        v17 = "usd/crateFile.cpp";
        v18 = "_ReadBootStrap";
        v19 = 3837;
        v20 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>]";
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", v5, v6, v7, v8, *(a3 + 10));
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", v9, v10, 0, 12, 0);
        if (v16 >= 0)
        {
          v11 = &v15;
        }

        else
        {
          v11 = v15;
        }

        if (v14 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Usd crate file version mismatch -- file is %s, software supports %s", v11, p_p);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      else if (*(a3 + 16) >= a2)
      {
        v17 = "usd/crateFile.cpp";
        v18 = "_ReadBootStrap";
        v19 = 3845;
        v20 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>]";
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Usd crate file corrupt, possibly truncated: table of contents at offset %lld but file size is %lld");
      }
    }

    else
    {
      v17 = "usd/crateFile.cpp";
      v18 = "_ReadBootStrap";
      v19 = 3830;
      v20 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>]";
      v21 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Usd crate bootstrap section corrupt");
    }
  }

  else
  {
    v17 = "usd/crateFile.cpp";
    v18 = "_ReadBootStrap";
    v19 = 3823;
    v20 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>]";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "File too small to contain bootstrap structure");
  }
}

void sub_29A4E5A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4E5AC8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a1 + 8) = *(**(a1 + 16) + 24) + *(a2 + 16);
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  if (sub_29A4E7C0C(a1, __p))
  {
    *a3 = *__p;
    *(a3 + 16) = v5;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29A4E5B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4E5B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 6544);
  v3 = *(a1 + 6552);
  if (v2 != v3)
  {
    v4 = -1;
    v5 = -1;
    do
    {
      v6 = *(v2 + 16);
      if (v6 >= v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = *(v2 + 16);
      }

      if (v4 == -1)
      {
        v4 = *(v2 + 16);
      }

      else
      {
        v4 = v7;
      }

      v8 = *(v2 + 24) + v6;
      if (v8 <= v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = v8;
      }

      if (v5 == -1)
      {
        v5 = v8;
      }

      else
      {
        v5 = v9;
      }

      v2 += 32;
    }

    while (v2 != v3);
    if (v4 != -1 && v5 != -1)
    {
      v11 = **(a2 + 16);
      if (*(v11 + 32) >= v5 - v4)
      {
        v12 = *(v11 + 24) + v4;

        pxrInternal__aapl__pxrReserved__::ArchMemAdvise(v12, v5 - v4, 1);
      }

      else
      {
        v13[0] = "usd/crateFile.cpp";
        v13[1] = "_PrefetchStructuralSections";
        v13[2] = 3867;
        v13[3] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PrefetchStructuralSections(Reader) const [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 3, "Usd crate file corrupt, table of contents section size error");
      }
    }
  }
}

void sub_29A4E5C58(uint64_t a1, uint64_t a2)
{
  v49[9] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadTokens", 0);
  }

  else
  {
    v5 = 0;
  }

  v41 = v5;
  v42 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "TOKENS");
  if (!Section)
  {
    goto LABEL_47;
  }

  v7 = **(a2 + 16);
  v8 = *(v7 + 32);
  v9 = *(Section + 2);
  if (v8 > v9 && (v9 & 0x8000000000000000) == 0)
  {
    *(a2 + 8) = *(v7 + 24) + v9;
    __dst = 0;
    if ((sub_29A4E7A0C(a2 + 8, &__dst, 8uLL) & 1) == 0)
    {
      goto LABEL_47;
    }

    __p = 0;
    if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) > 0x3FFu)
    {
      __sz = 0;
      if ((sub_29A4E7A0C(a2 + 8, &__sz, 8uLL) & 1) == 0)
      {
        goto LABEL_46;
      }

      v38 = 0;
      if ((sub_29A4E7A0C(a2 + 8, &v38, 8uLL) & 1) == 0)
      {
        goto LABEL_46;
      }

      if (!__sz || !v38)
      {
        v43 = "usd/crateFile.cpp";
        v44 = "_ReadTokens";
        v45 = 4233;
        v46 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
        v47 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v43, 3, "Usd crate file corrupt, tokens section is empty");
        goto LABEL_46;
      }

      v26 = *(**(a2 + 16) + 32);
      v27 = *(a2 + 8) - *(**(a2 + 16) + 24);
      v28 = v26 - v27;
      if (v27 < 0 || (v28 & 0x8000000000000000) != 0 || v38 > v28)
      {
        v43 = "usd/crateFile.cpp";
        v44 = "_ReadTokens";
        v45 = 4239;
        v46 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
        v47 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v43, 3, "Failed to read tokens size %llu with remaining file size is %lld of %lld", v38, v28, v26);
        goto LABEL_46;
      }

      CompressedBufferSize = pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize(__sz);
      v30 = v38;
      if (!CompressedBufferSize || CompressedBufferSize < v38)
      {
        v43 = "usd/crateFile.cpp";
        v44 = "_ReadTokens";
        v45 = 4246;
        v46 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
        v47 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v43, 3, "Failed to read tokens. Corrupt compression data. Compressed size %llu, uncompressed size %llu", v38, __sz);
        goto LABEL_46;
      }

      v31 = __sz;
      v14 = operator new[](__sz);
      __p = v14;
      v32 = operator new[](v30);
      sub_29A4E7A0C(a2 + 8, v32, v30);
      pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(v32, v14, v38, __sz);
      v15 = &v14[v31];
      v16 = __sz;
      operator delete[](v32);
    }

    else
    {
      __sz = 0;
      if ((sub_29A4E7A0C(a2 + 8, &__sz, 8uLL) & 1) == 0)
      {
        goto LABEL_46;
      }

      v10 = *(**(a2 + 16) + 32);
      v11 = *(a2 + 8) - *(**(a2 + 16) + 24);
      v12 = v10 - v11;
      v13 = __sz;
      if (v11 < 0 || (v12 & 0x8000000000000000) != 0 || __sz > v12)
      {
        v43 = "usd/crateFile.cpp";
        v44 = "_ReadTokens";
        v45 = 4217;
        v46 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
        v47 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v43, 3, "Failed to read tokens size %llu with remaining file size being %lld of %lld", __sz, v12, v10);
        goto LABEL_46;
      }

      v14 = operator new[](__sz);
      __p = v14;
      sub_29A4E7A0C(a2 + 8, v14, v13);
      v15 = &v14[v13];
      v16 = __sz;
    }

    if (v14 != v15 && *(v15 - 1))
    {
      v43 = "usd/crateFile.cpp";
      v44 = "_ReadTokens";
      v45 = 4261;
      v46 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
      v47 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v43, 3, "Tokens section not null-terminated in crate file");
      *(v15 - 1) = 0;
    }

    v17 = __dst;
    if (__dst - 1 >= v16)
    {
      v43 = "usd/crateFile.cpp";
      v44 = "_ReadTokens";
      v45 = 4271;
      v46 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
      v47 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v43, 3, "Failed to read tokens. Corrupt data. Data size %llu, num tokens %llu", v16, __dst);
      __p = 0;
    }

    else
    {
      v18 = *(a1 + 120);
      v19 = *(a1 + 128);
      v20 = a1 + 120;
      if (v19 != v18)
      {
        do
        {
          v22 = *(v19 - 8);
          v19 -= 8;
          v21 = v22;
          if ((v22 & 7) != 0)
          {
            atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        while (v19 != v18);
        v17 = __dst;
      }

      *(a1 + 128) = v18;
      sub_29A3275DC((a1 + 120), v17);
      v14[v16 - 1] = 0;
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v43);
      v23 = 0;
      if (v14 < v15 && __dst)
      {
        v23 = 0;
        v24 = __p;
        while (v14 - v24 < v16)
        {
          __sz = 0;
          v34 = v48;
          v25 = tbb::internal::allocate_additional_child_of_proxy::allocate(&__sz, 0x28uLL);
          *(v25 - 11) = 1;
          *v25 = &unk_2A20521D0;
          v25[1] = v20;
          v25[2] = v23;
          v25[3] = v14;
          v25[4] = v49;
          (***(v25 - 5))();
          v14 += strlen(v14) + 1;
          ++v23;
          if (v14 >= v15 || v23 == __dst)
          {
            goto LABEL_29;
          }
        }

        __sz = "usd/crateFile.cpp";
        v34 = "_ReadTokens";
        v35 = 4305;
        v36 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
        v37 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__sz, 3, "Failed read tokens, buffer overflow.");
      }

      else
      {
LABEL_29:
        pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v43);
        if (v23 != __dst)
        {
          __sz = "usd/crateFile.cpp";
          v34 = "_ReadTokens";
          v35 = 4315;
          v36 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
          v37 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__sz, 3, "Crate file claims %zu tokens, found %zu", __dst, v23);
        }

        sub_29A4E7DB8(&__p);
      }

      pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v43);
      v14 = __p;
      __p = 0;
      if (!v14)
      {
        goto LABEL_46;
      }
    }

    operator delete[](v14);
LABEL_46:
    v5 = v41;
    goto LABEL_47;
  }

  v43 = "usd/crateFile.cpp";
  v44 = "_ReadTokens";
  v45 = 4191;
  v46 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
  v47 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v43, 3, "Usd crate file corrupt, tokens section is possibly truncatedat offset %lld but file size is %lld", v9, v8);
LABEL_47:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v42, v5);
  }
}

void sub_29A4E62BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, char a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete[](__p);
  }

  sub_29A0E9CEC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4E6360(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadStrings", 0);
  }

  else
  {
    v5 = 0;
  }

  result = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "STRINGS");
  if (result)
  {
    *(a2 + 8) = *(**(a2 + 16) + 24) + *(result + 16);
    result = sub_29A4E824C(a2, (a1 + 144));
  }

  if (v5)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5 != 0, v5);
  }

  return result;
}

void sub_29A4E6438(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadFields", 0);
  }

  else
  {
    v5 = 0;
  }

  __dst[1] = v5;
  v32 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "FIELDS");
  if (!Section)
  {
    goto LABEL_32;
  }

  *(a2 + 8) = *(**(a2 + 16) + 24) + *(Section + 2);
  v7 = a2 + 8;
  if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) <= 0x3FFu)
  {
    sub_29A4E84A0(a2, (a1 + 48));
    goto LABEL_32;
  }

  __dst[0] = 0;
  if (sub_29A4E7A0C(a2 + 8, __dst, 8uLL))
  {
    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(__dst[0]);
    DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(__dst[0]);
    if (CompressedBufferSize && DecompressionWorkingSpaceSize)
    {
      sub_29A4E83FC((a1 + 48), __dst[0]);
      sub_29A01112C(&v26, __dst[0]);
      *v28 = 0u;
      *__p = 0u;
      v10 = sub_29A4E8914(v28, a2, v26, ((v27 - v26) >> 2));
      v11 = __p[0];
      __p[0] = 0;
      if (v11)
      {
        operator delete[](v11);
      }

      v12 = v28[0];
      v28[0] = 0;
      if (v12)
      {
        operator delete[](v12);
      }

      if (!v10)
      {
        goto LABEL_30;
      }

      v13 = __dst[0];
      if (__dst[0])
      {
        v14 = v26;
        v15 = (*(a1 + 48) + 4);
        do
        {
          v16 = *v14++;
          *v15 = v16;
          v15 += 4;
          v13 = (v13 - 1);
        }

        while (v13);
      }

      __sz = 0;
      if ((sub_29A4E7A0C(a2 + 8, &__sz, 8uLL) & 1) == 0)
      {
        goto LABEL_30;
      }

      v17 = *(**(a2 + 16) + 32);
      v18 = *(a2 + 8) - *(**(a2 + 16) + 24);
      v19 = v17 - v18;
      v20 = __sz;
      if (v18 < 0 || (v19 & 0x8000000000000000) != 0 || __sz > v19)
      {
        v28[0] = "usd/crateFile.cpp";
        v28[1] = "_ReadFields";
        __p[0] = 3965;
        __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFields(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
        v30 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v28, 3, "Failed to read fields of size %llu with remaining file size is %lld of %lld", __sz, v19, v17);
LABEL_30:
        if (v26)
        {
          v27 = v26;
          operator delete(v26);
        }

        goto LABEL_32;
      }

      v21 = operator new[](__sz);
      if (sub_29A4E7A0C(v7, v21, v20))
      {
        v28[0] = 0;
        v28[1] = 0;
        __p[0] = 0;
        sub_29A00BF50(v28, __dst[0]);
        pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(v21, v28[0], __sz, v28[1] - v28[0]);
        v22 = v28[0];
        if (__dst[0])
        {
          v23 = 0;
          v24 = (*(a1 + 48) + 8);
          do
          {
            *v24 = v22[v23];
            v24 += 2;
            v23 = (v23 + 1);
          }

          while (v23 != __dst[0]);
          goto LABEL_28;
        }

        if (v28[0])
        {
LABEL_28:
          v28[1] = v22;
          operator delete(v22);
        }
      }

      operator delete[](v21);
      goto LABEL_30;
    }

    if (__dst[0])
    {
      v28[0] = "usd/crateFile.cpp";
      v28[1] = "_ReadFields";
      __p[0] = 3946;
      __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFields(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
      v30 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v28, 3, "Failed read compressed fields of size %llu.", __dst[0]);
    }
  }

LABEL_32:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5 != 0, v5);
  }
}

void sub_29A4E67D4(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadFieldSets", 0);
  }

  else
  {
    v5 = 0;
  }

  __dst[1] = v5;
  v24 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "FIELDSETS");
  if (!Section)
  {
    goto LABEL_25;
  }

  *(a2 + 8) = *(**(a2 + 16) + 24) + *(Section + 2);
  if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) <= 0x3FFu)
  {
    if ((sub_29A4E8B44(a2, (a1 + 72)) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  __dst[0] = 0;
  if ((sub_29A4E7A0C(a2 + 8, __dst, 8uLL) & 1) == 0)
  {
    goto LABEL_25;
  }

  CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(__dst[0]);
  DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(__dst[0]);
  if (!CompressedBufferSize || !DecompressionWorkingSpaceSize)
  {
    v20[0] = "usd/crateFile.cpp";
    v20[1] = "_ReadFieldSets";
    __p[0] = 3905;
    __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFieldSets(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 3, "Failed to read compressed fieldSets of size %llu", __dst[0]);
    goto LABEL_25;
  }

  sub_29A4E8B14((a1 + 72), __dst[0]);
  sub_29A01112C(&v18, __dst[0]);
  *v20 = 0u;
  *__p = 0u;
  v10 = sub_29A4E8914(v20, a2, v18, __dst[0]);
  v11 = __p[0];
  __p[0] = 0;
  if (v11)
  {
    operator delete[](v11);
  }

  v12 = v20[0];
  v20[0] = 0;
  if (v12)
  {
    operator delete[](v12);
  }

  if (v10)
  {
    v13 = __dst[0];
    v14 = v18;
    if (__dst[0])
    {
      v15 = *(a1 + 72);
      v16 = v18;
      do
      {
        v17 = *v16++;
        *v15++ = v17;
        v13 = (v13 - 1);
      }

      while (v13);
    }

    else if (!v18)
    {
LABEL_7:
      v7 = *(a1 + 80);
      if (*(a1 + 72) != v7 && *(v7 - 4) != -1)
      {
        v20[0] = "usd/crateFile.cpp";
        v20[1] = "_ReadFieldSets";
        __p[0] = 3919;
        __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFieldSets(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
        v22 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 3, "Corrupt field sets in crate file");
        *(*(a1 + 80) - 4) = -1;
      }

      goto LABEL_25;
    }

    v19 = v14;
    operator delete(v14);
    goto LABEL_7;
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

LABEL_25:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5 != 0, v5);
  }
}

void sub_29A4E6A90(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadPaths", 0);
  }

  else
  {
    v5 = 0;
  }

  v26 = v5;
  v27 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "PATHS");
  if (!Section)
  {
    goto LABEL_20;
  }

  *(a2 + 8) = *(**(a2 + 16) + 24) + *(Section + 2);
  __dst = 0;
  if ((sub_29A4E7A0C(a2 + 8, &__dst, 8uLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v28);
  v7 = (*(a1 + 6576) << 16) | (*(a1 + 6577) << 8);
  if ((v7 | *(a1 + 6578)) == 1)
  {
    sub_29A38B6A4((a1 + 96), __dst);
    v8 = *(a1 + 96);
    v9 = *(a1 + 104);
    *&v22 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
    v10 = (v9 - v8) >> 3;
    if (v10 >= 1)
    {
      v11 = v10 + 1;
      do
      {
        sub_29A2258F0(v8, &v22);
        sub_29A225948(v8 + 1, &v22 + 1);
        --v11;
        v8 += 2;
      }

      while (v11 > 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
    sub_29A1DE3A4(&v22);
    v12 = *(a2 + 16);
    v22 = *a2;
    v23 = v12;
    v24 = *(a2 + 32);
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21 + 1);
    sub_29A4E8E28(a1, &v22, v28, &v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
    v13 = &v21;
  }

  else
  {
    if (v7 > 0x3FF)
    {
      v19 = *(a2 + 16);
      v22 = *a2;
      v23 = v19;
      v24 = *(a2 + 32);
      sub_29A4E92F8(a1, &v22, v28, __dst);
      goto LABEL_19;
    }

    if (__dst > *(**(a2 + 16) + 32) - *(a2 + 8) + *(**(a2 + 16) + 24))
    {
      *&v22 = "usd/crateFile.cpp";
      *(&v22 + 1) = "_ReadPaths";
      *&v23 = 4352;
      *(&v23 + 1) = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadPaths(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
      LOBYTE(v24) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 3, "Invalid number of paths in file.");
      goto LABEL_19;
    }

    sub_29A38B6A4((a1 + 96), __dst);
    v14 = *(a1 + 96);
    v15 = *(a1 + 104);
    *&v22 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
    v16 = (v15 - v14) >> 3;
    if (v16 >= 1)
    {
      v17 = v16 + 1;
      do
      {
        sub_29A2258F0(v14, &v22);
        sub_29A225948(v14 + 1, &v22 + 1);
        --v17;
        v14 += 2;
      }

      while (v17 > 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
    sub_29A1DE3A4(&v22);
    v18 = *(a2 + 16);
    v22 = *a2;
    v23 = v18;
    v24 = *(a2 + 32);
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20 + 1);
    sub_29A4E9090(a1, &v22, v28, &v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20 + 1);
    v13 = &v20;
  }

  sub_29A1DE3A4(v13);
LABEL_19:
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v28);
  v5 = v26;
LABEL_20:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v27, v5);
  }
}

void sub_29A4E6DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(va1);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void sub_29A4E6E64(uint64_t *a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadSpecs", 0);
  }

  else
  {
    v5 = 0;
  }

  v93 = v5;
  v94 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection(a1 + 818, "SPECS");
  if (Section)
  {
    *(a2 + 8) = *(**(a2 + 16) + 24) + *(Section + 2);
    v7 = (*(a1 + 6576) << 16) | (*(a1 + 6577) << 8);
    if ((v7 | *(a1 + 6578)) == 1)
    {
      __p = 0;
      v88 = 0;
      v89 = 0;
      if ((sub_29A4E9FD4(a2, &__p) & 1) == 0)
      {
        if (__p)
        {
          v88 = __p;
          operator delete(__p);
        }

        goto LABEL_113;
      }

      sub_29A4E9F98(a1, (v88 - __p) >> 4);
      v8 = __p;
      v9 = v88;
      if (__p != v88)
      {
        v10 = *a1;
        do
        {
          v11 = *(v8 + 3);
          *v10 = *(v8 + 4);
          *(v10 + 2) = v11;
          v8 += 16;
          v10 += 12;
        }

        while (v8 != v9);
        v8 = __p;
      }

      if (v8)
      {
        v88 = v8;
        operator delete(v8);
      }

      goto LABEL_15;
    }

    if (v7 <= 0x3FF)
    {
      if ((sub_29A4EA2D8(a2, a1) & 1) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_15;
    }

    __dst = 0;
    if ((sub_29A4E7A0C(a2 + 8, &__dst, 8uLL) & 1) == 0)
    {
      goto LABEL_113;
    }

    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(__dst);
    DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(__dst);
    if (!CompressedBufferSize || (v41 = DecompressionWorkingSpaceSize) == 0)
    {
      __p = "usd/crateFile.cpp";
      v88 = "_ReadSpecs";
      v89 = 4010;
      v90 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
      v91 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read specs of size %llu", __dst);
      goto LABEL_113;
    }

    v83.__r_.__value_.__r.__words[0] = 0;
    if ((sub_29A4E7A0C(a2 + 8, &v83, 8uLL) & 1) == 0)
    {
      goto LABEL_113;
    }

    v42 = *(**(a2 + 16) + 32);
    v43 = *(a2 + 8) - *(**(a2 + 16) + 24);
    v44 = v42 - v43;
    v45 = v83.__r_.__value_.__r.__words[0];
    if (v43 < 0 || (v44 & 0x8000000000000000) != 0 || v83.__r_.__value_.__r.__words[0] > v44)
    {
      __p = "usd/crateFile.cpp";
      v88 = "_ReadSpecs";
      v89 = 4021;
      v90 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
      v91 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read fields of size %llu with remaining file size is %lld of %lld", v83.__r_.__value_.__r.__words[0], v44, v42);
      goto LABEL_113;
    }

    v46 = operator new[](CompressedBufferSize);
    v47 = operator new[](v41);
    v77 = 0uLL;
    v78 = 0;
    if (v45 - 1 >= CompressedBufferSize)
    {
      __p = "usd/crateFile.cpp";
      v88 = "_ReadSpecs";
      v89 = 4043;
      v90 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
      v91 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read pathIndexes, size > compressedBufferSize.");
    }

    else
    {
      sub_29A4E7A0C(a2 + 8, v46, v45);
      sub_29A0A171C(&v77, __dst);
      pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(v46, v83.__r_.__value_.__l.__data_, v77, __dst, v47, v48);
      sub_29A4E9F98(a1, __dst);
      v49 = __dst;
      if (__dst)
      {
        v50 = v77;
        v51 = *a1;
        do
        {
          v52 = *v50++;
          *v51 = v52;
          v51 += 12;
          v49 = (v49 - 1);
        }

        while (v49);
      }

      __n[0] = 0;
      if (sub_29A4E7A0C(a2 + 8, __n, 8uLL))
      {
        v53 = *(**(a2 + 16) + 32);
        v54 = *(a2 + 8) - *(**(a2 + 16) + 24);
        v55 = v53 - v54;
        if (v54 < 0 || (v55 & 0x8000000000000000) != 0 || __n[0] > v55)
        {
          __p = "usd/crateFile.cpp";
          v88 = "_ReadSpecs";
          v89 = 4053;
          v90 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
          v91 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read fields of size %llu with remaining file size is %lld of %lld", __n[0], v55, v53);
        }

        else if (__n[0] - 1 >= CompressedBufferSize)
        {
          __p = "usd/crateFile.cpp";
          v88 = "_ReadSpecs";
          v89 = 4067;
          v90 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
          v91 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read fsetIndexes, size > compressedBufferSize.");
        }

        else
        {
          sub_29A4E7A0C(a2 + 8, v46, __n[0]);
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(v46, __n[0], v77, __dst, v47, v56);
          v57 = __dst;
          if (__dst)
          {
            v58 = v77;
            v59 = (*a1 + 4);
            do
            {
              v60 = *v58++;
              *v59 = v60;
              v59 += 3;
              v57 = (v57 - 1);
            }

            while (v57);
          }

          v92 = 0;
          if (sub_29A4E7A0C(a2 + 8, &v92, 8uLL))
          {
            v61 = *(**(a2 + 16) + 32);
            v62 = *(a2 + 8) - *(**(a2 + 16) + 24);
            v63 = v61 - v62;
            if (v62 < 0 || (v63 & 0x8000000000000000) != 0 || v92 > v63)
            {
              __p = "usd/crateFile.cpp";
              v88 = "_ReadSpecs";
              v89 = 4077;
              v90 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
              v91 = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read spec types of size %llu with remaining file size is %lld of %lld", v92, v63, v61);
            }

            else
            {
              if ((v92 - 1) < CompressedBufferSize)
              {
                sub_29A4E7A0C(a2 + 8, v46, v92);
                pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(v46, v92, v77, __dst, v47, v64);
                v65 = v5;
                v66 = __dst;
                if (__dst)
                {
                  v67 = 0;
                  v68 = 8;
                  do
                  {
                    v69 = *(v77 + 4 * v67);
                    if (v69 >= 0xC)
                    {
                      __p = "usd/crateFile.cpp";
                      v88 = "_ReadSpecs";
                      v89 = 4089;
                      v90 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
                      v91 = 0;
                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Invalid spec type %zu", v69);
                      *(*a1 + v68) = 0;
                      v66 = __dst;
                    }

                    else
                    {
                      *(*a1 + v68) = v69;
                    }

                    v67 = (v67 + 1);
                    v68 += 12;
                  }

                  while (v67 != v66);
                }

                if (v77)
                {
                  *(&v77 + 1) = v77;
                  operator delete(v77);
                }

                operator delete[](v47);
                operator delete[](v46);
                v5 = v65;
                goto LABEL_15;
              }

              __p = "usd/crateFile.cpp";
              v88 = "_ReadSpecs";
              v89 = 4096;
              v90 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
              v91 = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read spectypes, size > compressedBufferSize.");
            }
          }
        }
      }
    }

    if (v77)
    {
      *(&v77 + 1) = v77;
      operator delete(v77);
    }

    operator delete[](v47);
    operator delete[](v46);
    goto LABEL_113;
  }

LABEL_15:
  v76 = v5;
  v12 = sub_29A4EA5F4(&__p, 0, 0.0, 0.5);
  __dst = 0;
  v85 = 0;
  v86 = 0;
  v13 = *a1;
  v14 = a1[1];
  if (*a1 == v14)
  {
    v5 = v76;
    goto LABEL_112;
  }

  v15 = (v13 + 8);
  v16 = *a1;
  do
  {
    v17 = *(v15 - 2);
    v18 = a1[12];
    if (v17 >= (a1[13] - v18) >> 3)
    {
      v19 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v12);
    }

    else
    {
      v19 = (v18 + 8 * v17);
    }

    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v19))
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("spec at index %zu has empty path", v20, v21, 0xAAAAAAAAAAAAAAABLL * (&v13[-*a1] >> 2));
      v12 = sub_29A091654(&__dst, &v77);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
      }

      v22 = v15;
      goto LABEL_47;
    }

    v22 = (v16 + 8);
    if (*v15 && *v15 < 12)
    {
      v12 = sub_29A4EA798(&__p, v19, v19);
      if (v23)
      {
        goto LABEL_48;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v19, &v83);
      v26 = &v83;
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v83.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("spec <%s> repeated", v24, v25, v26);
      v12 = sub_29A091654(&__dst, &v77);
      if ((SHIBYTE(v78) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v27 = v77;
      goto LABEL_44;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v19, &v83);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v83;
    }

    else
    {
      v30 = v83.__r_.__value_.__r.__words[0];
    }

    v31 = *v15;
    if (*v15)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("invalid spec type value %d", v28, v29, *v15);
      v32 = __n;
      if (v82 < 0)
      {
        v32 = __n[0];
      }
    }

    else
    {
      v32 = "unknown spec type";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("spec <%s> has %s", v28, v29, v30, v32);
    v12 = sub_29A091654(&__dst, &v77);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
      if (!v31)
      {
        goto LABEL_45;
      }

LABEL_42:
      if ((v82 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v27 = __n[0];
LABEL_44:
      operator delete(v27);
      goto LABEL_45;
    }

    if (v31)
    {
      goto LABEL_42;
    }

LABEL_45:
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

LABEL_47:
    *v22 = 0;
LABEL_48:
    v16 += 12;
    v33 = v15 + 1;
    v15 += 3;
    v13 += 12;
  }

  while (v33 != v14);
  v5 = v76;
  if (__dst != v85)
  {
    v35 = *a1;
    v34 = a1[1];
    if (*a1 == v34)
    {
      v37 = a1 + 512;
    }

    else
    {
      v36 = (v35 + 12);
      v37 = a1 + 512;
      while (*(v36 - 1))
      {
        v38 = v36 == v34;
        v36 = (v36 + 12);
        if (v38)
        {
          goto LABEL_101;
        }
      }

      v35 = v36 - 12;
      if ((v36 - 12) != v34 && v36 != v34)
      {
        do
        {
          if (*(v36 + 2))
          {
            v70 = *v36;
            *(v35 + 2) = *(v36 + 2);
            *v35 = v70;
            v35 += 12;
          }

          v36 = (v36 + 12);
        }

        while (v36 != v34);
        v34 = a1[1];
      }
    }

    if (v35 != v34)
    {
      a1[1] = v35;
    }

LABEL_101:
    v71 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v85 - __dst) >> 3));
    if (v85 == __dst)
    {
      v72 = 0;
    }

    else
    {
      v72 = v71;
    }

    sub_29A4EABA8(__dst, v85, &v83, v72, 1);
    v73 = sub_29A3475E4(__dst, v85, &v83);
    sub_29A33C380(&__dst, v73, v85);
    *&v77 = "usd/crateFile.cpp";
    *(&v77 + 1) = "_ReadSpecs";
    v78 = 4160;
    v79 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
    v80 = 0;
    v74 = (a1 + 840);
    if (*(v37 + 2647) < 0)
    {
      v74 = *v74;
    }

    pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &__dst, &v83);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v83;
    }

    else
    {
      v75 = v83.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v77, 3, "Corrupt asset @%s@ - ignoring invalid specs: %s.", v74, v75);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    v5 = v93;
  }

LABEL_112:
  *&v77 = &__dst;
  sub_29A012C90(&v77);
  *&v77 = &v88;
  sub_29A36B394(&v77);
LABEL_113:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v94, v5);
  }
}

void sub_29A4E78A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete[](v40);
  operator delete[](v39);
  sub_29A0E9CEC(v41 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4E7A0C(uint64_t a1, void *__dst, size_t __n)
{
  v5 = *a1;
  v6 = **(a1 + 8);
  v8 = *(v6 + 24);
  v7 = *(v6 + 32);
  if (v8 > *a1 || *a1 + __n > v8 + v7)
  {
    v24 = "usd/crateFile.cpp";
    v25 = "Read";
    v26 = 606;
    v27 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>::Read(void *, size_t) [FileMappingPtr = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *]";
    v28 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 3, "Read out-of-bounds: %zd bytes at offset %td in a mapping of length %zd", __n, v5 - v8, v7);
    memset(__dst, 153, __n);
    return 0;
  }

  if (*(a1 + 16))
  {
    v20 = sub_29A4CE69C(v8);
    v21 = sub_29A4CE69C(*a1);
    v22 = sub_29A4CE69C(*a1 + __n - 1);
    memset((*(a1 + 16) + v21 - v20), 1, v22 - v21 + 1);
    v5 = *a1;
    v23 = **(a1 + 8);
    v8 = *(v23 + 24);
    v7 = *(v23 + 32);
  }

  v11 = v7 - (v5 - v8);
  if (v11 < __n || ((v11 | (v5 - v8)) & 0x8000000000000000) != 0)
  {
    v24 = "usd/crateFile.cpp";
    v25 = "Read";
    v26 = 624;
    v27 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>::Read(void *, size_t) [FileMappingPtr = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *]";
    v28 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 3, "Failed to read %zu bytes, remaining file size is %lld of %lld", __n, v7 - (v5 - v8), v7);
    return 0;
  }

  if (*(a1 + 24))
  {
    v12 = sub_29A4DAE4C() & v8;
    v13 = *(a1 + 24);
    v14 = *a1 - v12;
    v15 = v14 / (v13 << 10) * (v13 << 10);
    v16 = *a1 - v14 % (v13 << 10);
    v17 = v8 - v12 + *(**(a1 + 8) + 32);
    v18 = (v13 << 10) * ((v14 + __n) / (v13 << 10)) + (v13 << 10);
    if (v18 < v17)
    {
      v17 = v18;
    }

    pxrInternal__aapl__pxrReserved__::ArchMemAdvise(v16, v17 - v15, 1);
    v5 = *a1;
  }

  memcpy(__dst, v5, __n);
  *a1 += __n;
  return 1;
}

uint64_t sub_29A4E7C0C(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Section]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A4E7D40(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 32 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A4DFDC4(a2, __p, v12, (v12 - __p) >> 5);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4E7D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4E7D40(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A15A71C(a1, a2);
    v4 = a1[1];
    bzero(v4, 32 * a2);
    a1[1] = &v4[32 * a2];
  }

  return a1;
}

void sub_29A4E7D9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4E7DB8(pxrInternal__aapl__pxrReserved__ *a1)
{
  v1 = *a1;
  v2 = *a1;
  *a1 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(a1) & 1) == 0)
  {
    sub_29A4E7F5C(&v2);
    v1 = v2;
  }

  v2 = 0;
  if (v1)
  {
    operator delete[](v1);
  }
}

void sub_29A4E7E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete[](__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4E7E30(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4E7ED4(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4E7EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4E7ED4(uint64_t a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v4, *(a1 + 16));
  v3 = (**a1 + 8 * *(a1 + 8));
  if (&v4 == v3)
  {
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v3 = v4;
  }

  return result;
}

void sub_29A4E7F5C(pxrInternal__aapl__pxrReserved__ *a1)
{
  v1 = *a1;
  __p = *a1;
  *a1 = 0;
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = *(DetachedDispatcher + 256);
    v8[0] = 0;
    v8[1] = v4;
    v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v8, 0x18uLL);
    *(v5 - 11) = 1;
    *v5 = &unk_2A2052218;
    v5[1] = v1;
    v5[2] = DetachedDispatcher + 272;
    v6 = (***(v5 - 5))();
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v6);
  }

  else
  {
    sub_29A4E8060();
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void sub_29A4E8044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete[](__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4E8060()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

void *sub_29A4E8100(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A2052218;
  a1[1] = 0;
  if (v2)
  {
    operator delete[](v2);
  }

  return a1;
}

void sub_29A4E814C(void *__p)
{
  v2 = __p[1];
  *__p = &unk_2A2052218;
  __p[1] = 0;
  if (v2)
  {
    operator delete[](v2);
  }

  operator delete(__p);
}

uint64_t sub_29A4E81A8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4E8060();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 16));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4E8238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4E824C(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::TokenIndex]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A4E8380(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 4 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4E8364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4E8380(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0111A4(a1, a2);
    v4 = a1[1];
    memset(v4, 255, 4 * a2);
    a1[1] = &v4[4 * a2];
  }

  return a1;
}

void sub_29A4E83E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4E83FC(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_29A4E86DC(a1, a2 - v2);
  }
}

void sub_29A4E842C(uint64_t a1, _DWORD *a2, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *a3)
{
  *v5 = 0u;
  *__p = 0u;
  sub_29A4E8914(v5, a1, a2, a3);
  v3 = __p[0];
  __p[0] = 0;
  if (v3)
  {
    operator delete[](v3);
  }

  v4 = v5[0];
  v5[0] = 0;
  if (v4)
  {
    operator delete[](v4);
  }
}

uint64_t sub_29A4E84A0(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Field]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A4E85D4(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 16 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A12D958(a2, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4E85B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4E85D4(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = 0;
    v5 = a1[1];
    v6 = v5 + 16 * a2;
    v7 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
    v8 = vdupq_n_s64(v7);
    v9 = (v5 + 36);
    do
    {
      v10 = vdupq_n_s64(v4);
      v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_29B430070)));
      if (vuzp1_s16(v11, *v8.i8).u8[0])
      {
        *(v9 - 8) = -1;
      }

      if (vuzp1_s16(v11, *&v8).i8[2])
      {
        *(v9 - 4) = -1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_29B433E10)))).i32[1])
      {
        *v9 = -1;
        v9[4] = -1;
      }

      v4 += 4;
      v9 += 16;
    }

    while (v7 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 3) + 4 != v4);
    a1[1] = v6;
  }

  return a1;
}

void sub_29A4E86C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4E86DC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v5 + 16 * a2;
      v14 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = (v5 + 36);
      do
      {
        v17 = vdupq_n_s64(v12);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_29B430070)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_29B433E10)))).i32[1])
        {
          *v16 = -1;
          v16[4] = -1;
        }

        v12 += 4;
        v16 += 16;
      }

      while (v14 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 3) + 4 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v19 = 0;
    v20 = &v11[16 * v8];
    v21 = &v20[16 * a2];
    v22 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
    v23 = v22 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 3) + 4;
    v24 = vdupq_n_s64(v22);
    v25 = v20 + 36;
    do
    {
      v26 = vdupq_n_s64(v19);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_29B430070)));
      if (vuzp1_s16(v27, *v24.i8).u8[0])
      {
        *(v25 - 8) = -1;
      }

      if (vuzp1_s16(v27, *&v24).i8[2])
      {
        *(v25 - 4) = -1;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_29B433E10)))).i32[1])
      {
        *v25 = -1;
        v25[4] = -1;
      }

      v19 += 4;
      v25 += 16;
    }

    while (v23 != v19);
    v28 = &v11[16 * v10];
    v29 = *(a1 + 8) - *a1;
    v30 = &v20[-v29];
    memcpy(&v20[-v29], *a1, v29);
    v31 = *a1;
    *a1 = v30;
    *(a1 + 8) = v21;
    *(a1 + 16) = v28;
    if (v31)
    {

      operator delete(v31);
    }
  }
}

uint64_t sub_29A4E8914(uint64_t a1, uint64_t a2, _DWORD *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this)
{
  sub_29A4E8A78(a1, this);
  __dst = 0;
  result = sub_29A4E7A0C(a2 + 8, &__dst, 8uLL);
  if (result)
  {
    v9 = *(**(a2 + 16) + 32);
    v10 = *(a2 + 8) - *(**(a2 + 16) + 24);
    v11 = v9 - v10;
    v12 = *(a1 + 8);
    v13 = __dst;
    if (v12 < __dst)
    {
      v13 = *(a1 + 8);
    }

    if (v11 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = (v9 - v10);
    }

    __dst = v14;
    if (v12 && *(a1 + 24))
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        result = sub_29A4E7A0C(a2 + 8, *a1, v14);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(*a1, __dst, a3, this, *(a1 + 16), v15);
          return 1;
        }

        return result;
      }

      v16[0] = "usd/crateFile.cpp";
      v16[1] = "Read";
      v16[2] = 2331;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_CompressedIntsReader::Read(Reader &, Int *, size_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, Int = unsigned int]";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 3, "Failed to read compressed ints of size %llu with remaining file size is %lld of %lld", v14, v11, v9);
    }

    else
    {
      sub_29B2AABCC();
    }

    return 0;
  }

  return result;
}

uint64_t sub_29A4E8A34(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete[](v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete[](v3);
  }

  return a1;
}

void sub_29A4E8A78(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this)
{
  CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(this);
  DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(this);
  if (CompressedBufferSize > *(a1 + 8))
  {
    v6 = operator new[](CompressedBufferSize);
    v7 = *a1;
    *a1 = v6;
    if (v7)
    {
      operator delete[](v7);
    }

    *(a1 + 8) = CompressedBufferSize;
  }

  if (DecompressionWorkingSpaceSize > *(a1 + 24))
  {
    v8 = operator new[](DecompressionWorkingSpaceSize);
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    if (v9)
    {
      operator delete[](v9);
    }

    *(a1 + 24) = DecompressionWorkingSpaceSize;
  }
}

void sub_29A4E8B14(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_29A4E8CF4(a1, a2 - v2);
  }
}

uint64_t sub_29A4E8B44(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::FieldIndex]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A4E8C78(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 4 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4E8C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4E8C78(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0111A4(a1, a2);
    v4 = a1[1];
    memset(v4, 255, 4 * a2);
    a1[1] = &v4[4 * a2];
  }

  return a1;
}

void sub_29A4E8CD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4E8CF4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      memset(*(a1 + 8), 255, 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_29A00C9A4();
    }

    v9 = v7 >> 2;
    v10 = v4 - v6;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_29A00E7A8(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[4 * v9];
    v14 = &v12[4 * v11];
    memset(v13, 255, 4 * a2);
    memcpy(&v13[-4 * (v7 >> 2)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-4 * (v7 >> 2)];
    *(a1 + 8) = &v13[4 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_29A4E8E28(void *a1, __int128 *a2, uint64_t a3, int *a4)
{
  do
  {
    v29 = -1;
    if (!sub_29A4E7A0C(a2 + 8, __dst, 0x10uLL))
    {
      break;
    }

    v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a4);
    if (v8)
    {
      v9 = a1[15];
      if (HIDWORD(v29) < ((a1[16] - v9) >> 3) && v29 < ((a1[13] - a1[12]) >> 3))
      {
        v10 = (v9 + 8 * HIDWORD(v29));
        if ((v30 & 4) != 0)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a4, v10, &v19);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(a4, v10, &v19);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      sub_29B2AAC5C();
      return;
    }

    v11 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
    sub_29A2258F0(a4, v11);
    sub_29A225948(a4 + 1, v11 + 1);
    v12 = a1[12];
    if (v29 >= ((a1[13] - v12) >> 3))
    {
      sub_29B2AAC14();
      return;
    }

    v13 = (v12 + 8 * v29);
    sub_29A2258F0(v13, a4);
    sub_29A225948(v13 + 1, a4 + 1);
    v14 = v30;
    if (v30)
    {
      if ((v30 & 2) != 0)
      {
        v27 = 0;
        if (!sub_29A4E7A0C(a2 + 8, &v27, 8uLL))
        {
          return;
        }

        v15 = a2[1];
        v20 = *a2;
        v21 = v15;
        v22 = *(a2 + 4);
        v19 = a1;
        v23 = v27;
        v24 = a3;
        sub_29A1E21F4(&v25, a4);
        sub_29A1E2240(&v26, a4 + 1);
        v16 = sub_29A4E97B4(a3, &v19);
        (***(v16 - 40))(*(v16 - 40), v16, v16 - 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26);
        sub_29A1DE3A4(&v25);
      }

      v17 = a1[12];
      if (v29 >= ((a1[13] - v17) >> 3))
      {
        sub_29B2AACA4();
        return;
      }

      v18 = (v17 + 8 * v29);
      sub_29A2258F0(a4, v18);
      sub_29A225948(a4 + 1, v18 + 1);
    }
  }

  while ((v14 & 3) != 0);
}

void sub_29A4E9090(void *a1, __int128 *a2, uint64_t a3, int *a4)
{
  do
  {
    __dst = -1;
    if (!sub_29A4E7A0C(a2 + 8, &__dst, 0xCuLL))
    {
      break;
    }

    v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a4);
    if (v8)
    {
      v9 = a1[15];
      if (HIDWORD(__dst) < ((a1[16] - v9) >> 3) && __dst < ((a1[13] - a1[12]) >> 3))
      {
        v10 = (v9 + 8 * HIDWORD(__dst));
        if ((v29 & 4) != 0)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a4, v10, &v19);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(a4, v10, &v19);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      sub_29B2AAD34();
      return;
    }

    v11 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
    sub_29A2258F0(a4, v11);
    sub_29A225948(a4 + 1, v11 + 1);
    v12 = a1[12];
    if (__dst >= ((a1[13] - v12) >> 3))
    {
      sub_29B2AACEC();
      return;
    }

    v13 = (v12 + 8 * __dst);
    sub_29A2258F0(v13, a4);
    sub_29A225948(v13 + 1, a4 + 1);
    v14 = v29;
    if (v29)
    {
      if ((v29 & 2) != 0)
      {
        v27 = 0;
        if (!sub_29A4E7A0C(a2 + 8, &v27, 8uLL))
        {
          return;
        }

        v15 = a2[1];
        v20 = *a2;
        v21 = v15;
        v22 = *(a2 + 4);
        v19 = a1;
        v23 = v27;
        v24 = a3;
        sub_29A1E21F4(&v25, a4);
        sub_29A1E2240(&v26, a4 + 1);
        v16 = sub_29A4E9B80(a3, &v19);
        (***(v16 - 40))(*(v16 - 40), v16, v16 - 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26);
        sub_29A1DE3A4(&v25);
      }

      v17 = a1[12];
      if (__dst >= ((a1[13] - v17) >> 3))
      {
        sub_29B2AAD7C();
        return;
      }

      v18 = (v17 + 8 * __dst);
      sub_29A2258F0(a4, v18);
      sub_29A225948(a4 + 1, v18 + 1);
    }
  }

  while ((v14 & 3) != 0);
}

void sub_29A4E92F8(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::WorkDispatcher *a3, unint64_t a4)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  __dst = 0;
  if (sub_29A4E7A0C(a2 + 8, &__dst, 8uLL))
  {
    *v28 = 0u;
    *__p = 0u;
    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(__dst);
    DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(__dst);
    if (CompressedBufferSize && DecompressionWorkingSpaceSize)
    {
      sub_29A0A171C(&v37, __dst);
      if (sub_29A4E8914(v28, a2, v37, __dst))
      {
        v10 = v37;
        if (v37 == v38)
        {
          v11 = 0;
LABEL_13:
          if (v11 + 1 < a4)
          {
            v23 = "usd/crateFile.cpp";
            v24 = "_ReadCompressedPaths";
            v25 = 4480;
            v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
            v27 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Failed to read compressed paths. numPaths = %llu too large for max index = %llu", a4, v11);
          }

          else if (__dst > a4)
          {
            v23 = "usd/crateFile.cpp";
            v24 = "_ReadCompressedPaths";
            v25 = 4486;
            v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
            v27 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Failed to read compressed paths. numEncodedPaths %llu > numPaths = %llu", __dst, a4);
          }

          else
          {
            sub_29A38B6A4((a1 + 96), a4);
            v13 = *(a1 + 96);
            v14 = *(a1 + 104);
            v23 = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23 + 1);
            v15 = (v14 - v13) >> 3;
            if (v15 >= 1)
            {
              v16 = v15 + 1;
              do
              {
                sub_29A2258F0(v13, &v23);
                sub_29A225948(v13 + 1, &v23 + 1);
                --v16;
                v13 += 2;
              }

              while (v16 > 1);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
            sub_29A1DE3A4(&v23);
            sub_29A0A171C(&v34, __dst);
            if (sub_29A4E9E78(v28, a2, v34, __dst))
            {
              v17 = v34;
              if (v34 == v35)
              {
LABEL_26:
                sub_29A0A171C(&v31, __dst);
                if (sub_29A4E9E78(v28, a2, v31, __dst))
                {
                  v22 = 0;
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
                  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BuildDecompressedPathsImpl(a1, &v37, &v34, &v31, 0, &v22, a3);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
                  sub_29A1DE3A4(&v22);
                  pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(a3);
                }
              }

              else
              {
                v18 = (*(a1 + 128) - *(a1 + 120)) >> 3;
                while (1)
                {
                  LODWORD(v19) = *v17;
                  v19 = *v17 >= 0 ? v19 : -v19;
                  if (v18 <= v19)
                  {
                    break;
                  }

                  if (++v17 == v35)
                  {
                    goto LABEL_26;
                  }
                }

                v23 = "usd/crateFile.cpp";
                v24 = "_ReadCompressedPaths";
                v25 = 4507;
                v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
                v27 = 0;
                pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Corrupt path element token index in crate file (%d >= %zu)", v19, v18);
              }
            }
          }
        }

        else
        {
          v11 = 0;
          while (1)
          {
            v12 = *v10;
            if (v12 >= a4)
            {
              break;
            }

            if (v11 <= v12)
            {
              v11 = *v10;
            }

            if (++v10 == v38)
            {
              goto LABEL_13;
            }
          }

          v23 = "usd/crateFile.cpp";
          v24 = "_ReadCompressedPaths";
          v25 = 4470;
          v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
          v27 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Corrupt path index in crate file (%u >= %zu)", v12, a4);
        }
      }
    }

    else
    {
      v23 = "usd/crateFile.cpp";
      v24 = "_ReadCompressedPaths";
      v25 = 4457;
      v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>]";
      v27 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Failed to read compressed paths of size %llu", __dst);
    }

    v20 = __p[0];
    __p[0] = 0;
    if (v20)
    {
      operator delete[](v20);
    }

    v21 = v28[0];
    v28[0] = 0;
    if (v21)
    {
      operator delete[](v21);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_29A4E96FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_29A4E8A34(&a17);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  v25 = *(v23 - 96);
  if (v25)
  {
    *(v23 - 88) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 72);
  if (v26)
  {
    *(v23 - 64) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4E977C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 68));
  sub_29A1DE3A4((a1 + 64));
  return a1;
}

uint64_t sub_29A4E97B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v10[0] = 0;
  v10[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v10, 0x58uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A2052260;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  *(v5 + 8) = *a2;
  *(v5 + 56) = v7;
  *(v5 + 40) = v6;
  *(v5 + 24) = v8;
  sub_29A1DDD84((v5 + 72), (a2 + 64));
  sub_29A1DDDC0((v5 + 76), (a2 + 68));
  *(v5 + 80) = a1 + 272;
  return v5;
}

uint64_t sub_29A4E9860(uint64_t a1)
{
  *a1 = &unk_2A2052260;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 76));
  sub_29A1DE3A4((a1 + 72));
  return a1;
}

void sub_29A4E98B0(_DWORD *a1)
{
  *a1 = &unk_2A2052260;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 19);
  sub_29A1DE3A4(a1 + 18);

  operator delete(a1);
}

uint64_t sub_29A4E9910(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4E99B4(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 80));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4E99A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4E99B4(uint64_t a1)
{
  v2 = *a1;
  sub_29A4E9AAC(&v12, "Usd", "Usd_CrateDataImpl::Open", "Usd_CrateFile::CrateFile::Open", "_ReadPaths");
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  v5 = *(*v3 + 24) + *(a1 + 48);
  *&v9 = *(a1 + 8);
  *(&v9 + 1) = v5;
  v10 = v3;
  v11 = *(a1 + 32);
  sub_29A1E21F4(&v7, (a1 + 64));
  sub_29A1E2240(&v8, (a1 + 68));
  sub_29A4E8E28(v2, &v9, v4, &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  result = sub_29A1DE3A4(&v7);
  if (v12)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return result;
}

void sub_29A4E9A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_29A1DCEA8(&a9);
  sub_29A0E9CEC(&a15);
  _Unwind_Resume(a1);
}

_DWORD **sub_29A4E9AAC(_DWORD **a1, char *a2, char *a3, char *a4, char *a5)
{
  v6 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v6)
  {
    v10 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a2, 0);
    *a1 = v10;
    *(a1 + 2) = 4 * (v10 != 0);
    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a3, v10);
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a4, *a1);
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a5, *a1);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 2) = 0;
  }

  return a1;
}

uint64_t sub_29A4E9B48(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 68));
  sub_29A1DE3A4((a1 + 64));
  return a1;
}

uint64_t sub_29A4E9B80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v10[0] = 0;
  v10[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v10, 0x58uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20522A8;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  *(v5 + 8) = *a2;
  *(v5 + 56) = v7;
  *(v5 + 40) = v6;
  *(v5 + 24) = v8;
  sub_29A1DDD84((v5 + 72), (a2 + 64));
  sub_29A1DDDC0((v5 + 76), (a2 + 68));
  *(v5 + 80) = a1 + 272;
  return v5;
}

uint64_t sub_29A4E9C2C(uint64_t a1)
{
  *a1 = &unk_2A20522A8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 76));
  sub_29A1DE3A4((a1 + 72));
  return a1;
}

void sub_29A4E9C7C(_DWORD *a1)
{
  *a1 = &unk_2A20522A8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 19);
  sub_29A1DE3A4(a1 + 18);

  operator delete(a1);
}

uint64_t sub_29A4E9CDC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4E9D80(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 80));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4E9D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4E9D80(uint64_t a1)
{
  v2 = *a1;
  sub_29A4E9AAC(&v12, "Usd", "Usd_CrateDataImpl::Open", "Usd_CrateFile::CrateFile::Open", "_ReadPaths");
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  v5 = *(*v3 + 24) + *(a1 + 48);
  *&v9 = *(a1 + 8);
  *(&v9 + 1) = v5;
  v10 = v3;
  v11 = *(a1 + 32);
  sub_29A1E21F4(&v7, (a1 + 64));
  sub_29A1E2240(&v8, (a1 + 68));
  sub_29A4E9090(v2, &v9, v4, &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  result = sub_29A1DE3A4(&v7);
  if (v12)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return result;
}

void sub_29A4E9E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_29A1DCEA8(&a9);
  sub_29A0E9CEC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4E9E78(uint64_t a1, uint64_t a2, _DWORD *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this)
{
  sub_29A4E8A78(a1, this);
  __dst = 0;
  result = sub_29A4E7A0C(a2 + 8, &__dst, 8uLL);
  if (result)
  {
    v9 = *(**(a2 + 16) + 32);
    v10 = *(a2 + 8) - *(**(a2 + 16) + 24);
    v11 = v9 - v10;
    v12 = *(a1 + 8);
    v13 = __dst;
    if (v12 < __dst)
    {
      v13 = *(a1 + 8);
    }

    if (v11 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = (v9 - v10);
    }

    __dst = v14;
    if (v12 && *(a1 + 24))
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        result = sub_29A4E7A0C(a2 + 8, *a1, v14);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(*a1, __dst, a3, this, *(a1 + 16), v15);
          return 1;
        }

        return result;
      }

      v16[0] = "usd/crateFile.cpp";
      v16[1] = "Read";
      v16[2] = 2331;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_CompressedIntsReader::Read(Reader &, Int *, size_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, Int = int]";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 3, "Failed to read compressed ints of size %llu with remaining file size is %lld of %lld", v14, v11, v9);
    }

    else
    {
      sub_29B2AADC4();
    }

    return 0;
  }

  return result;
}

void sub_29A4E9F98(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29A4EA184(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

uint64_t sub_29A4E9FD4(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Spec_0_0_1]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A4EA108(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 16 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A12D958(a2, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4EA0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4EA108(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    v5 = v4 + 16 * a2;
    v6 = 16 * a2;
    v7 = (v4 + 4);
    do
    {
      *v7 = -1;
      v7 += 2;
      v6 -= 16;
    }

    while (v6);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A4EA168(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4EA184(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = (v4 + 12 * a2);
      v12 = 12 * a2;
      do
      {
        *v4 = -1;
        v4 = (v4 + 12);
        v12 -= 12;
      }

      while (v12);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_29A379A50(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[12 * v6];
    v14 = &v13[12 * a2];
    v15 = 12 * a2;
    v16 = v13;
    do
    {
      *v16 = -1;
      v16 = (v16 + 12);
      v15 -= 12;
    }

    while (v15);
    v17 = &v10[12 * v9];
    v18 = *(a1 + 8) - *a1;
    v19 = &v13[-v18];
    memcpy(&v13[-v18], *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v14;
    *(a1 + 16) = v17;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

uint64_t sub_29A4EA2D8(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Spec]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A4EA41C(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 12 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A4EA498(a2, __p, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - __p) >> 2));
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4EA400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4EA41C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A379A04(a1, a2);
    v4 = a1[1];
    v5 = v4 + 12 * a2;
    v6 = 12 * a2;
    do
    {
      *v4 = -1;
      v4 = (v4 + 12);
      v6 -= 12;
    }

    while (v6);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A4EA47C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4EA498(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 2) >= a4)
  {
    v16 = result[1];
    v17 = v16 - v9;
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v9) >> 2) >= a4)
    {
      v19 = a3 - __src;
      if (v19)
      {
        result = memmove(*result, __src, v19);
      }

      v15 = &v9[v19];
    }

    else
    {
      v18 = &__src[v17];
      if (v16 != v9)
      {
        result = memmove(*result, __src, v17);
        v16 = *(v7 + 8);
      }

      if (a3 != v18)
      {
        result = memmove(v16, v18, a3 - v18);
      }

      v15 = &v16[a3 - v18];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v12 = 0x1555555555555555;
    }

    else
    {
      v12 = v11;
    }

    result = sub_29A379A04(v7, v12);
    v13 = *(v7 + 8);
    v14 = a3 - __src;
    if (v14)
    {
      result = memmove(*(v7 + 8), __src, v14);
    }

    v15 = (v13 + v14);
  }

  *(v7 + 8) = v15;
  return result;
}

uint64_t sub_29A4EA5F4(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A37997C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A4EA760();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 10) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A4EA738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B394(va);
  _Unwind_Resume(a1);
}

__int16 *sub_29A4EA760()
{
  if ((atomic_load_explicit(&qword_2A14F8090, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AAE0C();
  }

  return &word_2A14F8080;
}

__int16 *sub_29A4EA798(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = (v7 + 12 * v8);
  if (*result < 0)
  {
    v10 = 0;
LABEL_7:
    while (sub_29A4EA92C(a1, v10))
    {
      v11 = a1[4];
      v8 = v5 & *a1;
      if (*(v11 + 12 * v8) < 0)
      {
        v10 = 0;
      }

      else
      {
        LOWORD(v10) = 0;
        do
        {
          v10 = (v10 + 1);
          v8 = (v8 + 1) & *a1;
        }

        while (v10 <= *(v11 + 12 * v8));
      }
    }

    v12 = (a1[4] + 12 * v8);
    if (*v12 == -1)
    {
      sub_29A1E21F4(v12 + 1, a3);
      sub_29A1E2240(v12 + 2, a3 + 1);
      *v12 = v10;
    }

    else
    {
      sub_29A4EAA00(a1, v8, v10, v5, a3);
    }

    ++a1[6];
    return (a1[4] + 12 * v8);
  }

  else
  {
    LOWORD(v10) = 0;
    while (*(result + 2) != *a2)
    {
      v10 = (v10 + 1);
      v8 = (v8 + 1) & v6;
      result = (v7 + 12 * v8);
      if (v10 > *result)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_29A4EA92C(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A4EAAA4(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A4EAAA4(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

_DWORD *sub_29A4EAA00(uint64_t *a1, uint64_t a2, __int16 a3, uint64_t a4, _DWORD *a5)
{
  sub_29A1E21F4(&v11, a5);
  sub_29A1E2240(&v12, a5 + 1);
  sub_29A379F44(a1, a2, a3, a4, &v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  return sub_29A1DE3A4(&v11);
}

void sub_29A4EAA90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A4EAAA4(uint64_t a1, unint64_t a2)
{
  sub_29A4EA5F4(&v8, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = (v3 + 4);
    do
    {
      if (*(v5 - 2) != -1)
      {
        v6 = bswap64(0x9E3779B97F4A7C55 * (v5[1] + ((v5[1] + *v5 + (v5[1] + *v5) * (v5[1] + *v5)) >> 1)));
        sub_29A379E94(&v8, v6 & v8, 0, v6, v5);
      }

      v7 = (v5 + 2);
      v5 += 3;
    }

    while (v7 != v4);
  }

  v9[5] = *(a1 + 48);
  sub_29A10A4B4(&v8, a1);
  v10 = v9;
  sub_29A36B394(&v10);
}

void sub_29A4EAB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 56) = &a11;
  sub_29A36B394((v11 - 56));
  _Unwind_Resume(a1);
}

void sub_29A4EABA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v29 = *(a2 - 24);
        v28 = a2 - 24;
        v27 = v29;
        if (*(v28 + 23) >= 0)
        {
          v27 = v28;
        }

        v30 = *v27;
        if (*(v9 + 23) >= 0)
        {
          v31 = v9;
        }

        else
        {
          v31 = *v9;
        }

        if (v30 < 0 || (v32 = *v31, v32 < 0) || ((v33 = v30, v34 = v32, v35 = (v32 ^ v33) & 0x5F, v33 >= 0x40) ? (v36 = v35 == 0) : (v36 = 1), v36 || v34 < 0x40))
        {
          if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v28, v9))
          {
            return;
          }
        }

        else if (((v33 + 5) & 0x1Fu) >= ((v34 + 5) & 0x1Fu))
        {
          return;
        }

        v41 = *(v9 + 16);
        v39 = *v9;
        v37 = *v28;
        *(v9 + 16) = *(v28 + 16);
        *v9 = v37;
        *v28 = v39;
        *(v28 + 16) = v41;
        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_29A4EB42C(v9, v9 + 24, v9 + 48, a2 - 24, a3);
      return;
    }

    if (v13 == 5)
    {

      sub_29A4EB670(v9, v9 + 24, v9 + 48, v9 + 72, a2 - 24, a3);
      return;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        sub_29A4EB964(v9, a2, a3);
      }

      else
      {

        sub_29A4EBB98(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_29A4ECA68(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v9 + 24 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      sub_29A4EB0A4(v9 + 24 * v14, v9, a2 - 24, a3);
      if (a5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_29A4EB0A4(v9, v9 + 24 * v14, a2 - 24, a3);
      v16 = 3 * v14;
      v17 = v9 + 24 * v14 - 24;
      sub_29A4EB0A4(v9 + 24, v17, a2 - 48, a3);
      v18 = v9 + 24 + 8 * v16;
      sub_29A4EB0A4(a1 + 48, v18, a2 - 72, a3);
      sub_29A4EB0A4(v17, v15, v18, a3);
      v40 = *(a1 + 16);
      v38 = *a1;
      v19 = *v15;
      *(a1 + 16) = *(v15 + 16);
      *a1 = v19;
      *(v15 + 16) = v40;
      *v15 = v38;
      if (a5)
      {
        goto LABEL_27;
      }
    }

    v20 = *(a1 - 24);
    if (*(a1 - 1) >= 0)
    {
      v20 = (a1 - 24);
    }

    v21 = *v20;
    if (*(a1 + 23) >= 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = *a1;
    }

    if (v21 < 0 || (v23 = *v22, v23 < 0) || v21 < 0x40u || ((v23 ^ v21) & 0x5F) == 0 || v23 < 0x40u)
    {
      if ((pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, a1 - 24, a1) & 1) == 0)
      {
LABEL_32:
        v9 = sub_29A4EBDA4(a1, a2, a3);
LABEL_34:
        a5 = 0;
        a4 = -v11;
        goto LABEL_2;
      }
    }

    else if (((v21 + 5) & 0x1Fu) >= ((v23 + 5) & 0x1Fu))
    {
      goto LABEL_32;
    }

LABEL_27:
    v24 = sub_29A4EC260(a1, a2, a3);
    if ((v25 & 1) == 0)
    {
      goto LABEL_33;
    }

    v26 = sub_29A4EC6B4(a1, v24, a3);
    v9 = v24 + 24;
    if (sub_29A4EC6B4(v24 + 24, a2, a3))
    {
      a4 = -v11;
      a2 = v24;
      if (v26)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v26)
    {
LABEL_33:
      sub_29A4EABA8(a1, v24, a3, -v11, a5 & 1);
      v9 = v24 + 24;
      goto LABEL_34;
    }
  }

  sub_29A4EB0A4(v9, v9 + 24, a2 - 24, a3);
}

uint64_t sub_29A4EB0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 23);
  v9 = *a2;
  if (v8 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = *v10;
  if (*(a1 + 23) >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 < 0 || (v13 = *v12, v13 < 0) || ((v14 = v11, v15 = v13, v16 = (v13 ^ v14) & 0x5F, v14 >= 0x40) ? (v17 = v16 == 0) : (v17 = 1), v17 || v15 < 0x40))
  {
    v27 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, a2, a1);
    LOBYTE(v8) = *(a2 + 23);
    v9 = *a2;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  else if (((v14 + 5) & 0x1Fu) < ((v15 + 5) & 0x1Fu))
  {
LABEL_15:
    if (*(a3 + 23) >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    v19 = *v18;
    if ((v8 & 0x80u) == 0)
    {
      v9 = a2;
    }

    if (v19 < 0 || (v20 = *v9, v20 < 0) || ((v21 = v19, v22 = (v20 ^ v19) & 0x5F, v21 >= 0x40) ? (v23 = v22 == 0) : (v23 = 1), v23 || v20 < 0x40u))
    {
      if (pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, a3, a2))
      {
        goto LABEL_28;
      }
    }

    else if (((v21 + 5) & 0x1Fu) < ((v20 + 5) & 0x1Fu))
    {
LABEL_28:
      v24 = *(a1 + 16);
      v25 = *a1;
      v26 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v26;
LABEL_71:
      *a3 = v25;
      *(a3 + 16) = v24;
      return 1;
    }

    v45 = *(a1 + 16);
    v46 = *a1;
    v47 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v47;
    *a2 = v46;
    *(a2 + 16) = v45;
    if (*(a3 + 23) >= 0)
    {
      v48 = a3;
    }

    else
    {
      v48 = *a3;
    }

    v49 = *v48;
    if (*(a2 + 23) >= 0)
    {
      v50 = a2;
    }

    else
    {
      v50 = *a2;
    }

    if (v49 < 0 || (v51 = *v50, v51 < 0) || v49 < 0x40u || ((v51 ^ v49) & 0x5F) == 0 || v51 < 0x40u)
    {
      if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, a3, a2))
      {
        return 1;
      }

      goto LABEL_70;
    }

    if (((v49 + 5) & 0x1Fu) < ((v51 + 5) & 0x1Fu))
    {
LABEL_70:
      v24 = *(a2 + 16);
      v25 = *a2;
      v52 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v52;
      goto LABEL_71;
    }

    return 1;
  }

  if (*(a3 + 23) >= 0)
  {
    v28 = a3;
  }

  else
  {
    v28 = *a3;
  }

  v29 = *v28;
  if ((v8 & 0x80u) == 0)
  {
    v9 = a2;
  }

  if ((v29 & 0x80000000) == 0)
  {
    v30 = *v9;
    if ((v30 & 0x80000000) == 0)
    {
      v31 = v29;
      v32 = (v30 ^ v29) & 0x5F;
      v33 = v31 < 0x40 || v32 == 0;
      if (!v33 && v30 >= 0x40u)
      {
        if (((v31 + 5) & 0x1Fu) >= ((v30 + 5) & 0x1Fu))
        {
          return 0;
        }

LABEL_43:
        v34 = *(a2 + 16);
        v35 = *a2;
        v36 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v36;
        *a3 = v35;
        *(a3 + 16) = v34;
        if (*(a2 + 23) >= 0)
        {
          v37 = a2;
        }

        else
        {
          v37 = *a2;
        }

        v38 = *v37;
        if (*(a1 + 23) >= 0)
        {
          v39 = a1;
        }

        else
        {
          v39 = *a1;
        }

        if (v38 < 0 || (v40 = *v39, v40 < 0) || v38 < 0x40u || ((v40 ^ v38) & 0x5F) == 0 || v40 < 0x40u)
        {
          if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, a2, a1))
          {
            return 1;
          }
        }

        else if (((v38 + 5) & 0x1Fu) >= ((v40 + 5) & 0x1Fu))
        {
          return 1;
        }

        v41 = *(a1 + 16);
        v42 = *a1;
        v43 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v43;
        *a2 = v42;
        *(a2 + 16) = v41;
        return 1;
      }
    }
  }

  result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, a3, a2);
  if (result)
  {
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_29A4EB42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_29A4EB0A4(a1, a2, a3, a5);
  if (*(a4 + 23) >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v12 = *v11;
  if (*(a3 + 23) >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if ((v12 & 0x80) != 0 || (v14 = *v13, v14 < 0) || (v12 >= 0x40 ? (v15 = ((v14 ^ v12) & 0x5F) == 0) : (v15 = 1), v15 || v14 < 0x40u))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a5, a4, a3);
    if (!result)
    {
      return result;
    }
  }

  else if (((v12 + 5) & 0x1Fu) >= ((v14 + 5) & 0x1Fu))
  {
    return result;
  }

  v16 = *(a3 + 16);
  v17 = *a3;
  v18 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v18;
  *a4 = v17;
  *(a4 + 16) = v16;
  if (*(a3 + 23) >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  v20 = *v19;
  if (*(a2 + 23) >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 < 0 || (v22 = *v21, v22 < 0) || ((v23 = v20, v24 = v22, v25 = (v22 ^ v23) & 0x5F, v23 >= 0x40) ? (v26 = v25 == 0) : (v26 = 1), v26 || v24 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a5, a3, a2);
    if (!result)
    {
      return result;
    }
  }

  else if (((v23 + 5) & 0x1Fu) >= ((v24 + 5) & 0x1Fu))
  {
    return result;
  }

  v27 = *(a2 + 16);
  v28 = *a2;
  v29 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v29;
  *a3 = v28;
  *(a3 + 16) = v27;
  if (*(a2 + 23) >= 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = *a2;
  }

  v31 = *v30;
  if (*(a1 + 23) >= 0)
  {
    v32 = a1;
  }

  else
  {
    v32 = *a1;
  }

  if (v31 < 0 || (v33 = *v32, v33 < 0) || v31 < 0x40u || ((v33 ^ v31) & 0x5F) == 0 || v33 < 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a5, a2, a1);
    if (!result)
    {
      return result;
    }
  }

  else if (((v31 + 5) & 0x1Fu) >= ((v33 + 5) & 0x1Fu))
  {
    return result;
  }

  v34 = *(a1 + 16);
  v35 = *a1;
  v36 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v36;
  *a2 = v35;
  *(a2 + 16) = v34;
  return result;
}

uint64_t sub_29A4EB670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_29A4EB42C(a1, a2, a3, a4, a6);
  if (*(a5 + 23) >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  v14 = *v13;
  if (*(a4 + 23) >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 < 0 || (v16 = *v15, v16 < 0) || ((v17 = v14, v18 = v16, v19 = (v16 ^ v17) & 0x5F, v17 >= 0x40) ? (v20 = v19 == 0) : (v20 = 1), v20 || v18 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a6, a5, a4);
    if (!result)
    {
      return result;
    }
  }

  else if (((v17 + 5) & 0x1Fu) >= ((v18 + 5) & 0x1Fu))
  {
    return result;
  }

  v21 = *(a4 + 16);
  v22 = *a4;
  v23 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v23;
  *a5 = v22;
  *(a5 + 16) = v21;
  if (*(a4 + 23) >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  v25 = *v24;
  if (*(a3 + 23) >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 < 0 || (v27 = *v26, v27 < 0) || ((v28 = v25, v29 = v27, v30 = (v27 ^ v28) & 0x5F, v28 >= 0x40) ? (v31 = v30 == 0) : (v31 = 1), v31 || v29 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a6, a4, a3);
    if (!result)
    {
      return result;
    }
  }

  else if (((v28 + 5) & 0x1Fu) >= ((v29 + 5) & 0x1Fu))
  {
    return result;
  }

  v32 = *(a3 + 16);
  v33 = *a3;
  v34 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v34;
  *a4 = v33;
  *(a4 + 16) = v32;
  if (*(a3 + 23) >= 0)
  {
    v35 = a3;
  }

  else
  {
    v35 = *a3;
  }

  v36 = *v35;
  if (*(a2 + 23) >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = *a2;
  }

  if (v36 < 0 || (v38 = *v37, v38 < 0) || v36 < 0x40u || ((v38 ^ v36) & 0x5F) == 0 || v38 < 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a6, a3, a2);
    if (!result)
    {
      return result;
    }
  }

  else if (((v36 + 5) & 0x1Fu) >= ((v38 + 5) & 0x1Fu))
  {
    return result;
  }

  v39 = *(a2 + 16);
  v40 = *a2;
  v41 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v41;
  *a3 = v40;
  *(a3 + 16) = v39;
  if (*(a2 + 23) >= 0)
  {
    v42 = a2;
  }

  else
  {
    v42 = *a2;
  }

  v43 = *v42;
  if (*(a1 + 23) >= 0)
  {
    v44 = a1;
  }

  else
  {
    v44 = *a1;
  }

  if (v43 < 0 || (v45 = *v44, v45 < 0) || v43 < 0x40u || ((v45 ^ v43) & 0x5F) == 0 || v45 < 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a6, a2, a1);
    if (!result)
    {
      return result;
    }
  }

  else if (((v43 + 5) & 0x1Fu) >= ((v45 + 5) & 0x1Fu))
  {
    return result;
  }

  v46 = *(a1 + 16);
  v47 = *a1;
  v48 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v48;
  *a2 = v47;
  *(a2 + 16) = v46;
  return result;
}

void sub_29A4EB964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return;
  }

  v5 = (a1 + 24);
  if (a1 + 24 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = v5;
    if (*(v9 + 47) < 0)
    {
      v5 = *(v9 + 24);
    }

    v10 = *v5;
    if (*(v9 + 23) >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = *v9;
    }

    if (v10 < 0 || (v12 = *v11, v12 < 0) || ((v13 = v10, v14 = v12, v15 = (v12 ^ v13) & 0x5F, v13 >= 0x40) ? (v16 = v15 == 0) : (v16 = 1), v16 || v14 < 0x40))
    {
      if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v8, v9))
      {
        goto LABEL_41;
      }
    }

    else if (((v13 + 5) & 0x1Fu) >= ((v14 + 5) & 0x1Fu))
    {
      goto LABEL_41;
    }

    v28 = *v8;
    v29 = *(v8 + 16);
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 0;
    for (i = v7; ; i -= 24)
    {
      v18 = a1 + i;
      if (*(a1 + i + 47) < 0)
      {
        operator delete(*(v18 + 24));
      }

      *(v18 + 24) = *v18;
      *(v18 + 40) = *(v18 + 16);
      *(v18 + 23) = 0;
      *v18 = 0;
      if (!i)
      {
        v27 = a1;
        goto LABEL_40;
      }

      v19 = *(a1 + i - 24);
      if (v29 >= 0)
      {
        v20 = &v28;
      }

      else
      {
        v20 = v28;
      }

      v21 = *v20;
      if (*(a1 + i - 1) >= 0)
      {
        v19 = (a1 + i - 24);
      }

      if (v21 < 0)
      {
        break;
      }

      v22 = *v19;
      if (v22 < 0)
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      v25 = (v22 ^ v23) & 0x5F;
      v26 = v23 < 0x40 || v25 == 0;
      if (v26 || v24 < 0x40)
      {
        break;
      }

      if (((v23 + 5) & 0x1Fu) >= ((v24 + 5) & 0x1Fu))
      {
        v27 = a1 + i;
        goto LABEL_40;
      }

LABEL_34:
      ;
    }

    if (pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, &v28, a1 + i - 24))
    {
      goto LABEL_34;
    }

    v27 = a1 + i;
    if (*(v27 + 23) < 0)
    {
      operator delete(*v27);
    }

LABEL_40:
    *v27 = v28;
    *(v27 + 16) = v29;
LABEL_41:
    v5 = (v8 + 24);
    v7 += 24;
  }

  while (v8 + 24 != a2);
}

void sub_29A4EBB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4EBB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = a1;
  v5 = (a1 + 24);
  if (a1 + 24 == a2)
  {
    return;
  }

  v7 = a1 - 24;
  do
  {
    v8 = v4;
    v4 = v5;
    if (*(v8 + 47) < 0)
    {
      v5 = *(v8 + 24);
    }

    v9 = *v5;
    if (*(v8 + 23) >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = *v8;
    }

    if (v9 < 0 || (v11 = *v10, v11 < 0) || ((v12 = v9, v13 = v11, v14 = (v11 ^ v12) & 0x5F, v12 >= 0x40) ? (v15 = v14 == 0) : (v15 = 1), v15 || v13 < 0x40))
    {
      if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v4, v8))
      {
        goto LABEL_39;
      }
    }

    else if (((v12 + 5) & 0x1Fu) >= ((v13 + 5) & 0x1Fu))
    {
      goto LABEL_39;
    }

    v25 = *v4;
    v26 = *(v4 + 16);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    for (i = v7; ; i -= 24)
    {
      if (*(i + 71) < 0)
      {
        operator delete(*(i + 48));
      }

      *(i + 48) = *(i + 24);
      *(i + 64) = *(i + 40);
      *(i + 47) = 0;
      *(i + 24) = 0;
      v17 = v26 >= 0 ? &v25 : v25;
      v18 = *v17;
      v19 = *(i + 23) >= 0 ? i : *i;
      if (v18 < 0)
      {
        break;
      }

      v20 = *v19;
      if (v20 < 0)
      {
        break;
      }

      v21 = v18;
      v22 = v20;
      v23 = (v20 ^ v21) & 0x5F;
      v24 = v21 < 0x40 || v23 == 0;
      if (v24 || v22 < 0x40)
      {
        break;
      }

      if (((v21 + 5) & 0x1Fu) >= ((v22 + 5) & 0x1Fu))
      {
        goto LABEL_38;
      }

LABEL_34:
      ;
    }

    if (pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, &v25, i))
    {
      goto LABEL_34;
    }

    if (*(i + 47) < 0)
    {
      operator delete(*(i + 24));
    }

LABEL_38:
    *(i + 24) = v25;
    *(i + 40) = v26;
LABEL_39:
    v5 = (v4 + 24);
    v7 += 24;
  }

  while (v4 + 24 != a2);
}

void sub_29A4EBD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A4EBDA4(__int128 *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v67 = *(a1 + 2);
  v66 = *a1;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v6 = *(a2 - 24);
  v7 = &v66;
  if (v67 < 0)
  {
    v7 = v66;
  }

  v8 = *v7;
  if (*(a2 - 1) >= 0)
  {
    v6 = (a2 - 24);
  }

  if (v8 < 0 || (v9 = *v6, v9 < 0) || ((v10 = v8, v11 = v9, v12 = (v9 ^ v10) & 0x5F, v10 >= 0x40) ? (v13 = v12 == 0) : (v13 = 1), v13 || v11 < 0x40))
  {
    if (pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, &v66, a2 - 24))
    {
LABEL_13:
      v14 = a1 + 24;
      do
      {
        while (1)
        {
          i = v14;
          v16 = v67 >= 0 ? &v66 : v66;
          v17 = *v16;
          v18 = *(v14 + 23) >= 0 ? v14 : *v14;
          v14 += 24;
          if (v17 < 0)
          {
            break;
          }

          v19 = *v18;
          if (v19 < 0)
          {
            break;
          }

          v20 = v17;
          v21 = v19;
          v22 = (v19 ^ v20) & 0x5F;
          v23 = v20 < 0x40 || v22 == 0;
          if (v23 || v21 < 0x40)
          {
            break;
          }

          if (((v20 + 5) & 0x1Fu) < ((v21 + 5) & 0x1Fu))
          {
            goto LABEL_50;
          }
        }
      }

      while ((pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, &v66, i) & 1) == 0);
      goto LABEL_50;
    }
  }

  else if (((v10 + 5) & 0x1Fu) < ((v11 + 5) & 0x1Fu))
  {
    goto LABEL_13;
  }

  for (i = a1 + 24; i < v4; i += 24)
  {
    if (v67 >= 0)
    {
      v24 = &v66;
    }

    else
    {
      v24 = v66;
    }

    v25 = *v24;
    if (*(i + 23) >= 0)
    {
      v26 = i;
    }

    else
    {
      v26 = *i;
    }

    if (v25 < 0 || (v27 = *v26, v27 < 0) || ((v28 = v25, v29 = v27, v30 = (v27 ^ v28) & 0x5F, v28 >= 0x40) ? (v31 = v30 == 0) : (v31 = 1), v31 || v29 < 0x40))
    {
      if (pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, &v66, i))
      {
        break;
      }
    }

    else if (((v28 + 5) & 0x1Fu) < ((v29 + 5) & 0x1Fu))
    {
      break;
    }
  }

LABEL_50:
  if (i < v4)
  {
    v32 = v4 - 24;
    do
    {
      while (1)
      {
        v4 = v32;
        v33 = v67 >= 0 ? &v66 : v66;
        v34 = *v33;
        v35 = *(v32 + 23) >= 0 ? v32 : *v32;
        v32 -= 24;
        if (v34 < 0)
        {
          break;
        }

        v36 = *v35;
        if (v36 < 0)
        {
          break;
        }

        v37 = v34;
        v38 = v36;
        v39 = (v36 ^ v37) & 0x5F;
        v40 = v37 < 0x40 || v39 == 0;
        if (v40 || v38 < 0x40)
        {
          break;
        }

        if (((v37 + 5) & 0x1Fu) >= ((v38 + 5) & 0x1Fu))
        {
          goto LABEL_68;
        }
      }
    }

    while ((pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, &v66, v4) & 1) != 0);
  }

LABEL_68:
  while (i < v4)
  {
    v41 = *i;
    v69 = *(i + 16);
    v68 = v41;
    v42 = *v4;
    *(i + 16) = *(v4 + 16);
    *i = v42;
    v43 = v68;
    *(v4 + 16) = v69;
    *v4 = v43;
    v44 = i + 24;
    do
    {
      while (1)
      {
        i = v44;
        v45 = v67 >= 0 ? &v66 : v66;
        v46 = *v45;
        v47 = *(v44 + 23) >= 0 ? v44 : *v44;
        v44 += 24;
        if (v46 < 0)
        {
          break;
        }

        v48 = *v47;
        if (v48 < 0)
        {
          break;
        }

        v49 = v46;
        v50 = v48;
        v51 = (v48 ^ v49) & 0x5F;
        v52 = v49 < 0x40 || v51 == 0;
        if (v52 || v50 < 0x40)
        {
          break;
        }

        if (((v49 + 5) & 0x1Fu) < ((v50 + 5) & 0x1Fu))
        {
          goto LABEL_86;
        }
      }
    }

    while (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, &v66, i));
LABEL_86:
    v53 = v4 - 24;
    do
    {
      while (1)
      {
        v4 = v53;
        v54 = v67 >= 0 ? &v66 : v66;
        v55 = *v54;
        v56 = *(v53 + 23) >= 0 ? v53 : *v53;
        v53 -= 24;
        if (v55 < 0)
        {
          break;
        }

        v57 = *v56;
        if (v57 < 0)
        {
          break;
        }

        v58 = v55;
        v59 = v57;
        v60 = (v57 ^ v58) & 0x5F;
        v61 = v58 < 0x40 || v60 == 0;
        if (v61 || v59 < 0x40)
        {
          break;
        }

        if (((v58 + 5) & 0x1Fu) >= ((v59 + 5) & 0x1Fu))
        {
          goto LABEL_103;
        }
      }
    }

    while ((pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, &v66, v4) & 1) != 0);
LABEL_103:
    ;
  }

  v62 = (i - 24);
  if ((i - 24) == a1)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*v62);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v63 = *v62;
    *(a1 + 2) = *(i - 8);
    *a1 = v63;
    *(i - 1) = 0;
    *(i - 24) = 0;
  }

  v64 = v66;
  *(i - 8) = v67;
  *v62 = v64;
  return i;
}

void sub_29A4EC230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A4EC260(__int128 *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v63 = *a1;
  v64 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  while (1)
  {
    v7 = *(a1 + v6 + 24);
    if (*(a1 + v6 + 47) >= 0)
    {
      v7 = a1 + v6 + 24;
    }

    v8 = *v7;
    v9 = v64 >= 0 ? &v63 : v63;
    if (v8 < 0)
    {
      break;
    }

    v10 = *v9;
    if (v10 < 0)
    {
      break;
    }

    v11 = v8;
    v12 = v10;
    v13 = (v10 ^ v11) & 0x5F;
    v14 = v11 < 0x40 || v13 == 0;
    if (v14 || v12 < 0x40)
    {
      break;
    }

    if (((v11 + 5) & 0x1Fu) >= ((v12 + 5) & 0x1Fu))
    {
      goto LABEL_17;
    }

LABEL_15:
    v6 += 24;
  }

  if (pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, a1 + v6 + 24, &v63))
  {
    goto LABEL_15;
  }

LABEL_17:
  v15 = a1 + v6 + 24;
  if (v6)
  {
    v16 = a2 - 24;
    do
    {
      while (1)
      {
        a2 = v16;
        v17 = *(v16 + 23) >= 0 ? v16 : *v16;
        v18 = *v17;
        v19 = v64 >= 0 ? &v63 : v63;
        v16 -= 24;
        if (v18 < 0)
        {
          break;
        }

        v20 = *v19;
        if (v20 < 0)
        {
          break;
        }

        v21 = v18;
        v22 = v20;
        v23 = (v20 ^ v21) & 0x5F;
        v24 = v21 < 0x40 || v23 == 0;
        if (v24 || v22 < 0x40)
        {
          break;
        }

        if (((v21 + 5) & 0x1Fu) < ((v22 + 5) & 0x1Fu))
        {
          goto LABEL_60;
        }
      }
    }

    while (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, a2, &v63));
  }

  else if (v15 < a2)
  {
    for (a2 -= 24; ; a2 -= 24)
    {
      if (*(a2 + 23) >= 0)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a2;
      }

      v26 = *v25;
      if (v64 >= 0)
      {
        v27 = &v63;
      }

      else
      {
        v27 = v63;
      }

      if (v26 < 0 || (v28 = *v27, v28 < 0) || ((v29 = v26, v30 = v28, v31 = (v28 ^ v29) & 0x5F, v29 >= 0x40) ? (v32 = v31 == 0) : (v32 = 1), v32 || v30 < 0x40))
      {
        v34 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, a2, &v63);
        if (v15 >= a2)
        {
          v35 = 1;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          break;
        }
      }

      else if (((v29 + 5) & 0x1Fu) < ((v30 + 5) & 0x1Fu) || v15 >= a2)
      {
        break;
      }
    }
  }

LABEL_60:
  if (v15 >= a2)
  {
    v36 = a1 + v6 + 24;
  }

  else
  {
    v36 = a1 + v6 + 24;
    v37 = a2;
    do
    {
      v38 = *v36;
      v66 = *(v36 + 16);
      v65 = v38;
      v39 = *v37;
      *(v36 + 16) = *(v37 + 16);
      *v36 = v39;
      v40 = v65;
      *(v37 + 16) = v66;
      *v37 = v40;
      v41 = v36 + 24;
      do
      {
        while (1)
        {
          v36 = v41;
          v42 = *(v41 + 23) >= 0 ? v41 : *v41;
          v43 = *v42;
          v44 = v64 >= 0 ? &v63 : v63;
          v41 += 24;
          if (v43 < 0)
          {
            break;
          }

          v45 = *v44;
          if (v45 < 0)
          {
            break;
          }

          v46 = v43;
          v47 = v45;
          v48 = (v45 ^ v46) & 0x5F;
          v49 = v46 < 0x40 || v48 == 0;
          if (v49 || v47 < 0x40)
          {
            break;
          }

          if (((v46 + 5) & 0x1Fu) >= ((v47 + 5) & 0x1Fu))
          {
            goto LABEL_79;
          }
        }
      }

      while ((pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v36, &v63) & 1) != 0);
LABEL_79:
      v50 = v37 - 24;
      do
      {
        while (1)
        {
          v37 = v50;
          v51 = *(v50 + 23) >= 0 ? v50 : *v50;
          v52 = *v51;
          v53 = v64 >= 0 ? &v63 : v63;
          v50 -= 24;
          if (v52 < 0)
          {
            break;
          }

          v54 = *v53;
          if (v54 < 0)
          {
            break;
          }

          v55 = v52;
          v56 = v54;
          v57 = (v54 ^ v55) & 0x5F;
          v58 = v55 < 0x40 || v57 == 0;
          if (v58 || v56 < 0x40)
          {
            break;
          }

          if (((v55 + 5) & 0x1Fu) < ((v56 + 5) & 0x1Fu))
          {
            goto LABEL_96;
          }
        }
      }

      while (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v37, &v63));
LABEL_96:
      ;
    }

    while (v36 < v37);
  }

  v59 = (v36 - 24);
  if ((v36 - 24) == a1)
  {
    if (*(v36 - 1) < 0)
    {
      operator delete(*v59);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v60 = *v59;
    *(a1 + 2) = *(v36 - 8);
    *a1 = v60;
    *(v36 - 1) = 0;
    *(v36 - 24) = 0;
  }

  v61 = v63;
  *(v36 - 8) = v64;
  *v59 = v61;
  return v36 - 24;
}

void sub_29A4EC688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A4EC6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_29A4EB0A4(a1, a1 + 24, a2 - 24, a3);
        return 1;
      case 4:
        sub_29A4EB42C(a1, a1 + 24, a1 + 48, a2 - 24, a3);
        return 1;
      case 5:
        sub_29A4EB670(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v8 = a2 - 24;
      v7 = *(a2 - 24);
      if (*(a2 - 1) >= 0)
      {
        v7 = (a2 - 24);
      }

      v9 = *v7;
      if (*(a1 + 23) >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v9 < 0 || (v11 = *v10, v11 < 0) || ((v12 = v9, v13 = v11, v14 = (v11 ^ v12) & 0x5F, v12 >= 0x40) ? (v15 = v14 == 0) : (v15 = 1), v15 || v13 < 0x40))
      {
        if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, a2 - 24, a1))
        {
          return 1;
        }
      }

      else if (((v12 + 5) & 0x1Fu) >= ((v13 + 5) & 0x1Fu))
      {
        return 1;
      }

      v16 = *(a1 + 16);
      v17 = *a1;
      v18 = *(v8 + 16);
      *a1 = *v8;
      *(a1 + 16) = v18;
      *v8 = v17;
      *(v8 + 16) = v16;
      return 1;
    }
  }

  v19 = a1 + 48;
  sub_29A4EB0A4(a1, a1 + 24, a1 + 48, a3);
  v20 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (2)
  {
    if (*(v20 + 23) >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = *v20;
    }

    v24 = *v23;
    if (*(v19 + 23) >= 0)
    {
      v25 = v19;
    }

    else
    {
      v25 = *v19;
    }

    if (v24 < 0 || (v26 = *v25, v26 < 0) || ((v27 = v24, v28 = v26, v29 = (v26 ^ v27) & 0x5F, v27 >= 0x40) ? (v30 = v29 == 0) : (v30 = 1), v30 || v28 < 0x40))
    {
      if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v20, v19))
      {
        goto LABEL_64;
      }
    }

    else if (((v27 + 5) & 0x1Fu) >= ((v28 + 5) & 0x1Fu))
    {
      goto LABEL_64;
    }

    LOBYTE(v31) = 0;
    v45 = *v20;
    v46 = *(v20 + 16);
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *v20 = 0;
    for (i = v21; ; i -= 24)
    {
      v33 = a1 + i;
      if ((v31 & 0x80) != 0)
      {
        operator delete(*(v33 + 72));
      }

      *(v33 + 72) = *(v33 + 48);
      *(v33 + 88) = *(v33 + 64);
      *(v33 + 71) = 0;
      *(v33 + 48) = 0;
      if (i == -48)
      {
        v43 = a1;
        goto LABEL_63;
      }

      v34 = *(a1 + i + 24);
      if (v46 >= 0)
      {
        v35 = &v45;
      }

      else
      {
        v35 = v45;
      }

      v36 = *v35;
      if (*(a1 + i + 47) >= 0)
      {
        v34 = (a1 + i + 24);
      }

      if (v36 < 0)
      {
        break;
      }

      v37 = *v34;
      if (v37 < 0)
      {
        break;
      }

      v38 = v36;
      v39 = v37;
      v40 = (v37 ^ v38) & 0x5F;
      v41 = v38 < 0x40 || v40 == 0;
      if (v41 || v39 < 0x40)
      {
        break;
      }

      if (((v38 + 5) & 0x1Fu) >= ((v39 + 5) & 0x1Fu))
      {
        v43 = a1 + i + 48;
        goto LABEL_63;
      }

      LOBYTE(v31) = 0;
LABEL_57:
      ;
    }

    v42 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, &v45, a1 + i + 24);
    v31 = *(v33 + 71);
    if (v42)
    {
      goto LABEL_57;
    }

    v43 = a1 + i + 48;
    if (v31 < 0)
    {
      operator delete(*v43);
    }

LABEL_63:
    *v43 = v45;
    *(v43 + 16) = v46;
    if (++v22 != 8)
    {
LABEL_64:
      v19 = v20;
      v21 += 24;
      v20 += 24;
      if (v20 == a2)
      {
        return 1;
      }

      continue;
    }

    return v20 + 24 == a2;
  }
}

void sub_29A4ECA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4ECA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        sub_29A4ECD18(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      while (1)
      {
        v14 = *(v13 + 23) >= 0 ? v13 : *v13;
        v15 = *v14;
        v16 = *(a1 + 23) >= 0 ? a1 : *a1;
        if (v15 < 0)
        {
          break;
        }

        v17 = *v16;
        if (v17 < 0)
        {
          break;
        }

        v18 = v15;
        v19 = v17;
        v20 = (v17 ^ v18) & 0x5F;
        v21 = v18 < 0x40 || v20 == 0;
        if (v21 || v19 < 0x40)
        {
          break;
        }

        if (((v18 + 5) & 0x1Fu) < ((v19 + 5) & 0x1Fu))
        {
          goto LABEL_21;
        }

LABEL_22:
        v13 += 24;
        if (v13 == a3)
        {
          goto LABEL_26;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, v13, a1))
      {
        goto LABEL_22;
      }

LABEL_21:
      v22 = *(v13 + 16);
      v23 = *v13;
      v24 = *(a1 + 16);
      *v13 = *a1;
      *(v13 + 16) = v24;
      *a1 = v23;
      *(a1 + 16) = v22;
      sub_29A4ECD18(a1, a4, v9, a1);
      goto LABEL_22;
    }

LABEL_26:
    if (v8 >= 25)
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v26 = a2 - 24;
      do
      {
        v27 = *a1;
        *v35 = *(a1 + 8);
        *&v35[7] = *(a1 + 15);
        v28 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v29 = sub_29A4ED0AC(a1, a4, v25);
        v30 = v29;
        v31 = *(v29 + 23);
        if (v26 == v29)
        {
          if (v31 < 0)
          {
            operator delete(*v29);
          }

          *v30 = v27;
          *(v30 + 8) = *v35;
          *(v30 + 15) = *&v35[7];
          *(v30 + 23) = v28;
        }

        else
        {
          if (v31 < 0)
          {
            operator delete(*v29);
          }

          v32 = *v26;
          *(v30 + 16) = *(v26 + 16);
          *v30 = v32;
          *v26 = v27;
          *(v26 + 8) = *v35;
          *(v26 + 15) = *&v35[7];
          *(v26 + 23) = v28;
          sub_29A4ED1F8(a1, v30 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v30 + 24 - a1) >> 3));
        }

        v26 -= 24;
      }

      while (v25-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_29A4ECD00(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4ECD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v5 = a4;
  v7 = v4 >> 1;
  if ((v4 >> 1) < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
  {
    return;
  }

  v10 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
  v11 = a1 + 24 * v10;
  v12 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
  if (v12 < a3)
  {
    v13 = *(v11 + 24);
    if (*(v11 + 23) >= 0)
    {
      v14 = (a1 + 24 * v10);
    }

    else
    {
      v14 = *v11;
    }

    v15 = *v14;
    if (*(v11 + 47) >= 0)
    {
      v13 = (v11 + 24);
    }

    if (v15 < 0 || (v16 = *v13, v16 < 0) || ((v17 = v15, v18 = v16, v19 = (v16 ^ v17) & 0x5F, v17 >= 0x40) ? (v20 = v19 == 0) : (v20 = 1), v20 || v18 < 0x40))
    {
      if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a2, a1 + 24 * v10, v11 + 24))
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (((v17 + 5) & 0x1Fu) < ((v18 + 5) & 0x1Fu))
    {
LABEL_17:
      v11 += 24;
      v10 = v12;
    }
  }

LABEL_18:
  if (*(v11 + 23) >= 0)
  {
    v21 = v11;
  }

  else
  {
    v21 = *v11;
  }

  v22 = *v21;
  if (*(v5 + 23) >= 0)
  {
    v23 = v5;
  }

  else
  {
    v23 = *v5;
  }

  if ((v22 & 0x80000000) == 0)
  {
    v24 = *v23;
    if ((v24 & 0x80000000) == 0)
    {
      v25 = v22;
      v26 = v24;
      v27 = (v24 ^ v25) & 0x5F;
      v28 = v25 < 0x40 || v27 == 0;
      if (!v28 && v26 >= 0x40)
      {
        if (((v25 + 5) & 0x1Fu) < ((v26 + 5) & 0x1Fu))
        {
          return;
        }

        goto LABEL_32;
      }
    }
  }

  if ((pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a2, v11, v5) & 1) == 0)
  {
LABEL_32:
    v51 = a2;
    v52 = *v5;
    v53 = *(v5 + 16);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
    while (1)
    {
      v29 = *v11;
      *(v5 + 16) = *(v11 + 16);
      *v5 = v29;
      *(v11 + 23) = 0;
      *v11 = 0;
      if (v7 < v10)
      {
LABEL_71:
        v50 = v52;
        *(v11 + 16) = v53;
        *v11 = v50;
        return;
      }

      v30 = 2 * v10;
      v10 = (2 * v10) | 1;
      v31 = a1 + 24 * v10;
      v32 = v30 + 2;
      if (v30 + 2 < a3)
      {
        v33 = *(v31 + 24);
        if (*(v31 + 23) >= 0)
        {
          v34 = (a1 + 24 * v10);
        }

        else
        {
          v34 = *v31;
        }

        v35 = *v34;
        if (*(v31 + 47) >= 0)
        {
          v33 = (v31 + 24);
        }

        if ((v35 & 0x80000000) == 0)
        {
          v36 = *v33;
          if ((v36 & 0x80000000) == 0)
          {
            v37 = v35;
            v38 = v36;
            v39 = (v36 ^ v37) & 0x5F;
            v40 = v37 < 0x40 || v39 == 0;
            if (!v40 && v38 >= 0x40)
            {
              if (((v37 + 5) & 0x1Fu) >= ((v38 + 5) & 0x1Fu))
              {
                goto LABEL_49;
              }

LABEL_48:
              v31 += 24;
              v10 = v32;
              goto LABEL_49;
            }
          }
        }

        if (pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(v51, a1 + 24 * v10, v31 + 24))
        {
          goto LABEL_48;
        }
      }

LABEL_49:
      if (*(v31 + 23) >= 0)
      {
        v41 = v31;
      }

      else
      {
        v41 = *v31;
      }

      v42 = *v41;
      if (v53 >= 0)
      {
        v43 = &v52;
      }

      else
      {
        v43 = v52;
      }

      if (v42 < 0 || (v44 = *v43, v44 < 0) || ((v45 = v42, v46 = v44, v47 = (v44 ^ v45) & 0x5F, v45 >= 0x40) ? (v48 = v47 == 0) : (v48 = 1), v48 || v46 < 0x40))
      {
        if (pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(v51, v31, &v52))
        {
LABEL_69:
          if (*(v11 + 23) < 0)
          {
            operator delete(*v11);
          }

          goto LABEL_71;
        }
      }

      else if (((v45 + 5) & 0x1Fu) < ((v46 + 5) & 0x1Fu))
      {
        goto LABEL_69;
      }

      v49 = *(v11 + 23);
      v5 = v11;
      v11 = v31;
      if (v49 < 0)
      {
        operator delete(*v5);
      }
    }
  }
}

void sub_29A4ED090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4ED0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = v8 + 24;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_17;
    }

    v14 = *(v8 + 48);
    v13 = v8 + 48;
    v12 = v14;
    if (*(v13 - 1) >= 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = *(v13 - 24);
    }

    v16 = *v15;
    if (*(v13 + 23) >= 0)
    {
      v12 = v13;
    }

    if ((v16 & 0x80000000) == 0)
    {
      v17 = *v12;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = v16;
        v19 = v17;
        v20 = (v17 ^ v18) & 0x5F;
        v21 = v18 < 0x40 || v20 == 0;
        if (!v21 && v19 >= 0x40)
        {
          if (((v18 + 5) & 0x1Fu) >= ((v19 + 5) & 0x1Fu))
          {
            goto LABEL_17;
          }

LABEL_16:
          v9 = v13;
          v6 = v11;
          goto LABEL_17;
        }
      }
    }

    if (pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a2, v9, v13))
    {
      goto LABEL_16;
    }

LABEL_17:
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v22 = *v9;
    *(a1 + 16) = *(v9 + 16);
    *a1 = v22;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_29A4ED1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = a1 + 24 * (v4 >> 1);
    v10 = a2 - 24;
    v9 = *(a2 - 24);
    if (*(v8 + 23) >= 0)
    {
      v11 = (a1 + 24 * (v4 >> 1));
    }

    else
    {
      v11 = *v8;
    }

    v12 = *v11;
    if (*(a2 - 1) >= 0)
    {
      v9 = (a2 - 24);
    }

    if (v12 < 0 || (v13 = *v9, v13 < 0) || ((v14 = v12, v15 = v13, v16 = (v13 ^ v14) & 0x5F, v14 >= 0x40) ? (v17 = v16 == 0) : (v17 = 1), v17 || v15 < 0x40))
    {
      if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v8, v10))
      {
        return;
      }
    }

    else if (((v14 + 5) & 0x1Fu) >= ((v15 + 5) & 0x1Fu))
    {
      return;
    }

    v28 = *v10;
    v29 = *(v10 + 16);
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 0;
    while (1)
    {
      v18 = v8;
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v19 = *v8;
      *(v10 + 16) = *(v8 + 16);
      *v10 = v19;
      *(v8 + 23) = 0;
      *v8 = 0;
      if (!v7)
      {
        break;
      }

      v7 = (v7 - 1) >> 1;
      v8 = a1 + 24 * v7;
      if (*(v8 + 23) >= 0)
      {
        v20 = (a1 + 24 * v7);
      }

      else
      {
        v20 = *v8;
      }

      v21 = *v20;
      if (v29 >= 0)
      {
        v22 = &v28;
      }

      else
      {
        v22 = v28;
      }

      if (v21 < 0 || (v23 = *v22, v23 < 0) || ((v24 = v21, v25 = v23, v26 = (v23 ^ v24) & 0x5F, v24 >= 0x40) ? (v27 = v26 == 0) : (v27 = 1), v27 || v25 < 0x40))
      {
        v10 = v18;
        if ((pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, a1 + 24 * v7, &v28) & 1) == 0)
        {
          if (*(v18 + 23) < 0)
          {
            operator delete(*v18);
          }

          break;
        }
      }

      else
      {
        v10 = v18;
        if (((v24 + 5) & 0x1Fu) >= ((v25 + 5) & 0x1Fu))
        {
          break;
        }
      }
    }

    *v18 = v28;
    *(v18 + 16) = v29;
  }
}

void sub_29A4ED3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4ED40C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = 0x434453552D525850;
  *(a3 + 9) = 12;
  if (a2 > 87)
  {
    *(a1 + 8) = 0;
    v6 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 24), a3, 0x58, *a1);
    if (v6 != -1)
    {
      *(a1 + 8) += v6;
    }

    if (*a3 == 0x434453552D525850)
    {
      v9 = *(a3 + 8);
      v10 = *(a3 + 9);
      if (*(a3 + 8) || v10 >= 0xD)
      {
        v19 = "usd/crateFile.cpp";
        v20 = "_ReadBootStrap";
        v21 = 3837;
        v22 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream]";
        v23 = 0;
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", v7, v8, v9, v10, *(a3 + 10));
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", v11, v12, 0, 12, 0);
        if (v18 >= 0)
        {
          v13 = &v17;
        }

        else
        {
          v13 = v17;
        }

        if (v16 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 3, "Usd crate file version mismatch -- file is %s, software supports %s", v13, p_p);
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }
      }

      else if (*(a3 + 16) >= a2)
      {
        v19 = "usd/crateFile.cpp";
        v20 = "_ReadBootStrap";
        v21 = 3845;
        v22 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream]";
        v23 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 3, "Usd crate file corrupt, possibly truncated: table of contents at offset %lld but file size is %lld");
      }
    }

    else
    {
      v19 = "usd/crateFile.cpp";
      v20 = "_ReadBootStrap";
      v21 = 3830;
      v22 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream]";
      v23 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 3, "Usd crate bootstrap section corrupt");
    }
  }

  else
  {
    v19 = "usd/crateFile.cpp";
    v20 = "_ReadBootStrap";
    v21 = 3823;
    v22 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream]";
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 3, "File too small to contain bootstrap structure");
  }
}

void sub_29A4ED64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4ED680(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a1 + 16) = *(a2 + 16);
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  if (sub_29A4EF4FC(a1, __p))
  {
    *a3 = *__p;
    *(a3 + 16) = v5;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29A4ED6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4ED710(uint64_t a1, void *a2)
{
  v2 = *(a1 + 6544);
  v3 = *(a1 + 6552);
  if (v2 != v3)
  {
    v4 = -1;
    v5 = -1;
    do
    {
      v6 = *(v2 + 16);
      if (v6 >= v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = *(v2 + 16);
      }

      if (v4 == -1)
      {
        v4 = *(v2 + 16);
      }

      else
      {
        v4 = v7;
      }

      v8 = *(v2 + 24) + v6;
      if (v8 <= v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = v8;
      }

      if (v5 == -1)
      {
        v5 = v8;
      }

      else
      {
        v5 = v9;
      }

      v2 += 32;
    }

    while (v2 != v3);
    if (v4 != -1 && v5 != -1)
    {
      if (a2[3] >= v5 - v4)
      {
        v11 = a2[4];
        v12 = a2[1] + v4;

        pxrInternal__aapl__pxrReserved__::ArchFileAdvise(v11, v12);
      }

      else
      {
        v13[0] = "usd/crateFile.cpp";
        v13[1] = "_PrefetchStructuralSections";
        v13[2] = 3867;
        v13[3] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PrefetchStructuralSections(Reader) const [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 3, "Usd crate file corrupt, table of contents section size error");
      }
    }
  }
}

void sub_29A4ED7FC(uint64_t a1, uint64_t a2)
{
  v39[9] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    base = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadTokens", 0);
  }

  else
  {
    base = 0;
  }

  v37._bf._base = base;
  v37._bf._size = base != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "TOKENS");
  if (!Section)
  {
    goto LABEL_47;
  }

  v7 = *(a2 + 24);
  v8 = *(Section + 2);
  if (v7 > v8 && (v8 & 0x8000000000000000) == 0)
  {
    *(a2 + 16) = v8;
    *&v37._flags = 0;
    if (!sub_29A4EF670(a2 + 8, 0, &v37._flags))
    {
      goto LABEL_47;
    }

    *&v37._r = 0;
    if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) > 0x3FFu)
    {
      __sz = 0;
      if (!sub_29A4EF670(a2 + 8, 0, &__sz))
      {
        goto LABEL_46;
      }

      v37._p = 0;
      if (!sub_29A4EF670(a2 + 8, 0, &v37))
      {
        goto LABEL_46;
      }

      if (!__sz || !v37._p)
      {
        *&v37._lbfsize = "usd/crateFile.cpp";
        v37._cookie = "_ReadTokens";
        v37._close = 4233;
        v37._read = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
        LOBYTE(v37._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v37._lbfsize, 3, "Usd crate file corrupt, tokens section is empty");
        goto LABEL_46;
      }

      v26 = *(a2 + 16);
      v25 = *(a2 + 24);
      v27 = (v25 - v26);
      if (v26 < 0 || (v27 & 0x8000000000000000) != 0 || v37._p > v27)
      {
        *&v37._lbfsize = "usd/crateFile.cpp";
        v37._cookie = "_ReadTokens";
        v37._close = 4239;
        v37._read = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
        LOBYTE(v37._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v37._lbfsize, 3, "Failed to read tokens size %llu with remaining file size is %lld of %lld", v37._p, v27, v25);
        goto LABEL_46;
      }

      CompressedBufferSize = pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize(__sz);
      p = v37._p;
      if (!CompressedBufferSize || CompressedBufferSize < v37._p)
      {
        *&v37._lbfsize = "usd/crateFile.cpp";
        v37._cookie = "_ReadTokens";
        v37._close = 4246;
        v37._read = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
        LOBYTE(v37._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v37._lbfsize, 3, "Failed to read tokens. Corrupt compression data. Compressed size %llu, uncompressed size %llu", v37._p, __sz);
        goto LABEL_46;
      }

      v30 = __sz;
      v13 = operator new[](__sz);
      *&v37._r = v13;
      v31 = operator new[](p);
      sub_29A4D3508(a2, v31, p);
      pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(v31, v13, v37._p, __sz);
      v14 = &v13[v30];
      v15 = __sz;
      operator delete[](v31);
    }

    else
    {
      __sz = 0;
      if (!sub_29A4EF670(a2 + 8, 0, &__sz))
      {
        goto LABEL_46;
      }

      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = v9 - v10;
      v12 = __sz;
      if (v10 < 0 || (v11 & 0x8000000000000000) != 0 || __sz > v11)
      {
        *&v37._lbfsize = "usd/crateFile.cpp";
        v37._cookie = "_ReadTokens";
        v37._close = 4217;
        v37._read = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
        LOBYTE(v37._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v37._lbfsize, 3, "Failed to read tokens size %llu with remaining file size being %lld of %lld", __sz, v11, v9);
        goto LABEL_46;
      }

      v13 = operator new[](__sz);
      *&v37._r = v13;
      sub_29A4D3508(a2, v13, v12);
      v14 = &v12[v13];
      v15 = __sz;
    }

    if (v13 != v14 && *(v14 - 1))
    {
      *&v37._lbfsize = "usd/crateFile.cpp";
      v37._cookie = "_ReadTokens";
      v37._close = 4261;
      v37._read = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
      LOBYTE(v37._seek) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v37._lbfsize, 3, "Tokens section not null-terminated in crate file");
      *(v14 - 1) = 0;
    }

    v16 = *&v37._flags;
    if (*&v37._flags - 1 >= v15)
    {
      *&v37._lbfsize = "usd/crateFile.cpp";
      v37._cookie = "_ReadTokens";
      v37._close = 4271;
      v37._read = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
      LOBYTE(v37._seek) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v37._lbfsize, 3, "Failed to read tokens. Corrupt data. Data size %llu, num tokens %llu", v15, *&v37._flags);
      *&v37._r = 0;
    }

    else
    {
      v17 = *(a1 + 120);
      v18 = *(a1 + 128);
      v19 = a1 + 120;
      if (v18 != v17)
      {
        do
        {
          v21 = *(v18 - 8);
          v18 -= 8;
          v20 = v21;
          if ((v21 & 7) != 0)
          {
            atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        while (v18 != v17);
        v16 = *&v37._flags;
      }

      *(a1 + 128) = v17;
      sub_29A3275DC((a1 + 120), v16);
      v13[v15 - 1] = 0;
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v37._lbfsize);
      v22 = 0;
      if (v13 < v14 && *&v37._flags)
      {
        v22 = 0;
        v23 = *&v37._r;
        while (&v13[-v23] < v15)
        {
          __sz = 0;
          v33 = v38;
          v24 = tbb::internal::allocate_additional_child_of_proxy::allocate(&__sz, 0x28uLL);
          *(v24 - 11) = 1;
          *v24 = &unk_2A20522F0;
          v24[1] = v19;
          v24[2] = v22;
          v24[3] = v13;
          v24[4] = v39;
          (***(v24 - 5))();
          v13 += strlen(v13) + 1;
          ++v22;
          if (v13 >= v14 || v22 == *&v37._flags)
          {
            goto LABEL_29;
          }
        }

        __sz = "usd/crateFile.cpp";
        v33 = "_ReadTokens";
        v34 = 4305;
        v35 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
        v36 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__sz, 3, "Failed read tokens, buffer overflow.");
      }

      else
      {
LABEL_29:
        pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v37._lbfsize);
        if (v22 != *&v37._flags)
        {
          __sz = "usd/crateFile.cpp";
          v33 = "_ReadTokens";
          v34 = 4315;
          v35 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
          v36 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__sz, 3, "Crate file claims %zu tokens, found %zu", *&v37._flags, v22);
        }

        sub_29A4E7DB8(&v37._r);
      }

      pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v37._lbfsize);
      v13 = *&v37._r;
      *&v37._r = 0;
      if (!v13)
      {
        goto LABEL_46;
      }
    }

    operator delete[](v13);
LABEL_46:
    base = v37._bf._base;
    goto LABEL_47;
  }

  *&v37._lbfsize = "usd/crateFile.cpp";
  v37._cookie = "_ReadTokens";
  v37._close = 4191;
  v37._read = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
  LOBYTE(v37._seek) = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v37._lbfsize, 3, "Usd crate file corrupt, tokens section is possibly truncatedat offset %lld but file size is %lld", v8, v7);
LABEL_47:
  if (base)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v37._bf._size, base);
  }
}