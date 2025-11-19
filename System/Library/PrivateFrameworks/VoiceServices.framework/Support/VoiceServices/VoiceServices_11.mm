uint64_t sub_100077750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    v13 = 0;
    v14 = 2 * a2;
    v25 = sub_1000C9F54(v14, a2, a3, a4, 0, a6, a7, a8);
    if (a2 < 1)
    {
      goto LABEL_20;
    }

LABEL_6:
    v26 = 0;
    if (a2 < 4 || &v25[-a3] < 0x20)
    {
      goto LABEL_18;
    }

    if (a2 >= 0x10)
    {
      v26 = a2 & 0x7FFFFFF0;
      v28 = (a3 + 16);
      v29 = v25 + 16;
      v30 = v26;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 16;
      }

      while (v30);
      if (v26 == a2)
      {
        goto LABEL_20;
      }

      if ((a2 & 0xC) == 0)
      {
LABEL_18:
        v37 = &v25[2 * v26];
        v38 = (a3 + 2 * v26);
        v39 = a2 - v26;
        do
        {
          v40 = *v38++;
          *v37 = v40;
          v37 += 2;
          --v39;
        }

        while (v39);
        goto LABEL_20;
      }
    }

    else
    {
      v26 = 0;
    }

    v32 = v26;
    v26 = a2 & 0x7FFFFFFC;
    v33 = (a3 + 2 * v32);
    v34 = &v25[2 * v32];
    v35 = v32 - v26;
    do
    {
      v36 = *v33++;
      *v34 = v36;
      v34 += 8;
      v35 += 4;
    }

    while (v35);
    if (v26 == a2)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (a4 < 1)
  {
    return 0;
  }

  v13 = sub_1000C9F54((2 * a4), a2, a3, a4, a5, a6, a7, a8);
  v14 = 2 * a2;
  v25 = sub_1000C9F54(v14, v15, v16, v17, v18, v19, v20, v21);
  if (a2 >= 1)
  {
    goto LABEL_6;
  }

LABEL_20:
  v27 = sub_100077420(a1, a2, v25, a4, v13, v22, v23, v24);
  sub_1000CA03C(v25, v14);
  if (a5)
  {
    if (v27 < 1)
    {
LABEL_35:
      sub_1000CA03C(v13, 2 * a4);
      return v27;
    }

    v41 = 0;
    if (v27 >= 4 && (a5 - v13) >= 0x20)
    {
      if (v27 < 0x10)
      {
        v41 = 0;
        goto LABEL_30;
      }

      v41 = v27 & 0x7FFFFFF0;
      v42 = (v13 + 16);
      v43 = (a5 + 16);
      v44 = v41;
      do
      {
        v45 = *v42;
        *(v43 - 1) = *(v42 - 1);
        *v43 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 16;
      }

      while (v44);
      if (v41 == v27)
      {
        goto LABEL_35;
      }

      if ((v27 & 0xC) != 0)
      {
LABEL_30:
        v46 = v41;
        v41 = v27 & 0x7FFFFFFC;
        v47 = &v13[2 * v46];
        v48 = (a5 + 2 * v46);
        v49 = v46 - v41;
        do
        {
          v50 = *v47;
          v47 += 8;
          *v48++ = v50;
          v49 += 4;
        }

        while (v49);
        if (v41 == v27)
        {
          goto LABEL_35;
        }
      }
    }

    v51 = (a5 + 2 * v41);
    v52 = &v13[2 * v41];
    v53 = v27 - v41;
    do
    {
      v54 = *v52;
      v52 += 2;
      *v51++ = v54;
      --v53;
    }

    while (v53);
    goto LABEL_35;
  }

  return v27;
}

uint64_t sub_10007799C(uint64_t a1)
{
  v2 = sub_1000BD6C8(*(a1 + 8), 4, 0xFFFFFFFF);
  v3 = sub_1000BD6C8(*(a1 + 48), 4, v2);
  v4 = sub_1000BD6C8(*(a1 + 72), 4, v3);
  v5 = sub_1000BD6C8(*(a1 + 96), 4, v4);
  v6 = sub_1000BD6C8(*(a1 + 120), 4, v5);
  v7 = sub_1000BD6C8(*(a1 + 124), 4, v6);
  result = sub_1000BD6C8(*(a1 + 128), 4, v7);
  v9 = result;
  v10 = *(a1 + 8);
  if (v10 >= 1)
  {
    v11 = sub_1000BD7F4(*(a1 + 16), 4, v10, 0xFFFFFFFFLL);
    v12 = sub_1000BD6C8(v11, 4, v9);
    v13 = sub_1000BD7F4(*(a1 + 32), 4, *(a1 + 8), 0xFFFFFFFFLL);
    v14 = sub_1000BD6C8(v13, 4, v12);
    v15 = sub_1000BD7F4(*(a1 + 56), 2, *(a1 + 48), 0xFFFFFFFFLL);
    v16 = sub_1000BD6C8(v15, 4, v14);
    v17 = sub_1000BD7F4(*(a1 + 80), 2, *(a1 + 72), 0xFFFFFFFFLL);
    v18 = sub_1000BD6C8(v17, 4, v16);
    v19 = sub_1000BD7F4(*(a1 + 104), 4, *(a1 + 96) + 3, 0xFFFFFFFFLL);

    return sub_1000BD6C8(v19, 4, v18);
  }

  return result;
}

uint64_t *sub_100077B08(uint64_t a1)
{
  v2 = sub_1000C0034(136);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if (!sub_1000BBD54(a1, (v2 + 8)) || !sub_1000BBD54(a1, v3 + 6) || !sub_1000BBD54(a1, v3 + 9) || !sub_1000BBD54(a1, v3 + 12) || !sub_1000BBD54(a1, v3 + 15) || !sub_1000BBD54(a1, v3 + 124) || !sub_1000BBD54(a1, v3 + 16))
  {
    goto LABEL_30;
  }

  if (*(v3 + 2) < 1)
  {
    return v3;
  }

  v10 = 0;
  if (!sub_1000BBF0C(a1, 4, v3 + 3, &v10))
  {
    goto LABEL_30;
  }

  v4 = v3[3];
  if (v4)
  {
    if (v10 != *(v3 + 2))
    {
      goto LABEL_30;
    }

    v3[2] = v4;
  }

  v10 = 0;
  if (!sub_1000BBF0C(a1, 4, v3 + 5, &v10))
  {
    goto LABEL_30;
  }

  v5 = v3[5];
  if (v5)
  {
    if (v10 != *(v3 + 2))
    {
      goto LABEL_30;
    }

    v3[4] = v5;
  }

  v10 = 0;
  if (!sub_1000BBF0C(a1, 2, v3 + 8, &v10))
  {
    goto LABEL_30;
  }

  v6 = v3[8];
  if (v6)
  {
    if (v10 != *(v3 + 12))
    {
      goto LABEL_30;
    }

    v3[7] = v6;
  }

  v10 = 0;
  if (!sub_1000BBF0C(a1, 2, v3 + 11, &v10))
  {
    goto LABEL_30;
  }

  v7 = v3[11];
  if (!v7)
  {
    goto LABEL_26;
  }

  if (v10 != *(v3 + 18))
  {
LABEL_30:
    sub_1000BFEC4(v3[14]);
    sub_1000BFEC4(v3[11]);
    sub_1000BFEC4(v3[8]);
    sub_1000BFEC4(v3[5]);
    sub_1000BFEC4(v3[3]);
    sub_1000BFEC4(v3);
    return 0;
  }

  v3[10] = v7;
LABEL_26:
  v10 = 0;
  if (!sub_1000BBF0C(a1, 4, v3 + 14, &v10))
  {
    goto LABEL_30;
  }

  v8 = v3[14];
  if (v8)
  {
    if (v10 == *(v3 + 24) + 3)
    {
      v3[13] = v8;
      return v3;
    }

    goto LABEL_30;
  }

  return v3;
}

uint64_t sub_100077D24(uint64_t a1)
{
  *(a1 + 16) = sub_100077D24;
  *(a1 + 24) = sub_100077EEC;
  *(a1 + 8) = sub_100077F3C;
  *(a1 + 32) = sub_10007803C;
  *(a1 + 40) = sub_10007824C;
  *(a1 + 48) = sub_100078254;
  *(a1 + 56) = sub_1000782F0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = sub_100078394;
  *(a1 + 88) = sub_100078418;
  *(a1 + 96) = sub_1000784BC;
  result = sub_1000C0034(8 * *(a1 + 216));
  *(a1 + 224) = result;
  if (result)
  {
    v3 = result;
    if (*(a1 + 216) < 1)
    {
      goto LABEL_12;
    }

    v4 = 0;
    do
    {
      if (*(a1 + 248))
      {
        v5 = sub_1000010F0();
        v3[v4] = v5;
        v6 = *(a1 + 216);
        if (!v5)
        {
          break;
        }
      }

      else
      {
        v7 = sub_1000010F0();
        v3[v4] = v7;
        v6 = *(a1 + 216);
        if (!v7)
        {
          break;
        }
      }

      ++v4;
    }

    while (v4 < v6);
    if (v4 >= v6)
    {
LABEL_12:
      *(a1 + 108) = sub_100073484(*v3);
      if (*(a1 + 216) >= 2)
      {
        v8 = 1;
        do
        {
          if (sub_100073484(v3[v8]) > *(a1 + 108))
          {
            *(a1 + 108) = sub_100073484(v3[v8]);
          }

          ++v8;
        }

        while (v8 < *(a1 + 216));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100077EEC(const void *a1)
{
  result = sub_1000C0034(296);
  if (result)
  {

    return memcpy(result, a1, 0x128uLL);
  }

  return result;
}

uint64_t sub_100077F3C(uint64_t a1)
{
  if (!*(a1 + 248))
  {
    v2 = *(a1 + 264);
    if (v2)
    {
      if (*(a1 + 216) >= 1)
      {
        v3 = 0;
        do
        {
          sub_100078808(*(*(a1 + 264) + 8 * v3++));
        }

        while (v3 < *(a1 + 216));
        v2 = *(a1 + 264);
      }

      sub_1000BFEC4(v2);
    }
  }

  v4 = *(a1 + 280);
  if (v4)
  {
    if (*(a1 + 216) >= 1)
    {
      v5 = 0;
      do
      {
        sub_1000BFEC4(*(*(a1 + 280) + 8 * v5++));
      }

      while (v5 < *(a1 + 216));
      v4 = *(a1 + 280);
    }

    sub_1000BFEC4(v4);
  }

  sub_1000BFEC4(*(a1 + 240));
  v6 = *(a1 + 224);
  if (v6)
  {
    if (*(a1 + 216) >= 1)
    {
      v7 = 0;
      do
      {
        sub_1000728C0(*(*(a1 + 224) + 8 * v7++));
      }

      while (v7 < *(a1 + 216));
      v6 = *(a1 + 224);
    }

    sub_1000BFEC4(v6);
  }

  sub_1000BFEC4(*(a1 + 208));

  return sub_1000737DC(a1);
}

uint64_t sub_10007803C(uint64_t a1, unsigned __int16 *a2, int a3, int a4)
{
  if (a2[a4])
  {
    v5 = *(a1 + 216);
    if (v5 < 1)
    {
      v9 = 0x7FFF;
    }

    else
    {
      v6 = *(a1 + 224);
      v7 = *(a1 + 232);
      if (a3 <= 0)
      {
        v9 = 0x7FFF;
        do
        {
          v22 = *v7;
          v23 = ((*(*v6 + 32))() + v22);
          v25 = v9 - v23;
          v24 = v9 - v23 < 0;
          if (v9 >= v23)
          {
            v9 = v23;
          }

          if (v24)
          {
            v26 = -v25;
          }

          else
          {
            v26 = v25;
          }

          if (v26 < *(a1 + 192))
          {
            v9 -= *(*(a1 + 200) + v26);
          }

          ++v7;
          v6 += 8;
          --v5;
        }

        while (v5);
      }

      else
      {
        v8 = 0;
        v27 = a3;
        v9 = 0x7FFF;
        do
        {
          if (*(a1 + 248))
          {
            LOWORD(v10) = v7[v8];
            v11 = *(*(v6 + 8 * v8) + 32);
          }

          else
          {
            v12 = v27;
            v13 = (*(v6 + 8 * v8) + 176);
            v14 = a2;
            do
            {
              v15 = *v14++;
              *v13++ = sub_100078850(*(*(a1 + 256) + 8 * v8), v15);
              --v12;
            }

            while (v12);
            v10 = v7[v8];
            v11 = *(*(v6 + 8 * v8) + 32);
          }

          v16 = (v11() + v10);
          v18 = v9 - v16;
          v17 = v9 - v16 < 0;
          if (v9 >= v16)
          {
            v9 = v16;
          }

          if (v17)
          {
            v19 = -v18;
          }

          else
          {
            v19 = v18;
          }

          if (v19 < *(a1 + 192))
          {
            v9 -= *(*(a1 + 200) + v19);
          }

          ++v8;
        }

        while (v8 != v5);
      }
    }

    LODWORD(v20) = v9 & ~(v9 >> 31);
  }

  else
  {
    LOWORD(v20) = qword_1001065A8;
    if (qword_1001065A8)
    {
      v20 = *(qword_1001065A8 + 3624);
      if ((v20 & 0x80000000) != 0)
      {
        LOWORD(v20) = 0;
      }

      else if (v20 >> 15)
      {
        LOWORD(v20) = 0x7FFF;
      }
    }
  }

  return v20;
}

uint64_t sub_100078254(uint64_t a1)
{
  if (!*(a1 + 124) || *(a1 + 216) < 1)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  v4 = *(a1 + 224);
  do
  {
    v3 = (*(*(v4 + 8 * v2++) + 48))() | v3;
  }

  while (v2 < *(a1 + 216));
  return v3;
}

uint64_t sub_1000782F0(uint64_t a1, uint64_t a2)
{
  result = sub_1000739F8(a1, a2);
  if (result)
  {
    result = (*(**(a1 + 224) + 56))();
    if (*(a1 + 216) >= 2)
    {
      v4 = result;
      v5 = 1;
      do
      {
        (*(*(*(a1 + 224) + 8 * v5++) + 56))();
      }

      while (v5 < *(a1 + 216));
      return v4;
    }
  }

  return result;
}

uint64_t sub_100078394(uint64_t a1, uint64_t a2)
{
  result = sub_1000739F8(a1, a2);
  if (result)
  {
    result = (*(**(a1 + 224) + 64))();
    if (*(a1 + 216) >= 2)
    {
      v4 = result;
      v5 = 1;
      do
      {
        (*(*(*(a1 + 224) + 8 * v5++) + 64))();
      }

      while (v5 < *(a1 + 216));
      return v4;
    }
  }

  return result;
}

uint64_t sub_100078418(uint64_t a1, uint64_t a2)
{
  if (!sub_100073984(a1, a2))
  {
    return 0;
  }

  if (*(a1 + 216) < 1)
  {
    return 1;
  }

  v3 = 0;
  LODWORD(v4) = 1;
  do
  {
    v4 = (*(*(*(a1 + 224) + 8 * v3++) + 88))() & v4;
  }

  while (v3 < *(a1 + 216));
  return v4;
}

uint64_t sub_1000784BC(uint64_t a1, uint64_t a2)
{
  if (!sub_1000739B8(a1, a2))
  {
    return 0;
  }

  if (*(a1 + 216) < 1)
  {
    return 1;
  }

  v3 = 0;
  LODWORD(v4) = 1;
  do
  {
    v4 = (*(*(*(a1 + 224) + 8 * v3++) + 96))() & v4;
  }

  while (v3 < *(a1 + 216));
  return v4;
}

uint64_t sub_100078560(uint64_t a1)
{
  v2 = sub_1000C0034(296);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if (sub_100073818(v2, a1))
  {
    if (!sub_1000BBD54(a1, (v3 + 192)))
    {
      goto LABEL_34;
    }

    if (!sub_1000BBD54(a1, (v3 + 216)))
    {
      goto LABEL_34;
    }

    if (!sub_1000BBD04(a1, (v3 + 248)))
    {
      goto LABEL_34;
    }

    v16 = 0;
    if (!sub_1000BBF0C(a1, 1, (v3 + 208), &v16))
    {
      goto LABEL_34;
    }

    v4 = *(v3 + 208);
    if (v4)
    {
      if (v16 != *(v3 + 192))
      {
        goto LABEL_34;
      }

      *(v3 + 200) = v4;
    }

    v15 = 0;
    if (sub_1000BBF0C(a1, 1, (v3 + 240), &v15))
    {
      v5 = *(v3 + 240);
      if (v5)
      {
        v6 = v15;
        if (v15 != *(v3 + 216))
        {
          goto LABEL_34;
        }

        *(v3 + 232) = v5;
      }

      else
      {
        v6 = *(v3 + 216);
      }

      if (*(v3 + 248))
      {
        v7 = sub_1000BFF20(8 * v6);
        *(v3 + 224) = v7;
        if (v7)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v10 = sub_1000BFF20(8 * v6);
        *(v3 + 264) = v10;
        if (v10)
        {
          v11 = *(v3 + 216);
          if (v11 < 1)
          {
            LODWORD(i) = 0;
          }

          else
          {
            for (i = 0; i < v11; ++i)
            {
              *(*(v3 + 264) + 8 * i) = sub_1000788B0(a1);
              v10 = *(v3 + 264);
              v11 = *(v3 + 216);
              if (!*&v10[2 * i])
              {
                break;
              }
            }
          }

          if (i >= v11)
          {
            *(v3 + 256) = v10;
            v14 = sub_1000BFF20(8 * v11);
            *(v3 + 224) = v14;
            if (v14)
            {
LABEL_17:
              v8 = *(v3 + 216);
              if (v8 < 1)
              {
                LODWORD(j) = 0;
              }

              else
              {
                for (j = 0; j < v8; ++j)
                {
                  *(*(v3 + 224) + 8 * j) = sub_10007355C(a1);
                  v8 = *(v3 + 216);
                  if (!*(*(v3 + 224) + 8 * j))
                  {
                    break;
                  }
                }
              }

              if (j >= v8)
              {
                *(v3 + 16) = sub_100077D24;
                *(v3 + 24) = sub_100077EEC;
                *(v3 + 8) = sub_100077F3C;
                *(v3 + 32) = sub_10007803C;
                *(v3 + 40) = sub_10007824C;
                *(v3 + 48) = sub_100078254;
                *(v3 + 56) = sub_1000782F0;
                *(v3 + 72) = 0;
                *(v3 + 80) = 0;
                *(v3 + 64) = sub_100078394;
                *(v3 + 88) = sub_100078418;
                *(v3 + 96) = sub_1000784BC;
                return v3;
              }
            }
          }
        }
      }
    }

LABEL_34:
    sub_100077F3C(v3);
  }

  sub_1000BFEC4(v3);
  return 0;
}

uint64_t sub_100078808(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 24));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10007885C(uint64_t a1)
{
  v2 = sub_1000BD6C8(*(a1 + 8), 4, 0xFFFFFFFF);
  v3 = *(a1 + 16);
  v4 = *(a1 + 8) + 1;

  return sub_1000BD7F4(v3, 2, v4, v2);
}

uint64_t sub_1000788B0(uint64_t a1)
{
  v2 = sub_1000C0034(32);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if (sub_1000BBD54(a1, (v2 + 8)))
  {
    v6 = 0;
    if (sub_1000BBF0C(a1, 2, (v3 + 24), &v6))
    {
      v4 = *(v3 + 24);
      if (!v4)
      {
        return v3;
      }

      if (v6 == *(v3 + 8) + 1)
      {
        *(v3 + 16) = v4;
        return v3;
      }
    }
  }

  sub_1000BFEC4(*(v3 + 24));
  sub_1000BFEC4(v3);
  return 0;
}

uint64_t sub_100078960(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 88));
    sub_1000BFEC4(*(v1 + 72));
    sub_1000BFEC4(*(v1 + 56));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000789B8(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 100);
  if (v3 >= 1)
  {
    v5 = (a1 + 16);
    v6 = *(a1 + 8);
    v7 = a2;
    if (v4 == 1)
    {
      while (1)
      {
        v9 = *v7++;
        v8 = v9;
        v10 = *v5++;
        if (v8 > v10 || v8 == 0)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      while (1)
      {
        v13 = *v7++;
        v12 = v13;
        v14 = *v5++;
        if (v12 > v14)
        {
          break;
        }

        if (!--v6)
        {
LABEL_11:
          if (v3 != 1)
          {
            goto LABEL_13;
          }

          v15 = (*(a1 + 80) - v4 + *a2);
          goto LABEL_32;
        }
      }
    }

    return 0;
  }

LABEL_13:
  if (*(a1 + 104))
  {
    v16 = a2[1] - v4;
    if (v3 >= 3)
    {
      v17 = a2 + 2;
      v18 = (a1 + 24);
      v19 = v3 - 2;
      do
      {
        v20 = *v18++;
        v21 = v16 * (v20 - v4 + 1);
        v22 = *v17++;
        v16 = v21 - v4 + v22;
        --v19;
      }

      while (v19);
    }

    v15 = (*(a1 + 80) + *(*(a1 + 48) + 4 * *a2) + v16);
  }

  else
  {
    v23 = (*(a1 + 48) + 4 * *a2);
    v25 = *v23;
    v24 = v23[1];
    v26 = v24 - v25;
    if (v24 == v25)
    {
      return 0;
    }

    if (v3 >= 2)
    {
      v27 = a2 + 1;
      v28 = (v3 - 1);
      do
      {
        v29 = (v26 - 1) / 2;
        v30 = v29 + v25;
        v31 = (*(a1 + 64) + 2 * (v29 + v25) * v28);
        v32 = v27;
        v33 = v28;
        while (1)
        {
          v35 = *v32++;
          v34 = v35;
          v36 = *v31++;
          v37 = v34 > v36;
          if (v34 < v36)
          {
            break;
          }

          if (v37)
          {
            v29 = v26 + ~v29;
            v25 = v30 + 1;
            break;
          }

          if (!--v33)
          {
            goto LABEL_31;
          }
        }

        v38 = 0;
        v26 = v29;
      }

      while (v29);
      return v38;
    }

    v30 = v25 + (v26 - 1) / 2;
LABEL_31:
    v15 = (*(a1 + 80) + v30);
  }

LABEL_32:
  *a3 = *(a1 + 96) + *v15;
  return 1;
}

uint64_t sub_100078B5C(uint64_t a1)
{
  v2 = sub_1000C0034(112);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if (!sub_1000BBD54(a1, (v2 + 8)))
  {
    goto LABEL_20;
  }

  if (!sub_1000BBD54(a1, (v3 + 12)))
  {
    goto LABEL_20;
  }

  if (!sub_1000BBD54(a1, (v3 + 96)))
  {
    goto LABEL_20;
  }

  if (!sub_1000BBD54(a1, (v3 + 100)))
  {
    goto LABEL_20;
  }

  if (!sub_1000BBD04(a1, (v3 + 104)))
  {
    goto LABEL_20;
  }

  if (!sub_1000BBE54(a1, (v3 + 16), 8, 4))
  {
    goto LABEL_20;
  }

  v10 = 0;
  if (!sub_1000BBF0C(a1, 4, (v3 + 56), &v10))
  {
    goto LABEL_20;
  }

  v4 = *(v3 + 56);
  if (v4)
  {
    if (v10 != *(v3 + 16) + 2)
    {
      goto LABEL_20;
    }

    *(v3 + 48) = v4;
  }

  v9 = 0;
  if (!sub_1000BBF0C(a1, 2, (v3 + 72), &v9))
  {
    goto LABEL_20;
  }

  v5 = *(v3 + 72);
  if (!v5)
  {
    goto LABEL_16;
  }

  if (v9 != (*(v3 + 8) - 1) * *(v3 + 12))
  {
LABEL_20:
    sub_1000BFEC4(*(v3 + 88));
    sub_1000BFEC4(*(v3 + 72));
    sub_1000BFEC4(*(v3 + 56));
    sub_1000BFEC4(v3);
    return 0;
  }

  *(v3 + 64) = v5;
LABEL_16:
  v8 = 0;
  if (!sub_1000BBF0C(a1, 1, (v3 + 88), &v8))
  {
    goto LABEL_20;
  }

  v6 = *(v3 + 88);
  if (v6)
  {
    if (v8 == *(v3 + 12))
    {
      *(v3 + 80) = v6;
      return v3;
    }

    goto LABEL_20;
  }

  return v3;
}

uint64_t sub_100078CEC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 48));
    sub_1000BFEC4(*(v1 + 24));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_100078D3C(uint64_t result, unsigned int a2, void *a3, _DWORD *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  *a4 = 0;
  v4 = (*(result + 40) + 2 * *(*(result + 16) + 4 * a2));
  v5 = *v4;
  if (v5 != 65534)
  {
    if (v5 == 0xFFFF)
    {
      return result;
    }

    v6 = 1;
    do
    {
      *a4 = v6;
      v7 = v4[v6++];
    }

    while (v7 < 0xFFFE);
  }

  if (a3)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_100078D9C(uint64_t a1)
{
  v2 = sub_1000BD6C8(*(a1 + 8), 4, 0xFFFFFFFF);
  v3 = sub_1000BD6C8(*(a1 + 32), 4, v2);
  v4 = sub_1000BD6C8(*(a1 + 60), 4, v3);
  v5 = sub_1000BD7F4(*(a1 + 16), 4, *(a1 + 8), v4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);

  return sub_1000BD7F4(v6, 2, v7, v5);
}

uint64_t sub_100078E20(uint64_t a1)
{
  v2 = sub_1000C0034(64);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if (!sub_1000BBD54(a1, (v2 + 8)))
  {
    goto LABEL_14;
  }

  if (!sub_1000BBD54(a1, (v3 + 32)))
  {
    goto LABEL_14;
  }

  if (!sub_1000BBD54(a1, (v3 + 56)))
  {
    goto LABEL_14;
  }

  if (!sub_1000BBD54(a1, (v3 + 60)))
  {
    goto LABEL_14;
  }

  v8 = 0;
  if (!sub_1000BBF0C(a1, 4, (v3 + 24), &v8))
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    if (v8 != *(v3 + 8))
    {
LABEL_14:
      sub_1000BFEC4(*(v3 + 48));
      sub_1000BFEC4(*(v3 + 24));
      sub_1000BFEC4(v3);
      return 0;
    }

    *(v3 + 16) = v4;
  }

  v7 = 0;
  if (!sub_1000BBF0C(a1, 2, (v3 + 48), &v7))
  {
    goto LABEL_14;
  }

  v5 = *(v3 + 48);
  if (v5)
  {
    if (v7 == *(v3 + 32))
    {
      *(v3 + 40) = v5;
      return v3;
    }

    goto LABEL_14;
  }

  return v3;
}

uint64_t sub_100078F3C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 72));
    sub_1000BFEC4(v1[7]);
    sub_1000BFEC4(v1[5]);
    sub_1000BFEC4(v1[3]);

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_100078F9C(uint64_t a1)
{
  v2 = sub_1000BD6C8(*(a1 + 8), 4, 0xFFFFFFFF);
  v3 = sub_1000BD6C8(*(a1 + 64), 4, v2);
  LODWORD(v4) = *(a1 + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 16) + 8 * v5 + 8);
      v7 = sub_1000C7854(v6);
      v3 = sub_1000BD7F4(v6, 1, v7 + 1, v3);
      v4 = *(a1 + 8);
      ++v5;
    }

    while (v5 < v4);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v3 = sub_1000BD7F4(v8, 4, v4 + 1, v3);
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    return v3;
  }

  v10 = *(a1 + 8) + 1;

  return sub_1000BD7F4(v9, 4, v10, v3);
}

uint64_t sub_10007908C(uint64_t a1)
{
  v2 = sub_1000C0034(80);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if (!sub_1000BBD54(a1, (v2 + 8)))
  {
    goto LABEL_21;
  }

  if (!sub_1000BBD04(a1, (v3 + 64)))
  {
    goto LABEL_21;
  }

  v13 = 0;
  if (!sub_1000BBF0C(a1, 4, (v3 + 40), &v13))
  {
    goto LABEL_21;
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    if (v13 != *(v3 + 8) + 1)
    {
      goto LABEL_21;
    }

    *(v3 + 32) = v4;
  }

  v12 = 0;
  if (!sub_1000BBF0C(a1, 4, (v3 + 56), &v12))
  {
    goto LABEL_21;
  }

  v5 = *(v3 + 56);
  if (!v5)
  {
    goto LABEL_12;
  }

  if (v12 != *(v3 + 8) + 1)
  {
LABEL_21:
    sub_1000BFEC4(*(v3 + 72));
    sub_1000BFEC4(*(v3 + 56));
    sub_1000BFEC4(*(v3 + 40));
    sub_1000BFEC4(*(v3 + 24));
    sub_1000BFEC4(v3);
    return 0;
  }

  *(v3 + 48) = v5;
LABEL_12:
  if (!sub_1000BBD54(a1, (v3 + 68)))
  {
    goto LABEL_21;
  }

  v11 = 0;
  if (!sub_1000BBF0C(a1, 1, (v3 + 72), &v11) || *(v3 + 72) && v11 != *(v3 + 68))
  {
    goto LABEL_21;
  }

  v6 = sub_1000C0034(8 * *(v3 + 8) + 8);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  *v6 = 0;
  if (*(v3 + 8) >= 1)
  {
    v8 = 0;
    v9 = *(v3 + 72);
    do
    {
      v7[v8 + 1] = v9;
      v9 += (sub_1000C7854(v9) + 1);
      ++v8;
    }

    while (v8 < *(v3 + 8));
  }

  *(v3 + 16) = v7;
  *(v3 + 24) = v7;
  return v3;
}

uint64_t sub_100079240(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 80));
    sub_1000BFEC4(v1[7]);
    sub_1000BFEC4(v1[5]);
    sub_1000BFEC4(v1[3]);

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000792A8(uint64_t a1, _WORD *a2)
{
  v4 = sub_1000C7854("_UNKNOWN_") + 1;
  v5 = 2 * v4;
  v13 = sub_1000C9F54(v5, v6, v7, v8, v9, v10, v11, v12);
  sub_1000CD478("_UNKNOWN_", v4, v13);
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = 1;
    while (1)
    {
      while (1)
      {
        v16 = (v14 - 1) / 2;
        v17 = v16 + v15;
        v18 = sub_1000CBE9C(a2, *(*(a1 + 16) + 8 * (v16 + v15)));
        if ((v18 & 0x80000000) == 0)
        {
          break;
        }

        v14 = (v14 - 1) / 2;
        if (!v16)
        {
          goto LABEL_7;
        }
      }

      if (!v18)
      {
        break;
      }

      v14 += ~v16;
      v15 = v17 + 1;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    sub_1000CA03C(v13, v5);
    if (!*(a1 + 64))
    {
      LODWORD(v17) = *(*(a1 + 32) + 4 * v17);
    }
  }

  else
  {
LABEL_7:
    v19 = sub_1000CBE9C(a2, v13);
    sub_1000CA03C(v13, v5);
    if (v19)
    {
      LOWORD(v17) = -1;
    }

    else
    {
      LOWORD(v17) = 0;
    }
  }

  return v17;
}

const __int16 *sub_1000793B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return L"_UNKNOWN_";
  }

  if (*(a1 + 8) < a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (*(a1 + 64))
  {
    return *(v3 + 8 * a2);
  }

  else
  {
    return *(v3 + 8 * *(*(a1 + 48) + 4 * a2));
  }
}

uint64_t sub_1000793FC(uint64_t a1)
{
  v2 = sub_1000BD6C8(*(a1 + 8), 4, 0xFFFFFFFF);
  v3 = sub_1000BD6C8(*(a1 + 64), 4, v2);
  LODWORD(v4) = *(a1 + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 16) + 8 * v5 + 8);
      v7 = sub_1000CB75C(v6);
      v3 = sub_1000BD7F4(v6, 2, v7 + 1, v3);
      v4 = *(a1 + 8);
      ++v5;
    }

    while (v5 < v4);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v3 = sub_1000BD7F4(v8, 4, v4 + 1, v3);
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    return v3;
  }

  v10 = *(a1 + 8) + 1;

  return sub_1000BD7F4(v9, 4, v10, v3);
}

uint64_t sub_1000794EC(uint64_t a1)
{
  v2 = sub_1000C0034(88);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if (!sub_1000BBD54(a1, (v2 + 8)))
  {
    goto LABEL_22;
  }

  if (!sub_1000BBD04(a1, (v3 + 64)))
  {
    goto LABEL_22;
  }

  v14 = 0;
  if (!sub_1000BBF0C(a1, 4, (v3 + 40), &v14))
  {
    goto LABEL_22;
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    if (v14 != *(v3 + 8) + 1)
    {
      goto LABEL_22;
    }

    *(v3 + 32) = v4;
  }

  v13 = 0;
  if (!sub_1000BBF0C(a1, 4, (v3 + 56), &v13))
  {
    goto LABEL_22;
  }

  v5 = *(v3 + 56);
  if (v5)
  {
    if (v13 != *(v3 + 8) + 1)
    {
      goto LABEL_22;
    }

    *(v3 + 48) = v5;
  }

  if (!sub_1000BBD54(a1, (v3 + 68)))
  {
    goto LABEL_22;
  }

  v12 = 0;
  if (!sub_1000BBF0C(a1, 2, (v3 + 80), &v12))
  {
    goto LABEL_22;
  }

  v6 = *(v3 + 80);
  if (v6)
  {
    if (v12 == *(v3 + 68))
    {
      *(v3 + 72) = v6;
      goto LABEL_17;
    }

LABEL_22:
    sub_1000BFEC4(*(v3 + 80));
    sub_1000BFEC4(*(v3 + 56));
    sub_1000BFEC4(*(v3 + 40));
    sub_1000BFEC4(*(v3 + 24));
    sub_1000BFEC4(v3);
    return 0;
  }

LABEL_17:
  v7 = sub_1000C0034(8 * *(v3 + 8) + 8);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  *v7 = 0;
  if (*(v3 + 8) >= 1)
  {
    v9 = 0;
    v10 = *(v3 + 72);
    do
    {
      v8[v9 + 1] = v10;
      v10 += 2 * sub_1000CB75C(v10) + 2;
      ++v9;
    }

    while (v9 < *(v3 + 8));
  }

  *(v3 + 16) = v8;
  *(v3 + 24) = v8;
  return v3;
}

uint64_t sub_1000796A4(uint64_t a1)
{
  *(a1 + 16) = sub_1000796A4;
  *(a1 + 24) = sub_1000797C0;
  *(a1 + 8) = sub_100079824;
  *(a1 + 32) = sub_100079868;
  *(a1 + 40) = sub_100079940;
  *(a1 + 48) = sub_100079948;
  *(a1 + 56) = sub_100079958;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = sub_1000799B8;
  *(a1 + 88) = sub_100079A00;
  *(a1 + 96) = sub_100079A48;
  v1 = *(a1 + 160);
  if (v1 < 1)
  {
    return 1;
  }

  result = sub_1000BFF20(2 * v1);
  *(a1 + 216) = result;
  if (result)
  {
    if (*(a1 + 160) >= 1)
    {
      v4 = 0;
      do
      {
        *(*(a1 + 216) + 2 * v4++) = 0x7FFF;
      }

      while (v4 < *(a1 + 160));
    }

    return 1;
  }

  return result;
}

__n128 sub_1000797C0(uint64_t a1)
{
  v2 = sub_1000C0034(224);
  if (v2)
  {
    v4 = *(a1 + 16);
    *v2 = *a1;
    *(v2 + 16) = v4;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 80);
    *(v2 + 64) = *(a1 + 64);
    *(v2 + 80) = v7;
    *(v2 + 32) = v5;
    *(v2 + 48) = v6;
    v8 = *(a1 + 96);
    v9 = *(a1 + 112);
    v10 = *(a1 + 144);
    *(v2 + 128) = *(a1 + 128);
    *(v2 + 144) = v10;
    *(v2 + 96) = v8;
    *(v2 + 112) = v9;
    result = *(a1 + 160);
    v11 = *(a1 + 176);
    v12 = *(a1 + 208);
    *(v2 + 192) = *(a1 + 192);
    *(v2 + 208) = v12;
    *(v2 + 160) = result;
    *(v2 + 176) = v11;
  }

  return result;
}

uint64_t sub_100079824(uint64_t a1)
{
  sub_1000BFEC4(*(a1 + 216));
  sub_100078960(*(a1 + 200));

  return sub_1000737DC(a1);
}

uint64_t sub_100079868(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = 0;
  v4 = (a2 + 2 * a4);
  if (!*v4)
  {
    LOWORD(v7) = qword_1001065A8;
    if (qword_1001065A8)
    {
      v7 = *(qword_1001065A8 + 3624);
      if ((v7 & 0x80000000) != 0)
      {
        return 0;
      }

      if (v7 >> 15)
      {
        LOWORD(v7) = 0x7FFF;
      }
    }

    return v7;
  }

  if (sub_1000789B8(*(a1 + 192), (a2 + 2 * a4), &v11))
  {
    v6 = v11;
  }

  else
  {
    v6 = *(*(a1 + 216) + 2 * (~*(a1 + 152) + *v4));
  }

  if (v6 >= 0x7FFF)
  {
    v9 = 0x7FFF;
  }

  else
  {
    v9 = v6;
  }

  if (v6 >= 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100079958(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  result = sub_1000739F8(a1, a2);
  if (result)
  {
    if (a3 >= 0x7FFF)
    {
      LOWORD(a3) = *(a1 + 208);
    }

    *(*(a1 + 216) + 2 * (~*(a1 + 152) + v4)) = a3;
    return 1;
  }

  return result;
}

BOOL sub_1000799B8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = sub_1000739F8(a1, a2);
  if (result)
  {
    *(*(a1 + 216) + 2 * (~*(a1 + 152) + v2)) = 0x7FFF;
    return 1;
  }

  return result;
}

BOOL sub_100079A00(uint64_t a1, uint64_t a2)
{
  result = sub_100073984(a1, a2);
  if (result)
  {
    return sub_1000BBE54(a2, *(a1 + 216), *(a1 + 160), 2);
  }

  return result;
}

BOOL sub_100079A48(uint64_t a1, uint64_t a2)
{
  result = sub_1000739B8(a1, a2);
  if (result)
  {
    v5 = *(a1 + 216);
    if (v5)
    {
      v6 = *(a1 + 160);
    }

    else
    {
      v6 = 0;
    }

    return sub_1000BCC04(a2, v5, v6, 2) != 0;
  }

  return result;
}

uint64_t sub_100079A9C(uint64_t a1)
{
  v2 = sub_1000C0034(224);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if (sub_100073818(v2, a1))
  {
    if (!sub_1000BBDFC(a1, (v3 + 208)) || (v4 = sub_100078B5C(a1), (*(v3 + 200) = v4) == 0))
    {
LABEL_11:
      sub_1000BFEC4(*(v3 + 216));
      sub_100078960(*(v3 + 200));
      sub_1000737DC(v3);
      goto LABEL_12;
    }

    *(v3 + 192) = v4;
    *(v3 + 16) = sub_1000796A4;
    *(v3 + 24) = sub_1000797C0;
    *(v3 + 8) = sub_100079824;
    *(v3 + 32) = sub_100079868;
    *(v3 + 40) = sub_100079940;
    *(v3 + 48) = sub_100079948;
    *(v3 + 56) = sub_100079958;
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 64) = sub_1000799B8;
    *(v3 + 88) = sub_100079A00;
    *(v3 + 96) = sub_100079A48;
    v5 = *(v3 + 160);
    if (v5 >= 1)
    {
      v6 = sub_1000BFF20(2 * v5);
      *(v3 + 216) = v6;
      if (v6)
      {
        if (*(v3 + 160) >= 1)
        {
          v7 = 0;
          do
          {
            *(*(v3 + 216) + 2 * v7++) = 0x7FFF;
          }

          while (v7 < *(v3 + 160));
        }

        return v3;
      }

      goto LABEL_11;
    }

    return v3;
  }

LABEL_12:
  sub_1000BFEC4(v3);
  return 0;
}

_DWORD *sub_100079C24(int a1)
{
  result = sub_1000C0034(12);
  if (result)
  {
    *result = a1;
    result[1] = 4;
    v3 = qword_1001065A8;
    if (qword_1001065A8)
    {
      if (*(qword_1001065A8 + 2864))
      {
        result[1] = 2;
        v3 = qword_1001065A8;
        if (!qword_1001065A8)
        {
          return result;
        }

        if (*(qword_1001065A8 + 2860))
        {
          result[2] = 1;
        }
      }

      else if (*(qword_1001065A8 + 2884))
      {
        result[1] = 1;
        v3 = qword_1001065A8;
        if (!qword_1001065A8)
        {
          return result;
        }
      }

      if (!*(v3 + 2888) || (result[1] = 0, (v3 = qword_1001065A8) != 0))
      {
        if (*(v3 + 2868))
        {
          result[1] = 3;
        }
      }
    }
  }

  return result;
}

double sub_100079CD0(_DWORD *a1, const __int16 *a2, unint64_t a3, int8x16_t a4)
{
  v4 = a3;
  v5 = a2;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 / 2;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
LABEL_24:
        if (v7 >= 2)
        {
          v35 = 0;
          do
          {
            v4->i32[v35++] = sub_10007A270(*v5 * *v5 + v5[1] * v5[1]);
            v5 += 2;
          }

          while (v35 < *a1 / 2);
        }

        return *a4.i64;
      }

LABEL_16:
      if (v7 < -1)
      {
        return *a4.i64;
      }

      v31 = (v9 + 1);
      if (v31 < 4 || ((v32 = 4 * (*a1 / 2) + 4, a2 + v32 > a3) ? (v33 = a3 + v32 > a2) : (v33 = 0), v33))
      {
        LODWORD(v50) = 0;
        v51 = a3;
        v52 = a2;
        goto LABEL_55;
      }

      if (v31 >= 0x10)
      {
        v34 = v31 & 0xFFFFFFF0;
        v85 = a2 + 16;
        v86 = (a3 + 32);
        v87 = v34;
        do
        {
          v88 = v85 - 16;
          *a4.i8 = vld2q_s16(v88);
          v97 = vld2q_s16(v85);
          v86[-2] = vmlal_s16(vmull_s16(*v89.i8, *v89.i8), *a4.i8, *a4.i8);
          v86[-1] = vmlal_high_s16(vmull_high_s16(v89, v89), a4, a4);
          *v86 = vmlal_s16(vmull_s16(*v97.val[1].i8, *v97.val[1].i8), *v97.val[0].i8, *v97.val[0].i8);
          v86[1] = vmlal_high_s16(vmull_high_s16(v97.val[1], v97.val[1]), v97.val[0], v97.val[0]);
          v86 += 4;
          v85 += 32;
          v87 -= 16;
        }

        while (v87);
        if (v34 == v31)
        {
          return *a4.i64;
        }

        if (((v9 + 1) & 0xC) == 0)
        {
          v52 = &a2[2 * v34];
          v51 = (a3 + 4 * v34);
          LODWORD(v50) = v31 & 0xFFFFFFF0;
          goto LABEL_55;
        }
      }

      else
      {
        v34 = 0;
      }

      v50 = v31 & 0xFFFFFFFC;
      v51 = (a3 + 4 * v50);
      v52 = &a2[2 * v50];
      v90 = &a2[2 * v34];
      v91 = (a3 + 4 * v34);
      v92 = v34 - v50;
      do
      {
        a4 = vld2_s16(v90);
        v90 += 8;
        *v91++ = vmlal_s16(vmull_s16(v93, v93), *a4.i8, *a4.i8);
        v92 += 4;
      }

      while (v92);
      if (v50 == v31)
      {
        return *a4.i64;
      }

LABEL_55:
      v53 = v9 - v50 + 1;
      do
      {
        v54 = *v52 * *v52 + v52[1] * v52[1];
        v52 += 2;
        *v51++ = v54;
        --v53;
      }

      while (v53);
      return *a4.i64;
    }

    if (v7 < 2)
    {
      return *a4.i64;
    }

    v36 = a1 + 2;
    v37 = (v9 - 1);
    if (v37 > 6)
    {
      LODWORD(v38) = 0;
      v63 = 4 * v37 + 4;
      v64 = a3 + v63;
      v65 = a2 + v63;
      v67 = (a1 + 3) > a3 && v36 < v64;
      v68 = v64 > a2 && v65 > a3;
      if (!v68 && !v67)
      {
        v69 = v37 + 1;
        v38 = (v37 + 1) & 0x1FFFFFFF8;
        v39 = (a3 + 4 * v38);
        v40 = &a2[2 * v38];
        a4.i32[0] = *v36;
        v70 = vmovn_s32(vceqzq_s32(a4));
        *a4.i8 = vdup_lane_s8(vuzp1_s8(v70, v70), 0);
        v71 = v38;
        do
        {
          v96 = vld2q_s16(v5);
          v5 += 16;
          v72 = vabsq_s16(v96.val[0]);
          v96.val[0] = vabsq_s16(v96.val[1]);
          v96.val[1] = vmaxq_u16(v96.val[0], v72);
          v73 = vmovl_u16(*v96.val[1].i8);
          v74 = vmovl_high_u16(v96.val[1]);
          v96.val[0] = vminq_u16(v96.val[0], v72);
          v75 = vmovl_high_u16(v96.val[0]);
          v96.val[0] = vmovl_u16(*v96.val[0].i8);
          v76 = vcgtq_u32(vshrq_n_u32(v73, 2uLL), v96.val[0]);
          v77 = vcgtq_u32(vshrq_n_u32(v74, 2uLL), v75);
          v78 = vsraq_n_u32(v73, v96.val[0], 1uLL);
          v96.val[1] = vaddw_high_u16(vshrq_n_u32(v75, 1uLL), v96.val[1]);
          v79 = vabdq_u32(vshrq_n_u32(v73, 1uLL), v96.val[0]);
          v80 = vabdq_u32(vshrq_n_u32(v74, 1uLL), v75);
          v96.val[1] = vbslq_s8(v77, v74, vsubq_s32(v96.val[1], vsraq_n_u32(vshrq_n_u32(v96.val[1], 5uLL), v96.val[1], 4uLL)));
          v81 = vbslq_s8(v76, v73, vsubq_s32(v78, vsraq_n_u32(vshrq_n_u32(v78, 5uLL), v78, 4uLL)));
          v96.val[0] = vbslq_s8(v76, v96.val[0], vsubq_s32(v79, vsraq_n_u32(vshrq_n_u32(v79, 5uLL), v79, 4uLL)));
          v82 = vbslq_s8(v77, v75, vsubq_s32(v80, vsraq_n_u32(vshrq_n_u32(v80, 5uLL), v80, 4uLL)));
          *v74.i8 = vorr_s8(*a4.i8, vmovn_s16(vuzp1q_s16(vcgtq_s32(vshrq_n_s32(v81, 4uLL), v96.val[0]), vcgtq_s32(vshrq_n_s32(v96.val[1], 4uLL), v82))));
          v83 = vsraq_n_s32(v96.val[1], v82, 2uLL);
          v84 = vsraq_n_s32(v81, v96.val[0], 2uLL);
          *v4 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v74.i8, *a4.i8)), 0x1FuLL)), v81, vsubq_s32(v84, vshrq_n_s32(v84, 5uLL)));
          v4[1] = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v74.i8, *a4.i8)), 0x1FuLL)), v96.val[1], vsubq_s32(v83, vshrq_n_s32(v83, 5uLL)));
          v4 += 2;
          v71 -= 8;
        }

        while (v71);
        if (v69 == v38)
        {
          return *a4.i64;
        }

        goto LABEL_32;
      }
    }

    else
    {
      LODWORD(v38) = 0;
    }

    v39 = a3;
    v40 = a2;
LABEL_32:
    v41 = v9 - v38;
    do
    {
      v44 = *v40;
      v45 = v40[1];
      if (v44 >= 0)
      {
        v46 = *v40;
      }

      else
      {
        v46 = -v44;
      }

      if (v45 < 0)
      {
        v45 = -v45;
      }

      if (v45 <= v46)
      {
        v43 = v46;
      }

      else
      {
        v43 = v45;
      }

      if (v45 >= v46)
      {
        v45 = v46;
      }

      if (v45 >= v43 >> 2)
      {
        v47 = v43 + (v45 >> 1);
        v48 = v45 - (v43 >> 1);
        if (v48 >= 0)
        {
          v49 = v48;
        }

        else
        {
          v49 = -v48;
        }

        v43 = v47 - ((v47 >> 5) + (v47 >> 4));
        v45 = v49 - ((v49 >> 5) + (v49 >> 4));
      }

      if (v45 >= v43 >> 4 && *v36 != 0)
      {
        v43 = v43 + (v45 >> 2) - ((v43 + (v45 >> 2)) >> 5);
      }

      *v39++ = v43;
      v40 += 2;
      --v41;
    }

    while (v41);
    return *a4.i64;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  if (v8 != 1)
  {
    goto LABEL_24;
  }

  if (v7 < 2)
  {
    return *a4.i64;
  }

  v10 = (v9 - 1);
  if (v10 <= 6 || ((v11 = 4 * v10 + 4, a2 + v11 > a3) ? (v12 = a3 + v11 > a2) : (v12 = 0), v12))
  {
    LODWORD(v14) = 0;
    v15 = a3;
    v16 = a2;
  }

  else
  {
    v13 = v10 + 1;
    v14 = (v10 + 1) & 0x1FFFFFFF8;
    v15 = (a3 + 4 * v14);
    v16 = &a2[2 * v14];
    v17 = v14;
    do
    {
      v95 = vld2q_s16(v5);
      v5 += 16;
      v18 = vabsq_s16(v95.val[0]);
      v19 = vmovl_high_u16(v18);
      v20 = vmovl_u16(*v18.i8);
      v95.val[0] = vabsq_s16(v95.val[1]);
      v95.val[1] = vmovl_u16(*v95.val[0].i8);
      v21 = vmovl_high_u16(v95.val[0]);
      v22 = vcgtq_u16(v18, v95.val[0]);
      v23 = vmovl_high_s16(v22);
      v24 = vmovl_s16(*v22.i8);
      v25 = vcgeq_u16(v95.val[0], v18);
      v26 = vsubq_s32(v20, vshrq_n_u32(v95.val[1], 2uLL));
      v27 = vsubq_s32(v19, vshrq_n_u32(v21, 2uLL));
      v28 = vuzp1q_s16(vclezq_s32(v26), vclezq_s32(v27));
      *v22.i8 = vmovn_s16(vorrq_s8(v22, v28));
      v95.val[0] = vaddw_high_u16(vshrq_n_u32(v27, 1uLL), v95.val[0]);
      v29 = vsubq_s32(v95.val[1], vshrq_n_u32(v20, 2uLL));
      v30 = vsubq_s32(v21, vshrq_n_u32(v19, 2uLL));
      *v25.i8 = vmovn_s16(vandq_s8(v25, v28));
      v95.val[0] = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v22.i8, *v95.val[0].i8)), 0x1FuLL)), vaddw_high_u16(vbicq_s8(vshrq_n_u32(v30, 1uLL), vandq_s8(v23, vclezq_s32(v30))), v18), v95.val[0]);
      v95.val[1] = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v25.i8, *v95.val[0].i8)), 0x1FuLL)), v95.val[1], vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v22.i8, *v95.val[0].i8)), 0x1FuLL)), vaddw_u16(vbicq_s8(vshrq_n_u32(v29, 1uLL), vandq_s8(v24, vclezq_s32(v29))), *v18.i8), vsraq_n_u32(v95.val[1], v26, 1uLL)));
      a4 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v25.i8, *v95.val[0].i8)), 0x1FuLL)), v21, v95.val[0]);
      *v4 = v95.val[1];
      v4[1] = a4;
      v4 += 2;
      v17 -= 8;
    }

    while (v17);
    if (v13 == v14)
    {
      return *a4.i64;
    }
  }

  v55 = v9 - v14;
  do
  {
    v56 = *v16;
    v57 = v16[1];
    v16 += 2;
    *a4.i8 = vabs_s32(__PAIR64__(v57, v56));
    v58 = a4.i32[0] - (a4.i32[1] >> 2);
    v12 = v58 < 1;
    v59 = a4.i32[1] + (v58 >> 1);
    if (v12)
    {
      v59 = a4.u32[1];
    }

    v60 = a4.i32[1] - (a4.i32[0] >> 2);
    v12 = v60 < 1;
    v61 = a4.i32[0] + (v60 >> 1);
    if (v12)
    {
      v61 = a4.i32[0];
    }

    if (a4.i32[0] > a4.i32[1])
    {
      v62 = v61;
    }

    else
    {
      v62 = v59;
    }

    *v15++ = v62;
    --v55;
  }

  while (v55);
  return *a4.i64;
}

uint64_t sub_10007A270(unsigned int a1)
{
  v1 = 0x7FFF;
  if (!(a1 >> 30))
  {
    v2 = (((a1 & 0xF0000000) != 0) << 14) | 0x2000;
    if (v2 * v2 <= a1)
    {
      v3 = (((a1 & 0xF0000000) != 0) << 14) | 0x2000;
    }

    else
    {
      v3 = ((a1 & 0xF0000000) != 0) << 14;
    }

    if ((v3 | 0x1000) * (v3 | 0x1000) <= a1)
    {
      v3 |= 0x1000u;
    }

    if ((v3 | 0x800) * (v3 | 0x800) <= a1)
    {
      v3 |= 0x800u;
    }

    if ((v3 + 1024) * (v3 + 1024) <= a1)
    {
      v3 += 1024;
    }

    if ((v3 + 512) * (v3 + 512) <= a1)
    {
      v3 += 512;
    }

    if ((v3 + 256) * (v3 + 256) <= a1)
    {
      v3 += 256;
    }

    if ((v3 + 128) * (v3 + 128) <= a1)
    {
      v3 += 128;
    }

    if ((v3 + 64) * (v3 + 64) <= a1)
    {
      v3 += 64;
    }

    if ((v3 + 32) * (v3 + 32) <= a1)
    {
      v3 += 32;
    }

    if ((v3 + 16) * (v3 + 16) <= a1)
    {
      v3 += 16;
    }

    if ((v3 + 8) * (v3 + 8) <= a1)
    {
      v3 += 8;
    }

    if ((v3 + 4) * (v3 + 4) <= a1)
    {
      v3 += 4;
    }

    if ((v3 + 2) * (v3 + 2) <= a1)
    {
      v3 += 2;
    }

    if ((v3 + 1) * (v3 + 1) <= a1)
    {
      ++v3;
    }

    v4 = a1 - v3 * v3;
    v5 = (v3 + 1) * (v3 + 1) - a1;
    if (v3 < 0x7FFF)
    {
      v6 = v4 >= v5;
      v7 = v4 == v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (!v7 && v6)
    {
      return (v3 + 1);
    }

    else
    {
      return v3;
    }
  }

  return v1;
}

uint64_t sub_10007A390(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 44) && *(result + 48))
    {
      sub_1000A3328(*(result + 48));
    }

    sub_1000BFEC4(v1[8]);
    v1[7] = 0;
    v1[8] = 0;
    sub_1000BFEC4(v1[10]);
    v1[9] = 0;
    v1[10] = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

void sub_10007A3FC(uint64_t a1)
{
  if (*(a1 + 44))
  {
    sub_1000A1C20(*(a1 + 48));
  }
}

void sub_10007A410(int *a1, uint64_t a2, uint64_t a3, int16x8_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (!a1[4] && !a1[10])
  {
    v81 = *a1;
    if (!*a1)
    {
      goto LABEL_53;
    }

    v82 = 0;
    v83 = *(a1 + 9);
    v84 = *(a1 + 7);
    v85 = a4;
    while (1)
    {
      v88 = *v83;
      v89 = v83[2];
      if (*v83 >= v89)
      {
        LOWORD(v86) = 0;
        v87 = v84;
        goto LABEL_62;
      }

      v90 = v88;
      v91 = (a3 + 4 * v88);
      v92 = (v89 + ~v88);
      if (v92 >= 0xF)
      {
        v94 = v92 + 1;
        v95 = (v92 + 1) & 0x1FFFFFFF0;
        v87 = (v84 + 2 * v95);
        v91 += v95;
        v88 += v95;
        v96 = (a3 + 32 + 4 * v90);
        v97 = v84 + 1;
        v98 = 0uLL;
        v99 = v95;
        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        do
        {
          v104 = v96[-2];
          v103 = v96[-1];
          v106 = *v96;
          v105 = v96[1];
          v96 += 4;
          v107 = v97[-1];
          v100 = vmlaq_s32(v100, v103, vmovl_high_s16(v107));
          v98 = vmlaq_s32(v98, v104, vmovl_s16(*v107.i8));
          v102 = vmlaq_s32(v102, v105, vmovl_high_s16(*v97));
          v101 = vmlaq_s32(v101, v106, vmovl_s16(*v97->i8));
          v97 += 2;
          v99 -= 16;
        }

        while (v99);
        v93 = vaddvq_s32(vaddq_s32(vaddq_s32(v101, v98), vaddq_s32(v102, v100)));
        if (v94 == v95)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v93 = 0;
        v87 = v84;
      }

      v108 = v89 - v88;
      do
      {
        v110 = *v91++;
        v109 = v110;
        v111 = v87->i16[0];
        v87 = (v87 + 2);
        v93 += v109 * v111;
        --v108;
      }

      while (v108);
LABEL_71:
      v112 = (v93 + 0x4000) >> 15;
      if (v112 >= 1)
      {
        if (v112 > 0x8000)
        {
          v113 = 0;
          do
          {
            --v113;
            v114 = v112 >> 1;
            v75 = v112 > 0x10001;
            v112 >>= 1;
          }

          while (v75);
          goto LABEL_80;
        }

        v113 = v112 >> 14;
        if (v112 >> 14)
        {
          v113 = 0;
          v115 = v112 - 0x4000;
          if (a1[9])
          {
            goto LABEL_81;
          }
        }

        else
        {
          v114 = (v93 + 0x4000) >> 15;
          do
          {
            ++v113;
            v114 *= 2;
          }

          while (v114 < 0x4000);
LABEL_80:
          v115 = v114 - 0x4000;
          if (a1[9])
          {
LABEL_81:
            v116 = ((999309312 - 7783 * v115) >> 15) * v115 + 0x4000;
LABEL_84:
            v86 = ((1 << (13 - a1[8])) + 158998 - 11357 * (v113 + a2) + (v116 >> 15)) >> (14 - a1[8]);
            goto LABEL_62;
          }
        }

        v117 = (v115 * v115 + 0x2000) >> 14;
        v116 = 32739 * v115 - 16055 * v117 + 9361 * ((v117 * v115 + 0x2000) >> 14) - 4360 * ((((v117 * v115 + 0x2000) >> 14) * v115 + 0x2000) >> 14) + 1028 * ((((((v117 * v115 + 0x2000) >> 14) * v115 + 0x2000) >> 14) * v115 + 0x2000) >> 14);
        goto LABEL_84;
      }

      LOWORD(v86) = 0;
LABEL_62:
      v85->i16[0] = v86;
      v85 = (v85 + 2);
      ++v83;
      ++v82;
      v84 = v87;
      if (v82 == v81)
      {
        goto LABEL_53;
      }
    }
  }

  v11 = sub_1000C9FC0(4 * *a1 + 4, a2, a3, a4, a5, a6, a7, a8);
  v12 = (*a1 + 1);
  if (*a1 == -1)
  {
    v13 = -1;
    goto LABEL_19;
  }

  v14 = 0;
  v15 = (a3 + 4 * **(a1 + 9));
  do
  {
    v18 = *(a1 + 9);
    v19 = v14 + 1;
    v20 = *(v18 + 4 * (v14 + 1));
    v21 = *(v18 + 4 * v14);
    if (v20 - v21 < 1)
    {
      v16 = 0;
      v17 = v15;
      goto LABEL_7;
    }

    v22 = (v20 + ~v21);
    if (v22 < 7)
    {
      v16 = 0;
      LODWORD(v23) = 0;
      v17 = v15;
LABEL_14:
      v30 = v23 + v21 - v20;
      do
      {
        v31 = v17->i32[0];
        v17 = (v17 + 4);
        v16 |= v31;
        v32 = __CFADD__(v30++, 1);
      }

      while (!v32);
      goto LABEL_7;
    }

    v24 = v22 + 1;
    v23 = (v22 + 1) & 0x1FFFFFFF8;
    v17 = (v15 + 4 * v23);
    v25 = v15 + 1;
    v26 = 0uLL;
    v27 = v23;
    v28 = 0uLL;
    do
    {
      v26 = vorrq_s8(v25[-1], v26);
      v28 = vorrq_s8(*v25, v28);
      v25 += 2;
      v27 -= 8;
    }

    while (v27);
    v29 = vorrq_s8(v28, v26);
    *v29.i8 = vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
    v16 = v29.i32[0] | v29.i32[1];
    if (v24 != v23)
    {
      goto LABEL_14;
    }

LABEL_7:
    *(v11 + v14++) = v16;
    v15 = v17;
  }

  while (v19 != v12);
  v13 = *a1;
  if (*a1)
  {
LABEL_19:
    v33 = 0;
    v34 = *(a1 + 7);
    v35 = a4;
    v36 = v13;
    while (1)
    {
      v37 = v33 + 1;
      v38 = *(v11 + v33 + 1) | *(v11 + v33);
      if ((v38 - 1) > 0x3FFFFFFE)
      {
        v40 = 15;
        v43 = 0x4000;
      }

      else
      {
        v39 = 16;
        do
        {
          v38 *= 2;
          --v39;
        }

        while (v38 < 0x40000000);
        v40 = v39 - 1;
        v41 = __OFSUB__(v39, 2);
        v42 = v39 - 2;
        if (v42 < 0 != v41)
        {
          v43 = 0;
        }

        else
        {
          v43 = 1 << v42;
        }
      }

      v44 = *(a1 + 9);
      v45 = *(v44 + 4 * v33);
      v46 = v40 & ~(v40 >> 31);
      v47 = *(v44 + 4 * (v33 + 2));
      if (v47 - v45 < 1)
      {
        v50 = 0;
      }

      else
      {
        v48 = (a3 + 4 * v45);
        v49 = (v47 + ~v45);
        if (v49 >= 0xF)
        {
          v53 = v49 + 1;
          v51 = (v49 + 1) & 0x1FFFFFFF0;
          v52 = &v34->i16[v51];
          v48 += v51;
          v54 = vdupq_n_s32(v43);
          v55 = (a3 + 32 + 4 * v45);
          v56 = v34 + 1;
          v57 = 0uLL;
          v58 = vnegq_s32(vdupq_n_s32(v46));
          v59 = v51;
          v60 = 0uLL;
          v61 = 0uLL;
          v62 = 0uLL;
          do
          {
            v64 = v55[-2];
            v63 = v55[-1];
            v66 = *v55;
            v65 = v55[1];
            v55 += 4;
            v67 = v56[-1];
            v60 = vmlaq_s32(v60, vshlq_s32(vaddq_s32(v63, v54), v58), vmovl_high_s16(v67));
            v57 = vmlaq_s32(v57, vshlq_s32(vaddq_s32(v64, v54), v58), vmovl_s16(*v67.i8));
            v62 = vmlaq_s32(v62, vshlq_s32(vaddq_s32(v65, v54), v58), vmovl_high_s16(*v56));
            v61 = vmlaq_s32(v61, vshlq_s32(vaddq_s32(v66, v54), v58), vmovl_s16(*v56->i8));
            v56 += 2;
            v59 -= 16;
          }

          while (v59);
          v50 = vaddvq_s32(vaddq_s32(vaddq_s32(v61, v57), vaddq_s32(v62, v60)));
          v34 = v52;
          if (v53 == v51)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v50 = 0;
          LODWORD(v51) = 0;
          v52 = v34;
        }

        v68 = v51 + v45 - v47;
        v34 = v52;
        do
        {
          v69 = *v48++;
          v70 = (v69 + v43) >> v46;
          v71 = v34->i16[0];
          v34 = (v34 + 2);
          v50 += v70 * v71;
          v32 = __CFADD__(v68++, 1);
        }

        while (!v32);
      }

LABEL_38:
      v72 = (v50 + (1 << (14 - v46))) >> (15 - v46);
      if (v72 < 1)
      {
        v35->i16[0] = 0;
        v35 = (v35 + 2);
        v33 = v37;
        if (v37 == v36)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v72 > 0x8000)
        {
          v73 = 0;
          do
          {
            --v73;
            v74 = v72 >> 1;
            v75 = v72 > 0x10001;
            v72 >>= 1;
          }

          while (v75);
          goto LABEL_46;
        }

        v73 = v72 >> 14;
        if (!(v72 >> 14))
        {
          v74 = (v50 + (1 << (14 - v46))) >> (15 - v46);
          do
          {
            ++v73;
            v74 *= 2;
          }

          while (v74 < 0x4000);
LABEL_46:
          v76 = v74 - 0x4000;
          if (!a1[9])
          {
            goto LABEL_49;
          }

          goto LABEL_47;
        }

        v73 = 0;
        v76 = v72 - 0x4000;
        if (!a1[9])
        {
LABEL_49:
          v78 = (v76 * v76 + 0x2000) >> 14;
          v77 = 32739 * v76 - 16055 * v78 + 9361 * ((v78 * v76 + 0x2000) >> 14) - 4360 * ((((v78 * v76 + 0x2000) >> 14) * v76 + 0x2000) >> 14) + 1028 * ((((((v78 * v76 + 0x2000) >> 14) * v76 + 0x2000) >> 14) * v76 + 0x2000) >> 14);
          goto LABEL_50;
        }

LABEL_47:
        v77 = ((-7783 * v76 + 999309312) >> 15) * v76 + 0x4000;
LABEL_50:
        v35->i16[0] = ((1 << (13 - a1[8])) + 158998 - 11357 * (v73 + v9) + (v77 >> 15)) >> (14 - a1[8]);
        v35 = (v35 + 2);
        v33 = v37;
        if (v37 == v36)
        {
LABEL_51:
          v79 = 4 * *a1 + 4;
          goto LABEL_52;
        }
      }
    }
  }

  v79 = 4;
LABEL_52:
  sub_1000CA03C(v11, v79);
LABEL_53:
  if (a1[11])
  {
    v80 = *(a1 + 6);

    sub_1000A1C98(v80, a4);
  }
}

_DWORD *sub_10007AAFC(_DWORD *result, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (result)
  {
    *a2 = result[3];
    *a3 = result[5];
    *a4 = result[6];
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  return result;
}

_DWORD *sub_10007AB2C(_DWORD *result, int a2, int a3, int a4)
{
  if (result)
  {
    result[3] = a2;
    result[5] = a3;
    result[6] = a4;
  }

  return result;
}

_DWORD *sub_10007AB3C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bmt0", a2, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000C0034(88);
    if (v10)
    {
      if (!sub_1000BBD54(v9, v10))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD54(v9, v10 + 1))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD54(v9, v10 + 2))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD04(v9, v10 + 3))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD04(v9, v10 + 4))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD54(v9, v10 + 5))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD54(v9, v10 + 6))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD54(v9, v10 + 7))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD54(v9, v10 + 8))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD04(v9, v10 + 9))
      {
        goto LABEL_22;
      }

      if (!sub_1000BBD04(v9, v10 + 10))
      {
        goto LABEL_22;
      }

      v16 = 0;
      if (!sub_1000BBF0C(v9, 2, v10 + 8, &v16))
      {
        goto LABEL_22;
      }

      v11 = *(v10 + 8);
      if (v11)
      {
        if (v16 != v10[7])
        {
          goto LABEL_22;
        }

        *(v10 + 7) = v11;
      }

      v15 = 0;
      if (!sub_1000BBF0C(v9, 4, v10 + 10, &v15))
      {
        goto LABEL_22;
      }

      v12 = *(v10 + 10);
      if (v12)
      {
        if (v15 == *v10 + 2)
        {
          *(v10 + 9) = v12;
          goto LABEL_26;
        }

LABEL_22:
        if (v10[11])
        {
          v13 = *(v10 + 6);
          if (v13)
          {
            sub_1000A3328(v13);
          }
        }

        sub_1000BFEC4(*(v10 + 8));
        *(v10 + 7) = 0;
        *(v10 + 8) = 0;
        sub_1000BFEC4(*(v10 + 10));
        *(v10 + 9) = 0;
        *(v10 + 10) = 0;
        sub_1000BFEC4(v10);
        v10 = 0;
      }
    }

LABEL_26:
    sub_1000BBBC4(v9);
    return v10;
  }

  return 0;
}

uint64_t sub_10007AD0C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 1100);
  v12 = sub_1000C9FC0(8 * v11, a2, a3, a4, a5, a6, a7, a8);
  v13 = *(a1 + 384);
  v14 = sub_1000BF86C(a2, v12, v13);
  if (v14)
  {
    v15 = *(a1 + 368);
    v16 = *(a1 + 376);
    v17 = *(a1 + 336);
    if (qword_1001065A8)
    {
      v18 = *(qword_1001065A8 + 3816);
      if (v11 < 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v18 = 0.0;
      if (v11 < 1)
      {
LABEL_16:
        sub_1000BE398(v15, v12);
        sub_1000BE9FC(v13, v16);
        sub_1000BEBD8(v15, v16, v17);
        sub_1000BEBD8(v13, v17, a3);
        goto LABEL_17;
      }
    }

    v19 = v12->f64[0] * v18;
    if (v11 >= 4)
    {
      v20 = v11 & 0x7FFFFFFC;
      v21 = vdupq_lane_s64(*&v19, 0);
      v22 = v12 + 1;
      __asm { FMOV            V2.2D, #1.0 }

      v28 = v20;
      do
      {
        v29 = vbicq_s8(vdivq_f64(_Q2, *v22), vcgtq_f64(v21, *v22));
        v22[-1] = vbicq_s8(vdivq_f64(_Q2, v22[-1]), vcgtq_f64(v21, v22[-1]));
        *v22 = v29;
        v22 += 2;
        v28 -= 4;
      }

      while (v28);
      if (v20 == v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = 0;
    }

    v30 = &v12->f64[v20];
    v31 = v11 - v20;
    do
    {
      if (*v30 >= v19)
      {
        v32 = 1.0 / *v30;
      }

      else
      {
        v32 = 0.0;
      }

      *v30++ = v32;
      --v31;
    }

    while (v31);
    goto LABEL_16;
  }

LABEL_17:
  sub_1000CA03C(v12, 8 * v11);
  return v14;
}

uint64_t sub_10007AE8C(uint64_t a1)
{
  if (*(a1 + 1432))
  {
    return sub_10007AEA0(a1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10007AEA0(_DWORD *a1)
{
  v1 = a1;
  v2 = a1[64];
  v3 = qword_1001065A8;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 3888))
    {
      a1[74] = 1;
    }

    v4 = a1 + 275;
    v5 = a1[275];
    v6 = a1 + 68;
    a1[68] = *(v3 + 3872);
    a1[69] = *(v3 + 3868);
    v7 = 8 * v2;
    v8 = sub_1000C0034(8 * v2);
    *(v1 + 392) = v8;
    if (!v8)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v4 = a1 + 275;
    v5 = a1[275];
    v6 = a1 + 68;
    a1[68] = 0;
    a1[69] = 0;
    v7 = 8 * v2;
    v9 = sub_1000C0034(8 * v2);
    *(v1 + 392) = v9;
    if (!v9)
    {
      goto LABEL_39;
    }
  }

  v10 = sub_1000C0034(v7);
  *(v1 + 400) = v10;
  if (!v10)
  {
    goto LABEL_39;
  }

  v11 = sub_1000C0034(4 * v2);
  *(v1 + 360) = v11;
  if (!v11)
  {
    goto LABEL_39;
  }

  if (*(v1 + 276))
  {
    v12 = sub_1000C0034(v7);
    *(v1 + 416) = v12;
    if (!v12)
    {
      goto LABEL_39;
    }

    v13 = sub_1000C0034(v7);
    *(v1 + 424) = v13;
    if (!v13)
    {
      goto LABEL_39;
    }
  }

  if (*v6)
  {
    v14 = sub_1000C016C(4, v5, v5);
    *(v1 + 432) = v14;
    if (!v14)
    {
      goto LABEL_39;
    }

    v15 = sub_1000C016C(4, v5, v5);
    *(v1 + 440) = v15;
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  if (v2 >= 1)
  {
    v16 = 0;
    do
    {
      *(*(v1 + 392) + v16) = sub_1000BE180(v5, v5);
      *(*(v1 + 400) + v16) = sub_1000C0034(8 * v5);
      if (!*(*(v1 + 392) + v16))
      {
        goto LABEL_39;
      }

      if (!*(*(v1 + 400) + v16))
      {
        goto LABEL_39;
      }

      if (*(v1 + 276))
      {
        *(*(v1 + 416) + v16) = sub_1000C016C(4, v5, v5);
        *(*(v1 + 424) + v16) = sub_1000C0034(4 * v5);
        if (!*(*(v1 + 416) + v16) || !*(*(v1 + 424) + v16))
        {
          goto LABEL_39;
        }
      }

      v16 += 8;
    }

    while (v7 != v16);
  }

  if ((v17 = sub_1000BE180(v5, v5), (*(v1 + 304) = v17) == 0) || (v18 = sub_1000BE180(v5, v5), (*(v1 + 312) = v18) == 0) || (v19 = sub_1000BE180(v5, v5), (*(v1 + 320) = v19) == 0) || (v20 = sub_1000BE180(v5, v5), (*(v1 + 336) = v20) == 0) || *(v1 + 260) && (v21 = sub_1000BE180(v5, v5), (*(v1 + 328) = v21) == 0) || qword_1001065A8 && *(qword_1001065A8 + 3880) && ((v22 = sub_1000BE180(v5, v5), (*(v1 + 368) = v22) == 0) || (v23 = sub_1000BE180(v5, v5), (*(v1 + 376) = v23) == 0) || (v24 = sub_1000BE180(v5, v5), (*(v1 + 384) = v24) == 0)) || (v25 = 8 * v5, v26 = sub_1000C0034(v25), (*(v1 + 344) = v26) == 0) || (v27 = sub_1000C0034(v25), (*(v1 + 352) = v27) == 0))
  {
LABEL_39:
    sub_10007DCCC(v1);
    return 0;
  }

  v847 = v1;
  if (v2 >= 1)
  {
    v35 = 0;
    __asm
    {
      FMOV            V1.2D, #0.5
      FMOV            V0.2D, #-0.5
    }

    v791 = _Q0;
    v792 = _Q1;
    v40 = 1;
    v801 = v2;
    while (1)
    {
      v43 = v35;
      v44 = *(*(v1 + 392) + 8 * v35);
      v45 = *(*(v1 + 400) + 8 * v35);
      v841 = *(v1 + 344);
      v844 = *(v1 + 352);
      v839 = v35;
      if (*(v1 + 296))
      {
        v822 = *(*(v1 + 400) + 8 * v35);
        v46 = *(v1 + 1100);
        v47 = sub_1000BE180(*(v1 + 1100), *(v1 + 1100));
        v802 = 8 * v46;
        v848 = sub_1000C9F54(8 * v46, v48, v49, v50, v51, v52, v53, v54);
        if (qword_1001065A8)
        {
          v834 = *(qword_1001065A8 + 3752) == 3;
          v55 = *(qword_1001065A8 + 3800);
        }

        else
        {
          v834 = 0;
          v55 = 0.0;
        }

        v853 = *(v1 + 312);
        v858 = *(v1 + 304);
        v819 = *(v1 + 280);
        v57 = sub_10007DF88(v1, v43, 0, 1);
        v58 = *(v1 + 1100);
        if (!qword_1001065A8 || !*(qword_1001065A8 + 3864))
        {
LABEL_69:
          if (v58 >= v57 || sub_10007DF88(v1, v43, 1, 1) < v55)
          {
            v42 = 0;
LABEL_120:
            LODWORD(v2) = v801;
            goto LABEL_41;
          }

          v86 = v819;
          v798 = v40;
          if (v819)
          {
            v87 = sub_1000BFBD8(v802, v28, v29, v30, v31, v32, v33, v34);
            if (v834)
            {
              v95 = v87;
            }

            else
            {
              v95 = 0;
            }

            v813 = v95;
            v805 = v87;
            if (v834)
            {
              v96 = 0;
            }

            else
            {
              v96 = v87;
            }

            v828 = sub_1000BFBD8(v802, v88, v89, v90, v91, v92, v93, v94);
            v824 = sub_1000BFBD8(v802, v97, v98, v99, v100, v101, v102, v103);
            v111 = sub_1000BFBD8(v802, v104, v105, v106, v107, v108, v109, v110);
            if (v46 < 1)
            {
              goto LABEL_118;
            }

            v808 = v96;
            v810 = v111;
            v112 = 0;
            v113 = v111;
            if (v834)
            {
              do
              {
                v813[v112 / 8] = sub_1000BE180(v46, v46);
                *&v828[v112] = sub_1000BE180(v46, v46);
                *&v824[v112] = sub_1000BFBD8(v802, v114, v115, v116, v117, v118, v119, v120);
                *&v113[v112] = sub_1000BFBD8(v802, v121, v122, v123, v124, v125, v126, v127);
                v112 += 8;
              }

              while (v802 != v112);
              v128 = v805;
              v805 = v808;
              v1 = v847;
              v86 = v819;
              v129 = v828;
              v130 = v824;
            }

            else
            {
              do
              {
                v808[v112 / 8] = sub_1000BE180(v46, v46);
                *&v828[v112] = sub_1000BE180(v46, v46);
                *&v824[v112] = sub_1000BFBD8(v802, v131, v132, v133, v134, v135, v136, v137);
                *&v113[v112] = sub_1000BFBD8(v802, v138, v139, v140, v141, v142, v143, v144);
                v112 += 8;
              }

              while (v802 != v112);
              v1 = v847;
              v86 = v819;
              v128 = v813;
              v130 = v824;
              v129 = v828;
            }
          }

          else
          {
            v128 = 0;
            v805 = 0;
            v129 = 0;
            v130 = 0;
            v810 = 0;
          }

          if (v46 >= 1)
          {
            v825 = v130;
            v829 = v129;
            v814 = v128;
            v145 = 0;
            v817 = v44;
            while (1)
            {
              if (v86)
              {
                v853 = *&v829[8 * v145];
                v146 = v86;
                v841 = *&v825[8 * v145];
                v844 = v810[v145];
                sub_10007E41C(v1, v839, 1, 1, v86, v145, v841, v34);
                sub_10007F198(v1, v839, 1, v146, v145, v844, v147, v148);
                if (v834)
                {
                  v858 = v814[v145];
                }

                sub_10007FE48(v1, v844, v839, v145, v858, v149, v150, v151);
                sub_1000807A4(v1, v841, v844, v839, v145, v853, v152, v153);
                if (!v834)
                {
                  if (qword_1001065A8 && *(qword_1001065A8 + 3880))
                  {
                    sub_10007AD0C(v1, v858, v805[v145], v154, v155, v156, v157, v158);
                  }

                  else
                  {
                    sub_1000BE834(v858, v805[v145]);
                  }
                }
              }

              else
              {
                sub_10007E41C(v1, v839, 1, 1, 0, v145, v841, v34);
                sub_10007F198(v1, v839, 1, 0, v145, v844, v159, v160);
                sub_100080C40(v1, v841, v839, 1, v145, v858, v161, v162);
                sub_1000807A4(v1, v841, v844, v839, v145, v853, v163, v164);
              }

              v165 = v1;
              v166 = *(v1 + 320);
              v167 = *(v165 + 1100);
              if (qword_1001065A8 && *(qword_1001065A8 + 3880))
              {
                v168 = v817;
                if (sub_10007AD0C(v847, v858, v166, v154, v155, v156, v157, v158))
                {
                  goto LABEL_100;
                }
              }

              else
              {
                v168 = v817;
                if (!sub_1000BE834(v858, v166))
                {
LABEL_100:
                  sub_1000BEBD8(v853, v166, v47);
                  sub_1000BEB6C(v47, v841, v848);
                  if (v167 >= 1)
                  {
                    if (v167 < 4 || v848 < v844 + 8 * v167 && v844 < &v848->f64[v167])
                    {
                      v169 = 0;
                      goto LABEL_105;
                    }

                    v169 = v167 & 0x7FFFFFFC;
                    v177 = (v844 + 16);
                    v178 = v169;
                    v179 = v848 + 1;
                    do
                    {
                      v180 = vsubq_f64(*v177, *v179);
                      v179[-1] = vsubq_f64(v177[-1], v179[-1]);
                      *v179 = v180;
                      v177 += 2;
                      v179 += 2;
                      v178 -= 4;
                    }

                    while (v178);
                    if (v169 != v167)
                    {
LABEL_105:
                      v170 = v167 - v169;
                      v171 = 8 * v169;
                      v172 = &v848->f64[v169];
                      v173 = (v844 + v171);
                      do
                      {
                        v174 = *v173++;
                        *v172 = v174 - *v172;
                        ++v172;
                        --v170;
                      }

                      while (v170);
                    }
                  }

                  v42 = 1;
                  goto LABEL_110;
                }
              }

              v42 = 0;
LABEL_110:
              v175 = 0;
              *(v822 + 8 * v145) = v848->f64[v145];
              do
              {
                v176 = sub_1000BE378(v47, v145, v175);
                sub_1000BE388(v168, v145, v175++, v176);
              }

              while (v46 != v175);
              ++v145;
              v1 = v847;
              v86 = v819;
              if (v145 == v46)
              {
                goto LABEL_119;
              }
            }
          }

LABEL_118:
          v42 = 0;
LABEL_119:
          sub_1000CA03C(v848, v802);
          sub_1000BE244(v47);
          v40 = v798;
          goto LABEL_120;
        }

        v59 = *(v1 + 576);
        if (v59 < 1)
        {
          v63 = 0;
        }

        else
        {
          v60 = *(v1 + 600);
          v61 = *v60;
          if (v59 >= 8)
          {
            v62 = v59 & 0x7FFFFFF8;
            v71 = vdupq_n_s32(v61);
            v72 = (v60 + 5);
            v73 = 0uLL;
            v74 = v62;
            v75 = 0uLL;
            do
            {
              v76 = v72[-1];
              v77 = vextq_s8(v71, v76, 0xCuLL);
              v78 = *v72;
              v72 += 2;
              v71 = v78;
              v79 = vmvnq_s8(vextq_s8(v76, v78, 0xCuLL));
              v80 = vaddq_s32(v76, vmvnq_s8(v77));
              v81 = vaddq_s32(v78, v79);
              v73 = vmlaq_s32(v73, v80, v80);
              v75 = vmlaq_s32(v75, v81, v81);
              v74 -= 8;
            }

            while (v74);
            v63 = vaddvq_s32(vaddq_s32(v75, v73));
            if (v62 == v59)
            {
              goto LABEL_68;
            }

            v61 = v71.u32[3];
          }

          else
          {
            v62 = 0;
            v63 = 0;
          }

          v82 = v59 - v62;
          v83 = &v60[v62 + 1];
          do
          {
            v84 = ~v61;
            v85 = *v83++;
            v61 = v85;
            v63 += (v85 + v84) * (v85 + v84);
            --v82;
          }

          while (v82);
        }

LABEL_68:
        v58 = v63 / v58 + 1;
        goto LABEL_69;
      }

      v56 = qword_1001065A8 ? *(qword_1001065A8 + 3800) : 0.0;
      v854 = *(v1 + 312);
      v859 = *(v1 + 304);
      v64 = sub_10007DF88(v1, v35, 0, 1);
      v65 = *(v1 + 1100);
      if (qword_1001065A8)
      {
        if (*(qword_1001065A8 + 3864))
        {
          break;
        }
      }

LABEL_129:
      if (v65 >= v64 || sub_10007DF88(v1, v43, 1, 1) < v56)
      {
        v42 = 0;
        goto LABEL_41;
      }

      v823 = v45;
      v818 = v44;
      sub_10007E41C(v1, v43, 1, 0, *(v1 + 280), 0xFFFFFFFFLL, v841, v34);
      sub_10007F198(v1, v43, 0, *(v1 + 280), 0xFFFFFFFFLL, v844, v196, v197);
      v799 = v40;
      if (*(v1 + 280))
      {
        sub_10007FE48(v1, v844, v43, 0xFFFFFFFFLL, v859, v202, v203, v204);
        v207 = v1;
        v208 = v841;
        v209 = v844;
LABEL_133:
        sub_1000807A4(v207, v208, v209, v43, 0xFFFFFFFFLL, v854, v205, v206);
        goto LABEL_379;
      }

      if (!*(v1 + 272))
      {
        sub_100080C40(v1, v841, v43, 1, 0xFFFFFFFFLL, v859, v203, v204);
        v207 = v1;
        v208 = v841;
        v209 = v844;
        goto LABEL_133;
      }

      v217 = *(v1 + 1404);
      v826 = *(v1 + 1100);
      v218 = 4 * v826;
      v815 = sub_1000C9FC0(v218, v198, v199, v200, v201, v202, v203, v204);
      v233 = sub_1000C9FC0(v218, v219, v220, v221, v222, v223, v224, v225);
      v790 = v217;
      if (qword_1001065A8)
      {
        v234 = *(qword_1001065A8 + 3792);
      }

      else
      {
        v234 = 0;
      }

      v862[0] = 0;
      v793 = 4 * v826;
      v820 = sub_1000C9FC0(v218, v226, v227, v228, v229, v230, v231, v232);
      v236 = *(v1 + 432);
      v235 = *(v1 + 440);
      v794 = *(v1 + 1432);
      v237 = v826;
      if (v826 >= 1)
      {
        v238 = 0;
        v239 = 4 * v826;
        do
        {
          v240 = 0;
          do
          {
            *(*(v236 + 8 * v238) + v240) = 0;
            v240 += 4;
          }

          while (v239 != v240);
          ++v238;
        }

        while (v238 != v826);
        for (i = 0; i != v826; ++i)
        {
          v242 = 0;
          do
          {
            *(*(v235 + 8 * i) + v242) = 0;
            v242 += 4;
          }

          while (v239 != v242);
        }

        v243 = v234;
        if (v826 > 3 && (v820 >= v841 + 8 * v826 || v841 >= v820 + 4 * v826))
        {
          v244 = v826 & 0x7FFFFFFC;
          v524 = vdupq_lane_s64(*&v243, 0);
          v525 = (v841 + 16);
          v526 = &v820->i64[1];
          v527 = v244;
          do
          {
            v528 = v525[-1];
            v529 = vcgtzq_f64(vmulq_n_f64(v528, v243));
            v530 = vmlaq_f64(v792, v528, v524);
            v531 = vmlaq_f64(v791, v528, v524);
            *&v528.f64[0] = vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcgtzq_f64(vmulq_n_f64(*v525, v243)), vmlaq_f64(v792, *v525, v524), vmlaq_f64(v791, *v525, v524))));
            *(v526 - 1) = vmovn_s64(vcvtq_s64_f64(vbslq_s8(v529, v530, v531)));
            *v526 = *&v528.f64[0];
            v525 += 2;
            v526 += 2;
            v527 -= 4;
          }

          while (v527);
          if (v244 == v826)
          {
            goto LABEL_156;
          }
        }

        else
        {
          v244 = 0;
        }

        v245 = v826 - v244;
        v246 = &v820->i32[v244];
        v247 = (v841 + 8 * v244);
        do
        {
          v248 = *v247++;
          v249 = v243 * v248 + 0.5;
          v250 = v243 * v248 + -0.5;
          if (v248 * v243 > 0.0)
          {
            v250 = v249;
          }

          *v246++ = v250;
          --v245;
        }

        while (v245);
      }

LABEL_156:
      v251 = *(v1 + 1072);
      if (v251 >= 1)
      {
        v252 = 0;
        LOWORD(v253) = 0;
        v254 = 4 * v826;
        v255 = (v815 + v254);
        v256 = (v233 + v254);
        v257 = &v820->i8[v254];
        v259 = v815 < v256 && v233 < v255;
        v806 = v259;
        v809 = v256;
        v811 = v255;
        v261 = v815 < v257 && v820 < v255;
        v803 = v261;
        v263 = v233 < v257 && v820 < v256;
        v796 = v263;
        v795 = vdupq_n_s32(v234);
        while (2)
        {
          if (*(v1 + 268))
          {
            _ZF = v253 == 0;
          }

          else
          {
            _ZF = 1;
          }

          v264 = v253;
          if (_ZF)
          {
            v253 = v253;
          }

          else
          {
            v253 = 1;
          }

          if (*(*(v1 + 496) + v253) != v839)
          {
            goto LABEL_177;
          }

          v849 = *(*v794 + 8 * v264);
          v830 = v264;
          if (*(*(v1 + 1432) + 28))
          {
            v266 = sub_10000119C(v1);
            v264 = v830;
            if (v830 == v266)
            {
              v251 = *(v1 + 1072);
              v237 = v826;
              goto LABEL_188;
            }

            v270 = 1;
            v237 = v826;
          }

          else
          {
LABEL_188:
            if (v251 <= v252)
            {
              v270 = 1;
            }

            else
            {
              if (*(v1 + 1176))
              {
                v267 = (*(v1 + 1160) + 4 * v264);
                v269 = *v267;
                v268 = v267[1];
              }

              else
              {
                v271 = (*(v1 + 1144) + 2 * v264);
                v269 = *v271;
                v268 = v271[1];
              }

              v270 = v268 - v269;
            }
          }

          if (v849)
          {
            v272 = v270 == 0;
          }

          else
          {
            v272 = 1;
          }

          if (!v272)
          {
            if (v270 >= 1)
            {
              v835 = v270;
              if (v237 > 0)
              {
                v273 = 0;
                while (1)
                {
                  v274 = *(v849 + 8);
                  v275 = *(v274 + 2 * v273);
                  if (*(v274 + 2 * v273))
                  {
                    break;
                  }

LABEL_202:
                  if (++v273 == v835)
                  {
                    goto LABEL_176;
                  }
                }

                sub_100001370(v847, v830, v273, v862);
                v277 = v862[0];
                if (v826 < 4)
                {
                  v278 = 0;
                  v279 = v815;
                  goto LABEL_228;
                }

                v279 = v815;
                v280 = v815 >= v862[0] + v826 || v862[0] >= v811;
                v281 = v806;
                if (!v280)
                {
                  v281 = 1;
                }

                v282 = v281 | v803;
                if (v233 >= v862[0] + v826 || v862[0] >= v809)
                {
                  v284 = v282;
                }

                else
                {
                  v284 = 1;
                }

                if ((v284 | v796))
                {
                  v278 = 0;
                  goto LABEL_228;
                }

                v285 = vdupq_n_s32(v275);
                if (v826 >= 0x10)
                {
                  v287 = v826 & 0x7FFFFFF0;
                  v288 = v233;
                  v289 = v815;
                  v290 = v820;
                  v291 = v862[0];
                  do
                  {
                    v292 = *v291++;
                    v293 = vmlaq_s32(vnegq_s32(v290[3]), v795, vqtbl1q_s8(v292, xmmword_1000F0C30));
                    v294 = vmlaq_s32(vnegq_s32(*v290), v795, vqtbl1q_s8(v292, xmmword_1000F0C60));
                    v295 = vmlaq_s32(vnegq_s32(v290[1]), v795, vqtbl1q_s8(v292, xmmword_1000F0C50));
                    v296 = vmlaq_s32(vnegq_s32(v290[2]), v795, vqtbl1q_s8(v292, xmmword_1000F0C40));
                    *v289 = v294;
                    v289[1] = v295;
                    v289[2] = v296;
                    v289[3] = v293;
                    v276 = vmulq_s32(v293, v285);
                    *v288 = vmulq_s32(v294, v285);
                    v288[1] = vmulq_s32(v295, v285);
                    v288[2] = vmulq_s32(v296, v285);
                    v288[3] = v276;
                    v290 += 4;
                    v289 += 4;
                    v288 += 4;
                    v287 -= 16;
                  }

                  while (v287);
                  if ((v826 & 0x7FFFFFF0) != v826)
                  {
                    v286 = v826 & 0x7FFFFFF0;
                    v278 = v286;
                    if ((v826 & 0xC) == 0)
                    {
                      goto LABEL_228;
                    }

                    goto LABEL_225;
                  }
                }

                else
                {
                  v286 = 0;
LABEL_225:
                  v297 = (v277 + v286);
                  v298 = (v820 + 4 * v286);
                  v299 = (v815 + 4 * v286);
                  v300 = (v233 + 4 * v286);
                  v301 = v286 - (v826 & 0x7FFFFFFC);
                  do
                  {
                    v302 = *v297++;
                    v276.i32[0] = v302;
                    v303 = *v298++;
                    v304 = vmlaq_s32(vnegq_s32(v303), v795, vmovl_u16(*&vmovl_u8(*v276.i8)));
                    *v299++ = v304;
                    v276 = vmulq_s32(v304, v285);
                    *v300++ = v276;
                    v301 += 4;
                  }

                  while (v301);
                  v278 = v826 & 0x7FFFFFFC;
                  if (v278 != v826)
                  {
LABEL_228:
                    v305 = v826 - v278;
                    v306 = &v233->i32[v278];
                    v307 = &v279->i32[v278];
                    v308 = &v820->i32[v278];
                    v309 = (v277 + v278);
                    do
                    {
                      v311 = *v309++;
                      v310 = v311;
                      v312 = *v308++;
                      v313 = v234 * v310 - v312;
                      *v307++ = v313;
                      *v306++ = v313 * v275;
                      --v305;
                    }

                    while (v305);
                  }
                }

                v314 = 0;
                v315 = 1;
                while (2)
                {
                  v316 = *(v235 + 8 * v314);
                  v317 = *(v236 + 8 * v314);
                  v318 = v315;
                  v319 = v279;
LABEL_241:
                  v325 = *v317;
                  v326 = v319->i32[0] * v233->i32[v314];
                  if (v326 > 0x3FFFFFFF)
                  {
                    v327 = v326 - 0x3FFFFFFF;
                    v328 = v326 == 0x7FFFFFFF;
                    if (v326 == 0x7FFFFFFF)
                    {
                      v329 = 2;
                    }

                    else
                    {
                      v329 = 1;
                    }

                    v330 = *v316 + v329;
                    if (v328)
                    {
                      v326 = 1;
                    }

                    else
                    {
                      v326 = v327;
                    }

                    goto LABEL_254;
                  }

                  if (v326 < -1073741822)
                  {
                    v331 = -2147483645 - v326;
                    if (v326 > 0x80000003)
                    {
                      v331 = 0;
                    }

                    v332 = ((__PAIR64__(v331, v326) - 2147483651u) >> 32) / 0x3FFFFFFF;
                    if (v326 < 0x80000003)
                    {
                      ++v332;
                    }

                    v326 = v326 - v332 + (v332 << 30) + 0x3FFFFFFF;
                    v330 = *v316 + ~v332;
LABEL_254:
                    *v316 = v330;
                  }

                  v324 = v326 + v325;
                  if (v324 <= 0x3FFFFFFF)
                  {
                    if (v324 < -1073741822)
                    {
                      v333 = -2147483645 - v324;
                      if (v324 > 0x80000003)
                      {
                        v333 = 0;
                      }

                      v334 = ((__PAIR64__(v333, v324) - 2147483651u) >> 32) / 0x3FFFFFFF;
                      if (v324 < 0x80000003)
                      {
                        ++v334;
                      }

                      v324 = v324 - v334 + (v334 << 30) + 0x3FFFFFFF;
                      v323 = *v316 + ~v334;
LABEL_239:
                      *v316 = v323;
                    }

                    *v317++ = v324;
                    ++v316;
                    v319 = (v319 + 4);
                    _VF = __OFSUB__(v318--, 1);
                    if ((v318 < 0) ^ _VF | (v318 == 0))
                    {
                      ++v314;
                      ++v315;
                      if (v314 == v826)
                      {
                        goto LABEL_202;
                      }

                      continue;
                    }

                    goto LABEL_241;
                  }

                  break;
                }

                v320 = v324 - 0x3FFFFFFF;
                v321 = v324 == 0x7FFFFFFF;
                if (v324 == 0x7FFFFFFF)
                {
                  v322 = 2;
                }

                else
                {
                  v322 = 1;
                }

                v323 = *v316 + v322;
                if (v321)
                {
                  v324 = 1;
                }

                else
                {
                  v324 = v320;
                }

                goto LABEL_239;
              }

              for (j = 0; j != v835; ++j)
              {
                if (*(*(v849 + 8) + 2 * j))
                {
                  sub_100001370(v847, v830, j, v862);
                }
              }
            }

LABEL_176:
            sub_1000CEDA4();
            v237 = v826;
            v1 = v847;
            LOWORD(v264) = v830;
          }

LABEL_177:
          LOWORD(v253) = v264 + 1;
          v252 = (v264 + 1);
          v251 = *(v1 + 1072);
          if (v251 <= v252)
          {
            break;
          }

          continue;
        }
      }

      if (v237 >= 1)
      {
        v336 = 0;
        v337 = 1.0 / (v234 * v790 * v234);
        v338 = 1;
        do
        {
          v339 = 0;
          do
          {
            v340 = *(*(v235 + 8 * v336) + 4 * v339);
            v341 = v340 * 1073741820.0;
            if (!v340)
            {
              v341 = -0.0;
            }

            v342 = v337 * (v341 + *(*(v236 + 8 * v336) + 4 * v339));
            sub_1000BE388(v859, v336, v339, v342);
            if (v339 < v336)
            {
              sub_1000BE388(v859, v339, v336, v342);
            }

            ++v339;
          }

          while (v338 != v339);
          ++v336;
          ++v338;
        }

        while (v336 != v826);
      }

      sub_1000CA03C(v820, v793);
      sub_1000CA03C(v233, v793);
      sub_1000CA03C(v815, v793);
      v797 = *(v847 + 1404);
      v850 = *(v847 + 1100);
      v343 = 4 * v850;
      v812 = sub_1000C9FC0(v343, v344, v345, v346, v347, v348, v349, v350);
      v358 = sub_1000C9FC0(v343, v351, v352, v353, v354, v355, v356, v357);
      v821 = sub_1000C9FC0(v343, v359, v360, v361, v362, v363, v364, v365);
      v804 = v343;
      v816 = sub_1000C9FC0(v343, v366, v367, v368, v369, v370, v371, v372);
      v374 = *(v847 + 432);
      v373 = *(v847 + 440);
      if (qword_1001065A8)
      {
        v375 = *(qword_1001065A8 + 3792);
      }

      else
      {
        v375 = 0;
      }

      v862[0] = 0;
      v807 = *(v847 + 1432);
      v376 = v850;
      if (v850 >= 1)
      {
        v377 = 0;
        v378 = 4 * v850;
        do
        {
          v379 = 0;
          do
          {
            *(*(v374 + 8 * v377) + v379) = 0;
            v379 += 4;
          }

          while (v378 != v379);
          ++v377;
        }

        while (v377 != v850);
        for (k = 0; k != v850; ++k)
        {
          v381 = 0;
          do
          {
            *(*(v373 + 8 * k) + v381) = 0;
            v381 += 4;
          }

          while (v378 != v381);
        }

        v382 = v375;
        if (v850 > 5)
        {
          v383 = 0;
          v494 = (v821 + 4 * v850);
          v495 = (v816 + 4 * v850);
          v496 = v841 + 8 * v850;
          v497 = v844 + 8 * v850;
          v499 = v821 < v496 && v841 < v494;
          v501 = v821 < v497 && v844 < v494;
          v503 = v816 < v496 && v841 < v495;
          v505 = v816 < v497 && v844 < v495;
          if ((v816 >= v494 || v821 >= v495) && !v499 && !v501 && !v503 && !v505)
          {
            v383 = v850 & 0x7FFFFFFE;
            v507 = v383;
            v508 = vdupq_lane_s64(*&v382, 0);
            v509 = v816;
            v510 = v844;
            v511 = v821;
            v512 = v841;
            do
            {
              v513 = *v512++;
              *v511++ = vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcgtzq_f64(vmulq_n_f64(v513, v382)), vmlaq_f64(v792, v513, v508), vmlaq_f64(v791, v513, v508))));
              v514 = *v510++;
              *v509++ = vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcgtzq_f64(vmulq_n_f64(v514, v382)), vmlaq_f64(v792, v514, v508), vmlaq_f64(v791, v514, v508))));
              v507 -= 2;
            }

            while (v507);
            if (v383 == v850)
            {
              goto LABEL_296;
            }
          }
        }

        else
        {
          v383 = 0;
        }

        v384 = v850 - v383;
        v385 = 4 * v383;
        v386 = v816 + v383;
        v387 = 8 * v383;
        v388 = (v844 + 8 * v383);
        v389 = (v821 + v385);
        v390 = (v841 + v387);
        do
        {
          v391 = *v390++;
          v392 = v382 * v391 + 0.5;
          v393 = v382 * v391 + -0.5;
          if (v391 * v382 <= 0.0)
          {
            v394 = v393;
          }

          else
          {
            v394 = v392;
          }

          v389->i32[0] = v394;
          v389 = (v389 + 4);
          v395 = *v388++;
          v396 = v382 * v395 + 0.5;
          v397 = v382 * v395 + -0.5;
          if (v395 * v382 > 0.0)
          {
            v397 = v396;
          }

          *v386++ = v397;
          --v384;
        }

        while (v384);
      }

LABEL_296:
      v398 = v847;
      v399 = *(v847 + 1072);
      if (v399 < 1)
      {
        goto LABEL_368;
      }

      v400 = 0;
      LOWORD(v401) = 0;
      while (2)
      {
        if (*(v398 + 268))
        {
          v403 = v401 == 0;
        }

        else
        {
          v403 = 1;
        }

        v402 = v401;
        if (v403)
        {
          v401 = v401;
        }

        else
        {
          v401 = 1;
        }

        if (*(*(v398 + 496) + v401) != v839)
        {
          goto LABEL_299;
        }

        v404 = *(*v807 + 8 * v402);
        v827 = v404;
        v831 = v402;
        if (!*(*(v398 + 1432) + 28))
        {
          goto LABEL_310;
        }

        v836 = v400;
        v405 = sub_10000119C(v398);
        v402 = v831;
        if (v831 == v405)
        {
          v399 = *(v398 + 1072);
          v376 = v850;
          v404 = v827;
          v400 = v836;
LABEL_310:
          if (v399 <= v400)
          {
            v409 = 1;
          }

          else
          {
            if (*(v847 + 1176))
            {
              v406 = (*(v847 + 1160) + 4 * v402);
              v408 = *v406;
              v407 = v406[1];
            }

            else
            {
              v410 = (*(v847 + 1144) + 2 * v402);
              v408 = *v410;
              v407 = v410[1];
            }

            v409 = v407 - v408;
          }

          goto LABEL_317;
        }

        v409 = 1;
        v376 = v850;
        v404 = v827;
LABEL_317:
        if (v404)
        {
          v411 = v409 == 0;
        }

        else
        {
          v411 = 1;
        }

        v398 = v847;
        if (v411)
        {
          goto LABEL_299;
        }

        if (v409 < 1)
        {
          goto LABEL_298;
        }

        v837 = v409;
        if (v376 <= 0)
        {
          for (m = 0; m != v837; ++m)
          {
            if (*(*(v404 + 8) + 2 * m))
            {
              sub_100001370(v847, v831, m, v862);
              v404 = v827;
            }
          }

          goto LABEL_298;
        }

        v412 = 0;
        while (2)
        {
          v413 = *(v404 + 8);
          v414 = *(v413 + 2 * v412);
          if (!*(v413 + 2 * v412))
          {
            goto LABEL_324;
          }

          v415 = v412;
          sub_100001370(v847, v831, v412, v862);
          v412 = v415;
          v404 = v827;
          v416 = v816;
          v417 = *(*(v827 + 24) + 8 * v415);
          v418 = v821;
          v419 = v862[0];
          v420 = v812;
          v421 = v358;
          v422 = v850;
          do
          {
            v425 = v418->i32[0];
            v418 = (v418 + 4);
            *v420 = v375 * *v419 - v425;
            v426 = *v417++;
            v423 = v426;
            if (!qword_1001065A8 || !*(qword_1001065A8 + 3740))
            {
              v423 += *v419 * v414;
            }

            v424 = v416->i32[0];
            v416 = (v416 + 4);
            *v421++ = v423 * v375 - v424 * v414;
            ++v420;
            ++v419;
            --v422;
          }

          while (v422);
          v427 = 0;
          while (2)
          {
            v428 = *(v374 + 8 * v427);
            v429 = *(v373 + 8 * v427);
            v430 = v850 + 1;
            v431 = v812;
            do
            {
              v437 = *v428;
              v438 = *v431 * *(v358 + v427);
              if (v438 <= 0x3FFFFFFF)
              {
                if (v438 >= -1073741822)
                {
                  goto LABEL_357;
                }

                v443 = -2147483645 - v438;
                if (v438 > 0x80000003)
                {
                  v443 = 0;
                }

                v444 = ((__PAIR64__(v443, v438) - 2147483651u) >> 32) / 0x3FFFFFFF;
                if (v438 < 0x80000003)
                {
                  ++v444;
                }

                v438 = v438 - v444 + (v444 << 30) + 0x3FFFFFFF;
                v442 = *v429 + ~v444;
              }

              else
              {
                v439 = v438 - 0x3FFFFFFF;
                v440 = v438 == 0x7FFFFFFF;
                if (v438 == 0x7FFFFFFF)
                {
                  v441 = 2;
                }

                else
                {
                  v441 = 1;
                }

                v442 = *v429 + v441;
                if (v440)
                {
                  v438 = 1;
                }

                else
                {
                  v438 = v439;
                }
              }

              *v429 = v442;
LABEL_357:
              v436 = v438 + v437;
              if (v436 > 0x3FFFFFFF)
              {
                v432 = v436 - 0x3FFFFFFF;
                v433 = v436 == 0x7FFFFFFF;
                if (v436 == 0x7FFFFFFF)
                {
                  v434 = 2;
                }

                else
                {
                  v434 = 1;
                }

                v435 = *v429 + v434;
                if (v433)
                {
                  v436 = 1;
                }

                else
                {
                  v436 = v432;
                }

LABEL_341:
                *v429 = v435;
                goto LABEL_342;
              }

              if (v436 < -1073741822)
              {
                v445 = -2147483645 - v436;
                if (v436 > 0x80000003)
                {
                  v445 = 0;
                }

                v446 = ((__PAIR64__(v445, v436) - 2147483651u) >> 32) / 0x3FFFFFFF;
                if (v436 < 0x80000003)
                {
                  ++v446;
                }

                v436 = v436 - v446 + (v446 << 30) + 0x3FFFFFFF;
                v435 = *v429 + ~v446;
                goto LABEL_341;
              }

LABEL_342:
              *v428++ = v436;
              ++v429;
              ++v431;
              --v430;
            }

            while (v430 > 1);
            if (++v427 != v850)
            {
              continue;
            }

            break;
          }

LABEL_324:
          if (++v412 != v837)
          {
            continue;
          }

          break;
        }

LABEL_298:
        sub_1000CEDA4();
        v398 = v847;
        v376 = v850;
        LOWORD(v402) = v831;
LABEL_299:
        LOWORD(v401) = v402 + 1;
        v400 = (v402 + 1);
        v399 = *(v398 + 1072);
        if (v399 > v400)
        {
          continue;
        }

        break;
      }

LABEL_368:
      if (v376 >= 1)
      {
        v448 = 0;
        do
        {
          v449 = 0;
          do
          {
            while (1)
            {
              v451 = *(*(v373 + 8 * v448) + 4 * v449);
              v452 = v451 * 1073741820.0;
              if (!v451)
              {
                v452 = -0.0;
              }

              v453 = 1.0 / (v375 * v797 * v375) * (v452 + *(*(v374 + 8 * v448) + 4 * v449));
              if (*(v847 + 280))
              {
                break;
              }

              sub_1000BE388(v854, v448, v449++, v453);
              v450 = v850;
              if (v850 == v449)
              {
                goto LABEL_370;
              }
            }

            sub_1000BE388(v854, v449++, v448, v453);
            v450 = v850;
          }

          while (v850 != v449);
LABEL_370:
          ++v448;
        }

        while (v448 != v450);
      }

      sub_1000CA03C(v816, v804);
      sub_1000CA03C(v821, v804);
      sub_1000CA03C(v358, v804);
      sub_1000CA03C(v812, v804);
      v1 = v847;
      LODWORD(v2) = v801;
      v43 = v839;
LABEL_379:
      v454 = v823;
      if (!*(v1 + 260))
      {
        goto LABEL_410;
      }

      v455 = *(v1 + 328);
      if (*(v1 + 264))
      {
        sub_1000BE294(*(v1 + 328), 1.0);
        v456 = *(v1 + 248) / *(v1 + 252);
        goto LABEL_409;
      }

      v838 = *(v1 + 328);
      v457 = *(v1 + 1100);
      v458 = *(v1 + 1072);
      if (v458 < 1)
      {
        v471 = -1.0;
        goto LABEL_408;
      }

      v832 = *(v1 + 1100);
      v459 = 0;
      v460 = 0;
      LOWORD(v461) = 0;
      v462 = v1;
      v463 = 1;
      while (2)
      {
        if (*(v462 + 268))
        {
          v465 = v461 == 0;
        }

        else
        {
          v465 = 1;
        }

        v466 = v461;
        if (v465)
        {
          v461 = v461;
        }

        else
        {
          v461 = 1;
        }

        if (*(*(v462 + 496) + v461) == v839)
        {
          if (!*(*(v462 + 1432) + 28))
          {
            goto LABEL_397;
          }

          if (v466 != sub_10000119C(v462))
          {
            goto LABEL_384;
          }

          v458 = *(v847 + 1072);
LABEL_397:
          if (v458 <= v459)
          {
LABEL_384:
            v464 = 1;
            goto LABEL_385;
          }

          if (*(v847 + 1176))
          {
            v467 = (*(v847 + 1160) + 4 * v466);
            v469 = *v467;
            v468 = v467[1];
          }

          else
          {
            v470 = (*(v847 + 1144) + 2 * v466);
            v469 = *v470;
            v468 = v470[1];
          }

          v464 = v468 - v469;
          if (v464)
          {
            if (v464 < 1)
            {
              v463 = 0;
              goto LABEL_386;
            }

LABEL_385:
            v463 = 0;
            v460 += v464;
          }
        }

LABEL_386:
        LOWORD(v461) = v466 + 1;
        v459 = (v466 + 1);
        v462 = v847;
        v458 = *(v847 + 1072);
        if (v458 > v459)
        {
          continue;
        }

        break;
      }

      v471 = v460;
      if (v463)
      {
        v471 = -1.0;
      }

      v1 = v847;
      LODWORD(v2) = v801;
      v43 = v839;
      v457 = v832;
LABEL_408:
      v456 = *(v1 + 248) / (v471 * *(v1 + 252));
      v472 = 8 * v457;
      v473 = sub_1000C9FC0(8 * v457, v210, v211, v212, v213, v214, v215, v216);
      sub_10007E41C(v1, v43, 0, 0, 0, 0xFFFFFFFFLL, v473, v474);
      sub_100080C40(v1, v473, v43, 0, 0xFFFFFFFFLL, v838, v475, v476);
      v477 = v473;
      v455 = v838;
      sub_1000CA03C(v477, v472);
      v454 = v823;
LABEL_409:
      sub_1000BEAF0(v859, v455, v859, v456);
      sub_1000BEAF0(v854, v455, v854, v456);
LABEL_410:
      if (qword_1001065A8)
      {
        v478 = *v4;
        if (*(qword_1001065A8 + 3864))
        {
          v479 = *(v1 + 576);
          if (v478 >= 1 && v479 >= 1)
          {
            v480 = 0;
            do
            {
              v481 = *(v847 + 600);
              v482 = *(v481 + 4 * v480++);
              v483 = *(v481 + 4 * v480);
              v484 = v482;
              if (v482 < v483)
              {
                do
                {
                  for (n = 0; n != v478; ++n)
                  {
                    if (n < v482 || n >= v483)
                    {
                      sub_1000BE388(v859, v484, n, 0.0);
                    }
                  }

                  ++v484;
                }

                while (v484 != v483);
                v479 = *(v847 + 576);
              }
            }

            while (v480 < v479);
            v478 = *v4;
            v1 = v847;
            LODWORD(v2) = v801;
            v454 = v823;
          }

          if (v479 >= 1 && v478 >= 1)
          {
            v487 = 0;
            do
            {
              v488 = *(v847 + 600);
              v489 = *(v488 + 4 * v487++);
              v490 = *(v488 + 4 * v487);
              v491 = v489;
              if (v489 < v490)
              {
                do
                {
                  for (ii = 0; ii != v478; ++ii)
                  {
                    if (ii < v489 || ii >= v490)
                    {
                      sub_1000BE388(v854, v491, ii, 0.0);
                    }
                  }

                  ++v491;
                }

                while (v491 != v490);
                v479 = *(v847 + 576);
              }
            }

            while (v487 < v479);
            v478 = *v4;
            v1 = v847;
            LODWORD(v2) = v801;
            v454 = v823;
          }
        }

        v486 = *(v1 + 320);
        if (qword_1001065A8 && *(qword_1001065A8 + 3880))
        {
          if (sub_10007AD0C(v1, v859, *(v1 + 320), v212, v213, v214, v215, v216))
          {
            goto LABEL_446;
          }

LABEL_450:
          v42 = 0;
          v40 = v799;
          goto LABEL_41;
        }
      }

      else
      {
        v486 = *(v1 + 320);
        v478 = *(v1 + 1100);
      }

      if (sub_1000BE834(v859, v486))
      {
        goto LABEL_450;
      }

LABEL_446:
      sub_1000BEBD8(v854, v486, v818);
      sub_1000BEB6C(v818, v841, v454);
      if (v478 < 1)
      {
        v42 = 1;
        v40 = v799;
        goto LABEL_41;
      }

      if (v478 >= 4)
      {
        v40 = v799;
        if (v454 >= v844 + 8 * v478 || v844 >= v454 + 8 * v478)
        {
          v493 = v478 & 0x7FFFFFFC;
          v515 = (v844 + 16);
          v516 = (v454 + 16);
          v517 = v493;
          do
          {
            v518 = vsubq_f64(*v515, *v516);
            v516[-1] = vsubq_f64(v515[-1], v516[-1]);
            *v516 = v518;
            v515 += 2;
            v516 += 2;
            v517 -= 4;
          }

          while (v517);
          if (v493 == v478)
          {
            v42 = 1;
            goto LABEL_41;
          }
        }

        else
        {
          v493 = 0;
        }
      }

      else
      {
        v493 = 0;
        v40 = v799;
      }

      v519 = v478 - v493;
      v520 = 8 * v493;
      v521 = (v454 + 8 * v493);
      v522 = (v844 + v520);
      do
      {
        v523 = *v522++;
        *v521 = v523 - *v521;
        ++v521;
        v42 = 1;
        --v519;
      }

      while (v519);
LABEL_41:
      *(*(v1 + 360) + 4 * v839) = v42;
      if (!*(*(v1 + 360) + 4 * v839))
      {
        v40 = 0;
      }

      v35 = v839 + 1;
      if (v2 <= (v839 + 1))
      {
        goto LABEL_504;
      }
    }

    v66 = *(v1 + 576);
    if (v66 < 1)
    {
      v70 = 0;
    }

    else
    {
      v67 = *(v1 + 600);
      v68 = *v67;
      if (v66 >= 8)
      {
        v69 = v66 & 0x7FFFFFF8;
        v181 = vdupq_n_s32(v68);
        v182 = (v67 + 5);
        v183 = 0uLL;
        v184 = v69;
        v185 = 0uLL;
        do
        {
          v186 = v182[-1];
          v187 = vextq_s8(v181, v186, 0xCuLL);
          v188 = *v182;
          v182 += 2;
          v181 = v188;
          v189 = vmvnq_s8(vextq_s8(v186, v188, 0xCuLL));
          v190 = vaddq_s32(v186, vmvnq_s8(v187));
          v191 = vaddq_s32(v188, v189);
          v183 = vmlaq_s32(v183, v190, v190);
          v185 = vmlaq_s32(v185, v191, v191);
          v184 -= 8;
        }

        while (v184);
        v70 = vaddvq_s32(vaddq_s32(v185, v183));
        if (v69 == v66)
        {
          goto LABEL_128;
        }

        v68 = v181.u32[3];
      }

      else
      {
        v69 = 0;
        v70 = 0;
      }

      v192 = v66 - v69;
      v193 = &v67[v69 + 1];
      do
      {
        v194 = ~v68;
        v195 = *v193++;
        v68 = v195;
        v70 += (v195 + v194) * (v195 + v194);
        --v192;
      }

      while (v192);
    }

LABEL_128:
    v65 = v70 / v65 + 1;
    goto LABEL_129;
  }

  LOBYTE(v40) = 1;
LABEL_504:
  v533 = *(v1 + 392);
  v532 = *(v1 + 400);
  if (*(v1 + 276))
  {
    v534 = *(v1 + 416);
    v855 = *(v1 + 256);
    v860 = *(v1 + 424);
    v535 = v1;
    if (v855 < 1)
    {
      goto LABEL_569;
    }

    v536 = *(v1 + 1100);
    if (v536 < 1)
    {
      goto LABEL_569;
    }

    v537 = 0;
    v538 = 0;
    do
    {
      if (*(*(v847 + 360) + 4 * v537))
      {
        for (jj = 0; jj != v536; ++jj)
        {
          for (kk = 0; kk != v536; ++kk)
          {
            v542 = sub_1000BE378(*(v533 + 8 * v537), jj, kk) * 1048576.0 + 0.5;
            if (v542 > 1073741820.0)
            {
              v538 = 1;
              v542 = 1073741820.0;
            }

            else if (v542 < -1073741820.0)
            {
              v538 = 1;
              v542 = -1073741820.0;
            }

            *(*(*(v534 + 8 * v537) + 8 * jj) + 4 * kk) = v542;
          }

          v540 = *(*(v532 + 8 * v537) + 8 * jj) * 1048576.0 + 0.5;
          if (v540 > 1073741820.0)
          {
            v538 = 1;
            v540 = 1073741820.0;
          }

          else if (v540 < -1073741820.0)
          {
            v538 = 1;
            v540 = -1073741820.0;
          }

          *(*(v860 + 8 * v537) + 4 * jj) = v540;
        }
      }

      ++v537;
    }

    while (v537 != v855);
    v535 = v847;
    if (!v538)
    {
LABEL_569:
      if (*(v535 + 1072) >= 1)
      {
        v608 = 0;
        LOWORD(v609) = 0;
        do
        {
          if (*(v535 + 268))
          {
            v610 = v609 == 0;
          }

          else
          {
            v610 = 1;
          }

          v611 = v609;
          if (v610)
          {
            v609 = v609;
          }

          else
          {
            v609 = 1;
          }

          v612 = *(*(v535 + 496) + v609);
          v613 = v535;
          if (v612 == -2)
          {
            goto LABEL_572;
          }

          if ((~v612 & 0xFFFFFFFD) != 0)
          {
            if (*(*(v535 + 360) + 4 * v612))
            {
              v843 = *(v534 + 8 * v612);
              v614 = *(v860 + 8 * v612);
              v862[0] = 0;
              v615 = *(*(v535 + 1432) + 24);
              v616 = *(v535 + 1100);
              v617 = sub_1000C9F54(4 * v616, v28, v29, v30, v31, v32, v33, v34);
              v857 = sub_1000C9F54(v616, v618, v619, v620, v621, v622, v623, v624);
              v846 = v611;
              if (*(v613 + 1072) > v608)
              {
                if (*(v613 + 1176))
                {
                  v625 = (*(v613 + 1160) + 4 * v611);
                  v627 = *v625;
                  v626 = v625[1];
                }

                else
                {
                  v629 = (*(v613 + 1144) + 2 * v611);
                  v627 = *v629;
                  v626 = v629[1];
                }

                v628 = v626 - v627;
                v613 = v847;
                if (v628 >= 1)
                {
LABEL_588:
                  v852 = v628;
                  if (v616 >= 1)
                  {
                    v833 = v616 & 0x7FFFFFE0;
                    v630 = v616 & 0x7FFFFFFC;
                    if (v615)
                    {
                      v631 = 0;
                      v613 = v847;
                      while (1)
                      {
                        v643 = v631;
                        sub_100001370(v613, v611, v631, v862);
                        v645 = v862[0];
                        if (v616 >= 4)
                        {
                          break;
                        }

                        v646 = 0;
                        v647 = 0;
                        v648 = v616 + 1;
                        do
                        {
                          v647 += *(*v843 + 4 * v646) * *(v862[0] + v646);
                          ++v646;
                          --v648;
                        }

                        while (v648 > 1);
                        v649 = *v614 + v647;
                        if (qword_1001065A8 && *(qword_1001065A8 + 3740))
                        {
                          v649 += *v862[0] << 20;
                        }

                        if (v649 <= -524288)
                        {
                          v649 = -524288;
                        }

                        v617->i32[0] = (v649 + 0x80000) >> 20;
                        if (v616 != 1)
                        {
                          v650 = 0;
                          v651 = v843[1];
                          v652 = v616 + 1;
                          v653 = v645;
                          do
                          {
                            v655 = *v651++;
                            v654 = v655;
                            v656 = *v653++;
                            v650 += v654 * v656;
                            --v652;
                          }

                          while (v652 > 1);
                          v657 = v614[1] + v650;
                          if (qword_1001065A8 && *(qword_1001065A8 + 3740))
                          {
                            v657 += *(v645 + 1) << 20;
                          }

                          if (v657 <= -524288)
                          {
                            v657 = -524288;
                          }

                          v617->i32[1] = (v657 + 0x80000) >> 20;
                          if (v616 != 2)
                          {
                            v658 = 0;
                            v659 = v843[2];
                            v660 = v616 + 1;
                            v661 = v645;
                            do
                            {
                              v663 = *v659++;
                              v662 = v663;
                              v664 = *v661++;
                              v658 += v662 * v664;
                              --v660;
                            }

                            while (v660 > 1);
                            v665 = v614[2] + v658;
                            if (qword_1001065A8 && *(qword_1001065A8 + 3740))
                            {
                              v665 += *(v645 + 2) << 20;
                            }

                            if (v665 <= -524288)
                            {
                              v632 = -524288;
                            }

                            else
                            {
                              v632 = v665;
                            }

                            v617->i32[2] = (v632 + 0x80000) >> 20;
                          }
                        }

LABEL_595:
                        v613 = v847;
                        sub_1000036A0(v847, v617, v857);
                        LODWORD(v611) = v846;
                        sub_1000096A4(v847, v857, v846, v643, v633, v634, v635, v636);
                        sub_100009BC0(v847, v846, v643, v857, v637, v638, v639, v640, v641, v642);
                        v631 = (v643 + 1);
                        if (v631 == v852)
                        {
                          goto LABEL_688;
                        }
                      }

                      v666 = 0;
                      while (2)
                      {
                        v668 = v843[v666];
                        if (v616 >= 0x20)
                        {
                          v671 = 0uLL;
                          v672 = v668 + 4;
                          v673 = 0uLL;
                          v674 = v616 & 0x7FFFFFE0;
                          v675 = (v645 + 16);
                          v676 = 0uLL;
                          v677 = 0uLL;
                          v678 = 0uLL;
                          v679 = 0uLL;
                          v680 = 0uLL;
                          v681 = 0uLL;
                          do
                          {
                            v683 = v672[-2];
                            v682 = v672[-1];
                            v685 = v672[-4];
                            v684 = v672[-3];
                            v687 = v672[2];
                            v686 = v672[3];
                            v689 = *v672;
                            v688 = v672[1];
                            v672 += 8;
                            v690 = v675[-1];
                            v677 = vmlaq_s32(v677, v682, vqtbl1q_s8(v690, xmmword_1000F0C30));
                            v676 = vmlaq_s32(v676, v683, vqtbl1q_s8(v690, xmmword_1000F0C40));
                            v673 = vmlaq_s32(v673, v684, vqtbl1q_s8(v690, xmmword_1000F0C50));
                            v671 = vmlaq_s32(v671, v685, vqtbl1q_s8(v690, xmmword_1000F0C60));
                            v681 = vmlaq_s32(v681, v686, vqtbl1q_s8(*v675, xmmword_1000F0C30));
                            v680 = vmlaq_s32(v680, v687, vqtbl1q_s8(*v675, xmmword_1000F0C40));
                            v679 = vmlaq_s32(v679, v688, vqtbl1q_s8(*v675, xmmword_1000F0C50));
                            v678 = vmlaq_s32(v678, v689, vqtbl1q_s8(*v675, xmmword_1000F0C60));
                            v675 += 2;
                            v674 -= 32;
                          }

                          while (v674);
                          v644 = vaddq_s32(v680, v676);
                          v669 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v678, v671), v644), vaddq_s32(vaddq_s32(v679, v673), vaddq_s32(v681, v677))));
                          if (v833 != v616)
                          {
                            v670 = v616 & 0x7FFFFFE0;
                            v691 = v670;
                            if ((v616 & 0x1C) != 0)
                            {
                              goto LABEL_628;
                            }

                            goto LABEL_631;
                          }
                        }

                        else
                        {
                          v669 = 0;
                          v670 = 0;
LABEL_628:
                          v692 = v669;
                          v693 = (v645 + v670);
                          v694 = (v668 + 4 * v670);
                          v695 = v670 - (v616 & 0x7FFFFFFC);
                          do
                          {
                            v696 = *v694++;
                            v697 = v696;
                            v696.i32[0] = *v693++;
                            v644.i32[0] = v696.i32[0];
                            v644 = vmovl_u16(*&vmovl_u8(*v644.i8));
                            v692 = vmlaq_s32(v692, v697, v644);
                            v695 += 4;
                          }

                          while (v695);
                          v669 = vaddvq_s32(v692);
                          v691 = v616 & 0x7FFFFFFC;
                          if (v630 != v616)
                          {
LABEL_631:
                            v698 = (v645 + v691);
                            v699 = &v668->i32[v691];
                            v700 = v616 + 1 - v691;
                            do
                            {
                              v702 = *v699++;
                              v701 = v702;
                              v703 = *v698++;
                              v669 += v701 * v703;
                              --v700;
                            }

                            while (v700 > 1);
                          }
                        }

                        v667 = v614[v666] + v669;
                        if (qword_1001065A8 && *(qword_1001065A8 + 3740))
                        {
                          v667 += *(v645 + v666) << 20;
                        }

                        if (v667 <= -524288)
                        {
                          v667 = -524288;
                        }

                        v617->i32[v666++] = (v667 + 0x80000) >> 20;
                        if (v666 == v616)
                        {
                          goto LABEL_595;
                        }

                        continue;
                      }
                    }

                    v715 = 0;
                    v613 = v847;
                    while (1)
                    {
                      sub_100001370(v613, v611, v715, v862);
                      v724 = v862[0];
                      v840 = v715;
                      if (v616 >= 4)
                      {
                        break;
                      }

                      v725 = 0;
                      v726 = 0;
                      v727 = v616 + 1;
                      do
                      {
                        v726 += *(*v843 + 4 * v725) * *(v862[0] + v725);
                        ++v725;
                        --v727;
                      }

                      while (v727 > 1);
                      v728 = *v614 + v726;
                      if (qword_1001065A8 && *(qword_1001065A8 + 3740))
                      {
                        v728 += *v862[0] << 20;
                      }

                      if (v728 <= -524288)
                      {
                        v728 = -524288;
                      }

                      v617->i32[0] = (v728 + 0x80000) >> 20;
                      if (v616 != 1)
                      {
                        v729 = 0;
                        v730 = v843[1];
                        v731 = v616 + 1;
                        v732 = v724;
                        do
                        {
                          v734 = *v730++;
                          v733 = v734;
                          v735 = *v732++;
                          v729 += v733 * v735;
                          --v731;
                        }

                        while (v731 > 1);
                        v736 = v614[1] + v729;
                        if (qword_1001065A8 && *(qword_1001065A8 + 3740))
                        {
                          v736 += *(v724 + 1) << 20;
                        }

                        if (v736 <= -524288)
                        {
                          v736 = -524288;
                        }

                        v617->i32[1] = (v736 + 0x80000) >> 20;
                        if (v616 != 2)
                        {
                          v737 = 0;
                          v738 = v843[2];
                          v739 = v616 + 1;
                          v740 = v724;
                          do
                          {
                            v742 = *v738++;
                            v741 = v742;
                            v743 = *v740++;
                            v737 += v741 * v743;
                            --v739;
                          }

                          while (v739 > 1);
                          v744 = v614[2] + v737;
                          if (qword_1001065A8 && *(qword_1001065A8 + 3740))
                          {
                            v744 += *(v724 + 2) << 20;
                          }

                          if (v744 <= -524288)
                          {
                            v716 = -524288;
                          }

                          else
                          {
                            v716 = v744;
                          }

                          v617->i32[2] = (v716 + 0x80000) >> 20;
                        }
                      }

LABEL_645:
                      v613 = v847;
                      sub_1000036A0(v847, v617, v857);
                      LODWORD(v611) = v846;
                      sub_100009BC0(v847, v846, v715++, v857, v717, v718, v719, v720, v721, v722);
                      if (v840 + 1 == v852)
                      {
                        goto LABEL_688;
                      }
                    }

                    v745 = 0;
                    while (2)
                    {
                      v747 = v843[v745];
                      if (v616 >= 0x20)
                      {
                        v750 = 0uLL;
                        v751 = v747 + 4;
                        v752 = 0uLL;
                        v753 = v616 & 0x7FFFFFE0;
                        v754 = (v724 + 16);
                        v755 = 0uLL;
                        v756 = 0uLL;
                        v757 = 0uLL;
                        v758 = 0uLL;
                        v759 = 0uLL;
                        v760 = 0uLL;
                        do
                        {
                          v762 = v751[-2];
                          v761 = v751[-1];
                          v764 = v751[-4];
                          v763 = v751[-3];
                          v766 = v751[2];
                          v765 = v751[3];
                          v768 = *v751;
                          v767 = v751[1];
                          v751 += 8;
                          v769 = v754[-1];
                          v756 = vmlaq_s32(v756, v761, vqtbl1q_s8(v769, xmmword_1000F0C30));
                          v755 = vmlaq_s32(v755, v762, vqtbl1q_s8(v769, xmmword_1000F0C40));
                          v752 = vmlaq_s32(v752, v763, vqtbl1q_s8(v769, xmmword_1000F0C50));
                          v750 = vmlaq_s32(v750, v764, vqtbl1q_s8(v769, xmmword_1000F0C60));
                          v760 = vmlaq_s32(v760, v765, vqtbl1q_s8(*v754, xmmword_1000F0C30));
                          v759 = vmlaq_s32(v759, v766, vqtbl1q_s8(*v754, xmmword_1000F0C40));
                          v758 = vmlaq_s32(v758, v767, vqtbl1q_s8(*v754, xmmword_1000F0C50));
                          v757 = vmlaq_s32(v757, v768, vqtbl1q_s8(*v754, xmmword_1000F0C60));
                          v754 += 2;
                          v753 -= 32;
                        }

                        while (v753);
                        v723 = vaddq_s32(v759, v755);
                        v748 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v757, v750), v723), vaddq_s32(vaddq_s32(v758, v752), vaddq_s32(v760, v756))));
                        if (v833 != v616)
                        {
                          v749 = v616 & 0x7FFFFFE0;
                          v770 = v749;
                          if ((v616 & 0x1C) != 0)
                          {
                            goto LABEL_678;
                          }

                          goto LABEL_681;
                        }
                      }

                      else
                      {
                        v748 = 0;
                        v749 = 0;
LABEL_678:
                        v771 = v748;
                        v772 = (v724 + v749);
                        v773 = (v747 + 4 * v749);
                        v774 = v749 - (v616 & 0x7FFFFFFC);
                        do
                        {
                          v775 = *v773++;
                          v776 = v775;
                          v775.i32[0] = *v772++;
                          v723.i32[0] = v775.i32[0];
                          v723 = vmovl_u16(*&vmovl_u8(*v723.i8));
                          v771 = vmlaq_s32(v771, v776, v723);
                          v774 += 4;
                        }

                        while (v774);
                        v748 = vaddvq_s32(v771);
                        v770 = v616 & 0x7FFFFFFC;
                        if (v630 != v616)
                        {
LABEL_681:
                          v777 = (v724 + v770);
                          v778 = &v747->i32[v770];
                          v779 = v616 + 1 - v770;
                          do
                          {
                            v781 = *v778++;
                            v780 = v781;
                            v782 = *v777++;
                            v748 += v780 * v782;
                            --v779;
                          }

                          while (v779 > 1);
                        }
                      }

                      v746 = v614[v745] + v748;
                      if (qword_1001065A8 && *(qword_1001065A8 + 3740))
                      {
                        v746 += *(v724 + v745) << 20;
                      }

                      if (v746 <= -524288)
                      {
                        v746 = -524288;
                      }

                      v617->i32[v745++] = (v746 + 0x80000) >> 20;
                      if (v745 == v616)
                      {
                        goto LABEL_645;
                      }

                      continue;
                    }
                  }

                  if (v615)
                  {
                    v704 = 0;
                    v613 = v847;
                    do
                    {
                      sub_100001370(v847, v611, v704, v862);
                      sub_1000036A0(v847, v617, v857);
                      sub_1000096A4(v847, v857, v611, v704, v705, v706, v707, v708);
                      sub_100009BC0(v847, v611, v704, v857, v709, v710, v711, v712, v713, v714);
                      v704 = (v704 + 1);
                    }

                    while (v852 != v704);
                  }

                  else
                  {
                    v613 = v847;
                    do
                    {
                      sub_100001370(v847, v611, v615, v862);
                      sub_1000036A0(v847, v617, v857);
                      sub_100009BC0(v847, v611, v615++, v857, v783, v784, v785, v786, v787, v788);
                    }

                    while (v852 != v615);
                  }
                }

LABEL_688:
                sub_1000CA03C(v857, v616);
                sub_1000CA03C(v617, 4 * v616);
                goto LABEL_572;
              }

              v628 = 1;
              goto LABEL_588;
            }
          }

          else
          {
            sub_100007618(v535, v611, v29, v30, v31, v32, v33, v34);
          }

LABEL_572:
          LOWORD(v609) = v611 + 1;
          v608 = (v611 + 1);
          v535 = v613;
        }

        while (*(v613 + 1072) > v608);
      }
    }

    *(v535 + 292) = 0;
    v1 = v535;
LABEL_690:
    v607 = qword_1001065A8;
    if (qword_1001065A8)
    {
      goto LABEL_691;
    }

    goto LABEL_694;
  }

  v800 = v40;
  if (*(v1 + 1072) >= 1)
  {
    v543 = 0;
    LOWORD(v544) = 0;
    while (1)
    {
      if (*(v1 + 268))
      {
        v545 = v544 == 0;
      }

      else
      {
        v545 = 1;
      }

      v546 = v544;
      if (v545)
      {
        v544 = v544;
      }

      else
      {
        v544 = 1;
      }

      v547 = *(*(v1 + 496) + v544);
      if (v547 == -2)
      {
        goto LABEL_525;
      }

      if ((~v547 & 0xFFFFFFFD) != 0)
      {
        break;
      }

      sub_100007618(v1, v546, v29, v30, v31, v32, v33, v34);
LABEL_525:
      LOWORD(v544) = v546 + 1;
      v543 = (v546 + 1);
      if (*(v1 + 1072) <= v543)
      {
        goto LABEL_564;
      }
    }

    if (!*(*(v1 + 360) + 4 * v547))
    {
      goto LABEL_525;
    }

    v548 = *(v532 + 8 * v547);
    v861 = *(v533 + 8 * v547);
    v862[0] = 0;
    v549 = *(v1 + 1432);
    v550 = !v549 || *(v549 + 24) == 0;
    v845 = v550;
    if (!v861)
    {
      goto LABEL_525;
    }

    v551 = *(v1 + 1100);
    v552 = sub_1000C9F54(8 * v551, v28, v29, v30, v31, v32, v33, v34);
    v560 = sub_1000C9F54(8 * v551, v553, v554, v555, v556, v557, v558, v559);
    v856 = sub_1000C9F54(v551, v561, v562, v563, v564, v565, v566, v567);
    v842 = 8 * v551;
    if (*(v1 + 1072) <= v543)
    {
      v571 = 1;
    }

    else
    {
      if (*(v1 + 1176))
      {
        v568 = (*(v1 + 1160) + 4 * v546);
        v570 = *v568;
        v569 = v568[1];
      }

      else
      {
        v572 = (*(v1 + 1144) + 2 * v546);
        v570 = *v572;
        v569 = v572[1];
      }

      v571 = v569 - v570;
      v1 = v847;
      if (v571 < 1)
      {
LABEL_563:
        sub_1000CA03C(v856, v551);
        sub_1000CA03C(v560, v842);
        sub_1000CA03C(v552, v842);
        goto LABEL_525;
      }
    }

    v851 = v571;
    if (v551 < 1)
    {
      if (v845)
      {
        v589 = 0;
        v1 = v847;
        do
        {
          sub_100001370(v847, v546, v589, v862);
          sub_1000BEB6C(v861, v552, v560);
          sub_100003508(v847, v560, v856);
          sub_100009BC0(v847, v546, v589++, v856, v590, v591, v592, v593, v594, v595);
        }

        while (v851 != v589);
      }

      else
      {
        v596 = 0;
        v1 = v847;
        do
        {
          sub_100001370(v847, v546, v596, v862);
          sub_1000BEB6C(v861, v552, v560);
          sub_100003508(v847, v560, v856);
          sub_1000096A4(v847, v856, v546, v596, v597, v598, v599, v600);
          sub_100009BC0(v847, v546, v596, v856, v601, v602, v603, v604, v605, v606);
          v596 = (v596 + 1);
        }

        while (v851 != v596);
      }
    }

    else
    {
      v573 = 0;
      v1 = v847;
      do
      {
        sub_100001370(v1, v546, v573, v862);
        for (mm = 0; mm != v551; ++mm)
        {
          LOBYTE(v574) = *(v862[0] + mm);
          v574 = *&v574;
          *&v552[mm] = v574;
        }

        sub_1000BEB6C(v861, v552, v560);
        for (nn = 0; nn != v551; ++nn)
        {
          v577 = v560->f64[nn];
          v578 = *(v548 + 8 * nn) + v577;
          v560->f64[nn] = v578;
          if (qword_1001065A8 && *(qword_1001065A8 + 3740))
          {
            LOBYTE(v577) = *(v862[0] + nn);
            v560->f64[nn] = v578 + *&v577;
          }
        }

        v1 = v847;
        sub_100003508(v847, v560, v856);
        if (!v845)
        {
          sub_1000096A4(v847, v856, v546, v573, v579, v580, v581, v582);
        }

        sub_100009BC0(v847, v546, v573, v856, v583, v584, v585, v586, v587, v588);
        v573 = (v573 + 1);
      }

      while (v573 != v851);
    }

    goto LABEL_563;
  }

LABEL_564:
  *(v1 + 292) = v800;
  if (!v800)
  {
    goto LABEL_690;
  }

  if (*(v1 + 1032))
  {
    *(v1 + 136) = *(v1 + 152);
    v607 = qword_1001065A8;
    if (qword_1001065A8)
    {
      goto LABEL_691;
    }
  }

  else
  {
    *(v1 + 16) = *(v1 + 24);
    v607 = qword_1001065A8;
    if (qword_1001065A8)
    {
LABEL_691:
      if (*(v607 + 1064))
      {
        v789 = *(v1 + 1736);
        if (v789)
        {
          v789(v1, 0);
        }
      }
    }
  }

LABEL_694:
  sub_10007DCCC(v1);
  return 1;
}

uint64_t sub_10007DCCC(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 8 * v2;
    do
    {
      v5 = *(a1 + 392);
      if (v5)
      {
        sub_1000BE244(*(v5 + v3));
        *(*(a1 + 392) + v3) = 0;
      }

      v6 = *(a1 + 400);
      if (v6)
      {
        sub_1000BFEC4(*(v6 + v3));
        *(*(a1 + 400) + v3) = 0;
      }

      v7 = *(a1 + 416);
      if (v7)
      {
        sub_1000C02DC(*(v7 + v3));
        *(*(a1 + 416) + v3) = 0;
      }

      v8 = *(a1 + 424);
      if (v8)
      {
        sub_1000BFEC4(*(v8 + v3));
        *(*(a1 + 424) + v3) = 0;
      }

      v3 += 8;
    }

    while (v4 != v3);
  }

  sub_1000BFEC4(*(a1 + 392));
  *(a1 + 392) = 0;
  sub_1000BFEC4(*(a1 + 400));
  *(a1 + 400) = 0;
  sub_1000BFEC4(*(a1 + 360));
  *(a1 + 360) = 0;
  sub_1000BFEC4(*(a1 + 416));
  *(a1 + 416) = 0;
  sub_1000BFEC4(*(a1 + 424));
  *(a1 + 424) = 0;
  sub_1000C02DC(*(a1 + 432));
  *(a1 + 432) = 0;
  sub_1000C02DC(*(a1 + 440));
  *(a1 + 440) = 0;
  sub_1000BE244(*(a1 + 304));
  sub_1000BE244(*(a1 + 312));
  sub_1000BE244(*(a1 + 320));
  sub_1000BE244(*(a1 + 336));
  sub_1000BE244(*(a1 + 328));
  sub_1000BE244(*(a1 + 368));
  sub_1000BE244(*(a1 + 376));
  sub_1000BE244(*(a1 + 384));
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  sub_1000BFEC4(*(a1 + 344));
  *(a1 + 344) = 0;
  sub_1000BFEC4(*(a1 + 352));
  *(a1 + 352) = 0;
  result = sub_1000BFEC4(*(a1 + 408));
  *(a1 + 408) = 0;
  return result;
}

uint64_t sub_10007DE48(uint64_t a1)
{
  v2 = sub_1000BD5C4(*(a1 + 256), 0xFFFFFFFF);
  v3 = sub_1000BD5C4(*(a1 + 248), v2);
  v4 = sub_1000BD5C4(*(a1 + 252), v3);
  v5 = sub_1000BD5C4(*(a1 + 260), v4);
  v6 = sub_1000BD5C4(*(a1 + 264), v5);
  v7 = sub_1000BD5C4(*(a1 + 288), v6);
  v8 = *(a1 + 496);
  if (v8)
  {
    if (*(a1 + 1072) >= 1)
    {
      v7 = sub_1000BD5C4(*v8, v7);
      if (*(a1 + 1072) >= 2)
      {
        v9 = 1;
        do
        {
          if (*(a1 + 268))
          {
            v10 = 1;
          }

          else
          {
            v10 = v9;
          }

          v7 = sub_1000BD5C4(*(*(a1 + 496) + v10), v7);
          ++v9;
        }

        while (v9 < *(a1 + 1072));
      }
    }
  }

  if (*(a1 + 488) && *(a1 + 288) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (*(a1 + 488) + v11);
      v7 = sub_1000BD5C4(v13[2], v7);
      if (v13[2])
      {
        v14 = sub_1000BD5C4(*v13, v7);
        v7 = sub_1000BD5C4(v13[1], v14);
      }

      ++v12;
      v11 += 12;
    }

    while (v12 < *(a1 + 288));
  }

  return v7;
}

double sub_10007DF88(uint64_t a1, unsigned __int8 a2, int a3, int a4)
{
  v6 = *(a1 + 1072);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    LOWORD(v9) = 0;
    v10 = a2;
    v11 = *(a1 + 1432);
    v12 = a4 | a3;
    v13.i64[0] = 0x100000001;
    v13.i64[1] = 0x100000001;
    v14 = 1;
    while (1)
    {
      if (*(a1 + 268))
      {
        v15 = v9 == 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = v9;
      if (v15)
      {
        v9 = v9;
      }

      else
      {
        v9 = 1;
      }

      if (*(*(a1 + 496) + v9) != v10)
      {
        goto LABEL_4;
      }

      v17 = *(*v11 + 8 * v16);
      if (*(*(a1 + 1432) + 28))
      {
        if (v16 != sub_10000119C(a1))
        {
          v21 = 1;
          v13.i64[0] = 0x100000001;
          v13.i64[1] = 0x100000001;
          if (v17)
          {
            v24 = 1;
          }

          else
          {
            v24 = v12 == 0;
          }

          if (!v24)
          {
            goto LABEL_4;
          }

          goto LABEL_42;
        }

        v6 = *(a1 + 1072);
        v13.i64[0] = 0x100000001;
        v13.i64[1] = 0x100000001;
      }

      if (v6 <= v7)
      {
        v21 = 1;
        if (v17)
        {
          v22 = 1;
        }

        else
        {
          v22 = v12 == 0;
        }

        if (!v22)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (*(a1 + 1176))
        {
          v18 = (*(a1 + 1160) + 4 * v16);
          v20 = *v18;
          v19 = v18[1];
        }

        else
        {
          v26 = (*(a1 + 1144) + 2 * v16);
          v20 = *v26;
          v19 = v26[1];
        }

        v21 = v19 - v20;
        if (v17)
        {
          v27 = 1;
        }

        else
        {
          v27 = v12 == 0;
        }

        if (!v27 || v19 == v20)
        {
          goto LABEL_4;
        }
      }

LABEL_42:
      if (v21 >= 1)
      {
        if (!v17)
        {
          goto LABEL_51;
        }

        v29 = *(v17 + 8);
        if (a3)
        {
          v30 = v21;
          if (v12)
          {
            if (v21 < 4)
            {
              v31 = 0;
LABEL_67:
              v47 = &v29->i16[v31];
              v48 = v30 - v31;
              do
              {
                v14 = 0;
                v49 = *v47++;
                v8 += v49;
                --v48;
              }

              while (v48);
              goto LABEL_4;
            }

            if (v21 < 0x10)
            {
              v31 = 0;
              goto LABEL_64;
            }

            v31 = v21 & 0x7FFFFFF0;
            v35 = 0uLL;
            v36 = v8;
            v37 = v29 + 1;
            v38 = v30 & 0x7FFFFFF0;
            v39 = 0uLL;
            v40 = 0uLL;
            do
            {
              v41 = v37[-1];
              v35 = vaddw_high_s16(v35, v41);
              v36 = vaddw_s16(v36, *v41.i8);
              v40 = vaddw_high_s16(v40, *v37);
              v39 = vaddw_s16(v39, *v37->i8);
              v37 += 2;
              v38 -= 16;
            }

            while (v38);
            v8 = vaddvq_s32(vaddq_s32(vaddq_s32(v39, v36), vaddq_s32(v40, v35)));
            if (v31 != v30)
            {
              if ((v30 & 0xC) == 0)
              {
                goto LABEL_67;
              }

LABEL_64:
              v42 = v31;
              v31 = v30 & 0x7FFFFFFC;
              v43 = v8;
              v44 = (v29 + 2 * v42);
              v45 = v42 - v31;
              do
              {
                v46 = *v44++;
                v43 = vaddw_s16(v43, v46);
                v45 += 4;
              }

              while (v45);
              v8 = vaddvq_s32(v43);
              if (v31 != v30)
              {
                goto LABEL_67;
              }
            }
          }

          else
          {
            if (v21 < 4)
            {
              v34 = 0;
LABEL_89:
              v78 = &v29->i16[v34];
              v79 = v30 - v34;
              do
              {
                v14 = 0;
                v80 = *v78++;
                v8 += v80;
                --v79;
              }

              while (v79);
              goto LABEL_4;
            }

            if (v21 < 0x10)
            {
              v34 = 0;
              goto LABEL_86;
            }

            v34 = v21 & 0x7FFFFFF0;
            v66 = 0uLL;
            v67 = v8;
            v68 = v29 + 1;
            v69 = v30 & 0x7FFFFFF0;
            v70 = 0uLL;
            v71 = 0uLL;
            do
            {
              v72 = v68[-1];
              v66 = vaddw_high_s16(v66, v72);
              v67 = vaddw_s16(v67, *v72.i8);
              v71 = vaddw_high_s16(v71, *v68);
              v70 = vaddw_s16(v70, *v68->i8);
              v68 += 2;
              v69 -= 16;
            }

            while (v69);
            v8 = vaddvq_s32(vaddq_s32(vaddq_s32(v70, v67), vaddq_s32(v71, v66)));
            if (v34 != v30)
            {
              if ((v30 & 0xC) == 0)
              {
                goto LABEL_89;
              }

LABEL_86:
              v73 = v34;
              v34 = v30 & 0x7FFFFFFC;
              v74 = v8;
              v75 = (v29 + 2 * v73);
              v76 = v73 - v34;
              do
              {
                v77 = *v75++;
                v74 = vaddw_s16(v74, v77);
                v76 += 4;
              }

              while (v76);
              v8 = vaddvq_s32(v74);
              if (v34 != v30)
              {
                goto LABEL_89;
              }
            }
          }
        }

        else
        {
          if (!v12)
          {
LABEL_51:
            v14 = 0;
            v8 += v21;
            goto LABEL_4;
          }

          v32 = v21;
          if (v21 < 4)
          {
            v33 = 0;
LABEL_77:
            v63 = v29 + v33;
            v64 = v32 - v33;
            do
            {
              v14 = 0;
              if (*v63++)
              {
                ++v8;
              }

              --v64;
            }

            while (v64);
            goto LABEL_4;
          }

          if (v21 < 0x10)
          {
            v33 = 0;
            goto LABEL_74;
          }

          v33 = v21 & 0x7FFFFFF0;
          v50 = 0uLL;
          v51 = v8;
          v52 = v29 + 1;
          v53 = v32 & 0x7FFFFFF0;
          v54 = 0uLL;
          v55 = 0uLL;
          do
          {
            v56 = vtstq_s16(v52[-1], v52[-1]);
            v57 = vtstq_s16(*v52, *v52);
            v50 = vaddq_s32(v50, vandq_s8(vmovl_high_u16(v56), v13));
            v51 = vaddq_s32(v51, vandq_s8(vmovl_u16(*v56.i8), v13));
            v55 = vaddq_s32(v55, vandq_s8(vmovl_high_u16(v57), v13));
            v54 = vaddq_s32(v54, vandq_s8(vmovl_u16(*v57.i8), v13));
            v52 += 2;
            v53 -= 16;
          }

          while (v53);
          v8 = vaddvq_s32(vaddq_s32(vaddq_s32(v54, v51), vaddq_s32(v55, v50)));
          if (v33 != v32)
          {
            if ((v32 & 0xC) == 0)
            {
              goto LABEL_77;
            }

LABEL_74:
            v58 = v33;
            v33 = v32 & 0x7FFFFFFC;
            v59 = v8;
            v60 = (v29 + 2 * v58);
            v61 = v58 - v33;
            do
            {
              v62 = *v60++;
              v59 = vaddq_s32(v59, vandq_s8(vmovl_u16(vtst_s16(v62, v62)), v13));
              v61 += 4;
            }

            while (v61);
            v8 = vaddvq_s32(v59);
            if (v33 != v32)
            {
              goto LABEL_77;
            }
          }
        }
      }

      v14 = 0;
LABEL_4:
      LOWORD(v9) = v16 + 1;
      v7 = (v16 + 1);
      v6 = *(a1 + 1072);
      if (v6 <= v7)
      {
        result = v8;
        v82 = v14 == 0;
        if (a3)
        {
          goto LABEL_93;
        }

        goto LABEL_94;
      }
    }
  }

  v82 = 0;
  result = 0.0;
  if (a3)
  {
LABEL_93:
    result = result / *(a1 + 1404);
  }

LABEL_94:
  if (a3)
  {
    v82 = 1;
  }

  if (!v82)
  {
    return -1.0;
  }

  return result;
}

void *sub_10007E41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v276 = a6;
  v282 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 1100);
  v273 = *(a1 + 1432);
  v13 = 4 * v12;
  v284 = sub_1000C9FC0(4 * v12, a2, a3, a4, a5, a6, a7, a8);
  v281 = v12;
  v21 = 2 * v12;
  if (v8)
  {
    v283 = sub_1000C9FC0(v13, v14, v15, v16, v17, v18, v19, v20);
    v285 = sub_1000C9FC0(v21, v22, v23, v24, v25, v26, v27, v28);
    v287[0] = 0;
    v29 = *(a1 + 1072);
    if (v29 < 1)
    {
      goto LABEL_220;
    }
  }

  else
  {
    v285 = 0;
    v283 = 0;
    v287[0] = 0;
    v29 = *(a1 + 1072);
    if (v29 < 1)
    {
      goto LABEL_220;
    }
  }

  v269 = v21;
  v270 = v13;
  v30 = 0;
  v31 = 0;
  LOWORD(v32) = 0;
  v279 = v10;
  v33 = 4 * v281;
  v34 = &v284->i8[v33];
  v35 = (v285 + 2 * v281);
  v36 = (v283 + v33);
  v38 = v283 < &v284->i8[v33] && v284 < v36;
  v275 = v36;
  if (v283 < v35 && v285 < v36)
  {
    v38 = 1;
  }

  v274 = v38;
  v280 = v34;
  v41 = v284 < v35 && v285 < v34;
  v278 = v41;
  v277 = v281 & 0x7FFFFFF0;
  v272 = v281 & 0x7FFFFFFC;
  do
  {
    if (*(a1 + 268))
    {
      v42 = v32 == 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = v32;
    if (v42)
    {
      v32 = v32;
    }

    else
    {
      v32 = 1;
    }

    if (*(*(a1 + 496) + v32) != v279)
    {
      goto LABEL_23;
    }

    v286 = *(*v273 + 8 * v43);
    if (*(*(a1 + 1432) + 28))
    {
      if (v43 != sub_10000119C(a1))
      {
        goto LABEL_44;
      }

      v29 = *(a1 + 1072);
    }

    if (v29 <= v30)
    {
LABEL_44:
      v44 = 1;
      if (v286)
      {
        v47 = 1;
      }

      else
      {
        v47 = v9 == 0;
      }

      if (!v47)
      {
        goto LABEL_23;
      }

LABEL_51:
      v49 = v44;
      if (v285)
      {
        v50 = 0;
        while (1)
        {
          if (v9)
          {
            v51 = *(*(v286 + 8) + 2 * v50);
            if (!v8)
            {
              goto LABEL_87;
            }
          }

          else
          {
            v51 = 1;
            if (!v8)
            {
              goto LABEL_87;
            }
          }

          v52 = *(a1 + 1100);
          v53 = sub_100001FC8(a1, v43, v50);
          if (v52 < 1)
          {
            goto LABEL_87;
          }

          if (v282)
          {
            v54 = 0;
            if (v52 < 4 || v285 - v53 < 0x20)
            {
LABEL_75:
              v66 = v52 - v54;
              v67 = 2 * v54;
              v68 = &v285->i16[v54];
              v69 = (v53 + v67);
              do
              {
                v70 = *v69++;
                *v68++ = v70;
                --v66;
              }

              while (v66);
              goto LABEL_87;
            }

            if (v52 >= 0x10)
            {
              v54 = v52 & 0x7FFFFFF0;
              v57 = (v53 + 16);
              v58 = v54;
              v59 = v285 + 1;
              do
              {
                v60 = *v57;
                v59[-1] = v57[-1];
                *v59 = v60;
                v57 += 2;
                v59 += 2;
                v58 -= 16;
              }

              while (v58);
              if (v54 == v52)
              {
                goto LABEL_87;
              }

              if ((v52 & 0xC) == 0)
              {
                goto LABEL_75;
              }
            }

            else
            {
              v54 = 0;
            }

            v61 = v54;
            v54 = v52 & 0x7FFFFFFC;
            v62 = (v53 + 2 * v61);
            v63 = (v285->i64 + 2 * v61);
            v64 = v61 - v54;
            do
            {
              v65 = *v62++;
              *v63++ = v65;
              v64 += 4;
            }

            while (v64);
            if (v54 != v52)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v55 = *(v53 + 2 * v276);
            if (v52 < 4)
            {
              v56 = 0;
LABEL_85:
              v78 = v52 - v56;
              v79 = &v285->i16[v56];
              do
              {
                *v79++ = v55;
                --v78;
              }

              while (v78);
              goto LABEL_87;
            }

            if (v52 >= 0x10)
            {
              v56 = v52 & 0x7FFFFFF0;
              v71 = vdupq_n_s16(v55);
              v72 = v56;
              v73 = &v285[1];
              do
              {
                v73[-1] = v71;
                *v73 = v71;
                v73 += 2;
                v72 -= 16;
              }

              while (v72);
              if (v56 == v52)
              {
                goto LABEL_87;
              }

              if ((v52 & 0xC) == 0)
              {
                goto LABEL_85;
              }
            }

            else
            {
              v56 = 0;
            }

            v74 = v56;
            v56 = v52 & 0x7FFFFFFC;
            v75 = vdup_n_s16(v55);
            v76 = (v285 + 2 * v74);
            v77 = v74 - v56;
            do
            {
              *v76++ = v75;
              v77 += 4;
            }

            while (v77);
            if (v56 != v52)
            {
              goto LABEL_85;
            }
          }

LABEL_87:
          if (!v51)
          {
            goto LABEL_53;
          }

          v31 += v51;
          sub_100001370(a1, v43, v50, v287);
          if (v281 < 1)
          {
            goto LABEL_53;
          }

          v81 = v287[0];
          v82 = 2 * v51;
          v83.i64[0] = 0x1000000010;
          v83.i64[1] = 0x1000000010;
          if (v283)
          {
            if (v281 < 4)
            {
              goto LABEL_103;
            }

            v84 = v283 >= v287[0] + v281 || v287[0] >= v275;
            v85 = v274;
            if (!v84)
            {
              v85 = 1;
            }

            v86 = v284 >= v287[0] + v281 || v287[0] >= v280;
            v87 = v86 ? v85 : 1;
            if ((v87 | v278))
            {
LABEL_103:
              v88 = 0;
LABEL_104:
              v89 = v281 - v88;
              v90 = &v284->i32[v88];
              v91 = (v81 + v88);
              v92 = &v283->i32[v88];
              v93 = v285 + v88;
              do
              {
                v94 = v82 * *v93;
                v95 = v94 + 16;
                v46 = v94 < -16;
                v96 = v94 + 47;
                if (!v46)
                {
                  v96 = v95;
                }

                *v92++ += v96 >> 5;
                v98 = *v93++;
                v97 = v98;
                v99 = *v91++;
                v100 = v82 * v97 * v99;
                v101 = v100 + 16;
                v46 = v100 < -16;
                v102 = v100 + 47;
                if (!v46)
                {
                  v102 = v101;
                }

                *v90++ += v102 >> 5;
                --v89;
              }

              while (v89);
              goto LABEL_53;
            }

            v116 = vdupq_n_s32(v82);
            if (v281 >= 0x10)
            {
              v119 = v281 & 0x7FFFFFF0;
              v121 = v283;
              v120 = v284;
              v122 = v287[0];
              v123 = v285;
              do
              {
                v125 = *v123;
                v124 = v123[1];
                v123 += 2;
                v126 = vmovl_u16(*v125.i8);
                v127 = vmovl_high_u16(v124);
                v128 = vmulq_s32(v116, vmovl_high_u16(v125));
                v129 = vmulq_s32(v116, vmovl_u16(*v124.i8));
                v130 = vmulq_s32(v116, v127);
                v131 = vmulq_s32(v116, v126);
                v132 = vaddq_s32(v131, v83);
                v133 = vaddq_s32(v130, v83);
                v134 = vaddq_s32(v129, v83);
                v135 = vaddq_s32(v128, v83);
                v136 = vsraq_n_s32(*v121, vsraq_n_u32(v132, vcltzq_s32(v132), 0x1BuLL), 5uLL);
                v137 = vsraq_n_s32(v121[3], vsraq_n_u32(v133, vcltzq_s32(v133), 0x1BuLL), 5uLL);
                v138 = vsraq_n_s32(v121[1], vsraq_n_u32(v135, vcltzq_s32(v135), 0x1BuLL), 5uLL);
                v121[2] = vsraq_n_s32(v121[2], vsraq_n_u32(v134, vcltzq_s32(v134), 0x1BuLL), 5uLL);
                v121[3] = v137;
                *v121 = v136;
                v121[1] = v138;
                v121 += 4;
                v139 = *v122++;
                v140.i64[0] = 0x1000000010;
                v140.i64[1] = 0x1000000010;
                v141 = vmlaq_s32(v140, v131, vqtbl1q_s8(v139, xmmword_1000F0C60));
                v131.i64[0] = 0x1000000010;
                v131.i64[1] = 0x1000000010;
                v142 = vmlaq_s32(v131, v130, vqtbl1q_s8(v139, xmmword_1000F0C30));
                v130.i64[0] = 0x1000000010;
                v130.i64[1] = 0x1000000010;
                v143 = vmlaq_s32(v130, v129, vqtbl1q_s8(v139, xmmword_1000F0C40));
                v129.i64[0] = 0x1000000010;
                v129.i64[1] = 0x1000000010;
                v144 = vmlaq_s32(v129, v128, vqtbl1q_s8(v139, xmmword_1000F0C50));
                v145 = vsraq_n_s32(*v120, vsraq_n_u32(v141, vcltzq_s32(v141), 0x1BuLL), 5uLL);
                v146 = vsraq_n_s32(v120[3], vsraq_n_u32(v142, vcltzq_s32(v142), 0x1BuLL), 5uLL);
                v147 = vsraq_n_s32(v120[1], vsraq_n_u32(v144, vcltzq_s32(v144), 0x1BuLL), 5uLL);
                v120[2] = vsraq_n_s32(v120[2], vsraq_n_u32(v143, vcltzq_s32(v143), 0x1BuLL), 5uLL);
                v120[3] = v146;
                *v120 = v145;
                v120[1] = v147;
                v120 += 4;
                v119 -= 16;
              }

              while (v119);
              v117 = v281 & 0x7FFFFFF0;
              if (v277 == v281)
              {
                goto LABEL_53;
              }

              v88 = v281 & 0x7FFFFFF0;
              if ((v281 & 0xC) == 0)
              {
                goto LABEL_104;
              }
            }

            else
            {
              v117 = 0;
            }

            v148 = (v285 + 2 * v117);
            v149 = (v283 + 4 * v117);
            v150 = (v81 + v117);
            v151 = (v284 + 4 * v117);
            v152 = v117 - (v281 & 0x7FFFFFFC);
            do
            {
              v153 = *v148++;
              v154 = vmulq_s32(v116, vmovl_u16(v153));
              v155 = vaddq_s32(v154, v83);
              v156 = vsraq_n_u32(v155, vcltzq_s32(v155), 0x1BuLL);
              *v149 = vsraq_n_s32(*v149, v156, 5uLL);
              ++v149;
              v153.i32[0] = *v150++;
              v156.i32[0] = v153.i32[0];
              v157.i64[0] = 0x1000000010;
              v157.i64[1] = 0x1000000010;
              v158 = vmlaq_s32(v157, v154, vmovl_u16(*&vmovl_u8(*v156.i8)));
              *v151 = vsraq_n_s32(*v151, vsraq_n_u32(v158, vcltzq_s32(v158), 0x1BuLL), 5uLL);
              ++v151;
              v152 += 4;
            }

            while (v152);
            v88 = v281 & 0x7FFFFFFC;
            if (v272 != v281)
            {
              goto LABEL_104;
            }
          }

          else
          {
            if (v281 < 4)
            {
              goto LABEL_118;
            }

            v103 = v284 >= v287[0] + v281 || v287[0] >= v280;
            v104 = v278;
            if (!v103)
            {
              v104 = 1;
            }

            if (v104)
            {
LABEL_118:
              v105 = 0;
LABEL_119:
              v106 = v281 - v105;
              v107 = &v284->i32[v105];
              v108 = (v81 + v105);
              v109 = v285 + v105;
              do
              {
                v111 = *v109++;
                v110 = v111;
                v112 = *v108++;
                v113 = v82 * v110 * v112;
                v114 = v113 + 16;
                v46 = v113 < -16;
                v115 = v113 + 47;
                if (!v46)
                {
                  v115 = v114;
                }

                *v107++ += v115 >> 5;
                --v106;
              }

              while (v106);
              goto LABEL_53;
            }

            if (v281 >= 0x10)
            {
              v159 = vdupq_n_s32(v82);
              v160 = v281 & 0x7FFFFFF0;
              v161 = v284;
              v162 = v285;
              v163 = v287[0];
              do
              {
                v165 = *v162;
                v164 = v162[1];
                v162 += 2;
                v166 = vmovl_high_u16(v165);
                v167 = vmovl_u16(*v164.i8);
                v168 = *v163++;
                v169.i64[0] = 0x1000000010;
                v169.i64[1] = 0x1000000010;
                v170 = vmlaq_s32(v169, vmulq_s32(v159, vmovl_u16(*v165.i8)), vqtbl1q_s8(v168, xmmword_1000F0C60));
                v165.i64[0] = 0x1000000010;
                v165.i64[1] = 0x1000000010;
                v171 = vmlaq_s32(v165, vmulq_s32(v159, vmovl_high_u16(v164)), vqtbl1q_s8(v168, xmmword_1000F0C30));
                v164.i64[0] = 0x1000000010;
                v164.i64[1] = 0x1000000010;
                v172 = vmlaq_s32(v164, vmulq_s32(v159, v167), vqtbl1q_s8(v168, xmmword_1000F0C40));
                v167.i64[0] = 0x1000000010;
                v167.i64[1] = 0x1000000010;
                v173 = vmlaq_s32(v167, vmulq_s32(v159, v166), vqtbl1q_s8(v168, xmmword_1000F0C50));
                v80 = vsraq_n_u32(v171, vcltzq_s32(v171), 0x1BuLL);
                v174 = v161[1];
                v175 = vsraq_n_s32(*v161, vsraq_n_u32(v170, vcltzq_s32(v170), 0x1BuLL), 5uLL);
                v176 = vsraq_n_s32(v161[3], v80, 5uLL);
                v161[2] = vsraq_n_s32(v161[2], vsraq_n_u32(v172, vcltzq_s32(v172), 0x1BuLL), 5uLL);
                v161[3] = v176;
                *v161 = v175;
                v161[1] = vsraq_n_s32(v174, vsraq_n_u32(v173, vcltzq_s32(v173), 0x1BuLL), 5uLL);
                v161 += 4;
                v160 -= 16;
              }

              while (v160);
              v105 = v281 & 0x7FFFFFF0;
              if (v277 == v281)
              {
                goto LABEL_53;
              }

              v118 = v281 & 0x7FFFFFF0;
              if ((v281 & 0xC) == 0)
              {
                goto LABEL_119;
              }
            }

            else
            {
              v118 = 0;
            }

            v177 = vdupq_n_s32(v82);
            v178 = (v285 + 2 * v118);
            v179 = (v81 + v118);
            v180 = v118 - (v281 & 0x7FFFFFFC);
            v181 = (v284 + 4 * v118);
            do
            {
              v182 = *v178++;
              v183 = vmovl_u16(v182);
              v182.i32[0] = *v179++;
              v80.i32[0] = v182.i32[0];
              v80 = vmovl_u16(*&vmovl_u8(*v80.i8));
              v184.i64[0] = 0x1000000010;
              v184.i64[1] = 0x1000000010;
              v185 = vmlaq_s32(v184, vmulq_s32(v177, v183), v80);
              *v181 = vsraq_n_s32(*v181, vsraq_n_u32(v185, vcltzq_s32(v185), 0x1BuLL), 5uLL);
              ++v181;
              v180 += 4;
            }

            while (v180);
            v105 = v281 & 0x7FFFFFFC;
            if (v272 != v281)
            {
              goto LABEL_119;
            }
          }

LABEL_53:
          if (++v50 == v49)
          {
            goto LABEL_23;
          }
        }
      }

      v186 = 0;
      while (1)
      {
        if (v9)
        {
          v187 = *(*(v286 + 8) + 2 * v186);
          if (!v8)
          {
            goto LABEL_179;
          }
        }

        else
        {
          v187 = 1;
          if (!v8)
          {
            goto LABEL_179;
          }
        }

        v188 = *(a1 + 1100);
        sub_100001FC8(a1, v43, v186);
        if (v188 < 1)
        {
          goto LABEL_179;
        }

        if (v282)
        {
          if (v188 < 4)
          {
            v189 = 0;
LABEL_167:
            v196 = v188 - v189;
            v197 = 2 * v189;
            do
            {
              v197 += 2;
              --v196;
            }

            while (v196);
            goto LABEL_179;
          }

          if (v188 >= 0x10)
          {
            v191 = 0;
            v189 = v188 & 0x7FFFFFF0;
            v192 = v189;
            do
            {
              v191 += 32;
              v192 -= 16;
            }

            while (v192);
            if (v189 == v188)
            {
              goto LABEL_179;
            }

            if ((v188 & 0xC) == 0)
            {
              goto LABEL_167;
            }
          }

          else
          {
            v189 = 0;
          }

          v193 = v189;
          v189 = v188 & 0x7FFFFFFC;
          v194 = 2 * v193;
          v195 = v193 - v189;
          do
          {
            v194 += 8;
            v195 += 4;
          }

          while (v195);
          if (v189 != v188)
          {
            goto LABEL_167;
          }
        }

        else
        {
          if (v188 < 4)
          {
            v190 = 0;
LABEL_177:
            v203 = v188 - v190;
            v204 = 2 * v190;
            do
            {
              v204 += 2;
              --v203;
            }

            while (v203);
            goto LABEL_179;
          }

          if (v188 >= 0x10)
          {
            v198 = 0;
            v190 = v188 & 0x7FFFFFF0;
            v199 = v190;
            do
            {
              v198 += 32;
              v199 -= 16;
            }

            while (v199);
            if (v190 == v188)
            {
              goto LABEL_179;
            }

            if ((v188 & 0xC) == 0)
            {
              goto LABEL_177;
            }
          }

          else
          {
            v190 = 0;
          }

          v200 = v190;
          v190 = v188 & 0x7FFFFFFC;
          v201 = 2 * v200;
          v202 = v200 - v190;
          do
          {
            v201 += 8;
            v202 += 4;
          }

          while (v202);
          if (v190 != v188)
          {
            goto LABEL_177;
          }
        }

LABEL_179:
        if (!v187)
        {
          goto LABEL_145;
        }

        v31 += v187;
        sub_100001370(a1, v43, v186, v287);
        if (v281 < 1)
        {
          goto LABEL_145;
        }

        v206 = v287[0];
        if (v281 >= 4 && (v284 >= v287[0] + v281 || v287[0] >= v280))
        {
          v212 = vdupq_n_s32(v187);
          if (v281 < 0x10)
          {
            v213 = 0;
LABEL_194:
            v221 = (v206 + v213);
            v222 = (v284 + 4 * v213);
            v223 = v213 - (v281 & 0x7FFFFFFC);
            do
            {
              v224 = *v221++;
              v205.i32[0] = v224;
              v205 = vmovl_u16(*&vmovl_u8(*v205.i8));
              *v222 = vmlaq_s32(*v222, v212, v205);
              ++v222;
              v223 += 4;
            }

            while (v223);
            v207 = v281 & 0x7FFFFFFC;
            if (v272 == v281)
            {
              goto LABEL_145;
            }

            goto LABEL_185;
          }

          v214 = v281 & 0x7FFFFFF0;
          v215 = v284;
          v216 = v287[0];
          do
          {
            v217 = *v216++;
            v205 = vqtbl1q_s8(v217, xmmword_1000F0C40);
            v218 = vmlaq_s32(v215[3], v212, vqtbl1q_s8(v217, xmmword_1000F0C30));
            v219 = vmlaq_s32(v215[1], v212, vqtbl1q_s8(v217, xmmword_1000F0C50));
            v220 = vmlaq_s32(v215[2], v212, v205);
            *v215 = vmlaq_s32(*v215, v212, vqtbl1q_s8(v217, xmmword_1000F0C60));
            v215[1] = v219;
            v215[2] = v220;
            v215[3] = v218;
            v215 += 4;
            v214 -= 16;
          }

          while (v214);
          v207 = v281 & 0x7FFFFFF0;
          if (v277 == v281)
          {
            goto LABEL_145;
          }

          v213 = v281 & 0x7FFFFFF0;
          if ((v281 & 0xC) != 0)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v207 = 0;
        }

LABEL_185:
        v208 = v281 - v207;
        v209 = &v284->i32[v207];
        v210 = (v206 + v207);
        do
        {
          v211 = *v210++;
          *v209++ += v187 * v211;
          --v208;
        }

        while (v208);
LABEL_145:
        if (++v186 == v49)
        {
          goto LABEL_23;
        }
      }
    }

    if (*(a1 + 1176))
    {
      v44 = *(*(a1 + 1160) + 4 * v43 + 4) - *(*(a1 + 1160) + 4 * v43);
      if (v286)
      {
        v45 = 1;
      }

      else
      {
        v45 = v9 == 0;
      }

      v46 = !v45 || v44 < 1;
      if (!v46)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v44 = *(*(a1 + 1144) + 2 * v43 + 2) - *(*(a1 + 1144) + 2 * v43);
      if (v286)
      {
        v225 = 1;
      }

      else
      {
        v225 = v9 == 0;
      }

      if (v225 && v44 >= 1)
      {
        goto LABEL_51;
      }
    }

LABEL_23:
    LOWORD(v32) = v43 + 1;
    v30 = (v43 + 1);
    v29 = *(a1 + 1072);
  }

  while (v29 > v30);
  v21 = v269;
  v13 = v270;
  if (v31 >= 1 && v281 >= 1)
  {
    if (!v8)
    {
      v235 = v31;
      if (v281 >= 8 && (v280 <= a7 || v284 >= a7 + 8 * v281))
      {
        v236 = v281 & 0x7FFFFFF8;
        v260 = vdupq_lane_s64(*&v235, 0);
        v261 = v284 + 1;
        v262 = (a7 + 32);
        v263 = v236;
        do
        {
          v264 = v261[-1];
          v265.i64[0] = v264.i32[2];
          v265.i64[1] = v264.i32[3];
          v266 = vcvtq_f64_s64(v265);
          v265.i64[0] = v264.i32[0];
          v265.i64[1] = v264.i32[1];
          v267 = vcvtq_f64_s64(v265);
          v265.i64[0] = v261->i64[1];
          v265.i64[1] = HIDWORD(*v261);
          v268 = vcvtq_f64_s64(v265);
          v265.i64[0] = v261->i32[0];
          v265.i64[1] = HIDWORD(v261->i64[0]);
          v262[-2] = vdivq_f64(v267, v260);
          v262[-1] = vdivq_f64(v266, v260);
          *v262 = vdivq_f64(vcvtq_f64_s64(v265), v260);
          v262[1] = vdivq_f64(v268, v260);
          v262 += 4;
          v261 += 2;
          v263 -= 8;
        }

        while (v263);
        if (v236 == v281)
        {
          goto LABEL_220;
        }
      }

      else
      {
        v236 = 0;
      }

      v237 = &v284->i32[v236];
      v238 = v281 - v236;
      v239 = (a7 + 8 * v236);
      do
      {
        v240 = *v237++;
        *v239++ = v240 / v235;
        --v238;
      }

      while (v238);
      goto LABEL_220;
    }

    if (v281 <= 7)
    {
      v227 = 0;
LABEL_211:
      v228 = &v283->i32[v227];
      v229 = (a7 + 8 * v227);
      v230 = &v284->i32[v227];
      v231 = v281 - v227;
      do
      {
        v233 = *v228++;
        v232 = v233;
        v234 = *v230++;
        *v229++ = v234 / v232;
        --v231;
      }

      while (v231);
      goto LABEL_220;
    }

    v227 = 0;
    v242 = a7 + 8 * v281;
    v244 = v280 > a7 && v284 < v242;
    if (v283 < v242 && v275 > a7)
    {
      goto LABEL_211;
    }

    if (v244)
    {
      goto LABEL_211;
    }

    v227 = v281 & 0x7FFFFFF8;
    v246 = v283 + 1;
    v247 = v284 + 1;
    v248 = (a7 + 32);
    v249 = v227;
    do
    {
      v250 = v246[-1];
      v251 = v247[-1];
      v252.i64[0] = v251.i32[2];
      v252.i64[1] = v251.i32[3];
      v253 = vcvtq_f64_s64(v252);
      v252.i64[0] = v251.i32[0];
      v252.i64[1] = v251.i32[1];
      v254 = vcvtq_f64_s64(v252);
      v252.i64[0] = v247->i64[1];
      v252.i64[1] = HIDWORD(*v247);
      v255 = vcvtq_f64_s64(v252);
      v252.i64[0] = v247->i32[0];
      v252.i64[1] = HIDWORD(v247->i64[0]);
      v256 = vcvtq_f64_s64(v252);
      v252.i64[0] = v250.i32[2];
      v252.i64[1] = v250.i32[3];
      v257 = vcvtq_f64_s64(v252);
      v252.i64[0] = v250.i32[0];
      v252.i64[1] = v250.i32[1];
      v258 = vcvtq_f64_s64(v252);
      v252.i64[0] = v246->i64[1];
      v252.i64[1] = HIDWORD(*v246);
      v259 = vcvtq_f64_s64(v252);
      v252.i64[0] = v246->i32[0];
      v252.i64[1] = HIDWORD(v246->i64[0]);
      v248[-2] = vdivq_f64(v254, v258);
      v248[-1] = vdivq_f64(v253, v257);
      *v248 = vdivq_f64(v256, vcvtq_f64_s64(v252));
      v248[1] = vdivq_f64(v255, v259);
      v248 += 4;
      v246 += 2;
      v247 += 2;
      v249 -= 8;
    }

    while (v249);
    if (v227 != v281)
    {
      goto LABEL_211;
    }
  }

LABEL_220:
  sub_1000CA03C(v285, v21);
  sub_1000CA03C(v283, v13);
  return sub_1000CA03C(v284, v13);
}

void *sub_10007F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v257 = a5;
  v260 = a4;
  v8 = a3;
  v9 = a2;
  v11 = *(a1 + 1100);
  v253 = *(a1 + 1432);
  v12 = 4 * v11;
  v20 = sub_1000C9FC0(4 * v11, a2, a3, a4, a5, a6, a7, a8);
  v21 = 2 * v11;
  v264 = v8;
  if (v8)
  {
    v22 = sub_1000C9FC0(4 * v11, v13, v14, v15, v16, v17, v18, v19);
    v265 = sub_1000C9FC0(2 * v11, v23, v24, v25, v26, v27, v28, v29);
    v266 = 0;
    v30 = *(a1 + 1072);
    if (v30 < 1)
    {
      goto LABEL_198;
    }
  }

  else
  {
    v265 = 0;
    v266 = 0;
    v22 = 0;
    v30 = *(a1 + 1072);
    if (v30 < 1)
    {
      goto LABEL_198;
    }
  }

  v31 = 0;
  v32 = 0;
  LOWORD(v33) = 0;
  v254 = v9;
  v34 = &v20->i8[4 * v11];
  v258 = 2 * v11;
  v35 = (v265 + v258);
  v36 = (v22 + 4 * v11);
  v38 = v22 < v34 && v20 < v36;
  v262 = v22;
  v256 = &v22->i8[4 * v11];
  if (v22 < v35 && v265 < v36)
  {
    v38 = 1;
  }

  v255 = v38;
  v261 = v20 + 4 * v11;
  v41 = v20 < v35 && v265 < v34;
  v259 = v41;
  v252 = v11 & 0xFFFFFFF0;
  v250 = v20 + 2;
  v251 = v11 & 0xFFFFFFFC;
  v42.i64[0] = 0x1000000010;
  v42.i64[1] = 0x1000000010;
  v263 = v20;
  do
  {
    if (*(a1 + 268))
    {
      v43 = v33 == 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = v33;
    if (v43)
    {
      v33 = v33;
    }

    else
    {
      v33 = 1;
    }

    if (*(*(a1 + 496) + v33) != v254)
    {
      goto LABEL_23;
    }

    v45 = *(*v253 + 8 * v44);
    if (*(*(a1 + 1432) + 28))
    {
      if (v44 != sub_10000119C(a1))
      {
        v46 = 1;
        v42.i64[0] = 0x1000000010;
        v42.i64[1] = 0x1000000010;
        if (v45)
        {
          goto LABEL_49;
        }

        goto LABEL_23;
      }

      v30 = *(a1 + 1072);
      v42.i64[0] = 0x1000000010;
      v42.i64[1] = 0x1000000010;
    }

    if (v30 <= v31)
    {
      v46 = 1;
      if (v45)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (!*(a1 + 1176))
      {
        v46 = *(*(a1 + 1144) + 2 * v44 + 2) - *(*(a1 + 1144) + 2 * v44);
        if (v45)
        {
          v48 = v46 < 1;
        }

        else
        {
          v48 = 1;
        }

        if (v48)
        {
          goto LABEL_23;
        }

LABEL_49:
        v49 = 0;
        v50 = v46;
        while (2)
        {
          v54 = *(v45 + 8);
          v55 = *(v54 + 2 * v49);
          if (!*(v54 + 2 * v49))
          {
            goto LABEL_53;
          }

          if (v264)
          {
            v56 = *(a1 + 1100);
            v57 = sub_100001FC8(a1, v44, v49);
            v42.i64[0] = 0x1000000010;
            v42.i64[1] = 0x1000000010;
            if (v56 >= 1)
            {
              if (v260)
              {
                v58 = *(v57 + 2 * v257);
                if (v56 < 4)
                {
                  v59 = 0;
                  goto LABEL_93;
                }

                if (v56 >= 0x10)
                {
                  v59 = v56 & 0x7FFFFFF0;
                  v70 = vdupq_n_s16(v58);
                  v71 = v59;
                  v72 = &v265[1];
                  do
                  {
                    v72[-1] = v70;
                    *v72 = v70;
                    v72 += 2;
                    v71 -= 16;
                  }

                  while (v71);
                  if (v59 != v56)
                  {
                    if ((v56 & 0xC) == 0)
                    {
                      goto LABEL_93;
                    }

                    goto LABEL_90;
                  }
                }

                else
                {
                  v59 = 0;
LABEL_90:
                  v73 = v59;
                  v59 = v56 & 0x7FFFFFFC;
                  v74 = vdup_n_s16(v58);
                  v75 = (v265 + 2 * v73);
                  v76 = v73 - v59;
                  do
                  {
                    *v75++ = v74;
                    v76 += 4;
                  }

                  while (v76);
                  if (v59 != v56)
                  {
LABEL_93:
                    v77 = v56 - v59;
                    v78 = &v265->i16[v59];
                    do
                    {
                      *v78++ = v58;
                      --v77;
                    }

                    while (v77);
                  }
                }

LABEL_105:
                v32 += v55;
                if (v11 > 0)
                {
                  v60 = *(*(v45 + 24) + 8 * v49);
                  v61 = 2 * v55;
                  if (v11 <= 7)
                  {
                    goto LABEL_119;
                  }

LABEL_107:
                  v93 = v262;
                  v94 = v262 >= v60 + v258 || v60 >= v256;
                  v95 = v255;
                  if (!v94)
                  {
                    v95 = 1;
                  }

                  if (v20 >= v60 + v258 || v60 >= v261)
                  {
                    v97 = v95;
                  }

                  else
                  {
                    v97 = 1;
                  }

                  if ((v97 | v259))
                  {
LABEL_119:
                    v98 = 0;
LABEL_120:
                    v99 = v11 - v98;
                    v100 = &v20->i32[v98];
                    v101 = v98;
                    v102 = (v60 + 2 * v98);
                    v103 = &v262->i32[v98];
                    v104 = &v265->u16[v101];
                    do
                    {
                      v105 = v61 * *v104;
                      v106 = v105 + 16;
                      v47 = v105 < -16;
                      v107 = v105 + 47;
                      if (!v47)
                      {
                        v107 = v106;
                      }

                      *v103++ += v107 >> 5;
                      v109 = *v104++;
                      v108 = v109;
                      v110 = *v102++;
                      v111 = 2 * v108 * v110;
                      v112 = v111 + 16;
                      v47 = v111 < -16;
                      v113 = v111 + 47;
                      if (!v47)
                      {
                        v113 = v112;
                      }

                      *v100++ += v113 >> 5;
                      --v99;
                    }

                    while (v99);
                  }

                  else
                  {
                    v136 = v11 & 0xFFFFFFF8;
                    v137 = vdupq_n_s32(v61);
                    v138 = v20;
                    v139 = v60;
                    v140 = v265;
                    do
                    {
                      v141 = *v140++;
                      v142 = vmovl_u16(*v141.i8);
                      v143 = vmovl_high_u16(v141);
                      v144.i64[0] = 0x1000000010;
                      v144.i64[1] = 0x1000000010;
                      v145 = vmlaq_s32(v144, v137, v142);
                      v146.i64[0] = 0x1000000010;
                      v146.i64[1] = 0x1000000010;
                      v147 = vmlaq_s32(v146, v137, v143);
                      v148 = vsraq_n_s32(v93[1], vsraq_n_u32(v147, vcltzq_s32(v147), 0x1BuLL), 5uLL);
                      *v93 = vsraq_n_s32(*v93, vsraq_n_u32(v145, vcltzq_s32(v145), 0x1BuLL), 5uLL);
                      v93[1] = v148;
                      v93 += 2;
                      v149 = *v139++;
                      v150 = vmulq_s32(v143, vmovl_high_s16(v149));
                      v151 = vmulq_s32(v142, vmovl_s16(*v149.i8));
                      v152 = vaddq_s32(vaddq_s32(v151, v151), v42);
                      v153 = vaddq_s32(vaddq_s32(v150, v150), v42);
                      v154 = vsraq_n_s32(v138[1], vsraq_n_u32(v153, vcltzq_s32(v153), 0x1BuLL), 5uLL);
                      *v138 = vsraq_n_s32(*v138, vsraq_n_u32(v152, vcltzq_s32(v152), 0x1BuLL), 5uLL);
                      v138[1] = v154;
                      v138 += 2;
                      v136 -= 8;
                    }

                    while (v136);
                    v98 = v11 & 0xFFFFFFF8;
                    if (v98 != v11)
                    {
                      goto LABEL_120;
                    }
                  }

                  v52 = 0;
                  v51 = 1;
                  v53 = qword_1001065A8;
                  if (!qword_1001065A8)
                  {
LABEL_127:
                    sub_100001370(a1, v44, v49, &v266);
                    v116 = v266;
                    if (v52)
                    {
                      if (v51)
                      {
                        v20 = v263;
                        if (v11 < 4 || v263 < &v266->i8[v11] && v266 < v261)
                        {
                          v117 = 0;
                          v42.i64[0] = 0x1000000010;
                          v42.i64[1] = 0x1000000010;
                          goto LABEL_133;
                        }

                        v155 = vdupq_n_s32(v55);
                        if (v11 < 0x10)
                        {
                          v156 = 0;
                          v42.i64[0] = 0x1000000010;
                          v42.i64[1] = 0x1000000010;
LABEL_164:
                          v166 = (v116 + v156);
                          v167 = (v263 + 4 * v156);
                          v168 = v156 - (v11 & 0xFFFFFFFC);
                          do
                          {
                            v169 = *v166++;
                            v114.i32[0] = v169;
                            v114 = vmovl_u16(*&vmovl_u8(*v114.i8));
                            *v167 = vmlaq_s32(*v167, v155, v114);
                            ++v167;
                            v168 += 4;
                          }

                          while (v168);
                          v117 = v11 & 0xFFFFFFFC;
                          if (v251 != v11)
                          {
LABEL_133:
                            v118 = v11 - v117;
                            v119 = &v263->i32[v117];
                            v120 = (v116 + v117);
                            do
                            {
                              v121 = *v120++;
                              *v119++ += v121 * v55;
                              --v118;
                            }

                            while (v118);
                          }

LABEL_53:
                          if (++v49 == v50)
                          {
                            goto LABEL_23;
                          }

                          continue;
                        }

                        v159 = v11 & 0xFFFFFFF0;
                        v160 = v263;
                        v161 = v266;
                        do
                        {
                          v162 = *v161++;
                          v114 = vqtbl1q_s8(v162, xmmword_1000F0C40);
                          v163 = vmlaq_s32(v160[3], v155, vqtbl1q_s8(v162, xmmword_1000F0C30));
                          v164 = vmlaq_s32(v160[1], v155, vqtbl1q_s8(v162, xmmword_1000F0C50));
                          v165 = vmlaq_s32(v160[2], v155, v114);
                          *v160 = vmlaq_s32(*v160, v155, vqtbl1q_s8(v162, xmmword_1000F0C60));
                          v160[1] = v164;
                          v160[2] = v165;
                          v160[3] = v163;
                          v160 += 4;
                          v159 -= 16;
                        }

                        while (v159);
                        v117 = v11 & 0xFFFFFFF0;
                        if (v252 != v11)
                        {
                          v156 = v11 & 0xFFFFFFF0;
                          v42.i64[0] = 0x1000000010;
                          v42.i64[1] = 0x1000000010;
                          if ((v11 & 0xC) == 0)
                          {
                            goto LABEL_133;
                          }

                          goto LABEL_164;
                        }

LABEL_151:
                        v42.i64[0] = 0x1000000010;
                        v42.i64[1] = 0x1000000010;
                        goto LABEL_53;
                      }

LABEL_150:
                      v20 = v263;
                      goto LABEL_151;
                    }

                    if (!v51)
                    {
                      goto LABEL_150;
                    }

                    v122 = 2 * v55;
                    v20 = v263;
                    if (v11 < 4)
                    {
                      goto LABEL_144;
                    }

                    v123 = v263 >= &v266->i8[v11] || v266 >= v261;
                    v124 = v259;
                    if (!v123)
                    {
                      v124 = 1;
                    }

                    if (v124)
                    {
LABEL_144:
                      v125 = 0;
                      v42.i64[0] = 0x1000000010;
                      v42.i64[1] = 0x1000000010;
                      goto LABEL_145;
                    }

                    v157 = vdupq_n_s32(v122);
                    if (v11 >= 0x10)
                    {
                      v170 = v11 & 0xFFFFFFF0;
                      v171 = v263;
                      v172 = v266;
                      v173 = v265;
                      do
                      {
                        v175 = *v173;
                        v174 = v173[1];
                        v173 += 2;
                        v176 = vmovl_high_u16(v175);
                        v177 = vmovl_u16(*v174.i8);
                        v178 = *v172++;
                        v179.i64[0] = 0x1000000010;
                        v179.i64[1] = 0x1000000010;
                        v180 = vmlaq_s32(v179, vmulq_s32(v157, vmovl_u16(*v175.i8)), vqtbl1q_s8(v178, xmmword_1000F0C60));
                        v175.i64[0] = 0x1000000010;
                        v175.i64[1] = 0x1000000010;
                        v181 = vmlaq_s32(v175, vmulq_s32(v157, vmovl_high_u16(v174)), vqtbl1q_s8(v178, xmmword_1000F0C30));
                        v174.i64[0] = 0x1000000010;
                        v174.i64[1] = 0x1000000010;
                        v182 = vmlaq_s32(v174, vmulq_s32(v157, v177), vqtbl1q_s8(v178, xmmword_1000F0C40));
                        v177.i64[0] = 0x1000000010;
                        v177.i64[1] = 0x1000000010;
                        v183 = vmlaq_s32(v177, vmulq_s32(v157, v176), vqtbl1q_s8(v178, xmmword_1000F0C50));
                        v115 = vsraq_n_u32(v181, vcltzq_s32(v181), 0x1BuLL);
                        v184 = v171[1];
                        v185 = vsraq_n_s32(*v171, vsraq_n_u32(v180, vcltzq_s32(v180), 0x1BuLL), 5uLL);
                        v186 = vsraq_n_s32(v171[3], v115, 5uLL);
                        v171[2] = vsraq_n_s32(v171[2], vsraq_n_u32(v182, vcltzq_s32(v182), 0x1BuLL), 5uLL);
                        v171[3] = v186;
                        *v171 = v185;
                        v171[1] = vsraq_n_s32(v184, vsraq_n_u32(v183, vcltzq_s32(v183), 0x1BuLL), 5uLL);
                        v171 += 4;
                        v170 -= 16;
                      }

                      while (v170);
                      v125 = v11 & 0xFFFFFFF0;
                      if (v252 == v11)
                      {
                        goto LABEL_151;
                      }

                      v158 = v11 & 0xFFFFFFF0;
                      v42.i64[0] = 0x1000000010;
                      v42.i64[1] = 0x1000000010;
                      if ((v11 & 0xC) == 0)
                      {
LABEL_145:
                        v126 = v11 - v125;
                        v127 = &v263->i32[v125];
                        v128 = (v116 + v125);
                        v129 = v265 + v125;
                        do
                        {
                          v131 = *v129++;
                          v130 = v131;
                          v132 = *v128++;
                          v133 = v122 * v130 * v132;
                          v134 = v133 + 16;
                          v47 = v133 < -16;
                          v135 = v133 + 47;
                          if (!v47)
                          {
                            v135 = v134;
                          }

                          *v127++ += v135 >> 5;
                          --v126;
                        }

                        while (v126);
                        goto LABEL_53;
                      }
                    }

                    else
                    {
                      v158 = 0;
                      v42.i64[0] = 0x1000000010;
                      v42.i64[1] = 0x1000000010;
                    }

                    v187 = (v265 + 2 * v158);
                    v188 = (v116 + v158);
                    v189 = v158 - (v11 & 0xFFFFFFFC);
                    v190 = (v263 + 4 * v158);
                    do
                    {
                      v191 = *v187++;
                      v192 = vmovl_u16(v191);
                      v191.i32[0] = *v188++;
                      v115.i32[0] = v191.i32[0];
                      v115 = vmovl_u16(*&vmovl_u8(*v115.i8));
                      v193.i64[0] = 0x1000000010;
                      v193.i64[1] = 0x1000000010;
                      v194 = vmlaq_s32(v193, vmulq_s32(v157, v192), v115);
                      *v190 = vsraq_n_s32(*v190, vsraq_n_u32(v194, vcltzq_s32(v194), 0x1BuLL), 5uLL);
                      ++v190;
                      v189 += 4;
                    }

                    while (v189);
                    v125 = v11 & 0xFFFFFFFC;
                    if (v251 == v11)
                    {
                      goto LABEL_53;
                    }

                    goto LABEL_145;
                  }

LABEL_51:
                  if (!*(v53 + 3740))
                  {
                    goto LABEL_127;
                  }

                  v20 = v263;
                  goto LABEL_53;
                }

LABEL_50:
                v51 = 0;
                v52 = 0;
                v53 = qword_1001065A8;
                if (!qword_1001065A8)
                {
                  goto LABEL_127;
                }

                goto LABEL_51;
              }

              v64 = 0;
              if (v56 >= 4 && v265 - v57 >= 0x20)
              {
                if (v56 < 0x10)
                {
                  v64 = 0;
                  goto LABEL_100;
                }

                v64 = v56 & 0x7FFFFFF0;
                v79 = (v57 + 16);
                v80 = v64;
                v81 = v265 + 1;
                do
                {
                  v82 = *v79;
                  v81[-1] = *(v79 - 1);
                  *v81 = v82;
                  v79 += 2;
                  v81 += 2;
                  v80 -= 16;
                }

                while (v80);
                if (v64 == v56)
                {
                  goto LABEL_105;
                }

                if ((v56 & 0xC) != 0)
                {
LABEL_100:
                  v83 = v64;
                  v64 = v56 & 0x7FFFFFFC;
                  v84 = (v57 + 2 * v83);
                  v85 = (v265->i64 + 2 * v83);
                  v86 = v83 - v64;
                  do
                  {
                    v87 = *v84++;
                    *v85++ = v87;
                    v86 += 4;
                  }

                  while (v86);
                  if (v64 == v56)
                  {
                    goto LABEL_105;
                  }
                }
              }

              v88 = v56 - v64;
              v89 = 2 * v64;
              v90 = &v265->i16[v64];
              v91 = (v57 + v89);
              do
              {
                v92 = *v91++;
                *v90++ = v92;
                --v88;
              }

              while (v88);
              goto LABEL_105;
            }
          }

          break;
        }

        v32 += v55;
        v60 = *(*(v45 + 24) + 8 * v49);
        if (v265)
        {
          if (v11 >= 1)
          {
            v61 = 2 * v55;
            if (v11 > 7)
            {
              goto LABEL_107;
            }

            goto LABEL_119;
          }

          goto LABEL_50;
        }

        if (v11 < 1)
        {
          v51 = 0;
          v52 = 1;
          v53 = qword_1001065A8;
          if (!qword_1001065A8)
          {
            goto LABEL_127;
          }

          goto LABEL_51;
        }

        if (v11 < 4 || (v20 < v60 + v258 ? (v62 = v60 >= v261) : (v62 = 1), !v62))
        {
          v65 = 0;
          goto LABEL_80;
        }

        if (v11 >= 0x10)
        {
          v195 = (v60 + 16);
          v196 = v11 & 0x7FFFFFF0;
          v197 = v250;
          do
          {
            v198 = *v195[-2].i8;
            v199 = vaddw_s16(v197[-2], *v198.i8);
            v200 = vaddw_high_s16(v197[-1], v198);
            v201 = vaddw_s16(*v197, *v195);
            v202 = vaddw_high_s16(v197[1], *v195->i8);
            v197[-2] = v199;
            v197[-1] = v200;
            *v197 = v201;
            v197[1] = v202;
            v197 += 4;
            v195 += 4;
            v196 -= 16;
          }

          while (v196);
          v65 = v11 & 0x7FFFFFF0;
          if (v65 != v11)
          {
            v63 = v11 & 0x7FFFFFF0;
            if ((v11 & 0xC) == 0)
            {
              goto LABEL_80;
            }

            goto LABEL_180;
          }
        }

        else
        {
          v63 = 0;
LABEL_180:
          v203 = (v60 + 2 * v63);
          v204 = v63 - (v11 & 0x7FFFFFFC);
          v205 = (v20 + 4 * v63);
          do
          {
            v206 = *v203++;
            *v205 = vaddw_s16(*v205, v206);
            ++v205;
            v204 += 4;
          }

          while (v204);
          v65 = v11 & 0x7FFFFFFC;
          if (v65 != v11)
          {
LABEL_80:
            v66 = v11 - v65;
            v67 = &v20->i32[v65];
            v68 = (v60 + 2 * v65);
            do
            {
              v69 = *v68++;
              *v67++ += v69;
              --v66;
            }

            while (v66);
          }
        }

        v51 = 1;
        v52 = 1;
        v53 = qword_1001065A8;
        if (!qword_1001065A8)
        {
          goto LABEL_127;
        }

        goto LABEL_51;
      }

      v46 = *(*(a1 + 1160) + 4 * v44 + 4) - *(*(a1 + 1160) + 4 * v44);
      if (v45)
      {
        v47 = v46 < 1;
      }

      else
      {
        v47 = 1;
      }

      if (!v47)
      {
        goto LABEL_49;
      }
    }

LABEL_23:
    LOWORD(v33) = v44 + 1;
    v31 = (v44 + 1);
    v30 = *(a1 + 1072);
  }

  while (v30 > v31);
  v21 = 2 * v11;
  v12 = 4 * v11;
  v22 = v262;
  if (v32 >= 1 && v11 >= 1)
  {
    if (!v264)
    {
      v215 = v32;
      if (v11 >= 8 && (v261 <= a6 || v20 >= a6 + 8 * v11))
      {
        v216 = v11 & 0x7FFFFFF8;
        v240 = vdupq_lane_s64(*&v215, 0);
        v241 = v20 + 1;
        v242 = (a6 + 32);
        v243 = v216;
        do
        {
          v244 = v241[-1];
          v245.i64[0] = v244.i32[2];
          v245.i64[1] = v244.i32[3];
          v246 = vcvtq_f64_s64(v245);
          v245.i64[0] = v244.i32[0];
          v245.i64[1] = v244.i32[1];
          v247 = vcvtq_f64_s64(v245);
          v245.i64[0] = v241->i64[1];
          v245.i64[1] = HIDWORD(*v241);
          v248 = vcvtq_f64_s64(v245);
          v245.i64[0] = v241->i32[0];
          v245.i64[1] = HIDWORD(v241->i64[0]);
          v242[-2] = vdivq_f64(v247, v240);
          v242[-1] = vdivq_f64(v246, v240);
          *v242 = vdivq_f64(vcvtq_f64_s64(v245), v240);
          v242[1] = vdivq_f64(v248, v240);
          v242 += 4;
          v241 += 2;
          v243 -= 8;
        }

        while (v243);
        if (v216 == v11)
        {
          goto LABEL_198;
        }
      }

      else
      {
        v216 = 0;
      }

      v217 = &v20->i32[v216];
      v218 = v11 - v216;
      v219 = (a6 + 8 * v216);
      do
      {
        v220 = *v217++;
        *v219++ = v220 / v215;
        --v218;
      }

      while (v218);
      goto LABEL_198;
    }

    if (v11 <= 7)
    {
      v207 = 0;
LABEL_189:
      v208 = &v262->i32[v207];
      v209 = (a6 + 8 * v207);
      v210 = &v20->i32[v207];
      v211 = v11 - v207;
      do
      {
        v213 = *v208++;
        v212 = v213;
        v214 = *v210++;
        *v209++ = v214 / v212;
        --v211;
      }

      while (v211);
      goto LABEL_198;
    }

    v207 = 0;
    v222 = a6 + 8 * v11;
    v224 = v261 > a6 && v20 < v222;
    if (v262 < v222 && v256 > a6)
    {
      goto LABEL_189;
    }

    if (v224)
    {
      goto LABEL_189;
    }

    v207 = v11 & 0x7FFFFFF8;
    v226 = v262 + 1;
    v227 = v20 + 1;
    v228 = (a6 + 32);
    v229 = v207;
    do
    {
      v230 = v226[-1];
      v231 = v227[-1];
      v232.i64[0] = v231.i32[2];
      v232.i64[1] = v231.i32[3];
      v233 = vcvtq_f64_s64(v232);
      v232.i64[0] = v231.i32[0];
      v232.i64[1] = v231.i32[1];
      v234 = vcvtq_f64_s64(v232);
      v232.i64[0] = v227->i64[1];
      v232.i64[1] = HIDWORD(*v227);
      v235 = vcvtq_f64_s64(v232);
      v232.i64[0] = v227->i32[0];
      v232.i64[1] = HIDWORD(v227->i64[0]);
      v236 = vcvtq_f64_s64(v232);
      v232.i64[0] = v230.i32[2];
      v232.i64[1] = v230.i32[3];
      v237 = vcvtq_f64_s64(v232);
      v232.i64[0] = v230.i32[0];
      v232.i64[1] = v230.i32[1];
      v238 = vcvtq_f64_s64(v232);
      v232.i64[0] = v226->i64[1];
      v232.i64[1] = HIDWORD(*v226);
      v239 = vcvtq_f64_s64(v232);
      v232.i64[0] = v226->i32[0];
      v232.i64[1] = HIDWORD(v226->i64[0]);
      v228[-2] = vdivq_f64(v234, v238);
      v228[-1] = vdivq_f64(v233, v237);
      *v228 = vdivq_f64(v236, vcvtq_f64_s64(v232));
      v228[1] = vdivq_f64(v235, v239);
      v228 += 4;
      v226 += 2;
      v227 += 2;
      v229 -= 8;
    }

    while (v229);
    if (v207 != v11)
    {
      goto LABEL_189;
    }
  }

LABEL_198:
  sub_1000CA03C(v265, v21);
  sub_1000CA03C(v22, v12);
  return sub_1000CA03C(v20, v12);
}

void *sub_10007FE48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  v12 = *(a1 + 1100);
  v215[0] = 0;
  v198 = *(a1 + 1404);
  v13 = sub_1000C9FC0(8 * v12, a2, a3, a4, a5, a6, a7, a8);
  v199 = 8 * v12;
  v21 = sub_1000C9FC0(v199, v14, v15, v16, v17, v18, v19, v20);
  v22 = *(a1 + 336);
  v23 = *(a1 + 1432);
  sub_1000BE294(a5, 0.0);
  v24 = *(a1 + 1072);
  if (v24 >= 1)
  {
    v25 = 0;
    LOWORD(v26) = 0;
    v210 = v10;
    v27 = 8 * v12;
    v28 = (v21 + v27);
    v29 = (v13 + v27);
    v207 = 2 * v12;
    v208 = v29;
    v30 = a2 + v27;
    v32 = v21 < v29 && v13 < v28;
    v209 = v28;
    v34 = v21 < v30 && v28 > a2;
    v205 = v34;
    v206 = v32;
    v36 = v13 < v30 && v29 > a2;
    v204 = v36;
    v200 = v12 & 0xC;
    v202 = v12 & 0x7FFFFFFC;
    v203 = v12 & 0x7FFFFFF0;
    v211 = v12;
    v201 = v23;
    do
    {
      if (*(a1 + 268))
      {
        v37 = v26 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = v26;
      if (v37)
      {
        v26 = v26;
      }

      else
      {
        v26 = 1;
      }

      if (*(*(a1 + 496) + v26) != v210)
      {
        goto LABEL_22;
      }

      v39 = *(*v23 + 8 * v38);
      if (*(*(a1 + 1432) + 28))
      {
        if (v38 != sub_10000119C(a1))
        {
          goto LABEL_40;
        }

        v24 = *(a1 + 1072);
      }

      if (v24 <= v25)
      {
LABEL_40:
        v40 = 1;
        if (!v39)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }

      if (*(a1 + 1176))
      {
        v40 = *(*(a1 + 1160) + 4 * v38 + 4) - *(*(a1 + 1160) + 4 * v38);
        if (v39)
        {
          v41 = *(*(a1 + 1160) + 4 * v38 + 4) == *(*(a1 + 1160) + 4 * v38);
        }

        else
        {
          v41 = 1;
        }

        if (v41)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v40 = *(*(a1 + 1144) + 2 * v38 + 2) - *(*(a1 + 1144) + 2 * v38);
        if (v39)
        {
          v193 = *(*(a1 + 1144) + 2 * v38 + 2) == *(*(a1 + 1144) + 2 * v38);
        }

        else
        {
          v193 = 1;
        }

        if (v193)
        {
          goto LABEL_22;
        }
      }

LABEL_41:
      if (v40 >= 1)
      {
        v214 = v40;
        if (v211 >= 1)
        {
          v42 = 0;
          while (1)
          {
            v43 = *(*(v39 + 8) + 2 * v42);
            if (v9 == -1)
            {
              v45 = 0.0;
              if (!*(*(v39 + 8) + 2 * v42))
              {
                goto LABEL_45;
              }
            }

            else
            {
              LOWORD(v44) = *(sub_100001FC8(a1, v38, v42) + 2 * v9);
              v45 = v44;
              if (!v43)
              {
                goto LABEL_45;
              }
            }

            v213 = v45;
            sub_100001370(a1, v38, v42, v215);
            v48 = *(*(v39 + 24) + 8 * v42);
            v49 = v43;
            v50 = -v43;
            v51 = v215[0];
            if (v9 == -1)
            {
              if (v211 < 4)
              {
                goto LABEL_103;
              }

              v72 = v215[0] + v211;
              v74 = v21 < v48 + v207 && v48 < v209;
              if (v21 < v72 && v215[0] < v209)
              {
                v74 = 1;
              }

              v77 = v13 < v48 + v207 && v48 < v208 || v74;
              if (v13 < v72 && v215[0] < v208)
              {
                v77 = 1;
              }

              if ((v77 | (v206 || v205 || v204)))
              {
LABEL_103:
                v79 = 0;
LABEL_104:
                v80 = (v48 + 2 * v79);
                v81 = (v51 + v79);
                v82 = (a2 + 8 * v79);
                v83 = &v21->f64[v79];
                v84 = &v13->f64[v79];
                v85 = v211 - v79;
                do
                {
                  v87 = *v80++;
                  v86 = v87;
                  v88 = *v81++;
                  v89 = v86 + v88 * v43;
                  v90 = *v82++;
                  v91 = v89 + v50 * v90;
                  *v83++ = v91;
                  *v84++ = v91 / v49;
                  --v85;
                }

                while (v85);
                goto LABEL_44;
              }

              if (v211 >= 0x10)
              {
                v142 = vdupq_n_s32(v43);
                v143 = vdupq_lane_s64(*&v50, 0);
                v144 = v203;
                v145 = v13;
                v146 = vdupq_lane_s64(*&v49, 0);
                v147 = v21;
                v148 = a2;
                v149 = v215[0];
                v150 = *(*(v39 + 24) + 8 * v42);
                do
                {
                  v151 = *v150;
                  v152 = v150[1];
                  v150 += 2;
                  v153 = *v149++;
                  v154 = vaddw_high_s16(vmulq_s32(v142, vqtbl1q_s8(v153, xmmword_1000F0C30)), v152);
                  v155 = vaddw_s16(vmulq_s32(v142, vqtbl1q_s8(v153, xmmword_1000F0C60)), *v151.i8);
                  v156 = vaddw_high_s16(vmulq_s32(v142, vqtbl1q_s8(v153, xmmword_1000F0C50)), v151);
                  v157 = vaddw_s16(vmulq_s32(v142, vqtbl1q_s8(v153, xmmword_1000F0C40)), *v152.i8);
                  v158.i64[0] = v157.i32[2];
                  v158.i64[1] = v157.i32[3];
                  v159 = vcvtq_f64_s64(v158);
                  v158.i64[0] = v156.i32[2];
                  v158.i64[1] = v156.i32[3];
                  v160 = vcvtq_f64_s64(v158);
                  v158.i64[0] = v155.i32[2];
                  v158.i64[1] = v155.i32[3];
                  v161 = vcvtq_f64_s64(v158);
                  v158.i64[0] = v154.i32[2];
                  v158.i64[1] = v154.i32[3];
                  v162 = vcvtq_f64_s64(v158);
                  v158.i64[0] = v157.i32[0];
                  v158.i64[1] = v157.i32[1];
                  v163 = vcvtq_f64_s64(v158);
                  v158.i64[0] = v156.i32[0];
                  v158.i64[1] = v156.i32[1];
                  v164 = vcvtq_f64_s64(v158);
                  v158.i64[0] = v155.i32[0];
                  v158.i64[1] = v155.i32[1];
                  v165 = vcvtq_f64_s64(v158);
                  v158.i64[0] = v154.i32[0];
                  v158.i64[1] = v154.i32[1];
                  v166 = v148[7];
                  v167 = vmlaq_f64(vcvtq_f64_s64(v158), v148[6], v143);
                  v168 = vmlaq_f64(v165, *v148, v143);
                  v169 = vmlaq_f64(v164, v148[2], v143);
                  v170 = vmlaq_f64(v163, v148[4], v143);
                  v171 = vmlaq_f64(v161, v148[1], v143);
                  v172 = vmlaq_f64(v160, v148[3], v143);
                  v173 = vmlaq_f64(v159, v148[5], v143);
                  v147[4] = v170;
                  v147[5] = v173;
                  v147[2] = v169;
                  v147[3] = v172;
                  *v147 = v168;
                  v147[1] = v171;
                  v174 = vmlaq_f64(v162, v166, v143);
                  v147[6] = v167;
                  v147[7] = v174;
                  v145[4] = vdivq_f64(v170, v146);
                  v145[5] = vdivq_f64(v173, v146);
                  v47 = vdivq_f64(v172, v146);
                  v145[2] = vdivq_f64(v169, v146);
                  v145[3] = v47;
                  *v145 = vdivq_f64(v168, v146);
                  v145[1] = vdivq_f64(v171, v146);
                  v145[6] = vdivq_f64(v167, v146);
                  v145[7] = vdivq_f64(v174, v146);
                  v148 += 8;
                  v147 += 8;
                  v145 += 8;
                  v144 -= 16;
                }

                while (v144);
                if (v203 == v211)
                {
                  goto LABEL_44;
                }

                v94 = v203;
                v79 = v203;
                if (!v200)
                {
                  goto LABEL_104;
                }
              }

              else
              {
                v94 = 0;
              }

              v175 = vdupq_n_s32(v43);
              v176 = vdupq_lane_s64(*&v50, 0);
              v177 = (v51 + v94);
              v178 = (v48 + 2 * v94);
              v179 = vdupq_lane_s64(*&v49, 0);
              v180 = (a2 + 8 * v94);
              v181 = (v21 + 8 * v94);
              v182 = (v13 + 8 * v94);
              v183 = v94 - v202;
              do
              {
                v184 = *v178++;
                v185 = v184;
                v184.i32[0] = *v177++;
                LODWORD(v47.f64[0]) = v184.i32[0];
                v186 = vaddw_s16(vmulq_s32(v175, vmovl_u16(*&vmovl_u8(*&v47.f64[0]))), v185);
                v187.i64[0] = v186.i32[2];
                v187.i64[1] = v186.i32[3];
                v188 = vcvtq_f64_s64(v187);
                v187.i64[0] = v186.i32[0];
                v187.i64[1] = v186.i32[1];
                v190 = *v180;
                v189 = v180[1];
                v180 += 2;
                v191 = vmlaq_f64(vcvtq_f64_s64(v187), v190, v176);
                v192 = vmlaq_f64(v188, v189, v176);
                *v181 = v191;
                v181[1] = v192;
                v181 += 2;
                v47 = vdivq_f64(v192, v179);
                *v182 = vdivq_f64(v191, v179);
                v182[1] = v47;
                v182 += 2;
                v183 += 4;
              }

              while (v183);
              v79 = v202;
              if (v202 == v211)
              {
                goto LABEL_44;
              }

              goto LABEL_104;
            }

            if (v211 < 4)
            {
              goto LABEL_75;
            }

            v52 = v215[0] + v211;
            v54 = v21 < v48 + v207 && v48 < v209;
            if (v21 < v52 && v215[0] < v209)
            {
              v54 = 1;
            }

            v56 = v13 >= v48 + v207 || v48 >= v208;
            v57 = !v56 || v54;
            if (v13 < v52 && v215[0] < v208)
            {
              v57 = 1;
            }

            if ((v57 | (v206 || v205 || v204)))
            {
LABEL_75:
              v59 = 0;
            }

            else
            {
              v92 = vdupq_n_s32(v43);
              if (v211 < 0x10)
              {
                v93 = 0;
LABEL_115:
                v126 = vdupq_lane_s64(*&v50, 0);
                v127 = (v51 + v93);
                v128 = (v48 + 2 * v93);
                v129 = vdupq_lane_s64(*&v49, 0);
                v130 = (a2 + 8 * v93);
                v131 = (v21 + 8 * v93);
                v132 = (v13 + 8 * v93);
                v133 = v93 - v202;
                do
                {
                  v134 = *v127++;
                  LODWORD(v46.f64[0]) = v134;
                  v135 = *v128++;
                  v136 = vaddw_s16(vmulq_s32(v92, vmovl_u16(*&vmovl_u8(*&v46.f64[0]))), v135);
                  v137.i64[0] = v136.i32[2];
                  v137.i64[1] = v136.i32[3];
                  v138 = vcvtq_f64_s64(v137);
                  v137.i64[0] = v136.i32[0];
                  v137.i64[1] = v136.i32[1];
                  v140 = *v130;
                  v139 = v130[1];
                  v130 += 2;
                  v46 = vmlaq_f64(vcvtq_f64_s64(v137), v140, v126);
                  v141 = vmlaq_f64(v138, v139, v126);
                  *v131 = v46;
                  v131[1] = v141;
                  v131 += 2;
                  *v132 = vmulq_n_f64(vdivq_f64(v46, v129), v213);
                  v132[1] = vmulq_n_f64(vdivq_f64(v141, v129), v213);
                  v132 += 2;
                  v133 += 4;
                }

                while (v133);
                v59 = v202;
                if (v202 == v211)
                {
                  goto LABEL_44;
                }

                goto LABEL_76;
              }

              v95 = vdupq_lane_s64(*&v50, 0);
              v96 = v203;
              v97 = v13;
              v98 = vdupq_lane_s64(*&v49, 0);
              v99 = v21;
              v100 = a2;
              v101 = v215[0];
              v102 = *(*(v39 + 24) + 8 * v42);
              do
              {
                v103 = *v102;
                v104 = v102[1];
                v102 += 2;
                v105 = *v101++;
                v106 = vaddw_high_s16(vmulq_s32(v92, vqtbl1q_s8(v105, xmmword_1000F0C30)), v104);
                v107 = vaddw_s16(vmulq_s32(v92, vqtbl1q_s8(v105, xmmword_1000F0C60)), *v103.i8);
                v108 = vaddw_high_s16(vmulq_s32(v92, vqtbl1q_s8(v105, xmmword_1000F0C50)), v103);
                v109 = vaddw_s16(vmulq_s32(v92, vqtbl1q_s8(v105, xmmword_1000F0C40)), *v104.i8);
                v110.i64[0] = v109.i32[2];
                v110.i64[1] = v109.i32[3];
                v111 = v110;
                v110.i64[0] = v108.i32[2];
                v110.i64[1] = v108.i32[3];
                v112 = vcvtq_f64_s64(v110);
                v110.i64[0] = v107.i32[2];
                v110.i64[1] = v107.i32[3];
                v113 = vcvtq_f64_s64(v110);
                v110.i64[0] = v106.i32[2];
                v110.i64[1] = v106.i32[3];
                v114 = v110;
                v110.i64[0] = v109.i32[0];
                v110.i64[1] = v109.i32[1];
                v115 = vcvtq_f64_s64(v110);
                v110.i64[0] = v108.i32[0];
                v110.i64[1] = v108.i32[1];
                v116 = vcvtq_f64_s64(v110);
                v110.i64[0] = v107.i32[0];
                v110.i64[1] = v107.i32[1];
                v117 = v110;
                v110.i64[0] = v106.i32[0];
                v110.i64[1] = v106.i32[1];
                v118 = vmlaq_f64(vcvtq_f64_s64(v110), v100[6], v95);
                v119 = vmlaq_f64(vcvtq_f64_s64(v117), *v100, v95);
                v120 = vmlaq_f64(v116, v100[2], v95);
                v121 = vmlaq_f64(v115, v100[4], v95);
                v122 = vmlaq_f64(vcvtq_f64_s64(v114), v100[7], v95);
                v123 = vmlaq_f64(v113, v100[1], v95);
                v124 = vmlaq_f64(v112, v100[3], v95);
                v125 = vmlaq_f64(vcvtq_f64_s64(v111), v100[5], v95);
                v99[4] = v121;
                v99[5] = v125;
                v99[2] = v120;
                v99[3] = v124;
                *v99 = v119;
                v99[1] = v123;
                v99[6] = v118;
                v99[7] = v122;
                v97[4] = vmulq_n_f64(vdivq_f64(v121, v98), v213);
                v97[5] = vmulq_n_f64(vdivq_f64(v125, v98), v213);
                v97[2] = vmulq_n_f64(vdivq_f64(v120, v98), v213);
                v97[3] = vmulq_n_f64(vdivq_f64(v124, v98), v213);
                v46 = vmulq_n_f64(vdivq_f64(v123, v98), v213);
                *v97 = vmulq_n_f64(vdivq_f64(v119, v98), v213);
                v97[1] = v46;
                v97[6] = vmulq_n_f64(vdivq_f64(v118, v98), v213);
                v97[7] = vmulq_n_f64(vdivq_f64(v122, v98), v213);
                v100 += 8;
                v99 += 8;
                v97 += 8;
                v96 -= 16;
              }

              while (v96);
              if (v203 == v211)
              {
                goto LABEL_44;
              }

              v93 = v203;
              v59 = v203;
              if (v200)
              {
                goto LABEL_115;
              }
            }

LABEL_76:
            v60 = (v48 + 2 * v59);
            v61 = (v51 + v59);
            v62 = (a2 + 8 * v59);
            v63 = &v21->f64[v59];
            v64 = &v13->f64[v59];
            v65 = v211 - v59;
            do
            {
              v67 = *v60++;
              v66 = v67;
              v68 = *v61++;
              v69 = v66 + v68 * v43;
              v70 = *v62++;
              v71 = v69 + v50 * v70;
              *v63++ = v71;
              *v64++ = v213 * (v71 / v49);
              --v65;
            }

            while (v65);
LABEL_44:
            sub_1000BE30C(v13, v21, v22);
            sub_1000BEA74(a5, v22, a5);
LABEL_45:
            if (++v42 == v214)
            {
              goto LABEL_21;
            }
          }
        }

        if (v9 == -1)
        {
          for (i = 0; i != v214; ++i)
          {
            if (*(*(v39 + 8) + 2 * i))
            {
              sub_100001370(a1, v38, i, v215);
              sub_1000BE30C(v13, v21, v22);
              sub_1000BEA74(a5, v22, a5);
            }
          }
        }

        else
        {
          for (j = 0; j != v214; ++j)
          {
            v195 = *(*(v39 + 8) + 2 * j);
            sub_100001FC8(a1, v38, j);
            if (v195)
            {
              sub_100001370(a1, v38, j, v215);
              sub_1000BE30C(v13, v21, v22);
              sub_1000BEA74(a5, v22, a5);
            }
          }
        }
      }

LABEL_21:
      sub_1000CEDA4();
      v23 = v201;
LABEL_22:
      LOWORD(v26) = v38 + 1;
      v25 = (v38 + 1);
      v24 = *(a1 + 1072);
    }

    while (v24 > v25);
  }

  sub_1000BE3CC(a5, 1.0 / v198);
  sub_1000CA03C(v21, v199);
  return sub_1000CA03C(v13, v199);
}

void *sub_1000807A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v73 = a5;
  LOBYTE(v9) = a4;
  v12 = a1;
  v13 = *(a1 + 1100);
  v78 = 0;
  v68 = *(a1 + 1404);
  v14 = sub_1000C9FC0(8 * v13, a2, a3, a4, a5, a6, a7, a8);
  v69 = 8 * v13;
  v22 = sub_1000C9FC0(v69, v15, v16, v17, v18, v19, v20, v21);
  v72 = *(v12 + 336);
  v71 = *(v12 + 1432);
  v74 = a6;
  sub_1000BE294(a6, 0.0);
  v23 = *(v12 + 1072);
  if (v23 >= 1)
  {
    v24 = 0;
    LOWORD(v25) = 0;
    v9 = v9;
    v70 = v9;
    v76 = v12;
    do
    {
      if (*(v12 + 268))
      {
        v26 = v25 == 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = v25;
      if (v26)
      {
        v25 = v25;
      }

      else
      {
        v25 = 1;
      }

      if (*(*(v12 + 496) + v25) != v9)
      {
        goto LABEL_4;
      }

      v77 = *(*v71 + 8 * v27);
      if (*(*(v12 + 1432) + 28))
      {
        if (v27 != sub_10000119C(v12))
        {
          goto LABEL_22;
        }

        v23 = *(v12 + 1072);
      }

      if (v23 <= v24)
      {
LABEL_22:
        v28 = 1;
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      if (*(v12 + 1176))
      {
        v28 = *(*(v12 + 1160) + 4 * v27 + 4) - *(*(v12 + 1160) + 4 * v27);
        if (v77)
        {
          v29 = *(*(v12 + 1160) + 4 * v27 + 4) == *(*(v12 + 1160) + 4 * v27);
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v28 = *(*(v12 + 1144) + 2 * v27 + 2) - *(*(v12 + 1144) + 2 * v27);
        if (v77)
        {
          v61 = *(*(v12 + 1144) + 2 * v27 + 2) == *(*(v12 + 1144) + 2 * v27);
        }

        else
        {
          v61 = 1;
        }

        if (v61)
        {
          goto LABEL_4;
        }
      }

LABEL_23:
      if (v28 >= 1)
      {
        v75 = v28;
        if (v13 > 0)
        {
          v30 = 0;
          while (2)
          {
            v31 = *(v77 + 8);
            v32 = *(v31 + 2 * v30);
            if (!*(v31 + 2 * v30))
            {
              goto LABEL_27;
            }

            sub_100001370(v12, v27, v30, &v78);
            v34 = 0;
            v35 = *(*(v77 + 24) + 8 * v30);
            v36 = v78;
            do
            {
              LOBYTE(v33) = *(v36 + v34);
              *&v14[v34] = *&v33 - *(a2 + 8 * v34);
              v37 = *(v35 + 2 * v34);
              if (!qword_1001065A8 || !*(qword_1001065A8 + 3740))
              {
                v37 += *(v36 + v34) * v32;
              }

              v33 = v37 + -v32 * *(a3 + 8 * v34);
              *&v22[v34++] = v33;
            }

            while (v13 != v34);
            v38 = v27;
            v39 = *(v76 + 280);
            if (v39)
            {
              v40 = v14;
            }

            else
            {
              v40 = v22;
            }

            if (v39)
            {
              v41 = v22;
            }

            else
            {
              v41 = v14;
            }

            if (v73 != -1)
            {
              v42 = sub_100001FC8(v76, v38, v30);
              if (v13 < 8 || v40 < v42 + 2 * v13 && v42 < v40 + 8 * v13)
              {
                v43 = 0;
                goto LABEL_46;
              }

              v48 = v13 & 0x7FFFFFF8;
              v49 = v40;
              v50 = v42;
              do
              {
                v51 = *v50++;
                v52 = vmovl_high_u16(v51);
                v53.i64[0] = v52.u32[2];
                v53.i64[1] = v52.u32[3];
                v54 = vcvtq_f64_u64(v53);
                v53.i64[0] = v52.u32[0];
                v53.i64[1] = v52.u32[1];
                v55 = vcvtq_f64_u64(v53);
                v56 = vmovl_u16(*v51.i8);
                v53.i64[0] = v56.u32[2];
                v53.i64[1] = v56.u32[3];
                v57 = vcvtq_f64_u64(v53);
                v53.i64[0] = v56.u32[0];
                v53.i64[1] = v56.u32[1];
                v58 = v49[1];
                v59 = vmulq_f64(*v49, vcvtq_f64_u64(v53));
                v60 = vmulq_f64(v49[3], v54);
                v49[2] = vmulq_f64(v49[2], v55);
                v49[3] = v60;
                *v49 = v59;
                v49[1] = vmulq_f64(v58, v57);
                v49 += 4;
                v48 -= 8;
              }

              while (v48);
              v43 = v13 & 0x7FFFFFF8;
              if (v43 != v13)
              {
LABEL_46:
                v44 = (v42 + 2 * v43);
                v45 = v13 - v43;
                v46 = (v40 + 8 * v43);
                do
                {
                  v47 = *v44++;
                  *v46 = *v46 * v47;
                  ++v46;
                  --v45;
                }

                while (v45);
              }
            }

            sub_1000BE30C(v40, v41, v72);
            sub_1000BEA74(v74, v72, v74);
            v27 = v38;
            v12 = v76;
LABEL_27:
            if (++v30 == v75)
            {
              goto LABEL_3;
            }

            continue;
          }
        }

        for (i = 0; i != v75; ++i)
        {
          if (*(*(v77 + 8) + 2 * i))
          {
            sub_100001370(v12, v27, i, &v78);
            v63 = *(v12 + 280);
            if (v63)
            {
              v64 = v14;
            }

            else
            {
              v64 = v22;
            }

            v65 = v27;
            if (v63)
            {
              v66 = v22;
            }

            else
            {
              v66 = v14;
            }

            if (v73 != -1)
            {
              sub_100001FC8(v76, v65, i);
            }

            sub_1000BE30C(v64, v66, v72);
            sub_1000BEA74(v74, v72, v74);
            v27 = v65;
            v12 = v76;
          }
        }
      }

LABEL_3:
      sub_1000CEDA4();
      v9 = v70;
LABEL_4:
      LOWORD(v25) = v27 + 1;
      v24 = (v27 + 1);
      v23 = *(v12 + 1072);
    }

    while (v23 > v24);
  }

  sub_1000BE3CC(v74, 1.0 / v68);
  sub_1000CA03C(0, v69);
  sub_1000CA03C(v22, v69);
  return sub_1000CA03C(v14, v69);
}

void *sub_100080C40(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v10 = a3;
  v12 = *(a1 + 1100);
  v108 = 0;
  v106 = *(a1 + 1404);
  v107 = a4;
  v99 = 8 * v12;
  v13 = sub_1000C9FC0(v99, a2, a3, a4, a5, a6, a7, a8);
  v14 = *(a1 + 336);
  v15 = *(a1 + 1432);
  sub_1000BE294(a6, 0.0);
  v16 = *(a1 + 1072);
  if (v16 >= 1)
  {
    v17 = 0;
    LOWORD(v18) = 0;
    v19 = v10;
    v20 = 8 * v12;
    v103 = v13 + v20;
    v22 = v13 < a2 + v20 && v13 + v20 > a2;
    v102 = v22;
    v101 = v15;
    v100 = v10;
    do
    {
      if (*(a1 + 268))
      {
        v23 = v18 == 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = v18;
      if (v23)
      {
        v18 = v18;
      }

      else
      {
        v18 = 1;
      }

      if (*(*(a1 + 496) + v18) != v19)
      {
        goto LABEL_10;
      }

      v105 = *(*v15 + 8 * v24);
      if (*(*(a1 + 1432) + 28))
      {
        if (v24 != sub_10000119C(a1))
        {
          goto LABEL_24;
        }

        v16 = *(a1 + 1072);
      }

      if (v16 > v17)
      {
        if (*(a1 + 1176))
        {
          v25 = (*(a1 + 1160) + 4 * v24);
          v27 = *v25;
          v26 = v25[1];
        }

        else
        {
          v31 = (*(a1 + 1144) + 2 * v24);
          v27 = *v31;
          v26 = v31[1];
        }

        v28 = v26 - v27;
        if (v105)
        {
          v32 = 1;
        }

        else
        {
          v32 = v107 == 0;
        }

        if (!v32 || v28 == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_40;
      }

LABEL_24:
      v28 = 1;
      if (v105)
      {
        v29 = 1;
      }

      else
      {
        v29 = v107 == 0;
      }

      if (!v29)
      {
        goto LABEL_10;
      }

LABEL_40:
      if (v28 >= 1)
      {
        v34 = v28;
        if (v12 > 0)
        {
          v35 = 0;
          while (2)
          {
            v36 = v106;
            if (v107)
            {
              v36 = *(*(v105 + 8) + 2 * v35);
            }

            if (v9 != -1)
            {
              v36 *= *(sub_100001FC8(a1, v24, v35) + 2 * v9);
            }

            if (!v36)
            {
              goto LABEL_44;
            }

            sub_100001370(a1, v24, v35, &v108);
            v38 = v108;
            if (v12 < 4)
            {
              goto LABEL_57;
            }

            v39 = v13 >= &v108->i8[v12] || v108 >= v103;
            v40 = v102;
            if (!v39)
            {
              v40 = 1;
            }

            if (v40)
            {
LABEL_57:
              v41 = 0;
              goto LABEL_58;
            }

            if (v12 >= 0x10)
            {
              v50 = v12 & 0x7FFFFFF0;
              v51 = v13;
              v52 = a2;
              v53 = v108;
              do
              {
                v54 = *v53++;
                v55 = vextq_s8(v54, v54, 8uLL).u64[0];
                v56.i32[0] = BYTE6(v55);
                v56.i32[1] = HIBYTE(v55);
                v57 = vand_s8(v56, 0xFF000000FFLL);
                v58.i64[0] = v57.u32[0];
                v58.i64[1] = v57.u32[1];
                v59 = vcvtq_f64_u64(v58);
                v60.i32[0] = BYTE4(v55);
                v60.i32[1] = BYTE5(v55);
                v61 = vand_s8(v60, 0xFF000000FFLL);
                v58.i64[0] = v61.u32[0];
                v58.i64[1] = v61.u32[1];
                v62 = vcvtq_f64_u64(v58);
                v63.i32[0] = BYTE2(v55);
                v63.i32[1] = BYTE3(v55);
                v64 = vand_s8(v63, 0xFF000000FFLL);
                v58.i64[0] = v64.u32[0];
                v58.i64[1] = v64.u32[1];
                v65 = vcvtq_f64_u64(v58);
                v66.i32[0] = v55;
                v66.i32[1] = BYTE1(v55);
                v67 = vand_s8(v66, 0xFF000000FFLL);
                v58.i64[0] = v67.u32[0];
                v58.i64[1] = v67.u32[1];
                v68 = vcvtq_f64_u64(v58);
                v66.i32[0] = v54.u8[6];
                v66.i32[1] = v54.u8[7];
                v69 = vand_s8(v66, 0xFF000000FFLL);
                v58.i64[0] = v69.u32[0];
                v58.i64[1] = v69.u32[1];
                v70 = vcvtq_f64_u64(v58);
                v71.i32[0] = v54.u8[4];
                v71.i32[1] = v54.u8[5];
                v72 = vand_s8(v71, 0xFF000000FFLL);
                v58.i64[0] = v72.u32[0];
                v58.i64[1] = v72.u32[1];
                v73 = vcvtq_f64_u64(v58);
                v74.i32[0] = v54.u8[2];
                v74.i32[1] = v54.u8[3];
                v75 = vand_s8(v74, 0xFF000000FFLL);
                v58.i64[0] = v75.u32[0];
                v58.i64[1] = v75.u32[1];
                v76 = vcvtq_f64_u64(v58);
                v77.i32[0] = v54.u8[0];
                v77.i32[1] = v54.u8[1];
                v78 = vand_s8(v77, 0xFF000000FFLL);
                v58.i64[0] = v78.u32[0];
                v58.i64[1] = v78.u32[1];
                v79 = vsubq_f64(v68, v52[4]);
                v80 = vsubq_f64(v65, v52[5]);
                v81 = vsubq_f64(v62, v52[6]);
                v37 = vsubq_f64(v59, v52[7]);
                v82 = vsubq_f64(vcvtq_f64_u64(v58), *v52);
                v83 = vsubq_f64(v76, v52[1]);
                v84 = vsubq_f64(v70, v52[3]);
                v51[2] = vsubq_f64(v73, v52[2]);
                v51[3] = v84;
                *v51 = v82;
                v51[1] = v83;
                v51[6] = v81;
                v51[7] = v37;
                v51[4] = v79;
                v51[5] = v80;
                v52 += 8;
                v51 += 8;
                v50 -= 16;
              }

              while (v50);
              if ((v12 & 0x7FFFFFF0) != v12)
              {
                v41 = v12 & 0x7FFFFFF0;
                v49 = v41;
                if ((v12 & 0xC) == 0)
                {
                  goto LABEL_58;
                }

                goto LABEL_67;
              }
            }

            else
            {
              v49 = 0;
LABEL_67:
              v85 = (v38 + v49);
              v86 = (a2 + 8 * v49);
              v87 = (v13 + 8 * v49);
              v88 = v49 - (v12 & 0x7FFFFFFC);
              do
              {
                v89 = *v85++;
                LODWORD(v37.f64[0]) = v89;
                v90 = vmovl_u16(*&vmovl_u8(*&v37.f64[0]));
                v91 = vand_s8(*v90.i8, 0xFF000000FFLL);
                v92.i64[0] = v91.u32[0];
                v92.i64[1] = v91.u32[1];
                v93 = vcvtq_f64_u64(v92);
                *v90.i8 = vand_s8(*&vextq_s8(v90, v90, 8uLL), 0xFF000000FFLL);
                v92.i64[0] = v90.u32[0];
                v92.i64[1] = v90.u32[1];
                v94 = *v86;
                v95 = v86[1];
                v86 += 2;
                v37 = vsubq_f64(vcvtq_f64_u64(v92), v95);
                *v87 = vsubq_f64(v93, v94);
                v87[1] = v37;
                v87 += 2;
                v88 += 4;
              }

              while (v88);
              v41 = v12 & 0x7FFFFFFC;
              if (v41 != v12)
              {
LABEL_58:
                v42 = (v38 + v41);
                v43 = (a2 + 8 * v41);
                v44 = &v13->f64[v41];
                v45 = v12 - v41;
                do
                {
                  v46 = *v42++;
                  v47 = v46;
                  v48 = *v43++;
                  *v44++ = v47 - v48;
                  --v45;
                }

                while (v45);
              }
            }

            sub_1000BE30C(v13, v13, v14);
            sub_1000BEAF0(a6, v14, a6, v36);
LABEL_44:
            if (++v35 == v34)
            {
              goto LABEL_9;
            }

            continue;
          }
        }

        for (i = 0; i != v34; ++i)
        {
          v97 = v106;
          if (v107)
          {
            v97 = *(*(v105 + 8) + 2 * i);
          }

          if (v9 != -1)
          {
            v97 *= *(sub_100001FC8(a1, v24, i) + 2 * v9);
          }

          if (v97)
          {
            sub_100001370(a1, v24, i, &v108);
            sub_1000BE30C(v13, v13, v14);
            sub_1000BEAF0(a6, v14, a6, v97);
          }
        }
      }

LABEL_9:
      sub_1000CEDA4();
      v15 = v101;
      v19 = v100;
LABEL_10:
      LOWORD(v18) = v24 + 1;
      v17 = (v24 + 1);
      v16 = *(a1 + 1072);
    }

    while (v16 > v17);
  }

  sub_1000BE3CC(a6, 1.0 / v106);
  sub_1000CA03C(0, v99);
  return sub_1000CA03C(v13, v99);
}