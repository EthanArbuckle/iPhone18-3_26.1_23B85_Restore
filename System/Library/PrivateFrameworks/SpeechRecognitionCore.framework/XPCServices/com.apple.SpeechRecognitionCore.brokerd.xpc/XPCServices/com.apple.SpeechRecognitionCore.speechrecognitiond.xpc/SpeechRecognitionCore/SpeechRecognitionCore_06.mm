uint64_t sub_10008B170(uint64_t a1)
{
  *a1 = off_100101B68;
  if (*(a1 + 184) == 1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      v3 = v2[13];
      if (v3)
      {
        v2[14] = v3;
        operator delete(v3);
      }

      sub_10008A2D8((v2 + 4));
      v4 = v2[1];
      v2[1] = 0;
      if (v4)
      {
        operator delete();
      }

      v5 = *v2;
      *v2 = 0;
      if (v5)
      {
        operator delete();
      }

      operator delete();
    }
  }

  sub_10008228C((a1 + 136));

  return sub_100088030(a1);
}

void sub_10008B484(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001014A0;
  *(a1 + 8) = 0;
  sub_1000113AC((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = off_100101C60;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

uint64_t sub_10008B654(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        sub_10002CA28(a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t sub_10008B6EC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_10008B858(a1, a2);
    *(a1 + 64) = *(a1 + 40);
    *(a1 + 88) = *(a2 + 88);
    v4 = *(a2 + 92);
    *(a1 + 92) = v4;
    if (v4 == -1)
    {
      v5 = 0;
    }

    else
    {
      v5 = sub_10008B75C(a1, 0);
    }

    *(a1 + 96) = v5;
  }

  return a1;
}

void *sub_10008B75C(uint64_t a1, int a2)
{
  v13 = a2;
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v4 = (a1 + 8);
  if (a2 >= ((v6 - v5) >> 3))
  {
    v12 = 0;
    sub_10008CC00(v4, a2 + 1, &v12);
  }

  else
  {
    v7 = *(v5 + 8 * a2);
    if (v7)
    {
      return v7;
    }
  }

  v7 = sub_10008BA10((a1 + 72), 1uLL);
  *v7 = *sub_10002B59C();
  v7[5] = 0;
  *(v7 + 3) = 0u;
  *(v7 + 1) = 0u;
  v8 = *(a1 + 80);
  v7[6] = v8;
  ++*(v8 + 8);
  v7[7] = 0;
  *(*(a1 + 8) + 8 * v3) = v7;
  if (*a1 == 1)
  {
    v9 = sub_10008C240(a1 + 32, 0, 0, &v13);
    v10 = *(a1 + 32);
    *v9 = v10;
    v9[1] = a1 + 32;
    *(v10 + 8) = v9;
    *(a1 + 32) = v9;
    ++*(a1 + 48);
  }

  return v7;
}

void sub_10008B858(void *a1, uint64_t a2)
{
  sub_100082BA4(a1);
  sub_10002E1F8(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v23 = 0;
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        v7 = sub_10008BA10(a1 + 9, 1uLL);
        *v7 = *v6;
        *(v7 + 1) = *(v6 + 8);
        sub_10008BF2C(v7 + 3, *(v6 + 24), *(v6 + 32), a1 + 10);
        *(v7 + 14) = *(v6 + 56);
        *(v7 + 15) = 0;
        if (*a1 == 1)
        {
          v8 = sub_10008C240((a1 + 4), 0, 0, &v23);
          v9 = a1[4];
          *v8 = v9;
          v8[1] = a1 + 4;
          *(v9 + 8) = v8;
          a1[4] = v8;
          ++a1[6];
        }
      }

      else
      {
        v7 = 0;
      }

      v11 = a1[2];
      v10 = a1[3];
      if (v11 >= v10)
      {
        v13 = a1[1];
        v14 = (v11 - v13) >> 3;
        if ((v14 + 1) >> 61)
        {
          sub_100017658();
        }

        v15 = v10 - v13;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_100017670((a1 + 1), v17);
        }

        v18 = (8 * v14);
        *v18 = v7;
        v12 = 8 * v14 + 8;
        v19 = a1[1];
        v20 = a1[2] - v19;
        v21 = v18 - v20;
        memcpy(v18 - v20, v19, v20);
        v22 = a1[1];
        a1[1] = v21;
        a1[2] = v12;
        a1[3] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v11 = v7;
        v12 = (v11 + 1);
      }

      a1[2] = v12;
      v5 = ++v23;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

void *sub_10008BA10(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_1000850A8(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089F90((v2 + 8), 1);
      result[16] = 0;
      return result;
    }

    v4 = result[16];
  }

  else if (a2 == 1)
  {
    v2 = sub_100084EB0(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089E78((v2 + 8), 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 58))
            {

              operator new();
            }

            sub_100016D60();
          }

          v2 = sub_100085CE0(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008BE14((v2 + 8), 1);
            result[512] = 0;
            return result;
          }

          v4 = result[512];
        }

        else
        {
          v2 = sub_100085888(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008BCFC((v2 + 8), 1);
            result[256] = 0;
            return result;
          }

          v4 = result[256];
        }
      }

      else
      {
        v2 = sub_100085690(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = sub_10008BBE4((v2 + 8), 1);
          result[128] = 0;
          return result;
        }

        v4 = result[128];
      }
    }

    else
    {
      v2 = sub_100085498(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = sub_10008A1C0((v2 + 8), 1);
        result[64] = 0;
        return result;
      }

      v4 = result[64];
    }
  }

  else
  {
    v2 = sub_1000852A0(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10008A0A8((v2 + 8), 1);
      result[32] = 0;
      return result;
    }

    v4 = result[32];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t sub_10008BBE4(void *a1, uint64_t a2)
{
  v3 = 1032 * a2;
  v4 = a1[1];
  if (4128 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t sub_10008BCFC(void *a1, uint64_t a2)
{
  v3 = 2056 * a2;
  v4 = a1[1];
  if (8224 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t sub_10008BE14(void *a1, uint64_t a2)
{
  v3 = 4104 * a2;
  v4 = a1[1];
  if (16416 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

void *sub_10008BF2C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a4;
  a1[3] = *a4;
  ++*(v5 + 8);
  sub_10008BF90(a1, a2, a3, (a3 - a2) >> 4);
  return a1;
}

void *sub_10008BF90(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_10008C024(result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
      *(v7 + 12) = *(a2 + 12);
      a2 += 16;
      v7 += 16;
    }

    v6[1] = v7;
  }

  return result;
}

void *sub_10008C024(void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    sub_100017658();
  }

  result = sub_10008C06C(a1 + 3, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * a2];
  return result;
}

void *sub_10008C06C(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_1000834A0(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089D60((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  else if (a2 == 1)
  {
    v2 = sub_100082DC8(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089C48((v2 + 8), 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 60))
            {

              operator new();
            }

            sub_100016D60();
          }

          v2 = sub_100084A58(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008BBE4((v2 + 8), 1);
            result[128] = 0;
            return result;
          }

          v4 = result[128];
        }

        else
        {
          v2 = sub_100084600(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008A1C0((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }
      }

      else
      {
        v2 = sub_1000841A8(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = sub_10008A0A8((v2 + 8), 1);
          result[32] = 0;
          return result;
        }

        v4 = result[32];
      }
    }

    else
    {
      v2 = sub_100083D50(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = sub_100089F90((v2 + 8), 1);
        result[16] = 0;
        return result;
      }

      v4 = result[16];
    }
  }

  else
  {
    v2 = sub_1000838F8(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089E78((v2 + 8), 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  *(v2 + 56) = v4;
  return result;
}

void *sub_10008C240(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v9 = *(a1 + 24);
  ++*(v9 + 8);
  sub_10008C2D8(v10, &v9, 1uLL);
  sub_100087F08(&v9);
  v7 = v11;
  *v11 = a2;
  v7[1] = a3;
  *(v7 + 4) = *a4;
  v11 = 0;
  sub_10008CBB4(v10);
  return v7;
}

uint64_t *sub_10008C2D8(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v4 = *a2;
  *(v4 + 8) = *(*a2 + 8) + 1;
  *a1 = v4;
  a1[1] = a3;
  a1[2] = sub_10008C334(a1, a3);
  return a1;
}

void *sub_10008C334(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_100086750(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10002C680((v2 + 8), 1);
      result[6] = 0;
      return result;
    }

    v4 = result[6];
  }

  else if (a2 == 1)
  {
    v2 = sub_1000862FC(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10008C518((v2 + 8), 1);
      result[3] = 0;
      return result;
    }

    v4 = result[3];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (a2 < 0xAAAAAAAAAAAAAABLL)
            {

              operator new();
            }

            sub_100016D60();
          }

          v2 = sub_100087AAC(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008CA98((v2 + 8), 1);
            result[192] = 0;
            return result;
          }

          v4 = result[192];
        }

        else
        {
          v2 = sub_100087650(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008C97C((v2 + 8), 1);
            result[96] = 0;
            return result;
          }

          v4 = result[96];
        }
      }

      else
      {
        v2 = sub_1000871F8(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = sub_10008C860((v2 + 8), 1);
          result[48] = 0;
          return result;
        }

        v4 = result[48];
      }
    }

    else
    {
      v2 = sub_100086DA0(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = sub_10008C744((v2 + 8), 1);
        result[24] = 0;
        return result;
      }

      v4 = result[24];
    }
  }

  else
  {
    v2 = sub_100086948(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10008C628((v2 + 8), 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t sub_10008C518(void *a1, uint64_t a2)
{
  v3 = 32 * a2;
  v4 = a1[1];
  if (v4 < a2 << 7)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t sub_10008C628(void *a1, uint64_t a2)
{
  v3 = 104 * a2;
  v4 = a1[1];
  if (416 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t sub_10008C744(void *a1, uint64_t a2)
{
  v3 = 200 * a2;
  v4 = a1[1];
  if (800 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t sub_10008C860(void *a1, uint64_t a2)
{
  v3 = 392 * a2;
  v4 = a1[1];
  if (1568 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t sub_10008C97C(void *a1, uint64_t a2)
{
  v3 = 776 * a2;
  v4 = a1[1];
  if (3104 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t sub_10008CA98(void *a1, uint64_t a2)
{
  v3 = 1544 * a2;
  v4 = a1[1];
  if (6176 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t *sub_10008CBB4(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    sub_1000861DC(a1, v2, a1[1]);
  }

  return sub_100087F08(a1);
}

void sub_10008CC00(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_10008CC30(a1, a2 - v3, a3);
  }
}

void sub_10008CC30(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1000D1170)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_100017658();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_100017670(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1000D1170)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_10008CE88(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  v1[1] = 0;
  if (v3)
  {
    sub_1000B97AC(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008CF9C(_Unwind_Exception *a1)
{
  sub_10008A2D8((v1 + 4));
  v3 = v1[1];
  v1[1] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10008D000(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10008D080(result, a4);
  }

  return result;
}

void sub_10008D064(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008D080(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_10008B118(a1, a2);
  }

  sub_100017658();
}

uint64_t *sub_10008D0CC(uint64_t a1, int *a2, _DWORD *a3)
{
  v7 = *a2;
  if (*a2 < -1)
  {
    v10 = 0;
  }

  else
  {
    v8 = *(a1 + 48);
    if (v7 == -1)
    {
      v9 = *(v8 + 128);
    }

    else
    {
      v9 = (*(v8 + 104) + 12 * v7);
    }

    v10 = *v9 + 7853 * v9[1] + 7867 * *(v9 + 8);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v3 = v10;
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v3);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_10008D38C((a1 + 64), *(i + 4), *a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v17 = sub_10008D428((a1 + 32), 1uLL);
  v29[0] = v17;
  v29[1] = a1 + 32;
  v29[2] = 1;
  *v17 = 0;
  v17[1] = v10;
  *(v17 + 4) = *a3;
  v18 = (*(a1 + 40) + 1);
  v19 = *(a1 + 56);
  if (!v11 || (v19 * v11) < v18)
  {
    v20 = 1;
    if (v11 >= 3)
    {
      v20 = (v11 & (v11 - 1)) != 0;
    }

    v21 = v20 | (2 * v11);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_100089724(a1, v23);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }

      else
      {
        v3 = v10;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v3);
  if (v25)
  {
    i = v29[0];
    *v29[0] = *v25;
    *v25 = i;
  }

  else
  {
    v26 = v29[0];
    *v29[0] = *(a1 + 24);
    *(a1 + 24) = v26;
    *(v24 + 8 * v3) = a1 + 24;
    i = v29[0];
    if (*v29[0])
    {
      v27 = *(*v29[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v27 >= v11)
        {
          v27 %= v11;
        }
      }

      else
      {
        v27 &= v11 - 1;
      }

      *(*a1 + 8 * v27) = v29[0];
      i = v29[0];
    }
  }

  v29[0] = 0;
  ++*(a1 + 40);
  sub_10008D60C(v29, 0);
  return i;
}

void sub_10008D374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008D60C(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_10008D38C(uint64_t *a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = *(v5 + 104) + 12 * a2;
    }

    if (a3 == -1)
    {
      v7 = *(v5 + 128);
    }

    else
    {
      v7 = *(v5 + 104) + 12 * a3;
    }

    if (v6 == v7)
    {
      return 1;
    }

    return *v6 == *v7 && *(v6 + 4) == *(v7 + 4) && *(v6 + 8) == *(v7 + 8);
  }

  return result;
}

void *sub_10008D428(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_10008A540(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10002C680((v2 + 8), 1);
      result[6] = 0;
      return result;
    }

    v4 = result[6];
  }

  else if (a2 == 1)
  {
    v2 = sub_10008A348(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10008C518((v2 + 8), 1);
      result[3] = 0;
      return result;
    }

    v4 = result[3];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (a2 < 0xAAAAAAAAAAAAAABLL)
            {

              operator new();
            }

            sub_100016D60();
          }

          v2 = sub_10008AF1C(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008CA98((v2 + 8), 1);
            result[192] = 0;
            return result;
          }

          v4 = result[192];
        }

        else
        {
          v2 = sub_10008AD20(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008C97C((v2 + 8), 1);
            result[96] = 0;
            return result;
          }

          v4 = result[96];
        }
      }

      else
      {
        v2 = sub_10008AB28(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = sub_10008C860((v2 + 8), 1);
          result[48] = 0;
          return result;
        }

        v4 = result[48];
      }
    }

    else
    {
      v2 = sub_10008A930(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = sub_10008C744((v2 + 8), 1);
        result[24] = 0;
        return result;
      }

      v4 = result[24];
    }
  }

  else
  {
    v2 = sub_10008A738(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10008C628((v2 + 8), 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t sub_10008D60C(uint64_t result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    result = sub_10008A348(**(result + 8));
    *(v2 + 24) = *(result + 56);
    *(result + 56) = v2;
  }

  return result;
}

int *sub_10008D650(int *result, uint64_t a2, int a3, _BYTE *a4)
{
  v5 = result;
  if (result[6] != a2 || result[7] != a3 || *a4 != *(result + 32))
  {
    result[6] = a2;
    result[7] = a3;
    *(result + 32) = *a4;
    v6 = (*(**(result + 2) + 32))(*(result + 2), a2);
    v7 = (*(**(v5 + 2) + 48))(*(v5 + 2), a2);
    (*(**(v5 + 2) + 24))(&v10);
    result = sub_10002B59C();
    v11 = v10;
    HIDWORD(v10) = *result;
    v9 = *&v10 == *(&v10 + 1) && v6 == v7;
    *(v5 + 33) = v9;
    *(v5 + 34) = v7 == 0;
  }

  return result;
}

uint64_t sub_10008D780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 188);
  if (v3 == 1)
  {
    return 1;
  }

  if (v3 == 2)
  {
    return 0;
  }

  v7 = sub_10007E3F0(*(a1 + 144), a2);
  v8 = sub_10007E3F0(*(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v14, __p);
    sub_10002AE44(&std::cerr, "ComposeFst: Both sides can't require match", 42);
    sub_10002B280(&v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  v11 = v8 == -1 || v7 <= v8;
  return v7 != -1 && v11;
}

void sub_10008D89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008D8D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (*(a7 + 52) != a4)
  {
    *(a7 + 52) = a4;
    sub_100080998(*(a7 + 8), a4);
    *(a7 + 56) = *(a7 + 20) != -1;
  }

  v14 = *sub_10002B564();
  v19[0] = a8 - 1;
  v19[1] = a8 << 31 >> 31;
  v19[2] = v14;
  v19[3] = a6;
  sub_10008DB0C(a1, a2, a7, v19, a8);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  (*(*a5 + 120))(a5, a6, &v16);
  while (1)
  {
    if (!v16)
    {
      if (v18 >= v17)
      {
        goto LABEL_15;
      }

LABEL_9:
      v15 = *(&v16 + 1) + 16 * v18;
      goto LABEL_10;
    }

    if ((*(*v16 + 16))(v16))
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_9;
    }

    v15 = (*(*v16 + 24))();
LABEL_10:
    sub_10008DB0C(a1, a2, a7, v15, a8);
    if (v16)
    {
      (*(*v16 + 32))(v16);
    }

    else
    {
      ++v18;
    }
  }

  if (v16)
  {
    (*(*v16 + 8))();
    goto LABEL_17;
  }

LABEL_15:
  if (*(&v17 + 1))
  {
    --**(&v17 + 1);
  }

LABEL_17:
  sub_10008DCB4(a1, a2);
}

void sub_10008DAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    sub_1000B9778(a9);
  }

  else
  {
    sub_1000B9760(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10008DB0C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = sub_10007DF94(a3, *(a4 + v10));
  if (result)
  {
    result = sub_10007FBD0(*(*(*(a3 + 8) + 8) + 8));
    if ((result & 1) == 0)
    {
      do
      {
        v12 = sub_10007E0F0(a3);
        v13 = *v12;
        v31 = *v12;
        v32 = *(v12 + 2);
        v33 = *(v12 + 3);
        v14 = *a4;
        v28 = *a4;
        v29 = *(a4 + 8);
        v30 = *(a4 + 12);
        if (a5)
        {
          v15 = *(a1 + 136);
          if (v14 < 0xFFFFFFFF00000000)
          {
            if (v13 == -1)
            {
              v17 = v15[32];
              if (v15[32])
              {
                v18 = -1;
              }

              else
              {
                v18 = 0;
              }

              v27 = v18;
              if (v17)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v21 = HIDWORD(v14);
              if (HIDWORD(v14))
              {
                v22 = 0;
              }

              else
              {
                v22 = -1;
              }

              v27 = v22;
              if (!v21)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_28;
          }

          if ((v15[33] & 1) == 0)
          {
            v27 = v15[34] ^ 1;
LABEL_28:
            v23 = &v28;
            v24 = &v31;
            goto LABEL_34;
          }
        }

        else
        {
          v16 = *(a1 + 136);
          if (v13 < 0xFFFFFFFF00000000)
          {
            if (v14 == -1)
            {
              v19 = v16[32];
              if (v16[32])
              {
                v20 = -1;
              }

              else
              {
                v20 = 0;
              }

              v27 = v20;
              if (v19)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v25 = HIDWORD(v13);
              if (v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = -1;
              }

              v27 = v26;
              if (!v25)
              {
                goto LABEL_35;
              }
            }

LABEL_33:
            v23 = &v31;
            v24 = &v28;
LABEL_34:
            sub_10008DD50(a1, a2, v23, v24, &v27);
            goto LABEL_35;
          }

          if ((v16[33] & 1) == 0)
          {
            v27 = v16[34] ^ 1;
            goto LABEL_33;
          }
        }

LABEL_35:
        sub_100080C2C(*(a3 + 8));
        result = sub_10007FBD0(*(*(*(a3 + 8) + 8) + 8));
      }

      while (!result);
    }
  }

  return result;
}

void sub_10008DCB4(uint64_t a1, int a2)
{
  v4 = sub_10008E0E8(*(a1 + 120), a2);
  sub_10008E94C(*(a1 + 120), v4);
  v5 = v4[3];
  v6 = v4[4] - v5;
  if (v6)
  {
    v7 = v6 >> 4;
    v8 = *(a1 + 64);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 12);
    do
    {
      v11 = *v9;
      v9 += 4;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 64) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  sub_10008E9DC(a1, a2);
  *(v4 + 14) |= 0xAu;
}

uint64_t *sub_10008DD50(uint64_t a1, int a2, float *a3, uint64_t a4, char *a5)
{
  v7 = *(a4 + 12);
  *&v19 = a3[3];
  HIDWORD(v19) = v7;
  v20 = *a5;
  v8 = *a3;
  v9 = *(a4 + 4);
  v10 = a3[2];
  if (v10 == -INFINITY || (v11 = *(a4 + 8), v11 >= -INFINITY) && v11 <= -INFINITY)
  {
    v12 = *sub_1000777A0();
  }

  else
  {
    v13 = v11 == INFINITY || v10 == INFINITY;
    v14 = v10 + v11;
    if (v13)
    {
      v12 = INFINITY;
    }

    else
    {
      v12 = v14;
    }
  }

  v15 = sub_10008DE2C(*(a1 + 176), &v19, 1);
  *v18 = v8;
  v18[1] = v9;
  *&v18[2] = v12;
  v18[3] = v15;
  v16 = sub_10008E0E8(*(a1 + 120), a2);
  return sub_10008E830(v16 + 3, v18);
}

uint64_t sub_10008DE2C(void *a1, uint64_t *a2, int a3)
{
  a1[16] = a2;
  if (!a3)
  {
    v5 = sub_10008DFA8(a1 + 4, &dword_1000D41B4);
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    return *(v5 + 4);
  }

  v5 = sub_10008D0CC((a1 + 4), &dword_1000D41B4, &dword_1000D41B4);
  if ((v6 & 1) == 0)
  {
    return *(v5 + 4);
  }

  v7 = a1[13];
  v8 = a1[14];
  v9 = a1[15];
  v10 = (v8 - v7) >> 2;
  v11 = 0xAAAAAAAAAAAAAAABLL * v10;
  *(v5 + 4) = -1431655765 * v10;
  if (v8 >= v9)
  {
    if (v11 + 1 > 0x1555555555555555)
    {
      sub_100017658();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v7) >> 2);
    v15 = 2 * v14;
    if (2 * v14 <= v11 + 1)
    {
      v15 = v11 + 1;
    }

    if (v14 >= 0xAAAAAAAAAAAAAAALL)
    {
      v16 = 0x1555555555555555;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      sub_10008B118((a1 + 13), v16);
    }

    v17 = 4 * v10;
    v18 = *a2;
    *(v17 + 8) = *(a2 + 2);
    *v17 = v18;
    v13 = 4 * v10 + 12;
    v19 = a1[13];
    v20 = a1[14];
    v21 = 4 * v10 + v19 - v20;
    if (v19 != v20)
    {
      v22 = 4 * v10 + v19 - v20;
      do
      {
        v23 = *v19;
        *(v22 + 8) = *(v19 + 2);
        *v22 = v23;
        v22 += 12;
        v19 += 12;
      }

      while (v19 != v20);
      v19 = a1[13];
    }

    a1[13] = v21;
    a1[14] = v13;
    a1[15] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v12 = *a2;
    *(v8 + 8) = *(a2 + 2);
    *v8 = v12;
    v13 = v8 + 12;
  }

  a1[14] = v13;
  return v11;
}

uint64_t *sub_10008DFA8(void *a1, int *a2)
{
  v4 = *a2;
  if (*a2 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[6];
    if (v4 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = (*(v5 + 104) + 12 * v4);
    }

    v7 = *v6 + 7853 * v6[1] + 7867 * *(v6 + 8);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (sub_10008D38C(a1 + 8, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

void *sub_10008E0E8(uint64_t a1, int a2)
{
  v3 = sub_10008E174(a1, a2);
  v4 = v3;
  if (*(a1 + 104) == 1)
  {
    v5 = *(v3 + 14);
    if ((v5 & 4) == 0)
    {
      *(v3 + 14) = v5 | 4;
      v6 = v3[4] - v3[3] + *(a1 + 128) + 64;
      *(a1 + 128) = v6;
      *(a1 + 120) = 1;
      if (v6 > *(a1 + 112))
      {
        sub_10008E25C(a1, v3, 0, 0.666);
      }
    }
  }

  return v4;
}

void *sub_10008E174(uint64_t a1, int a2)
{
  v3 = *(a1 + 92);
  if (v3 == a2)
  {
    return *(a1 + 96);
  }

  if (*(a1 + 88) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 92) = a2;
      v7 = sub_10008B75C(a1, 0);
      *(a1 + 96) = v7;
      *(v7 + 14) |= 4u;
      sub_10008E680(v7 + 3, 0x80uLL);
      return *(a1 + 96);
    }

    v5 = *(a1 + 96);
    if (!*(v5 + 60))
    {
      *(a1 + 92) = a2;
      *v5 = *sub_10002B59C();
      *(v5 + 56) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 32) = *(v5 + 24);
      result = *(a1 + 96);
      *(result + 14) |= 4u;
      return result;
    }

    *(v5 + 56) &= ~4u;
    *(a1 + 88) = 0;
  }

  v6 = a2 + 1;

  return sub_10008B75C(a1, v6);
}

void sub_10008E25C(uint64_t a1, void *a2, char a3, float a4)
{
  if (*(a1 + 120) != 1)
  {
    return;
  }

  if (dword_10010E8A8 >= 2)
  {
    sub_1000113AC(__p, "INFO");
    sub_10002B1D4(v36, __p);
    v8 = sub_10002AE44(&std::cerr, "GCCacheStore: Enter GC: object = ", 33);
    sub_10002AE44(v8, "(", 1);
    v9 = std::ostream::operator<<();
    sub_10002AE44(v9, "), free recently cached = ", 26);
    v10 = std::ostream::operator<<();
    sub_10002AE44(v10, ", cache size = ", 15);
    v11 = *(a1 + 128);
    v12 = std::ostream::operator<<();
    sub_10002AE44(v12, ", cache frac = ", 15);
    v13 = std::ostream::operator<<();
    sub_10002AE44(v13, ", cache limit = ", 16);
    v14 = *(a1 + 112);
    v15 = std::ostream::operator<<();
    sub_10002AE44(v15, "\n", 1);
    sub_10002B280(v36);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v16 = (*(a1 + 112) * a4);
  v17 = *(a1 + 40);
  *(a1 + 64) = v17;
  while (v17 != a1 + 32)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v18 - 1;
    }

    else
    {
      v19 = *(a1 + 92);
    }

    v20 = sub_10008E174(a1, v19);
    v21 = *(a1 + 128);
    if (v21 <= v16 || *(v20 + 15))
    {
LABEL_12:
      *(v20 + 14) &= ~8u;
      v17 = *(*(a1 + 64) + 8);
      *(a1 + 64) = v17;
    }

    else
    {
      if (a3)
      {
        if (v20 == a2)
        {
          goto LABEL_12;
        }

        v22 = *(v20 + 14);
      }

      else
      {
        v22 = *(v20 + 14);
        if ((v22 & 8) != 0 || v20 == a2)
        {
          goto LABEL_12;
        }
      }

      if ((v22 & 4) != 0)
      {
        v23 = v20[4] - v20[3] + 64;
        v24 = v21 > v23;
        v25 = v21 - v23;
        if (v24)
        {
          *(a1 + 128) = v25;
        }
      }

      sub_10008E788(a1);
      v17 = *(a1 + 64);
    }
  }

  if ((a3 & 1) != 0 || *(a1 + 128) <= v16)
  {
    v26 = *(a1 + 128);
    if (v16)
    {
      if (v26 > v16)
      {
        v27 = *(a1 + 112);
        do
        {
          v27 *= 2;
          v24 = v26 > 2 * v16;
          v16 *= 2;
        }

        while (v24);
        *(a1 + 112) = v27;
      }
    }

    else if (v26)
    {
      if (byte_10010E280 == 1)
      {
        sub_1000113AC(__p, "FATAL");
      }

      else
      {
        sub_1000113AC(__p, "ERROR");
      }

      sub_10002B1D4(&v39, __p);
      sub_10002AE44(&std::cerr, "GCCacheStore:GC: Unable to free all cached states", 49);
      sub_10002B280(&v39);
      if (v41 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    sub_10008E25C(a1, a2, 1, a4);
  }

  if (dword_10010E8A8 >= 2)
  {
    sub_1000113AC(v36, "INFO");
    sub_10002B1D4(&v38, v36);
    v28 = sub_10002AE44(&std::cerr, "GCCacheStore: Exit GC: object = ", 32);
    sub_10002AE44(v28, "(", 1);
    v29 = std::ostream::operator<<();
    sub_10002AE44(v29, "), free recently cached = ", 26);
    v30 = std::ostream::operator<<();
    sub_10002AE44(v30, ", cache size = ", 15);
    v31 = *(a1 + 128);
    v32 = std::ostream::operator<<();
    sub_10002AE44(v32, ", cache frac = ", 15);
    v33 = std::ostream::operator<<();
    sub_10002AE44(v33, ", cache limit = ", 16);
    v34 = *(a1 + 112);
    v35 = std::ostream::operator<<();
    sub_10002AE44(v35, "\n", 1);
    sub_10002B280(&v38);
    if (v37 < 0)
    {
      operator delete(v36[0]);
    }
  }
}

void sub_10008E614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10008E680(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_100017658();
    }

    v3 = result;
    v4 = result[1] - *result;
    v5[4] = result + 3;
    v5[0] = sub_10008C06C(result + 3, a2);
    v5[1] = v5[0] + v4;
    v5[2] = v5[0] + v4;
    v5[3] = v5[0] + 16 * a2;
    sub_10002E370(v3, v5);
    return sub_10008E728(v5);
  }

  return result;
}

void sub_10008E714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008E728(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008E728(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  if (*a1)
  {
    sub_100082CA8(*(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 4);
  }

  return a1;
}

uint64_t sub_10008E788(void *a1)
{
  v1 = *(a1[8] + 16);
  if (!v1 || v1 - 1 == *(a1 + 23))
  {
    *(a1 + 23) = -1;
    a1[12] = 0;
  }

  return sub_10008E7B4(a1);
}

uint64_t sub_10008E7B4(void *a1)
{
  sub_100082C0C(*(a1[1] + 8 * *(a1[8] + 16)), a1 + 9);
  *(a1[1] + 8 * *(a1[8] + 16)) = 0;
  v2 = a1[8];
  v4 = *v2;
  v3 = v2[1];
  a1[8] = v3;
  *(v4 + 8) = v3;
  *v3 = v4;
  --a1[6];

  return sub_1000861A0((a1 + 4), v2);
}

uint64_t *sub_10008E830(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100017658();
    }

    v9 = v5 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v11 = result + 3;
    v14[4] = v3 + 3;
    if (v10)
    {
      v12 = sub_10008C06C(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[2 * v7];
    v14[0] = v12;
    v14[1] = v13;
    v14[3] = &v12[2 * v10];
    *v13 = *a2;
    *(v13 + 2) = *(a2 + 8);
    *(v13 + 3) = *(a2 + 12);
    v14[2] = v13 + 2;
    sub_10002E370(v3, v14);
    v6 = v3[1];
    result = sub_10008E728(v14);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 12) = *(a2 + 12);
    v6 = v4 + 16;
  }

  v3[1] = v6;
  return result;
}

void sub_10008E938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008E728(va);
  _Unwind_Resume(a1);
}

void sub_10008E94C(uint64_t a1, uint64_t a2)
{
  sub_10008EA78(a2);
  if (*(a1 + 120) == 1 && (*(a2 + 56) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 128);
    *(a1 + 128) = v4;
    if (v4 > *(a1 + 112))
    {

      sub_10008E25C(a1, a2, 0, 0.666);
    }
  }
}

void sub_10008E9DC(uint64_t a1, int a2)
{
  if (*(a1 + 100) < a2)
  {
    *(a1 + 100) = a2;
  }

  v3 = *(a1 + 96);
  if (v3 <= a2)
  {
    if (v3 == a2)
    {
      *(a1 + 96) = a2 + 1;
    }

    if ((*(a1 + 104) & 1) != 0 || !*(a1 + 112))
    {
      v4 = a2;
      if (*(a1 + 80) <= a2)
      {
        sub_10008EAB8(a1 + 72, a2 + 1, 0);
      }

      *(*(a1 + 72) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
    }
  }
}

void *sub_10008EA78(void *result)
{
  v1 = result[3];
  v2 = result[4];
  while (v1 != v2)
  {
    if (!*v1)
    {
      ++result[1];
    }

    if (!v1[1])
    {
      ++result[2];
    }

    v1 += 4;
  }

  return result;
}

void sub_10008EAB8(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_100017658();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_10002C96C(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    sub_10008EC24(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    sub_10008ED58(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  sub_10008EE0C(&v20, v5);
}

void sub_10008EC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_10008EC24@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *sub_10008ED58(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_10008EE0C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void sub_10008EEBC(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = off_100102D50;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = -1;
  *(a1 + 36) = a3;
  v4 = *(v3 + 144);
  sub_10007DE8C();
}

void sub_10008EF68(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  v1[6] = 0;
  if (v3)
  {
    sub_1000B97AC(v3);
  }

  v4 = v1[5];
  v1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[1];
  v1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10008EFF4(void *a1)
{
  *a1 = off_100102D50;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_10008F0C4(void *a1)
{
  *a1 = off_100102D50;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  operator delete();
}

uint64_t sub_10008F228(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 40) + 24))(*(a1 + 40));
  if (result != 4)
  {
    result = (*(**(a1 + 48) + 24))(*(a1 + 48), a2);
    if (result != 4)
    {
      if ((*(**(a1 + 40) + 24))(*(a1 + 40), a2) != 5 || (result = (*(**(a1 + 48) + 24))(*(a1 + 48), a2), result != 5))
      {
        if ((*(**(a1 + 40) + 24))(*(a1 + 40), a2) == 5 && (*(**(a1 + 48) + 24))(*(a1 + 48), a2) == *(a1 + 36))
        {
          return 5;
        }

        else if ((*(**(a1 + 40) + 24))(*(a1 + 40), a2) != *(a1 + 36) || (result = (*(**(a1 + 48) + 24))(*(a1 + 48), a2), result != 5))
        {
          if ((*(**(a1 + 40) + 24))(*(a1 + 40), a2) != *(a1 + 36))
          {
            return 4;
          }

          result = (*(**(a1 + 48) + 24))(*(a1 + 48), a2);
          if (result != *(a1 + 36))
          {
            return 4;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10008F46C(uint64_t result, int a2)
{
  if (*(result + 32) != a2)
  {
    v2 = result;
    *(result + 32) = a2;
    v3 = (*(*(*(result + 24) + 176) + 104) + 12 * a2);
    v4 = *(result + 40);
    v5 = *v3;
    if (*(v4 + 52) != v5)
    {
      *(v4 + 52) = v5;
      result = sub_100080998(*(v4 + 8), v5);
      *(v4 + 56) = *(v4 + 20) != -1;
    }

    v6 = *(v2 + 48);
    v7 = v3[1];
    if (*(v6 + 52) != v7)
    {
      *(v6 + 52) = v7;
      result = sub_100080998(*(v6 + 8), v7);
      *(v6 + 56) = *(v6 + 20) != -1;
    }

    *(v2 + 72) = *(v2 + 32);
  }

  return result;
}

uint64_t sub_10008F524(uint64_t a1, int a2)
{
  *(a1 + 56) = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 40;
  if (*(a1 + 36) == 1)
  {
    v3 = 48;
  }

  else
  {
    v3 = 40;
  }

  if (*(a1 + 36) != 1)
  {
    v2 = 48;
  }

  return sub_10008F7C8(a1, a2, *(a1 + v2), *(a1 + v3));
}

BOOL sub_10008F560(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || !sub_10007FBD0(*(*(*(*(a1 + 40) + 8) + 8) + 8)))
  {
    return 0;
  }

  v2 = *(*(*(*(a1 + 48) + 8) + 8) + 8);

  return sub_10007FBD0(v2);
}

uint64_t sub_10008F5D0(uint64_t a1)
{
  v1 = 76;
  if (*(a1 + 56))
  {
    v1 = 60;
  }

  return a1 + v1;
}

uint64_t sub_10008F5EC(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    *(result + 56) = 0;
  }

  else
  {
    if (*(result + 36) == 1)
    {
      v1 = *(result + 40);
      v2 = *(result + 48);
    }

    else
    {
      v2 = *(result + 40);
      v1 = *(result + 48);
    }

    return sub_10008F850(result, v1, v2);
  }

  return result;
}

void sub_10008F654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100102D50;
  v5 = (*(**(a2 + 16) + 72))(*(a2 + 16), a3);
  *(a1 + 8) = v5;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v5 + 8);
  v6 = *(a2 + 36);
  *(a1 + 32) = -1;
  *(a1 + 36) = v6;
  v7 = *(a2 + 40);
  sub_10007DE8C();
}

void sub_10008F73C(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  v1[6] = 0;
  if (v3)
  {
    sub_1000B97AC(v3);
  }

  v4 = v1[5];
  v1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[1];
  v1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008F7C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = sub_10007DF94(a3, a2);
  if (result)
  {
    v8 = *(a1 + 36) == 1;
    v9 = sub_10007E0F0(a3);
    sub_10007DF94(a4, *(v9 + v8));

    return sub_10008F850(a1, a3, a4);
  }

  return result;
}

uint64_t sub_10008F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!sub_10007FBD0(*(*(*(a2 + 8) + 8) + 8)) || !sub_10007FBD0(*(*(*(a3 + 8) + 8) + 8)))
  {
    if (sub_10007FBD0(*(*(*(a3 + 8) + 8) + 8)))
    {
      sub_100080C2C(*(a2 + 8));
      while (!sub_10007FBD0(*(*(*(a2 + 8) + 8) + 8)))
      {
        v6 = *(a1 + 36) == 1;
        v7 = sub_10007E0F0(a2);
        if (sub_10007DF94(a3, *(v7 + v6)))
        {
          break;
        }

        sub_100080C2C(*(a2 + 8));
      }
    }

    while (!sub_10007FBD0(*(*(*(a3 + 8) + 8) + 8)))
    {
      v8 = sub_10007E0F0(a2);
      v9 = sub_10007E0F0(a3);
      sub_100080C2C(*(a3 + 8));
      v10 = *(a1 + 32);
      v11 = *(a1 + 36);
      v12 = v11 == 1;
      if (v11 == 1)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      v19 = *v13;
      v20 = *(v13 + 2);
      v21 = *(v13 + 3);
      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = v8;
      }

      v16 = *v14;
      v17 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (sub_10008F9BC(a1, v10, &v19, &v16))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10008F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 24);
  v6 = *(v5 + 136);
  v7 = *(a3 + 4);
  if (v7 == -1)
  {
    if (v6[33])
    {
      return 0;
    }

    LOBYTE(v6) = (v6[34] & 1) == 0;
  }

  else
  {
    if (*a4 != -1)
    {
      if (v7)
      {
        LOBYTE(v6) = 0;
        goto LABEL_9;
      }

      return 0;
    }

    LODWORD(v6) = v6[32];
    if (v6)
    {
      return 0;
    }
  }

LABEL_9:
  v9 = *(a4 + 12);
  LODWORD(v16) = *(a3 + 12);
  HIDWORD(v16) = v9;
  v17 = v6;
  v10 = *(a4 + 4);
  *(a1 + 76) = *a3;
  *(a1 + 80) = v10;
  v11 = *(a3 + 8);
  if (v11 == -INFINITY || (v12 = *(a4 + 8), v12 >= -INFINITY) && v12 <= -INFINITY)
  {
    v13 = *sub_1000777A0();
    v5 = *(a1 + 24);
  }

  else
  {
    v14 = v12 == INFINITY || v11 == INFINITY;
    v13 = v11 + v12;
    if (v14)
    {
      v13 = INFINITY;
    }
  }

  *(a1 + 84) = v13;
  v8 = 1;
  *(a1 + 88) = sub_10008DE2C(*(v5 + 176), &v16, 1);
  return v8;
}

uint64_t sub_10008FAC8(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(*a1 + 24))(a1, 4))
    {
      *(a1 + 56) = 1;
    }

    else if ((*(a1 + 56) & 1) == 0)
    {
      v2 = (*(*a1 + 56))(a1);
      if (v2 != -1)
      {
        *(a1 + 60) = v2;
        *(a1 + 56) = 1;
        if (*(a1 + 64) <= v2)
        {
          *(a1 + 64) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 60);
}

float sub_10008FB88@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if ((sub_10008FC4C(a1, a2) & 1) == 0)
  {
    (*(*a1 + 64))(&v11, a1, a2);
    v6 = sub_10008E0E8(a1[15], a2);
    *v6 = v11;
    v6[14] |= 9u;
  }

  v7 = a1[15];
  if (*(v7 + 92) == a2)
  {
    v8 = (v7 + 96);
  }

  else
  {
    v8 = (*(v7 + 8) + 8 * a2 + 8);
  }

  v9 = *v8;
  result = *v9;
  *a3 = *v9;
  return result;
}

uint64_t sub_10008FC4C(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 92) == a2)
  {
    v3 = (v2 + 96);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 56);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *(v7 + 56) = v8 | 8;
  return 1;
}

uint64_t sub_10008FCA8(void *a1, uint64_t a2)
{
  if ((sub_10008FD34(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t sub_10008FD34(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 92) == a2)
  {
    v3 = (v2 + 96);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 56);
  if ((v8 & 2) == 0)
  {
    return 0;
  }

  *(v7 + 56) = v8 | 8;
  return 1;
}

uint64_t sub_10008FD90(void *a1, uint64_t a2)
{
  if ((sub_10008FD34(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t sub_10008FE14(void *a1, uint64_t a2)
{
  if ((sub_10008FD34(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *sub_10008FE98(void *a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 32))(v4);
    sub_10008FF38(&v8, v5);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v6;
  *a1 = off_100101A50;
  return a1;
}

void sub_10008FFA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1000B97D0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008FFBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10008FFF4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100090024(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009007C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 64))
  {
    return 0;
  }

  v5 = sub_1000901D8(v3);
  if (v5 >= *(*(a1 + 16) + 64))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    sub_1000902C0(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 64);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 64) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    sub_10008E9DC(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 64);
    --*(v19 + 60);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = sub_1000901D8(v16);
  }

  while (v6 < *(*(a1 + 16) + 64));
  return v4;
}

uint64_t sub_1000901D8(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 <= *(a1 + 100))
  {
    while (1)
    {
      v3 = sub_100090238(a1, v1);
      v4 = *(a1 + 96);
      if (!v3)
      {
        break;
      }

      v1 = (v4 + 1);
      *(a1 + 96) = v1;
      if (v4 >= *(a1 + 100))
      {
        return v1;
      }
    }

    return *(a1 + 96);
  }

  return v1;
}

uint64_t sub_100090238(uint64_t a1, int a2)
{
  if ((*(a1 + 104) & 1) != 0 || !*(a1 + 112))
  {
    return (*(*(a1 + 72) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }

  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 120);
    if (*(v2 + 92) == a2)
    {
      v3 = (v2 + 96);
      return *v3 != 0;
    }

    v5 = a2 + 1;
    v7 = v2 + 8;
    v6 = *(v2 + 8);
    if (v5 < (*(v7 + 8) - v6) >> 3)
    {
      v3 = (v6 + 8 * v5);
      return *v3 != 0;
    }
  }

  return 0;
}

void *sub_1000902C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  v7 = sub_10008E0E8(*(v6 + 120), a3);
  *a1 = v7;
  ++*(v7 + 15);
  if ((sub_10008FD34(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t sub_100090368(uint64_t a1, uint64_t a2, void *a3)
{
  if ((sub_10008FD34(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  return sub_1000903E8(a1, a2, a3);
}

uint64_t sub_1000903E8(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 120);
  if (*(v3 + 92) == a2)
  {
    v4 = (v3 + 96);
  }

  else
  {
    v4 = (*(v3 + 8) + 8 * a2 + 8);
  }

  v5 = *v4;
  v8 = *(v5 + 60);
  v6 = (v5 + 60);
  v7 = v8;
  v9 = *(v6 - 9);
  v10 = (*(v6 - 7) - v9) >> 4;
  if (*(v6 - 7) == v9)
  {
    v9 = 0;
  }

  *a3 = 0;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v6;
  *v6 = v7 + 1;
  return result;
}

void sub_1000904A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100016EC0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000904C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100016D60();
}

void *sub_100090508(void *a1)
{
  *a1 = off_100103498;
  v2 = a1[2];
  if (v2)
  {
    sub_100016EC0(v2);
  }

  return a1;
}

void sub_100090554(void *a1)
{
  *a1 = off_100103498;
  v1 = a1[2];
  if (v1)
  {
    sub_100016EC0(v1);
  }

  operator delete();
}

uint64_t sub_1000905E8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = sub_100070F78(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

uint64_t sub_10009082C(void *a1, int a2)
{
  if ((*(a1[1] + 160) & 1) == 0)
  {
    if (a2 == 2)
    {
      v2 = *(*a1 + 56);
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_8;
      }

      v2 = *(*a1 + 56);
    }

    if (v2())
    {
      operator new();
    }
  }

LABEL_8:
  if (dword_10010E8A8 >= 2)
  {
    sub_1000113AC(__p, "INFO");
    sub_10002B1D4(&v6, __p);
    sub_10002AE44(&std::cerr, "Not using replace matcher", 25);
    sub_10002B280(&v6);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void *sub_100090A20(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100103080;
  sub_100090B18((a1 + 3), a2, a3);
  return a1;
}

void sub_100090A9C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100103080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100090B18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_10008288C(a1, a3);
  *v6 = off_1001030D0;
  *(v6 + 132) = *(a3 + 32);
  v7 = *(a3 + 40);
  *&v8 = v7;
  *(&v8 + 1) = SHIDWORD(v7);
  *(v6 + 144) = v8;
  v9 = *(a3 + 56);
  if (!v9)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  v10 = a1 + 176;
  *(a1 + 168) = v9;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  v65 = (a1 + 200);
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 240) = 0;
  v11 = (a1 + 240);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v64 = (a1 + 240);
  sub_1000113AC(&__str, "replace");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (!*(a1 + 144))
  {
    *(a1 + 132) = 1;
  }

  if (!*(a1 + 152))
  {
    *(a1 + 136) = 1;
  }

  if (*a2 != a2[1])
  {
    v12 = (*(**(*a2 + 8) + 96))(*(*a2 + 8));
    sub_10002DDA4(a1, v12);
    v13 = (*(**(*a2 + 8) + 104))(*(*a2 + 8));
    sub_10002DE44(a1, v13);
  }

  v15 = *(a1 + 248);
  v14 = *(a1 + 256);
  if (v15 >= v14)
  {
    v17 = *v11;
    v18 = v15 - *v11;
    v19 = (v18 >> 3) + 1;
    if (v19 >> 61)
    {
      sub_100017658();
    }

    v20 = v14 - v17;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
    v22 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    v85 = a1 + 240;
    if (v22)
    {
      sub_1000945E8(a1 + 240, v22);
    }

    v23 = (8 * (v18 >> 3));
    *v23 = 0;
    v16 = v23 + 1;
    memcpy(0, v17, v18);
    v24 = *(a1 + 240);
    *(a1 + 240) = 0;
    *(a1 + 248) = v16;
    v25 = *(a1 + 256);
    *(a1 + 256) = 0;
    __str.__r_.__value_.__r.__words[2] = v24;
    v84 = v25;
    __str.__r_.__value_.__r.__words[0] = v24;
    __str.__r_.__value_.__l.__size_ = v24;
    sub_100094630(&__str);
  }

  else
  {
    *v15 = 0;
    v16 = v15 + 8;
  }

  *(a1 + 248) = v16;
  v26 = *a2;
  if (a2[1] != *a2)
  {
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v29 = v26 + v27;
      LODWORD(v66[0]) = *v29;
      v30 = *(v29 + 8);
      v32 = *(a1 + 240);
      v31 = *(a1 + 248);
      __str.__r_.__value_.__r.__words[0] = v66;
      *(sub_1000946DC(v65, v66) + 5) = (v31 - v32) >> 3;
      sub_10009490C(v10, v66);
      v33 = v30;
      if ((*(a3 + 48) & 1) == 0)
      {
        v33 = (*(*v30 + 72))(v30, 0);
      }

      v35 = *(a1 + 248);
      v34 = *(a1 + 256);
      if (v35 >= v34)
      {
        v37 = *v64;
        v38 = v35 - *v64;
        v39 = v38 >> 3;
        v40 = (v38 >> 3) + 1;
        if (v40 >> 61)
        {
          sub_100017658();
        }

        v41 = v34 - v37;
        if (v41 >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        v21 = v41 >= 0x7FFFFFFFFFFFFFF8;
        v42 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v21)
        {
          v42 = v40;
        }

        v85 = a1 + 240;
        if (v42)
        {
          sub_1000945E8(v64, v42);
        }

        *(8 * v39) = v33;
        v36 = 8 * v39 + 8;
        memcpy(0, v37, v38);
        v43 = *(a1 + 240);
        *(a1 + 240) = 0;
        *(a1 + 248) = v36;
        v44 = *(a1 + 256);
        *(a1 + 256) = 0;
        __str.__r_.__value_.__r.__words[2] = v43;
        v84 = v44;
        __str.__r_.__value_.__r.__words[0] = v43;
        __str.__r_.__value_.__l.__size_ = v43;
        sub_100094630(&__str);
        v10 = a1 + 176;
      }

      else
      {
        *v35 = v33;
        v36 = (v35 + 1);
      }

      *(a1 + 248) = v36;
      if (!v27)
      {
        goto LABEL_58;
      }

      v45 = *(a1 + 40);
      v46 = (*(*v30 + 96))(v30);
      if (!sub_1000C6724(v45, v46, 1))
      {
        break;
      }

LABEL_47:
      v50 = *(a1 + 48);
      v51 = (*(*v30 + 104))(v30);
      if (!sub_1000C6724(v50, v51, 1))
      {
        v52 = byte_10010E280;
        if (byte_10010E280 == 1)
        {
          sub_1000113AC(v73, "FATAL");
          sub_10002B1D4(&v75, v73);
        }

        else
        {
          sub_1000113AC(v70, "ERROR");
          sub_10002B1D4(&v72, v70);
        }

        sub_10002AE44(&std::cerr, "ReplaceFstImpl: Output symbols of FST ", 38);
        v53 = std::ostream::operator<<();
        sub_10002AE44(v53, " do not match output symbols of base FST (0th FST)", 50);
        if (v52)
        {
          sub_10002B280(&v75);
          if (v74 < 0)
          {
            v54 = v73[0];
            goto LABEL_56;
          }
        }

        else
        {
          sub_10002B280(&v72);
          if (v71 < 0)
          {
            v54 = v70[0];
LABEL_56:
            operator delete(v54);
          }
        }

        *(a1 + 8) |= 4uLL;
      }

LABEL_58:
      ++v28;
      v26 = *a2;
      v27 += 16;
      if (v28 >= (a2[1] - *a2) >> 4)
      {
        goto LABEL_59;
      }
    }

    v47 = byte_10010E280;
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(v79, "FATAL");
      sub_10002B1D4(&v81, v79);
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
      sub_10002B1D4(&v78, __p);
    }

    sub_10002AE44(&std::cerr, "ReplaceFstImpl: Input symbols of FST ", 37);
    v48 = std::ostream::operator<<();
    sub_10002AE44(v48, " do not match input symbols of base FST (0th FST)", 49);
    if (v47)
    {
      sub_10002B280(&v81);
      if (v80 < 0)
      {
        v49 = v79[0];
LABEL_45:
        operator delete(v49);
      }
    }

    else
    {
      sub_10002B280(&v78);
      if (v77 < 0)
      {
        v49 = __p[0];
        goto LABEL_45;
      }
    }

    *(a1 + 8) |= 4uLL;
    goto LABEL_47;
  }

LABEL_59:
  v55 = (a3 + 28);
  __str.__r_.__value_.__r.__words[0] = v55;
  v56 = *(sub_1000946DC(v65, v55) + 5);
  if (!v56 && *(a1 + 248) - *(a1 + 240) >= 9uLL)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(&__str, "FATAL");
    }

    else
    {
      sub_1000113AC(&__str, "ERROR");
    }

    sub_10002B1D4(&v82, &__str);
    sub_10002AE44(&std::cerr, "ReplaceFstImpl: No FST corresponding to root label ", 51);
    v57 = *v55;
    v58 = std::ostream::operator<<();
    sub_10002AE44(v58, " in the input tuple vector", 26);
    sub_10002B280(&v82);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *(a1 + 8) |= 4uLL;
  }

  if (v56 <= 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = v56;
  }

  *(a1 + 264) = v59;
  v69 = 0;
  *(a1 + 8) = *(a1 + 8) & 4 | sub_100091460(*v55, a2, *(a1 + 132), *(a1 + 136), *(a1 + 144), &v69);
  *(a1 + 160) = v69 ^ 1;
  if (dword_10010E8A8 >= 2)
  {
    sub_1000113AC(v66, "INFO");
    sub_10002B1D4(&v68, v66);
    v60 = sub_10002AE44(&std::cerr, "ReplaceFstImpl::ReplaceFstImpl: always_cache = ", 47);
    if (*(a1 + 160))
    {
      v61 = "true";
    }

    else
    {
      v61 = "false";
    }

    if (*(a1 + 160))
    {
      v62 = 4;
    }

    else
    {
      v62 = 5;
    }

    sub_10002AE44(v60, v61, v62);
    sub_10002B280(&v68);
    if (v67 < 0)
    {
      operator delete(v66[0]);
    }
  }

  return a1;
}

void sub_1000912D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void **a11, uint64_t a12, void **a13)
{
  if (*(v14 - 105) < 0)
  {
    operator delete(*(v14 - 128));
  }

  a13 = a11;
  sub_1000949D8(&a13);
  sub_10001A12C(a12);
  sub_10001A178(a10, *a9);
  sub_1000917F0((v13 + 168));
  sub_100088030(v13);
  _Unwind_Resume(a1);
}

uint64_t sub_100091460(int a1, uint64_t *a2, int a3, int a4, int a5, _BYTE *a6)
{
  v6 = a6;
  __src = 0;
  v57 = 0;
  v58 = 0;
  v7 = *a2;
  v8 = a2[1] - *a2;
  if (v8)
  {
    v44 = a3;
    v45 = a5;
    v46 = a4;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v8 >> 4;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    do
    {
      v54 = v14;
      v55 = v13;
      v18 = (v7 + v9);
      v19 = *v18;
      v20 = v12 >= v19 && v19 > 0;
      v51 = v20;
      v52 = v19 < 0;
      if (v19 == a1)
      {
        v11 = v10;
      }

      v53 = v11;
      v21 = *(v18 + 1);
      v50 = (*(*v21 + 16))(v21) != -1;
      v22 = (*(*v21 + 56))(v21, 0x10000000, 0) != 0;
      v23 = (*(*v21 + 56))(v21, 0x40000000, 0) != 0;
      v24 = (*(*v21 + 56))(v21, 0xFFFFFFFF0004, 0);
      v25 = v57;
      if (v57 >= v58)
      {
        v27 = __src;
        v28 = v57 - __src;
        v29 = (v57 - __src) >> 3;
        v30 = v29 + 1;
        if ((v29 + 1) >> 61)
        {
          sub_100017658();
        }

        v31 = v58 - __src;
        if ((v58 - __src) >> 2 > v30)
        {
          v30 = v31 >> 2;
        }

        v32 = v31 >= 0x7FFFFFFFFFFFFFF8;
        v33 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v32)
        {
          v33 = v30;
        }

        if (v33)
        {
          sub_10001A1CC(&__src, v33);
        }

        *(8 * v29) = v24;
        v26 = 8 * v29 + 8;
        memcpy(0, v27, v28);
        v34 = __src;
        __src = 0;
        v57 = v26;
        v58 = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v57 = v24;
        v26 = (v25 + 8);
      }

      v11 = v53;
      v16 &= v52;
      v17 &= v51;
      v15 &= v50;
      v13 = v22 & v55;
      v14 = v23 & v54;
      v57 = v26;
      ++v10;
      v7 = *a2;
      v12 = (a2[1] - *a2) >> 4;
      v9 += 16;
    }

    while (v12 > v10);
    v35 = v53;
    v36 = v16 | v17;
    v6 = a6;
    a5 = v45;
    a4 = v46;
    a3 = v44;
  }

  else
  {
    v35 = 0;
    v36 = 1;
    v15 = 1;
    LOBYTE(v14) = 1;
    LOBYTE(v13) = 1;
  }

  v39 = a3 == 4 && a5 != -1 || (a4 & 0xFFFFFFFE) == 2;
  v40 = (a3 & 0xFFFFFFFE) == 2 || v39;
  v41 = sub_1000C8AD0(&__src, v35, (a3 & 0xFFFFFFFD) == 1, (a4 & 0xFFFFFFFD) == 1, (a3 - 1) < 2, (a4 - 1) < 2, v40, v15, v13, v14, v36 & 1);
  if ((v41 & 0x50000000) != 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = 0;
  }

  *v6 = v42;
  if (__src)
  {
    v57 = __src;
    operator delete(__src);
  }

  return v41;
}

void sub_1000917C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1000917F0(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100094A98(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_100091838(uint64_t a1)
{
  *a1 = off_1001030D0;
  v3 = (a1 + 240);
  sub_1000949D8(&v3);
  sub_10001A12C(a1 + 200);
  sub_10001A178(a1 + 176, *(a1 + 184));
  sub_1000917F0((a1 + 168));
  return sub_100088030(a1);
}

void sub_1000918B0(uint64_t a1)
{
  *a1 = off_1001030D0;
  v2 = (a1 + 240);
  sub_1000949D8(&v2);
  sub_10001A12C(a1 + 200);
  sub_10001A178(a1 + 176, *(a1 + 184));
  sub_1000917F0((a1 + 168));
  sub_100088030(a1);
  operator delete();
}

uint64_t sub_100091968(void *a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    v4 = a1[30];
    if ((a1[31] - v4) >= 9)
    {
      v5 = 1;
      do
      {
        if ((*(**(v4 + 8 * v5) + 56))(*(v4 + 8 * v5), 4, 0))
        {
          a1[1] |= 4uLL;
        }

        ++v5;
        v4 = a1[30];
      }

      while (v5 < (a1[31] - v4) >> 3);
    }
  }

  return a1[1] & a2;
}

uint64_t *sub_100091A64(uint64_t *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  sub_100091D88((a1 + 4));
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete();
  }

  return a1;
}

void sub_100091AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  sub_100091C88();
}

void sub_100091B7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void *sub_100091BE8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_10002E3F0(result, a2);
    }

    sub_100017658();
  }

  return result;
}

uint64_t sub_100091D88(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = sub_10008A348(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  sub_100087F08((a1 + 32));

  return sub_100088580(a1);
}

void sub_100091DF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  sub_100091FEC();
}

void sub_100091EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  *v10 = 0;
  if (v12)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void *sub_100091F10(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100017DF0(result, a2);
    }

    sub_100017658();
  }

  return result;
}

void sub_100091FD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000944A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000920EC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10009212C(a1 + 8, v2);
  }

  sub_100087F08((a1 + 16));
  return a1;
}

void sub_10009214C(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = sub_100092464(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = sub_10009226C(*a1);
    if (!__p)
    {
      return;
    }

    __p[1] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = sub_10009265C(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = sub_100092854(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = sub_100092A4C(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = sub_100092C44(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = sub_100092E3C(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t sub_10009226C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x40)
  {
    sub_100082ED0((a1 + 16), 9uLL);
    v1 = *v2;
  }

  if (!*(v1 + 64))
  {
    operator new();
  }

  return *(v1 + 64);
}

void *sub_100092374(void *a1)
{
  *a1 = off_1001029A8;
  a1[1] = off_1001029D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000923DC(void *a1)
{
  *a1 = off_1001029A8;
  a1[1] = off_1001029D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100092464(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    sub_100082ED0((a1 + 16), 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void *sub_10009256C(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000925D4(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10009265C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    sub_100082ED0((a1 + 16), 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *sub_100092764(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000927CC(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100092854(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    sub_100082ED0((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *sub_10009295C(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000929C4(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100092A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    sub_100082ED0((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *sub_100092B54(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100092BBC(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100092C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    sub_100082ED0((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *sub_100092D4C(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100092DB4(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100092E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    sub_100082ED0((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *sub_100092F44(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100092FAC(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100093034(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 56));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100093124(a1, prime);
    }
  }
}

void sub_100093124(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = sub_100093274((a1 + 16), a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      sub_10009212C(a1 + 8, v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 24;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *a1;
            if (!*(*a1 + 8 * v12))
            {
              v13[v12] = v7;
              goto LABEL_23;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_23:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      sub_10009212C(a1 + 8, v10);
    }

    *(a1 + 8) = 0;
  }
}

void *sub_100093274(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_100092464(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089C48((v2 + 8), 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 == 1)
  {
    v2 = sub_10009226C(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089B38((v2 + 8), 1);
      result[1] = 0;
      return result;
    }

    v4 = result[1];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 61))
            {

              operator new();
            }

            sub_100016D60();
          }

          v2 = sub_100092E3C(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008A1C0((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }

        else
        {
          v2 = sub_100092C44(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008A0A8((v2 + 8), 1);
            result[32] = 0;
            return result;
          }

          v4 = result[32];
        }
      }

      else
      {
        v2 = sub_100092A4C(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = sub_100089F90((v2 + 8), 1);
          result[16] = 0;
          return result;
        }

        v4 = result[16];
      }
    }

    else
    {
      v2 = sub_100092854(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = sub_100089E78((v2 + 8), 1);
        result[8] = 0;
        return result;
      }

      v4 = result[8];
    }
  }

  else
  {
    v2 = sub_10009265C(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089D60((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t sub_100093448(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = sub_1000934B8(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  sub_100087F08((a1 + 32));

  return sub_1000920EC(a1);
}

uint64_t sub_1000934B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC7)
  {
    sub_100082ED0((a1 + 16), 0x19uLL);
    v1 = *v2;
  }

  if (!*(v1 + 192))
  {
    operator new();
  }

  return *(v1 + 192);
}

void *sub_1000935C0(void *a1)
{
  *a1 = off_1001024E8;
  a1[1] = off_100102510;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100093628(void *a1)
{
  *a1 = off_1001024E8;
  a1[1] = off_100102510;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_1000936B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x187)
  {
    sub_100082ED0((a1 + 16), 0x31uLL);
    v1 = *v2;
  }

  if (!*(v1 + 384))
  {
    operator new();
  }

  return *(v1 + 384);
}

void *sub_1000937B8(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100093820(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_1000938A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x307)
  {
    sub_100082ED0((a1 + 16), 0x61uLL);
    v1 = *v2;
  }

  if (!*(v1 + 768))
  {
    operator new();
  }

  return *(v1 + 768);
}

void *sub_1000939B0(void *a1)
{
  *a1 = off_1001025E8;
  a1[1] = off_100102610;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100093A18(void *a1)
{
  *a1 = off_1001025E8;
  a1[1] = off_100102610;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100093AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x607)
  {
    sub_100082ED0((a1 + 16), 0xC1uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1536))
  {
    operator new();
  }

  return *(v1 + 1536);
}

void *sub_100093BA8(void *a1)
{
  *a1 = off_1001026A8;
  a1[1] = off_1001026D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100093C10(void *a1)
{
  *a1 = off_1001026A8;
  a1[1] = off_1001026D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100093C98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC07)
  {
    sub_100082ED0((a1 + 16), 0x181uLL);
    v1 = *v2;
  }

  if (!*(v1 + 3072))
  {
    operator new();
  }

  return *(v1 + 3072);
}

void *sub_100093DA0(void *a1)
{
  *a1 = off_100102768;
  a1[1] = off_100102790;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100093E08(void *a1)
{
  *a1 = off_100102768;
  a1[1] = off_100102790;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100093E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x300)
  {
    sub_100082ED0((a1 + 16), 0x301uLL);
    v1 = *v2;
  }

  if (!*(v1 + 6144))
  {
    operator new();
  }

  return *(v1 + 6144);
}

void *sub_100093F9C(void *a1)
{
  *a1 = off_100102828;
  a1[1] = off_100102850;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100094004(void *a1)
{
  *a1 = off_100102828;
  a1[1] = off_100102850;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10009408C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x600)
  {
    sub_100082ED0((a1 + 16), 0x601uLL);
    v1 = *v2;
  }

  if (!*(v1 + 12288))
  {
    operator new();
  }

  return *(v1 + 12288);
}

void *sub_100094198(void *a1)
{
  *a1 = off_1001028E8;
  a1[1] = off_100102910;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100094200(void *a1)
{
  *a1 = off_1001028E8;
  a1[1] = off_100102910;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100094288(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100094364(v4, *v7, v7[1], (v7[1] - *v7) >> 3);
      v7 += 3;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v7 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      v8 = *v6;
      if (*v6)
      {
        v6[1] = v8;
        operator delete(v8);
      }

      v6 += 3;
    }
  }

  return sub_10009441C(v10);
}

uint64_t sub_100094364(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000943E0(result, a4);
  }

  return result;
}

void sub_1000943C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000943E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10001A1CC(a1, a2);
  }

  sub_100017658();
}

uint64_t sub_10009441C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100094454(a1);
  }

  return a1;
}

void sub_100094454(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_1000944A4(uint64_t a1)
{
  sub_1000944DC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000944DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_10009453C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100094590(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100094590(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_1000945E8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_100094630(uint64_t a1)
{
  sub_100094668(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100094668(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *sub_1000946DC(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_10009490C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1000949D8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100094A2C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_100094A2C(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t *sub_100094A98(uint64_t *a1)
{
  v8 = (a1 + 30);
  sub_10009453C(&v8);
  sub_100093448((a1 + 21));
  v2 = a1[18];
  a1[18] = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  sub_100091D88((a1 + 4));
  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    operator delete();
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete();
  }

  return a1;
}

uint64_t sub_100094B50(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return *(a1 + 60);
  }

  if ((*(*a1 + 24))(a1, 4))
  {
    *(a1 + 56) = 1;
    return *(a1 + 60);
  }

  if (*(a1 + 56))
  {
    return *(a1 + 60);
  }

  v3 = *(a1 + 240);
  if (*(a1 + 248) - v3 == 8)
  {
    result = 0xFFFFFFFFLL;
    *(a1 + 60) = -1;
    *(a1 + 56) = 1;
    if ((*(a1 + 64) & 0x80000000) != 0)
    {
      *(a1 + 64) = 0;
    }
  }

  else
  {
    v4 = *(v3 + 8 * *(a1 + 264));
    result = (*(*v4 + 16))(v4);
    if (result != -1)
    {
      v5 = result;
      memset(__p, 0, sizeof(__p));
      v6 = sub_100094CC4((*(a1 + 168) + 136), __p, 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v7 = *(a1 + 168);
      v8 = *(a1 + 264);
      __p[0] = v6;
      __p[1] = __PAIR64__(v5, v8);
      result = sub_10009561C(v7, __p, 1);
      *(a1 + 60) = result;
      *(a1 + 56) = 1;
      if (*(a1 + 64) <= result)
      {
        *(a1 + 64) = result + 1;
      }
    }
  }

  return result;
}

void sub_100094CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100094CC4(void *a1, uint64_t *a2, int a3)
{
  a1[16] = a2;
  if (!a3)
  {
    v5 = sub_100095518((a1 + 4), &qword_1000D4DF0);
    if (!v5)
    {
      return -1;
    }

    return v5[2];
  }

  v5 = sub_100094DA0((a1 + 4), &qword_1000D4DF0, &qword_1000D4DF0);
  if ((v6 & 1) == 0)
  {
    return v5[2];
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[14] - a1[13]) >> 3);
  v5[2] = v7;
  sub_100094D60((a1 + 13), a2);
  return v7;
}

uint64_t sub_100094D60(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1000953D8(a1, a2);
  }

  else
  {
    sub_100095384(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_100094DA0(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = sub_100095024((a1 + 48), *a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (sub_10009507C((a1 + 64), v13[2], *a2))
            {
              return v13;
            }
          }

          else
          {
            if (v11 > 1)
            {
              if (v14 >= v9)
              {
                v14 %= v9;
              }
            }

            else
            {
              v14 &= v9 - 1;
            }

            if (v14 != v3)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = sub_10009515C((a1 + 32), 1uLL);
  v27[0] = v15;
  v27[1] = a1 + 32;
  v27[2] = 1;
  *v15 = 0;
  v15[1] = v8;
  v15[2] = *a3;
  v16 = (*(a1 + 40) + 1);
  v17 = *(a1 + 56);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_100093034(a1, v21);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    v13 = v27[0];
    *v27[0] = *v23;
    *v23 = v13;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 24);
    *(a1 + 24) = v24;
    *(v22 + 8 * v3) = a1 + 24;
    v13 = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v25 >= v9)
        {
          v25 %= v9;
        }
      }

      else
      {
        v25 &= v9 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      v13 = v27[0];
    }
  }

  v27[0] = 0;
  ++*(a1 + 40);
  sub_100095340(v27, 0);
  return v13;
}

void sub_10009500C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100095340(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_100095024(uint64_t *a1, uint64_t a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = a2 == -1 ? *(v2 + 128) : (*(v2 + 104) + 24 * a2);
  v4 = *v3;
  v5 = v3[1];
  if (v4 == v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = *v4;
    v8 = v4[1];
    v4 += 2;
    result += v7 + 7863 * v8;
  }

  while (v4 != v5);
  return result;
}

uint64_t sub_10009507C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = v5[16];
    }

    else
    {
      v6 = (v5[13] + 24 * a2);
    }

    if (a3 == -1)
    {
      v7 = v5[16];
    }

    else
    {
      v7 = (v5[13] + 24 * a3);
    }

    return sub_1000950E8(v5[1], v6, v7);
  }

  return result;
}

uint64_t sub_1000950E8(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v5 == a3[1] - *a3)
  {
    if (v4 == v3)
    {
      return 1;
    }

    v6 = v5 >> 3;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (*a3 + 4);
    for (i = (v3 + 4); *(i - 1) == *(v7 - 1) && *i == *v7; i += 2)
    {
      v7 += 2;
      if (!--v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *sub_10009515C(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_1000936B0(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10002C680((v2 + 8), 1);
      result[6] = 0;
      return result;
    }

    v4 = result[6];
  }

  else if (a2 == 1)
  {
    v2 = sub_1000934B8(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10008C518((v2 + 8), 1);
      result[3] = 0;
      return result;
    }

    v4 = result[3];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (a2 < 0xAAAAAAAAAAAAAABLL)
            {

              operator new();
            }

            sub_100016D60();
          }

          v2 = sub_10009408C(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008CA98((v2 + 8), 1);
            result[192] = 0;
            return result;
          }

          v4 = result[192];
        }

        else
        {
          v2 = sub_100093E90(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008C97C((v2 + 8), 1);
            result[96] = 0;
            return result;
          }

          v4 = result[96];
        }
      }

      else
      {
        v2 = sub_100093C98(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = sub_10008C860((v2 + 8), 1);
          result[48] = 0;
          return result;
        }

        v4 = result[48];
      }
    }

    else
    {
      v2 = sub_100093AA0(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = sub_10008C744((v2 + 8), 1);
        result[24] = 0;
        return result;
      }

      v4 = result[24];
    }
  }

  else
  {
    v2 = sub_1000938A8(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_10008C628((v2 + 8), 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t sub_100095340(uint64_t result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    result = sub_1000934B8(**(result + 8));
    *(v2 + 24) = *(result + 56);
    *(result + 56) = v2;
  }

  return result;
}

uint64_t sub_100095384(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_100094364(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_1000953D8(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100017658();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100017DF0(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_100094364(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  *&v16 = v16 + 24;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_100094288(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1000944A4(&v14);
  return v13;
}

void sub_100095504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000944A4(va);
  _Unwind_Resume(a1);
}

void *sub_100095518(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100095024((a1 + 48), *a2);
  v5 = *(a1 + 8);
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_10009507C((a1 + 64), v11[2], *a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t sub_10009561C(void *a1, _OWORD *a2, int a3)
{
  a1[16] = a2;
  if (a3)
  {
    v5 = sub_100095754((a1 + 4), &dword_1000D4DF8, &dword_1000D4DF8);
    if (v6)
    {
      v7 = a1[13];
      v8 = a1[14];
      v9 = a1[15];
      v10 = (v8 - v7) >> 4;
      *(v5 + 4) = v10;
      if (v8 >= v9)
      {
        v13 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          sub_100017658();
        }

        v14 = v9 - v7;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_10002E3F0((a1 + 13), v15);
        }

        *(16 * v10) = *a2;
        v11 = 16 * v10 + 16;
        v16 = a1[13];
        v17 = a1[14] - v16;
        v18 = (16 * v10 - v17);
        memcpy(v18, v16, v17);
        v19 = a1[13];
        a1[13] = v18;
        a1[14] = v11;
        a1[15] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = *a2;
        v11 = (v8 + 1);
      }

      a1[14] = v11;
    }

    else
    {
      return *(v5 + 4);
    }
  }

  else
  {
    v12 = sub_100095AA8(a1 + 4, &dword_1000D4DF8);
    if (v12)
    {
      return *(v12 + 4);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v10;
}

uint64_t *sub_100095754(uint64_t a1, int *a2, _DWORD *a3)
{
  v7 = *a2;
  if (v7 < -1)
  {
    v10 = 0;
  }

  else
  {
    v8 = *(a1 + 48);
    if (v7 == -1)
    {
      v9 = *(v8 + 128);
    }

    else
    {
      v9 = *(v8 + 104) + 16 * v7;
    }

    v10 = *v9 + 7853 * *(v9 + 8) + 7867 * *(v9 + 12);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v3 = v10;
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v3);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_100095A10((a1 + 64), *(i + 4), *a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v17 = sub_10008D428((a1 + 32), 1uLL);
  v29[0] = v17;
  v29[1] = a1 + 32;
  v29[2] = 1;
  *v17 = 0;
  v17[1] = v10;
  *(v17 + 4) = *a3;
  v18 = (*(a1 + 40) + 1);
  v19 = *(a1 + 56);
  if (!v11 || (v19 * v11) < v18)
  {
    v20 = 1;
    if (v11 >= 3)
    {
      v20 = (v11 & (v11 - 1)) != 0;
    }

    v21 = v20 | (2 * v11);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_100089724(a1, v23);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }

      else
      {
        v3 = v10;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v3);
  if (v25)
  {
    i = v29[0];
    *v29[0] = *v25;
    *v25 = i;
  }

  else
  {
    v26 = v29[0];
    *v29[0] = *(a1 + 24);
    *(a1 + 24) = v26;
    *(v24 + 8 * v3) = a1 + 24;
    i = v29[0];
    if (*v29[0])
    {
      v27 = *(*v29[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v27 >= v11)
        {
          v27 %= v11;
        }
      }

      else
      {
        v27 &= v11 - 1;
      }

      *(*a1 + 8 * v27) = v29[0];
      i = v29[0];
    }
  }

  v29[0] = 0;
  ++*(a1 + 40);
  sub_10008D60C(v29, 0);
  return i;
}

void sub_1000959F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008D60C(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_100095A10(uint64_t *a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = *(v5 + 104) + 16 * a2;
    }

    if (a3 == -1)
    {
      v7 = *(v5 + 128);
    }

    else
    {
      v7 = *(v5 + 104) + 16 * a3;
    }

    return *v6 == *v7 && *(v6 + 8) == *(v7 + 8) && *(v6 + 12) == *(v7 + 12);
  }

  return result;
}

uint64_t *sub_100095AA8(void *a1, int *a2)
{
  v4 = *a2;
  if (v4 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[6];
    if (v4 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = *(v5 + 104) + 16 * v4;
    }

    v7 = *v6 + 7853 * *(v6 + 8) + 7867 * *(v6 + 12);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (sub_100095A10(a1 + 8, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

_DWORD *sub_100095BE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X8>)
{
  result = sub_10008FC4C(a1, a2);
  if (result)
  {
    v7 = *(a1 + 120);
    if (*(v7 + 92) == a2)
    {
      v8 = (v7 + 96);
    }

    else
    {
      v8 = (*(v7 + 8) + 8 * a2 + 8);
    }

    *a3 = **v8;
  }

  else
  {
    v9 = *(*(a1 + 168) + 104) + 16 * a2;
    v10 = sub_10002B59C();
    v11 = *v10;
    *a3 = *v10;
    if (!*v9)
    {
      v12 = *(v9 + 12);
      (*(**(*(a1 + 240) + 8 * *(v9 + 8)) + 24))(&v13);
      v11 = v13;
      *a3 = v13;
    }

    if ((*(a1 + 160) & 1) != 0 || (result = sub_10008FD34(a1, a2), result))
    {
      result = sub_10008E0E8(*(a1 + 120), a2);
      *result = v11;
      result[14] |= 9u;
    }
  }

  return result;
}

uint64_t sub_100095CF8(uint64_t a1, int a2)
{
  if (!sub_10008FD34(a1, a2))
  {
    if (*(a1 + 160) != 1)
    {
      v9 = *(*(*(a1 + 168) + 104) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v7 = *(*(a1 + 240) + 8 * SDWORD2(v9));
      v8 = (*(*v7 + 32))(v7);
      return v8 + sub_100096060(a1, &v9, 0, 15);
    }

    sub_100095DEC(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

void sub_100095DEC(uint64_t *a1, int a2)
{
  v12 = *(*(a1[21] + 104) + 16 * a2);
  if (HIDWORD(v12) != -1)
  {
    v4 = *(a1[30] + 8 * SDWORD2(v12));
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    (*(*v4 + 120))(v4);
    if (sub_100096060(a1, &v12, v8, 15))
    {
      v5 = sub_10008E0E8(a1[15], a2);
      sub_10008E830(v5 + 3, v8);
    }

    while (1)
    {
      if (v9)
      {
        if ((*(*v9 + 16))(v9))
        {
LABEL_15:
          sub_10008DCB4(a1, a2);
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          else if (*(&v10 + 1))
          {
            --**(&v10 + 1);
          }

          return;
        }

        if (v9)
        {
          v6 = (*(*v9 + 24))(v9);
          goto LABEL_8;
        }
      }

      else if (v11 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (*(&v9 + 1) + 16 * v11);
LABEL_8:
      if (sub_100096250(a1, &v12, v6, v8, 15))
      {
        v7 = sub_10008E0E8(a1[15], a2);
        sub_10008E830(v7 + 3, v8);
      }

      if (v9)
      {
        (*(*v9 + 32))(v9);
      }

      else
      {
        ++v11;
      }
    }
  }

  sub_10008DCB4(a1, a2);
}

void sub_10009600C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100096060(uint64_t a1, uint64_t *a2, _DWORD *a3, char a4)
{
  if (*(a2 + 3) == -1)
  {
    return 0;
  }

  v8 = *(**(*(a1 + 240) + 8 * *(a2 + 2)) + 24);
  v9 = *(a2 + 3);
  v8(&v25);
  v10 = sub_10002B59C();
  LODWORD(v21) = v25;
  HIDWORD(v25) = *v10;
  v11.n128_u32[0] = v25;
  if (*&v25 == *(&v25 + 1))
  {
    return 0;
  }

  v12 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (a3)
  {
    v13 = *(a1 + 136);
    if ((v13 & 0xFFFFFFFD) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 152);
    }

    *a3 = v14;
    if ((v13 - 1) >= 2)
    {
      v16 = *(a1 + 152);
    }

    else
    {
      v16 = 0;
    }

    a3[1] = v16;
    if ((a4 & 8) != 0)
    {
      v17 = (*(*(a1 + 168) + 240) + 24 * v12);
      v23 = 0;
      v24 = 0;
      __p = 0;
      sub_100094364(&__p, *v17, v17[1], (v17[1] - *v17) >> 3);
      v23 -= 8;
      v18 = sub_100094CC4((*(a1 + 168) + 136), &__p, 1);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      v19 = v17[1];
      v20 = *(a1 + 168);
      *&v21 = v18;
      *(&v21 + 1) = *(v19 - 8);
      a3[3] = sub_10009561C(v20, &v21, 1);
    }

    if ((a4 & 4) != 0)
    {
      (*(**(*(a1 + 240) + 8 * *(a2 + 2)) + 24))(&v21, v11);
      a3[2] = v21;
    }
  }

  return 1;
}

void sub_100096234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100096250(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, int a5)
{
  v7 = (a5 & 0xFFFFFFFA) != 0 || (*(a1 + 132) & 0xFFFFFFFD) == 1;
  if (!v7)
  {
    *a4 = *a3;
    *(a4 + 8) = a3[2];
    v23 = a3[3];
LABEL_21:
    *(a4 + 12) = v23;
    return 1;
  }

  v8 = a5;
  v12 = a3 + 1;
  v11 = a3[1];
  if (!v11 || v11 < *(*(a1 + 176) + 28))
  {
    goto LABEL_16;
  }

  v13 = a1 + 184;
  v14 = *(a1 + 184);
  if (v14)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 8);
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = *(v13 + 16);
      v7 = *v15 == v13;
      v13 = v15;
    }

    while (v7);
  }

  if (v11 > *(v15 + 28) || (v16 = sub_100072A48((a1 + 200), a3 + 1)) == 0)
  {
LABEL_16:
    if ((v8 & 8) != 0)
    {
      v24 = *(a1 + 168);
      v25 = *(a2 + 8);
      v26 = a3[3];
      *&v46 = *a2;
      *(&v46 + 1) = __PAIR64__(v26, v25);
      v23 = sub_10009561C(v24, &v46, 1);
    }

    else
    {
      v23 = -1;
    }

    v27 = *a3;
    v28 = a3[2];
    goto LABEL_20;
  }

  v17 = *(v16 + 5);
  v18 = (*(*(a1 + 168) + 240) + 24 * *a2);
  __p = 0;
  v44 = 0;
  v45 = 0;
  sub_100094364(&__p, *v18, v18[1], (v18[1] - *v18) >> 3);
  v19 = *(a2 + 8);
  v20 = a3[3];
  v21 = v44;
  if (v44 >= v45)
  {
    v30 = (v44 - __p) >> 3;
    if ((v30 + 1) >> 61)
    {
      sub_100017658();
    }

    v31 = (v45 - __p) >> 2;
    if (v31 <= v30 + 1)
    {
      v31 = v30 + 1;
    }

    if (v45 - __p >= 0x7FFFFFFFFFFFFFF8)
    {
      v32 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      sub_10001A1CC(&__p, v32);
    }

    v33 = (8 * v30);
    *v33 = v19 | (v20 << 32);
    v22 = 8 * v30 + 8;
    v34 = v33 - (v44 - __p);
    memcpy(v34, __p, v44 - __p);
    v35 = __p;
    __p = v34;
    v44 = v22;
    v45 = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v44 = v19 | (v20 << 32);
    v22 = (v21 + 8);
  }

  v44 = v22;
  v36 = sub_100094CC4((*(a1 + 168) + 136), &__p, 1);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  v37 = *(*(a1 + 240) + 8 * v17);
  v38 = (*(*v37 + 16))(v37);
  if (v38 != -1)
  {
    if ((v8 & 8) != 0)
    {
      v39 = *(a1 + 168);
      *&v46 = v36;
      *(&v46 + 1) = __PAIR64__(v38, v17);
      v23 = sub_10009561C(v39, &v46, 1);
    }

    else
    {
      v23 = -1;
    }

    v40 = 0;
    v41 = *(a1 + 132);
    if ((v41 & 0xFFFFFFFD) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *a3;
    }

    if ((v41 - 1) >= 2)
    {
      v40 = *(a1 + 144);
      if (v40 == -1)
      {
        v40 = *v12;
      }
    }

    v28 = a3[2];
    v27 = v42 | (v40 << 32);
LABEL_20:
    *a4 = v27;
    *(a4 + 8) = v28;
    goto LABEL_21;
  }

  return 0;
}

void sub_100096544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100096560(uint64_t *a1, int a2)
{
  if (!sub_10008FD34(a1, a2))
  {
    if ((a1[20] & 1) == 0 && (*(*a1 + 24))(a1, 0x10000000))
    {
      v9 = *(*(a1[21] + 104) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v4 = *(a1[30] + 8 * SDWORD2(v9));
      if ((*(a1 + 33) & 0xFFFFFFFD) == 1)
      {
        (*(*v4 + 120))(v4);
        v5 = 0;
      }

      else
      {
        v5 = (*(*v4 + 40))(v4);
      }

      if ((a1[17] & 0xFFFFFFFD) == 1)
      {
        v5 += sub_100096060(a1, &v9, 0, 15);
      }

      return v5;
    }

    sub_100095DEC(a1, a2);
  }

  v6 = a1[15];
  if (*(v6 + 92) == a2)
  {
    v7 = v6 + 96;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return *(*v7 + 8);
}

void sub_10009684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    sub_1000B9778(a9);
  }

  else
  {
    sub_1000B9760(&a9);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100096870(void *a1, int a2)
{
  v7 = a2;
  if (*(a1[22] + 28) > a2)
  {
    return 0;
  }

  v2 = a1 + 23;
  v3 = a1[23];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 8);
    }

    while (v3);
  }

  else
  {
    do
    {
      v4 = v2[2];
      v5 = *v4 == v2;
      v2 = v4;
    }

    while (v5);
  }

  return *(v4 + 28) >= a2 && sub_100072A48(a1 + 25, &v7) != 0;
}

uint64_t sub_1000968F8(uint64_t *a1, int a2)
{
  if (!sub_10008FD34(a1, a2))
  {
    if ((a1[20] & 1) == 0 && (*(*a1 + 24))(a1, 0x40000000))
    {
      v9 = *(*(a1[21] + 104) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v4 = *(a1[30] + 8 * SDWORD2(v9));
      if ((*(a1 + 33) - 1) >= 2)
      {
        v5 = (*(*v4 + 48))(v4);
      }

      else
      {
        (*(*v4 + 120))(v4);
        v5 = 0;
      }

      if ((*(a1 + 34) - 1) <= 1)
      {
        v5 += sub_100096060(a1, &v9, 0, 15);
      }

      return v5;
    }

    sub_100095DEC(a1, a2);
  }

  v6 = a1[15];
  if (*(v6 + 92) == a2)
  {
    v7 = v6 + 96;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return *(*v7 + 16);
}

void sub_100096BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    sub_1000B9778(a9);
  }

  else
  {
    sub_1000B9760(&a9);
  }

  _Unwind_Resume(a1);
}

void *sub_100096C08(void *a1, uint64_t a2, int a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100103498;
  if (a3)
  {
    v4 = *(a2 + 8);
    sub_100096CD0();
  }

  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[2];
    a1[1] = v6;
    a1[2] = v5;
    if (v7)
    {
      sub_100016EC0(v7);
    }
  }

  else
  {
    a1[1] = v6;
    a1[2] = 0;
  }

  return a1;
}

void sub_100096CB8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100016EC0(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100096D3C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100103080;
  sub_100096D98((a1 + 3), a2);
}

void sub_1000970E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1000949D8(&a17);
  sub_10001A12C(v17 + 200);
  sub_10001A178(v17 + 176, *(v17 + 184));
  sub_1000917F0((v17 + 168));
  sub_100088030(v17);
  _Unwind_Resume(a1);
}

void *sub_100097184(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1000945E8(result, a2);
    }

    sub_100017658();
  }

  return result;
}

void sub_100097340(_Unwind_Exception *a1)
{
  sub_100093448((v1 + 4));
  v3 = v1[1];
  v1[1] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000973A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100019500(result, a4);
  }

  return result;
}

void sub_100097408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10009453C(&a9);
  _Unwind_Resume(a1);
}

void *sub_100097428(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100094364(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10009441C(v8);
  return v4;
}

void *sub_1000974DC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100097534(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100097534(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000975BC(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1000975BC(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_100097654(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_100097654(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_1000977FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10001727C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_100097874(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_100097874(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_100097AB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 64))
  {
    return 0;
  }

  v5 = sub_1000901D8(v3);
  if (v5 >= *(*(a1 + 16) + 64))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    sub_100097ECC(v15, *(a1 + 8), v6);
    sub_100097C60(v15, 15, 31);
    v7 = v16;
    v8 = v17;
    while (v7 < v8)
    {
      v9 = *(a1 + 16);
      v10 = sub_100097D00(v15)[3];
      if (*(v9 + 64) <= v10)
      {
        *(v9 + 64) = v10 + 1;
      }

      v8 = v17;
      v7 = ++v16;
    }

    sub_10008E9DC(*(a1 + 16), v6);
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    v13 = *(v12 + 64);
    v4 = v11 >= v13;
    if (v18)
    {
      --*v18;
    }

    if (v19)
    {
      --*v19;
    }

    if (v11 < v13)
    {
      break;
    }

    v6 = sub_1000901D8(v12);
  }

  while (v6 < *(*(a1 + 16) + 64));
  return v4;
}

void sub_100097BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  if (a22)
  {
    --*a22;
  }

  if (a26)
  {
    --*a26;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100097C60(int *a1, int a2, int a3)
{
  v3 = a2;
  v5 = a1[14] & ~a3;
  result = *(*a1 + 8);
  if (*(result + 160))
  {
    v7 = 15;
  }

  else
  {
    v7 = 31;
  }

  v8 = v7 & a2 | v5;
  a1[14] = v8;
  if ((v8 & 0x10) == 0 && a1[38] != 15)
  {
    result = sub_10008FD34(result, a1[2]);
    if ((result & 1) == 0)
    {
      a1[38] = 0;
    }
  }

  if ((v3 & 0x10) != 0 && !a1[38])
  {

    return sub_100098054(a1);
  }

  return result;
}

unsigned int *sub_100097D00(void *a1)
{
  v2 = *(a1 + 38);
  if (v2)
  {
    v3 = a1[5];
    v4 = v2 ^ 0xF;
  }

  else
  {
    if ((a1[7] & 0x10) != 0)
    {
      if (byte_10010E280 == 1)
      {
        sub_1000113AC(__p, "FATAL");
      }

      else
      {
        sub_1000113AC(__p, "ERROR");
      }

      sub_10002B1D4(&v11, __p);
      sub_10002AE44(&std::cerr, "ReplaceFst: Inconsistent arc iterator flags", 43);
      sub_10002B280(&v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(**a1 + 120))(*a1, *(a1 + 2), a1 + 10);
    v4 = 0;
    v3 = 0;
    a1[18] = a1[11];
    *(a1 + 38) = 15;
    a1[5] = 0;
  }

  v5 = a1[4] - v3;
  if (v5 < 0)
  {
    v7 = *(a1 + 14);
    if (((*(a1 + 43) ^ 0xF) & v7) != 0)
    {
      sub_100096060(*(*a1 + 8), a1 + 2, a1 + 39, v7 & 0xF);
      *(a1 + 43) = a1[7] & 0xF;
    }

    return a1 + 39;
  }

  else
  {
    v6 = (a1[18] + 16 * v5);
    if ((v4 & a1[7]) != 0)
    {
      sub_100096250(*(*a1 + 8), (a1 + 2), v6, a1 + 60, a1[7] & 0xF);
      return a1 + 15;
    }
  }

  return v6;
}

void sub_100097E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100097ECC(uint64_t *a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  a1[2] = -1;
  v4 = a1 + 2;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = -1;
  *(a1 + 14) = 15;
  *(a1 + 5) = 0u;
  v5 = a1 + 10;
  *(a1 + 7) = 0u;
  v6 = a1 + 14;
  *(a1 + 43) = 0;
  *(a1 + 6) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 140) = 0u;
  v7 = *(a2 + 8);
  if (*(v7 + 160) == 1)
  {
    v8 = sub_10008FD34(v7, a3);
    a2 = *a1;
    a3 = *(a1 + 2);
    if ((v8 & 1) == 0)
    {
      sub_100095DEC(*(a2 + 8), *(a1 + 2));
      a2 = *a1;
      a3 = *(a1 + 2);
    }
  }

  v9 = sub_10008FD34(*(a2 + 8), a3);
  v10 = *a1;
  v11 = *(*a1 + 8);
  if (v9)
  {
    sub_1000903E8(v11, *(a1 + 2), v5);
    v12 = a1[11];
    a1[6] = a1[12];
    a1[18] = v12;
    *(a1 + 38) = 15;
  }

  else
  {
    *v4 = *(*(*(v11 + 168) + 104) + 16 * *(a1 + 2));
    v13 = *(a1 + 7);
    if (v13 == -1)
    {
      a1[6] = 0;
    }

    else
    {
      v14 = *(*(*(v10 + 8) + 240) + 8 * *(a1 + 6));
      (*(*v14 + 120))(v14, v13, v6);
      a1[18] = a1[15];
      v15 = sub_100096060(*(*a1 + 8), v4, a1 + 39, 7);
      *(a1 + 43) = 7;
      v16 = a1[16] + v15;
      a1[5] = v15;
      a1[6] = v16;
      *(a1 + 38) = 0;
    }
  }

  return a1;
}

uint64_t sub_100098054(uint64_t result)
{
  v1 = result;
  if ((*(result + 56) & 0x10) != 0)
  {
    v5 = *(result + 128);
    *(result + 144) = *(result + 120);
    if ((*(*(*result + 8) + 132) & 0xFFFFFFFD) == 1)
    {
      v6 = 4;
    }

    else
    {
      v6 = 5;
    }

    *(result + 152) = v6;
    v4 = *(result + 48) - v5;
  }

  else
  {
    v2 = *result;
    v3 = *(v1 + 8);
    result = (*(**v1 + 120))();
    v4 = 0;
    *(v1 + 144) = *(v1 + 88);
    *(v1 + 152) = 15;
  }

  *(v1 + 40) = v4;
  return result;
}

uint64_t sub_1000980F8(uint64_t *a1, int a2, void *a3)
{
  if ((sub_10008FD34(a1, a2) & 1) == 0)
  {
    sub_100095DEC(a1, a2);
  }

  return sub_1000903E8(a1, a2, a3);
}

uint64_t sub_100098158(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = off_1001035E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = a3;
  *(a1 + 77) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = -1;
  v4 = *sub_10002B564();
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = v4;
  *(a1 + 124) = -1;
  if (*(a1 + 72) == 2)
  {
    *(a1 + 112) = 0xFFFFFFFF00000000;
  }

  sub_100098238(a1);
  return a1;
}

void sub_10009820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  sub_100099038(&a10);
  v14 = *(v10 + 8);
  *(v10 + 8) = 0;
  if (v14)
  {
    sub_1000B9800(v14);
  }

  _Unwind_Resume(a1);
}

void sub_100098238(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_100098938((a1 + 40), (*(v2 + 248) - *(v2 + 240)) >> 3);
  v3 = *(v2 + 240);
  if (*(v2 + 248) != v3)
  {
    v4 = 0;
    do
    {
      if (*(v3 + 8 * v4))
      {
        v5 = *(a1 + 40);
        operator new();
      }

      ++v4;
      v3 = *(v2 + 240);
    }

    while (v4 < (*(v2 + 248) - v3) >> 3);
  }
}

uint64_t sub_100098374(uint64_t a1)
{
  *a1 = off_1001035E0;
  v4 = (a1 + 40);
  sub_100099038(&v4);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1000983FC(uint64_t a1)
{
  *a1 = off_1001035E0;
  v3 = (a1 + 40);
  sub_100099038(&v3);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

uint64_t sub_10009850C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 == 4)
  {
    return 4;
  }

  if (v2 == 1)
  {
    v6 = 0x10000000;
  }

  else
  {
    v6 = 0x40000000;
  }

  v7 = *(a1 + 16);
  if (v2 == 1)
  {
    v8 = 805306368;
  }

  else
  {
    v8 = 3221225472;
  }

  v9 = (*(*v7 + 56))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 72);
  }

  v10 = 0x80000000;
  if (v2 == 1)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1000985BC(uint64_t result, int a2)
{
  if (*(result + 64) != a2)
  {
    v2 = result;
    *(result + 64) = a2;
    *(result + 80) = *(*(*(*(result + 24) + 168) + 104) + 16 * a2);
    v3 = *(result + 92);
    if (v3 == -1)
    {
      *(result + 76) = 1;
    }

    else
    {
      v4 = *(*(result + 40) + 8 * *(result + 88));
      *(result + 32) = v4;
      result = (*(**(*v4 + 8) + 32))(*(*v4 + 8), v3);
      v4[18] = v3;
      *(v2 + 124) = *(v2 + 64);
      *(v2 + 78) = 0;
    }
  }

  return result;
}

uint64_t sub_100098674(uint64_t a1, int a2)
{
  *(a1 + 68) = a2;
  if (a2 == -1)
  {
    v3 = 0;
  }

  else
  {
    if (a2)
    {
      v13 = *(a1 + 32);

      return sub_1000991D4(v13, a2);
    }

    v3 = 1;
    *(a1 + 77) = 1;
  }

  *(a1 + 78) = sub_100096060(*(a1 + 24), (a1 + 80), 0, 15);
  v4 = *(a1 + 32);
  v5 = (v4 + 24);
  *(v4 + 48) = v4 + 24;
  *(v4 + 56) = 0;
  if (*(v4 + 8))
  {
    v8 = *(v4 + 16);
    while (1)
    {
      *(v4 + 48) = v8;
      if (v8 == v5)
      {
        break;
      }

      v9 = (*(**(*v4 + 8) + 40))(*(*v4 + 8), *(v8 + 7));
      v10 = *(v4 + 48);
      if (v9)
      {
        if (v10 == v5)
        {
          break;
        }

        *(v4 + 76) = 0;
        goto LABEL_7;
      }

      v11 = v10[1];
      if (v11)
      {
        do
        {
          v8 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v12 = *v8 == v10;
          v10 = v8;
        }

        while (!v12);
      }
    }
  }

  v6 = (*(**(*v4 + 8) + 40))(*(*v4 + 8), 0xFFFFFFFFLL);
  *(v4 + 76) = v6 ^ 1;
  if (v6)
  {
LABEL_7:
    v7 = 1;
  }

  else
  {
    v7 = v3 | *(a1 + 78);
  }

  return v7 & 1;
}

uint64_t sub_1000987E8(uint64_t a1)
{
  if (*(a1 + 77) & 1) != 0 || (*(a1 + 78))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*(a1 + 32) + 76);
  }

  return v1 & 1;
}

uint64_t sub_100098810(uint64_t a1)
{
  if (*(a1 + 77) == 1)
  {
    return a1 + 112;
  }

  if (*(a1 + 78) == 1)
  {
    v2 = a1 + 96;
    sub_100096060(*(a1 + 24), (a1 + 80), (a1 + 96), 15);
  }

  else
  {
    v3 = *(a1 + 32);
    if (*(v3 + 56) == 1)
    {
      v4 = v3 + 15;
    }

    else
    {
      v4 = (*(**(*v3 + 8) + 56))(*(*v3 + 8));
    }

    v2 = a1 + 96;
    sub_100096250(*(a1 + 24), a1 + 80, v4, a1 + 96, 15);
  }

  return v2;
}

uint64_t sub_1000988D0(uint64_t result)
{
  if (*(result + 77) == 1)
  {
    *(result + 77) = 0;
  }

  else if (*(result + 78) == 1)
  {
    *(result + 78) = 0;
  }

  else
  {
    return sub_1000993C0(*(result + 32));
  }

  return result;
}

void sub_100098938(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        sub_1000989C8(--v3, 0);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_100098B18(a1, v5);
  }
}

uint64_t sub_1000989C8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100098C90(result);

    operator delete();
  }

  return result;
}

void sub_100098A14(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a1 + 16;

    sub_100098FD4(v2, a2);
  }

  else
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v5, __p);
    sub_10002AE44(&std::cerr, "MultiEpsMatcher: Bad multi-eps label: 0", 39);
    sub_10002B280(&v5);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100098AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100098B18(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_100017658();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_100017670(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_100098C3C(v14);
  }
}

uint64_t sub_100098C3C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_1000989C8((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100098C90(uint64_t a1)
{
  if (*(a1 + 12) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[1];
      v2[1] = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      v4 = *v2;
      *v2 = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete();
    }
  }

  sub_10001A178(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_100098D4C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, char a6)
{
  if (!a5)
  {
    operator new();
  }

  *a1 = a5;
  *(a1 + 8) = a4;
  *(a1 + 12) = a6;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  if (a3 == 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  if (a3 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  *(a1 + 60) = v7;
  *(a1 + 64) = v8;
  *(a1 + 68) = *sub_10002B564();
  *(a1 + 72) = -1;
  return a1;
}

uint64_t *sub_100098E54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 72))(a2, 0);
  *a1 = v5;
  v6 = (*(*v5 + 128))(v5, a3);
  a1[1] = v6;
  if (!v6)
  {
    operator new();
  }

  return a1;
}

uint64_t *sub_100098FD4(uint64_t a1, int a2)
{
  v9 = a2;
  result = sub_10009490C(a1, &v9);
  v4 = *(a1 + 24);
  v5 = v9;
  if (v4 == -1 || v9 < v4)
  {
    *(a1 + 24) = v9;
  }

  v7 = *(a1 + 28);
  if (v7 == -1 || v7 < v5)
  {
    *(a1 + 28) = v5;
  }

  return result;
}

void sub_100099038(void ***a1)
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
        sub_1000989C8(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1000990C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1001035E0;
  v5 = (*(**(a2 + 16) + 72))(*(a2 + 16), a3);
  *(a1 + 16) = v5;
  v6 = *(v5 + 8);
  *(a1 + 40) = 0;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 77) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = -1;
  v7 = *sub_10002B564();
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = v7;
  *(a1 + 124) = -1;
  if (*(a1 + 72) == 2)
  {
    *(a1 + 112) = 0xFFFFFFFF00000000;
  }

  sub_100098238(a1);
  return a1;
}

void sub_1000991AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100099038(va);
  v4 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v4)
  {
    sub_1000B9800(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000991D4(uint64_t a1, int a2)
{
  v3 = (a1 + 24);
  *(a1 + 48) = a1 + 24;
  *(a1 + 56) = 0;
  if (a2 == -1)
  {
    if (*(a1 + 8))
    {
      v6 = *(a1 + 16);
      while (1)
      {
        *(a1 + 48) = v6;
        if (v6 == v3)
        {
          break;
        }

        v7 = (*(**(*a1 + 8) + 40))(*(*a1 + 8), *(v6 + 7));
        v8 = *(a1 + 48);
        if (v7)
        {
          if (v8 == v3)
          {
            break;
          }

          result = 1;
          goto LABEL_11;
        }

        v9 = v8[1];
        if (v9)
        {
          do
          {
            v6 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v6 = v8[2];
            v10 = *v6 == v8;
            v8 = v6;
          }

          while (!v10);
        }
      }
    }

    v4 = *(**(*a1 + 8) + 40);
    goto LABEL_10;
  }

  if (!a2)
  {
    v4 = *(**(*a1 + 8) + 40);
LABEL_10:
    result = v4();
    goto LABEL_11;
  }

  if ((*(a1 + 8) & 2) == 0 || v3 == sub_100099358(a1 + 16, a2))
  {
    v4 = *(**(*a1 + 8) + 40);
    goto LABEL_10;
  }

  result = 1;
  *(a1 + 56) = 1;
LABEL_11:
  *(a1 + 76) = result ^ 1;
  return result;
}

uint64_t sub_100099358(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = v2 != -1 && v2 <= a2;
  if (!v3 || *(a1 + 28) < a2)
  {
    return a1 + 8;
  }

  v7 = *(a1 + 8);
  v5 = a1 + 8;
  v6 = v7;
  if (!v7)
  {
    return v5;
  }

  v4 = v5;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v4 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v4 == v5 || *(v4 + 28) > a2)
  {
    return v5;
  }

  return v4;
}

uint64_t sub_1000993C0(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    v2 = 1;
LABEL_19:
    v1[76] = v2;
  }

  else
  {
    (*(**(*result + 8) + 64))(*(*result + 8));
    result = (*(**(*v1 + 8) + 48))(*(*v1 + 8));
    v1[76] = result;
    if (result)
    {
      v3 = v1 + 24;
      v4 = *(v1 + 6);
      if (v4 != (v1 + 24))
      {
        v5 = v4[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        while (1)
        {
          *(v1 + 6) = v6;
          if (v6 == v3)
          {
            goto LABEL_18;
          }

          result = (*(**(*v1 + 8) + 40))(*(*v1 + 8), *(v6 + 7));
          v8 = *(v1 + 6);
          if (result)
          {
            break;
          }

          v9 = v8[1];
          if (v9)
          {
            do
            {
              v6 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v6 = v8[2];
              v7 = *v6 == v8;
              v8 = v6;
            }

            while (!v7);
          }
        }

        if (v8 == v3)
        {
LABEL_18:
          result = (*(**(*v1 + 8) + 40))(*(*v1 + 8), 0xFFFFFFFFLL);
          v2 = result ^ 1;
          goto LABEL_19;
        }

        v1[76] = 0;
      }
    }
  }

  return result;
}

void sub_100099548(uint64_t a1)
{
  v2[0] = *(a1 + 264);
  v2[1] = 0x100000002;
  v2[2] = 0;
  sub_1000995D0(v1, (a1 + 240), a1 + 200, v2);
}

void sub_1000995BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10009A77C(va);
  _Unwind_Resume(a1);
}

void sub_1000995D0(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[2];
  *(a1 + 24) = 0u;
  *(a1 + 4) = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_1000998C4((a1 + 72), (a2[1] - *a2) >> 3);
  sub_1000977FC(a1 + 96, a3);
  sub_1000AF154();
}

void sub_100099730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v2[31];
  if (v6)
  {
    v2[32] = v6;
    operator delete(v6);
  }

  sub_10009993C(va);
  v7 = v2[23];
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v2[21] = v8;
    operator delete(v8);
  }

  v2[17] = off_100100EF0;
  v9 = v2[19];
  if (v9)
  {
    sub_100016EC0(v9);
  }

  sub_10001A12C((v2 + 12));
  v10 = *(v3 + 48);
  if (v10)
  {
    v2[10] = v10;
    operator delete(v10);
  }

  v11 = v2[6];
  if (v11)
  {
    v2[7] = v11;
    operator delete(v11);
  }

  v12 = *v3;
  if (*v3)
  {
    v2[4] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1000997F0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100017658();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000945E8(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_1000998C4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10002EC8C(result, a2);
  }

  return result;
}

void sub_100099920(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009993C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100099990(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100099990(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 24;
    do
    {
      sub_10001A178(v5, *(v5 + 8));
      sub_10001A178(v5 - 24, *(v5 - 16));
      v6 = v5 - 56;
      v5 -= 80;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1000999F8(uint64_t a1)
{
  sub_10001A178(a1 + 56, *(a1 + 64));
  sub_10001A178(a1 + 32, *(a1 + 40));
  return a1;
}

uint64_t sub_100099A34(uint64_t result, int a2)
{
  v2 = a2;
  v3 = result;
  if (((*(*(result + 144) + 64) - *(*(result + 144) + 56)) >> 3) < 1)
  {
    *(result + 216) = a2;
    v4 = (result + 216);
    if (!a2)
    {
LABEL_7:
      if (*(v3 + 32) != *(v3 + 24))
      {
        sub_10002A6A4(v3 + 136);
      }

      sub_10002A53C(v3 + 136, *(v3 + 4));
      v36 = 0;
      v6 = *(v3 + 24);
      v5 = *(v3 + 32);
      if (v5 == v6)
      {
LABEL_49:
        *&v24 = v3 + 160;
        *(&v24 + 1) = v3 + 184;
        *&v25 = 0;
        *(&v25 + 1) = v3 + 208;
        v27 = 0u;
        v28 = 0u;
        sub_100071A64(v3 + 136, &v24);
      }

      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *(v6 + 8 * v8);
        if (!v9)
        {
          goto LABEL_48;
        }

        v33 = 0;
        v34 = 0;
        v35 = 0;
        (*(*v9 + 112))(v9, &v33);
LABEL_13:
        if (!v33)
        {
          break;
        }

        if (!(*(*v33 + 16))(v33))
        {
          if (v33)
          {
            v10 = (*(*v33 + 24))();
            goto LABEL_19;
          }

LABEL_18:
          v10 = v35;
LABEL_19:
          if (*v4 == 1)
          {
            ++*(*(v3 + 224) + 80 * v36);
            (*(*v9 + 24))(&v32, v9, v10);
            v11 = sub_10002B59C();
            *&v24 = v32;
            LODWORD(v29) = *v11;
            if (v32 != *&v29)
            {
              v12 = *(v3 + 224) + 80 * v36;
              ++*(v12 + 4);
            }
          }

          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          (*(*v9 + 120))(v9, v10, &v24);
          while (1)
          {
            if (v24)
            {
              if ((*(*v24 + 16))(v24))
              {
                if (v24)
                {
                  (*(*v24 + 8))(v24);
                }

                else
                {
LABEL_40:
                  if (*(&v25 + 1))
                  {
                    --**(&v25 + 1);
                  }
                }

                if (v33)
                {
                  (*(*v33 + 32))(v33);
                }

                else
                {
                  ++v35;
                }

                goto LABEL_13;
              }
            }

            else if (v26 >= v25)
            {
              goto LABEL_40;
            }

            if (*v4 == 1)
            {
              v13 = *(v3 + 224) + 80 * v36;
              ++*(v13 + 8);
            }

            if (v24)
            {
              v14 = (*(*v24 + 24))(v24);
            }

            else
            {
              v14 = *(&v24 + 1) + 16 * v26;
            }

            v15 = sub_100072A48((v3 + 96), (v14 + 4));
            if (v15)
            {
              v32 = *(v15 + 5);
              v16 = v36;
              v17 = *(v14 + 4);
              v18 = *sub_10002B564();
              LODWORD(v29) = v17;
              HIDWORD(v29) = v17;
              v30 = v18;
              v31 = v32;
              sub_10002E640(v3 + 136);
              sub_10002E818(*(v3 + 144), v16, &v29);
              if (*v4 == 1)
              {
                v19 = *(v3 + 224);
                ++*(v19 + 80 * v36 + 16);
                v20 = v19 + 80 * SLODWORD(v32);
                ++*(v20 + 24);
                v29 = &v36;
                v21 = sub_10009A6A8(v20 + 32, &v36);
                ++v21[5];
                v22 = *(v3 + 224) + 80 * v36;
                v29 = &v32;
                v23 = sub_10009A6A8(v22 + 56, &v32);
                ++v23[5];
              }
            }

            if (v24)
            {
              (*(*v24 + 32))(v24);
            }

            else
            {
              ++v26;
            }
          }
        }

        if (v33)
        {
          (*(*v33 + 8))();
        }

LABEL_47:
        v7 = v36;
        v6 = *(v3 + 24);
        v5 = *(v3 + 32);
LABEL_48:
        v36 = ++v7;
        v8 = v7;
        if (v7 >= ((v5 - v6) >> 3))
        {
          goto LABEL_49;
        }
      }

      if (v35 >= v34)
      {
        goto LABEL_47;
      }

      goto LABEL_18;
    }

LABEL_6:
    sub_10009A1CC((v3 + 224), (*(v3 + 32) - *(v3 + 24)) >> 3);
    goto LABEL_7;
  }

  if (a2)
  {
    v4 = (result + 216);
    if ((*(result + 216) & 1) == 0)
    {
      sub_10002A7F4(result + 136);
      sub_100099990(v3 + 224, *(v3 + 224));
      *(v3 + 208) = 0;
      *(v3 + 256) = *(v3 + 248);
      *(v3 + 216) = v2;
      goto LABEL_6;
    }
  }

  return result;
}

void *sub_10009A1CC(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_10009A2A8(result, a2);
    }

    sub_100017658();
  }

  return result;
}

void sub_10009A294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10009A508(va);
  _Unwind_Resume(a1);
}

void sub_10009A2A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10009A300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v7 = a2;
    do
    {
      sub_10009A3E8(a1, a4, v7);
      v7 += 80;
      a4 = v14 + 80;
      v14 += 80;
    }

    while (v7 != a3);
    v12 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 32;
      do
      {
        sub_10001A178(v8 + 24, *(v8 + 32));
        sub_10001A178(v8, *(v8 + 8));
        v9 = v8 + 48;
        v8 += 80;
      }

      while (v9 != a3);
    }
  }

  return sub_10009A464(v11);
}

void sub_10009A3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a3 + 32);
  v4 = (a3 + 40);
  v5 = *(a3 + 40);
  *(a2 + 40) = v5;
  v6 = a2 + 40;
  v7 = *(a3 + 48);
  *(a2 + 48) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a3 + 32) = v4;
    *v4 = 0;
    *(a3 + 48) = 0;
  }

  else
  {
    *(a2 + 32) = v6;
  }

  *(a2 + 56) = *(a3 + 56);
  v8 = (a3 + 64);
  v9 = *(a3 + 64);
  *(a2 + 64) = v9;
  v10 = a2 + 64;
  v11 = *(a3 + 72);
  *(a2 + 72) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a3 + 56) = v8;
    *v8 = 0;
    *(a3 + 72) = 0;
  }

  else
  {
    *(a2 + 56) = v10;
  }
}

uint64_t sub_10009A464(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10009A4B0(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_10009A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 24;
    do
    {
      sub_10001A178(v6, *(v6 + 8));
      sub_10001A178(v6 - 24, *(v6 - 16));
      v7 = v6 - 56;
      v6 -= 80;
    }

    while (v7 != a5);
  }
}

uint64_t sub_10009A508(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_10001A178(i - 24, *(i - 16));
    sub_10001A178(i - 48, *(i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10009A574(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_100017658();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10009A2A8(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  sub_10009A3E8(a1, 80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = 80 * v2 + *a1 - v7;
  sub_10009A300(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10009A508(&v13);
  return v12;
}