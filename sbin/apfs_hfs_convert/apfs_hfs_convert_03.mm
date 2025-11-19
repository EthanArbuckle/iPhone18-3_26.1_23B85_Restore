void sub_100026868(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 42);
  v5 = v4 - a2;
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    memmove((*(a1 + 384) - v5), *(a1 + 384), *(v3 + 44));
    *(a1 + 384) -= v5;
    v7 = *(a1 + 56);
    *(v7 + 46) += v5;
    v8 = *(v7 + 42) - v5;
  }

  else
  {
    v6 = a2 - v4;
    memmove((*(a1 + 384) + (a2 - v4)), *(a1 + 384), *(v3 + 44));
    bzero(*(a1 + 384), v6);
    *(a1 + 384) += v6;
    v7 = *(a1 + 56);
    *(v7 + 46) -= v6;
    v8 = *(v7 + 42) + v6;
  }

  *(v7 + 42) = v8;
}

void *sub_10002691C(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = (a3 + a2) << v5;
  v7 = a2 + -a3;
  if ((v4 & 4) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = v7 << v8;
  if (a3 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v6 = a2 << v8;
  }

  if (a3 >= 0)
  {
    v8 = v5;
    v9 = (a2 << v5);
  }

  return memmove((*(a1 + 376) + v6), (*(a1 + 376) + v9), ((*(v3 + 36) - v7) << v8) & 0xFFFC);
}

uint64_t sub_10002698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  if (a8 != 8)
  {
    return 22;
  }

  result = 0;
  *a5 = *a7;
  return result;
}

uint64_t sub_1000269AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 >= 0)
  {
    LOWORD(v7) = a3;
  }

  else
  {
    v7 = -a3;
  }

  v8 = v7;
  if (a3 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (a3 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  v11 = *(v10 + 56);
  if ((v11[16] & 4) != 0)
  {
    if ((*(v10 + 400) & 4) == 0)
    {
      goto LABEL_19;
    }

    v12 = 4;
  }

  else
  {
    v12 = 8;
  }

  v13 = sub_10001ABEC(v10, v7) * v12;
  v14 = v11[21];
  if (v14 >= v13)
  {
    goto LABEL_19;
  }

  if (v13 - v14 <= v11[23])
  {
    sub_100026868(v10, v13);
    goto LABEL_19;
  }

  v15 = sub_100026288(v10, v8, a4);
  if (!v15)
  {
LABEL_19:
    memset(__n, 170, sizeof(__n));
    v58 = -21846;
    if (v9 == a2)
    {
      if (v8 < 1)
      {
        v37 = 0;
        v38 = 0;
LABEL_60:
        v15 = 0;
      }

      else
      {
        v36 = sub_10001AD80(a2, 0, &__n[10], __n);
        if (v36)
        {
          v15 = v36;
          v37 = 0;
          v38 = 0;
        }

        else
        {
          v38 = 0;
          do
          {
            v39 = sub_10001AE98(a2, v38, &__n[2], &v58);
            if (v39)
            {
              break;
            }

            v39 = sub_10001DB30(a1, *(*(a1 + 56) + 36), *&__n[10], *__n, *&__n[2], v58, a4);
            if (v39)
            {
              break;
            }

            v40 = *(a2 + 56);
            v41 = *(a2 + 376);
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v42 = *__n;
            }

            else
            {
              v42 = (*__n + 7) & 0xFFF8;
            }

            v43 = (v42 + 7) & 0xFFF8;
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v43 = *__n;
            }

            if (v43 >= 4u)
            {
              if ((v40[16] & 4) != 0)
              {
                v44 = (v41 + 4 * v38);
              }

              else
              {
                v44 = (v41 + 8 * v38);
              }

              v45 = *v44;
              v46 = (*(a2 + 384) + v45);
              v46[1] = v43;
              *v46 = v40[24];
              v40[24] = v45;
            }

            v40[25] += v43;
            v47 = v58;
            if (v58 && v58 != 65534)
            {
              if ((*(a2 + 400) & 0x40) != 0)
              {
                v48 = v58;
              }

              else
              {
                v48 = (v58 + 7) & 0xFFF8;
              }

              v49 = (v48 + 7) & 0xFFF8;
              if ((*(a2 + 400) & 0x40) == 0)
              {
                v47 = v49;
              }

              if (v47 >= 4u)
              {
                v50 = v41 + 8 * v38 + 4;
                v51 = (v41 + 4 * v38 + 2);
                if ((v40[16] & 4) == 0)
                {
                  v51 = v50;
                }

                v52 = *v51;
                v53 = (*(a2 + 392) - v52);
                v53[1] = v47;
                *v53 = v40[26];
                v40[26] = v52;
              }

              v40[27] += v47;
            }

            v37 = ++v38;
            if (v38 >= v8)
            {
              goto LABEL_60;
            }

            v39 = sub_10001AD80(a2, v38, &__n[10], __n);
          }

          while (!v39);
          v15 = v39;
          v37 = v38;
        }
      }

      sub_10002691C(a2, 0, -v37);
      *(*(a2 + 56) + 36) -= v38;
    }

    else if (v8 < 1)
    {
      v15 = 0;
    }

    else
    {
      sub_10002691C(a2, 0, v8);
      v16 = 0;
      v17 = *(a2 + 56);
      *(v17 + 36) += v8;
      *(v17 + 32) |= 0x8000u;
      v18 = *(a2 + 376);
      do
      {
        if ((*(v17 + 32) & 4) != 0)
        {
          *(v18 + 4 * v16) = -1;
        }

        else
        {
          *(v18 + 8 * v16) = 0xFFFF0000FFFFLL;
        }

        ++v16;
      }

      while (v8 > v16);
      LOWORD(v19) = 0;
      v20 = *(*(a1 + 56) + 36);
      while (1)
      {
        v21 = sub_10001AD80(a1, (v20 - 1), &__n[10], __n);
        if (v21)
        {
          break;
        }

        v21 = sub_10001AE98(a1, (*(*(a1 + 56) + 36) - 1), &__n[2], &v58);
        if (v21)
        {
          break;
        }

        v21 = sub_10001D1CC(a2, (v8 + ~v19), *&__n[10], *__n, *&__n[2]);
        if (v21)
        {
          break;
        }

        v22 = *(a1 + 56);
        v20 = *(v22 + 36) - 1;
        *(v22 + 36) = v20;
        v23 = *(a1 + 376);
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v24 = *__n;
        }

        else
        {
          v24 = (*__n + 7) & 0xFFF8;
        }

        v25 = (v24 + 7) & 0xFFF8;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v25 = *__n;
        }

        if (v25 >= 4u)
        {
          if ((*(v22 + 32) & 4) != 0)
          {
            v26 = (v23 + 4 * v20);
          }

          else
          {
            v26 = (v23 + 8 * v20);
          }

          v27 = *v26;
          v28 = (*(a1 + 384) + v27);
          v28[1] = v25;
          *v28 = *(v22 + 48);
          *(v22 + 48) = v27;
        }

        *(v22 + 50) += v25;
        v29 = v58;
        if (v58 && v58 != 65534)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v30 = v58;
          }

          else
          {
            v30 = (v58 + 7) & 0xFFF8;
          }

          v31 = (v30 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) == 0)
          {
            v29 = v31;
          }

          if (v29 >= 4u)
          {
            v32 = v23 + 8 * v20 + 4;
            v33 = (v23 + 4 * v20 + 2);
            if ((*(v22 + 32) & 4) == 0)
            {
              v33 = v32;
            }

            v34 = *v33;
            v35 = (*(a1 + 392) - v34);
            v35[1] = v29;
            *v35 = *(v22 + 52);
            *(v22 + 52) = v34;
          }

          *(v22 + 54) += v29;
        }

        v19 = (v19 + 1);
        if (v19 >= v8)
        {
          v15 = 0;
          *(*(a2 + 56) + 32) &= ~0x8000u;
          goto LABEL_90;
        }
      }

      v15 = v21;
      *(*(a2 + 56) + 32) &= ~0x8000u;
      sub_10002691C(a2, 0, (v19 - v8));
    }

LABEL_90:
    v54 = *(v9 + 56);
    if ((*(v54 + 32) & 4) != 0)
    {
      if ((*(v9 + 400) & 4) == 0)
      {
LABEL_96:
        *(v9 + 440) = 0;
        sub_10004C7D8(a1, a4, 0);
        sub_10004C7D8(a2, a4, 0);
        return v15;
      }

      v55 = 4;
    }

    else
    {
      v55 = 8;
    }

    v56 = sub_10001ABEC(v9, 8);
    if (*(v54 + 42) > (v56 * v55))
    {
      sub_100026868(v9, (v56 * v55));
    }

    goto LABEL_96;
  }

  return v15;
}

void sub_100026F14(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 2123139;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = *(a1 + 56);
  v10 = *(v6 + 32) & 0x18 | v5;
  v11 = a2;
  v12 = *(a1 + 400);
  v13 = *(a1 + 416);
  bzero((v6 + 32), ((*(a1 + 400) >> 27) & 0x1F000) - 72);
  v7 = *(a1 + 56);
  v8 = sub_100048054(a1);
  sub_10001A5BC(v7, v8, &v9);
  sub_100025EEC(a1, &v9, 0);
  sub_10004C7D8(a1, a3, 0);
}

uint64_t sub_100026FD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 432) == *(a3 + 112))
  {
    v4 = result;
    v5 = *(a2 + 56);
    if ((*(v5 + 32) & 2) != 0 || !*(v5 + 36))
    {
      *(result + 432) = *(a2 + 112);
    }

    else
    {
      v6 = *(result + 400);
      __chkstk_darwin(result);
      v8 = (&v13 - v7);
      bzero(&v13 - v7, v9);
      result = sub_10001B084(a2, (*(*(a2 + 56) + 36) - 1), v8);
      if (result)
      {
        v10 = v4[1];
        if (v10)
        {
          v11 = (v10 + 4040);
        }

        else
        {
          v11 = (*(*(*v4 + 392) + 384) + 212);
        }

        result = sub_10003E5FC("%s:%d: %s failed to update rightmost leaf field: %d\n", "bt_update_last_leaf", 2521, v11, result);
        v12 = 0;
      }

      else
      {
        v12 = *v8;
      }

      v4[54] = v12;
    }
  }

  return result;
}

void sub_100027138(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v72 = a6;
  v16 = a1[50];
  __chkstk_darwin(a1);
  v18 = (&v63 - v17);
  bzero(&v63 - v17, v19);
  v70 = 0xAAAAAAAAAAAAAAAALL;
  v69 = -21846;
  v20 = *(a4 + 56);
  if (!a2)
  {
    if ((*(v20 + 32) & 2) != 0 || *(v20 + 36) != 1)
    {
      return;
    }

    if (a5 || v10 && (*(v10 + 16) & 0x10) != 0)
    {
      if (sub_10001B084(a4, 0, v18) || sub_10001A958(a1, v18, a7, 3u, *(*(a4 + 56) + 34) - 1, a8, &v72))
      {
        return;
      }

      v10 = v72;
      if ((a1[50] & 0x10) != 0 && *(v72 + 112) != *v18)
      {
        sub_10001DFEC(a4, 0, (v72 + 112), a8);
      }

      v45 = 1;
    }

    else
    {
      v45 = 0;
    }

    if (sub_100025FE8(v10) > 0x27)
    {
      v47 = *(v10 + 56);
      if (*(v47 + 46) > 0x27u || ((*(v47 + 32) & 4) == 0 || (*(v10 + 400) & 4) != 0) && (sub_100026288(v10, 0, a8), *(*(v10 + 56) + 46) > 0x27u))
      {
        sub_100022060(a4, 0, a8);
        sub_100026F14(a4, (*(*(a4 + 56) + 34) - 1), a8);
        v48 = sub_1000269AC(a4, v10, -*(*(v10 + 56) + 36), a8);
        if (!v48)
        {
          sub_100026FD8(a1, a4, v10);
          sub_100049B88(v10, a8);
          if (v45)
          {
            sub_10004BE88(v10, 2);
            sub_100046D50(v10);
          }

          atomic_fetch_add_explicit((a1[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
          sub_10004C7D8(a1, a8, 0);
          return;
        }

        v49 = a1[1];
        if (v49)
        {
          v50 = (v49 + 4040);
        }

        else
        {
          v50 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s failed to move all entries: %d\n", "bt_merge_nodes", 4374, v50, v48);
        sub_1000269AC(a4, v10, *(*(a4 + 56) + 36), a8);
        sub_100026F14(a4, (*(*(a4 + 56) + 34) + 1), a8);
        if (!sub_10001AD80(v10, 0, &v70, &v69))
        {
          *v18 = *(v10 + 112);
          sub_10001DB30(a4, 0, v70, v69, v18, (*(a4 + 407) & 0x7F) + 8, a8);
        }
      }
    }

    if (!v45)
    {
      return;
    }

    sub_10004BE88(v10, 2);
    v62 = v10;
    goto LABEL_106;
  }

  if (*(v20 + 36))
  {
    if (*(*(a2 + 56) + 36) - 1 > a3)
    {
      v21 = a3 + 1;
      if (!sub_10001B084(a2, v21, v18))
      {
        v71 = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_10001A958(a1, v18, a7, 3u, *(*(a2 + 56) + 34) - 1, a8, &v71))
        {
          if ((a1[50] & 0x10) != 0 && v71[14] != *v18)
          {
            sub_10001DFEC(a2, v21, v71 + 14, a8);
          }

          v22 = *(a4 + 56);
          if ((*(v22 + 32) & 4) != 0)
          {
            v51 = *(v22 + 36);
            v25 = v71;
            v67 = v71[7];
            v44 = *(v67 + 36);
            v52 = v44 + v51;
            if (v44 + v51 <= sub_10001ABEC(a4, 0))
            {
              v68 = 0;
              LOWORD(v30) = v44;
            }

            else
            {
              if (v51 >= (v52 >> 1))
              {
                v30 = 0;
              }

              else
              {
                v30 = (v52 >> 1) - v51;
              }

              v68 = v30;
            }
          }

          else
          {
            v64 = v21;
            v23 = 8 * sub_10001ABEC(a4, 0);
            v24 = sub_100025FE8(a4);
            v25 = v71;
            v26 = sub_100025FE8(v71);
            v27 = 0;
            v28 = 0;
            v67 = v25[7];
            v68 = 0;
            v29 = *(v67 + 36);
            v65 = v24 - ((v26 + v24) >> 1);
            v66 = v29;
            do
            {
              LOWORD(v30) = v27;
              if (v66 <= v27)
              {
                break;
              }

              if (v27 && !v68)
              {
                v31 = 8 * (sub_10001ABEC(a4, v27) & 0x1FFF);
                v32 = v31 >= v23;
                v33 = v31 - v23;
                if (!v32)
                {
                  v33 = 0;
                }

                if ((v33 + v28) <= v65)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = v27;
                }

                v68 = v34;
              }

              v35 = v25[50];
              v36 = *(v67 + 32);
              if ((v35 & 0x40) != 0)
              {
                if ((v36 & 4) != 0)
                {
                  v38 = (v35 >> 9) & 0x3FFF;
                }

                else
                {
                  v38 = *(v25[47] + 8 * v30 + 2);
                }
              }

              else
              {
                if ((v36 & 4) != 0)
                {
                  v37 = (v35 >> 9) & 0x3FFF;
                }

                else
                {
                  v37 = *(v25[47] + 8 * v30 + 2);
                }

                v38 = (v37 + 7) & 0x1FFF8;
              }

              v39 = v38 + v28;
              v40 = sub_10001AD08(v25, v30);
              if (v40 == 65534)
              {
                v41 = 0;
              }

              else
              {
                v41 = v40;
              }

              if ((v35 & 0x40) == 0)
              {
                v41 = (v41 + 7) & 0x1FFF8;
              }

              v28 = v39 + v41;
              v27 = (v30 + 1);
              v42 = 8 * (sub_10001ABEC(a4, v27) & 0x1FFF);
              v32 = v42 >= v23;
              v43 = v42 - v23;
              if (!v32)
              {
                v43 = 0;
              }
            }

            while (v43 + v28 <= v24);
            LOWORD(v21) = v64;
            v44 = v66;
          }

          if (v44 != v30)
          {
            if ((*(*(a2 + 56) + 32) & 4) != 0)
            {
              v53 = (*(a2 + 400) >> 9) & 0x3FFF;
            }

            else
            {
              v53 = *(*(a2 + 376) + 8 * v21 + 2);
            }

            if ((*(v67 + 32) & 4) != 0)
            {
              v54 = (*(v25 + 100) >> 9) & 0x3FFF;
            }

            else
            {
              v54 = *(v25[47] + 8 * v68 + 2);
            }

            v69 = v54;
            v55 = *(a2 + 400);
            if ((v55 & 0x40) != 0)
            {
              v56 = v53;
            }

            else
            {
              v56 = (v53 + 7) & 0x1FFF8;
            }

            v57 = (v54 + 7) & 0x1FFF8;
            if ((v55 & 0x40) != 0)
            {
              v57 = v54;
            }

            if (v56 >= v57)
            {
              LOWORD(v30) = v68;
            }

            else
            {
              if ((v55 & 0x40) == 0)
              {
                LOWORD(v54) = (v54 + 7) & 0xFFF8;
                LOWORD(v53) = (v53 + 7) & 0xFFF8;
              }

              v58 = sub_10001E0C4(a2, 0, 0, 0, v54 - v53, 0, 0);
              LOWORD(v30) = v68;
              if (!v58)
              {
                goto LABEL_105;
              }
            }
          }

          if (v30 && !sub_1000269AC(a4, v25, -v30, a8))
          {
            if (*(v25[7] + 36))
            {
              v59 = sub_10001AD80(v25, 0, &v70, &v69);
              if (v59 || (v59 = sub_10001D1CC(a2, v21, v70, v69, 0)) != 0)
              {
                v60 = a1[1];
                if (v60)
                {
                  v61 = (v60 + 4040);
                }

                else
                {
                  v61 = (*(*(*a1 + 392) + 384) + 212);
                }

                sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_merge_nodes", 4515, v61, v59);
              }
            }

            else
            {
              sub_100022060(a2, v21, a8);
              sub_100026FD8(a1, a2, v25);
              sub_100049B88(v25, a8);
              atomic_fetch_add_explicit((a1[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
              sub_10004C7D8(a1, a8, 0);
            }
          }

LABEL_105:
          sub_10004BE88(v25, 2);
          v62 = v25;
LABEL_106:
          sub_100046D50(v62);
        }
      }
    }
  }

  else
  {
    sub_100022060(a2, a3, a8);
    v46 = *(a2 + 56);
    if ((*(v46 + 32) & 1) != 0 && !*(v46 + 36))
    {
      sub_100026F14(a2, 0, a8);
    }

    sub_100026FD8(a1, a2, a4);
    sub_100049B88(a4, a8);
    atomic_fetch_add_explicit((a1[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);

    sub_10004C7D8(a1, a8, 0);
  }
}

uint64_t sub_100027984(void *a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v5 = a1[7];
  *a2 = (a1[50] >> 27) & 0x1F000;
  LODWORD(v5) = v5[25] + v5[23] + v5[27];
  *a3 = v5;
  v6 = *a2 >= v5;
  v7 = *a2 - v5;
  if (v6)
  {
    result = 0;
  }

  else
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v11 + 4040);
    }

    else
    {
      v12 = (*(*(*a1 + 392) + 384) + 212);
    }

    v14 = sub_100047D10(a1);
    sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): freespace %u larger than nodespace %u\n", "btree_node_space_stats", 52, v12, v14, *(a1[7] + 34), *a3, *a2);
    v7 = 0;
    result = 22;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_100027A74(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v7 = a2[7];
  if ((*(v7 + 32) & 2) != 0)
  {
    ++*(a4 + 4);
    *(a4 + 16) += *(v7 + 36);
  }

  else
  {
    ++*a4;
    *(a4 + 12) += *(v7 + 36);
  }

  if (*(a4 + 8) < a3)
  {
    *(a4 + 8) = a3;
  }

  v8 = *(v7 + 34);
  if (v8 <= 0xF)
  {
    ++*(a4 + 4 * v8 + 216);
  }

  v9 = sub_10001A200(a2, 0);
  if (!v9)
  {
    v32 = -1431655766;
    v33 = -1431655766;
    v31 = -1431655766;
    v9 = sub_100027984(a2, &v33, &v32, &v31);
    v10 = v31;
    v11 = v33;
    v12 = 5 * v31 / v33;
    ++*(a4 + 4 * v12 + 20);
    v13 = *(a4 + 56) + v10;
    *(a4 + 48) += v11;
    *(a4 + 56) = v13;
    if ((*(a2[7] + 32) & 2) != 0)
    {
      ++*(a4 + 4 * v12 + 104);
      v15 = *(a4 + 136);
      *(a4 + 128) += v11;
      *(a4 + 136) = v15 + v10;
      if (*(v7 + 36))
      {
        v16 = 0;
        do
        {
          v17 = sub_10001ACB4(a2, v16);
          v18 = sub_10001AD08(a2, v16);
          v19 = *(a1 + 392);
          if (*(v19 + 16) < v17)
          {
            if (v9)
            {
              v9 = v9;
            }

            else
            {
              v9 = 22;
            }

            v20 = a2[1];
            if (v20)
            {
              v21 = (v20 + 4040);
            }

            else
            {
              v21 = (*(*(*a2 + 392) + 384) + 212);
            }

            v22 = sub_100047D10(a2);
            sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): index %d key length %d longer than tree longest %d\n", "btree_node_debug_stats", 110, v21, v22, *(a2[7] + 34), v16, v17, *(*(a1 + 392) + 16));
            v19 = *(a1 + 392);
            v17 = *(v19 + 16);
          }

          if (v18 == 65534 || *(v19 + 20) < v18 && (v9 ? (v9 = v9) : (v9 = 22), (v23 = a2[1]) == 0 ? (v24 = (*(*(*a2 + 392) + 384) + 212)) : (v24 = (v23 + 4040)), v25 = sub_100047D10(a2), sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): index %d val length %d longer than tree longest %d\n", "btree_node_debug_stats", 115, v24, v25, *(a2[7] + 34), v16, v18, *(*(a1 + 392) + 20)), v19 = *(a1 + 392), v18 = *(v19 + 20), v18 == 65534))
          {
            v18 = 0;
          }

          if (*(a4 + 208) < v17)
          {
            *(a4 + 208) = v17;
          }

          if (*(a4 + 212) < v18)
          {
            *(a4 + 212) = v18;
          }

          *(a4 + 144) += v17;
          v26 = *(v19 + 16);
          v27 = (a4 + 180);
          if (v26)
          {
            v27 = (a4 + 160 + 4 * (5 * v17 / v26));
          }

          ++*v27;
          *(a4 + 152) += v18;
          v28 = *(v19 + 20);
          v29 = (a4 + 204);
          if (v28)
          {
            v29 = (a4 + 184 + 4 * (5 * v18 / v28));
          }

          ++*v29;
          ++v16;
        }

        while (v16 < *(v7 + 36));
      }
    }

    else
    {
      ++*(a4 + 4 * v12 + 64);
      v14 = *(a4 + 96) + v10;
      *(a4 + 88) += v11;
      *(a4 + 96) = v14;
    }
  }

  return v9;
}

uint64_t sub_100027E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, char a10, unsigned __int8 a11)
{
  if (!a5 || (v12 = a5[7]) == 0)
  {
    v19 = a5[1];
    if (v19)
    {
      v20 = (v19 + 4040);
    }

    else
    {
      v20 = (*(*(*a5 + 392) + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s btree_node is null\n", "btree_node_check", 152, v20);
    return 22;
  }

  v15 = a6;
  v16 = a1;
  v347 = a2;
  v348 = a4;
  v350 = a3;
  v17 = a5[1];
  if (!v17)
  {
    v17 = *(*a5 + 392);
  }

  v349 = v17;
  if (!a9 || (a1 = sub_100027A74(a1, a5, a6, a9), v18 = a1, !a1))
  {
    if (!v16 && (a5[4] & 1) == 0)
    {
      return 0;
    }

    v345 = a9;
    v344 = a11;
    v346 = v15;
    if ((a11 & 1) == 0)
    {
      v18 = 0;
      if (v350 && (*(v12 + 32) & 1) != 0)
      {
        v26 = a5[1];
        if (v26)
        {
          v27 = (v26 + 4040);
        }

        else
        {
          v27 = (*(*(*a5 + 392) + 384) + 212);
        }

        v28 = sub_100047D10(a5);
        v29 = *(a5[7] + 34);
        v30 = sub_100047D10(v350);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): root node has a parent 0x%llx (level %d)\n", "btree_node_check", 183, v27, v28, v29, v30, *(*(v350 + 7) + 34));
        v18 = 22;
        v15 = v346;
      }

      if ((*(v12 + 32) & 2) != 0 && *(v12 + 34))
      {
        v31 = a5[1];
        if (v31)
        {
          v32 = (v31 + 4040);
        }

        else
        {
          v32 = (*(*(*a5 + 392) + 384) + 212);
        }

        v34 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): leaf node has non-zero level\n", "btree_node_check", 186, v32, v34, *(v12 + 34));
        v18 = 22;
      }

      if (v16)
      {
        if (*(a5[7] + 34) > *(v16[7] + 34))
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          v35 = a5[1];
          if (v35)
          {
            v36 = (v35 + 4040);
          }

          else
          {
            v36 = (*(*(*a5 + 392) + 384) + 212);
          }

          v37 = sub_100047D10(a5);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): node level greater than root level %d\n", "btree_node_check", 189, v36, v37, *(v12 + 34), *(v16[7] + 34));
        }

        v38 = v15 - 1;
        if (*(v16[7] + 34) - (v15 - 1) != *(a5[7] + 34))
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          v39 = a5[1];
          if (v39)
          {
            v40 = (v39 + 4040);
          }

          else
          {
            v40 = (*(*(*a5 + 392) + 384) + 212);
          }

          v41 = sub_100047D10(a5);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): node level should be %d\n", "btree_node_check", 192, v40, v41, *(v12 + 34), *(v16[7] + 34) - v38);
        }
      }

      if (*(v12 + 32))
      {
        v42 = -96;
      }

      else
      {
        v42 = -56;
      }

      v43 = v42 + ((a5[50] >> 27) & 0xF000);
      if (*(v12 + 40))
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v44 = a5[1];
        if (v44)
        {
          v45 = (v44 + 4040);
        }

        else
        {
          v45 = (*(*(*a5 + 392) + 384) + 212);
        }

        v46 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): invalid table space offset\n", "btree_node_check", 203, v45, v46, *(a5[7] + 34));
      }

      if (*(v12 + 42) > v43)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v47 = a5[1];
        if (v47)
        {
          v48 = (v47 + 4040);
        }

        else
        {
          v48 = (*(*(*a5 + 392) + 384) + 212);
        }

        v49 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): table space length larger than available data space\n", "btree_node_check", 206, v48, v49, *(a5[7] + 34));
      }

      if ((*(v12 + 32) & 4) == 0)
      {
        v50 = *(v12 + 42);
        if (v50 < 8 * sub_10001ABD0(a5))
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          if (!a5[1])
          {
            v54 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v305 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): table space length smaller than minimum\n");
          return v18;
        }
      }

      if (v18)
      {
        return v18;
      }

      v51 = (v43 - *(v12 + 42));
      if (*(v12 + 44) <= (v43 - *(v12 + 42)))
      {
        v18 = 0;
      }

      else
      {
        v52 = a5[1];
        if (v52)
        {
          v53 = (v52 + 4040);
        }

        else
        {
          v53 = (*(*(*a5 + 392) + 384) + 212);
        }

        v56 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): free space offset too large\n", "btree_node_check", 218, v53, v56, *(a5[7] + 34));
        v18 = 22;
      }

      if (*(v12 + 46) + *(v12 + 44) > v51)
      {
        v57 = a5[1];
        if (v57)
        {
          v58 = (v57 + 4040);
        }

        else
        {
          v58 = (*(*(*a5 + 392) + 384) + 212);
        }

        v59 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): free space extends beyond end of node\n", "btree_node_check", 221, v58, v59, *(a5[7] + 34));
        v18 = 22;
      }

      v341 = *(v12 + 44);
      v60 = *(v12 + 46);
      if (*(v12 + 36) > v51)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v61 = a5[1];
        if (v61)
        {
          v62 = (v61 + 4040);
        }

        else
        {
          v62 = (*(*(*a5 + 392) + 384) + 212);
        }

        v63 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key count larger than possible\n", "btree_node_check", 228, v62, v63, *(a5[7] + 34));
      }

      v64 = *(v12 + 36);
      v340 = v51;
      if (v64 > v341 && (*(v12 + 32) & 0x80000000) == 0)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v65 = a5[1];
        if (v65)
        {
          v66 = (v65 + 4040);
        }

        else
        {
          v66 = (*(*(*a5 + 392) + 384) + 212);
        }

        v68 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key count larger than gross key space\n", "btree_node_check", 231, v66, v68, *(a5[7] + 34));
      }

      v69 = *(v12 + 36);
      v70 = *(v12 + 42);
      if (v69 > v70 / sub_10001ABD0(a5))
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        if (!a5[1])
        {
          v73 = *(*(*a5 + 392) + 384) + 212;
        }

        sub_100047D10(a5);
        v306 = *(a5[7] + 34);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key count larger than TOC space\n");
        return v18;
      }

      if (v18)
      {
        return v18;
      }

      if (a5[47] == v12 + 56)
      {
        v18 = 0;
      }

      else
      {
        v71 = a5[1];
        if (v71)
        {
          v72 = (v71 + 4040);
        }

        else
        {
          v72 = (*(*(*a5 + 392) + 384) + 212);
        }

        v75 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): invalid TOC[] pointer\n", "btree_node_check", 242, v72, v75, *(a5[7] + 34));
        v18 = 22;
      }

      if (a5[48] != v12 + 56 + *(v12 + 42))
      {
        v76 = a5[1];
        if (v76)
        {
          v77 = (v76 + 4040);
        }

        else
        {
          v77 = (*(*(*a5 + 392) + 384) + 212);
        }

        v78 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): invalid keys[] pointer\n", "btree_node_check", 245, v77, v78, *(a5[7] + 34));
        v18 = 22;
      }

      if ((*(v12 + 32) & 1) != 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000) - 40)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v79 = a5[1];
        if (v79)
        {
          v80 = (v79 + 4040);
        }

        else
        {
          v80 = (*(*(*a5 + 392) + 384) + 212);
        }

        v81 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n", "btree_node_check", 248, v80, v81, *(a5[7] + 34));
      }

      if ((*(v12 + 32) & 1) == 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000))
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        if (!a5[1])
        {
          v86 = *(*(*a5 + 392) + 384) + 212;
        }

        sub_100047D10(a5);
        v308 = *(a5[7] + 34);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n");
        return v18;
      }

      if (v18)
      {
        return v18;
      }

      v82 = v341 + v60;
      if (*(v12 + 50) <= v341)
      {
        v18 = 0;
        v85 = v340;
      }

      else
      {
        v83 = a5[1];
        if (v83)
        {
          v84 = (v83 + 4040);
        }

        else
        {
          v84 = (*(*(*a5 + 392) + 384) + 212);
        }

        v85 = v340;
        v139 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key free list space larger than key space available\n", "btree_node_check", 259, v84, v139, *(a5[7] + 34));
        v18 = 22;
      }

      v140 = v85 - v82;
      v141 = *(v12 + 48);
      if (v141 != 0xFFFF && v341 - 4 < v141)
      {
        v142 = a5[1];
        if (v142)
        {
          v143 = (v142 + 4040);
        }

        else
        {
          v143 = (*(*(*a5 + 392) + 384) + 212);
        }

        v144 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key free list head beyond key space available\n", "btree_node_check", 263, v143, v144, *(a5[7] + 34));
        v18 = 22;
      }

      if (*(v12 + 54) > v140)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v145 = a5[1];
        if (v145)
        {
          v146 = (v145 + 4040);
        }

        else
        {
          v146 = (*(*(*a5 + 392) + 384) + 212);
        }

        v147 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val free list space larger than val space available\n", "btree_node_check", 266, v146, v147, *(a5[7] + 34));
      }

      v148 = *(v12 + 52);
      if (v148 != 0xFFFF)
      {
        if (v148 > v140)
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          v149 = a5[1];
          if (v149)
          {
            v150 = (v149 + 4040);
          }

          else
          {
            v150 = (*(*(*a5 + 392) + 384) + 212);
          }

          v155 = sub_100047D10(a5);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val free list head beyond val space available\n", "btree_node_check", 270, v150, v155, *(a5[7] + 34));
          v148 = *(v12 + 52);
        }

        if (v148 <= 3)
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          if (!a5[1])
          {
            v173 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v314 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val free list head beyond end of node\n");
          return v18;
        }
      }

      if (v18)
      {
        return v18;
      }

      v339 = v341 - 4;
      v156 = sub_10003FA58((v340 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
      v157 = sub_10003FA58((v340 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
      v337 = (v340 + 63) >> 6;
      v338 = v157;
      if (!v156 || !v157)
      {
        v171 = a5[1];
        if (v171)
        {
          v172 = (v171 + 4040);
        }

        else
        {
          v172 = (*(*(*a5 + 392) + 384) + 212);
        }

        v174 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): couldn't allocate bitmap to check btree node space usage\n", "btree_node_check", 286, v172, v174, *(a5[7] + 34));
        v18 = 12;
        goto LABEL_398;
      }

      v336 = v140;
      v342 = a7;
      v343 = a8;
      sub_100019AA8(v156, *(v12 + 44), *(v12 + 46), v158);
      v159 = 0;
      LOWORD(v160) = *(v12 + 48);
      v161 = v156;
      while (1)
      {
        v162 = v160;
        if (v160 == 0xFFFF)
        {
          break;
        }

        if (v160 >= v341 || v339 < v160)
        {
          if (!a5[1])
          {
            v191 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v315 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key free list entry starts beyond key space available\n");
          goto LABEL_396;
        }

        v163 = (a5[48] + v160);
        v164 = v163[1];
        if (v164 <= 3)
        {
          if (!a5[1])
          {
            v192 = *(*(*a5 + 392) + 384) + 212;
          }

LABEL_389:
          sub_100047D10(a5);
          v316 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key free list entry len value too small\n");
          goto LABEL_396;
        }

        v165 = v164 + v160;
        if (v165 > v341)
        {
          if (!a5[1])
          {
            v193 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v317 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key free list entry extends beyond key space available\n");
          goto LABEL_396;
        }

        if (!sub_1000199B8(v156, v162, v164, v165))
        {
          if (!a5[1])
          {
            v194 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v318 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key free list entry overlaps with other free space\n");
          goto LABEL_396;
        }

        sub_100019AA8(v156, v162, v163[1], v166);
        v159 += v163[1];
        v167 = *(v12 + 50);
        if (v159 <= v167)
        {
          v18 = 0;
        }

        else
        {
          v168 = a5[1];
          if (v168)
          {
            v169 = (v168 + 4040);
          }

          else
          {
            v169 = (*(*(*a5 + 392) + 384) + 212);
          }

          v170 = sub_100047D10(a5);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key free list entries total space exceeds free list space\n", "btree_node_check", 326, v169, v170, *(a5[7] + 34));
          v18 = 22;
        }

        v160 = *v163;
        if (v162 == v160)
        {
          if (!a5[1])
          {
            v195 = *(*(*a5 + 392) + 384) + 212;
          }

LABEL_395:
          sub_100047D10(a5);
          v319 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key free list entry points to itself\n");
          goto LABEL_396;
        }

        v156 = v161;
        if (v159 > v167)
        {
          goto LABEL_398;
        }
      }

      v176 = 0;
      LOWORD(v177) = *(v12 + 52);
      while (1)
      {
        v178 = v177;
        if (v177 == 0xFFFF)
        {
          break;
        }

        if (v177 <= 3u)
        {
          v179 = a5[1];
          if (v179)
          {
            v180 = (v179 + 4040);
          }

          else
          {
            v180 = (*(*(*a5 + 392) + 384) + 212);
          }

          v181 = sub_100047D10(a5);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val free list entry beyond end of node\n", "btree_node_check", 342, v180, v181, *(a5[7] + 34));
          v18 = 22;
        }

        else
        {
          v18 = 0;
        }

        if (v178 > v336)
        {
          if (!a5[1])
          {
            v198 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v320 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val free list entry starts beyond val space available\n");
          goto LABEL_396;
        }

        v156 = v161;
        if (v178 < 4)
        {
          goto LABEL_398;
        }

        v182 = (a5[49] - v178);
        v183 = v182[1];
        if (v183 <= 3)
        {
          if (!a5[1])
          {
            v199 = *(*(*a5 + 392) + 384) + 212;
          }

          goto LABEL_389;
        }

        if (v178 < v183)
        {
          if (!a5[1])
          {
            v200 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v321 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val free list entry extends beyond val space available\n");
          goto LABEL_396;
        }

        v184 = v340 - v178;
        v185 = v184;
        if (!sub_1000199B8(v161, v184, v183, v184))
        {
          if (!a5[1])
          {
            v201 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v322 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val free list entry overlaps with other free space\n");
          goto LABEL_396;
        }

        sub_100019AA8(v161, v185, v182[1], v186);
        v176 += v182[1];
        v187 = *(v12 + 54);
        if (v176 <= v187)
        {
          v18 = 0;
        }

        else
        {
          v188 = a5[1];
          if (v188)
          {
            v189 = (v188 + 4040);
          }

          else
          {
            v189 = (*(*(*a5 + 392) + 384) + 212);
          }

          v190 = sub_100047D10(a5);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val free list entries total space exceeds free list space\n", "btree_node_check", 372, v189, v190, *(a5[7] + 34));
          v18 = 22;
        }

        v177 = *v182;
        if (v178 == v177)
        {
          if (!a5[1])
          {
            v202 = *(*(*a5 + 392) + 384) + 212;
          }

          goto LABEL_395;
        }

        v156 = v161;
        if (v176 > v187)
        {
          goto LABEL_398;
        }
      }

      if ((*(v12 + 32) & 4) != 0 && (*(a5 + 401) & 0x7FFE) == 0)
      {
        v203 = a5[1];
        if (v203)
        {
          v204 = (v203 + 4040);
        }

        else
        {
          v204 = (*(*(*a5 + 392) + 384) + 212);
        }

        v205 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says key size is variable\n", "btree_node_check", 387, v204, v205, *(a5[7] + 34));
        v18 = 22;
      }

      else
      {
        v18 = 0;
      }

      if ((*(a5[7] + 32) & 2) == 0 && (*(a5 + 401) & 0x7FFE) != 0 && (*(v12 + 32) & 4) == 0)
      {
        v196 = a5[1];
        if (v196)
        {
          v197 = (v196 + 4040);
        }

        else
        {
          v197 = (*(*(*a5 + 392) + 384) + 212);
        }

        v206 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): tree says key size is fixed, but node says kv size is variable\n", "btree_node_check", 390, v197, v206, *(a5[7] + 34));
        v18 = 22;
      }

      if ((*(v12 + 32) & 4) != 0 && (*(a5[7] + 32) & 2) != 0 && (*(a5 + 401) & 0x7FFF8000) == 0)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v207 = a5[1];
        if (v207)
        {
          v208 = (v207 + 4040);
        }

        else
        {
          v208 = (*(*(*a5 + 392) + 384) + 212);
        }

        v209 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says val size is variable\n", "btree_node_check", 393, v208, v209, *(a5[7] + 34));
      }

      v210 = a5[7];
      v211 = *(v210 + 32);
      if ((v211 & 2) != 0)
      {
        v255 = a5[50];
        if ((v255 & 0x7FFF800000) != 0 && (v255 & 4) == 0 && (v255 & 0x7FFE00) != 0 && (*(v12 + 32) & 4) == 0)
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          if (!a5[1])
          {
            v294 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v323 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): tree says kv sizes are fixed, but leaf says kv size is variable\n");
          goto LABEL_397;
        }
      }

      v156 = v161;
      if (v18)
      {
LABEL_398:
        if (v156)
        {
          sub_10003FB5C(v156, (8 * v337));
        }

        if (v338)
        {
          sub_10003FB5C(v338, (8 * v337));
        }

        return v18;
      }

      v212 = a5[47];
      if ((*(v12 + 32) & 4) != 0)
      {
        v256 = a5[50];
        if ((v211 & 2) != 0)
        {
          v257 = v256 >> 23;
        }

        else
        {
          v257 = 8;
        }

        if (*(v210 + 36))
        {
          v258 = 0;
          v335 = (v256 >> 9) & 0x3FFF;
          v332 = (v335 + 7) & 0x7FF8;
          v334 = v257;
          v333 = (v257 + 7) & 0x1FFF8;
          v259 = (v212 + 2);
          do
          {
            v260 = *(v259 - 1);
            v339 = *v259;
            if (v260 == 0xFFFF)
            {
              if ((*(v12 + 32) & 0x80000000) == 0)
              {
                if (!a5[1])
                {
                  v297 = *(*(*a5 + 392) + 384) + 212;
                }

                sub_100047D10(a5);
                v326 = *(a5[7] + 34);
LABEL_662:
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): invalid key offset\n");
LABEL_396:
                v18 = 22;
LABEL_397:
                v156 = v161;
                goto LABEL_398;
              }

              v18 = 0;
            }

            else
            {
              v261 = *(v210 + 32);
              if ((v261 & 2) != 0 && (v16 && *(v16[49] + 16) < v335 || (v261 & 1) != 0 && *(a5[49] + 16) < v335))
              {
                v262 = a5[1];
                if (v262)
                {
                  v263 = (v262 + 4040);
                }

                else
                {
                  v263 = (*(*(*a5 + 392) + 384) + 212);
                }

                v264 = sub_100047D10(a5);
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 452, v263, v264, *(a5[7] + 34));
                v18 = 22;
              }

              else
              {
                v18 = 0;
              }

              if (v260 >= v341)
              {
                v265 = a5[1];
                if (v265)
                {
                  v266 = (v265 + 4040);
                }

                else
                {
                  v266 = (*(*(*a5 + 392) + 384) + 212);
                }

                v267 = sub_100047D10(a5);
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 452, v266, v267, *(a5[7] + 34));
                v18 = 22;
              }

              if (v335 + v260 <= v341)
              {
                if (!v18)
                {
                  if (sub_1000199B8(v161, v260, v335, &v359))
                  {
                    v18 = 0;
                  }

                  else
                  {
                    v271 = a5[1];
                    if (v271)
                    {
                      v272 = (v271 + 4040);
                    }

                    else
                    {
                      v272 = (*(*(*a5 + 392) + 384) + 212);
                    }

                    v273 = sub_100047D10(a5);
                    sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 452, v272, v273, *(a5[7] + 34));
                    v18 = 22;
                  }

                  if (!sub_1000199B8(v338, v260, v335, &v359))
                  {
                    v274 = a5[1];
                    if (v274)
                    {
                      v275 = (v274 + 4040);
                    }

                    else
                    {
                      v275 = (*(*(*a5 + 392) + 384) + 212);
                    }

                    v276 = sub_100047D10(a5);
                    sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 452, v275, v276, *(a5[7] + 34));
                    v18 = 22;
                  }

                  if ((a5[50] & 0x40) != 0)
                  {
                    v277 = v335;
                  }

                  else
                  {
                    v277 = v332;
                  }

                  sub_100019AA8(v338, v260, v277, v332);
                }
              }

              else
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                v268 = a5[1];
                if (v268)
                {
                  v269 = (v268 + 4040);
                }

                else
                {
                  v269 = (*(*(*a5 + 392) + 384) + 212);
                }

                v270 = sub_100047D10(a5);
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 452, v269, v270, *(a5[7] + 34));
              }
            }

            if (v339 <= 0xFFFD)
            {
              v278 = *(a5[7] + 32);
              if ((v278 & 2) != 0 && (v16 && *(v16[49] + 20) < v334 || (v278 & 1) != 0 && *(a5[49] + 20) < v334))
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                v279 = a5[1];
                if (v279)
                {
                  v280 = (v279 + 4040);
                }

                else
                {
                  v280 = (*(*(*a5 + 392) + 384) + 212);
                }

                v281 = sub_100047D10(a5);
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 455, v280, v281, *(a5[7] + 34));
              }

              if (v339 > v336)
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                v282 = a5[1];
                if (v282)
                {
                  v283 = (v282 + 4040);
                }

                else
                {
                  v283 = (*(*(*a5 + 392) + 384) + 212);
                }

                v284 = sub_100047D10(a5);
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 455, v283, v284, *(a5[7] + 34));
              }

              if (v339 < v257)
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                if (!a5[1])
                {
                  v295 = *(*(*a5 + 392) + 384) + 212;
                }

                sub_100047D10(a5);
                v324 = *(a5[7] + 34);
LABEL_657:
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val location extends beyond val space\n");
                goto LABEL_397;
              }

              v156 = v161;
              if (v18)
              {
                goto LABEL_398;
              }

              v285 = v340 - v339;
              if (sub_1000199B8(v161, v340 - v339, v257, v340))
              {
                v18 = 0;
              }

              else
              {
                v287 = a5[1];
                if (v287)
                {
                  v288 = (v287 + 4040);
                }

                else
                {
                  v288 = (*(*(*a5 + 392) + 384) + 212);
                }

                v289 = sub_100047D10(a5);
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 455, v288, v289, *(a5[7] + 34));
                v18 = 22;
              }

              if (!sub_1000199B8(v338, v285, v257, v286))
              {
                v290 = a5[1];
                if (v290)
                {
                  v291 = (v290 + 4040);
                }

                else
                {
                  v291 = (*(*(*a5 + 392) + 384) + 212);
                }

                v292 = sub_100047D10(a5);
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 455, v291, v292, *(a5[7] + 34));
                v18 = 22;
              }

              if ((a5[50] & 0x40) != 0)
              {
                v293 = v334;
              }

              else
              {
                v293 = v333;
              }

              sub_100019AA8(v338, v285, v293, v334);
            }

            v156 = v161;
            if (v18)
            {
              goto LABEL_398;
            }

            v259 += 2;
            ++v258;
            v210 = a5[7];
          }

          while (v258 < *(v210 + 36));
        }
      }

      else if (*(v210 + 36))
      {
        v213 = 0;
        v214 = (v212 + 4);
        do
        {
          v215 = *(v214 - 2);
          v339 = *v214;
          v216 = v214[1];
          if (v215 == 0xFFFF)
          {
            if ((*(v12 + 32) & 0x80000000) == 0)
            {
              if (!a5[1])
              {
                v298 = *(*(*a5 + 392) + 384) + 212;
              }

              sub_100047D10(a5);
              v327 = *(a5[7] + 34);
              goto LABEL_662;
            }

            v18 = 0;
          }

          else
          {
            v217 = *(v214 - 1);
            v218 = *(v210 + 32);
            if ((v218 & 2) != 0 && (v16 && *(v16[49] + 16) < v217 || (v218 & 1) != 0 && *(a5[49] + 16) < v217))
            {
              v219 = a5[1];
              if (v219)
              {
                v220 = (v219 + 4040);
              }

              else
              {
                v220 = (*(*(*a5 + 392) + 384) + 212);
              }

              v221 = sub_100047D10(a5);
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 475, v220, v221, *(a5[7] + 34));
              v18 = 22;
            }

            else
            {
              v18 = 0;
            }

            if (v215 >= v341)
            {
              v222 = a5[1];
              if (v222)
              {
                v223 = (v222 + 4040);
              }

              else
              {
                v223 = (*(*(*a5 + 392) + 384) + 212);
              }

              v224 = sub_100047D10(a5);
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 475, v223, v224, *(a5[7] + 34));
              v18 = 22;
            }

            v225 = (v217 + v215);
            if (v225 <= v341)
            {
              if (!v18)
              {
                if (sub_1000199B8(v161, v215, v217, v225))
                {
                  v18 = 0;
                }

                else
                {
                  v230 = a5[1];
                  if (v230)
                  {
                    v231 = (v230 + 4040);
                  }

                  else
                  {
                    v231 = (*(*(*a5 + 392) + 384) + 212);
                  }

                  v232 = sub_100047D10(a5);
                  sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 475, v231, v232, *(a5[7] + 34));
                  v18 = 22;
                }

                if (!sub_1000199B8(v338, v215, v217, v228))
                {
                  v233 = a5[1];
                  if (v233)
                  {
                    v234 = (v233 + 4040);
                  }

                  else
                  {
                    v234 = (*(*(*a5 + 392) + 384) + 212);
                  }

                  v235 = sub_100047D10(a5);
                  sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 475, v234, v235, *(a5[7] + 34));
                  v18 = 22;
                }

                v236 = a5[50];
                if ((v236 & 0x40) != 0)
                {
                  v237 = v217;
                }

                else
                {
                  v237 = (v217 + 7) & 0x1FFF8;
                }

                sub_100019AA8(v338, v215, v237, v236);
              }
            }

            else
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              v226 = a5[1];
              if (v226)
              {
                v227 = (v226 + 4040);
              }

              else
              {
                v227 = (*(*(*a5 + 392) + 384) + 212);
              }

              v229 = sub_100047D10(a5);
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 475, v227, v229, *(a5[7] + 34));
            }
          }

          if (v339 > 0xFFFD)
          {
            if (v216 && v216 != 65534)
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              if (!a5[1])
              {
                v299 = *(*(*a5 + 392) + 384) + 212;
              }

              sub_100047D10(a5);
              v328 = *(a5[7] + 34);
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): invalid val offset has non-zero length\n");
              goto LABEL_397;
            }
          }

          else
          {
            v238 = *(a5[7] + 32);
            if ((v238 & 2) != 0 && (v16 && *(v16[49] + 20) < v216 || (v238 & 1) != 0 && *(a5[49] + 20) < v216))
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              v239 = a5[1];
              if (v239)
              {
                v240 = (v239 + 4040);
              }

              else
              {
                v240 = (*(*(*a5 + 392) + 384) + 212);
              }

              v241 = sub_100047D10(a5);
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 478, v240, v241, *(a5[7] + 34));
            }

            if (v339 > v336)
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              v242 = a5[1];
              if (v242)
              {
                v243 = (v242 + 4040);
              }

              else
              {
                v243 = (*(*(*a5 + 392) + 384) + 212);
              }

              v244 = sub_100047D10(a5);
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 478, v243, v244, *(a5[7] + 34));
            }

            if (v339 < v216)
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              if (!a5[1])
              {
                v296 = *(*(*a5 + 392) + 384) + 212;
              }

              sub_100047D10(a5);
              v325 = *(a5[7] + 34);
              goto LABEL_657;
            }

            v156 = v161;
            if (v18)
            {
              goto LABEL_398;
            }

            v245 = v340 - v339;
            if (sub_1000199B8(v161, v340 - v339, v216, v340))
            {
              v18 = 0;
            }

            else
            {
              v247 = a5[1];
              if (v247)
              {
                v248 = (v247 + 4040);
              }

              else
              {
                v248 = (*(*(*a5 + 392) + 384) + 212);
              }

              v249 = sub_100047D10(a5);
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 478, v248, v249, *(a5[7] + 34));
              v18 = 22;
            }

            if (!sub_1000199B8(v338, v245, v216, v246))
            {
              v250 = a5[1];
              if (v250)
              {
                v251 = (v250 + 4040);
              }

              else
              {
                v251 = (*(*(*a5 + 392) + 384) + 212);
              }

              v252 = sub_100047D10(a5);
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 478, v251, v252, *(a5[7] + 34));
              v18 = 22;
            }

            v253 = a5[50];
            if ((v253 & 0x40) != 0)
            {
              v254 = v216;
            }

            else
            {
              v254 = (v216 + 7) & 0x1FFF8;
            }

            sub_100019AA8(v338, v245, v254, v253);
          }

          v156 = v161;
          if (v18)
          {
            goto LABEL_398;
          }

          v214 += 4;
          ++v213;
          v210 = a5[7];
        }

        while (v213 < *(v210 + 36));
      }

      sub_10003FB5C(v161, 8 * v337);
      sub_10003FB5C(v338, 8 * v337);
      a8 = v343;
      a7 = v342;
      v15 = v346;
    }

    v357 = 0;
    v358 = 0xAAAAAAAAAAAAAAAALL;
    v356 = -21846;
    v355 = 0;
    v354 = 0;
    v22 = a5[7];
    v23 = v350;
    v24 = v348;
    if (v350 && *(v22 + 36))
    {
      v25 = sub_10001AD80(v350, v348, &v358, &v356);
      if (v25)
      {
        v18 = v25;
        if (!a5[1])
        {
          v55 = *(*(*a5 + 392) + 384) + 212;
        }

        sub_100047D10(v350);
        v300 = *(*(v350 + 7) + 34);
LABEL_282:
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n");
        return v18;
      }

      v33 = sub_10001AD80(a5, 0, &v357, &v355);
      if (v33)
      {
        v18 = v33;
        if (!a5[1])
        {
          v67 = *(*(*a5 + 392) + 384) + 212;
        }

        sub_100047D10(a5);
        v301 = *(a5[7] + 34);
        goto LABEL_282;
      }

      a1 = (a5[52])(v349, v358, v356, v357, v355, &v354);
      if (a1)
      {
        v18 = a1;
        if (!a5[1])
        {
          v74 = *(*(*a5 + 392) + 384) + 212;
        }

        sub_100047D10(a5);
        v307 = *(a5[7] + 34);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): minkey compare error: %d\n");
        return v18;
      }

      if (v354 >= 1)
      {
        if (!a5[1])
        {
          v87 = *(*(*a5 + 392) + 384) + 212;
        }

        sub_100047D10(a5);
        v309 = *(a5[7] + 34);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): minkey not correct\n");
        return 22;
      }

      if (v354)
      {
        if (!a5[1])
        {
          v151 = *(*(*a5 + 392) + 384) + 212;
        }

        sub_100047D10(a5);
        v313 = *(a5[7] + 34);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): minkey not in sync\n");
        return 22;
      }

      v22 = a5[7];
      v23 = v350;
      v24 = v348;
    }

    v88 = *(v22 + 36);
    if (v88 >= 2)
    {
      v342 = a7;
      v343 = a8;
      v18 = 0;
      for (i = 1; i < v88; ++i)
      {
        a1 = sub_10001AC90(a5, (i - 1));
        if (a1 != 0xFFFF)
        {
          a1 = sub_10001AC90(a5, i);
          if (a1 != 0xFFFF)
          {
            v90 = sub_10001AD80(a5, (i - 1), &v358, &v356);
            if (v90)
            {
              v91 = v90;
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = v90;
              }

              v92 = a5[1];
              if (v92)
              {
                v93 = (v92 + 4040);
              }

              else
              {
                v93 = (*(*(*a5 + 392) + 384) + 212);
              }

              v94 = sub_100047D10(a5);
              a1 = sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 536, v93, v94, *(a5[7] + 34), i - 1, v91);
            }

            else
            {
              a1 = sub_10001AD80(a5, i, &v357, &v355);
              if (a1)
              {
                v95 = a1;
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = a1;
                }

                v96 = a5[1];
                if (v96)
                {
                  v97 = (v96 + 4040);
                }

                else
                {
                  v97 = (*(*(*a5 + 392) + 384) + 212);
                }

                v98 = sub_100047D10(a5);
                a1 = sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 543, v97, v98, *(a5[7] + 34), i, v95);
              }
            }

            if (!v18)
            {
              a1 = (a5[52])(v349, v358, v356, v357, v355, &v354);
              if (a1)
              {
                v18 = a1;
                v99 = a5[1];
                if (v99)
                {
                  v100 = (v99 + 4040);
                }

                else
                {
                  v100 = (*(*(*a5 + 392) + 384) + 212);
                }

                v101 = sub_100047D10(a5);
                a1 = sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n", "btree_node_check", 547, v100, v101, *(a5[7] + 34), i, v18);
              }

              else if (v354 < 0)
              {
                v18 = 0;
              }

              else
              {
                v102 = a5[1];
                if (v102)
                {
                  v103 = (v102 + 4040);
                }

                else
                {
                  v103 = (*(*(*a5 + 392) + 384) + 212);
                }

                v104 = sub_100047D10(a5);
                a1 = sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): keys out of order: %d\n", "btree_node_check", 550, v103, v104, *(a5[7] + 34), i);
                v18 = 22;
              }
            }
          }
        }

        v88 = *(a5[7] + 36);
      }

      a8 = v343;
      a7 = v342;
      v15 = v346;
      if (v18)
      {
        return v18;
      }

      v23 = v350;
      v24 = v348;
    }

    if (v23)
    {
      a1 = sub_10001AD80(a5, (v88 - 1), &v358, &v356);
      if (a1)
      {
        v105 = a1;
        v106 = a5[1];
        if (v106)
        {
          v107 = (v106 + 4040);
        }

        else
        {
          v107 = (*(*(*a5 + 392) + 384) + 212);
        }

        v108 = sub_100047D10(a5);
        sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 559, v107, v108, *(a5[7] + 34), *(a5[7] + 36) - 1, v105);
        return 22;
      }

      if (*(*(v23 + 56) + 36) - 1 <= v24)
      {
        v357 = a7;
        v355 = a8;
        v109 = a8;
        v110 = a7;
      }

      else
      {
        a1 = sub_10001AD80(v23, (v24 + 1), &v357, &v355);
        if (a1)
        {
          v18 = a1;
          if (!a5[1])
          {
            v134 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(v350);
          v302 = *(*(v350 + 7) + 34);
          goto LABEL_282;
        }

        v110 = v357;
        v109 = v355;
      }

      if (v110 && v109 && v356)
      {
        a1 = (a5[52])(v349, v358);
        if (a1)
        {
          v18 = a1;
          if (!a5[1])
          {
            v136 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v137 = a5[7];
          v304 = (*(v137 + 36) - 1);
          v303 = *(v137 + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n");
          return v18;
        }

        if ((v354 & 0x80000000) == 0)
        {
          if (!a5[1])
          {
            v138 = *(*(*a5 + 392) + 384) + 212;
          }

          sub_100047D10(a5);
          v312 = *(a5[7] + 34);
          sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): node's max key is not less than next sibling's entry in parent\n");
          return 22;
        }
      }
    }

    if (!v16)
    {
      return 0;
    }

    v111 = a5[7];
    if ((*(v111 + 32) & 2) != 0 || *(v111 + 36))
    {
      v18 = 0;
    }

    else
    {
      v132 = a5[1];
      if (v132)
      {
        v133 = (v132 + 4040);
      }

      else
      {
        v133 = (*(*(*a5 + 392) + 384) + 212);
      }

      v135 = sub_100047D10(a5);
      a1 = sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): non-leaf node has no children?\n", "btree_node_check", 595, v133, v135, *(a5[7] + 34));
      v18 = 22;
    }

    if ((*(a5[7] + 32) & 2) == 0 && (a10 & 1) == 0)
    {
      v350 = v331;
      v112 = a5[50];
      __chkstk_darwin(a1);
      v114 = &v331[-v113];
      bzero(&v331[-v113], v115);
      if (*(a5[7] + 36))
      {
        v343 = a8;
        v116 = v15;
        v117 = 0;
        LODWORD(v349) = v116 + 1;
        do
        {
          if (sub_10001AC90(a5, v117) != 0xFFFF && sub_10001ACDC(a5, v117) != 0xFFFF)
          {
            v118 = sub_10001B084(a5, v117, v114);
            if (v118)
            {
              v119 = v118;
              v120 = a7;
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              v121 = a5[1];
              if (v121)
              {
                v122 = (v121 + 4040);
              }

              else
              {
                v122 = (*(*(*a5 + 392) + 384) + 212);
              }

              v123 = sub_100047D10(a5);
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): can't get child %d oid: %d\n", "btree_node_check", 606, v122, v123, *(a5[7] + 34), v117, v119);
              a7 = v120;
            }

            else if (*v114)
            {
              v352 = a7;
              v353 = 0xAAAAAAAAAAAAAAAALL;
              v351 = v343;
              v124 = a5[7];
              if (v117 < *(v124 + 36) - 1)
              {
                v125 = sub_10001AD80(a5, (v117 + 1), &v352, &v351);
                if (v125)
                {
                  v152 = v125;
                  if (v18)
                  {
                    v18 = v18;
                  }

                  else
                  {
                    v18 = 22;
                  }

                  v153 = a5[1];
                  if (v153)
                  {
                    v154 = (v153 + 4040);
                  }

                  else
                  {
                    v154 = (*(*(*a5 + 392) + 384) + 212);
                  }

                  v175 = sub_100047D10(a5);
                  sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 625, v154, v175, *(a5[7] + 34), v117 + 1, v152);
                  return v18;
                }

                v124 = a5[7];
              }

              v126 = v347;
              if (sub_10001A958(v16, v114, v347, 0x202u, *(v124 + 34) - 1, 0, &v353))
              {
                v127 = 1;
              }

              else
              {
                v127 = v353 == 0;
              }

              if (v127)
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                if (!a5[1])
                {
                  v131 = *(*(*a5 + 392) + 384) + 212;
                }

                sub_100047D10(a5);
                v311 = *(a5[7] + 34);
                v330 = *v114;
                sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): can't get child: 0x%llx\n");
              }

              else
              {
                v128 = sub_100027E04(v16, v126, a5, v117);
                if (v18)
                {
                  v129 = 1;
                }

                else
                {
                  v129 = v128 == 0;
                }

                if (v129)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = v128;
                }

                sub_10004BE88(v353, 1);
                sub_100046D50(v353);
              }
            }

            else
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              if (!a5[1])
              {
                v130 = *(*(*a5 + 392) + 384) + 212;
              }

              sub_100047D10(a5);
              v310 = *(a5[7] + 34);
              v329 = *v114;
              sub_10003E5FC("%s:%d: %s oid 0x%llx (level %d): invalid child oid: 0x%llx\n");
            }
          }

          ++v117;
        }

        while (v117 < *(a5[7] + 36));
      }
    }
  }

  return v18;
}

uint64_t sub_10002AB44(FILE *a1, void *a2, uint64_t a3, int a4, int a5)
{
  if (sub_100046328(a2) == 2)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v10 = sub_100027E04(a2, a3, 0, 0, a2, 1u, 0, 0, &v19, 0, 0);
    v11 = v10;
    if (*(a2[49] + 24) != v20)
    {
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 22;
      }

      v12 = a2[1];
      if (v12)
      {
        v13 = (v12 + 4040);
      }

      else
      {
        v13 = (*(*(*a2 + 392) + 384) + 212);
      }

      v14 = sub_100047D10(a2);
      sub_10003E5FC("%s:%d: %s oid 0x%llx: btree key count (%llu) doesn't match # leaf entries (%u)\n", "btree_check_ext", 681, v13, v14, *(a2[49] + 24), v20);
    }

    if (*(a2[49] + 32) == DWORD1(v19) + v19)
    {
      if (a5 && a4 && !v11)
      {
        if (a1)
        {
          v15 = a1;
        }

        else
        {
          v15 = __stdoutp;
        }

        sub_10002AD9C(v15, a2, &v19, a5);
      }
    }

    else
    {
      if (v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = 22;
      }

      if (!a2[1])
      {
        v16 = *(*(*a2 + 392) + 384) + 212;
      }

      sub_100047D10(a2);
      v18 = *(a2[49] + 32);
      sub_10003E5FC("%s:%d: %s oid 0x%llx: btree node count (%llu) doesn't match # nodes traversed (%u)\n");
    }
  }

  else
  {
    v11 = 22;
    if (a2[1])
    {
      sub_10003E5FC("%s:%d: %s btree check called with non-root btree node: %d\n");
    }

    else
    {
      sub_10003E5FC("%s:%d: %s btree check called with non-root btree node: %d\n", "btree_check_ext", 672, (*(*(*a2 + 392) + 384) + 212), 22);
    }
  }

  return v11;
}

uint64_t sub_10002AD9C(FILE *a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (a1)
  {
    a4 = 5;
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = __stdoutp;
  }

  if (a4 >= 2)
  {
    v8 = *(a2 + 392);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v10 + 8;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v12 = 16;
      v13 = 8;
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = 8;
    }

    v15 = v14 + v13;
    v16 = *a3;
    if (*a3 <= 1u)
    {
      v16 = 1;
    }

    fprintf(v7, "nodesize: %d  dataspace: %d  key size: %d  val size: %d  max keys: node %d leaf %d  avg keys: node %d leaf %d\n", v9, v9 - 56, v10, v11, (v9 - 56) / v12, (v9 - 56) / v15, a3[3] / v16, a3[4] / a3[1]);
  }

  v18 = *(a3 + 11);
  v19 = v18;
  if (!v18)
  {
    v19 = 1.0;
  }

  v20 = *(a3 + 12) * 100.0 / v19;
  v21 = *(a3 + 16);
  v22 = v21;
  if (!v21)
  {
    v22 = 1.0;
  }

  v17 = a3[1];
  result = fprintf(v7, "levels: %d  keys: %lld  nodes: total %d  internal: %d (%.2f%%)  leaves: %d (%.2f%%)  usage: %.2f%% (%.2f%% %.2f%%)\n", a3[2], *(*(a2 + 392) + 24), v17 + *a3, *a3, *a3 * 100.0 / (v17 + *a3), v17, v17 * 100.0 / (v17 + *a3), *(a3 + 7) * 100.0 / *(a3 + 6), v20, *(a3 + 17) * 100.0 / v22);
  if (a4 > 2)
  {
    v24 = 0;
    v25 = 0;
    v26 = a3 + 54;
    do
    {
      if (v26[v24])
      {
        if (v24)
        {
          result = fprintf(v7, "level %d: %d nodes %.2f average descendents\n");
        }

        else
        {
          result = fprintf(v7, "level %d: %d nodes\n");
        }

        v25 += v26[v24];
      }

      ++v24;
    }

    while (v24 != 16);
  }

  if (a4 >= 2)
  {
    LODWORD(v27) = a3[4];
    v27 = v27 <= 1 ? 1 : v27;
    result = fprintf(v7, "key/val sizes:  tree max k:%d v:%d  max k:%d v:%d  avg k:%llu v:%llu\n", *(*(a2 + 392) + 16), *(*(a2 + 392) + 20), a3[52], a3[53], *(a3 + 18) / v27, *(a3 + 19) / v27);
    if (a4 >= 4)
    {
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v74 = v28;
      v75 = v28;
      v72 = v28;
      v73 = v28;
      *__str = v28;
      v71 = v28;
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 16) / 5u);
      snprintf(&v71, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v72, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v73, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v74, 0x10uLL, "<%d", *(*(a2 + 392) + 16));
      snprintf(&v75, 0x10uLL, "=%d", *(*(a2 + 392) + 16));
      fprintf(v7, "    keys: %9s %9s %9s %9s %9s %9s\n", __str, &v71, &v72, &v73, &v74, &v75);
      fprintf(v7, "    keys: %9d %9d %9d %9d %9d %9d\n", a3[40], a3[41], a3[42], a3[43], a3[44], a3[45]);
      LODWORD(v34) = a3[40];
      v35 = a3[4];
      v36 = v35;
      v37 = v34 * 100.0;
      if (!v35)
      {
        v36 = 1.0;
      }

      LODWORD(v29) = a3[41];
      LODWORD(v30) = a3[42];
      LODWORD(v31) = a3[43];
      LODWORD(v32) = a3[44];
      LODWORD(v33) = a3[45];
      fprintf(v7, "    keys: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v37 / v36, v29 * 100.0 / v36, v30 * 100.0 / v36, v31 * 100.0 / v36, v32 * 100.0 / v36, v33 * 100.0 / v36);
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 20) / 5u);
      snprintf(&v71, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v72, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v73, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v74, 0x10uLL, "<%d", *(*(a2 + 392) + 20));
      snprintf(&v75, 0x10uLL, "=%d", *(*(a2 + 392) + 20));
      fprintf(v7, "  values: %9s %9s %9s %9s %9s %9s\n", __str, &v71, &v72, &v73, &v74, &v75);
      fprintf(v7, "  values: %9d %9d %9d %9d %9d %9d\n", a3[46], a3[47], a3[48], a3[49], a3[50], a3[51]);
      LODWORD(v43) = a3[46];
      v44 = v43 * 100.0;
      v45 = a3[4];
      v46 = v45;
      if (!v45)
      {
        v46 = 1.0;
      }

      LODWORD(v38) = a3[47];
      LODWORD(v39) = a3[48];
      LODWORD(v40) = a3[49];
      LODWORD(v41) = a3[50];
      LODWORD(v42) = a3[51];
      fprintf(v7, "  values: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v44 / v46, v38 * 100.0 / v46, v39 * 100.0 / v46, v40 * 100.0 / v46, v41 * 100.0 / v46, v42 * 100.0 / v46);
      fprintf(v7, "capacity: all    %llu / %llu => %.2f %% used\n", *(a3 + 7), *(a3 + 6), *(a3 + 7) * 100.0 / *(a3 + 6));
      if (a4 == 4)
      {
        v68 = *(a3 + 12);
        v69 = *(a3 + 11);
        fprintf(v7, "capacity: nodes  %llu / %llu => %.2f %% used\n");
      }

      else
      {
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[5], a3[6], a3[7], a3[8], a3[9], a3[10]);
        LODWORD(v47) = a3[5];
        LODWORD(v48) = a3[6];
        v49 = a3[1] + *a3;
        LODWORD(v50) = a3[7];
        LODWORD(v51) = a3[8];
        LODWORD(v52) = a3[9];
        LODWORD(v53) = a3[10];
        fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v47 * 100.0 / v49, v48 * 100.0 / v49, v50 * 100.0 / v49, v51 * 100.0 / v49, v52 * 100.0 / v49, v53 * 100.0 / v49);
        fprintf(v7, "capacity: nodes  %llu / %llu => %.2f %% used\n", *(a3 + 12), *(a3 + 11), *(a3 + 12) * 100.0 / *(a3 + 11));
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[16], a3[17], a3[18], a3[19], a3[20], a3[21]);
        v54 = a3[16];
        *a3;
        v55 = a3[17];
        v56 = a3[18];
        v57 = a3[19];
        v58 = a3[20];
        v59 = a3[21];
        fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n");
      }

      result = fprintf(v7, "capacity: leaves %llu / %llu => %.2f %% used\n", *(a3 + 17), *(a3 + 16), *(a3 + 17) * 100.0 / *(a3 + 16));
      if (a4 != 4)
      {
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[26], a3[27], a3[28], a3[29], a3[30], a3[31]);
        LODWORD(v60) = a3[26];
        LODWORD(v61) = a3[27];
        LODWORD(v62) = a3[1];
        v63 = v62;
        LODWORD(v64) = a3[28];
        LODWORD(v65) = a3[29];
        LODWORD(v66) = a3[30];
        LODWORD(v67) = a3[31];
        return fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v60 * 100.0 / v63, v61 * 100.0 / v63, v64 * 100.0 / v63, v65 * 100.0 / v63, v66 * 100.0 / v63, v67 * 100.0 / v63);
      }
    }
  }

  return result;
}

void sub_10002B760(uint64_t a1, int a2, void *a3)
{
  if (a2 == 1)
  {

    sub_10002B7BC(a1, a3);
  }

  else
  {
    sub_10003E5FC("%s:%d: %s invalid crypto object type %u\n", "crypto_obj_free", 310, (a1 + 4040), a2);
  }
}

void sub_10002B7BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[9];
    if (v3)
    {
      sub_10003FB5C(v3, v3[2] + 16);
    }

    sub_10003FB5C(a2, 96);
  }
}

uint64_t sub_10002B810(uint64_t a1, int a2)
{
  if (!a1)
  {
    panic("assertion failed: %s", "apfs");
  }

  if (*(a1 + 504))
  {
    panic("assertion failed: %s", "!((apfs)->apfs_main_apfs != ((void*)0))");
  }

  if (a2 != 1)
  {
    return 22;
  }

  v3 = sub_10003FA58(1uLL, 0x58uLL, 0x10E0040FEB14155uLL);
  if (v3)
  {
    v4 = v3;
    *v3 = a1;
    *(v3 + 72) = 1;
    *(v3 + 10) = &off_100084E20;
    v3[5] = 2048;
    v3[7] = 102;
    v5 = sub_100062480(2048, v3 + 3);
    *(v4 + 4) = v5;
    if (v5)
    {
      v4[2] = v4[3] + 1;
      *(v4 + 5) = 0;
      v4[4] = 0;
      *(v4 + 6) = v4 + 10;
      *(v4 + 7) = 0;
      *(v4 + 8) = v4 + 14;
      sub_10002B954(a1, 1, 0);
      *(a1 + 1016) = v4;
      sub_10002BC40(a1, 1, 0);
      return 0;
    }

    sub_10003FB5C(v4, 88);
  }

  return 12;
}

uint64_t sub_10002B954(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    panic("assertion failed: %s", "apfs");
  }

  if (a2 != 1)
  {
    panic("assertion failed: %s", "0");
  }

  v5 = *(a1 + 504);
  if (!v5)
  {
    v5 = a1;
  }

  result = pthread_mutex_lock(v5 + 16);
  if (a3)
  {
    v7 = *(a1 + 504);
    if (!v7)
    {
      v7 = a1;
    }

    *a3 = *(v7 + 1016);
  }

  return result;
}

uint64_t sub_10002B9F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    for (i = *(result + 40); i; i = *(v1 + 40))
    {
      v3 = *(i + 8);
      if (v3)
      {
        panic("obj-id %llu type %u still has refcount %d\n", *i, *(v1 + 72), v3);
      }

      v4 = *(i + 32);
      v5 = *(i + 40);
      v6 = (v4 + 40);
      if (!v4)
      {
        v6 = (v1 + 48);
      }

      *v6 = v5;
      *v5 = v4;
      v7 = *(i + 16);
      v8 = *(i + 24);
      if (v7)
      {
        *(v7 + 24) = v8;
      }

      *v8 = v7;
      result = (**(v1 + 80))(v1, i);
      --*(v1 + 16);
    }
  }

  return result;
}

uint64_t sub_10002BAB4(uint64_t a1, int a2)
{
  v14 = 0;
  if (!a1)
  {
    panic("assertion failed: %s", "apfs");
  }

  if (*(a1 + 504))
  {
    panic("assertion failed: %s", "!((apfs)->apfs_main_apfs != ((void*)0))");
  }

  sub_10002B954(a1, a2, &v14);
  v4 = v14;
  if (v14)
  {
    v5 = v14[7];
    if (v5)
    {
      v6 = *(v14 + 72);
      do
      {
        v7 = v5;
        v5 = *(v5 + 32);
        if (v6 == 1)
        {
          v8 = *(v7 + 88);
          if (v8 > *(v7 + 8))
          {
            panic("assertion failed: %s", "cst->ep_retain_count <= cst->hdr.retain_count");
          }

          for (; v8; --v8)
          {
            v9 = *(v7 + 88) - 1;
            *(v7 + 88) = v9;
            if (!v9)
            {
              --*(v4 + 6);
            }

            sub_10002C06C(v4, v7);
          }
        }

        else if (v6 == 2)
        {
          sub_10002C06C(v4, v7);
        }
      }

      while (v5);
      v4 = v14;
    }

    sub_10002B9F8(v4);
    sub_10003FB5C(v14[4], 8 * *(v14 + 2));
    sub_10003FB5C(v14, 88);
    v10 = a1;
    v11 = a2;
    v12 = 1;
  }

  else
  {
    v10 = a1;
    v11 = a2;
    v12 = 0;
  }

  return sub_10002BC40(v10, v11, v12);
}

uint64_t sub_10002BC40(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    panic("assertion failed: %s", "apfs");
  }

  if (a2 != 1)
  {
    panic("assertion failed: %s", "0");
  }

  v3 = *(a1 + 504);
  if (a3)
  {
    if (v3)
    {
      v4 = *(a1 + 504);
    }

    else
    {
      v4 = a1;
    }

    *(v4 + 1016) = 0;
  }

  if (!v3)
  {
    v3 = a1;
  }

  return pthread_mutex_unlock(v3 + 16);
}

uint64_t sub_10002BCF8(uint64_t a1, int a2, uint64_t a3)
{
  v19 = 0;
  sub_10002B954(a1, a2, &v19);
  v6 = 0;
  if (a3)
  {
    v7 = v19;
    if (v19)
    {
      v8 = *(v19 + 72);
      if (a3 == 5 && v8 == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(*(v19 + 32) + 8 * (*(v19 + 12) & a3));
        if (v6)
        {
          while (*v6 != a3)
          {
            v6 = *(v6 + 16);
            if (!v6)
            {
              goto LABEL_20;
            }
          }

          v9 = *(v6 + 8);
          if (!v9)
          {
            if (v8 == 2)
            {
              panic("assertion failed: %s", "crypto_cache->type != CRYPTO_OBJ_TYPE_EP");
            }

            v9 = 0;
            v10 = (v6 + 32);
            v11 = *(v6 + 32);
            v12 = *(v6 + 40);
            v13 = (v19 + 48);
            if (v11)
            {
              v13 = (v11 + 40);
            }

            *v13 = v12;
            *v12 = v11;
            v15 = *(v7 + 56);
            v14 = (v7 + 56);
            *v10 = v15;
            v16 = (v15 + 40);
            if (v15)
            {
              v17 = v16;
            }

            else
            {
              v17 = v14 + 1;
            }

            *v17 = v10;
            *v14 = v6;
            *(v6 + 40) = v14;
          }

          *(v6 + 8) = v9 + 1;
        }
      }
    }
  }

LABEL_20:
  sub_10002BC40(a1, a2, 0);
  return v6;
}

uint64_t sub_10002BE34(uint64_t a1, int a2, uint64_t *a3)
{
  v25 = 0;
  sub_10002B954(a1, a2, &v25);
  v6 = v25;
  if (!v25)
  {
    v14 = 22;
    goto LABEL_24;
  }

  v7 = *a3;
  v8 = *(v25 + 32);
  v9 = *a3 & *(v25 + 12);
  v10 = *(v8 + 8 * v9);
  if (v10)
  {
    v11 = *(v8 + 8 * v9);
    while (*v11 != v7)
    {
      v11 = v11[2];
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v14 = 17;
  }

  else
  {
LABEL_6:
    v12 = *(v25 + 16);
    if (v12 >= *(v25 + 20))
    {
      v13 = *(v25 + 40);
      if (*(v25 + 72) == 2)
      {
        if (v13)
        {
          panic("assertion failed: %s", "((&crypto_cache->free_list)->tqh_first == ((void*)0))");
        }

        sub_10003E5FC("%s:%d: %s cannot insert new ep %llu because the policy cache is full\n", "crypto_hash_insert", 951, (*v25 + 4040), v7);
        v14 = 16;
        goto LABEL_24;
      }

      if (v13)
      {
        v15 = v13[4];
        v16 = v13[5];
        v17 = (v25 + 48);
        if (v15)
        {
          v17 = (v15 + 40);
        }

        *v17 = v16;
        *v16 = v15;
        v18 = v13[2];
        v19 = v13[3];
        if (v18)
        {
          *(v18 + 24) = v19;
        }

        *v19 = v18;
        (**(v6 + 80))(v6);
        v12 = *(v6 + 16) - 1;
        v8 = *(v6 + 32);
        v9 = *a3 & *(v6 + 12);
        v10 = *(v8 + 8 * v9);
      }
    }

    a3[2] = v10;
    *(a3 + 2) = 1;
    v20 = (v8 + 8 * v9);
    if (v10)
    {
      *(v10 + 24) = a3 + 2;
    }

    v14 = 0;
    *v20 = a3;
    a3[3] = v20;
    v22 = *(v6 + 56);
    v21 = (v6 + 56);
    a3[4] = v22;
    v23 = (v22 + 40);
    if (!v22)
    {
      v23 = v21 + 1;
    }

    *v23 = a3 + 4;
    *v21 = a3;
    a3[5] = v21;
    *(v21 - 10) = v12 + 1;
  }

LABEL_24:
  sub_10002BC40(a1, a2, 0);
  return v14;
}

uint64_t sub_10002BFF8(uint64_t a1, int a2, uint64_t a3)
{
  v8 = 0;
  sub_10002B954(a1, a2, &v8);
  if (v8)
  {
    sub_10002C06C(v8, a3);
    v6 = 0;
  }

  else
  {
    v6 = 22;
  }

  sub_10002BC40(a1, a2, 0);
  return v6;
}

uint64_t sub_10002C06C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  *(a2 + 8) = v2;
  if (v2 < 0)
  {
    panic("crypto object retain count %d is not valid (crypto-id %lld, type %u apfs %p)\n", v2, *a2, *(result + 72), *result);
  }

  if (!v2)
  {
    v3 = *(*(result + 80) + 8);

    return v3();
  }

  return result;
}

uint64_t sub_10002C104(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 0;
  sub_10002B954(a1, a2, &v9);
  if (a3 && v9)
  {
    if (*(v9 + 72) != 1)
    {
      goto LABEL_9;
    }

    if (a3 != 5)
    {
      v6 = *v9;
      if (*(*v9 + 504))
      {
        v6 = *(*v9 + 504);
      }

      if (a3 != 4 || (*(*(v6 + 376) + 264) & 0x100) == 0)
      {
LABEL_9:
        v7 = *(v9[4] + 8 * (*(v9 + 3) & a3));
        if (v7)
        {
          while (*v7 != a3)
          {
            v7 = v7[2];
            if (!v7)
            {
              return sub_10002BC40(a1, a2, 0);
            }
          }

          sub_10002C06C(v9, v7);
        }
      }
    }
  }

  return sub_10002BC40(a1, a2, 0);
}

uint64_t sub_10002C1CC(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 48) > 9)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = a1;
    v2 = v1 + 10 * v2 - 48;
    v4 = *++a1;
    v1 = v4;
  }

  while ((v4 - 48) < 0xA);
  if (!v2 || v1 == 0)
  {
    return 0;
  }

  v6 = v3[2];
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = 0;
  v8 = 2;
  do
  {
    v7 = v6 + 10 * v7 - 48;
    v6 = a1[v8++];
  }

  while ((v6 - 48) < 0xA);
  v9 = (v1 << 16) | (v2 << 24) | v7;
  if (v7)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002C264()
{
  result = dword_100088A88;
  if (!dword_100088A88)
  {
    *&v1 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v3[2] = v1;
    v3[3] = v1;
    v3[0] = v1;
    v3[1] = v1;
    v2 = 63;
    sysctlbyname("kern.osversion", v3, &v2, 0, 0);
    *(v3 + v2) = 0;
    if (LOBYTE(v3[0]))
    {
      result = sub_10002C1CC(v3);
      dword_100088A88 = result;
      if (!result)
      {
        result = 1;
        dword_100088A88 = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002C34C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 5;
  *(a1 + 12) = sub_10002C264();
  *(a1 + 16) = 1;
  return 0;
}

uint64_t sub_10002C390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 20) = *(a2 + 48);
  v3 = *(a2 + 56);
  *(a3 + 28) = *(a2 + 12);
  *(a3 + 32) = v3;
  *(a3 + 36) = *(a2 + 60);
  return 0;
}

uint64_t sub_10002C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 5;
  *(a5 + 8) = 6;
  *(a5 + 12) = sub_10002C264();
  *(a5 + 16) = 1;
  if ((*(*(a1 + 392) + 625) & 1) == 0)
  {
    if (a6)
    {
      *(a6 + 64) = 0;
    }

    if (a7)
    {
      *(a7 + 64) = 1;
    }
  }

  return 0;
}

uint64_t sub_10002C464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *(a2 + 64) = 0;
  }

  if (a3)
  {
    *(a3 + 64) = 1;
  }

  return 0;
}

uint64_t sub_10002C480(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x40)
  {
    return 0;
  }

  v3 = a2;
  v5 = sub_100018DC4(a1);
  if (v5 == 1)
  {
    v9 = sub_100018DC4(a1);
    v7 = 255;
    if (v9 != 1)
    {
      v8 = "get_vol_crypto(apfs) == VOL_CPROTECTED";
LABEL_9:
      panic("assertion failed: %s", v8);
    }

    return (v7 >> v3) & 1;
  }

  if (v5 == 3)
  {
    v6 = sub_100018DC4(a1);
    v7 = 223;
    if (v6 != 3)
    {
      v8 = "get_vol_crypto(apfs) == VOL_PFKEY";
      goto LABEL_9;
    }

    return (v7 >> v3) & 1;
  }

  return 0;
}

void sub_10002C534(uint64_t a1, void *a2)
{
  v3 = *(a2 + 22);
  if (v3)
  {
    panic("cst %llu hit zero retain count but still has ep related retain count (%u)\n", *a2, v3);
  }

  v4 = a2[4];
  v5 = a2[5];
  v6 = (a1 + 64);
  if (v4)
  {
    v6 = (v4 + 40);
  }

  *v6 = v5;
  *v5 = v4;
  if (*(a1 + 16) <= *(a1 + 20))
  {
    v9 = *(a1 + 48);
    a2[4] = 0;
    a2[5] = v9;
    *v9 = a2;
    *(a1 + 48) = a2 + 4;
  }

  else
  {
    v7 = a2[2];
    v8 = a2[3];
    if (v7)
    {
      *(v7 + 24) = v8;
    }

    *v8 = v7;
    sub_10002B7BC(a1, a2);
    --*(a1 + 16);
  }
}

const char *sub_10002C5E0(const char *result, uint64_t a2, void *a3, unint64_t a4)
{
  v11 = a4;
  if ((*(a2 + 64) & 2) != 0)
  {
    v6 = result;
    if (a4)
    {

      return sub_10002C6D8(result, a2, a3, a4);
    }

    else
    {
      v7 = sub_100034F30(result, 4, 2, 0, &v11);
      if (v7)
      {
        v8 = v7;
        v9 = *(a2 + 8);
        v10 = strerror(v7);
        return sub_10003E5FC("%s:%d: %s failed to enter tx to update size tracking for ino %llu: %s (%d); size tracking may go out of sync\n", "update_size_tracking", 5147, v6 + 4040, v9, v10, v8);
      }

      else
      {
        sub_10002C6D8(v6, a2, a3, v11);
        return sub_100034F40(v6, 4, 2, 0, v11);
      }
    }
  }

  return result;
}

const char *sub_10002C6D8(const char *result, uint64_t a2, void *a3, unint64_t a4)
{
  if ((*(a2 + 64) & 2) != 0)
  {
    v7 = result;
    __dst = 0xAAAAAAAAAAAAAAAALL;
    if (sub_100062DA0((a2 + 408), 10, 0, &__dst, 8uLL) || !__dst)
    {
      result = sub_100042AEC(*(v7 + 392));
      if (result)
      {
        return sub_10003E5FC("%s:%d: %s ino %llu is flagged to maintain dir-stats but has no dir-stats key\n", "update_dir_stats", 689, (v7 + 4040), *(a2 + 8));
      }
    }

    else
    {
      return sub_10002C79C(v7, __dst, a3, 0, 0, a4);
    }
  }

  return result;
}

uint64_t sub_10002C79C(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  if ((*(*(a1 + 376) + 56) & 0x200) != 0)
  {
    v9 = 18;
  }

  else
  {
    v9 = 10;
  }

  v33[1] = -1431655766;
  v33[0] = v9;
  v34 = a2;
  v35 = 0;
  v36 = *a3;
  v37 = a3[4];
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  sub_100062624(&v39, 0);
  if (a3[2])
  {
    HIDWORD(v40) |= 4u;
    sub_100062AD8(&v39, 1, 0, a3 + 2, 8);
  }

  if (a3[3])
  {
    HIDWORD(v40) |= 8u;
    sub_100062AD8(&v39, 3, 0, a3 + 3, 8);
  }

  v10 = (a4 >> 5) & 1;
  v11 = a4 & 0xFFFFFFDF;
  if (a3[5])
  {
    HIDWORD(v40) |= 0x800u;
    sub_100062AD8(&v39, 4, 0, a3 + 5, 8);
  }

  v12 = 0;
  LOBYTE(v13) = 0;
  v14 = 0;
  v31 = (a1 + 4040);
  v15 = v10;
  while (1)
  {
    BYTE1(v33[0]) = 4;
    DWORD2(v40) = v11;
    *&v38 = a3[6];
    if (v10)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    v17 = v11 | v16;
    if (v13)
    {
      v17 |= 0x100000u;
    }

    if (v10 & 1) != 0 || (v13)
    {
      DWORD2(v40) = v17;
    }

    if (v15 == 1)
    {
      v18 = 0x4000;
      goto LABEL_24;
    }

    if (v15 == 2)
    {
      DWORD2(v40) = v17 | 0x40;
      if (v34 == v12)
      {
        v18 = 16448;
LABEL_24:
        DWORD2(v40) = v17 | v18;
      }
    }

    v19 = sub_100030EB4(a1, 1, v33, a6);
    if ((v19 & 0xFFFFFFFD) != 0)
    {
      v20 = v19;
      v21 = v34;
      v22 = strerror(v19);
      sub_10003E5FC("%s:%d: %s failed to update dir-stats %llu: %s (%d)\n", "update_dir_stats_by_key_ext", 574, v31, v21, v22, v20);
    }

    if ((DWORD2(v40) & 0x400000) == 0)
    {
      break;
    }

    v24 = 0;
    if (!v34)
    {
      goto LABEL_51;
    }

LABEL_48:
    if (v24)
    {
      goto LABEL_51;
    }

    if (++v14 == 1025)
    {
      goto LABEL_52;
    }
  }

  if (v15)
  {
    v23 = v34;
    v10 = (DWORD2(v40) >> 5) & 1;
  }

  else
  {
    v23 = v34;
    if ((BYTE8(v40) & 0x40) != 0)
    {
      v25 = v34;
    }

    else
    {
      v25 = v12;
    }

    LOBYTE(v10) = (BYTE8(v40) & 0x20) != 0;
    if ((BYTE8(v40) & 0x20) != 0)
    {
      v15 = 1;
    }

    else
    {
      v12 = v25;
      v15 = (BYTE8(v40) & 0x40) >> 5;
    }
  }

  v13 = (DWORD2(v40) >> 20) & 1;
  if (a5)
  {
    v26 = v23 == a5;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(&v38 + 1);
  v24 = v26 || v23 == *(&v38 + 1);
  v34 = *(&v38 + 1);
  *(&v38 + 1) = 0;
  if (v27)
  {
    goto LABEL_48;
  }

LABEL_51:
  if (v14 < 0x400)
  {
    return sub_1000629FC(&v39);
  }

LABEL_52:
  if (sub_100042AEC(*(a1 + 392)))
  {
    sub_10003E5FC("%s:%d: %s stopped updating dir-stats due to chain being too long\n", "update_dir_stats_by_key_ext", 627, v31);
  }

  return sub_1000629FC(&v39);
}

void sub_10002CA94(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    switch(*a2)
    {
      case 1u:
        sub_10003FB5C(*(a2 + 9), *(a2 + 32));
        goto LABEL_21;
      case 2u:
        v4 = a2;
        v3 = 40;
        goto LABEL_27;
      case 3u:
        if ((*(a2 + 48) & 0xF000) == 0xA000)
        {
          v5 = *(a2 + 44);
          if (v5)
          {
            sub_10003FB5C(v5, *(a2 + 90));
            *(a2 + 44) = 0;
          }
        }

        sub_1000629FC((a2 + 408));
        if ((a2[117] & 0x10) != 0)
        {
          j__pthread_rwlock_destroy((a2 + 448));
          j__pthread_rwlock_destroy((a2 + 120));
          *(a2 + 14) &= ~0x100000000000uLL;
        }

        sub_10003FB10(a2, 2u);
        return;
      case 4u:
      case 5u:
      case 7u:
      case 0xBu:
        goto LABEL_3;
      case 6u:
      case 0xCu:
        v4 = a2;
        v3 = 24;
        goto LABEL_27;
      case 8u:
        v4 = a2;
        v3 = 56;
        goto LABEL_27;
      case 9u:
        sub_1000629FC((a2 + 32));
        sub_10003FB5C(*(a2 + 8), *(a2 + 31));
        goto LABEL_26;
      case 0xAu:
      case 0x12u:
        sub_1000629FC((a2 + 64));
        v4 = a2;
        v3 = 96;
        goto LABEL_27;
      case 0xDu:
        v6 = a2[16];
        if (v6 == 2)
        {
          goto LABEL_20;
        }

        if (v6 != 1)
        {
          return;
        }

LABEL_3:
        v3 = *(a2 + 1);
        v4 = a2;
LABEL_27:

        sub_10003FB5C(v4, v3);
        break;
      case 0x10u:
LABEL_20:
        sub_1000629FC((a2 + 56));
LABEL_21:
        v4 = a2;
        v3 = 80;
        goto LABEL_27;
      case 0x11u:
        v4 = a2;
        v3 = 32;
        goto LABEL_27;
      case 0x13u:
        sub_1000629FC((a2 + 48));
LABEL_26:
        v4 = a2;
        v3 = 72;
        goto LABEL_27;
      default:
        sub_10003E5FC("%s:%d: *** Can't release unknown obj type %d\n", "jobj_release", 2834, *a2);
        return;
    }
  }
}

uint64_t sub_10002CCA8(pthread_mutex_t *a1, uint64_t a2)
{
  v4 = *&a1[1].__opaque[40];
  if (!a2)
  {
    panic("can not lock id zero\n");
  }

  pthread_mutex_lock(a1);
  v5 = -1;
LABEL_4:
  v6 = 0;
  v7 = *&a1[1].__opaque[52];
  v8 = (v4 + 8);
  while (*&a1[1].__opaque[48] != v6)
  {
    v9 = *(v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if ((v5 & 0x80000000) == 0 || v9)
    {
      if (v9 == a2)
      {
        v10 = *v8;
        v11 = pthread_self();
        if (pthread_equal(v10, v11))
        {
          sub_10003E5FC("%s:%d: locking id %llu, which is already locked by this thread\n", "apfs_lock_id", 932, a2);
        }

        v5 = -1;
LABEL_16:
        LOBYTE(a1[2].__sig) = 1;
        sub_10003E3E8(&a1[1], a1, 8, "apfs_lock_id", 0);
        goto LABEL_4;
      }
    }

    else
    {
      v5 = v6;
    }

    ++v6;
    v8 += 2;
    if (v7 + 1 == v6)
    {
      break;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if (v5 >= v7)
  {
    *&a1[1].__opaque[52] = v5 + 1;
  }

  v12 = (v4 + 16 * v5);
  *v12 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v12[1] = pthread_self();

  return pthread_mutex_unlock(a1);
}

uint64_t sub_10002CE04(pthread_mutex_t *a1, uint64_t a2)
{
  v4 = *&a1[1].__opaque[40];
  if (!a2)
  {
    panic("can not lock id zero\n");
  }

  pthread_mutex_lock(a1);
  v5 = *&a1[1].__opaque[48];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = v4;
  while ((*v7 & 0xFFFFFFFFFFFFFFFLL) != a2)
  {
    ++v6;
    v7 += 2;
    if (v5 == v6)
    {
      goto LABEL_14;
    }
  }

  v8 = v7[1];
  v9 = pthread_self();
  v10 = pthread_equal(v8, v9);
  *v7 = 0;
  v7[1] = 0;
  v11 = *&a1[1].__opaque[52];
  do
  {
    if (v6 != v11 - 1)
    {
      break;
    }

    if ((v4[2 * v6] & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      break;
    }

    *&a1[1].__opaque[52] = v6;
    v11 = v6;
    v12 = v6 <= 0;
    LODWORD(v6) = v6 - 1;
  }

  while (!v12);
  if (!v10)
  {
LABEL_14:
    sub_10003E5FC("%s:%d: unlocking id %llu, which is not locked\n", "apfs_unlock_id", 1014, a2);
  }

  if (LOBYTE(a1[2].__sig) == 1)
  {
    j__pthread_cond_broadcast(&a1[1]);
    LOBYTE(a1[2].__sig) = 0;
  }

  return pthread_mutex_unlock(a1);
}

uint64_t sub_10002CF30(uint64_t result, unsigned __int8 *a2, uint64_t a3, int *a4)
{
  v7 = result;
  v8 = *a2;
  v9 = *a2;
  v10 = v8 << 60;
  v11 = (v8 & 0xF0) == 0;
  v12 = 0xE000000000000000;
  if (v11)
  {
    v12 = v10;
  }

  *a3 = v12 & 0xF000000000000000 | *(a2 + 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v9 >= 0x10)
  {
    if ((*(*(result + 376) + 57) & 2) == 0)
    {
      v13 = sub_10003FC54(*(result + 392));
      v41 = *a2;
      v43 = *(a2 + 1);
      result = sub_10003E64C(v13, "%s:%d: %s ***: expanded obj type %d (obj_id %llu) found on unsupported volume\n", v14, v15, v16, v17, v18, v19, "make_jkey_from_jobj");
      *a4 = 0;
      return result;
    }

    if ((v9 & 0xFC) == 0x10)
    {
      *(a3 + 8) = v9;
    }

    else
    {
      v20 = sub_10003FC54(*(result + 392));
      v42 = *a2;
      v44 = *(a2 + 1);
      result = sub_10003E64C(v20, "%s:%d: %s Cannot make large jkey from unknown type %d (obj_id %llu)\n", v21, v22, v23, v24, v25, v26, "make_large_jkey_header_from_jobj");
      v9 = *a2;
    }
  }

  switch(v9)
  {
    case 4u:
      v38 = *(a2 + 10);
      *(a3 + 8) = v38;
      result = memcpy((a3 + 10), a2 + 24, v38);
      v39 = *(a2 + 10);
      goto LABEL_23;
    case 5u:
    case 8u:
      *(a3 + 8) = *(a2 + 2);
      v27 = 16;
      goto LABEL_26;
    case 9u:
      v35 = *(a2 + 31);
      if ((*(*(v7 + 376) + 56) & 9) != 0)
      {
        *(a3 + 8) = *(a2 + 31) & 0x3FF | (*(a2 + 14) << 10);
        v36 = 12;
        v37 = 12;
      }

      else
      {
        *(a3 + 8) = v35;
        v36 = 10;
        v37 = 10;
      }

      result = memcpy((a3 + v36), *(a2 + 8), v35);
      v27 = v37 + *(a2 + 31);
      goto LABEL_26;
    case 0xAu:
      v27 = 96;
      goto LABEL_26;
    case 0xBu:
      v40 = *(a2 + 12);
      *(a3 + 8) = v40;
      result = memcpy((a3 + 10), a2 + 26, v40);
      v39 = *(a2 + 12);
LABEL_23:
      v27 = v39 + 10;
      goto LABEL_26;
    case 0xDu:
      *a4 = 16;
      *(a3 + 8) = __ROR8__(*(a2 + 2), 8);
      return result;
    case 0xEu:
      *a4 = 0;
      v28 = sub_10003FC54(*(v7 + 392));
      return sub_10003E64C(v28, "%s:%d: %s ***: expanded type seen on in-memory obj!\n", v29, v30, v31, v32, v33, v34, "make_jkey_from_jobj");
    case 0x10u:
    case 0x13u:
      *(a3 + 12) = *(a2 + 1);
      v27 = 28;
      goto LABEL_26;
    case 0x11u:
      *(a3 + 12) = *(a2 + 2);
      v27 = 20;
      goto LABEL_26;
    case 0x12u:
      v27 = 12;
      goto LABEL_26;
    default:
      v27 = 8;
LABEL_26:
      *a4 = v27;
      break;
  }

  return result;
}

uint64_t sub_10002D1DC(uint64_t a1, unsigned __int16 *__src, uint64_t a3, int *a4, uint64_t a5, unsigned int a6)
{
  v8 = *(__src + 1);
  v9 = *__src;
  v10 = v9 << 60;
  if ((v9 & 0xF0) != 0)
  {
    v10 = 0xE000000000000000;
  }

  *a3 = v10 & 0xF000000000000000 | v8 & 0xFFFFFFFFFFFFFFFLL;
  v11 = *a4;
  if ((v11 - 4096) < 0xFFFFF001)
  {
    return 22;
  }

  v65[7] = v6;
  v65[8] = v7;
  if (v9 >= 0x10u)
  {
    if ((*(*(a1 + 376) + 57) & 2) == 0)
    {
      sub_10003E5FC("%s:%d: %s expanded obj type %hhu found on unsupported volume\n", "jobj_to_key_val", 1512, (a1 + 4040), v9);
      return 22;
    }

    if (v11 <= 0xB)
    {
      v19 = sub_10003FC54(*(a1 + 392));
      v57 = *a4;
      v63 = *(__src + 1);
      sub_10003E64C(v19, "%s:%d: %s large key size (%u) on record (%llu) is too small\n", v20, v21, v22, v23, v24, v25, "jobj_to_key_val");
      return 22;
    }

    *(a3 + 8) = v9;
    if (v9 <= 0x11u)
    {
      if (v9 != 16)
      {
        result = 0;
        v26 = *(__src + 3);
        *(a3 + 12) = *(__src + 2);
        *a5 = v26;
        v27 = 20;
LABEL_40:
        *a4 = v27;
        return result;
      }

      v52 = __src[28];
      *(a3 + 12) = *(__src + 1);
      *a5 = *(__src + 4);
      *(a5 + 8) = *(__src + 5);
      *(a5 + 16) = *(__src + 12);
      *(a5 + 20) = *(__src + 13);
      if (v52 && sub_100062A58(__src + 28, (a5 + 24), a6 - 24))
      {
        v60 = *(__src + 1);
        sub_10003E5FC("%s:%d: %s failed to serialize purgeable %llu into jval of size %u\n");
        return 7;
      }

LABEL_55:
      result = 0;
      v27 = 28;
      goto LABEL_40;
    }

    if (v9 == 18)
    {
      v53 = __src[32];
      *(a5 + 24) = *(__src + 2);
      *a5 = *(__src + 3);
      *(a5 + 8) = *(__src + 4);
      *(a5 + 16) = *(__src + 5);
      *(a5 + 32) = *(__src + 7);
      *(a5 + 40) = *(__src + 6);
      *(a5 + 48) = *(__src + 23);
      if (v53 && sub_100062A58(__src + 32, (a5 + 52), a6 - 52))
      {
        v61 = *(__src + 1);
        sub_10003E5FC("%s:%d: %s failed to serialize dir-stats %lld into jval of size %u\n");
        return 7;
      }
    }

    else if (v9 == 19)
    {
      v28 = __src[24];
      *(a3 + 12) = *(__src + 1);
      *a5 = *(__src + 4) & 0xFFFFFFFFFFFFFFLL | (*(__src + 10) << 56);
      if (!v28 || !sub_100062A58(__src + 24, (a5 + 8), a6 - 8))
      {
        goto LABEL_55;
      }

      v64 = *(__src + 3);
      v58 = *(__src + 2);
      sub_10003E5FC("%s:%d: %s failed to serialize clone mapping <%llu/%llu> into jval of size %u\n");
      return 7;
    }

    result = 0;
    v27 = 12;
    goto LABEL_40;
  }

  switch(v9)
  {
    case 1:
      *a5 = *(__src + 1);
      *(a5 + 16) = *(__src + 2);
      *(a5 + 32) = *(__src + 6);
      *(a5 + 40) = *(__src + 7);
      v18 = __src[32];
      *(a5 + 48) = v18;
      strlcpy((a5 + 50), *(__src + 9), v18);
      goto LABEL_37;
    case 2:
      v65[0] = __src;
      v38 = *(__src + 1);
      v39 = *(__src + 3);
      *a5 = *(__src + 2) & 0xFFFFFFFFFFFFFFFLL | (v38 << 60);
      *(a5 + 8) = v39;
      v40 = *(__src + 8);
      *(a5 + 16) = v40;
      if (v40 < 0 && v38 == 1)
      {
        sub_10003E50C("%s:%d: inserting bad phy ext @ %p : kind %d refcnt %d\n", "jobj_to_key_val", 1538, v65, 1, v40);
        panic("bad pext.\n");
      }

      goto LABEL_37;
    case 3:
      *a4 = 8;
      *a5 = *(__src + 2);
      *(a5 + 8) = *(__src + 3);
      *(a5 + 16) = *(__src + 4);
      *(a5 + 24) = *(__src + 5);
      *(a5 + 32) = *(__src + 6);
      *(a5 + 40) = *(__src + 7);
      *(a5 + 56) = *(__src + 18);
      *(a5 + 48) = *(__src + 8);
      *(a5 + 60) = *(__src + 19);
      *(a5 + 64) = *(__src + 20);
      *(a5 + 68) = *(__src + 21);
      *(a5 + 72) = *(__src + 22);
      *(a5 + 76) = *(__src + 23);
      *(a5 + 80) = __src[48];
      *(a5 + 82) = __src[49];
      *(a5 + 84) = *(__src + 13);
      if (!__src[204])
      {
        return 0;
      }

      result = sub_100062A58(__src + 204, (a5 + 92), a6 - 92);
      if (!result)
      {
        return result;
      }

      v59 = *(__src + 1);
      sub_10003E50C("%s:%d: %s failed to serialize ino %lld into jval of size %u\n");
      return 7;
    case 4:
      v34 = __src[10];
      *(a3 + 8) = v34;
      if (v34 + 10 > v11)
      {
        return 7;
      }

      strlcpy((a3 + 10), __src + 24, v34);
      *a4 = *(a3 + 8) + 10;
      *a5 = *(__src + 4);
      v35 = __src[11];
      *(a5 + 2) = v35;
      memcpy((a5 + 4), __src + __src[10] + 24, v35);
      return 0;
    case 5:
      v30 = *(__src + 3);
      *(a3 + 8) = *(__src + 2);
      *a4 = 16;
      *a5 = v30;
      v31 = __src[16];
      *(a5 + 8) = v31;
      strlcpy((a5 + 10), __src + 34, v31);
      return 0;
    case 6:
      result = 0;
      *a5 = *(__src + 4);
      goto LABEL_39;
    case 7:
      *a4 = 8;
      sub_10002DA00(__src, a5);
      return 0;
    case 8:
      v36 = *(__src + 2);
      *(a3 + 8) = v36;
      *a4 = 16;
      v37 = *(__src + 5);
      if (HIBYTE(v37))
      {
        sub_10003E50C("%s:%d: %s File extent too large (%llu > %llu): laddr %llu, paddr %llu\n", "jobj_to_key_val", 1573, (a1 + 4040), v37, 0xFFFFFFFFFFFFFFLL, v36, *(__src + 3));
        return 22;
      }

      v54 = *(__src + 4);
      if (v54 == -1)
      {
        panic("fext %lld (pos %lld len %lld flags %x can not have crypto-id -1\n", v8, v36, *(__src + 5), *(__src + 48));
      }

      result = 0;
      v55 = *(__src + 3);
      *a5 = v37 & 0xFFFFFFFFFFFFFFLL | (*(__src + 48) << 56);
      *(a5 + 8) = v55;
      *(a5 + 16) = v54;
      return result;
    case 9:
      v49 = __src[31];
      if ((*(*(a1 + 376) + 56) & 9) != 0)
      {
        if (v49 + 12 > v11)
        {
          return 7;
        }

        *(a3 + 8) = v49 & 0x3FF | (*(__src + 14) << 10);
        v50 = 12;
        v51 = 12;
      }

      else
      {
        if (v49 + 10 > v11)
        {
          return 7;
        }

        *(a3 + 8) = v49;
        v50 = 10;
        v51 = 10;
      }

      strlcpy((a3 + v50), *(__src + 8), v49);
      *a4 = v51 + __src[31];
      *(a5 + 16) = __src[30];
      v56 = __src[16];
      *a5 = *(__src + 2);
      *(a5 + 8) = *(__src + 3);
      if (!v56)
      {
        return 0;
      }

      result = sub_100062A58(__src + 16, (a5 + 18), a6 - 18);
      if (result)
      {
        sub_10003E50C("%s:%d: failed to serialize drec %lld/%s into jval of size %u\n", "jobj_to_key_val", 1682, *(__src + 1), *(__src + 8), a6);
        return 0;
      }

      return result;
    case 10:
      result = 0;
      *a5 = *(__src + 12);
      *(a5 + 16) = vextq_s8(*(__src + 3), *(__src + 3), 8uLL);
      goto LABEL_39;
    case 11:
      v48 = __src[12];
      *(a3 + 8) = v48;
      if (v48 + 10 > v11)
      {
        return 7;
      }

      strlcpy((a3 + 10), __src + 26, v48);
      result = 0;
      v29 = *(a3 + 8) + 10;
      goto LABEL_48;
    case 12:
      result = 0;
      v29 = 8;
LABEL_48:
      *a4 = v29;
      *a5 = *(__src + 2);
      return result;
    case 13:
      v32 = *(__src + 16);
      if (v32 == 2)
      {
        if (__src[28] && sub_100062A58(__src + 28, (a5 + 26), a6 - 26))
        {
          v62 = *(__src + 1);
          sub_10003E50C("%s:%d: %s failed to serialize file info with obj_id <%lld> into jval of size <%u>\n");
          return 7;
        }

        *(a5 + 24) = __src[24];
        *a5 = *(__src + 3);
        *(a5 + 8) = *(__src + 4);
        *(a5 + 16) = *(__src + 5);
      }

      else
      {
        if (v32 != 1)
        {
          return 22;
        }

        v33 = *(__src + 26);
        if (v33 + 3 > a6)
        {
          return 7;
        }

        *(a5 + 2) = v33;
        *a5 = __src[12];
        memcpy((a5 + 3), __src + 27, v33);
      }

      result = 0;
      *(a3 + 8) = __ROR8__(*(__src + 2), 8);
      v27 = 16;
      goto LABEL_40;
    case 14:
      *a4 = 0;
      v41 = sub_10003FC54(*(a1 + 392));
      sub_10003E64C(v41, "%s:%d: %s ***: expanded type seen on in-memory obj!\n", v42, v43, v44, v45, v46, v47, "jobj_to_key_val");
      return 22;
    default:
LABEL_37:
      result = 0;
LABEL_39:
      v27 = 8;
      goto LABEL_40;
  }
}

void *sub_10002DA00(_DWORD *__src, _DWORD *a2)
{
  v2 = *(__src + 10);
  *a2 = __src[4];
  v3 = a2 + 1;
  if (v2 == 6)
  {
    v4 = HIBYTE(*(__src + 19)) + *(__src + 19);
  }

  else
  {
    v4 = *(__src + 19);
  }

  return memcpy(v3, __src + 5, v4 + 20);
}

uint64_t sub_10002DA34(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 < 0xFu || (*(*(a1 + 376) + 57) & 2) != 0)
  {
    result = 8;
    switch(*a2)
    {
      case 1u:
      case 2u:
      case 3u:
      case 6u:
      case 7u:
      case 0xAu:
      case 0xCu:
        return result;
      case 4u:
        v12 = *(a2 + 10);
        goto LABEL_12;
      case 5u:
      case 8u:
      case 0xDu:
        return 16;
      case 9u:
        v12 = *(a2 + 31);
        if ((*(*(a1 + 376) + 56) & 9) == 0)
        {
          goto LABEL_12;
        }

        result = v12 + 12;
        break;
      case 0xBu:
        v12 = *(a2 + 12);
LABEL_12:
        result = v12 + 10;
        break;
      case 0xEu:
        v13 = sub_10003FC54(*(a1 + 392));
        sub_10003E64C(v13, "%s:%d: %s ***: expanded type seen on in-memory obj!\n", v14, v15, v16, v17, v18, v19, "key_size_for_jobj");
        return 0;
      case 0x10u:
      case 0x13u:
        result = 28;
        break;
      case 0x11u:
        result = 20;
        break;
      case 0x12u:
        result = 12;
        break;
      default:
        sub_10003E5FC("%s:%d: ***: unknown obj type %d\n", "key_size_for_jobj", 1931, *a2);
        return 0;
    }
  }

  else
  {
    v4 = sub_10003FC54(*(a1 + 392));
    v20 = *a2;
    sub_10003E64C(v4, "%s:%d: %s ***: expanded obj type %d found on unsupported volume\n", v5, v6, v7, v8, v9, v10, "key_size_for_jobj");
    return 0;
  }

  return result;
}

uint64_t sub_10002DBCC(uint64_t a1, unsigned __int16 *a2)
{
  if (*a2 < 0xFu || (*(*(a1 + 376) + 57) & 2) != 0)
  {
    result = 20;
    switch(*a2)
    {
      case 1:
        return a2[32] + 50;
      case 2:
        return result;
      case 3:
        if (a2[204])
        {
          return sub_100062A44(a2 + 204) + 92;
        }

        else
        {
          return 92;
        }

      case 4:
        return a2[11] + 4;
      case 5:
        return a2[16] + 10;
      case 6:
        return 4;
      case 7:
        if (a2[10] == 6)
        {
          v12 = HIBYTE(a2[19]) + a2[19];
        }

        else
        {
          v12 = a2[19];
        }

        return v12 + 24;
      case 8:
        return 24;
      case 9:
        if (a2[16])
        {
          return sub_100062A44(a2 + 16) + 18;
        }

        else
        {
          return 18;
        }

      case 0xA:
        return 32;
      case 0xB:
      case 0xC:
      case 0x11:
        return 8;
      case 0xD:
        v11 = *(a2 + 2);
        if (v11 == 2)
        {
          if (a2[28])
          {
            return sub_100062A44(a2 + 28) + 26;
          }

          else
          {
            return 26;
          }
        }

        if (v11 == 1)
        {
          return *(a2 + 26) + 3;
        }

        v15 = *(a2 + 1);
        sub_10003E5FC("%s:%d: Unknown subtype %d for file info object %lld\n");
        break;
      case 0xE:
        sub_10003E5FC("%s:%d: %s ***: expanded type seen on in-memory obj\n");
        return 0;
      case 0x10:
        if (!a2[28])
        {
          return 24;
        }

        v12 = sub_100062A44(a2 + 28);
        return v12 + 24;
      case 0x12:
        if (a2[32])
        {
          return sub_100062A44(a2 + 32) + 52;
        }

        else
        {
          return 52;
        }

      case 0x13:
        if (a2[24])
        {
          return sub_100062A44(a2 + 24) + 8;
        }

        else
        {
          return 8;
        }

      default:
        v13 = *a2;
        sub_10003E5FC("%s:%d: ***: unknown obj type %d\n");
        return 0;
    }
  }

  else
  {
    v3 = sub_10003FC54(*(a1 + 392));
    v14 = *a2;
    sub_10003E64C(v3, "%s:%d: %s ***: expanded obj type %d found on unsupported volume\n", v4, v5, v6, v7, v8, v9, "val_size_for_jobj");
  }

  return 0;
}

uint64_t sub_10002DE7C(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  result = 22;
  if (a2 && a3 >= 8)
  {
    switch(*a2 >> 60)
    {
      case 1:
        if (!a4)
        {
          goto LABEL_4;
        }

        v8 = a5 - 50;
        if (a5 >= 0x32)
        {
          v9 = a4[24];
          goto LABEL_53;
        }

        break;
      case 2:
        if (!a4 || a5 >= 0x14)
        {
          goto LABEL_4;
        }

        break;
      case 3:
        if (!a4 || a5 >= 0x5C)
        {
          goto LABEL_4;
        }

        break;
      case 4:
        if (a3 >= 0xA && a3 - 10 >= *(a2 + 8))
        {
          if (!a4)
          {
            goto LABEL_4;
          }

          v8 = a5 - 4;
          if (a5 >= 4)
          {
            v9 = a4[1];
            goto LABEL_53;
          }
        }

        break;
      case 5:
        if (a3 >= 0x10)
        {
          if (!a4)
          {
            goto LABEL_4;
          }

          v8 = a5 - 10;
          if (a5 >= 0xA)
          {
            v9 = a4[4];
            goto LABEL_53;
          }
        }

        break;
      case 6:
        if (!a4 || a5 >= 4)
        {
          goto LABEL_4;
        }

        break;
      case 7:
        if (!a4)
        {
          goto LABEL_4;
        }

        v8 = a5 - 24;
        if (a5 >= 0x18)
        {
          v9 = a4[2] == 6 ? HIBYTE(a4[11]) + a4[11] : a4[11];
LABEL_53:
          if (v8 >= v9)
          {
            goto LABEL_4;
          }
        }

        break;
      case 8:
        if (a3 >= 0x10 && (!a4 || a5 >= 0x18))
        {
          goto LABEL_4;
        }

        break;
      case 9:
        if ((*(*(a1 + 376) + 56) & 9) != 0)
        {
          v10 = a3 - 12;
          if (a3 < 0xC)
          {
            return result;
          }

          v11 = *(a2 + 8) & 0x3FF;
        }

        else
        {
          v10 = a3 - 10;
          if (a3 < 0xA)
          {
            return result;
          }

          v11 = *(a2 + 8);
        }

        if (v10 >= v11 && (!a4 || a5 >= 0x12))
        {
          goto LABEL_4;
        }

        break;
      case 0xALL:
        if (!a4 || a5 >= 0x20)
        {
          goto LABEL_4;
        }

        break;
      case 0xBLL:
        if (a3 >= 0xA && a3 - 10 >= *(a2 + 8))
        {
          goto LABEL_38;
        }

        break;
      case 0xCLL:
LABEL_38:
        if (!a4 || a5 >= 8)
        {
          goto LABEL_4;
        }

        break;
      case 0xDLL:
        if (a3 >= 0x10)
        {
          if (*(a2 + 15) == 1)
          {
            if (!a4 || *(a4 + 2) + 3 <= a5)
            {
              goto LABEL_4;
            }
          }

          else if (!a4 || a5 >= 0x1A)
          {
            goto LABEL_4;
          }
        }

        break;
      case 0xELL:
        if (a3 > 0xB)
        {

          result = sub_10002E100(a1, a2, a3, a4, a5);
        }

        else
        {
          sub_10003E5FC("%s:%d: %s key size (%zu) on expanded record (%llu) is too small\n", "jobj_validate_key_val", 2403, (a1 + 4040), a3, *a2 & 0xFFFFFFFFFFFFFFFLL);
          result = 22;
        }

        break;
      default:
LABEL_4:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t sub_10002E100(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((*(*(a1 + 376) + 57) & 2) == 0)
  {
    sub_10003E5FC("%s:%d: %s ***: expanded obj type found on unsupported volume\n");
    return 22;
  }

  v7 = *(a2 + 8);
  v8 = *a2 & 0xFFFFFFFFFFFFFFFLL;
  if (v7 > 0x11)
  {
    if (v7 == 18)
    {
      v5 = 0;
      if (a4 && a5 <= 0x33)
      {
        sub_10003E5FC("%s:%d: %s value size (%zu) on dir stats (%llu) is too small\n");
        return 22;
      }

      return v5;
    }

    if (v7 == 19)
    {
      if (a3 <= 0x1B)
      {
        sub_10003E5FC("%s:%d: %s key size (%zu) on clone mapping (%llu) is too small\n");
        return 22;
      }

      v5 = 0;
      if (a4 && a5 <= 7)
      {
        sub_10003E5FC("%s:%d: %s value size (%zu) on clone mapping (%llu) is too small\n");
        return 22;
      }

      return v5;
    }

LABEL_14:
    v5 = 0;
    if (a4 && a5 <= 3)
    {
      sub_10003E5FC("%s:%d: %s value size (%zu) on unknown record (%llu) is too small\n");
      return 22;
    }

    return v5;
  }

  if (v7 == 16)
  {
    if (a3 <= 0x1B)
    {
      sub_10003E5FC("%s:%d: %s key size (%zu) on purgeable record (%llu) is too small\n");
      return 22;
    }

    v5 = 0;
    if (a4 && a5 <= 0x17)
    {
      sub_10003E5FC("%s:%d: %s value size (%zu) on purgeable record (%llu) is too small\n");
      return 22;
    }

    return v5;
  }

  if (v7 != 17)
  {
    goto LABEL_14;
  }

  if (a3 <= 0x13)
  {
    sub_10003E5FC("%s:%d: %s key size (%zu) on purgeable tombstone (%llu) is too small\n");
    return 22;
  }

  v5 = 0;
  if (a4 && a5 <= 7)
  {
    sub_10003E5FC("%s:%d: %s value size (%zu) on purgeable tombstone (%llu) is too small\n");
    return 22;
  }

  return v5;
}

uint64_t sub_10002E330(uint64_t a1, void *a2, unsigned int a3, void *a4, unsigned int a5, int *a6)
{
  v6 = 22;
  if (a3 >= 8 && a5 >= 8)
  {
    v11 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v12 = *a4 & 0xFFFFFFFFFFFFFFFLL;
    if (v11 < v12)
    {
LABEL_4:
      v13 = -1;
LABEL_12:
      v6 = 0;
      *a6 = v13;
      return v6;
    }

    if (v11 > v12)
    {
LABEL_6:
      v13 = 1;
      goto LABEL_12;
    }

    v14 = *a2 >> 60;
    v15 = *a4 >> 60;
    if (!v14)
    {
      goto LABEL_8;
    }

    if (!v15)
    {
      goto LABEL_6;
    }

    if (v14 < v15)
    {
      goto LABEL_4;
    }

    if (v14 > v15)
    {
      goto LABEL_6;
    }

    if (v14 != 14)
    {
LABEL_22:
      if (sub_100046328(a1) != 13)
      {
        return 22;
      }

      if (sub_10002DE7C(a1, a2, a3, 0, 0))
      {
        return 22;
      }

      v13 = sub_10002DE7C(a1, a4, a5, 0, 0);
      if (v13)
      {
        return 22;
      }

      if (v14 <= 10)
      {
        if (v14 > 7)
        {
          if (v14 == 8)
          {
            v39 = a2[1];
            v40 = a4[1];
            if (v39 != -1)
            {
              if (v40 == -1)
              {
                goto LABEL_6;
              }

              v25 = v39 > v40;
              if (v39 < v40)
              {
                goto LABEL_4;
              }

              goto LABEL_83;
            }

            v16 = v40 == -1;
            goto LABEL_9;
          }

          if (v14 != 9)
          {
            goto LABEL_12;
          }

          if ((*(*(a1 + 376) + 56) & 9) != 0)
          {
            v29 = *(a2 + 2);
            v30 = *(a4 + 2);
            if (v29 >> 10 < v30 >> 10)
            {
              goto LABEL_4;
            }

            if (v29 >> 10 > v30 >> 10)
            {
              goto LABEL_6;
            }

            v31 = a2 + 12;
            v32 = a4 + 12;
            v33 = v29 & 0x3FF;
            v34 = v30 & 0x3FF;
LABEL_52:
            v13 = sub_10003401C(v31, v32, v33, v34);
            goto LABEL_12;
          }
        }

        else if (v14 != 4)
        {
          if (v14 != 5)
          {
            goto LABEL_12;
          }

          v26 = a2[1];
          v15 = a4[1];
          if (v26)
          {
            if (!v15)
            {
              goto LABEL_6;
            }

            v27 = v26 >= v15;
            v28 = v26 > v15;
LABEL_72:
            if (v27)
            {
              v13 = v28;
            }

            else
            {
              v13 = -1;
            }

            goto LABEL_12;
          }

          goto LABEL_8;
        }
      }

      else
      {
        if (v14 > 15)
        {
          switch(v14)
          {
            case 0x10:
              v41 = *(a2 + 12);
              v15 = *(a4 + 12);
              if (v41)
              {
                if (!v15)
                {
                  goto LABEL_6;
                }

                if (v41 < v15)
                {
                  goto LABEL_4;
                }

                if (v41 != v15)
                {
                  v25 = v41 > v15;
                  goto LABEL_83;
                }

                v42 = *(a2 + 20);
                v15 = *(a4 + 20);
                if (v42)
                {
                  if (v15)
                  {
                    if (v42 >= v15)
                    {
                      v13 = v42 != v15;
                      goto LABEL_12;
                    }

                    goto LABEL_4;
                  }

                  goto LABEL_6;
                }
              }

              break;
            case 0x11:
              v43 = *(a2 + 12);
              v15 = *(a4 + 12);
              if (v43)
              {
                if (!v15)
                {
                  goto LABEL_6;
                }

                v27 = v43 >= v15;
                v44 = v43 == v15;
                goto LABEL_69;
              }

              break;
            case 0x13:
              v21 = *(a2 + 12);
              v22 = *(a4 + 12);
              if (v21 < v22)
              {
                goto LABEL_4;
              }

              if (v21 > v22)
              {
                goto LABEL_6;
              }

              v23 = *(a2 + 20);
              v24 = *(a4 + 20);
              v25 = v23 > v24;
              if (v23 < v24)
              {
                goto LABEL_4;
              }

LABEL_83:
              v13 = v25;
              goto LABEL_12;
            default:
              goto LABEL_12;
          }

LABEL_8:
          v16 = v15 == 0;
          goto LABEL_9;
        }

        if (v14 != 11)
        {
          if (v14 != 13)
          {
            goto LABEL_12;
          }

          v35 = a2[1];
          v36 = HIBYTE(v35);
          v37 = a4[1];
          v38 = HIBYTE(v37);
          if (HIBYTE(v35))
          {
            if (!v38)
            {
              goto LABEL_6;
            }

            if (v36 != v38)
            {
              if (v36 < v38)
              {
                v13 = -1;
              }

              else
              {
                v13 = 1;
              }

              goto LABEL_12;
            }

            v45 = v35 & 0xFFFFFFFFFFFFFFLL;
            v46 = v37 & 0xFFFFFFFFFFFFFFLL;
            if (v45 != 0xFFFFFFFFFFFFFFLL)
            {
              if (v46 == 0xFFFFFFFFFFFFFFLL)
              {
                goto LABEL_6;
              }

              v27 = v45 >= v46;
              v44 = v45 == v46;
LABEL_69:
              v28 = !v44;
              goto LABEL_72;
            }

            v16 = v46 == 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v38 == 0;
          }

LABEL_9:
          if (v16)
          {
            v13 = 0;
          }

          else
          {
            v13 = -1;
          }

          goto LABEL_12;
        }
      }

      v33 = *(a2 + 4);
      v34 = *(a4 + 4);
      v31 = a2 + 10;
      v32 = a4 + 10;
      goto LABEL_52;
    }

    v6 = 22;
    if (a3 >= 0xC && a5 >= 0xC)
    {
      LODWORD(v14) = *(a2 + 8);
      v20 = *(a4 + 8);
      if (v14 < v20)
      {
        goto LABEL_4;
      }

      if (v14 > v20)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  return v6;
}

uint64_t sub_10002E668(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, unint64_t a4, int a5)
{
  v10 = sub_10002DBCC(a1, a3);
  v11 = sub_10002DA34(a1, a3);
  v38 = v11;
  v12 = 22;
  if (!v10 || !v11)
  {
    return v12;
  }

  v31 = a4;
  if ((v11 & 7) != 0)
  {
    v13 = (v11 & 0x1FFF8) + 8;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13 + v10;
  __chkstk_darwin(v11);
  v17 = (&v31 - v16);
  if (v15)
  {
    memset(&v31 - v16, 170, v15);
  }

  if (v14 >= 0x251)
  {
    v17 = sub_10003FB98(v13 + v10, 0x12B82EDCuLL);
    if (!v17)
    {
      return 12;
    }
  }

  v18 = sub_10002D1DC(a1, a3, v17, &v38, v17 + v13, v10);
  if (v18)
  {
    goto LABEL_11;
  }

  if (a5 <= 2)
  {
    if (a5 == 1)
    {
      v18 = sub_10001B234(a2, *(a1 + 440), v17, v38, (v17 + v13), v10, v31);
LABEL_11:
      v12 = v18;
      goto LABEL_12;
    }

    if (a5 == 2)
    {
      if (*a3 == 3)
      {
        v19 = (a3 + 320);
      }

      else
      {
        v19 = 0;
      }

      v20 = v31;
      v21 = sub_100020594(a2, *(a1 + 440), v17, v38, v17 + v13, v10, v31, v19);
      if (v21 == 28)
      {
        v21 = sub_10001B234(a2, *(a1 + 440), v17, v38, (v17 + v13), v10, v20);
      }

LABEL_27:
      v12 = v21;
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (a5 != 3)
  {
    if (a5 != 4)
    {
      goto LABEL_12;
    }

    v21 = sub_1000229C0(a2, *(a1 + 440), v17, v38, v31);
    goto LABEL_27;
  }

  v37 = 0;
  v36 = 0u;
  v35 = 0u;
  memset(&v34[2], 0, 32);
  v34[0] = a1;
  v34[1] = v31;
  v23 = *a3;
  if (v23 == 18 || v23 == 10)
  {
    HIDWORD(v37) = *(a3 + 22);
    *(&v36 + 1) = *(a3 + 6);
  }

  v12 = sub_100020AD8(a2, *(a1 + 440), v17, v38, v17 + v13, v10, 1, v31, sub_10002F944, v34);
  v24 = *a3;
  if (v24 <= 9)
  {
    if (v24 == 2)
    {
      *(a3 + 8) = v34[2];
    }

    else if (v24 == 6 || v24 == 7)
    {
      *(a3 + 4) = v34[2];
    }

    goto LABEL_12;
  }

  switch(v24)
  {
    case 0xAu:
      goto LABEL_40;
    case 0xDu:
      if (a3[16] == 2)
      {
        *(a3 + 3) = v34[2];
      }

      break;
    case 0x12u:
LABEL_40:
      v25 = *(a3 + 22);
      if ((v25 & 8) != 0)
      {
        *(a3 + 24) = *&v34[3];
        v30 = *(&v36 + 1);
        *(a3 + 5) = v34[5];
        *(a3 + 6) = v30;
        *(a3 + 23) = v37;
        sub_100062AD8(a3 + 32, 1, 0, &v35, 8);
        sub_100062AD8(a3 + 32, 3, 0, &v35 + 8, 8);
        v28 = (a3 + 64);
        v29 = &v36;
      }

      else
      {
        if ((v25 & 0x200) != 0)
        {
          *(a3 + 6) = *(&v36 + 1);
          *(a3 + 23) = v37;
        }

        if ((v37 & 0x80000000000) == 0)
        {
          goto LABEL_53;
        }

        v32 = 0xAAAAAAAAAAAAAAAALL;
        __dst = 0xAAAAAAAAAAAAAAAALL;
        if (sub_100062DA0(a3 + 32, 3, 0, &__dst, 8uLL))
        {
          __dst = 0;
        }

        v26 = sub_100062DA0(a3 + 32, 4, 0, &v32, 8uLL);
        v27 = v32;
        if (v26)
        {
          v27 = 0;
        }

        v32 = v27 - v36;
        __dst -= *(&v35 + 1);
        *(a3 + 23) |= 8u;
        sub_100062AD8(a3 + 32, 3, 0, &__dst, 8);
        if (!v32)
        {
          goto LABEL_53;
        }

        *(a3 + 23) |= 0x800u;
        v28 = (a3 + 64);
        v29 = &v32;
      }

      sub_100062AD8(v28, 4, 0, v29, 8);
LABEL_53:
      *(a3 + 7) = v34[2];
      *(a3 + 22) = HIDWORD(v37);
      break;
  }

LABEL_12:
  if (v14 >= 0x251)
  {
    sub_10003FB5C(v17, v13 + v10);
  }

  return v12;
}

uint64_t sub_10002EAE8(uint64_t a1)
{
  v2 = *(a1 + 3584);
  if (v2)
  {
    result = sub_100025B30(*(a1 + 3584), 0, 0);
    if (!result)
    {
      sub_10003E50C("%s:%d: %s Deleted the shadow_fs_root tree %p\n", "fs_destroy_shadow_fs_root_tree", 3548, (a1 + 4040), v2);
      result = 0;
      *(a1 + 3584) = 0;
    }
  }

  else
  {
    sub_10003E5FC("%s:%d: %s Shadow fs_root does not exist\n", "fs_destroy_shadow_fs_root_tree", 3542, (a1 + 4040));
    return 2;
  }

  return result;
}

uint64_t sub_10002EB84(uint64_t a1, int a2, uint64_t a3, char *__s, size_t a5, uint64_t a6, unsigned int a7, int a8, int a9, int a10, int a11, uint64_t a12, int a13, void *a14, unint64_t a15, int a16, int a17)
{
  v24 = a14;
  v25 = a11;
  v27 = a16;
  v26 = a17;
  v74 = 0;
  v72 = a17;
  v73 = -1431655766;
  *a14 = 0;
  if (v27)
  {
    v28 = a2;
    if (a3)
    {
      v29 = *(a3 + 8);
    }

    else
    {
      v29 = 1;
    }

LABEL_10:
    v33 = a1;
    v34 = a5;
    v35 = v29;
    result = sub_100034C64(a1, 1, __s, v34, v26, v29, a6, &v74);
    v73 = result;
    if (result)
    {
      return result;
    }

    v65 = v35;
    v36 = sub_10003FA04(2u);
    if (!v36)
    {
      sub_10002CA94(0, v74);
      return 12;
    }

    v37 = v36;
    v63 = v25;
    v64 = v24;
    v38 = a15;
    v39 = sub_100062550();
    *(v74 + 3) = v39;
    v40 = sub_100062458(a7);
    v41 = v74;
    *(v74 + 30) = v40;
    v42 = sub_100030EB4(v33, v28, v41, v38);
    v73 = v42;
    if (v42)
    {
      v43 = strerror(v42);
      v44 = sub_10003E5FC("%s:%d: %s %s: could not insert dir rec for obj-id %lld (name: %s)\n", "fs_obj_create_name_checked", 13474, (v33 + 4040), v43, *(v74 + 1), __s);
      sub_10002CA94(v44, v74);
      sub_10003FB10(v37, 2u);
      return 22;
    }

    *v37 = 42467587;
    *(v37 + 1) = a6;
    *(v37 + 2) = v65;
    *(v37 + 6) = v39;
    *(v37 + 7) = v39;
    *(v37 + 4) = v39;
    *(v37 + 5) = v39;
    *(v37 + 3) = a6;
    *(v37 + 48) = a7;
    v37[22] = a8;
    v37[23] = a9;
    v37[20] = 1;
    v37[21] = a10;
    if ((a7 & 0xF000) != 0x4000)
    {
      v37[18] = 1;
    }

    sub_10003E3C8((v37 + 112));
    sub_10003E3C8((v37 + 30));
    *(v37 + 14) |= 0x100000000000uLL;
    v45 = 48;
    if ((a7 & 0xF000) != 0x8000)
    {
      v45 = 0;
    }

    sub_100062624((v37 + 102), v45 + *(v74 + 31));
    sub_100062AD8(v37 + 204, 4, 2, *(v74 + 8), *(v74 + 31));
    v46 = v64;
    if ((v37[24] & 0xB000 | 0x4000) == 0x6000)
    {
      if ((*(*(v33 + 376) + 57) & 2) != 0)
      {
        v37[26] = v63;
      }

      else
      {
        v73 = sub_100062AD8(v37 + 204, 14, 34, &a11, 4);
        if (v73)
        {
          v58 = *(v37 + 1);
          v47 = sub_10003E5FC("%s:%d: %s *** failed to set rdev as an extended field of ino %lld (ret %d)\n");
          goto LABEL_56;
        }
      }
    }

    if (a3)
    {
      *(v37 + 8) = *(a3 + 64) & 0x20400002;
      if ((*(a3 + 64) & 2) != 0)
      {
        __dst = 0xAAAAAAAAAAAAAAAALL;
        if (sub_100062DA0((a3 + 408), 10, 0, &__dst, 8uLL))
        {
          if (sub_100042AEC(*(v33 + 392)))
          {
            sub_10003E5FC("%s:%d: %s ino %llu is flagged to maintain dir-stats but has no dir-stats key\n", "fs_obj_create_name_checked", 13549, (v33 + 4040), *(a3 + 8));
          }
        }

        else
        {
          sub_100062AD8(v37 + 204, 10, 34, &__dst, 8);
        }
      }

      if ((v37[24] & 0xF000) == 0x8000 && (*(a3 + 67) & 2) != 0)
      {
        *(v37 + 8) |= 0x100000uLL;
        __dst = sub_100001AE4(a3);
        sub_100062AD8(v37 + 204, 15, 2, &__dst, 8);
      }
    }

    v51 = a13;
    v52 = a12;
    v53 = *(v37 + 48);
    if ((v53 & 0xF000) == 0x4000)
    {
      sub_100034F48(v33, v37);
      v53 = *(v37 + 48);
    }

    *(v37 + 14) |= 0x200000000uLL;
    *(v37 + 8) |= v52 | 0x8000;
    v37[19] = v51;
    if ((v53 & 0xF000) == 0x8000 && sub_100018DC4(v33) == 3)
    {
      LODWORD(__dst) = -1431655766;
      if (sub_100039BB4(v33, v37, &__dst))
      {
        if (__dst == 6)
        {
          panic("assertion failed: %s", "ino_poison_vnode(apfs, inode)");
        }
      }
    }

    v54 = sub_100030EB4(v33, v28, v37, v38);
    v73 = v54;
    if (v54)
    {
      v55 = strerror(v54);
      sub_10003E5FC("%s:%d: %s %s: could not insert inode obj-id %lld (name: %s)\n", "fs_obj_create_name_checked", 13609, (v33 + 4040), v55, *(v37 + 1), *(v74 + 8));
      v56 = v74;
      v74[1] = 3;
      v47 = sub_10003135C(v33, v28, v56, v38);
      v46 = v64;
      if (v47)
      {
        strerror(v47);
        v60 = *(v37 + 1);
        v62 = *(v74 + 8);
        v47 = sub_10003E5FC("%s:%d: %s %s: could not remove dir rec for obj-id %lld (name: %s)\n");
      }
    }

    else
    {
      v46 = v64;
      if (!a3 || v28 == 4 && v65 == 2)
      {
        goto LABEL_57;
      }

      v57 = sub_100062550();
      *(a3 + 40) = v57;
      *(a3 + 48) = v57;
      *(a3 + 112) |= 0x40000uLL;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 1;
      sub_10002C5E0(v33, a3, &v67, v38);
      if ((v37[24] & 0xF000) == 0x4000)
      {
        sub_100034E94(v33, a3);
      }

      ++*(a3 + 72);
      ++*(a3 + 80);
      *(a3 + 1) = 2;
      v54 = sub_100030EB4(v33, v28, a3, v38);
      v73 = v54;
      if (!v54)
      {
        goto LABEL_57;
      }

      v61 = *(v74 + 8);
      v59 = *(a3 + 8);
      v47 = sub_10003E5FC("%s:%d: %s failed to update parent ino %lld nchildren field on create of %s (err %d)\n");
    }

LABEL_56:
    sub_10002CA94(v47, v37);
    v37 = 0;
LABEL_57:
    sub_10002CA94(v54, v74);
    *v46 = v37;
    return v73;
  }

  if (!a5)
  {
    v30 = a1;
    a5 = strlen(__s);
    a1 = v30;
  }

  if (a5 > 0x2FD)
  {
    return 63;
  }

  v66 = a1;
  v31 = sub_10003516C(__s, a5, 1u, 0, &v73);
  if (v31 > 0xFF)
  {
    return 63;
  }

  if (!v31 && v73)
  {
    return 22;
  }

  v28 = a2;
  if (a3)
  {
    v48 = *(a3 + 8);
  }

  else
  {
    v48 = 1;
  }

  if (a3)
  {
    v49 = (a3 + 336);
  }

  else
  {
    v49 = 0;
  }

  v50 = v48;
  result = sub_100035828(v66, v48, __s, a5, v49, &v72, 0);
  v73 = result;
  if (!result)
  {
    sub_10002CA94(result, v74);
    return 17;
  }

  if (result == 2)
  {
    v26 = v72;
    a1 = v66;
    v29 = v50;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10002F2B4(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t **a5)
{
  v9 = 22;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        pthread_mutex_lock((a1 + 1664));
        if (*(a1 + 440) == a4 && (v22 = *(a1 + 3616)) != 0)
        {
          sub_10004C19C(*(a1 + 3616));
          if (a3 && (v23 = sub_10004B964(v22, 0, a3), v23))
          {
            v9 = v23;
            sub_100046D50(v22);
          }

          else
          {
            v9 = 0;
            *a5 = v22;
          }
        }

        else
        {
          v9 = sub_1000191DC(a1, 0, a4, a3, a5);
          if (!v9)
          {
            if (*(a1 + 440) == a4)
            {
              v25 = *a5;
              sub_10004C19C(v25);
              v9 = 0;
              *(a1 + 3616) = v25;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        v21 = (a1 + 1664);
        goto LABEL_110;
      }

      if (a2 != 8)
      {
        return v9;
      }

      if (*(a1 + 440) != a4 || (v14 = *(a1 + 3576)) == 0)
      {
        v9 = sub_1000190BC(a1, a4, a3, a5);
        if (!v9)
        {
          v27 = *(a1 + 440);
          v28 = v27 && *(a1 + 504) == 0;
          if (!v28 && v27 == a4)
          {
            v29 = *a5;
            sub_10004C19C(v29);
            v9 = 0;
            *(a1 + 3576) = v29;
          }
        }

        return v9;
      }

      sub_10004C19C(*(a1 + 3576));
      if (!a3)
      {
LABEL_72:
        v9 = 0;
        *a5 = v14;
        return v9;
      }

LABEL_51:
      v24 = sub_10004B964(v14, 0, a3);
      if (v24)
      {
        v9 = v24;
        sub_100046D50(v14);
        return v9;
      }

      goto LABEL_72;
    }

    if (a2 != 5)
    {
      if ((*(*(a1 + 376) + 56) & 0x40) != 0)
      {
        pthread_mutex_lock((a1 + 1600));
        v12 = *(a1 + 3608);
        if (v12)
        {
          sub_10004C19C(v12);
          if (a3)
          {
            v9 = sub_10004B964(*(a1 + 3608), 2, a3);
            v13 = *(a1 + 3608);
            if (v9)
            {
              sub_100046D50(v13);
LABEL_109:
              v21 = (a1 + 1600);
              goto LABEL_110;
            }

            *(*(a1 + 376) + 1048) = sub_100047D10(v13);
          }

          v9 = 0;
          *a5 = *(a1 + 3608);
          goto LABEL_109;
        }

        v34 = *(a1 + 384);
        if (!v34)
        {
          v34 = *(a1 + 376);
        }

        v35 = *(v34 + 1044);
        v36 = *(v34 + 1048);
        v46 = 0u;
        v47 = 0u;
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v45 = sub_100004D10;
        DWORD2(v46) = 32;
        if (v35 == 2)
        {
          v37 = sub_10002462C(a1, v35 & 0xFFFF0000, v36, a4, a3 != 0, &v45, a3, a5);
          v38 = v37;
          if (a3 && !v37)
          {
            v9 = 0;
            *(*(a1 + 376) + 1048) = sub_100047D10(*a5);
            goto LABEL_109;
          }

          if (!v37)
          {
            v9 = 0;
            goto LABEL_109;
          }

          v36 = *(v34 + 1048);
        }

        else
        {
          v38 = 22;
        }

        v43 = strerror(v38);
        sub_10003E5FC("%s:%d: %s Failed to get pfkur tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3946, (a1 + 4040), v36, a3, v38, v43);
        v9 = v38;
        goto LABEL_109;
      }

      return 45;
    }

    v20 = *(a1 + 376);
    if ((*(v20 + 56) & 0x20) == 0)
    {
      return 45;
    }

    v26 = *(v20 + 1040);
    if (a3 && *(a1 + 448))
    {
      return 30;
    }

    pthread_mutex_lock((a1 + 1536));
    v31 = *(a1 + 3600);
    if (v31)
    {
      if ((v26 & 0xC0000000) != 0)
      {
        if ((v26 & 0xC0000000) == 0x40000000)
        {
          v32 = *(a1 + 448);
          if (v32)
          {
            v33 = *(a1 + 376);
            goto LABEL_98;
          }

LABEL_93:
          sub_10004C19C(v31);
          if (a3)
          {
            v9 = sub_10004B964(*(a1 + 3600), 2, a3);
            v39 = *(a1 + 3600);
            if (v9)
            {
              sub_100046D50(v39);
LABEL_105:
              v21 = (a1 + 1536);
              goto LABEL_110;
            }

            *(*(a1 + 376) + 1032) = sub_100047D10(v39);
          }

          v9 = 0;
          *a5 = *(a1 + 3600);
          goto LABEL_105;
        }
      }

      else if (*(a1 + 440) == a4)
      {
        goto LABEL_93;
      }
    }

    v32 = *(a1 + 448);
    v33 = *(a1 + 376);
    if (!v32)
    {
      v32 = *(v33 + 1032);
    }

LABEL_98:
    v40 = *(v33 + 1040);
    *&v46 = 0;
    v47 = 0u;
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v45 = sub_100003350;
    *(&v46 + 1) = 0x20000001FLL;
    if (v40 == 2)
    {
      v41 = sub_10002462C(a1, v40 & 0xFFFF0000, v32, a4, a3 != 0, &v45, a3, a5);
      v9 = v41;
      if (a3 && !v41)
      {
        *(*(a1 + 376) + 1032) = sub_100047D10(*a5);
        goto LABEL_105;
      }

      if (!v41)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v9 = 22;
    }

    v42 = strerror(v9);
    sub_10003E5FC("%s:%d: %s Failed to get fext tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3898, (a1 + 4040), v32, a3, v9, v42);
    goto LABEL_105;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      pthread_mutex_lock((a1 + 1472));
      v9 = sub_100019114(a1, a3, a5);
      if (!v9)
      {
        *(*(a1 + 376) + 152) = sub_100047D10(*a5);
      }

      v21 = (a1 + 1472);
      goto LABEL_110;
    }

    v14 = *(a1 + 3584);
    if (v14)
    {
      sub_10004C19C(*(a1 + 3584));
      if (!a3)
      {
        goto LABEL_72;
      }

      v15 = sub_10004B964(v14, 0, a3);
      if (!v15)
      {
        goto LABEL_72;
      }

      v9 = v15;
      sub_100046D50(v14);
LABEL_28:
      v14 = *(a1 + 3568);
      if (*(a1 + 440) != a4 || v14 == 0)
      {
        v9 = sub_1000190A8(a1, a4, a3, a5);
        if (!v9)
        {
          v17 = *(a1 + 440);
          v18 = v17 && *(a1 + 504) == 0;
          if (!v18 && v17 == a4)
          {
            v19 = *a5;
            sub_10004C19C(v19);
            v9 = 0;
            *(a1 + 3568) = v19;
          }
        }

        return v9;
      }

      sub_10004C19C(*(a1 + 3568));
      if (!a3)
      {
        if (v9)
        {
          return v9;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_27:
    v9 = 0;
    goto LABEL_28;
  }

  if (a2 == 1)
  {
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    pthread_mutex_lock((a1 + 1408));
    v10 = *(a1 + 3592);
    if (!v10)
    {
      v9 = sub_1000190D0(a1, *(*(a1 + 376) + 144), a3, a5);
      if (!v9)
      {
        if (a3)
        {
          *(*(a1 + 376) + 144) = sub_100047D10(*a5);
        }

        v30 = *a5;
        *(a1 + 3592) = *a5;
        sub_10004C19C(v30);
        v9 = 0;
      }

      goto LABEL_86;
    }

    sub_10004C19C(v10);
    if (a3)
    {
      v9 = sub_10004B964(*(a1 + 3592), 2, a3);
      v11 = *(a1 + 3592);
      if (v9)
      {
        sub_100046D50(v11);
LABEL_86:
        v21 = (a1 + 1408);
LABEL_110:
        pthread_mutex_unlock(v21);
        return v9;
      }

      *(*(a1 + 376) + 144) = sub_100047D10(v11);
    }

    v9 = 0;
    *a5 = *(a1 + 3592);
    goto LABEL_86;
  }

  return v9;
}

uint64_t sub_10002F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, int *a7, unsigned int a8, uint64_t a9)
{
  v14 = sub_10003399C(*a9, a1);
  if (a6 < a8 && v14 != 18)
  {
    return 22;
  }

  v16 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a1 >> 60;
  if (v17 <= 8)
  {
    switch(v17)
    {
      case 2uLL:
        result = 0;
        *(a9 + 16) = *(a5 + 4);
        *(a5 + 4) += a7[4];
        return result;
      case 6uLL:
        *(a9 + 16) = *a5;
        v64 = *a5 + *a7;
        v65 = v64 << 31 >> 31;
        if (v65 == v64 && (v65 & 0x8000000000000000) == 0)
        {
          result = 0;
          *a5 = v65;
          return result;
        }

        v66 = sub_10003FC54(*(*a9 + 392));
        v181 = *a5;
        v182 = *a7;
        v177 = *a9 + 4040;
        sub_10003E64C(v66, "%s:%d: %s dstream id %llu refcnt %u (delta: %d) would overflow\n", v67, v68, v69, v70, v71, v72, "jobj_refcnt_merge");
        return 0;
      case 7uLL:
        v31 = *a5;
        *(a9 + 16) = *a5;
        v32 = v31 + *a7;
        *a5 = v32;
        if (v32 < 0)
        {
          panic("can't have a negative refcnt on crypto state %llu refcnt %d\n", v16, v32);
        }

        return 0;
    }

    goto LABEL_49;
  }

  if (*a1 >> 60 <= 0xCuLL)
  {
    if (v17 != 9)
    {
      if (v17 == 10)
      {
        v18 = *(a9 + 84);
        if ((v18 & 2) != 0)
        {
          if ((v18 & 4) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v19 = *a9;
          v20 = *a5;
          v21 = *a7;
          v22 = *a5 + *a7;
          if (__CFADD__(*a5, *a7))
          {
            v23 = (*a7 >> 63) + 1;
          }

          else
          {
            v23 = *a7 >> 63;
          }

          v24 = v23 << 63 >> 63;
          if (v24 != v23 || v24 < 0)
          {
            if (sub_100042AEC(*(v19 + 392)))
            {
              sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v19 + 4040), "num children", "dir-stats", v16, "num children", v20, v21);
            }

            v22 = v20;
          }

          *a5 = v22;
          v25 = *a9;
          v26 = a5[1];
          v27 = *(a7 + 1);
          v28 = v26 + v27;
          if (__CFADD__(v26, v27))
          {
            v29 = (v27 >> 63) + 1;
          }

          else
          {
            v29 = v27 >> 63;
          }

          v30 = v29 << 63 >> 63;
          if (v30 != v29 || v30 < 0)
          {
            if (sub_100042AEC(*(v25 + 392)))
            {
              sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v25 + 4040), "total size", "dir-stats", v16, "total size", v26, v27);
            }

            v28 = v26;
          }

          a5[1] = v28;
          v18 = *(a9 + 84);
          if ((v18 & 4) != 0)
          {
LABEL_26:
            a5[2] = *(a7 + 2);
            if (*(a9 + 84))
            {
              goto LABEL_85;
            }

            goto LABEL_82;
          }
        }

        if (v18)
        {
LABEL_85:
          if ((*(a9 + 84) & 8) != 0)
          {
            *(a9 + 24) = *a5;
            *(a9 + 32) = a5[1];
          }

          result = 0;
          *(a9 + 16) = a5[2];
          return result;
        }

LABEL_82:
        v63 = *(a7 + 3);
        if (v63 <= 1)
        {
          v63 = 1;
        }

        a5[3] += v63;
        goto LABEL_85;
      }

      goto LABEL_49;
    }

    a5[1] = *(a7 + 1);
    if (*(a7 + 8))
    {
      result = 0;
      *(a5 + 8) = *(a7 + 8);
      return result;
    }

    return 0;
  }

  if (v17 != 13)
  {
    if (v17 == 14)
    {
      v33 = *(a1 + 8);
      if (v33 != 19)
      {
        if (v33 != 18)
        {
          v178 = *(a1 + 8);
          sub_10003E5FC("%s:%d: don't know how to merge refcounts on objects of expanded type %d\n");
          return 22;
        }

        v34 = *(a9 + 84);
        *(a9 + 84) = 0;
        if ((v34 & 0x800000) != 0)
        {
          result = 0;
          v78 = a7[12];
          a5[3] = *(a7 + 3);
          *(a5 + 12) = v78 | 0x80;
          a5[4] = *(a7 + 4);
          return result;
        }

        v35 = *(a5 + 12);
        v36 = (v34 & 0x4000) == 0;
        if ((v35 & 0x20) == 0)
        {
          v36 = 1;
        }

        v37 = 1;
        if (((v34 >> 8) & ((a5[6] & 0x10u) >> 4) & 1) == 0)
        {
          v38 = (v34 >> 12) & 1;
          if ((v35 & 0x20) != 0)
          {
            LOBYTE(v38) = (v34 & 0x60) == 32;
          }

          if (v36)
          {
            v37 = v38;
          }

          else
          {
            v37 = 1;
          }
        }

        v198 = a5[4];
        v39 = a6 - 52;
        v40 = a5[2];
        v197 = a5[1];
        if ((v35 & 8) != 0)
        {
          v203[0] = 0;
          LODWORD(v201) = 0;
          v199 = 0;
          if (!sub_10006281C(a5 + 26, v39, 3, 0, v203, &v201) && v201 == 8)
          {
            v199 = *v203[0];
          }

          v41 = *(a5 + 12);
        }

        else
        {
          v199 = 0;
          v41 = *(a5 + 12);
        }

        if ((v41 & 0x800) != 0)
        {
          v203[0] = 0;
          LODWORD(v201) = 0;
          v80 = sub_10006281C(a5 + 26, v39, 4, 0, v203, &v201);
          v79 = 0;
          if (!v80 && v201 == 8)
          {
            v79 = *v203[0];
          }

          v41 = *(a5 + 12);
        }

        else
        {
          v79 = 0;
        }

        if ((v34 & 2) == 0 && (v41 & 0x200) != 0)
        {
          result = 0;
          *(a9 + 16) = *a1 & 0xFFFFFFFFFFFFFFFLL;
          v81 = *(a9 + 84) | 0x400000;
          goto LABEL_300;
        }

        v194 = v79;
        if (v41 >= 0x1000)
        {
          v41 |= 0x100u;
          *(a5 + 12) = v41;
        }

        if (a5[4] == (*a1 & 0xFFFFFFFFFFFFFFFLL))
        {
          *(a5 + 12) = v41 | 0x400;
          a5[4] = 0;
        }

        v196 = (v34 >> 1) & 1;
        if (!(v196 | v37 & 1))
        {
          v195 = v40;
          v190 = a8;
          v193 = v39;
          v82 = *a9;
          v83 = *a1;
          v84 = *a5;
          v85 = *a7;
          v86 = *a5 + *a7;
          if (__CFADD__(*a5, *a7))
          {
            v87 = (*a7 >> 63) + 1;
          }

          else
          {
            v87 = *a7 >> 63;
          }

          v88 = v87 << 63 >> 63;
          if (v88 != v87 || v88 < 0)
          {
            if (sub_100042AEC(*(v82 + 392)))
            {
              sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v82 + 4040), "descendants", "exp-dir-stats", v83 & 0xFFFFFFFFFFFFFFFLL, "descendants", v84, v85);
            }

            v86 = v84;
          }

          *a5 = v86;
          v89 = *a9;
          v90 = *a1;
          v91 = a5[1];
          v92 = *(a7 + 1);
          v93 = v91 + v92;
          if (__CFADD__(v91, v92))
          {
            v94 = (v92 >> 63) + 1;
          }

          else
          {
            v94 = v92 >> 63;
          }

          v95 = v94 << 63 >> 63;
          if (v95 != v94 || v95 < 0)
          {
            if (sub_100042AEC(*(v89 + 392)))
            {
              sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v89 + 4040), "physical size", "exp-dir-stats", v90 & 0xFFFFFFFFFFFFFFFLL, "physical size", v91, v92);
            }

            v93 = v91;
          }

          v191 = v190 - 52;
          a5[1] = v93;
          v96 = *(a5 + 12);
          if (v96)
          {
            v97 = *a9;
            v98 = *a1;
            v99 = a5[2];
            v100 = *(a7 + 2);
            v101 = v99 + v100;
            if (__CFADD__(v99, v100))
            {
              v102 = (v100 >> 63) + 1;
            }

            else
            {
              v102 = v100 >> 63;
            }

            v103 = v102 << 63 >> 63;
            if (v103 != v102 || v103 < 0)
            {
              if (sub_100042AEC(*(v97 + 392)))
              {
                sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v97 + 4040), "resource fork size", "exp-dir-stats", v98 & 0xFFFFFFFFFFFFFFFLL, "resource fork size", v99, v100);
              }

              v101 = v99;
            }

            a5[2] = v101;
            v96 = *(a5 + 12);
          }

          v39 = v193;
          v40 = v195;
          if ((v96 & 4) != 0 && (a7[12] & 4) != 0)
          {
            v104 = *a9;
            v105 = *a1;
            v203[0] = 0;
            v201 = 0;
            v202 = 0;
            v106 = sub_10006281C(a5 + 26, v193, 1, 0, v203, &v202);
            v107 = 0;
            if (!v106)
            {
              v187 = v105;
              if (v202 == 8)
              {
                v202 = 0;
                if (!sub_10006281C(a7 + 26, v191, 1, 0, &v201, &v202) && v202 == 8 && (v108 = *v201) != 0)
                {
                  v184 = *v203[0];
                  v107 = *v203[0] + v108;
                  if (__CFADD__(*v203[0], v108))
                  {
                    v109 = (v108 >> 63) + 1;
                  }

                  else
                  {
                    v109 = v108 >> 63;
                  }

                  v110 = v109 << 63 >> 63;
                  if (v110 != v109 || v110 < 0)
                  {
                    if (sub_100042AEC(*(v104 + 392)))
                    {
                      sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v104 + 4040), "clone size", "exp-dir-stats", v187 & 0xFFFFFFFFFFFFFFFLL, "clone size", v184, v108);
                    }

                    v107 = v184;
                    v39 = v193;
                    v40 = v195;
                  }
                }

                else
                {
                  v107 = *v203[0];
                }
              }
            }

            v203[0] = v107;
            v132 = sub_1000628C0(a5 + 26, v39, 1, v203, 8);
            if (v132)
            {
              v133 = v132;
              if (sub_100042AEC(*(*a9 + 392)))
              {
                v134 = *a9 + 4040;
                v135 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                v136 = strerror(v133);
                v179 = v134;
                v40 = v195;
                sub_10003E5FC("%s:%d: %s could not update clone size for dir-stats %llu: %s (%d)\n", "exp_dir_stats_refcnt_merge", 3060, v179, v135, v136, v133);
              }
            }

            v96 = *(a5 + 12);
          }

          if ((v96 & 8) != 0 && (a7[12] & 8) != 0)
          {
            v137 = *a9;
            v188 = *a1;
            v203[0] = 0;
            v201 = 0;
            v202 = 0;
            v138 = 0;
            if (!sub_10006281C(a5 + 26, v39, 3, 0, v203, &v202) && v202 == 8)
            {
              v185 = v137;
              v202 = 0;
              if (!sub_10006281C(a7 + 26, v191, 3, 0, &v201, &v202) && v202 == 8 && (v139 = *v201) != 0)
              {
                v183 = *v203[0];
                v138 = *v203[0] + v139;
                if (__CFADD__(*v203[0], v139))
                {
                  v140 = (v139 >> 63) + 1;
                }

                else
                {
                  v140 = v139 >> 63;
                }

                v141 = v140 << 63 >> 63;
                if (v141 != v140 || v141 < 0)
                {
                  if (sub_100042AEC(*(v185 + 392)))
                  {
                    sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v185 + 4040), "purgeable size", "exp-dir-stats", v188 & 0xFFFFFFFFFFFFFFFLL, "purgeable size", v183, v139);
                  }

                  v39 = v193;
                  v40 = v195;
                }
              }

              else
              {
                v138 = *v203[0];
              }
            }

            v203[0] = v138;
            v142 = sub_1000628C0(a5 + 26, v39, 3, v203, 8);
            if (v142)
            {
              v143 = v142;
              if (sub_100042AEC(*(*a9 + 392)))
              {
                v144 = *a9 + 4040;
                v145 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                v146 = strerror(v143);
                v180 = v144;
                v40 = v195;
                sub_10003E5FC("%s:%d: %s could not update purgeable size for dir-stats %llu: %s (%d)\n", "exp_dir_stats_refcnt_merge", 3073, v180, v145, v146, v143);
              }
            }

            v96 = *(a5 + 12);
          }

          if ((v96 & 0x800) != 0 && (*(a7 + 49) & 8) != 0)
          {
            v147 = *a9;
            v189 = *a1;
            v203[0] = 0;
            v201 = 0;
            v202 = 0;
            v148 = 0;
            if (!sub_10006281C(a5 + 26, v39, 4, 0, v203, &v202) && v202 == 8)
            {
              v186 = v147;
              v202 = 0;
              if (!sub_10006281C(a7 + 26, v191, 4, 0, &v201, &v202) && v202 == 8 && (v149 = *v201) != 0)
              {
                v192 = *v203[0];
                v148 = *v203[0] + v149;
                if (__CFADD__(*v203[0], v149))
                {
                  v150 = (v149 >> 63) + 1;
                }

                else
                {
                  v150 = v149 >> 63;
                }

                v151 = v150 << 63 >> 63;
                if (v151 != v150 || v151 < 0)
                {
                  if (sub_100042AEC(*(v186 + 392)))
                  {
                    sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v186 + 4040), "purgeable rsrc size", "exp-dir-stats", v189 & 0xFFFFFFFFFFFFFFFLL, "purgeable rsrc size", v192, v149);
                  }

                  v39 = v193;
                  v40 = v195;
                }
              }

              else
              {
                v148 = *v203[0];
              }
            }

            v203[0] = v148;
            v152 = sub_1000628C0(a5 + 26, v39, 4, v203, 8);
            if (v152)
            {
              v153 = v152;
              if (sub_100042AEC(*(**a9 + 392)))
              {
                v154 = sub_100046328(*a9);
                v155 = *a9;
                if (v154 == 13)
                {
                  v156 = (v155 + 4040);
                }

                else
                {
                  v156 = (*(v155 + 384) + 212);
                }

                v157 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                v158 = strerror(v153);
                sub_10003E5FC("%s:%d: %s could not update purgeable rsrc size for dir-stats %llu: %s (%d)\n", "exp_dir_stats_refcnt_merge", 3087, v156, v157, v158, v153);
                v40 = v195;
              }
            }
          }
        }

        if ((v34 & 0x8000) != 0)
        {
          *(a5 + 12) |= 2u;
        }

        if ((v34 & 4) != 0)
        {
          a5[4] = *(a7 + 4);
        }

        v159 = *(a5 + 12);
        if ((v159 & 8) != 0)
        {
          if ((v34 & 0x400) != 0 && (v35 & 0x40) == 0)
          {
            v160 = v159 | 0x40;
            v161 = 1024;
LABEL_234:
            *(a5 + 12) = v160;
            *(a9 + 84) |= v161;
            goto LABEL_235;
          }

          if ((v34 & 0x800) != 0 && (v35 & 0x40) != 0)
          {
            v160 = v159 & 0xFFFFFFBF;
            v161 = 2048;
            goto LABEL_234;
          }
        }

LABEL_235:
        if ((v34 & 1) == 0)
        {
          v162 = *(a7 + 5);
          if (v162 <= 1)
          {
            v162 = 1;
          }

          a5[5] += v162;
          v163 = v196;
          if ((v35 & 0x40) == 0)
          {
            v163 = 1;
          }

          if ((v163 & 1) == 0)
          {
            *(a5 + 12) &= ~0x40u;
            *(a9 + 84) |= 0x800u;
          }
        }

        if ((v34 & 8) == 0)
        {
          if ((v34 & 0x200) != 0)
          {
            *(a9 + 72) = a5[5];
            *(a9 + 80) = *(a5 + 12);
          }

          v164 = *(a9 + 84);
          if ((v35 & 0x20) == 0 && (v164 & 0x800) != 0)
          {
            *(a9 + 56) = v197 - v199;
            if ((*(a5 + 49) & 8) != 0)
            {
              *(a9 + 64) = v40 - v194;
            }
          }

LABEL_266:
          *(a9 + 16) = a5[4];
          if ((v34 & 0xA0) != 0 || (v34 & 0x100) != 0 || (v35 & 0x20) == 0 || (v203[0] = 0, LODWORD(v201) = 0, sub_10006281C(a5 + 26, v39, 2, 0, v203, &v201)) || v201 != 8 || !*v203[0])
          {
            if ((v34 & 0x2000) != 0 && (v35 & 0x40) != 0 && (v164 & 0xC00) == 0)
            {
              *(a9 + 16) = 0;
            }
          }

          else
          {
            *(a9 + 16) = *v203[0];
            *(a9 + 84) |= 0x100000u;
          }

          if ((v34 & 0x10) != 0)
          {
            v173 = *(a5 + 12);
            a5[3] = 0;
            *(a5 + 12) = v173 & 0xFFFFFF6F | 0x10;
            v203[0] = 0;
            sub_1000628C0(a5 + 26, v39, 2, v203, 8);
            *(a5 + 12) &= 0xFFFFFBDF;
            *(a9 + 16) = v198;
            if ((v34 & 0x80) == 0)
            {
LABEL_279:
              if ((v34 & 0x10000) == 0)
              {
LABEL_280:
                if ((v34 & 0x20000) == 0)
                {
                  if ((v34 & 0x200000) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_290;
                }

                v174 = a5[6] & 0xFFFFFEFF;
LABEL_289:
                *(a5 + 12) = v174;
                if ((v34 & 0x200000) == 0)
                {
LABEL_282:
                  if ((v34 & 0x40000) == 0)
                  {
LABEL_283:
                    if ((v34 & 0x80000) == 0)
                    {
LABEL_293:
                      if ((v34 & 0x100000) == 0 || (v35 & 0x10) != 0)
                      {
                        if (!(v34 & 0x100000 | v35 & 0x10))
                        {
                          if ((v35 & 0x20) == 0)
                          {
                            return 0;
                          }

                          result = 0;
                          v81 = *(a9 + 84) | 0x40;
LABEL_300:
                          *(a9 + 84) = v81;
                          return result;
                        }
                      }

                      else
                      {
                        if (sub_100042AEC(*(*a9 + 392)))
                        {
                          sub_10003E5FC("%s:%d: %s fixing DIR_STATS_IS_SHADOW flag for dir-stats %llu\n", "exp_dir_stats_refcnt_merge", 3253, (*a9 + 4040), *a1 & 0xFFFFFFFFFFFFFFFLL);
                        }

                        *(a5 + 12) |= 0x110u;
                      }

                      result = 0;
                      v81 = *(a9 + 84) | 0x20;
                      goto LABEL_300;
                    }

                    v172 = a5[6] & 0xFFFFFDFF;
LABEL_292:
                    *(a5 + 12) = v172;
                    goto LABEL_293;
                  }

LABEL_291:
                  v172 = *(a5 + 12) | 0x200;
                  goto LABEL_292;
                }

LABEL_290:
                v175 = *(a5 + 12);
                a5[3] = 0;
                *(a5 + 12) = v175 & 0xFFFFFE4F | 0x100;
                if ((v34 & 0x40000) == 0)
                {
                  goto LABEL_283;
                }

                goto LABEL_291;
              }

LABEL_287:
              v174 = *(a5 + 12) | 0x100;
              goto LABEL_289;
            }
          }

          else if ((v34 & 0x80) == 0)
          {
            goto LABEL_279;
          }

          v203[0] = 0;
          sub_1000628C0(a5 + 26, v39, 2, v203, 8);
          *(a5 + 12) &= ~0x20u;
          if ((v34 & 0x10000) == 0)
          {
            goto LABEL_280;
          }

          goto LABEL_287;
        }

        *(a9 + 24) = *a5;
        *(a9 + 32) = a5[1];
        *(a9 + 40) = a5[2];
        v165 = *(a5 + 12);
        if ((v165 & 4) != 0)
        {
          v203[0] = 0;
          LODWORD(v201) = 0;
          v166 = sub_10006281C(a5 + 26, v39, 1, 0, v203, &v201);
          v167 = 0;
          if (!v166 && v201 == 8)
          {
            v167 = *v203[0];
          }

          *(a9 + 48) = v167;
          v165 = *(a5 + 12);
          if ((v165 & 8) == 0)
          {
LABEL_251:
            if ((v165 & 0x800) == 0)
            {
LABEL_265:
              *(a9 + 72) = a5[5];
              *(a9 + 80) = *(a5 + 12);
              v164 = *(a9 + 84);
              goto LABEL_266;
            }

LABEL_261:
            v203[0] = 0;
            LODWORD(v201) = 0;
            v170 = sub_10006281C(a5 + 26, v39, 4, 0, v203, &v201);
            v171 = 0;
            if (!v170 && v201 == 8)
            {
              v171 = *v203[0];
            }

            *(a9 + 64) = v171;
            goto LABEL_265;
          }
        }

        else if ((v165 & 8) == 0)
        {
          goto LABEL_251;
        }

        v203[0] = 0;
        LODWORD(v201) = 0;
        v168 = sub_10006281C(a5 + 26, v39, 3, 0, v203, &v201);
        v169 = 0;
        if (!v168 && v201 == 8)
        {
          v169 = *v203[0];
        }

        *(a9 + 56) = v169;
        if ((a5[6] & 0x800) == 0)
        {
          goto LABEL_265;
        }

        goto LABEL_261;
      }

      *a5 |= *(a7 + 7) << 56;
      v73 = (a5 + 1);
      v74 = a6 - 8;
      v75 = a8 - 8;
      v203[0] = 0;
      v202 = 0;
      if (!sub_10006281C(a7 + 4, v75, 2, 0, v203, &v202) && v202 == 8)
      {
        v76 = *v203[0];
        v201 = v76;
        if (v76)
        {
          v203[0] = 0;
          v202 = 0;
          if (!sub_10006281C(v73, a6 - 8, 2, 0, v203, &v202) && v202 == 8 && *v203[0])
          {
            if (*v203[0] == v76)
            {
              goto LABEL_165;
            }

            v77 = sub_1000628C0(v73, a6 - 8, 2, &v201, 8);
            if (!v77)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v77 = 22;
          }

          v200 = sub_10003FC54(*(*a9 + 392));
          v111 = *a9 + 4040;
          v112 = *(a1 + 12);
          v113 = *(a1 + 20);
          strerror(v77);
          sub_10003E64C(v200, "%s:%d: %s clone mapping <%llu, %llu>: failed to update dir-stats key: %s (%d)\n", v114, v115, v116, v117, v118, v119, "jobj_refcnt_merge");
        }
      }

LABEL_165:
      v203[0] = 0;
      v202 = 0;
      if (sub_10006281C(a7 + 4, v75, 1, 0, v203, &v202))
      {
        return 0;
      }

      if (v202 != 8)
      {
        return 0;
      }

      v120 = *v203[0];
      v201 = v120;
      if (!v120)
      {
        return 0;
      }

      v203[0] = 0;
      v202 = 0;
      if (!sub_10006281C(v73, v74, 1, 0, v203, &v202) && v202 == 8 && *v203[0])
      {
        if (*v203[0] == v120)
        {
          return 0;
        }

        result = sub_1000628C0(v73, v74, 1, &v201, 8);
        v121 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v121 = 22;
      }

      v122 = sub_10003FC54(*(*a9 + 392));
      v123 = *a9 + 4040;
      v124 = *(a1 + 12);
      v125 = *(a1 + 20);
      strerror(v121);
      sub_10003E64C(v122, "%s:%d: %s clone mapping <%llu, %llu>: failed to update attribution tag: %s (%d)\n", v126, v127, v128, v129, v130, v131, "jobj_refcnt_merge");
      return 0;
    }

LABEL_49:
    v176 = *a1 >> 60;
    sub_10003E5FC("%s:%d: don't know how to merge refcounts on objects of type %d\n");
    return 22;
  }

  v42 = *(a1 + 8);
  if (HIBYTE(v42) != 2)
  {
    sub_10003E5FC("%s:%d: don't know how to merge refcounts on objects of file info type %llu\n");
    return 22;
  }

  v43 = v42 & 0xFFFFFFFFFFFFFFLL;
  v44 = *(a5 + 12);
  if (v44 >= 2)
  {
    *(a5 + 12) = v44 | 1;
  }

  *(a9 + 16) = *a5;
  v45 = *a9;
  v46 = a5[1];
  v47 = *(a7 + 1);
  v48 = v46 + v47;
  if (__CFADD__(v46, v47))
  {
    v49 = (v47 >> 63) + 1;
  }

  else
  {
    v49 = v47 >> 63;
  }

  v50 = v49 << 63 >> 63;
  if (v50 != v49 || v50 < 0)
  {
    if (sub_100042AEC(*(v45 + 392)))
    {
      sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v45 + 4040), "physical size", "attr tag", v43, "physical size", v46, v47);
    }

    v48 = v46;
  }

  a5[1] = v48;
  v51 = *a9;
  v52 = a5[2];
  v53 = *(a7 + 2);
  v54 = v52 + v53;
  if (__CFADD__(v52, v53))
  {
    v55 = (v53 >> 63) + 1;
  }

  else
  {
    v55 = v53 >> 63;
  }

  v56 = v55 << 63 >> 63;
  if (v56 != v55 || v56 < 0)
  {
    if (sub_100042AEC(*(v51 + 392)))
    {
      sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v51 + 4040), "full clone size", "attr tag", v43, "full clone size", v52, v53);
    }

    v54 = v52;
  }

  a5[2] = v54;
  v57 = *a9;
  v58 = *a5;
  v59 = *a7;
  v60 = *a5 + v59;
  if (__CFADD__(*a5, v59))
  {
    v61 = (v59 >> 63) + 1;
  }

  else
  {
    v61 = v59 >> 63;
  }

  v62 = v61 << 63 >> 63;
  if (v62 != v61 || v62 < 0)
  {
    if (sub_100042AEC(*(v57 + 392)))
    {
      sub_10003E5FC("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v57 + 4040), "total_count", "attr tag", v43, "total_count", v58, v59);
    }

    v60 = v58;
  }

  result = 0;
  *a5 = v60;
  return result;
}

uint64_t sub_100030D10(uint64_t a1, int a2, int a3)
{
  if (a2 >= 0x10)
  {
    if ((*(*(a1 + 376) + 57) & 2) == 0)
    {
      sub_10003E5FC("%s:%d: %s expanded obj type %hhu found on unsupported volume\n", "match_jobj_expanded_type_to_tree_type", 4205, (a1 + 4040), a2);
      return 0;
    }

    if ((a2 & 0xFC) == 0x10)
    {
      if (sub_100018FAC(a1))
      {
        return 8;
      }

      else
      {
        return 1;
      }
    }

    sub_10003E5AC("%s:%d: %s Warning: attempting to place unknown expanded type %hhu into fsroot.\n", "match_jobj_expanded_type_to_tree_type", 4226, (a1 + 4040), a2);
    return 1;
  }

  v4 = 3;
  if (a2 <= 5)
  {
    if (a2 == 1)
    {
      return v4;
    }

    if (a2 == 2)
    {
      return 2;
    }

    return a3;
  }

  if ((a2 - 6) < 2)
  {
    goto LABEL_18;
  }

  if (a2 != 8)
  {
    if (a2 == 11)
    {
      return v4;
    }

    return a3;
  }

  if ((*(*(a1 + 376) + 56) & 0x20) == 0)
  {
LABEL_18:
    if (a3 == 100)
    {
      return 1;
    }

    if (a3 == 101)
    {
      if ((*(*(a1 + 376) + 57) & 1) == 0)
      {
        panic("Requested forced secondary_fs_root but the tree is missing\n");
      }
    }

    else
    {
      if ((sub_100018FAC(a1) & 1) == 0)
      {
        return a3;
      }

      if (a3 != 1)
      {
        panic("type = %u, req_tree != fs_root\n", a2);
      }
    }

    return 8;
  }

  if (a3 != 1)
  {
    panic("sealed, fext, req_tree != fs_root");
  }

  return 5;
}

uint64_t sub_100030EB4(uint64_t a1, int a2, unsigned __int8 *a3, unint64_t a4)
{
  v7 = sub_100030D10(a1, *a3, a2);
  if (v7 != 5)
  {
    v10 = v7;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0;
    v9 = sub_10002F2B4(a1, v7, a4, *(a1 + 440), &v16);
    if (v9)
    {
      return v9;
    }

    v11 = a3[1];
    if ((v11 - 1) >= 2)
    {
      if (v11 != 4)
      {
        sub_10003E5FC("%s:%d: %s X %d\n", "insert_jobj", 4331, (a1 + 4040), v11);
        v9 = 22;
LABEL_13:
        sub_100046D50(v16);
        return v9;
      }

      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v13 = sub_100031058(a1, a3, v10, &v15, "addition");
    if (v13 || (v13 = sub_10002E668(a1, v16, a3, a4, v12), v13))
    {
      v9 = v13;
    }

    else
    {
      sub_100031100(a1, v10, v16, a3, a4, v12);
      v9 = 0;
      if (*a3 == 3)
      {
        *(a3 + 14) &= 0xFFFFFFFFFBFBFFFFLL;
      }
    }

    goto LABEL_13;
  }

  v8 = sub_100003408(a1, a4, a3);
  v9 = v8;
  if (v8)
  {
    sub_10003E5FC("%s:%d: %s failed to insert fext in fext_tree: %d\n", "insert_jobj", 4293, (a1 + 4040), v8);
  }

  return v9;
}

uint64_t sub_100031058(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, const char *a5)
{
  if (*a2 == 3)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;
  v6 = *(a2 + 8);
  if ((~v6 & 0xFFFFFFFFFFF0000) != 0 && (v5 & 0xFFFFFFFFFFF0000) != 0xFFFFFFFFFFF0000)
  {
    return 0;
  }

  v8 = *(a1 + 1108);
  if (v8)
  {
    return 0;
  }

  if (a3 == 1 && *(a1 + 3584))
  {
    sub_10003E5FC("%s:%d: %s Preventing %s of objects to synthetic folder (id %lld, parent %lld)\n", "prevent_synthetic_object_operation", 4171, (a1 + 4040), a5, v6, v5);
    return 45;
  }

  return v8;
}

void sub_100031100(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, unint64_t a5, int a6)
{
  if (*(a4 + 8) == 2)
  {
    v15[7] = v6;
    v15[8] = v7;
    if (!*(a1 + 1108) && a2 == 1)
    {
      if (*(a1 + 3584))
      {
        v15[0] = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_10002F2B4(a1, 4, a5, *(a1 + 440), v15))
        {
          if (v15[0] != a3)
          {
            v13 = sub_10002E668(a1, v15[0], a4, a5, a6);
            if (v13)
            {
              v14 = v13;
              if (sub_100042AEC(*(a1 + 392)))
              {
                sub_10003E5FC("%s:%d: %s Shadow create_or_modify_jobj(jobj %p id %lld xid %lld op %d) failed with error %d\n", "duplicate_jobj_op_to_shadow_fs_root", 4191, (a1 + 4040), a4, *(a4 + 8), a5, a6, v14);
              }
            }
          }

          sub_100046D50(v15[0]);
        }
      }
    }
  }
}

uint64_t sub_100031204(uint64_t a1, int a2, unsigned __int8 *a3, unint64_t a4)
{
  v7 = sub_100030D10(a1, *a3, a2);
  if (v7 == 5)
  {
    v8 = sub_100003484(a1, a4, 0, a3);
    v9 = v8;
    if (v8)
    {
      sub_10003E5FC("%s:%d: %s fext_tree_update returned %d\n", "update_jobj", 4385, (a1 + 4040), v8);
    }
  }

  else
  {
    v10 = v7;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0;
    v9 = sub_10002F2B4(a1, v7, a4, *(a1 + 440), &v14);
    if (!v9)
    {
      v11 = sub_100031058(a1, a3, v10, &v13, "modification");
      if (v11 || (v11 = sub_10002E668(a1, v14, a3, a4, 2), v11))
      {
        v9 = v11;
      }

      else
      {
        sub_100031100(a1, v10, v14, a3, a4, 2);
        v9 = 0;
        if (*a3 == 3)
        {
          *(a3 + 14) &= 0xFFFFFFFFFBFBFFFFLL;
        }
      }

      sub_100046D50(v14);
    }
  }

  return v9;
}

uint64_t sub_10003135C(uint64_t a1, int a2, unsigned __int8 *a3, unint64_t a4)
{
  v7 = sub_100030D10(a1, *a3, a2);
  if (v7 == 5)
  {
    v8 = sub_100003530(a1, a4, *(a3 + 1), *(a3 + 2));
    v9 = v8;
    if (v8)
    {
      sub_10003E5FC("%s:%d: %s fext_tree_remove returned %d\n", "remove_jobj", 4462, (a1 + 4040), v8);
    }
  }

  else
  {
    v10 = v7;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0;
    v9 = sub_10002F2B4(a1, v7, a4, *(a1 + 440), &v14);
    if (!v9)
    {
      v11 = sub_100031058(a1, a3, v10, &v13, "removal");
      if (v11)
      {
        v9 = v11;
      }

      else
      {
        v9 = sub_10002E668(a1, v14, a3, a4, 4);
        if (!v9)
        {
          sub_100031100(a1, v10, v14, a3, a4, 4);
        }
      }

      sub_100046D50(v14);
    }
  }

  return v9;
}

unsigned __int16 *sub_10003148C(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  if (sub_10002DE7C(a1, a2, a3, a4, a5))
  {
    return 0;
  }

  v12 = *a2 >> 60;
  LODWORD(v13) = 40;
  switch(v12)
  {
    case 1:
      if (!a4)
      {
        return 0;
      }

      v14 = a4[24] + 80;
      goto LABEL_32;
    case 2:
      goto LABEL_36;
    case 3:
      LODWORD(v13) = 648;
      goto LABEL_36;
    case 4:
      if (!a4)
      {
        return 0;
      }

      v14 = *(a2 + 8) + a4[1] + 24;
      goto LABEL_32;
    case 5:
      if (!a4)
      {
        return 0;
      }

      v16 = a4[4];
      goto LABEL_19;
    case 6:
    case 12:
      LODWORD(v13) = 24;
      goto LABEL_36;
    case 7:
      if (!a4)
      {
        return 0;
      }

      if (a4[2] == 6)
      {
        v16 = HIBYTE(a4[11]) + a4[11];
      }

      else
      {
        v16 = a4[11];
      }

LABEL_19:
      v14 = v16 + 40;
      goto LABEL_32;
    case 8:
      LODWORD(v13) = 56;
      goto LABEL_36;
    case 9:
      if ((*(*(a1 + 376) + 56) & 9) != 0)
      {
        LODWORD(v13) = (*(a2 + 8) & 0x3FF) + 72;
        goto LABEL_36;
      }

      v14 = *(a2 + 8) + 72;
LABEL_32:
      LODWORD(v13) = v14;
      if (v14 >> 16)
      {
        v24 = 1;
      }

      else
      {
        v24 = v14 == 0;
      }

      if (!v24)
      {
        goto LABEL_36;
      }

      return 0;
    case 10:
      LODWORD(v13) = 96;
      goto LABEL_36;
    case 11:
      v14 = *(a2 + 8) + 32;
      goto LABEL_32;
    case 13:
      if (!a4)
      {
        return 0;
      }

      v15 = *(a2 + 15);
      if (v15 == 2)
      {
        LODWORD(v13) = 80;
      }

      else
      {
        if (v15 != 1)
        {
          return 0;
        }

        LODWORD(v13) = *(a4 + 2) + 32;
      }

      goto LABEL_36;
    case 14:
      if ((*(a2 + 8) & 0xFC) != 0x10)
      {
        v17 = sub_10003FC54(*(a1 + 392));
        sub_10003E64C(v17, "%s:%d: %s *** unknown expanded obj type %hhu\n", v18, v19, v20, v21, v22, v23, "jobj_size_for_large_key_val");
        return 0;
      }

      v13 = (0x48006000200050uLL >> (16 * (*(a2 + 8) & 0xFu))) & 0x78;
LABEL_36:
      if (v12 == 14)
      {
        LODWORD(v25) = *(a2 + 8);
        if (v25 <= 0xF)
        {
          v73 = *(a2 + 8);
          sub_10003E5FC("%s:%d: unknown expanded type (%hhu) on record (%u)\n");
          return 0;
        }
      }

      else
      {
        v25 = *a2 >> 60;
      }

      switch(v25)
      {
        case 1:
          v10 = sub_10003FA58(1uLL, 0x50uLL, 0x10100406569770FuLL);
          if (!v10)
          {
            return v10;
          }

          v32 = sub_10003FA58(1uLL, v13 - 80, 0xDA2D0A4CuLL);
          *(v10 + 9) = v32;
          if (v32)
          {
            goto LABEL_73;
          }

          v33 = v10;
          v34 = 80;
          goto LABEL_66;
        case 2:
          v26 = 0x10000407607B2BCLL;
          v27 = 40;
          goto LABEL_71;
        case 3:
          v35 = sub_10003FA04(2u);
          goto LABEL_72;
        case 4:
          v29 = v13;
          v30 = -753538664;
          goto LABEL_59;
        case 5:
          v29 = v13;
          v30 = -2067986874;
          goto LABEL_59;
        case 6:
          v31 = 887226456;
          goto LABEL_51;
        case 7:
          v29 = v13;
          v30 = -1260340143;
          goto LABEL_59;
        case 8:
          v26 = 0x1000040C6EC63FFLL;
          v27 = 56;
          goto LABEL_71;
        case 9:
          v10 = sub_10003FA58(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
          if (!v10)
          {
            return v10;
          }

          v37 = sub_10003FB98(v13 - 72, 0xEA9F5E2EuLL);
          *(v10 + 8) = v37;
          if (v37)
          {
            goto LABEL_73;
          }

          v33 = v10;
          v34 = 72;
LABEL_66:
          sub_10003FB5C(v33, v34);
          return 0;
        case 10:
        case 18:
          v26 = 0x10A004019B037CALL;
          v27 = 96;
          goto LABEL_71;
        case 11:
          v29 = v13;
          v30 = 173046394;
          goto LABEL_59;
        case 12:
          v31 = -753538664;
LABEL_51:
          v26 = v31 | 0x100004000000000;
          v27 = 24;
          goto LABEL_71;
        case 13:
          v28 = HIBYTE(*(a2 + 8));
          if (v28 == 2)
          {
            v36 = 1202085462;
LABEL_70:
            v26 = v36 | 0x10A004000000000;
            v27 = 80;
LABEL_71:
            v35 = sub_10003FA58(1uLL, v27, v26);
          }

          else
          {
            if (v28 != 1)
            {
              v75 = HIBYTE(*(a2 + 8));
              sub_10003E5FC("%s:%d: *** Unknown file info type %llu\n");
              return 0;
            }

            v29 = v13;
            v30 = 130634920;
LABEL_59:
            v35 = sub_10003FB98(v29, v30 | 0x100004000000000);
          }

LABEL_72:
          v10 = v35;
          if (!v35)
          {
            return v10;
          }

LABEL_73:
          v38 = *a2;
          v39 = *a2 & 0xFFFFFFFFFFFFFFFLL;
          *(v10 + 1) = v39;
          v38 >>= 60;
          *v10 = v38;
          *(v10 + 1) = 1;
          v10[1] = v13;
          switch(v38)
          {
            case 1:
              *(v10 + 1) = *a4;
              *(v10 + 2) = *(a4 + 1);
              *(v10 + 6) = *(a4 + 4);
              *(v10 + 7) = *(a4 + 5);
              v40 = a4[24];
              v10[32] = v40;
              v41 = *(v10 + 9);
              v42 = (a4 + 25);
              goto LABEL_78;
            case 2:
              v52 = *(a4 + 1);
              v53 = *a4 & 0xFFFFFFFFFFFFFFFLL;
              *(v10 + 1) = *a4 >> 60;
              *(v10 + 8) = *(a4 + 4);
              *(v10 + 2) = v53;
              *(v10 + 3) = v52;
              return v10;
            case 3:
              *(v10 + 2) = *a4;
              *(v10 + 3) = *(a4 + 1);
              *(v10 + 4) = *(a4 + 2);
              *(v10 + 5) = *(a4 + 3);
              *(v10 + 6) = *(a4 + 4);
              *(v10 + 7) = *(a4 + 5);
              *(v10 + 18) = *(a4 + 14);
              *(v10 + 8) = *(a4 + 6);
              *(v10 + 19) = *(a4 + 15);
              *(v10 + 20) = *(a4 + 16);
              *(v10 + 21) = *(a4 + 17);
              *(v10 + 22) = *(a4 + 18);
              *(v10 + 23) = *(a4 + 19);
              v10[48] = a4[40];
              v10[49] = a4[41];
              *(v10 + 13) = *(a4 + 42);
              if (a5 < 0x5D)
              {
                return v10;
              }

              if (sub_1000626B0(v10 + 204, a4 + 46, a5 - 92))
              {
                v74 = *(v10 + 1);
                sub_10003E50C("%s:%d: failed to init extended fields on inode %lld from blob (xfret %d).\n");
                return v10;
              }

              v63 = v10[204];
              if (!v10[204])
              {
                return v10;
              }

              v64 = 0;
              v65 = (*(v10 + 52) + 2);
              break;
            case 4:
              v50 = *(a2 + 8);
              v10[10] = v50;
              strlcpy(v10 + 24, (a2 + 10), v50);
              *(v10 + 4) = *a4;
              v47 = a4[1];
              v10[11] = v47;
              v48 = v10 + v10[10] + 24;
              v49 = a4 + 2;
              goto LABEL_98;
            case 5:
              v44 = *a4;
              *(v10 + 2) = *(a2 + 8);
              *(v10 + 3) = v44;
              v40 = a4[4];
              v10[16] = v40;
              v41 = (v10 + 17);
              v42 = (a4 + 5);
LABEL_78:
              strlcpy(v41, v42, v40);
              return v10;
            case 6:
              *(v10 + 4) = *a4;
              return v10;
            case 7:
              *(v10 + 4) = *a4;
              LODWORD(v55) = a4[11];
              v57 = a4[2];
              v56 = a4 + 2;
              if (v57 == 6)
              {
                v55 = (v55 >> 8) + v55;
              }

              else
              {
                v55 = v55;
              }

              v48 = (v10 + 10);
              v47 = v55 + 20;
              v49 = v56;
              goto LABEL_98;
            case 8:
              *(v10 + 2) = *(a2 + 8);
              v51 = *a4;
              *(v10 + 5) = *a4 & 0xFFFFFFFFFFFFFFLL;
              *(v10 + 12) = *(a4 + 4);
              *(v10 + 48) = HIBYTE(v51);
              return v10;
            case 9:
              if ((*(*(a1 + 376) + 56) & 9) != 0)
              {
                v58 = *(a2 + 8);
                *(v10 + 14) = v58 >> 10;
                v59 = v58 & 0x3FF;
                v60 = 12;
              }

              else
              {
                *(v10 + 14) = 0;
                v59 = *(a2 + 8);
                v60 = 10;
              }

              v10[31] = v59;
              strlcpy(*(v10 + 8), (a2 + v60), v59);
              *(v10 + 2) = *a4;
              *(v10 + 3) = *(a4 + 1);
              v10[30] = a4[8];
              if (a5 < 0x13)
              {
                sub_100062624((v10 + 16), 0);
              }

              else if (sub_1000626B0(v10 + 16, a4 + 9, a5 - 18))
              {
                v76 = *(v10 + 1);
                sub_10003E50C("%s:%d: failed to init extended fields on drec %lld from blob.\n");
              }

              return v10;
            case 10:
              *(v10 + 12) = *a4;
              *(v10 + 3) = vextq_s8(*(a4 + 1), *(a4 + 1), 8uLL);
              return v10;
            case 11:
              v43 = *(a2 + 8);
              v10[12] = v43;
              strlcpy(v10 + 26, (a2 + 10), v43);
              goto LABEL_76;
            case 12:
LABEL_76:
              *(v10 + 2) = *a4;
              return v10;
            case 13:
              v45 = *(a2 + 8);
              *(v10 + 16) = HIBYTE(v45);
              *(&v46 + 1) = *(a2 + 8);
              *&v46 = v45;
              *(v10 + 2) = v46 >> 56;
              if (HIBYTE(v45) == 2)
              {
                *(v10 + 3) = *a4;
                *(v10 + 4) = *(a4 + 1);
                *(v10 + 5) = *(a4 + 2);
                v10[24] = a4[12];
                if (a5 < 0x1B)
                {
                  sub_10003E5FC("%s:%d: %s s_hash <%llu> finfo attribution tag value <%zu> is less than sizeof(j_file_attribution_tag_val_t) <%lu\n");
                  return v10;
                }

                v61 = sub_1000626B0(v10 + 28, a4 + 13, a5 - 26);
                if (v61)
                {
                  v62 = *(v10 + 1);
                  strerror(v61);
                  sub_10003E50C("%s:%d: failed to init extended fields on attribution tag record with objid <%lld> from blob due to error <%d> %s\n");
                  return v10;
                }

                v67 = v10[28];
                if (v10[28])
                {
                  v68 = 0;
                  for (i = (*(v10 + 8) + 2); ; i += 2)
                  {
                    v70 = *i;
                    if (*(i - 2) == 1)
                    {
                      break;
                    }

                    v68 += (v70 + 7) & 0x1FFF8;
                    if (!--v67)
                    {
                      return v10;
                    }
                  }

                  if (v70 > 0)
                  {
                    v71 = *(v10 + 9) + (v68 + v70);
                    goto LABEL_126;
                  }

                  v77 = *(v10 + 2) >> 8;
                  sub_10003E5FC("%s:%d: %s size (%d) of FILE_INFO_TAG_EXT_TYPE_SIGNING_ID in attribution tag record with s_hash <%llu> <= 0 \n");
                }
              }

              else if (HIBYTE(v45) == 1)
              {
                v10[12] = *a4;
                v47 = *(a4 + 2);
                *(v10 + 26) = v47;
                v48 = v10 + 27;
                v49 = (a4 + 3);
LABEL_98:
                memcpy(v48, v49, v47);
              }

              return v10;
            case 14:
              if (a3 < 0xC)
              {
                goto LABEL_93;
              }

              if (sub_100031F38(a1, v10, a2, a4, a5))
              {
                return v10;
              }

              v39 = *(v10 + 1);
LABEL_93:
              v54 = sub_10003E5FC("%s:%d: %s cannot translate key-val (%llu) into valid jobj\n", "key_val_to_jobj", 4935, (a1 + 4040), v39);
              sub_10002CA94(v54, v10);
              return 0;
            default:
              return v10;
          }

          break;
        case 16:
          v36 = -624060581;
          goto LABEL_70;
        case 17:
          v26 = 0x100004089CA3EB1;
          v27 = 32;
          goto LABEL_71;
        case 19:
          v26 = 0x10A0040D41B49CCLL;
          v27 = 72;
          goto LABEL_71;
        default:
          sub_10003E5FC("%s:%d: *** Can't allocate unknown obj type %d\n");
          return 0;
      }

      break;
    default:
      v72 = *a2 >> 60;
      sub_10003E5FC("%s:%d: *** unknown obj type %d\n");
      return 0;
  }

  while (1)
  {
    v66 = *v65;
    if (*(v65 - 2) != 4)
    {
      v66 = (v66 + 7) & 0x1FFF8;
      goto LABEL_116;
    }

    if (*v65)
    {
      break;
    }

LABEL_116:
    v65 += 2;
    v64 += v66;
    if (!--v63)
    {
      return v10;
    }
  }

  v71 = *(v10 + 53) + (v64 + v66);
LABEL_126:
  *(v71 - 1) = 0;
  return v10;
}

void *sub_100031F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v5 = *(a3 + 8);
  if (v5 <= 0xF)
  {
    sub_10003E5FC("%s:%d: %s unknown expanded type (%hhu) on record (%u)\n", "large_key_val_to_jobj", 4506, (a1 + 4040), *(a3 + 8), *a3 >> 60);
    return 0;
  }

  v6 = a2;
  *a2 = v5;
  if (v5 <= 17)
  {
    if (v5 != 16)
    {
      v7 = *a4;
      *(a2 + 16) = *(a3 + 12);
      *(a2 + 24) = v7;
      return v6;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4;
    *(a2 + 40) = a4[1];
    *(a2 + 48) = *(a4 + 4);
    *(a2 + 52) = *(a4 + 5);
    if (a5 >= 0x19)
    {
      if (sub_1000626B0((a2 + 56), a4 + 12, a5 - 24))
      {
        v11 = v6[1];
        sub_10003E5FC("%s:%d: %s failed to init extended fields on purgeable %llu from blob\n");
      }

      return v6;
    }

    v8 = a2 + 56;
LABEL_20:
    sub_100062624(v8, 0);
    return v6;
  }

  if (v5 == 18)
  {
    *(a2 + 16) = a4[3];
    *(a2 + 24) = *a4;
    *(a2 + 32) = a4[1];
    *(a2 + 40) = a4[2];
    *(a2 + 56) = a4[4];
    *(a2 + 48) = a4[5];
    *(a2 + 92) = *(a4 + 12);
    if (a5 < 0x35)
    {
      v8 = a2 + 64;
      goto LABEL_20;
    }

    if (sub_1000626B0((a2 + 64), a4 + 26, a5 - 52))
    {
      v12 = v6[1];
      sub_10003E5FC("%s:%d: %s failed to init extended fields on dir-stats %llu from blob\n");
    }
  }

  else
  {
    if (v5 != 19)
    {
      return v6;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4 & 0xFFFFFFFFFFFFFFLL;
    *(a2 + 40) = *(a4 + 7);
    if (a5 < 9)
    {
      v8 = a2 + 48;
      goto LABEL_20;
    }

    if (sub_1000626B0((a2 + 48), a4 + 4, a5 - 8))
    {
      v10 = v6[2];
      v13 = v6[3];
      sub_10003E5FC("%s:%d: %s failed to init extended fields on clone mapping <%llu/%llu> from blob\n");
    }
  }

  return v6;
}

uint64_t sub_100032160(uint64_t a1, int a2, uint64_t *a3, unsigned __int8 *a4, unint64_t a5, unsigned __int16 **a6)
{
  v11 = sub_100030D10(a1, *a4, a2);
  v12 = sub_10003FA04(3u);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  v18 = 832;
  v19 = 3808;
  sub_10002CF30(a1, a4, v12, &v18);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v14 = sub_10002F2B4(a1, v11, 0, a5, &v17);
  if (v14)
  {
    v15 = v14;
LABEL_6:
    sub_10003FB10(v13, 3u);
    return v15;
  }

  v15 = sub_100022D54(v17, a5, v13, &v18, 0x340u, (v13 + 832), &v19, 0, 0, a3);
  sub_100046D50(v17);
  if (v15)
  {
    goto LABEL_6;
  }

  *a6 = sub_10003148C(a1, v13, v18, (v13 + 832), v19);
  sub_10003FB10(v13, 3u);
  if (*a6)
  {
    return 0;
  }

  else
  {
    return sub_1000048F4(*(a1 + 392));
  }
}

uint64_t sub_1000322C0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, int a6)
{
  if ((*(*(a1 + 376) + 56) & 0x20) != 0)
  {
    if (a6)
    {

      return sub_1000036FC(a1, a2, a4, a5);
    }

    else
    {

      return sub_1000035B0(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (sub_100018FAC(a1))
    {
      v12 = 8;
    }

    else
    {
      v12 = 1;
    }

    v19 = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 16;
    v25 = 24;
    v22 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
    v23 = a3;
    v13 = sub_10002F2B4(a1, v12, 0, *(a1 + 440), &v19);
    if (!v13)
    {
      if (a3 != -2 && a6 == 1)
      {
        panic("invalid offset (%llu) for last fext lookup\n", a3);
      }

      v14 = sub_100022D54(v19, *(a1 + 440), &v22, &v24, 0x10u, &v20, &v25, 1u, 0, a4);
      if (v14 == 34)
      {
        v13 = 2;
      }

      else
      {
        v13 = v14;
      }

      sub_100046D50(v19);
      if (!v13)
      {
        if (v22 == (a2 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000) && ((v15 = HIBYTE(v20), v16 = v20 & 0xFFFFFFFFFFFFFFLL, v17 = v23, a6) || v23 == a3 || v23 + v16 > a3))
        {
          v13 = 0;
          *a5 = 3670280;
          *(a5 + 8) = a2 & 0xFFFFFFFFFFFFFFFLL;
          *(a5 + 16) = v17;
          *(a5 + 40) = v16;
          *(a5 + 24) = v21;
          *(a5 + 48) = v15;
        }

        else
        {
          return 2;
        }
      }
    }

    return v13;
  }
}

uint64_t sub_1000324BC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if ((*(*(a1 + 376) + 56) & 0x20) != 0)
  {
    if (a2)
    {
      v7 = (a2 + 336);
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_100003484(a1, a4, v7, a3);
    v9 = v8;
    if (v8)
    {
      sub_10003E5FC("%s:%d: %s fext_tree_update returned %d\n", "update_file_extent", 5266, (a1 + 4040), v8);
    }

    return v9;
  }

  else
  {
    a3[1] = 2;

    return sub_100031204(a1, 1, a3, a4);
  }
}

uint64_t sub_100032574(uint64_t a1, unsigned int a2)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = a2;
  *(a1 + 92) = a2;
  v5 = sub_10003FA58(a2, 0x10uLL, 0x1000040451B5BE8uLL);
  *a1 = v5;
  if (v5)
  {
    v6 = (a2 + 63) >> 6;
    *(a1 + 88) = v6;
    v7 = sub_10003FA58(v6, 8uLL, 0x100004000313F17uLL);
    *(a1 + 72) = v7;
    if (v7)
    {
      v8 = sub_10003FA58(*(a1 + 88), 8uLL, 0x100004000313F17uLL);
      *(a1 + 80) = v8;
      if (v8)
      {
        sub_10003E3BC((a1 + 8));
        return 0;
      }

      sub_10003FB5C(*a1, 16 * v4);
      v10 = *(a1 + 72);
      v11 = 8 * *(a1 + 88);
    }

    else
    {
      v10 = *a1;
      v11 = 16 * v4;
    }

    sub_10003FB5C(v10, v11);
  }

  return 12;
}

uint64_t sub_10003266C(uint64_t a1)
{
  sub_10003FB5C(*a1, 16 * *(a1 + 92));
  sub_10003FB5C(*(a1 + 72), 8 * *(a1 + 88));
  sub_10003FB5C(*(a1 + 80), 8 * *(a1 + 88));

  return j__pthread_mutex_destroy((a1 + 8));
}

uint64_t sub_1000326D0(uint64_t a1, atomic_ullong *a2, unint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  if (a3 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3 - 1;
  }

  v10 = a4 + 1;
  if (a4 == -1)
  {
    v11 = -1;
  }

  else
  {
    v11 = a4 + 1;
  }

  v32[0] = 0;
  v32[1] = 0;
  v12 = a3 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v13 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v25 = v10 - a3;
  while (1)
  {
    v30 = 20;
    v31 = 8;
    memset(v28, 170, sizeof(v28));
    v29 = 0;
    if (a6)
    {
      *(a6 + 76) &= 0xF8u;
    }

    if (!v9)
    {
      panic("apfs_lock_phys_range first_pbn 0, last_pbn 0x%llx\n", v11);
    }

    *a5 = 0;
    v29 = v12;
    result = sub_100022D54(a2, 0, &v29, &v31, 8u, v28, &v30, 2u, 0, v32);
    if (result != 2)
    {
      if (result)
      {
        goto LABEL_43;
      }

      v15 = v29;
      v16 = v29 & 0xFFFFFFFFFFFFFFFLL;
      v17 = (*v28 & 0xFFFFFFFFFFFFFFFLL) + (v29 & 0xFFFFFFFFFFFFFFFLL);
      if (v17 >= a3)
      {
        v18 = v17 - 1;
        if (v9 > v16 || v11 < v18)
        {
          goto LABEL_34;
        }

        if (a6)
        {
          *(a6 + 76) |= 1u;
          *a6 = v15;
          *(a6 + 16) = *v28;
          *(a6 + 32) = *&v28[16];
        }
      }
    }

    v29 = v13;
    result = sub_100022D54(a2, 0, &v29, &v31, v31, v28, &v30, 1u, 0, v32);
    if (result == 2)
    {
      break;
    }

    if (result)
    {
      goto LABEL_43;
    }

    v19 = v29;
    v16 = v29 & 0xFFFFFFFFFFFFFFFLL;
    v20 = (*v28 & 0xFFFFFFFFFFFFFFFLL) + (v29 & 0xFFFFFFFFFFFFFFFLL);
    if (v20 <= v10)
    {
      if (v16 == a3 && (*v28 & 0xFFFFFFFFFFFFFFFLL) == v25 && a6)
      {
        *(a6 + 76) |= 2u;
        *(a6 + 36) = *v28;
        *(a6 + 52) = *&v28[16];
      }

      break;
    }

    v18 = v20 - 1;
    if (v9 <= v16 && v11 >= v18)
    {
      if (!a6)
      {
        return 0;
      }

      v21 = *(a6 + 76) | 4;
LABEL_49:
      *(a6 + 8) = v19;
      *(a6 + 56) = *v28;
      *(a6 + 72) = *&v28[16];
      if ((v21 & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_42:
      v22 = 8 * ((*(a6 + 16) & 0xFFFFFFFFFFFFFFFLL) + (*a6 & 0xFFFFFFFFFFFFFFFLL) == a3);
      goto LABEL_51;
    }

LABEL_34:
    if (v9 >= v16)
    {
      v9 = v16;
    }

    if (v11 <= v18)
    {
      v11 = v18;
    }
  }

  v29 = v13;
  result = sub_100022D54(a2, 0, &v29, &v31, v31, v28, &v30, 4u, 0, v32);
  if (!result)
  {
    v19 = v29;
    if ((v29 & 0xFFFFFFFFFFFFFFFLL) != v10)
    {
      goto LABEL_40;
    }

    v18 = (*v28 & 0xFFFFFFFFFFFFFFFLL) + a4;
    v16 = v10;
    if (v9 <= v10 && v11 >= v18)
    {
      if (a6)
      {
        v21 = *(a6 + 76) | 4;
        *(a6 + 76) = v21;
        goto LABEL_49;
      }

      return 0;
    }

    goto LABEL_34;
  }

  if (result == 2)
  {
LABEL_40:
    if (!a6)
    {
      return 0;
    }

    v21 = *(a6 + 76);
    if (v21)
    {
      goto LABEL_42;
    }

LABEL_50:
    v22 = 0;
LABEL_51:
    v23 = v22 | v21 & 0xE7;
    if ((v21 & 4) != 0)
    {
      v24 = 16 * ((*(a6 + 8) & 0xFFFFFFFFFFFFFFFLL) == v10);
    }

    else
    {
      v24 = 0;
    }

    result = 0;
    *(a6 + 76) = v24 | v23;
    return result;
  }

LABEL_43:
  if (*a5 != -1)
  {
    *a5 = -1;
  }

  return result;
}

uint64_t sub_100032A20(uint64_t a1, uint64_t a2, atomic_ullong *a3, unint64_t a4, unint64_t a5, int a6, int a7, int a8, unint64_t a9, void *a10, char a11)
{
  v13 = a4;
  v79[0] = a7;
  memset(v76, 170, sizeof(v76));
  if (a6 != -1 && a10)
  {
    sub_10003E5FC("%s:%d: %s invalid ref count %d for non NULL zero ref tree\n");
    return 22;
  }

  if (!a5)
  {
    sub_10003E5FC("%s:%d: %s invalid zero len, paddr %llu\n");
    return 22;
  }

  v77 = 0xAAAAAAAAAAAAAAAALL;
  v78 = 0xAAAAAAAAAAAAAAAALL;
  v16 = a5 + a4;
  v73 = 0u;
  v74 = 0u;
  memset(v75, 0, 45);
  v17 = sub_1000326D0(a1, a3, a4, a5 + a4 - 1, v79, &v73);
  if (v17)
  {
    v18 = v17;
    sub_10003E5FC("%s:%d: %s Couldn't acquire lock on %llu-%llu, err=%d\n");
    return v18;
  }

  if ((BYTE12(v75[2]) & 2) != 0)
  {
    *v76 = *(v75 + 4);
    *&v76[16] = DWORD1(v75[1]);
    v23 = *(v75 + 4) >> 60;
    if (a8)
    {
      v23 = 1;
      v24 = a9;
    }

    else
    {
      v24 = *&v76[8];
    }

    v77 = v13 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v25 = a5 & 0xFFFFFFFFFFFFFFFLL | (v23 << 60);
    v26 = DWORD1(v75[1]) + a6;
    if (DWORD1(v75[1]) + a6)
    {
      if (v23 != 1 || (v26 & 0x80000000) == 0)
      {
        *&v68 = a5 & 0xFFFFFFFFFFFFFFFLL | (v23 << 60);
        *(&v68 + 1) = v24;
        LODWORD(v69) = DWORD1(v75[1]) + a6;
        v28 = sub_100033510(a1, a2, a3, v13 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000, &v68, &v73);
        v18 = v28;
        if ((a6 & 0x80000000) == 0 || v28)
        {
          return v18;
        }

        goto LABEL_37;
      }

      v27 = sub_1000229C0(a3, 0, &v77, 8u, a2);
      if (!v27)
      {
        sub_10003E5FC("%s:%d: %s Would have attempted to create an entry with kind == NEW and refcnt == %d! (flags=0x%x, existing val len_and_kind=0x%llx owning_obj_id=%llu refcnt=%d)\n", "apfs_update_phys_range", 6229, (a1 + 4040), v26, a8, *v76, *&v76[8], *&v76[16]);
        goto LABEL_36;
      }
    }

    else
    {
      v27 = sub_1000229C0(a3, 0, &v77, 8u, a2);
      if (!v27)
      {
        if ((a8 & 2) == 0)
        {
          v29 = sub_10003342C(a1, a2, v13, a5, v24, a10);
          if (v29)
          {
            v18 = v29;
            strerror(v29);
            sub_10003E5FC("%s:%d: %s apfs_free_data_blocks_if_needed(%llu,%llu) failed: %d %s\n");
            return v18;
          }
        }

LABEL_36:
        if ((a6 & 0x80000000) == 0)
        {
          return 0;
        }

LABEL_37:
        *&v68 = v25;
        *(&v68 + 1) = v24;
        LODWORD(v69) = v26;
LABEL_125:
        sub_100033828(a1, &v68);
        return 0;
      }
    }

    v18 = v27;
LABEL_29:
    sub_10003E5FC("%s:%d: %s tree_remove(%llu) failed\n");
    return v18;
  }

  v20 = a8;
  if (a8 & 1) != 0 || *(*(a1 + 376) + 216) || (*(*(a1 + 392) + 629))
  {
    v21 = 0;
    if (BYTE12(v75[2]))
    {
      goto LABEL_15;
    }

    goto LABEL_81;
  }

  v30 = v13;
  if (BYTE12(v75[2]))
  {
    v30 = (v74 & 0xFFFFFFFFFFFFFFFLL) + (v73 & 0xFFFFFFFFFFFFFFFLL);
  }

  v78 = v30 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v72 = 0xAAAAAAAAAAAAAAAALL;
  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70 = v31;
  v71 = v31;
  v68 = v31;
  v69 = v31;
  if (v30 >= v16)
  {
    goto LABEL_45;
  }

  sub_1000236D0(&v68, a3, 0, 0, &v78, 8, 8u, v76, 0x14u, 0);
  if (!v32)
  {
    while (!sub_100023848(&v68) && (v78 & 0xFFFFFFFFFFFFFFFLL) == v30)
    {
      v30 += *v76 & 0xFFFFFFFFFFFFFFFLL;
      v34 = sub_100023864(&v68);
      v33 = v30 < v16;
      if (v30 >= v16 || v34 != 0)
      {
        v18 = v34;
        goto LABEL_43;
      }
    }

    goto LABEL_55;
  }

  v18 = v32;
  v33 = 1;
LABEL_43:
  if ((v18 & 0xFFFFFFFD) == 0)
  {
    if (!v33)
    {
LABEL_45:
      v21 = 0;
      goto LABEL_46;
    }

LABEL_55:
    v36 = "reference";
    if (a6 < 1)
    {
      v36 = "dereference";
    }

    sub_10003E5FC("%s:%d: %s Attempted to %s range %llu+%llu but it isn't entirely there! (found gap at %llu, next range at %llu+%llu)\n", "apfs_update_phys_range", 6280, (a1 + 4040), v36, v13, a5, v30, v78 & 0xFFFFFFFFFFFFFFFLL, *v76 & 0xFFFFFFFFFFFFFFFLL);
    if (a6 >= 1)
    {
      v18 = 96;
    }

    else
    {
      v18 = 0;
    }

    if (a6 < 1 || a11)
    {
      return v18;
    }

    v21 = 1;
LABEL_46:
    v20 = a8;
    if (BYTE12(v75[2]))
    {
LABEL_15:
      if ((v73 & 0xFFFFFFFFFFFFFFFLL) >= v13 || ((v74 & 0xFFFFFFFFFFFFFFFLL) + (v73 & 0xFFFFFFFFFFFFFFFLL)) <= v13)
      {
        goto LABEL_81;
      }

      v77 = v73;
      v78 = v73;
      *v76 = v74;
      *&v76[16] = v75[0];
      *&v68 = v74 & 0xF000000000000000 | (v13 - v73) & 0xFFFFFFFFFFFFFFFLL;
      *(&v68 + 1) = *(&v74 + 1);
      LODWORD(v69) = v75[0];
      v22 = sub_100033510(a1, a2, a3, v73, &v68, &v73);
      if (v22)
      {
        return v22;
      }

      v37 = *v76 >> 60;
      if (v20)
      {
        v37 = 1;
        v38 = a9;
      }

      else
      {
        v38 = *&v76[8];
      }

      v77 = v13 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v39 = (v78 & 0xFFFFFFFFFFFFFFFLL) + (*v76 & 0xFFFFFFFFFFFFFFFLL);
      if (v16 < v39)
      {
        v39 = v16;
      }

      v61 = v38;
      v62 = (v39 - v13) & 0xFFFFFFFFFFFFFFFLL;
      v40 = v62 | (v37 << 60);
      v41 = v20;
      v42 = *&v76[16] + a6;
      if (*&v76[16] + a6)
      {
        if (v37 == 1 && v42 < 0)
        {
          sub_10003E5FC("%s:%d: %s Would have attempted to create an entry with kind == NEW and refcnt == %d! (flags=0x%x, existing val len_and_kind=0x%llx owning_obj_id=%llu refcnt=%d)\n", "apfs_update_phys_range", 6335, (a1 + 4040), *&v76[16] + a6, a8, *v76, *&v76[8], *&v76[16]);
        }

        else
        {
          *&v68 = v62 | (v37 << 60);
          *(&v68 + 1) = v38;
          LODWORD(v69) = *&v76[16] + a6;
          v22 = sub_100033510(a1, a2, a3, v13 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000, &v68, &v73);
          if (v22)
          {
            return v22;
          }
        }
      }

      else if ((v41 & 2) == 0)
      {
        v22 = sub_10003342C(a1, a2, v13 & 0xFFFFFFFFFFFFFFFLL, v62, v38, a10);
        if (v22)
        {
          return v22;
        }
      }

      if (a6 < 0)
      {
        *&v68 = v40;
        *(&v68 + 1) = v61;
        LODWORD(v69) = v42;
        sub_100033828(a1, &v68);
      }

      v43 = v77;
      if (v16 < (*v76 & 0xFFFFFFFFFFFFFFFLL) + (v78 & 0xFFFFFFFFFFFFFFFLL))
      {
        v77 = v16 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
        *&v68 = *v76 & 0xF000000000000000 | (v78 - v16 + *v76) & 0xFFFFFFFFFFFFFFFLL;
        *(&v68 + 1) = *&v76[8];
        LODWORD(v69) = *&v76[16];
        v22 = sub_100033510(a1, a2, a3, v77, &v68, &v73);
        if (v22)
        {
          return v22;
        }
      }

      v13 = (v43 & 0xFFFFFFFFFFFFFFFLL) + v62;
      v20 = a8;
      if (v13 < v16)
      {
        goto LABEL_81;
      }

      return 0;
    }

LABEL_81:
    v78 = v13 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    *&v44 = 0xAAAAAAAAAAAAAAAALL;
    *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66[0] = v44;
    v66[1] = v44;
    v66[2] = v44;
    v66[3] = v44;
    v67 = 0xAAAAAAAAAAAAAAAALL;
    sub_1000236D0(v66, a3, 0, 0, &v78, 8, 8u, v76, 0x14u, 0);
    v18 = v45;
    if ((v45 & 0xFFFFFFFD) == 0 && v13 < v16)
    {
      if ((v20 | v21))
      {
        v46 = 0x1000000000000000;
      }

      else
      {
        v46 = 0x2000000000000000;
      }

      v47 = -2;
      if (!v21)
      {
        v47 = -1;
      }

      if (v20)
      {
        v47 = a9;
      }

      *&v60 = v46;
      *(&v60 + 1) = v47;
      v59 = v16 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v63 = v16;
      while (!sub_100023848(v66) && (v78 & 0xFFFFFFFFFFFFFFFLL) < v16)
      {
        if (v13 < (v78 & 0xFFFFFFFFFFFFFFFLL))
        {
          v77 = v13 | 0x2000000000000000;
          v48 = (v78 - v13) & 0xFFFFFFFFFFFFFFFLL;
          v68 = v48 | v60;
          LODWORD(v69) = a6;
          v22 = sub_100033510(a1, a2, a3, v13 | 0x2000000000000000, &v68, &v73);
          if (v22)
          {
            return v22;
          }

          if (a6 < 0)
          {
            v68 = v48 | v60;
            LODWORD(v69) = a6;
            sub_100033828(a1, &v68);
          }

          v13 += v48;
        }

        v49 = *v76 >> 60;
        if (v20)
        {
          v49 = 1;
          v50 = a9;
        }

        else
        {
          v50 = *&v76[8];
        }

        v77 = v13 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
        if ((*v76 & 0xFFFFFFFFFFFFFFFLL) + v13 <= v16)
        {
          v51 = *v76 & 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = (v16 - v13) & 0xFFFFFFFFFFFFFFFLL;
        }

        v52 = *&v76[16] + a6;
        if (*&v76[16] + a6)
        {
          if (v49 == 1 && v52 < 0)
          {
            v53 = v51 | 0x1000000000000000;
            v54 = sub_1000229C0(a3, 0, &v77, 8u, a2);
            if (v54)
            {
              goto LABEL_128;
            }

            sub_10003E5FC("%s:%d: %s Would have attempted to create an entry with kind == NEW and refcnt == %d! (flags=0x%x, existing val len_and_kind=0x%llx owning_obj_id=%llu refcnt=%d)\n", "apfs_update_phys_range", 6487, (a1 + 4040), v52, a8, *v76, *&v76[8], *&v76[16]);
          }

          else
          {
            v53 = v51 | (v49 << 60);
            *&v68 = v53;
            *(&v68 + 1) = v50;
            LODWORD(v69) = *&v76[16] + a6;
            v22 = sub_100033510(a1, a2, a3, v13 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000, &v68, &v73);
            if (v22)
            {
              return v22;
            }
          }
        }

        else
        {
          v53 = v51 | (v49 << 60);
          v54 = sub_1000229C0(a3, 0, &v77, 8u, a2);
          if (v54)
          {
LABEL_128:
            v18 = v54;
            goto LABEL_29;
          }

          if ((a8 & 2) == 0)
          {
            v22 = sub_10003342C(a1, a2, v77 & 0xFFFFFFFFFFFFFFFLL, v51, v50, a10);
            if (v22)
            {
              return v22;
            }
          }
        }

        if (a6 < 0)
        {
          *&v68 = v53;
          *(&v68 + 1) = v50;
          LODWORD(v69) = v52;
          sub_100033828(a1, &v68);
        }

        v55 = *v76;
        v16 = v63;
        v20 = a8;
        if ((*v76 & 0xFFFFFFFFFFFFFFFLL) + v13 > v63)
        {
          v77 = v59;
          *&v68 = *v76 & 0xF000000000000000 | (v13 - v63 + *v76) & 0xFFFFFFFFFFFFFFFLL;
          *(&v68 + 1) = *&v76[8];
          LODWORD(v69) = *&v76[16];
          v22 = sub_100033510(a1, a2, a3, v59, &v68, &v73);
          if (v22)
          {
            return v22;
          }

          v55 = *v76;
        }

        v56 = v78;
        v57 = sub_100023864(v66);
        v18 = v57;
        if (v57)
        {
          strerror(v57);
          sub_10003E5FC("%s:%d: %s failed to get next physical extent, error %s(%d)\n");
          return v18;
        }

        v13 = (v55 & 0xFFFFFFFFFFFFFFFLL) + (v56 & 0xFFFFFFFFFFFFFFFLL);
        if (v13 >= v63)
        {
          return v18;
        }
      }

      v77 = v13 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v58 = (v16 - v13) & 0xFFFFFFFFFFFFFFFLL | v60;
      *&v68 = v58;
      *(&v68 + 1) = *(&v60 + 1);
      LODWORD(v69) = a6;
      v18 = sub_100033510(a1, a2, a3, v77, &v68, &v73);
      if (!v18 && a6 < 0)
      {
        *&v68 = v58;
        *(&v68 + 1) = *(&v60 + 1);
        LODWORD(v69) = a6;
        goto LABEL_125;
      }
    }
  }

  return v18;
}