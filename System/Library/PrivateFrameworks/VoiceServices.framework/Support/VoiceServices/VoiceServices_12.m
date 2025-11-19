uint64_t sub_1000811D4(uint64_t a1, uint64_t a2, int a3, char *a4, uint64_t a5, int a6, uint64_t a7)
{
  v14 = *(a1 + 104);
  if (v14)
  {

    return v14();
  }

  else
  {
    v16 = sub_1000CB75C(a4);
    v24 = sub_1000C9F54(2 * (v16 + 1), v17, v18, v19, v20, v21, v22, v23);
    v29 = 2 * (v16 + 1);
    memcpy(v24, a4, v29);
    v25 = v16 - a3;
    if (v16 >= a3)
    {
      LODWORD(v26) = 0;
      v27 = 2 * a3;
      v28 = v25 + 1;
      do
      {
        *&v24[v27] = 0;
        v26 = (*(a1 + 96))(a1, a2, 1, v24, a5 + 4 * v26, (a6 - v26), a7) + v26;
        if (v26 >= a6)
        {
          break;
        }

        *&v24[v27] = *&a4[v27];
        v27 += 2;
        --v28;
      }

      while (v28);
    }

    else
    {
      v26 = 0;
    }

    sub_1000CA03C(v24, v29);
    return v26;
  }
}

uint64_t sub_10008137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = (*(a1 + 264))();
  *a8 = v9;
  return 2 * (v9 == 0xFFFFFF);
}

uint64_t sub_1000813F4(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *sub_100081430(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_1001065A8)
  {
    return 0;
  }

  v8 = *(qword_1001065A8 + 3980);
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      return sub_1000857EC(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    return 0;
  }

  return sub_1000817B8(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100081464(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v11 = sub_1000C7B48(a2, "x");
  if (qword_1001065A8)
  {
    v12 = *(qword_1001065A8 + 3980);
    if (v12 == 2)
    {
      v13 = sub_1000817B8(a1, v11, a3, a4, v7, v8, v9, v10);
      goto LABEL_7;
    }

    if (v12 == 1)
    {
      v13 = sub_1000857EC(a1, v11, a3, a4, v7, v8, v9, v10);
LABEL_7:
      v14 = v13;
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_8:
  sub_100003974(v11);
  return v14;
}

uint64_t sub_100081514(uint64_t a1)
{
  v2 = *(a1 + 652);
  v3 = sub_1000BD7F4(*(a1 + 496), 1, v2, 0xFFFFFFFFLL);
  v4 = sub_1000BD7F4(*(a1 + 512), 2, v2, v3);
  v5 = *(a1 + 528);
  if (v5)
  {
    v4 = sub_1000BD7F4(v5, 1, v2, v4);
  }

  v6 = *(a1 + 560);
  if (v6 >= 1)
  {
    LODWORD(v4) = sub_1000BD7F4(*(a1 + 544), 2, v6, v4);
    v6 = *(a1 + 560);
  }

  v7 = sub_1000BD6C8(v6, 4, v4);
  v8 = sub_1000BD7F4(*(a1 + 568), 2, v2, v7);
  v9 = sub_1000BD7F4(*(a1 + 584), 1, *(a1 + 600), v8);
  v10 = *(a1 + 624);
  if (v10)
  {
    v11 = sub_10007799C(v10);
    v9 = sub_1000BD6C8(v11, 4, v9);
  }

  v12 = sub_1000BD6C8(*(a1 + 640), 2, v9);
  v13 = sub_1000BD6C8(*(a1 + 642), 2, v12);
  v14 = sub_1000BD6C8(*(a1 + 644), 2, v13);
  v15 = sub_1000BD6C8(*(a1 + 646), 2, v14);
  v16 = sub_1000BD6C8(*(a1 + 648), 4, v15);
  v17 = sub_1000BD6C8(*(a1 + 652), 4, v16);
  v18 = sub_1000BD6C8(*(a1 + 656), 4, v17);
  v19 = sub_1000BD6C8(*(a1 + 660), 4, v18);
  v20 = sub_1000BD6C8(*(a1 + 664), 4, v19);
  v21 = sub_1000BD6C8(*(a1 + 668), 4, v20);
  v22 = sub_1000BD6C8(*(a1 + 672), 4, v21);
  v23 = sub_1000BD6C8(*(a1 + 676), 4, v22);
  v24 = sub_1000BD520(a1 + 724, v23);
  v25 = sub_1000BD6C8(*(a1 + 732), 4, v24);
  v26 = sub_1000BD6C8(*(a1 + 736), 4, v25);
  v27 = sub_1000BD6C8(*(a1 + 740), 2, v26);
  v28 = sub_1000BD6C8(*(a1 + 744), 4, v27);
  v29 = sub_1000BD6C8(*(a1 + 748), 4, v28);
  v30 = sub_1000BD6C8(*(a1 + 752), 4, v29);
  v31 = sub_1000BD6C8(*(a1 + 756), 4, v30);
  v32 = sub_1000BD6C8(*(a1 + 784), 4, v31);
  v33 = sub_1000BD6C8(*(a1 + 788), 4, v32);
  v34 = sub_1000BD6C8(*(a1 + 792), 4, v33);
  v35 = sub_1000BD6C8(*(a1 + 796), 4, v34);
  v36 = sub_1000BD6C8(*(a1 + 800), 4, v35);
  v37 = *(a1 + 808);
  if (v37)
  {
    LODWORD(v36) = sub_1000BD7F4(v37, 1, *(a1 + 824), v36);
  }

  v38 = *(a1 + 824);

  return sub_1000BD6C8(v38, 4, v36);
}

uint64_t sub_1000817B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1000BBAE0(a1, "mwl", a2, a4, a5, a6, a7, a8);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = sub_1000C0034(864);
  v13 = v12;
  if (v12)
  {
    v31 = 0;
    v30 = 0;
    memcpy(v12, off_1000FD920, 0x1E0uLL);
    *(v13 + 480) = a3;
    *(v13 + 488) = a4;
    *(v13 + 856) = 1;
    v14 = (v13 + 560);
    if (!sub_1000BBD54(v11, (v13 + 560)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 600)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 604)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBDFC(v11, (v13 + 640)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBDFC(v11, (v13 + 642)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBDFC(v11, (v13 + 644)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBDFC(v11, (v13 + 646)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 648)))
    {
      goto LABEL_79;
    }

    v15 = (v13 + 652);
    if (!sub_1000BBD54(v11, (v13 + 652)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 656)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 660)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 664)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 668)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 672)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, &v31 + 4))
    {
      goto LABEL_79;
    }

    *(v13 + 676) = HIDWORD(v31);
    if (!sub_1000BBD54(v11, &v31 + 4))
    {
      goto LABEL_79;
    }

    *(v13 + 680) = HIDWORD(v31);
    *(v13 + 724) = 0;
    if (!sub_1000BBE54(v11, (v13 + 724), 8, 1))
    {
      goto LABEL_79;
    }

    *(v13 + 732) = sub_100020404((v13 + 724));
    if (!sub_1000BBD54(v11, &v31 + 4))
    {
      goto LABEL_79;
    }

    *(v13 + 736) = HIDWORD(v31);
    if (!sub_1000BBDFC(v11, (v13 + 740)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 744)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 748)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 752)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 756)))
    {
      goto LABEL_79;
    }

    if (!sub_1000BBD54(v11, (v13 + 760)))
    {
      goto LABEL_79;
    }

    v29 = 0;
    if (!sub_1000BC25C(v11, (v13 + 776), &v29))
    {
      goto LABEL_79;
    }

    *(v13 + 768) = *(v13 + 776);
    if (!sub_1000BBD54(v11, (v13 + 824)) || !sub_1000BBDFC(v11, (v13 + 828)))
    {
      goto LABEL_79;
    }

    if (*(v13 + 828) != -1)
    {
      v29 = 0;
      v16 = (v13 + 840);
      if (!sub_1000BBF0C(v11, 1, (v13 + 840), &v29))
      {
        goto LABEL_79;
      }

      if (*v16)
      {
        if (v29 != *v15)
        {
          goto LABEL_79;
        }

        *(v13 + 832) = *v16;
      }
    }

    v29 = 0;
    if (sub_1000BBF0C(v11, 1, (v13 + 504), &v29))
    {
      v17 = *(v13 + 504);
      if (v17)
      {
        if (v29 != *v15)
        {
          goto LABEL_79;
        }

        *(v13 + 496) = v17;
      }

      v29 = 0;
      v18 = (v13 + 520);
      if (sub_1000BBF0C(v11, 2, (v13 + 520), &v29))
      {
        if (*v18)
        {
          v19 = v29;
          if (v29 != *v15)
          {
            goto LABEL_79;
          }

          *(v13 + 512) = *v18;
        }

        else
        {
          v19 = *v15;
        }

        if (v19 >= 1 && *(v13 + 732))
        {
          v29 = 0;
          v20 = (v13 + 536);
          if (!sub_1000BBF0C(v11, 1, (v13 + 536), &v29))
          {
            goto LABEL_79;
          }

          if (*v20)
          {
            if (v29 != *v15)
            {
              goto LABEL_79;
            }

            *(v13 + 528) = *v20;
          }
        }

        if (*v14 >= 1)
        {
          v29 = 0;
          v21 = (v13 + 552);
          if (!sub_1000BBF0C(v11, 2, (v13 + 552), &v29))
          {
            goto LABEL_79;
          }

          if (*v21)
          {
            if (v29 != *v14)
            {
              goto LABEL_79;
            }

            *(v13 + 544) = *v21;
          }
        }

        v29 = 0;
        v22 = (v13 + 576);
        if (sub_1000BBF0C(v11, 2, (v13 + 576), &v29))
        {
          if (*v22)
          {
            if (v29 != *v15)
            {
              goto LABEL_79;
            }

            *(v13 + 568) = *v22;
          }

          v29 = 0;
          v23 = (v13 + 592);
          if (sub_1000BBF0C(v11, 1, (v13 + 592), &v29))
          {
            if (*v23)
            {
              if (v29 != *(v13 + 600))
              {
                goto LABEL_79;
              }

              *(v13 + 584) = *v23;
            }

            if (sub_1000BBD54(v11, &v31))
            {
              if (v31)
              {
                v29 = 0;
                v24 = (v13 + 616);
                if (!sub_1000BBF0C(v11, 4, (v13 + 616), &v29))
                {
                  goto LABEL_79;
                }

                if (*v24)
                {
                  if (v29 != *(v13 + 604) + 1)
                  {
                    goto LABEL_79;
                  }

                  *(v13 + 608) = *v24;
                }
              }

              if (sub_1000BBD54(v11, &v30))
              {
                if (!v30)
                {
                  goto LABEL_74;
                }

                v25 = sub_100077B08(v11);
                *(v13 + 632) = v25;
                if (v25)
                {
                  *(v13 + 624) = v25;
LABEL_74:
                  v29 = 0;
                  v26 = (v13 + 816);
                  if (sub_1000BBF0C(v11, 1, (v13 + 816), &v29))
                  {
                    if (!*v26)
                    {
LABEL_78:
                      sub_1000BBBC4(v11);
                      *(v13 + 784) = *(v13 + 656);
                      v27 = *(v13 + 652);
                      *(v13 + 800) = v27;
                      *(v13 + 848) = sub_10008B608(v27, *(v13 + 672), *(v13 + 642), *(v13 + 640), *(v13 + 624), *(v13 + 732), *(v13 + 676), (v13 + 724), a3, *(v13 + 828), *(v13 + 760));
                      return v13;
                    }

                    if (v29 == *(v13 + 824))
                    {
                      *(v13 + 808) = *v26;
                      goto LABEL_78;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_79:
    sub_1000BBBC4(v11);
    sub_100081D64(v13);
    return 0;
  }

  sub_1000BBBC4(v11);
  return v13;
}

uint64_t sub_100081D64(uint64_t a1)
{
  if (*(a1 + 856))
  {
    sub_1000BFEC4(*(a1 + 504));
    sub_1000BFEC4(*(a1 + 520));
    sub_1000BFEC4(*(a1 + 552));
    sub_1000BFEC4(*(a1 + 576));
    sub_1000BFEC4(*(a1 + 592));
    sub_1000BFEC4(*(a1 + 616));
    sub_1000BFEC4(*(a1 + 536));
    sub_100077390(*(a1 + 632));
    sub_1000BFEC4(*(a1 + 816));
    sub_1000BFEC4(*(a1 + 832));
    if (*(a1 + 776))
    {
      v2 = 8 * *(a1 + 640);
      do
      {
        sub_1000BFEC4(*(*(a1 + 776) + v2));
        v2 -= 8;
      }

      while (v2 != -8);
      sub_1000BFEC4(*(a1 + 776));
    }
  }

  sub_10008BB3C(*(a1 + 848));

  return sub_1000BFEC4(a1);
}

uint64_t sub_100081E40(uint64_t a1, __int16 *a2, unsigned __int16 *a3, int a4)
{
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &unk_1000F298E;
  }

  v8 = *(a1 + 676);
  v9 = (4 * sub_1000CB75C(a2) + 4);
  v17 = sub_1000C9F54(v9, v10, v11, v12, v13, v14, v15, v16);
  v25 = sub_1000C9F54(v9, v18, v19, v20, v21, v22, v23, v24);
  if (v8 == 4)
  {
    sub_1000BD0C0(3, a2, v9, v25);
  }

  else if (sub_1000BD0C0(v8, a2, v9, v25) == 2)
  {
    goto LABEL_12;
  }

  sub_100084C5C(v17, a2, *(a1 + 732), v8, 0, 0);
  v26 = sub_1000C7854(v17);
  if (*(a1 + 732))
  {
    v27 = sub_100084B10(a2);
  }

  else
  {
    v27 = 128;
  }

  v59 = v27;
  v28 = ((4 * sub_1000CB75C(v7)) | 1);
  v36 = sub_1000C9F54(v28, v29, v30, v31, v32, v33, v34, v35);
  if (sub_100084C5C(v36, v7, 0, *(a1 + 680), a1 + 684, 0) != 1)
  {
    v57 = a4;
    v58 = v7;
    v44 = v26 + 1;
    v45 = *(a1 + 652);
    v46 = v45 - 1;
    if (v45 >= 1)
    {
      v56 = v28;
      v47 = 0;
      do
      {
        v48 = (v47 + v46) >> 1;
        v49 = *(*(a1 + 568) + 2 * v48);
        if (sub_1000C7898((*(a1 + 584) + v49), v17, v44, v49) >= 0)
        {
          v46 = v48 - 1;
        }

        else
        {
          v47 = v48 + 1;
        }
      }

      while (v47 <= v46);
      v28 = v56;
      if (v47 < *(a1 + 652))
      {
        v50 = v44;
        v42 = v47;
        if (v59 == 16)
        {
          do
          {
            v51 = (*(a1 + 584) + *(*(a1 + 568) + 2 * v42));
            if (sub_1000C7A1C(v51, v17) > 0)
            {
              break;
            }

            v52 = &v51[v50];
            if (!sub_1000C7A1C(v52, v36))
            {
              if (!*(a1 + 732))
              {
                goto LABEL_40;
              }

              if (*(*(a1 + 528) + v42) == 16)
              {
                v53 = sub_1000C7854(v52);
                if (!sub_1000C7A1C(&v52[v53 + 1], v25))
                {
                  goto LABEL_40;
                }
              }
            }

            ++v42;
          }

          while (v42 < *(a1 + 652));
        }

        else
        {
          do
          {
            v54 = (*(a1 + 584) + *(*(a1 + 568) + 2 * v42));
            if (sub_1000C7A1C(v54, v17) > 0)
            {
              break;
            }

            if (!sub_1000C7A1C(&v54[v50], v36) && (!*(a1 + 732) || v59 == *(*(a1 + 528) + v42)))
            {
              goto LABEL_40;
            }

            ++v42;
          }

          while (v42 < *(a1 + 652));
        }
      }
    }

    v42 = 0xFFFFFFLL;
LABEL_40:
    v7 = v58;
    sub_1000CA03C(v36, v28);
    sub_1000CA03C(v25, v9);
    sub_1000CA03C(v17, v9);
    if (v57 || v42 != 0xFFFFFF)
    {
      return v42;
    }

    goto LABEL_42;
  }

  sub_1000CA03C(v36, v28);
LABEL_12:
  sub_1000CA03C(v25, v9);
  sub_1000CA03C(v17, v9);
  if (a4)
  {
    return 0xFFFFFFLL;
  }

LABEL_42:
  v55 = *(a1 + 848);

  return sub_10008BC1C(v55, a2, v7, v37, v38, v39, v40, v41);
}

uint64_t sub_1000821BC(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!(a5 | a4))
  {
    return 0;
  }

  v6 = a4;
  v10 = ((4 * sub_1000CB75C(a2)) | 1);
  v18 = sub_1000C9F54(v10, v11, v12, v13, v14, v15, v16, v17);
  if (sub_100084C5C(v18, a2, 0, *(a1 + 680), a1 + 684, 0) == 1)
  {
    sub_1000CA03C(v18, v10);
    v19 = *(a1 + 848);

    return sub_10008C168(v19, a2, a3, v6, a5);
  }

  v21 = sub_1000C7854(v18);
  v39 = a2;
  v41 = v10;
  if (!*(a1 + 608))
  {
    if (*(a1 + 652) >= 1)
    {
      v29 = 0;
      v30 = 0;
      while (1)
      {
        v31 = *(a1 + 584) + *(*(a1 + 568) + 2 * v29);
        v32 = sub_1000C7854(v31);
        if (!sub_1000C7898((v31 + v32 + 1), v18, v21 + 1, v31 + v32))
        {
          if (v30 >= v6)
          {
            v30 = (v30 + 1);
          }

          else
          {
            *(a3 + 4 * v30) = v29;
            v30 = (v30 + 1);
            if (!a5 && v30 == v6)
            {
LABEL_45:
              sub_1000CA03C(v18, v41);
              return v6;
            }
          }
        }

        if (++v29 >= *(a1 + 652))
        {
          goto LABEL_34;
        }
      }
    }

    goto LABEL_32;
  }

  v22 = *(a1 + 604);
  v23 = v22 - 1;
  if (v22 < 1)
  {
    goto LABEL_32;
  }

  v24 = a3;
  LODWORD(v25) = 0;
  do
  {
    v26 = (v23 + v25) >> 1;
    v27 = *(a1 + 584) + *(*(a1 + 568) + 2 * *(*(a1 + 608) + 4 * v26));
    v28 = sub_1000C7854(v27);
    if (sub_1000C7898((v27 + v28 + 1), v18, v21 + 1, v27 + v28) >= 0)
    {
      v23 = v26 - 1;
    }

    else
    {
      LODWORD(v25) = v26 + 1;
    }
  }

  while (v25 <= v23);
  a3 = v24;
  if (v25 >= *(a1 + 604))
  {
LABEL_32:
    v30 = 0;
    goto LABEL_34;
  }

  v25 = v25;
  if (a5)
  {
    v40 = v24;
    v30 = 0;
    do
    {
      v33 = *(*(a1 + 608) + 4 * v25 + 4 * v30);
      v34 = *(a1 + 584) + *(*(a1 + 568) + 2 * v33);
      v35 = sub_1000C7854(v34);
      if (sub_1000C7898((v34 + v35 + 1), v18, v21 + 1, v34 + v35))
      {
        break;
      }

      if (v30 < v6)
      {
        *(v40 + 4 * v30) = v33;
      }

      ++v30;
    }

    while (v25 + v30 < *(a1 + 604));
    a3 = v40;
  }

  else
  {
    v30 = 0;
    do
    {
      v36 = *(*(a1 + 608) + 4 * v25);
      v37 = *(a1 + 584) + *(*(a1 + 568) + 2 * v36);
      v38 = sub_1000C7854(v37);
      if (sub_1000C7898((v37 + v38 + 1), v18, v21 + 1, v37 + v38))
      {
        break;
      }

      if (v30 >= v6)
      {
        v30 = (v30 + 1);
      }

      else
      {
        *(a3 + 4 * v30) = v36;
        v30 = (v30 + 1);
        if (v30 == v6)
        {
          goto LABEL_45;
        }
      }

      ++v25;
    }

    while (v25 < *(a1 + 604));
  }

LABEL_34:
  sub_1000CA03C(v18, v41);
  if (a5 || v6 > v30)
  {
    return sub_10008C168(*(a1 + 848), v39, a3, (v6 - v30) & ~((v6 - v30) >> 31), a5) + v30;
  }

  else
  {
    return v30;
  }
}

void *sub_100082540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 784) + 1;
  if (*(a1 + 652) > a2)
  {
    v11 = *(a1 + 584);
    v12 = v11 + *(*(a1 + 568) + 2 * a2);
    v13 = *(a1 + 528);
    if (!v13)
    {
      goto LABEL_5;
    }

    v14 = *(v13 + a2);
    if (v14 == 16)
    {
      v19 = sub_1000C9F54(*(a1 + 784) + 1, a2, a3, v14, a5, a6, a7, a8);
      v20 = v12 + sub_1000C7854(v12) + 1;
      v21 = sub_1000C7854(v20);
      sub_1000C78DC(v19, (v20 + v21 + 1), v10);
      sub_1000BD16C(*(a1 + 676), v19, v10, a3);
      result = sub_1000CA03C(v19, v10);
      if (!a4)
      {
        return result;
      }
    }

    else
    {
      if (v14 == 128)
      {
LABEL_5:
        result = sub_1000BD16C(*(a1 + 676), (v11 + *(*(a1 + 568) + 2 * a2)), v10, a3);
        if (!a4)
        {
          return result;
        }

        goto LABEL_11;
      }

      result = sub_1000852FC(a3, (v11 + *(*(a1 + 568) + 2 * a2)), v10, v14, *(a1 + 676), 0);
      if (!a4)
      {
        return result;
      }
    }

LABEL_11:
    v22 = v12 + sub_1000C7854(v12);
    v23 = sub_1000C7854(v22 + 1);
    v24 = *(a1 + 680);

    return sub_1000852FC(a4, (v22 + 1), v23 + 1, 1, v24, a1 + 684);
  }

  v16 = *(a1 + 788);
  v17 = *(a1 + 848);

  return sub_10008C394(v17, a2, a3, v10, a4, (v16 + 1), a7, a8);
}

void *sub_1000826E4(void *result, unsigned int *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 1)
  {
    v8 = a5;
    v11 = result;
    v12 = a3;
    do
    {
      v14 = *a2++;
      v13 = v14;
      v16 = *a4++;
      v15 = v16;
      v17 = *v8++;
      result = sub_100082540(v11, v13, v15, v17, a5, a6, a7, a8);
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_10008276C(uint64_t a1, int a2, int a3, __int16 *a4, uint64_t a5, int a6, int a7)
{
  v12 = *(a1 + 676);
  v13 = sub_1000CB75C(a4);
  v14 = (4 * v13) | 1;
  v22 = sub_1000C9F54(v14, v15, v16, v17, v18, v19, v20, v21);
  if (v12 == 4)
  {
    v23 = 3;
    sub_1000BD110(3, a4, a3, v14, v22);
    goto LABEL_7;
  }

  v23 = v12;
  if (sub_1000BD110(v12, a4, a3, v14, v22) != 2)
  {
LABEL_7:
    v76 = a7;
    sub_1000C7854(v22);
    v73 = a3;
    v80 = a3;
    v75 = (4 * v13) | 1;
    sub_1000BD0C0(v23, a4, v14, v22);
    v81 = 0;
    v74 = 4 * v13 + 4;
    v33 = sub_1000C9F54(v74, v26, v27, v28, v29, v30, v31, v32);
    sub_100084C5C(v33, a4, *(a1 + 732), v12, 0, &v80);
    sub_1000C7854(v33);
    if (*(a1 + 732))
    {
      v34 = sub_100084B10(a4);
      if (v34 == 16)
      {
        v35 = sub_1000C7AE0(v22);
        v77 = a2;
        v36 = *(a1 + 652);
        LODWORD(v37) = 0;
        v38 = v36 - 1;
        if (v36 < 1)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }

      v35 = 0;
      v77 = a2;
      v41 = *(a1 + 652);
      LODWORD(v37) = 0;
      v38 = v41 - 1;
      if (v41 >= 1)
      {
LABEL_18:
        v42 = v80;
        do
        {
          v43 = (v37 + v38) >> 1;
          v44 = *(*(a1 + 568) + 2 * v43);
          if (sub_1000C7898((*(a1 + 584) + v44), v33, v42, v44) >= 0)
          {
            v38 = v43 - 1;
          }

          else
          {
            LODWORD(v37) = v43 + 1;
          }
        }

        while (v37 <= v38);
        if (v37 >= *(a1 + 652) || a6 < 1)
        {
          goto LABEL_12;
        }

        if (!v77)
        {
          v40 = 0;
          v57 = v37;
          do
          {
            v59 = *(*(a1 + 568) + 2 * v57);
            v60 = *(a1 + 584);
            v61 = sub_1000C7854(v60 + v59);
            v63 = sub_1000C7898((v60 + v59), v33, v61, v62);
            if (v63 > 0)
            {
              break;
            }

            if (!v63)
            {
              *(a5 + 4 * v40) = v57;
              v40 = (v40 + 1);
            }
          }

          while (++v57 < *(a1 + 652) && v40 < a6);
          goto LABEL_13;
        }

        if (v34 != 16)
        {
          v40 = 0;
LABEL_56:
          v64 = v37;
          while (1)
          {
            v65 = (*(a1 + 584) + *(*(a1 + 568) + 2 * v64));
            v66 = sub_1000C7854(v65);
            v68 = sub_1000C7898(v65, v33, v66, v67);
            if (v68 > 0)
            {
              goto LABEL_13;
            }

            if (v68)
            {
              goto LABEL_64;
            }

            v69 = *(*(a1 + 528) + v64);
            if ((v69 & v34) != 0)
            {
              if (v69 != 16 || (v70 = &v65[sub_1000C7854(v65) + 1], v71 = sub_1000C7854(v70), !sub_1000C7898((v70 + v71 + 1), v22, v66, v70 + v71)))
              {
                *(a5 + 4 * v40) = v64;
                v40 = (v40 + 1);
LABEL_64:
                LODWORD(v37) = v64 + 1;
                if (v64 + 1 < *(a1 + 652) && v40 < a6)
                {
                  goto LABEL_56;
                }

                goto LABEL_13;
              }
            }

            if (++v64 >= *(a1 + 652))
            {
              goto LABEL_13;
            }
          }
        }

        v40 = 0;
LABEL_30:
        v37 = v37;
        while (1)
        {
          v46 = (*(a1 + 584) + *(*(a1 + 568) + 2 * v37));
          v47 = sub_1000C7854(v46);
          v49 = sub_1000C7898(v46, v33, v47, v48);
          if (v49 > 0)
          {
            goto LABEL_13;
          }

          if (v49)
          {
            goto LABEL_41;
          }

          v50 = v35[v47];
          v35[v47] = 0;
          v51 = *(a1 + 676);
          if (v51 == 3)
          {
            if (!sub_1000CE550(v35, &v81))
            {
              goto LABEL_31;
            }

            v51 = *(a1 + 676);
          }

          v52 = sub_1000848BC(v35, v51);
          v35[v47] = v50;
          v53 = *(*(a1 + 528) + v37);
          if ((v53 & v52) != 0)
          {
            if (v53 != 16 || (v54 = &v46[sub_1000C7854(v46) + 1], v55 = sub_1000C7854(v54), !sub_1000C7898((v54 + v55 + 1), v22, v47, v54 + v55)))
            {
              *(a5 + 4 * v40) = v37;
              v40 = (v40 + 1);
LABEL_41:
              LODWORD(v37) = v37 + 1;
              if (v37 < *(a1 + 652) && v40 < a6)
              {
                goto LABEL_30;
              }

              goto LABEL_13;
            }
          }

LABEL_31:
          if (++v37 >= *(a1 + 652))
          {
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
      v35 = 0;
      v34 = 128;
      v77 = 0;
      v39 = *(a1 + 652);
      LODWORD(v37) = 0;
      v38 = v39 - 1;
      if (v39 >= 1)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    v40 = 0;
LABEL_13:
    sub_1000BFEC4(v35);
    sub_1000CA03C(v33, v74);
    sub_1000CA03C(v22, v75);
    if (!v76 && a6 > v40)
    {
      return sub_10008FBA0(*(a1 + 848), v77, v73, a4, a5 + 4 * v40, a6 - v40) + v40;
    }

    return v40;
  }

  sub_1000CA03C(v22, v14);
  v24 = *(a1 + 848);

  return sub_10008FBA0(v24, a2, a3, a4, a5, a6);
}

uint64_t sub_100082C94(uint64_t a1, int a2)
{
  if (*(a1 + 652) <= a2)
  {
    return sub_10008D080(*(a1 + 848), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100082CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 796);
  v36 = 0;
  v37 = 0;
  v16 = sub_1000CA0BC();
  if (a3 < 1)
  {
    v21 = 0;
  }

  else
  {
    v17 = 2 * v8;
    v21 = sub_1000C9F54(8 * a3, v9, v10, v11, v12, v13, v14, v15);
    v22 = 0;
    do
    {
      v21[v22++] = sub_1000C9F54(v17 + 2, v18, v19, v20, v12, v13, v14, v15);
    }

    while (a3 != v22);
  }

  v23 = sub_100084210(a1, a2, a3, v21, v12, v13, v14, v15);
  if (v23 >= a3)
  {
    v27 = a3;
  }

  else
  {
    v27 = v23;
  }

  v28 = (a3 - v27);
  v29 = &v21[v27];
  if (v21)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_10008C8E0(*(a1 + 848), a2, v30, v28, (*(a1 + 796) + 1), v24, v25, v26) + v23;
  if (v31 >= a3)
  {
    a3 = a3;
  }

  else
  {
    a3 = v31;
  }

  sub_10009156C(*(a1 + 848), &v37, &v36);
  if (a3 >= 1)
  {
    do
    {
      v33 = *v21++;
      v32 = v33;
      v34 = *a4++;
      sub_1000919FC(*(a1 + 624), *(a1 + 640), v37, v36, v32, v34);
      --a3;
    }

    while (a3);
  }

  sub_1000CA0A0(v16);
  return v31;
}

uint64_t sub_100082E08(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v13 = sub_100084210(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v13 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v13;
  }

  v18 = (v10 - v17);
  v19 = &a4[v17];
  if (a4)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_10008C8E0(*(a1 + 848), a2, v20, v18, (*(a1 + 796) + 1), v14, v15, v16) + v13;
  if (a5 && v21 >= 1)
  {
    memset(a5, 255, 4 * (v21 - 1) + 4);
  }

  return v21;
}

uint64_t sub_100082EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int32x4_t *a5, int *a6)
{
  v12 = *(a1 + 796) + 1;
  v13 = sub_1000CA0BC();
  v21 = v13;
  v47 = v12;
  if (a3 < 1)
  {
    v26 = 0;
  }

  else
  {
    v46 = v13;
    v22 = a6;
    v26 = sub_1000C9F54(8 * a3, v14, v15, v16, v17, v18, v19, v20);
    v27 = 0;
    v28 = 2 * v12;
    do
    {
      v26[v27++] = sub_1000C9F54(v28, v23, v24, v25, v17, v18, v19, v20);
    }

    while (a3 != v27);
    a6 = v22;
    v21 = v46;
  }

  v29 = sub_100084210(a1, a2, a3, v26, v17, v18, v19, v20);
  v33 = v29;
  if (v29 >= a3)
  {
    v34 = a3;
  }

  else
  {
    v34 = v29;
  }

  if (!v29)
  {
    v37 = sub_10008C8E0(*(a1 + 848), a2, v26, 1, v47, v30, v31, v32);
    v33 = v37 >= 1 ? 1 : v37;
    if (a3 >= 1 && v37 >= 1)
    {
      a5->i32[0] = 0;
      v33 = 1;
      v35 = 0;
      v36 = 1;
      do
      {
LABEL_23:
        *(a4 + 4 * v35) = -1;
        a5->i32[v35] = v35;
        ++v35;
      }

      while (v36 != v35);
LABEL_24:
      v34 = v36;
      goto LABEL_25;
    }
  }

  if (v34 >= 1)
  {
    v35 = 0;
    v36 = v34;
    if (v34 >= 8 && a5 - a4 >= 0x20)
    {
      v35 = v34 & 0x7FFFFFF8;
      v38 = (a4 + 16);
      v39 = xmmword_1000F10E0;
      v40 = a5 + 1;
      v41.i64[0] = 0x400000004;
      v41.i64[1] = 0x400000004;
      *&v42 = -1;
      *(&v42 + 1) = -1;
      v43.i64[0] = 0x800000008;
      v43.i64[1] = 0x800000008;
      v44 = v35;
      do
      {
        *(v38 - 1) = v42;
        *v38 = v42;
        v40[-1] = v39;
        *v40 = vaddq_s32(v39, v41);
        v39 = vaddq_s32(v39, v43);
        v38 += 2;
        v40 += 2;
        v44 -= 8;
      }

      while (v44);
      if (v35 == v34)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

LABEL_25:
  sub_1000CA0A0(v21);
  *a6 = v33;
  return v34;
}

uint64_t sub_100083090(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  sub_10009156C(*(a1 + 848), &v8, &v7);
  return sub_1000919FC(*(a1 + 624), *(a1 + 640), v8, v7, a2, a3);
}

unint64_t sub_1000830F4(uint64_t a1, unsigned __int16 *a2)
{
  result = sub_10008E7D4(*(a1 + 848), a2);
  if (result)
  {
    v5 = 0;
    v6 = 0;
    sub_10009156C(*(a1 + 848), &v6, &v5);
    result = sub_100098BE4(a2);
    if (result)
    {
      return sub_1000837F0(a1, a2) != 255 && sub_100091D34(*(a1 + 624), *(a1 + 640), v6, v5, a2) != 0;
    }
  }

  return result;
}

uint64_t sub_100083190(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unint64_t *a4, uint64_t a5, int a6)
{
  v37 = 0;
  v38 = 0;
  v35 = sub_1000CA0BC();
  v9 = sub_10009156C(*(a1 + 848), &v38, &v37);
  v36 = sub_1000C9F54(8 * a5, v10, v11, v12, v13, v14, v15, v16);
  if (a5 >= 1)
  {
    v17 = a5;
    v18 = v36;
    do
    {
      v19 = *a4;
      v20 = sub_100098BE4(*a4) + 1;
      v28 = sub_1000C9F54(2 * v20, v21, v22, v23, v24, v25, v26, v27);
      *v18 = v28;
      if (!sub_100091DF0(*(a1 + 640), *(a1 + 642), v38, v37, v9, v19, v28))
      {
        v29 = sub_1000905E0(*(a1 + 848), v20, v19);
        *v28 = v29;
        if (v29 == 0xFFFF)
        {
          v30 = 0xFFFFFFLL;
          goto LABEL_8;
        }

        v28[1] = -1;
      }

      ++v18;
      ++a4;
      --v17;
    }

    while (v17);
  }

  v30 = sub_1000832D4(a1, a2, a3, a5, v36, a6, 0);
LABEL_8:
  sub_1000CA0A0(v35);
  return v30;
}

uint64_t sub_1000832D4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int16 **a5, int a6, int a7)
{
  v89 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v14 = sub_1000CA0BC();
  if (!a3 || !*a3)
  {
    goto LABEL_45;
  }

  v15 = *(a1 + 796) + 1;
  if (a4 == 1 && *(a1 + 828) != 0xFFFF && qword_1001065A8)
  {
    if (*(qword_1001065A8 + 3920))
    {
      if (sub_1000821BC(a1, a3, &v89, 1, 0))
      {
        v88 = sub_1000C9F54(2 * v15, v16, v17, v18, v19, v20, v21, v22);
        v23 = v89;
        v28 = sub_100084210(a1, v89, 1, &v88, v24, v25, v26, v27);
        if (v28 >= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v28;
        }

        sub_10008C8E0(*(a1 + 848), v23, &(&v88)[v32], (1 - v32), (*(a1 + 796) + 1), v29, v30, v31);
        sub_10009156C(*(a1 + 848), &v87, &v86);
        if (sub_100091AE0(v88, *a5, *(a1 + 624), *(a1 + 640), v87, v86))
        {
          a5 = &v88;
          a7 = 0;
        }
      }

      goto LABEL_45;
    }
  }

  else if (!qword_1001065A8)
  {
    goto LABEL_45;
  }

  if (*(qword_1001065A8 + 3908))
  {
    v89 = sub_1000811BC(a1);
    if (v89 != 0xFFFFFF)
    {
      v83 = a6;
      v84 = v14;
      sub_10009156C(*(a1 + 848), &v87, &v86);
      v33 = sub_10008136C(a1);
      v48 = sub_1000C9F54(8 * v33, v34, v35, v36, v37, v38, v39, v40);
      if (v33 < 1)
      {
        sub_10008136C(a1);
        v14 = v84;
        a6 = v83;
      }

      else
      {
        v80 = a7;
        v81 = a2;
        v82 = a3;
        v49 = 0;
        v50 = v33;
        do
        {
          *(v48 + v49) = sub_1000C9F54(2 * v15, v41, v42, v43, v44, v45, v46, v47);
          v49 += 8;
        }

        while (8 * v33 != v49);
        sub_10008136C(a1);
        if (a4 > 0)
        {
          v51 = 0;
          v85 = 8 * a4;
          v52 = a5;
          do
          {
            v53 = &a5[v51];
            if (v51)
            {
              for (i = 0; i != v50; ++i)
              {
                v55 = (v48 + 8 * i);
                if (sub_100091C78(*v55, *v53, *(a1 + 624), *(a1 + 640), v87, v86))
                {
                  if (v52 == a5)
                  {
                    v63 = sub_1000C9F54(v85, v56, v57, v58, v59, v60, v61, v62);
                    v52 = v63;
                    v64 = 0;
                    if (v51 < 4)
                    {
                      goto LABEL_48;
                    }

                    if (v63 - a5 < 0x20)
                    {
                      goto LABEL_48;
                    }

                    v65 = (v63 + 16);
                    v67 = (a5 + 2);
                    v66 = v51 & 0xFFFFFFFFFFFFFFFCLL;
                    do
                    {
                      v68 = *v67;
                      *(v65 - 1) = *(v67 - 1);
                      *v65 = v68;
                      v67 += 2;
                      v65 += 2;
                      v66 -= 4;
                    }

                    while (v66);
                    v64 = v51 & 0x7FFFFFFFFFFFFFFCLL;
                    if (v51 != (v51 & 0x7FFFFFFFFFFFFFFCLL))
                    {
LABEL_48:
                      do
                      {
                        *(v63 + 8 * v64) = a5[v64];
                        ++v64;
                      }

                      while (v51 != v64);
                    }
                  }
                }

                else
                {
                  v55 = &a5[v51];
                }

                v52[v51] = *v55;
              }
            }

            else
            {
              v69 = v50;
              v70 = v48;
              do
              {
                if (sub_100091C78(*v70, *v53, *(a1 + 624), *(a1 + 640), v87, v86))
                {
                  v71 = v70;
                  if (v52 == a5)
                  {
                    v52 = sub_1000C9F54(v85, v72, v73, v74, v75, v76, v77, v78);
                    v71 = v70;
                  }
                }

                else
                {
                  v71 = a5;
                }

                *v52 = *v71;
                ++v70;
                --v69;
              }

              while (v69);
            }

            ++v51;
          }

          while (v51 != a4);
          a5 = v52;
        }

        a2 = v81;
        a3 = v82;
        v14 = v84;
        a6 = v83;
        a7 = v80;
      }
    }
  }

LABEL_45:
  v89 = sub_10008D3C4(*(a1 + 848), a2, a3, a5, a4, (a1 + 784), (a1 + 788), (a1 + 796), (a1 + 792), a6, a7);
  sub_1000CA0A0(v14);
  return v89;
}

uint64_t sub_100083718(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (*(a1 + 652) <= a2)
  {
    v3 = 0;
    v4 = (a1 + 796);
    v5 = (a1 + 792);
    v6 = *(a1 + 848);
  }

  else
  {
    if (*(*(a1 + 496) + a2) <= 1u)
    {
      v3 = 1;
    }

    else
    {
      v3 = *(*(a1 + 496) + a2);
    }

    v4 = (a1 + 796);
    v5 = (a1 + 792);
    v6 = *(a1 + 848);
  }

  return sub_10008E888(v6, a2, a3, v3, v4, v5);
}

uint64_t sub_100083760(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 652) <= a2)
  {
    v9 = 0;
    if (a3 >= 0)
    {
      return sub_10008F49C(*(a1 + 848), a2, a3, v9, a4, a6, a7, a8);
    }
  }

  else
  {
    if (*(*(a1 + 496) + a2) <= 1u)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(*(a1 + 496) + a2);
    }

    if (v9 <= a3)
    {
      return sub_10008F49C(*(a1 + 848), a2, a3, v9, a4, a6, a7, a8);
    }
  }

  return 0;
}

uint64_t sub_1000837A4(uint64_t a1, int a2)
{
  v2 = *(a1 + 652);
  if (a2 == 0xFFFFFF)
  {
    if (v2 > 0)
    {
      return 0;
    }
  }

  else if (v2 - 1 > a2)
  {
    return (a2 + 1);
  }

  return sub_10009076C(*(a1 + 848), a2);
}

uint64_t sub_1000837F0(uint64_t a1, unsigned __int16 *a2)
{
  if (!*(a1 + 808))
  {
    return 2;
  }

  v23 = 0;
  v24 = 0;
  sub_10009156C(*(a1 + 848), &v24, &v23);
  v4 = 2 * sub_100091D34(*(a1 + 624), *(a1 + 640), v24, v23, a2);
  v12 = sub_1000C9F54(v4 + 2, v5, v6, v7, v8, v9, v10, v11);
  sub_1000919FC(*(a1 + 624), *(a1 + 640), v24, v23, a2, v12);
  v13 = *v12;
  if (v13 == 0xFFFF)
  {
LABEL_3:
    v14 = 2;
  }

  else
  {
    v16 = *(a1 + 824);
    v17 = v12;
    while (1)
    {
      if (v16 > v13)
      {
        v19 = *(a1 + 808);
        v14 = *(v19 + v13);
        if (v14 != 2)
        {
          break;
        }
      }

      v18 = *(v17 + 1);
      v17 = (v17 + 2);
      v13 = v18;
      if (v18 == 0xFFFF)
      {
        goto LABEL_3;
      }
    }

    v20 = 2;
    while (1)
    {
      if (v16 > v13)
      {
        v21 = *(v19 + v13);
        if (v21 != v14 && v21 != 2)
        {
          break;
        }
      }

      v13 = *(v17 + v20);
      v20 += 2;
      if (v13 == 0xFFFF)
      {
        goto LABEL_4;
      }
    }

    v14 = 255;
  }

LABEL_4:
  sub_1000CA03C(v12, v4 + 2);
  return v14;
}

uint64_t sub_100083928(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1000CA0BC();
  v14 = sub_1000C9F54(8 * (a3 + 1), v7, v8, v9, v10, v11, v12, v13);
  v22 = v14;
  if ((a3 & 0x80000000) == 0)
  {
    v23 = 2 * *(a1 + 792);
    v24 = (a3 + 1);
    v25 = v14;
    do
    {
      *v25++ = sub_1000C9F54(v23 + 2, v15, v16, v17, v18, v19, v20, v21);
      --v24;
    }

    while (v24);
  }

  sub_100082CD0(a1, a2, (a3 + 1), v22);
  v26 = v22[a3];
  v27 = *v26;
  if (v27 == 0xFFFF)
  {
LABEL_5:
    v28 = 2;
  }

  else
  {
    v30 = *(a1 + 824);
    while (1)
    {
      if (v30 > v27)
      {
        v32 = *(a1 + 808);
        v28 = *(v32 + v27);
        if (v28 != 2)
        {
          break;
        }
      }

      v31 = v26[1];
      ++v26;
      v27 = v31;
      if (v31 == 0xFFFF)
      {
        goto LABEL_5;
      }
    }

    v33 = 1;
    while (1)
    {
      if (v30 > v27)
      {
        v34 = *(v32 + v27);
        if (v34 != v28 && v34 != 2)
        {
          break;
        }
      }

      v27 = v26[v33++];
      if (v27 == 0xFFFF)
      {
        goto LABEL_6;
      }
    }

    v28 = 255;
  }

LABEL_6:
  sub_1000CA0A0(v6);
  return v28;
}

uint64_t sub_100083A50(uint64_t a1)
{
  v2 = sub_100081514(a1);
  v3 = sub_100091584(*(a1 + 848));

  return sub_1000BD6C8(v3, 4, v2);
}

uint64_t sub_100083AC0(uint64_t a1)
{
  v1 = *(a1 + 640);
  v2 = *(a1 + 848);
  if (v2)
  {
    v3 = sub_100090764(v2);
    if (v1 <= v3)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }

  return v1;
}

uint64_t sub_100083AF8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 640) >= a2)
  {
    return *(*(a1 + 768) + 8 * a2);
  }

  else
  {
    return 0;
  }
}

BOOL sub_100083B24(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_100090F50(*(a1 + 848), a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *(a1 + 784) = *(a1 + 656);
    v10 = result;
    sub_1000908FC(*(a1 + 848), a1, (a1 + 784), (a1 + 788), (a1 + 796), (a1 + 792));
    return v10;
  }

  return result;
}

uint64_t sub_100083B88(uint64_t a1, int a2, int a3, __int16 *a4, uint64_t a5, int a6, int a7, int a8)
{
  v13 = *(a1 + 676);
  v78 = sub_1000CB75C(a4);
  v14 = 4 * v78 + 4;
  v22 = sub_1000C9F54(v14, v15, v16, v17, v18, v19, v20, v21);
  v30 = sub_1000C9F54(v14, v23, v24, v25, v26, v27, v28, v29);
  if (v13 == 4)
  {
    v31 = 3;
  }

  else
  {
    v31 = v13;
  }

  if (sub_1000BD0C0(v31, a4, v14, v30) == 2)
  {
    sub_1000CA03C(v30, v14);
    sub_1000CA03C(v22, v14);
    v32 = *(a1 + 848);

    return sub_100090130(v32, a2, a3, a4, a5, a6, a7);
  }

  v81 = v30;
  v76 = a2;
  v77 = a5;
  sub_100084C5C(v22, a4, *(a1 + 732), v13, 0, 0);
  v34 = a4;
  if (*(a1 + 732))
  {
    v35 = sub_100084B10(a4);
  }

  else
  {
    v76 = 0;
    v35 = 128;
  }

  v36 = v14;
  v37 = a7;
  v84 = a3;
  v38 = sub_1000C7854(v22);
  v39 = *(a1 + 652);
  v40 = v39 - 1;
  if (v39 < 1)
  {
    goto LABEL_35;
  }

  LODWORD(v41) = 0;
  do
  {
    v42 = (v41 + v40) >> 1;
    v43 = *(*(a1 + 568) + 2 * v42);
    if (sub_1000C7898((*(a1 + 584) + v43), v22, v38, v43) >= 0)
    {
      v40 = v42 - 1;
    }

    else
    {
      LODWORD(v41) = v42 + 1;
    }
  }

  while (v41 <= v40);
  v37 = a7;
  if (v41 >= *(a1 + 652))
  {
LABEL_35:
    v52 = 0;
    goto LABEL_66;
  }

  if (!v76)
  {
    v53 = v41;
    v54 = 0;
    if (!a7)
    {
      do
      {
        v67 = *(a1 + 568) + 2 * v53;
        v68 = *(v67 + 2 * v54);
        v69 = *(a1 + 584);
        if (sub_1000C7898((v69 + v68), v22, v38, v67) || v84 && sub_1000C7854(v69 + v68) != v38)
        {
          break;
        }

        if (v54 < a6)
        {
          *(v77 + 4 * v54) = v53 + v54;
        }

        ++v54;
      }

      while (v53 + v54 < *(a1 + 652));
LABEL_48:
      v52 = v54;
      v37 = a7;
      goto LABEL_66;
    }

    if (a6 <= 1)
    {
      v55 = 1;
    }

    else
    {
      v55 = a6;
    }

    v79 = (v55 - 1);
    while (1)
    {
      v56 = *(a1 + 568) + 2 * v53;
      v57 = *(v56 + 2 * v54);
      v58 = *(a1 + 584);
      if (sub_1000C7898((v58 + v57), v22, v38, v56) || v84 && sub_1000C7854(v58 + v57) != v38)
      {
        goto LABEL_48;
      }

      if (v54 < a6)
      {
        *(v77 + 4 * v54) = v53 + v54;
      }

      if (v79 == v54)
      {
        break;
      }

      ++v54;
      if (v53 + v54 >= *(a1 + 652))
      {
        goto LABEL_48;
      }
    }

    v52 = (v54 + 1);
LABEL_97:
    v46 = v81;
LABEL_98:
    sub_1000CA03C(v46, v36);
    sub_1000CA03C(v22, v36);
    return v52;
  }

  if (v35 != 16)
  {
    v59 = 0;
    while (1)
    {
      v41 = v41;
      while (1)
      {
        v62 = *(*(a1 + 568) + 2 * v41);
        v63 = (*(a1 + 584) + v62);
        if (sub_1000C7898(v63, v22, v38, v62) || v84 && sub_1000C7854(v63) != v38)
        {
LABEL_64:
          v52 = v59;
          goto LABEL_66;
        }

        v64 = *(*(a1 + 528) + v41);
        if (v64 == 16)
        {
          v60 = &v63[sub_1000C7854(v63) + 1];
          v61 = sub_1000C7854(v60);
          if (!sub_1000C7898((v60 + v61 + 1), v81, v36, v60 + v61))
          {
            break;
          }

          goto LABEL_52;
        }

        if ((v35 & v64) != 0)
        {
          break;
        }

LABEL_52:
        if (++v41 >= *(a1 + 652))
        {
          goto LABEL_64;
        }
      }

      if (v59 < a6)
      {
        *(v77 + 4 * v59) = v41;
      }

      v52 = ++v59;
      if (a7 && v59 >= a6)
      {
        goto LABEL_97;
      }

      LODWORD(v41) = v41 + 1;
      if (v41 >= *(a1 + 652))
      {
        goto LABEL_66;
      }
    }
  }

  if (!v84)
  {
    v52 = 0;
    while (1)
    {
      v41 = v41;
      v46 = v81;
      while (1)
      {
        v72 = *(*(a1 + 568) + 2 * v41);
        v73 = (*(a1 + 584) + v72);
        if (sub_1000C7898(v73, v22, v38, v72))
        {
          goto LABEL_66;
        }

        v74 = *(*(a1 + 528) + v41);
        if (v74 != 16)
        {
          break;
        }

        v70 = &v73[sub_1000C7854(v73) + 1];
        v71 = sub_1000C7854(v70);
        if (!sub_1000C7898((v70 + v71 + 1), v81, v36, v70 + v71))
        {
          goto LABEL_90;
        }

LABEL_86:
        if (++v41 >= *(a1 + 652))
        {
          goto LABEL_66;
        }
      }

      if (sub_1000843B8(v34, v73, v74, v78, *(a1 + 676), 0))
      {
        goto LABEL_86;
      }

LABEL_90:
      if (v52 < a6)
      {
        *(v77 + 4 * v52) = v41;
      }

      ++v52;
      if (a7 && v52 >= a6)
      {
        goto LABEL_98;
      }

      LODWORD(v41) = v41 + 1;
      if (v41 >= *(a1 + 652))
      {
        goto LABEL_66;
      }
    }
  }

  v44 = 0;
  while (2)
  {
    v75 = v44;
    v45 = v41;
    v46 = v81;
    while (1)
    {
      v49 = *(*(a1 + 568) + 2 * v45);
      v50 = (*(a1 + 584) + v49);
      if (sub_1000C7898(v50, v22, v38, v49) || sub_1000C7854(v50) != v38)
      {
LABEL_65:
        v52 = v75;
        goto LABEL_66;
      }

      v51 = *(*(a1 + 528) + v45);
      if (v51 == 16)
      {
        v47 = &v50[sub_1000C7854(v50) + 1];
        v48 = sub_1000C7854(v47);
        if (!sub_1000C7898((v47 + v48 + 1), v81, v36, v47 + v48))
        {
          break;
        }

        goto LABEL_24;
      }

      if (!sub_1000843B8(v34, v50, v51, v78, *(a1 + 676), 0))
      {
        break;
      }

LABEL_24:
      if (++v45 >= *(a1 + 652))
      {
        goto LABEL_65;
      }
    }

    if (v75 < a6)
    {
      *(v77 + 4 * v75) = v45;
    }

    v44 = v75 + 1;
    if (a7 && v44 >= a6)
    {
      v52 = v75 + 1;
      goto LABEL_98;
    }

    LODWORD(v41) = v45 + 1;
    v52 = v75 + 1;
    if (v45 + 1 < *(a1 + 652))
    {
      continue;
    }

    break;
  }

LABEL_66:
  sub_1000CA03C(v81, v36);
  sub_1000CA03C(v22, v36);
  if (v37)
  {
    v65 = a6 <= v52;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65;
  if (!a8 && (v66 & 1) == 0)
  {
    return sub_100090130(*(a1 + 848), v76, v84, v34, v77 + 4 * v52, a6 - v52, v37) + v52;
  }

  return v52;
}

uint64_t sub_100084210(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v37 = 0;
  v36 = 0;
  if (*(a1 + 652) <= a2)
  {
    goto LABEL_7;
  }

  v12 = *(a1 + 496);
  v11 = *(v12 + a2);
  if (*(v12 + a2))
  {
    v13 = (*(a1 + 544) + 2 * *(*(a1 + 512) + 2 * a2));
    if (v11 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = v11;
    }

    v15 = a3;
    sub_100091F34(a4, v13, v14);
    LODWORD(a3) = v15;
LABEL_7:
    if (a3 < 1)
    {
      return v11;
    }

    v16 = *(a1 + 828);
    if (v16 == 0xFFFF || v11 != 1)
    {
      return v11;
    }

    goto LABEL_13;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v19 = sub_1000C9F54(2 * *(a1 + 784) + 2, a2, a3, a4, a5, a6, a7, a8);
  v27 = sub_1000C9F54(2 * *(a1 + 788) + 2, v20, v21, v22, v23, v24, v25, v26);
  sub_100082540(a1, a2, v19, v27, v28, v29, v30, v31);
  if (*v27)
  {
    v32 = v27;
  }

  else
  {
    v32 = v19;
  }

  v33 = *a4;
  v34 = sub_1000C7898((a1 + 724), "z", 1, *v27) == 0;
  v11 = sub_100092A50(*(a1 + 480), v32, v34, v33, (*(a1 + 796) + 1), &v36, 1u, &v37);
  sub_1000CA03C(v27, 2 * *(a1 + 788) + 2);
  sub_1000CA03C(v19, 2 * *(a1 + 784) + 2);
  v16 = *(a1 + 828);
  if (v16 != 0xFFFF && v11 == 1)
  {
LABEL_13:
    sub_100092240(*a4, *(*(a1 + 832) + a2), v16);
    return 1;
  }

  return v11;
}

uint64_t sub_1000843B8(unsigned __int16 *a1, char *a2, char a3, int a4, int a5, uint64_t a6)
{
  v8 = a2;
  v9 = a1;
  v10 = a4;
  if ((a5 - 1) < 2)
  {
    if (a3)
    {
      if (a4 >= 1)
      {
        while (1)
        {
          v17 = *v8++;
          v18 = nullsub_1(v17);
          v19 = *v9++;
          if (v19 != v18)
          {
            break;
          }

          if (!--v10)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else if ((a3 & 4) != 0)
    {
      if (a4 >= 1)
      {
        while (1)
        {
          v25 = *v8++;
          v26 = sub_1000BE0FC(v25);
          v27 = nullsub_1(v26);
          v28 = *v9++;
          if (v28 != v27)
          {
            break;
          }

          if (!--v10)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else
    {
      if (a4 < 1)
      {
        LODWORD(v12) = 0;
        v32 = *a1;
        if (v32 != sub_1000BE0FC(*a2))
        {
          return 1;
        }
      }

      else
      {
        v12 = 0;
        while (a1[v12] == 32)
        {
          if (a2[v12] != 32)
          {
            return 1;
          }

          if (a4 == ++v12)
          {
            LODWORD(v12) = a4;
            break;
          }
        }

        v13 = a1[v12];
        if (v13 != sub_1000BE0FC(a2[v12]))
        {
          return 1;
        }
      }

      v33 = v12 + 1;
      if ((a3 & 2) == 0)
      {
        if (v33 < a4)
        {
          v34 = &v8[v33];
          v35 = &v9[v33];
          while (1)
          {
            v38 = *v35++;
            v37 = v38;
            v40 = *v34++;
            v39 = v40;
            if (*(v9 - 1) == 32)
            {
              if (v37 != sub_1000BE0FC(v39))
              {
                return 1;
              }
            }

            else if (v37 != nullsub_1(v39))
            {
              return 1;
            }

            result = 0;
            if (++v33 >= a4)
            {
              return result;
            }
          }
        }

        return 0;
      }

      if (v33 < a4)
      {
        v41 = &v8[v33];
        v42 = &v9[v33];
        while (1)
        {
          v44 = *v42++;
          v43 = v44;
          v45 = *v41++;
          if (v43 != nullsub_1(v45))
          {
            break;
          }

          result = 0;
          if (++v33 >= a4)
          {
            return result;
          }
        }

        return 1;
      }
    }
  }

  else if (a5 == 4)
  {
    v69 = 0;
    if (a3)
    {
      if (a4 >= 1)
      {
        while (1)
        {
          v23 = *v9++;
          v24 = sub_1000C7714(v8, a6, &v69);
          if (v23 != v69)
          {
            break;
          }

          v8 += v24;
          if (!--v10)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else if ((a3 & 4) != 0)
    {
      if (a4 >= 1)
      {
        while (1)
        {
          v30 = *v9++;
          v31 = sub_1000C7714(v8, a6, &v69);
          if (v30 != sub_1000CA73C(v69))
          {
            break;
          }

          v8 += v31;
          if (!--v10)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else
    {
      if (a4 < 1)
      {
        LODWORD(v15) = 0;
      }

      else
      {
        v15 = 0;
        while (v9[v15] == 32)
        {
          v16 = sub_1000C7714(v8, a6, &v69);
          if (v69 != 32)
          {
            return 1;
          }

          v8 += v16;
          if (v10 == ++v15)
          {
            LODWORD(v15) = v10;
            break;
          }
        }
      }

      v53 = v9[v15];
      v54 = sub_1000C7714(v8, a6, &v69);
      if (v53 != sub_1000CA73C(v69))
      {
        return 1;
      }

      v55 = &v8[v54];
      v56 = v15 + 1;
      if ((a3 & 2) == 0)
      {
        if (v56 < a4)
        {
          for (i = &v9[v56]; ; ++i)
          {
            v58 = *i;
            v59 = sub_1000C7714(v55, a6, &v69);
            if (*(i - 1) == 32)
            {
              if (v58 != sub_1000CA73C(v69))
              {
                return 1;
              }
            }

            else if (v58 != v69)
            {
              return 1;
            }

            result = 0;
            v55 += v59;
            if (++v56 >= a4)
            {
              return result;
            }
          }
        }

        return 0;
      }

      if (v56 < a4)
      {
        v64 = &v9[v56];
        while (1)
        {
          v65 = *v64++;
          v66 = sub_1000C7714(v55, a6, &v69);
          if (v65 != v69)
          {
            break;
          }

          v67 = v66;
          result = 0;
          v55 += v67;
          if (++v56 >= a4)
          {
            return result;
          }
        }

        return 1;
      }
    }
  }

  else if (a5 == 3)
  {
    v68 = 0;
    if (a3)
    {
      if (a4 >= 1)
      {
        v20 = 0;
        while (1)
        {
          v21 = *v9++;
          v22 = sub_1000CE6A4(&v8[v20], &v68);
          if (v21 != v68)
          {
            break;
          }

          v20 += v22;
          if (!--v10)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else if ((a3 & 4) != 0)
    {
      if (a4 >= 1)
      {
        while (1)
        {
          v29 = *v9++;
          sub_1000CE6A4(v8, &v68);
          if (v29 != sub_1000CA73C(v68))
          {
            break;
          }

          if (!--v10)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else
    {
      if (a4 < 1)
      {
        LODWORD(v11) = 0;
      }

      else
      {
        v11 = 0;
        while (a1[v11] == 32)
        {
          if (a2[v11] != 32)
          {
            return 1;
          }

          if (a4 == ++v11)
          {
            LODWORD(v11) = a4;
            break;
          }
        }
      }

      v46 = a1[v11];
      v47 = sub_1000CE6A4(&a2[v11], &v68);
      if (v46 != sub_1000CA73C(v68))
      {
        return 1;
      }

      v48 = v11 + 1;
      v49 = v47 + v11;
      if ((a3 & 2) == 0)
      {
        if (v48 < a4)
        {
          for (j = &v9[v48]; ; ++j)
          {
            v51 = *j;
            v52 = sub_1000CE6A4(&v8[v49], &v68);
            if (*(j - 1) == 32)
            {
              if (v51 != sub_1000CA73C(v68))
              {
                return 1;
              }
            }

            else if (v51 != v68)
            {
              return 1;
            }

            result = 0;
            v49 += v52;
            if (++v48 >= a4)
            {
              return result;
            }
          }
        }

        return 0;
      }

      if (v48 < a4)
      {
        v60 = &v9[v48];
        while (1)
        {
          v61 = *v60++;
          v62 = sub_1000CE6A4(&v8[v49], &v68);
          if (v61 != v68)
          {
            break;
          }

          v63 = v62;
          result = 0;
          v49 += v63;
          if (++v48 >= a4)
          {
            return result;
          }
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000848BC(uint64_t a1, int a2)
{
  if ((a2 - 3) < 2)
  {
    v12 = (a1 - 1);
    do
    {
      v13 = *++v12;
    }

    while (v13 == 32);
    v30 = 0;
    v14 = sub_1000CE6A4(v12, &v30);
    v15 = sub_1000CA4AC(v30);
    v16 = v15 == 0;
    if (v15)
    {
      v17 = v30;
      v18 = sub_1000CA5E4(v30);
      if (v17 != sub_1000CA73C(v18))
      {
        return 16;
      }
    }

    v19 = &v12[v14];
    if (*v19)
    {
      v20 = v15 == 0;
      v21 = v15;
      v22 = v15;
      do
      {
        v24 = sub_1000CE6A4(v19, &v30);
        v25 = sub_1000CA4AC(v30);
        v26 = v30;
        if (v25)
        {
          v23 = sub_1000CA5E4(v30);
          if (v26 != sub_1000CA73C(v23))
          {
            return 16;
          }

          v15 = 0;
          v20 = 0;
          if (*(v19 - 1) != 32)
          {
            v21 = 0;
          }
        }

        else if (sub_1000CA374(v30))
        {
          v22 = 0;
          if (*(v19 - 1) == 32)
          {
            v21 = 0;
          }
        }

        v19 += v24;
      }

      while (*v19);
      v16 = v20;
    }

    else
    {
      v22 = v15;
      v21 = v15;
    }

    v7 = v16 | 2;
    if (!v15)
    {
      v7 = v16;
    }

    if (v22)
    {
      v7 |= 4u;
    }

    v27 = v7 | 8;
    v28 = v21 == 0;
  }

  else
  {
    if ((a2 - 1) > 1)
    {
      return 0;
    }

    v2 = (a1 - 1);
    do
    {
      v4 = *++v2;
      v3 = v4;
    }

    while (v4 == 32);
    v5 = sub_1000BE0A8(v3);
    v6 = v5;
    v7 = v5 == 0;
    LOBYTE(v8) = v2[1];
    if (v8)
    {
      v9 = v5 == 0;
      v10 = v5;
      v11 = v5;
      do
      {
        if (sub_1000BE0A8(v8))
        {
          v6 = 0;
          v9 = 0;
          if (*v2 != 32)
          {
            v10 = 0;
          }
        }

        else if (sub_1000BE084(v8))
        {
          v11 = 0;
          if (*v2 == 32)
          {
            v10 = 0;
          }
        }

        v8 = v2[2];
        ++v2;
      }

      while (v8);
      v7 = v9;
    }

    else
    {
      v11 = v5;
      v10 = v5;
    }

    if (v6)
    {
      v7 |= 2u;
    }

    if (v11)
    {
      v7 |= 4u;
    }

    v27 = v7 | 8;
    v28 = v10 == 0;
  }

  if (!v28)
  {
    v7 = v27;
  }

  if (!v7)
  {
    return 16;
  }

  return v7;
}

uint64_t sub_100084B10(uint64_t a1)
{
  v1 = (a1 - 2);
  do
  {
    v3 = v1[1];
    ++v1;
    v2 = v3;
  }

  while (v3 == 32);
  v4 = sub_1000CA4AC(v2);
  v5 = v4 == 0;
  if (v4)
  {
    v6 = sub_1000CA5E4(v2);
    if (v2 != sub_1000CA73C(v6))
    {
      return 16;
    }
  }

  LOWORD(v7) = v1[1];
  if (v7)
  {
    v8 = v4 == 0;
    v9 = v4;
    v10 = v4;
    do
    {
      v12 = v7;
      if (sub_1000CA4AC(v7))
      {
        v11 = sub_1000CA5E4(v12);
        if (v12 != sub_1000CA73C(v11))
        {
          return 16;
        }

        v4 = 0;
        v8 = 0;
        if (*v1 != 32)
        {
          v9 = 0;
        }
      }

      else if (sub_1000CA374(v12))
      {
        v10 = 0;
        if (*v1 == 32)
        {
          v9 = 0;
        }
      }

      v7 = v1[2];
      ++v1;
    }

    while (v7);
    v5 = v8;
  }

  else
  {
    v10 = v4;
    v9 = v4;
  }

  v14 = v5 | 2;
  if (!v4)
  {
    v14 = v5;
  }

  if (v10)
  {
    v14 |= 4u;
  }

  if (v9)
  {
    v14 |= 8u;
  }

  if (!v14)
  {
    return 16;
  }

  return v14;
}

uint64_t sub_100084C5C(_BYTE *a1, unsigned __int16 *a2, int a3, int a4, uint64_t a5, int *a6)
{
  v7 = a1;
  if ((a4 - 1) >= 2)
  {
    if (a4 != 4)
    {
      if (a4 != 3)
      {
        return 2;
      }

      if (a6)
      {
        v9 = *a6;
        LOWORD(v10) = *a2;
        if (*a2)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = -1;
        LOWORD(v10) = *a2;
        if (*a2)
        {
LABEL_6:
          v11 = 0;
          v12 = 1;
          if (a3)
          {
            do
            {
              v13 = sub_1000CA5E4(v10);
              v14 = sub_1000CE9F4(v13, v7);
              v7 += v14;
              v15 = v14 - 1;
              if (v9 < (v12 * 2) >> 1)
              {
                v15 = 0;
              }

              v11 += v15;
              v10 = a2[v12++];
            }

            while (v10);
          }

          else
          {
            do
            {
              v16 = sub_1000CE9F4(v10, v7);
              v7 += v16;
              v17 = v16 - 1;
              if (v9 < (v12 * 2) >> 1)
              {
                v17 = 0;
              }

              v11 += v17;
              v10 = a2[v12++];
            }

            while (v10);
          }

          *v7 = 0;
          result = 0;
          if (!a6)
          {
            return result;
          }

          goto LABEL_38;
        }
      }

      v11 = 0;
      *a1 = 0;
      result = 0;
      if (!a6)
      {
        return result;
      }

LABEL_38:
      v36 = *a6 + v11;
      goto LABEL_43;
    }

    if (a6)
    {
      v27 = *a6;
      LOWORD(v28) = *a2;
      if (*a2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v27 = -1;
      LOWORD(v28) = *a2;
      if (*a2)
      {
LABEL_26:
        v29 = 0;
        v30 = 1;
        if (a3)
        {
          do
          {
            v31 = sub_1000CA5E4(v28);
            v32 = sub_1000C7774(v31, a5, v7);
            v7 += v32;
            v33 = v32 - 1;
            if (v27 < (v30 * 2) >> 1)
            {
              v33 = 0;
            }

            v29 += v33;
            v28 = a2[v30++];
          }

          while (v28);
        }

        else
        {
          do
          {
            v34 = sub_1000C7774(v28, a5, v7);
            v7 += v34;
            v35 = v34 - 1;
            if (v27 < (v30 * 2) >> 1)
            {
              v35 = 0;
            }

            v29 += v35;
            v28 = a2[v30++];
          }

          while (v28);
        }

        goto LABEL_41;
      }
    }

    v29 = 0;
LABEL_41:
    *v7 = 0;
    result = 0;
    if (!a6)
    {
      return result;
    }

    v36 = *a6 + v29;
LABEL_43:
    *a6 = v36;
    return result;
  }

  v19 = *a2;
  if (*a2)
  {
    v20 = a2 + 1;
    if (a3)
    {
      while (1)
      {
        v21 = sub_1000CA5E4(v19);
        v22 = sub_1000CD464(v21);
        if (!v22)
        {
          break;
        }

        *v7++ = v22;
        v23 = *v20++;
        v19 = v23;
        if (!v23)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      while (1)
      {
        v25 = sub_1000CD464(v19);
        if (!v25)
        {
          break;
        }

        *v7++ = v25;
        v24 = *v20++;
        v19 = v24;
        if (!v24)
        {
          goto LABEL_20;
        }
      }
    }

    result = 1;
    *v7 = 0;
  }

  else
  {
LABEL_20:
    result = 0;
    *v7 = 0;
  }

  return result;
}

uint64_t sub_100084ED4(_BYTE *a1, char *a2, int a3, char a4, int a5, uint64_t a6)
{
  v7 = a2;
  v8 = a1;
  if ((a5 - 1) < 2)
  {
    sub_1000C78DC(a1, a2, a3);
    if (a4)
    {
      return 0;
    }

    else
    {
      do
      {
        v15 = *v8++;
        result = v15;
      }

      while (v15 == 32);
      if ((a4 & 2) != 0)
      {
        v25 = sub_1000BE0FC(result);
        result = 0;
        *(v8 - 1) = v25;
      }

      else if ((a4 & 4) != 0)
      {
        if (result)
        {
          do
          {
            *(v8 - 1) = sub_1000BE0FC(result);
            v32 = *v8++;
            result = v32;
          }

          while (v32);
        }
      }

      else
      {
        v16 = 1;
        if (result != 32)
        {
          goto LABEL_25;
        }

        do
        {
LABEL_24:
          v16 = 1;
          v20 = *v8++;
          result = v20;
        }

        while (v20 == 32);
LABEL_25:
        while (result)
        {
          if (v16)
          {
            v18 = sub_1000BE0FC(result);
            v16 = 0;
            *(v8 - 1) = v18;
            v19 = *v8++;
            result = v19;
            if (v19 == 32)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v17 = *v8++;
            result = v17;
            if (v17 == 32)
            {
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

  else
  {
    if (a5 != 4)
    {
      if (a5 != 3)
      {
        return 2;
      }

      if ((a4 & 1) == 0)
      {
        v9 = *a2;
        if (v9 == 32)
        {
          do
          {
            *v8++ = 32;
            v10 = *++v7;
            v9 = v10;
          }

          while (v10 == 32);
        }

        v35 = 0;
        if ((a4 & 2) == 0)
        {
          if ((a4 & 4) != 0)
          {
            if (v9)
            {
              do
              {
                v7 += sub_1000CE6A4(v7, &v35);
                v33 = sub_1000CA73C(v35);
                v35 = v33;
                v8 += sub_1000CE9F4(v33, v8);
              }

              while (*v7);
            }
          }

          else if (v9)
          {
            v11 = 1;
            do
            {
              v12 = sub_1000CE6A4(v7, &v35);
              v13 = v35;
              if (v11)
              {
                v13 = sub_1000CA73C(v35);
                v35 = v13;
              }

              v7 += v12;
              v8 += sub_1000CE9F4(v13, v8);
              v11 = v35 == 32;
            }

            while (*v7);
          }

          *v8 = 0;
          return 0;
        }

        v26 = a3;
        v7 += sub_1000CE6A4(v7, &v35);
        v27 = sub_1000CA73C(v35);
        v35 = v27;
        v28 = sub_1000CE9F4(v27, v8);
        a3 = v26 - v28;
        a1 = &v8[v28];
      }

      sub_1000C78DC(a1, v7, a3);
      return 0;
    }

    v36 = 0;
    if (a4)
    {
      while (*v7)
      {
        v7 += sub_1000C7714(v7, a6, &v36);
        v8 += sub_1000CE9F4(v36, v8);
      }
    }

    else if ((a4 & 2) != 0)
    {
      for (i = sub_1000C7714(a2, a6, &v36); v36 == 32; i = sub_1000C7714(v7, a6, &v36))
      {
        v7 += i;
        *v8++ = 32;
      }

      v30 = &v7[sub_1000C7714(v7, a6, &v36)];
      v31 = sub_1000CA73C(v36);
      v36 = v31;
      for (v8 += sub_1000CE9F4(v31, v8); *v30; v8 += sub_1000CE9F4(v36, v8))
      {
        v30 += sub_1000C7714(v30, a6, &v36);
      }
    }

    else if ((a4 & 4) != 0)
    {
      if (*a2)
      {
        do
        {
          v7 += sub_1000C7714(v7, a6, &v36);
          v34 = sub_1000CA73C(v36);
          v36 = v34;
          v8 += sub_1000CE9F4(v34, v8);
        }

        while (*v7);
      }
    }

    else if (*a2)
    {
      v22 = 1;
      do
      {
        while (1)
        {
          v23 = sub_1000C7714(v7, a6, &v36);
          v24 = v36;
          if (v36 != 32)
          {
            break;
          }

          *v8++ = 32;
          v22 = 1;
          v7 += v23;
          if (!*v7)
          {
            goto LABEL_60;
          }
        }

        if (v22)
        {
          v24 = sub_1000CA73C(v36);
          v36 = v24;
        }

        v22 = 0;
        v8 += sub_1000CE9F4(v24, v8);
        v7 += v23;
      }

      while (*v7);
    }

LABEL_60:
    result = 0;
    *v8 = 0;
  }

  return result;
}

uint64_t sub_1000852FC(uint64_t a1, char *a2, int a3, char a4, int a5, uint64_t a6)
{
  v7 = a2;
  v8 = a1;
  if ((a5 - 1) < 2)
  {
    sub_1000CD478(a2, a3, a1);
    if (a4)
    {
      return 0;
    }

    else
    {
      do
      {
        v16 = *v8++;
        result = v16;
      }

      while (v16 == 32);
      if ((a4 & 2) != 0)
      {
        v29 = sub_1000CA73C(result);
        result = 0;
        *(v8 - 1) = v29;
      }

      else if ((a4 & 4) != 0)
      {
        if (result)
        {
          do
          {
            *(v8 - 1) = sub_1000CA73C(result);
            v34 = *v8++;
            result = v34;
          }

          while (v34);
        }
      }

      else
      {
        v17 = 1;
        if (result != 32)
        {
          goto LABEL_22;
        }

        do
        {
LABEL_21:
          v17 = 1;
          v18 = *v8++;
          result = v18;
        }

        while (v18 == 32);
LABEL_22:
        while (result)
        {
          if (v17)
          {
            v20 = sub_1000CA73C(result);
            v17 = 0;
            *(v8 - 1) = v20;
            v21 = *v8++;
            result = v21;
            if (v21 == 32)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v19 = *v8++;
            result = v19;
            if (v19 == 32)
            {
              goto LABEL_21;
            }
          }
        }
      }
    }
  }

  else
  {
    if (a5 != 4)
    {
      if (a5 != 3)
      {
        return 2;
      }

      if (a4)
      {
        v27 = a2;
        v28 = a3;
      }

      else
      {
        v9 = *a2;
        if (v9 == 32)
        {
          v10 = a3;
          do
          {
            sub_1000CE6A4(v7, v8++);
            v11 = *++v7;
            v9 = v11;
          }

          while (v11 == 32);
          a3 = v10;
        }

        v35 = 0;
        if ((a4 & 2) == 0)
        {
          if ((a4 & 4) != 0)
          {
            if (v9)
            {
              do
              {
                v7 += sub_1000CE6A4(v7, &v35);
                v35 = sub_1000CA73C(v35);
                *v8++ = v35;
              }

              while (*v7);
            }
          }

          else if (v9)
          {
            v12 = 1;
            do
            {
              v13 = sub_1000CE6A4(v7, &v35);
              v14 = v35;
              if (v12)
              {
                v14 = sub_1000CA73C(v35);
                v35 = v14;
              }

              v7 += v13;
              *v8++ = v14;
              v12 = v14 == 32;
            }

            while (*v7);
          }

          *v8 = 0;
          return 0;
        }

        v30 = a3;
        v31 = &v7[sub_1000CE6A4(v7, &v35)];
        v35 = sub_1000CA73C(v35);
        *v8++ = v35;
        v28 = v30 - 1;
        v27 = v31;
      }

      sub_1000CE884(v27, v28, v8);
      return 0;
    }

    v36 = 0;
    if (a4)
    {
      while (*v7)
      {
        v7 += sub_1000C7714(v7, a6, &v36);
        *v8++ = v36;
      }
    }

    else if ((a4 & 2) != 0)
    {
      for (i = sub_1000C7714(a2, a6, &v36); v36 == 32; i = sub_1000C7714(v7, a6, &v36))
      {
        v7 += i;
        *v8++ = 32;
      }

      v33 = &v7[sub_1000C7714(v7, a6, &v36)];
      v36 = sub_1000CA73C(v36);
      *v8 = v36;
      for (++v8; *v33; ++v8)
      {
        v33 += sub_1000C7714(v33, a6, &v36);
        *v8 = v36;
      }
    }

    else if ((a4 & 4) != 0)
    {
      if (*a2)
      {
        do
        {
          v7 += sub_1000C7714(v7, a6, &v36);
          v36 = sub_1000CA73C(v36);
          *v8++ = v36;
        }

        while (*v7);
      }
    }

    else if (*a2)
    {
      v23 = 1;
      do
      {
        v24 = sub_1000C7714(v7, a6, &v36);
        v25 = v36;
        if (v36 == 32)
        {
          v23 = 1;
        }

        else if (v23)
        {
          v26 = v24;
          v25 = sub_1000CA73C(v36);
          v24 = v26;
          v23 = 0;
          v36 = v25;
        }

        v7 += v24;
        *v8++ = v25;
      }

      while (*v7);
    }

    result = 0;
    *v8 = 0;
  }

  return result;
}

unint64_t sub_1000856D4(char *a1, int a2, uint64_t a3)
{
  v3 = a1;
  if ((a2 - 1) >= 3)
  {
    if (a2 != 4)
    {
      return 0;
    }

    if (!*a1)
    {
      return 0;
    }

    LODWORD(v6) = 0;
    v7 = 0;
    do
    {
      v3 += sub_1000C7714(v3, a3, &v7);
      v6 = sub_1000CE9F4(v7, v8) + v6;
    }

    while (*v3);
    return v6;
  }

  else
  {

    return sub_1000C7854(a1);
  }
}

void *sub_1000857EC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1000BBAE0(a1, "mwl", a2, a4, a5, a6, a7, a8);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = sub_1000C0034(888);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v36 = 0;
  if (sub_1000BBD54(v11, (v12 + 32)) && sub_1000BBD54(v11, (v13 + 36)) && sub_1000BBD54(v11, (v13 + 40)) && sub_1000BBD54(v11, (v13 + 44)) && sub_1000BBD54(v11, (v13 + 48)) && sub_1000BBE54(v11, (v13 + 120), 256, 1) && sub_1000BBE54(v11, (v13 + 376), 256, 1) && sub_1000BBD54(v11, (v13 + 632)) && sub_1000BBD54(v11, (v13 + 636)) && sub_1000BBD54(v11, (v13 + 640)) && sub_1000BBD54(v11, (v13 + 644)) && sub_1000BBD54(v11, (v13 + 648)) && sub_1000BBD54(v11, (v13 + 652)) && sub_1000BBD54(v11, (v13 + 656)) && sub_1000BBD54(v11, (v13 + 660)) && sub_1000BBD54(v11, (v13 + 664)) && sub_1000BBD54(v11, (v13 + 668)) && sub_1000BBD54(v11, (v13 + 672)) && sub_1000BBD54(v11, (v13 + 680)) && sub_1000BBD54(v11, (v13 + 688)) && sub_1000BBD54(v11, (v13 + 692)) && sub_1000BBD54(v11, (v13 + 696)))
  {
    if (sub_1000BBDFC(v11, (v13 + 700)))
    {
      if (sub_1000BBD54(v11, (v13 + 704)))
      {
        if (sub_1000BBDFC(v11, (v13 + 708)))
        {
          if (sub_1000BBDFC(v11, (v13 + 728)))
          {
            if (sub_1000BBDFC(v11, (v13 + 752)))
            {
              if (sub_1000BBD54(v11, (v13 + 732)) && sub_1000BBD54(v11, (v13 + 756)) && sub_1000BBD54(v11, (v13 + 760)) && sub_1000BBD54(v11, (v13 + 764)) && sub_1000BBD54(v11, (v13 + 768)) && sub_1000BBD54(v11, (v13 + 772)))
              {
                v35 = 0;
                if (sub_1000BBD54(v11, &v35))
                {
                  *(v13 + 776) = v35;
                  if (sub_1000BBD54(v11, &v35))
                  {
                    *(v13 + 780) = v35;
                    if (sub_1000BBD54(v11, (v13 + 784)) && sub_1000BBD54(v11, (v13 + 788)))
                    {
                      if (sub_1000BBD54(v11, (v13 + 792)) && sub_1000BBD54(v11, (v13 + 796)) && sub_1000BBD54(v11, (v13 + 800)) && sub_1000BBD54(v11, (v13 + 804)) && sub_1000BBD54(v11, (v13 + 808)) && sub_1000BBD54(v11, (v13 + 812)) && sub_1000BBD54(v11, (v13 + 816)))
                      {
                        sub_1000BBD54(v11, (v13 + 820));
                      }

                      if (sub_1000BBE54(v11, (v13 + 824), 8, 1))
                      {
                        *(v13 + 832) = sub_100020404((v13 + 824));
                        if (sub_1000BBD54(v11, &v35))
                        {
                          *(v13 + 836) = v35;
                          if (sub_1000BBD54(v11, (v13 + 880)))
                          {
                            v35 = 0;
                            if (sub_1000BBF0C(v11, 4, (v13 + 24), &v35))
                            {
                              v14 = *(v13 + 24);
                              if (v14)
                              {
                                v15 = v35;
                                if (v35 != *(v13 + 632))
                                {
                                  goto LABEL_95;
                                }

                                *(v13 + 16) = v14;
                              }

                              else
                              {
                                v15 = *(v13 + 632);
                                v14 = *(v13 + 16);
                              }

                              v16 = *(v14 + 4 * v15 - 4);
                              v35 = 0;
                              if (!sub_1000BBF0C(v11, 1, (v13 + 8), &v35))
                              {
                                goto LABEL_95;
                              }

                              v17 = *(v13 + 8);
                              if (v17)
                              {
                                if (v35 != v16)
                                {
                                  goto LABEL_95;
                                }
                              }

                              if (v17)
                              {
                                *v13 = v17;
                              }

                              v35 = 0;
                              if (!sub_1000BBF0C(v11, 2, (v13 + 80), &v35))
                              {
                                goto LABEL_95;
                              }

                              v18 = *(v13 + 80);
                              if (v18)
                              {
                                if (v35 != 257)
                                {
                                  goto LABEL_95;
                                }
                              }

                              if (v18)
                              {
                                *(v13 + 72) = v18;
                              }

                              v35 = 0;
                              if (!sub_1000BBF0C(v11, 1, (v13 + 64), &v35))
                              {
                                goto LABEL_95;
                              }

                              v19 = *(v13 + 64);
                              if (v19)
                              {
                                if (v35 != *(*(v13 + 72) + 512))
                                {
                                  goto LABEL_95;
                                }

                                *(v13 + 56) = v19;
                              }

                              v35 = 0;
                              if (!sub_1000BBF0C(v11, 2, (v13 + 112), &v35))
                              {
                                goto LABEL_95;
                              }

                              v20 = *(v13 + 112);
                              if (v20)
                              {
                                if (v35 != 257)
                                {
                                  goto LABEL_95;
                                }
                              }

                              if (v20)
                              {
                                *(v13 + 104) = v20;
                              }

                              v35 = 0;
                              if (!sub_1000BBF0C(v11, 1, (v13 + 96), &v35))
                              {
                                goto LABEL_95;
                              }

                              v21 = *(v13 + 96);
                              if (v21)
                              {
                                if (v35 != *(*(v13 + 104) + 512))
                                {
                                  goto LABEL_95;
                                }

                                *(v13 + 88) = v21;
                              }

                              if (sub_1000BBD54(v11, &v36))
                              {
                                if (v36)
                                {
                                  v22 = sub_100077B08(v11);
                                  *(v13 + 720) = v22;
                                  if (!v22)
                                  {
                                    goto LABEL_95;
                                  }

                                  *(v13 + 712) = v22;
                                }

                                v35 = 0;
                                v23 = (v13 + 872);
                                if (sub_1000BBF0C(v11, 1, (v13 + 872), &v35))
                                {
                                  if (*v23)
                                  {
                                    if (v35 != *(v13 + 880))
                                    {
                                      goto LABEL_95;
                                    }

                                    *(v13 + 864) = *v23;
                                  }

                                  v35 = 0;
                                  if (sub_1000BC25C(v11, (v13 + 856), &v35))
                                  {
                                    *(v13 + 848) = *(v13 + 856);
                                    if (sub_1000BBD54(v11, &v36 + 4))
                                    {
                                      if (!HIDWORD(v36))
                                      {
                                        goto LABEL_94;
                                      }

                                      v35 = 0;
                                      v24 = (v13 + 744);
                                      if (sub_1000BBF0C(v11, 4, (v13 + 744), &v35))
                                      {
                                        if (*v24)
                                        {
                                          if (v35 == *(v13 + 732) + 1)
                                          {
                                            *(v13 + 736) = *v24;
                                            goto LABEL_94;
                                          }

                                          goto LABEL_95;
                                        }

LABEL_94:
                                        *(v13 + 840) = 1;
                                        sub_1000BBBC4(v11);
                                        v32 = sub_1000BFBD8(0x220uLL, v25, v26, v27, v28, v29, v30, v31);
                                        memcpy(v32, off_1000FDB00, 0x1E0uLL);
                                        *(v32 + 60) = v13;
                                        *(v32 + 61) = v13;
                                        *(v32 + 128) = *(v13 + 636);
                                        *(v32 + 129) = *(v13 + 640);
                                        *(v32 + 130) = *(v13 + 648);
                                        *(v32 + 131) = *(v13 + 644);
                                        *(v32 + 62) = a3;
                                        *(v32 + 63) = a4;
                                        v33 = sub_10008B608(*(v13 + 32), *(v13 + 688), *(v13 + 700), *(v13 + 728), *(v13 + 712), *(v13 + 832), *(v13 + 776), (v13 + 824), a3, *(v13 + 752), *(v13 + 772));
                                        result = v32;
                                        *(v32 + 66) = v33;
                                        return result;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_95:
  sub_1000BBBC4(v11);
  sub_1000BFEC4(v13);
  return 0;
}

uint64_t sub_100085EA0(void *a1)
{
  v2 = a1[61];
  if (*(v2 + 840))
  {
    if (*(v2 + 856))
    {
      v3 = 8 * *(a1[60] + 728);
      do
      {
        sub_1000BFEC4(*(*(v2 + 856) + v3));
        v3 -= 8;
      }

      while (v3 != -8);
      sub_1000BFEC4(*(v2 + 856));
    }

    *(v2 + 848) = 0u;
    sub_1000BFEC4(*(v2 + 8));
    sub_1000BFEC4(*(v2 + 24));
    sub_100089A04(v2);
    sub_100077390(*(v2 + 720));
    sub_1000BFEC4(*(v2 + 872));
    sub_1000BFEC4(*(v2 + 744));
    sub_1000BFEC4(v2);
  }

  sub_10008BB3C(a1[66]);

  return sub_1000BFEC4(a1);
}

uint64_t sub_100085F88(void *a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v11 = a1[60];
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = &unk_1000F298E;
  }

  if (v11[8] >= 1)
  {
    v13 = v11[194];
    v14 = (4 * sub_1000CB75C(a2)) | 1;
    v15 = v14;
    v23 = sub_1000C9F54(v14, v16, v17, v18, v19, v20, v21, v22);
    if (v13 == 4)
    {
      v24 = 3;
    }

    else
    {
      v24 = v13;
    }

    if (sub_1000BD0C0(v24, a2, v14, v23) == 2)
    {
      sub_1000CA03C(v23, v14);
    }

    else
    {
      v50 = v8;
      v32 = sub_1000C9F54(v14, v25, v26, v27, v28, v29, v30, v31);
      sub_100084C5C(v32, a2, v11[208], v11[194], 0, 0);
      if (v11[208])
      {
        v33 = sub_100084B10(a2);
      }

      else
      {
        v33 = 128;
      }

      v34 = ((4 * sub_1000CB75C(v12)) | 1);
      v42 = sub_1000C9F54(v34, v35, v36, v37, v38, v39, v40, v41);
      if (sub_100084C5C(v42, v12, 0, v11[195], a1[61] + 784, 0) == 1)
      {
        v43 = v42;
        v44 = v34;
      }

      else
      {
        v49 = v34;
        memset(v51, 0, sizeof(v51));
        v52 = xmmword_1000F10F0;
        v45 = sub_10008ABD4(a1, &v52, v51, v23, v32, v33);
        if (v45 != 0xFFFFFF)
        {
          v46 = v45;
          if (!sub_10008A44C(v11, v51, v42))
          {
LABEL_25:
            sub_1000CA03C(v42, v49);
            sub_1000CA03C(v32, v15);
            sub_1000CA03C(v23, v15);
            v8 = v50;
            if (v46 != 0xFFFFFF)
            {
              return v46;
            }

            goto LABEL_18;
          }

          while (1)
          {
            sub_10008A594(v11, v51, 1u);
            v48 = sub_10008B348(a1, &v52, v51, v23, v32, v33);
            if (!v48)
            {
              break;
            }

            v46 = (v48 + v46);
            if (!sub_10008A44C(v11, v51, v42))
            {
              goto LABEL_25;
            }
          }
        }

        v43 = v42;
        v44 = v49;
      }

      sub_1000CA03C(v43, v44);
      sub_1000CA03C(v32, v15);
      sub_1000CA03C(v23, v15);
      v8 = v50;
    }
  }

LABEL_18:
  if (v8)
  {
    return 0xFFFFFFLL;
  }

  else
  {
    return sub_10008BC1C(a1[66], a2, v12, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100086208(void *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!(a5 | a4))
  {
    return 0;
  }

  v6 = a4;
  v11 = a1[60];
  v10 = a1[61];
  v12 = ((4 * sub_1000CB75C(a2)) | 1);
  v20 = sub_1000C9F54(v12, v13, v14, v15, v16, v17, v18, v19);
  if (sub_100084C5C(v20, a2, 0, *(v11 + 780), v10 + 784, 0) == 1)
  {
    sub_1000CA03C(v20, v12);
    v21 = a1[66];

    return sub_10008C168(v21, a2, a3, v6, a5);
  }

  v34[1] = 0;
  v34[2] = 0;
  v33 = v12;
  v34[0] = *v11;
  v32 = a2;
  if (!*(v11 + 736))
  {
    if (*(v11 + 32) >= 1)
    {
      v28 = 0;
      v29 = 0;
      while (1)
      {
        sub_100089EF0(v11, v34);
        if (!sub_10008A44C(v11, v34, v20))
        {
          if (v29 >= v6)
          {
            v29 = (v29 + 1);
          }

          else
          {
            *(a3 + 4 * v29) = v28;
            v29 = (v29 + 1);
            if (!a5 && v29 == v6)
            {
              sub_1000CA03C(v20, v33);
              return v6;
            }
          }
        }

        sub_10008A594(v11, v34, 1u);
        if (++v28 >= *(v11 + 32))
        {
          goto LABEL_33;
        }
      }
    }

    goto LABEL_32;
  }

  v23 = *(v11 + 732);
  v24 = v23 - 1;
  if (v23 < 1)
  {
    goto LABEL_32;
  }

  v25 = a3;
  LODWORD(v26) = 0;
  do
  {
    v27 = (v24 + v26) >> 1;
    sub_10008AB64(v11, *(*(v11 + 736) + 4 * v27), v34);
    sub_100089EF0(v11, v34);
    if (sub_10008A44C(v11, v34, v20) >= 0)
    {
      v24 = v27 - 1;
    }

    else
    {
      LODWORD(v26) = v27 + 1;
    }
  }

  while (v26 <= v24);
  a3 = v25;
  if (v26 >= *(v11 + 732))
  {
LABEL_32:
    v29 = 0;
    goto LABEL_33;
  }

  v26 = v26;
  if (a5)
  {
    v29 = 0;
    do
    {
      v30 = *(*(v11 + 736) + 4 * v26 + 4 * v29);
      sub_10008AB64(v11, v30, v34);
      sub_100089EF0(v11, v34);
      if (sub_10008A44C(v11, v34, v20))
      {
        break;
      }

      if (v29 < v6)
      {
        *(a3 + 4 * v29) = v30;
      }

      ++v29;
    }

    while (v26 + v29 < *(v11 + 732));
  }

  else
  {
    v29 = 0;
    do
    {
      v31 = *(*(v11 + 736) + 4 * v26);
      sub_10008AB64(v11, v31, v34);
      sub_100089EF0(v11, v34);
      if (sub_10008A44C(v11, v34, v20))
      {
        break;
      }

      if (v29 >= v6)
      {
        v29 = (v29 + 1);
      }

      else
      {
        *(a3 + 4 * v29) = v31;
        v29 = (v29 + 1);
        if (v29 == v6)
        {
          return v6;
        }
      }

      ++v26;
    }

    while (v26 < *(v11 + 732));
  }

LABEL_33:
  sub_1000CA03C(v20, v33);
  if (a5 || v6 > v29)
  {
    return sub_10008C168(a1[66], v32, a3, (v6 - v29) & ~((v6 - v29) >> 31), a5) + v29;
  }

  else
  {
    return v29;
  }
}

void *sub_100086584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 512) + 1;
  v11 = *(a1 + 516) + 1;
  v12 = *(a1 + 480);
  if (*(v12 + 32) > a2)
  {
    v43[1] = 0;
    v43[2] = 0;
    v42 = 0;
    v13 = *(v12 + 696);
    v14 = a2 & ~(-1 << v13);
    v43[0] = (*v12 + *(*(v12 + 16) + 4 * (a2 >> v13)));
    if (*(v12 + 776) == 4)
    {
      v15 = 3;
    }

    else
    {
      v15 = *(v12 + 776);
    }

    v16 = (4 * v10) | 1;
    v17 = sub_1000C9F54(v16, a2, a3, a4, a5, a6, a7, a8);
    for (i = sub_1000C9F54(v16, v18, v19, v20, v21, v22, v23, v24); v14; --v14)
    {
      sub_10008A13C(v12, v43, v17, i, &v42);
      sub_10008A594(v12, v43, 0);
    }

    sub_10008A13C(v12, v43, v17, i, &v42);
    if (*(v12 + 832))
    {
      if (v42 != 16)
      {
        v37 = sub_1000C7854(v17);
        sub_1000852FC(a3, v17, v37 + 1, v42, *(v12 + 776), 0);
        goto LABEL_16;
      }

      v26 = v15;
      v27 = i;
    }

    else
    {
      v26 = v15;
      v27 = v17;
    }

    sub_1000BD16C(v26, v27, v10, a3);
LABEL_16:
    v38 = 4 * v11;
    v39 = sub_1000C9F54(v38, v30, v31, v32, v33, v34, v35, v36);
    sub_10008A500(v12, v43, v39);
    v40 = sub_1000C7854(v39);
    sub_1000852FC(a4, v39, v40 + 1, 1, *(*(a1 + 480) + 780), *(a1 + 488) + 784);
    sub_1000CA03C(v39, v38);
    sub_1000CA03C(i, v16);
    return sub_1000CA03C(v17, v16);
  }

  v28 = *(a1 + 528);

  return sub_10008C394(v28, a2, a3, v10, a4, v11, a7, a8);
}

void *sub_1000867A8(void *result, unsigned int *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 1)
  {
    v8 = a5;
    v11 = result;
    v12 = a3;
    do
    {
      v14 = *a2++;
      v13 = v14;
      v16 = *a4++;
      v15 = v16;
      v17 = *v8++;
      result = sub_100086584(v11, v13, v15, v17, a5, a6, a7, a8);
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_100086830(uint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5, int a6, int a7)
{
  v9 = a4;
  v12 = *(a1 + 480);
  v13 = *(v12 + 776);
  __n = a3;
  v14 = ((4 * sub_1000CB75C(a4)) | 1);
  v22 = sub_1000C9F54(v14, v15, v16, v17, v18, v19, v20, v21);
  v23 = (4 * __n) | 1;
  if (v13 == 4)
  {
    v13 = 3;
    sub_1000BD110(3, v9, a3, v23, v22);
  }

  else if (sub_1000BD110(v13, v9, a3, v23, v22) == 2)
  {
    sub_1000CA03C(v22, v14);
    v24 = *(a1 + 528);

    return sub_10008FBA0(v24, a2, a3, v9, a5, a6);
  }

  v80 = a3;
  sub_1000C7854(v22);
  v26 = v14;
  sub_1000BD0C0(v13, v9, v14, v22);
  v89 = 0;
  v90 = 0;
  memset(v88, 0, sizeof(v88));
  __n_7 = 0;
  v34 = sub_1000C9F54(v14, v27, v28, v29, v30, v31, v32, v33);
  sub_100084C5C(v34, v9, *(v12 + 832), *(v12 + 776), 0, &__n);
  v81 = a5;
  v82 = a6;
  v83 = v22;
  if (*(v12 + 832))
  {
    v42 = sub_100084B10(v9);
  }

  else
  {
    a2 = 0;
    v42 = 128;
  }

  v43 = sub_1000C9F54(v14, v35, v36, v37, v38, v39, v40, v41);
  memcpy(v43, v34, __n);
  *(v43 + __n) = 0;
  v90 = 0;
  HIDWORD(v89) = 0;
  v44 = sub_10008ABD4(a1, &v89, v88, v43, v43, v42);
  sub_1000CA03C(v43, v26);
  v79 = a1;
  v45 = (sub_1000811C4(a1) + 1);
  v53 = sub_1000C9F54(v45, v46, v47, v48, v49, v50, v51, v52);
  v61 = sub_1000C9F54(v45, v54, v55, v56, v57, v58, v59, v60);
  if (v44 == 0xFFFFFF)
  {
    goto LABEL_31;
  }

  v77 = v42;
  v62 = *(v12 + 696);
  v63 = -1 << v62;
  v64 = *(v12 + 16);
  v65 = *v12;
  v66 = (*v12 + *(v64 + 4 * (v44 >> v62)));
  v88[0] = v66;
  v67 = (v65 + *(v64 + 4 * *(v12 + 632) - 4));
  v68 = v44 & ~v63;
  if (v68)
  {
    do
    {
      sub_10008A13C(v12, v88, v53, v61, &__n_7);
      sub_10008A594(v12, v88, 0);
      --v68;
    }

    while (v68);
    v66 = v88[0];
  }

  if (v66 >= v67)
  {
LABEL_31:
    v69 = 0;
  }

  else
  {
    v78 = v9;
    v69 = 0;
    if (a2)
    {
      while (1)
      {
        while (1)
        {
          sub_10008A13C(v12, v88, v53, v61, &__n_7);
          v70 = sub_1000C7854(v53);
          v72 = sub_1000C7898(v53, v34, v70, v71);
          if (v72 > 0)
          {
            goto LABEL_41;
          }

          v73 = __n;
          if (v70 >= __n)
          {
            break;
          }

          ++v44;
          sub_10008A594(v12, v88, 0);
          if (v88[0] >= v67)
          {
            goto LABEL_41;
          }
        }

        if (v72)
        {
LABEL_25:
          v9 = v78;
          goto LABEL_26;
        }

        if (__n_7 == 16)
        {
          goto LABEL_24;
        }

        if (v77 == 16)
        {
          break;
        }

        if ((__n_7 & v77) == 0)
        {
          goto LABEL_25;
        }

LABEL_29:
        *(v81 + 4 * v69) = v44;
        v69 = (v69 + 1);
        v9 = v78;
        if (v69 >= v82)
        {
          goto LABEL_40;
        }

LABEL_26:
        ++v44;
        sub_10008A594(v12, v88, 0);
        if (v88[0] >= v67)
        {
          goto LABEL_42;
        }
      }

      sub_100084ED4(v61, v53, v45, __n_7, *(v12 + 776), 0);
LABEL_24:
      if (sub_1000C7898(v61, v83, v70, v73))
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    while (1)
    {
      sub_10008A13C(v12, v88, v53, v61, &__n_7);
      v74 = sub_1000C7854(v53);
      v76 = sub_1000C7898(v53, v34, v74, v75);
      if (v76 > 0)
      {
        break;
      }

      if (v74 >= __n)
      {
        if (v76)
        {
          v9 = v78;
        }

        else
        {
          *(v81 + 4 * v69) = v44;
          v69 = (v69 + 1);
          v9 = v78;
          if (v69 >= v82)
          {
LABEL_40:
            sub_1000CA03C(v61, v45);
            sub_1000CA03C(v53, v45);
            sub_1000CA03C(v34, v26);
            sub_1000CA03C(v83, v26);
            return v69;
          }
        }

        ++v44;
        sub_10008A594(v12, v88, 0);
        if (v88[0] >= v67)
        {
          goto LABEL_42;
        }
      }

      else
      {
        ++v44;
        sub_10008A594(v12, v88, 0);
        if (v88[0] >= v67)
        {
          break;
        }
      }
    }

LABEL_41:
    v9 = v78;
  }

LABEL_42:
  sub_1000CA03C(v61, v45);
  sub_1000CA03C(v53, v45);
  sub_1000CA03C(v34, v26);
  sub_1000CA03C(v83, v26);
  if (!a7 && v82 > v69)
  {
    return sub_10008FBA0(*(v79 + 528), a2, v80, v9, v81 + 4 * v69, v82 - v69) + v69;
  }

  return v69;
}

uint64_t sub_100086D4C(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 480);
  if (*(v2 + 32) <= a2)
  {
    return 0x7FFFLL;
  }

  else
  {
    return sub_10008B368(v2, a2, 2);
  }
}

uint64_t sub_100086D8C(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 480);
  if (*(v2 + 32) <= a2)
  {
    return 0xFFFFLL;
  }

  else
  {
    return sub_10008B368(v2, a2, 3);
  }
}

uint64_t sub_100086DCC(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 480);
  if (*(v2 + 32) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_10008B368(v2, a2, 4);
  }
}

uint64_t sub_100086DEC(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 480);
  if (*(v2 + 44) && *(v2 + 32) > a2)
  {
    return sub_10008B368(v2, a2, 5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100086E14(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 480);
  if (*(v2 + 48) && *(v2 + 32) > a2)
  {
    return sub_10008B368(v2, a2, 6);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100086E3C(uint64_t a1, int a2)
{
  if (*(*(a1 + 480) + 32) <= a2)
  {
    return sub_10008D080(*(a1 + 528), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100086E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 524);
  v34 = 0;
  v35 = 0;
  v16 = sub_1000CA0BC();
  if (a3 < 1)
  {
    v22 = 0;
  }

  else
  {
    v17 = 2 * v8;
    v22 = sub_1000C9F54(8 * a3, v9, v10, v11, v12, v13, v14, v15);
    v23 = 0;
    do
    {
      v22[v23++] = sub_1000C9F54(v17 + 2, v18, v19, v20, v21, v13, v14, v15);
    }

    while (a3 != v23);
  }

  v24 = sub_100088860(a1, a2, v22, a3, 0, v13, v14, v15);
  if (v24 >= a3)
  {
    v28 = a3;
  }

  else
  {
    v28 = v24;
  }

  v29 = sub_10008C8E0(*(a1 + 528), a2, &v22[v28], (a3 - v28), (*(a1 + 524) + 1), v25, v26, v27) + v24;
  if (v29 >= a3)
  {
    a3 = a3;
  }

  else
  {
    a3 = v29;
  }

  sub_10009156C(*(a1 + 528), &v35, &v34);
  if (a3 >= 1)
  {
    do
    {
      v31 = *v22++;
      v30 = v31;
      v32 = *a4++;
      sub_1000919FC(*(*(a1 + 480) + 712), *(*(a1 + 480) + 728), v35, v34, v30, v32);
      --a3;
    }

    while (a3);
  }

  sub_1000CA0A0(v16);
  return v29;
}

uint64_t sub_100086FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v13 = sub_100088860(a1, a2, a4, a3, a5, a6, a7, a8);
  v17 = v13;
  if (a5 && qword_1001065A8 && *(qword_1001065A8 + 3892) && v13 >= 1)
  {
    v19 = *(a1 + 480);
    v20 = (v19 + 728);
    if (v13 >= 8 && (v19 + 730 <= a5 || v20 >= &a5[v13]))
    {
      v29 = vld1_dup_s16(v20);
      v21 = v13 & 0x7FFFFFF8;
      v30.i64[0] = 0x100000001;
      v30.i64[1] = 0x100000001;
      v31 = vaddw_u16(v30, v29);
      v32.i64[0] = 0xFF000000FFLL;
      v32.i64[1] = 0xFF000000FFLL;
      v33 = v21;
      v34 = a5;
      do
      {
        v35 = vmlaq_s32(vandq_s8(v34[1], v32), v31, vshrq_n_u32(v34[1], 8uLL));
        *v34 = vmlaq_s32(vandq_s8(*v34, v32), v31, vshrq_n_u32(*v34, 8uLL));
        v34[1] = v35;
        v34 += 2;
        v33 -= 8;
      }

      while (v33);
      if (v21 == v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = &a5[v21];
    v23 = v13 - v21;
    do
    {
      *v22 = (*v22 >> 8) + (*v22 >> 8) * *v20 + *v22;
      ++v22;
      --v23;
    }

    while (v23);
  }

LABEL_13:
  if (v13 >= v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = v13;
  }

  v25 = sub_10008C8E0(*(a1 + 528), a2, &a4[v24], v10 - v24, (*(a1 + 524) + 1), v14, v15, v16);
  v26 = v25 + v17;
  if (a5 && v25 >= 1)
  {
    if (v26 <= (v17 + 1))
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v25 + v17;
    }

    memset(&a5[v17], 255, 4 * (v27 + ~v17) + 4);
  }

  return v26;
}

uint64_t sub_100087130(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, _DWORD *a5, int *a6, uint64_t a7, uint64_t a8)
{
  v11 = a3;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v12 = *(a1 + 480);
  if (*(v12 + 32) <= a2)
  {
    v18 = *(a1 + 524) + 1;
    v19 = 2 * v18;
    v65 = sub_1000C9F54(2 * v18, a2, a3, a4, a5, a6, a7, a8);
    v25 = sub_10008C8E0(*(a1 + 528), a2, &v65, 1, v18, v22, v23, v24);
    if (v25 < 1)
    {
      v35 = v25;
      v26 = 0;
    }

    else
    {
      if (v11 < 1)
      {
        v26 = 0;
      }

      else
      {
        *a4 = -1;
        *a5 = 0;
        v26 = 1;
      }

      v35 = 1;
    }

    sub_1000CA03C(v65, v19);
    goto LABEL_69;
  }

  v65 = 0;
  v66 = 0;
  sub_10008AB64(v12, a2, &v67);
  sub_10008A88C(v12, &v67, 1);
  if ((v69 & 0x200000000) == 0)
  {
    v13 = *(v12 + 40);
    if (v13 < 1)
    {
      goto LABEL_68;
    }

    v14 = v69;
    v15 = v67;
    v16 = v68;
    v17 = v12 + 376;
    if (*(v12 + 752) != -1)
    {
      if (v69)
      {
        v14 = v69 - 1;
      }

      else
      {
        v15 = v67 + 1;
        v42 = *v67;
        if (*(v17 + v42) != 2)
        {
LABEL_33:
          v48 = *v15++;
          v47 = v48;
          if (*(v17 + v48) == 2)
          {
            v49 = (*(v12 + 104) + 2 * v47);
            v50 = *v49;
            v45 = v49[1] + ~v50;
            v16 = *(v12 + 88) + v50;
            v46 = (v16 + 1);
            if (*v16)
            {
              goto LABEL_35;
            }
          }

          else if (v47)
          {
            goto LABEL_39;
          }

LABEL_68:
          v26 = 0;
          v35 = 0;
          goto LABEL_69;
        }

        v43 = (*(v12 + 104) + 2 * v42);
        v44 = *v43;
        v14 = v43[1] + ~v44;
        v16 = *(v12 + 88) + v44;
      }

      ++v16;
    }

    if (v14)
    {
      v45 = v14 - 1;
      v46 = (v16 + 1);
      if (!*v16)
      {
        goto LABEL_68;
      }

LABEL_35:
      if (v45)
      {
        v51 = v45 - 1;
        v52 = (v16 + 2);
        LODWORD(v16) = *v46;
        if (v13 == 1)
        {
LABEL_48:
          if (v11 < 1)
          {
            v26 = 0;
            v35 = 1;
          }

          else
          {
            v57 = *(v12 + 668) + v16;
            *a4 = v57;
            if (qword_1001065A8 && *(qword_1001065A8 + 3892))
            {
              *a4 = (v57 >> 8) + (v57 >> 8) * *(v12 + 728) + v57;
            }

            *a5 = 0;
            v26 = 1;
            v35 = 1;
          }

          goto LABEL_69;
        }

        goto LABEL_41;
      }

LABEL_39:
      v53 = *v15++;
      v16 = v53;
      if (*(v17 + v53) != 2)
      {
        if (v13 == 1)
        {
          goto LABEL_48;
        }

LABEL_44:
        v56 = *v15;
        if (*(v17 + v56) != 2)
        {
LABEL_47:
          LODWORD(v16) = v16 | (v56 << 8);
          goto LABEL_48;
        }

        v52 = (*(v12 + 88) + *(*(v12 + 104) + 2 * v56));
LABEL_46:
        LODWORD(v56) = *v52;
        goto LABEL_47;
      }

      v16 = *(v12 + 104) + 2 * v16;
      v54 = *v16;
      v51 = *(v16 + 2) + ~v54;
      v55 = (*(v12 + 88) + v54);
      v52 = v55 + 1;
      LODWORD(v16) = *v55;
      if (v13 == 1)
      {
        goto LABEL_48;
      }

LABEL_41:
      if (v51)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    goto LABEL_33;
  }

  v27 = v12 + 376;
  v28 = v67 + 1;
  v29 = *v67;
  if (*(v12 + 376 + v29) != 2)
  {
    v32 = v69;
    if (v29 != 255)
    {
      goto LABEL_12;
    }

LABEL_17:
    if (v32)
    {
      v36 = v32 - 1;
      v37 = v68;
      v38 = ++v68;
      LODWORD(v34) = *v37;
      if (*(v12 + 752) == -1)
      {
LABEL_58:
        v67 = v28;
        LODWORD(v69) = v36;
        if (!v34)
        {
          goto LABEL_68;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v28 = v67 + 2;
      v34 = v67[1];
      if (*(v27 + v34) != 2)
      {
        if (*(v12 + 752) == -1)
        {
          goto LABEL_67;
        }

        goto LABEL_55;
      }

      v39 = (*(v12 + 104) + 2 * v34);
      v40 = *v39;
      v36 = v39[1] + ~v40;
      v41 = (*(v12 + 88) + v40);
      v38 = v41 + 1;
      v68 = v41 + 1;
      LODWORD(v34) = *v41;
      if (*(v12 + 752) == -1)
      {
        goto LABEL_58;
      }
    }

    if (v36)
    {
      --v36;
LABEL_57:
      v68 = v38 + 1;
      goto LABEL_58;
    }

LABEL_55:
    v59 = *v28++;
    v58 = v59;
    if (*(v27 + v59) == 2)
    {
      v60 = (*(v12 + 104) + 2 * v58);
      v61 = *v60;
      v36 = v60[1] + ~v61;
      v38 = (*(v12 + 88) + v61);
      goto LABEL_57;
    }

LABEL_67:
    v67 = v28;
    LODWORD(v69) = 0;
    if (!v34)
    {
      goto LABEL_68;
    }

    goto LABEL_59;
  }

  v30 = (*(v12 + 104) + 2 * v29);
  v31 = *v30;
  v32 = v30[1] + ~v31;
  v33 = (*(v12 + 88) + v31);
  v68 = v33 + 1;
  if (*v33 == 255)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (*(v12 + 752) != -1)
  {
    ++v67;
    LODWORD(v69) = v32;
  }

  LODWORD(v34) = 1;
LABEL_59:
  v62 = 0;
  v35 = 0;
  v26 = 0;
  do
  {
    sub_10008979C(v12, &v65, &v67);
    if (v66)
    {
      ++v35;
      if (v26 < v11)
      {
        v63 = HIDWORD(v66);
        a4[v26] = HIDWORD(v66);
        if (qword_1001065A8 && *(qword_1001065A8 + 3892))
        {
          a4[v26] = (v63 >> 8) + (v63 >> 8) * *(v12 + 728) + v63;
        }

        a5[v26] = v62;
        v26 = (v26 + 1);
      }
    }

    ++v62;
  }

  while (v34 != v62);
LABEL_69:
  *a6 = v35;
  return v26;
}

uint64_t sub_1000875D8(uint64_t result, signed int a2, unsigned int a3, _DWORD *a4)
{
  v4 = *(result + 480);
  *a4 = -1;
  if ((a3 & 0x80000000) != 0 || *(v4 + 32) <= a2)
  {
    return result;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v43 = 0;
  v44 = 0;
  sub_10008AB64(v4, a2, &v45);
  result = sub_10008A88C(v4, &v45, 1);
  if ((v47 & 0x200000000) != 0)
  {
    v12 = v4 + 376;
    v13 = v45 + 1;
    v14 = *v45;
    if (*(v4 + 376 + v14) == 2)
    {
      v15 = (*(v4 + 104) + 2 * v14);
      v16 = *v15;
      v17 = v15[1] + ~v16;
      v18 = (*(v4 + 88) + v16);
      v46 = v18 + 1;
      if (*v18 != 255)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = v47;
      if (v14 != 255)
      {
LABEL_11:
        LODWORD(v19) = 1;
        if (*(v4 + 752) == -1)
        {
          if (a3)
          {
            return result;
          }

LABEL_27:
          HIDWORD(v44) = -1;
          v27 = a3 + 1;
          do
          {
            result = sub_10008979C(v4, &v43, &v45);
            --v27;
          }

          while (v27);
          v28 = HIDWORD(v44);
          *a4 = HIDWORD(v44);
          if (qword_1001065A8 && *(qword_1001065A8 + 3892))
          {
            *a4 = (v28 >> 8) + (v28 >> 8) * *(v4 + 728) + v28;
          }

          return result;
        }

LABEL_26:
        v45 = v13;
        LODWORD(v47) = v17;
        if (v19 <= a3)
        {
          return result;
        }

        goto LABEL_27;
      }
    }

    if (v17)
    {
      --v17;
      v19 = v46;
      v20 = ++v46;
      LODWORD(v19) = *v19;
      if (*(v4 + 752) == -1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = v45 + 2;
      v19 = v45[1];
      if (*(v12 + v19) != 2)
      {
        if (*(v4 + 752) == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }

      v21 = (*(v4 + 104) + 2 * v19);
      v22 = *v21;
      v17 = v21[1] + ~v22;
      v19 = *(v4 + 88) + v22;
      v20 = (v19 + 1);
      v46 = (v19 + 1);
      LODWORD(v19) = *v19;
      if (*(v4 + 752) == -1)
      {
        goto LABEL_26;
      }
    }

    if (v17)
    {
      --v17;
LABEL_25:
      v46 = v20 + 1;
      goto LABEL_26;
    }

LABEL_23:
    v24 = *v13++;
    v23 = v24;
    if (*(v12 + v24) == 2)
    {
      v25 = (*(v4 + 104) + 2 * v23);
      v26 = *v25;
      v17 = v25[1] + ~v26;
      v20 = (*(v4 + 88) + v26);
      goto LABEL_25;
    }

LABEL_32:
    v45 = v13;
    LODWORD(v47) = 0;
    if (v19 <= a3)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (!a3)
  {
    v7 = *(v4 + 40);
    if (v7 >= 1)
    {
      v8 = v47;
      v9 = v45;
      v10 = v46;
      v11 = v4 + 376;
      if (*(v4 + 752) != -1)
      {
        if (v47)
        {
          v8 = v47 - 1;
        }

        else
        {
          v9 = v45 + 1;
          v29 = *v45;
          if (*(v11 + v29) != 2)
          {
            goto LABEL_40;
          }

          v30 = (*(v4 + 104) + 2 * v29);
          v31 = *v30;
          v8 = v30[1] + ~v31;
          v10 = *(v4 + 88) + v31;
        }

        ++v10;
      }

      if (v8)
      {
        v32 = v8 - 1;
        if (!v32)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

LABEL_40:
      v34 = *v9++;
      v33 = v34;
      if (*(v11 + v34) != 2 || (v35 = (*(v4 + 104) + 2 * v33), v36 = *v35, v32 = v35[1] + ~v36, v10 = *(v4 + 88) + v36, !v32))
      {
LABEL_44:
        v39 = *v9++;
        v10 = v39;
        if (*(v11 + v39) == 2)
        {
          v10 = *(v4 + 104) + 2 * v10;
          v40 = *v10;
          v37 = *(v10 + 2) + ~v40;
          v41 = (*(v4 + 88) + v40);
          v38 = v41 + 1;
          LODWORD(v10) = *v41;
          if (v7 != 1)
          {
            goto LABEL_46;
          }
        }

        else if (v7 != 1)
        {
LABEL_49:
          v42 = *v9;
          if (*(v11 + v42) != 2)
          {
LABEL_52:
            LODWORD(v10) = v10 | (v42 << 8);
            goto LABEL_53;
          }

          v38 = (*(v4 + 88) + *(*(v4 + 104) + 2 * v42));
LABEL_51:
          LODWORD(v42) = *v38;
          goto LABEL_52;
        }

        goto LABEL_53;
      }

LABEL_42:
      v37 = v32 - 1;
      v38 = (v10 + 2);
      LODWORD(v10) = *(v10 + 1);
      if (v7 != 1)
      {
LABEL_46:
        if (v37)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

LABEL_53:
      *a4 = *(v4 + 668) + v10;
    }
  }

  return result;
}

uint64_t sub_100087994(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  sub_10009156C(*(a1 + 528), &v8, &v7);
  return sub_1000919FC(*(*(a1 + 480) + 712), *(*(a1 + 480) + 728), v8, v7, a2, a3);
}

unint64_t sub_1000879FC(uint64_t a1, unsigned __int16 *a2)
{
  result = sub_10008E7D4(*(a1 + 528), a2);
  if (result)
  {
    v5 = 0;
    v6 = 0;
    sub_10009156C(*(a1 + 528), &v6, &v5);
    result = sub_100098BE4(a2);
    if (result)
    {
      return sub_1000881C4(a1, a2) != 255 && sub_100091D34(*(*(a1 + 480) + 712), *(*(a1 + 480) + 728), v6, v5, a2) != 0;
    }
  }

  return result;
}

uint64_t sub_100087A9C(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unint64_t *a4, uint64_t a5, int a6)
{
  v37 = 0;
  v38 = 0;
  v35 = sub_1000CA0BC();
  v9 = sub_10009156C(*(a1 + 528), &v38, &v37);
  v36 = sub_1000C9F54(8 * a5, v10, v11, v12, v13, v14, v15, v16);
  if (a5 >= 1)
  {
    v17 = a5;
    v18 = v36;
    do
    {
      v19 = *a4;
      v20 = sub_100098BE4(*a4) + 1;
      v28 = sub_1000C9F54(2 * v20, v21, v22, v23, v24, v25, v26, v27);
      *v18 = v28;
      if (!sub_100091DF0(*(*(a1 + 480) + 728), *(*(a1 + 480) + 700), v38, v37, v9, v19, v28))
      {
        v29 = sub_1000905E0(*(a1 + 528), v20, v19);
        *v28 = v29;
        if (v29 == 0xFFFF)
        {
          v30 = 0xFFFFFFLL;
          goto LABEL_8;
        }

        v28[1] = -1;
      }

      ++v18;
      ++a4;
      --v17;
    }

    while (v17);
  }

  v30 = sub_100087BE4(a1, a2, a3, a5, v36, a6, 0);
LABEL_8:
  sub_1000CA0A0(v35);
  return v30;
}

uint64_t sub_100087BE4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int16 **a5, int a6, int a7)
{
  v89 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v14 = sub_1000CA0BC();
  if (!a3 || !*a3)
  {
    goto LABEL_47;
  }

  v15 = *(a1 + 524) + 1;
  if (a4 != 1 || (*(*(a1 + 480) + 752) != 0xFFFF ? (v16 = qword_1001065A8 == 0) : (v16 = 1), v16))
  {
    if (!qword_1001065A8)
    {
      goto LABEL_47;
    }
  }

  else if (*(qword_1001065A8 + 3920))
  {
    if (sub_100086208(a1, a3, &v89, 1, 0))
    {
      v88 = sub_1000C9F54(2 * v15, v17, v18, v19, v20, v21, v22, v23);
      v24 = v89;
      v28 = sub_100088860(a1, v89, &v88, 1, 0, v25, v26, v27);
      if (v28 >= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v28;
      }

      sub_10008C8E0(*(a1 + 528), v24, &(&v88)[v32], (1 - v32), (*(a1 + 524) + 1), v29, v30, v31);
      sub_10009156C(*(a1 + 528), &v87, &v86);
      if (sub_100091AE0(v88, *a5, *(*(a1 + 480) + 712), *(*(a1 + 480) + 728), v87, v86))
      {
        a5 = &v88;
        a7 = 0;
      }
    }

    goto LABEL_47;
  }

  if (*(qword_1001065A8 + 3908))
  {
    v89 = sub_1000811BC(a1);
    if (v89 != 0xFFFFFF)
    {
      v83 = a6;
      v84 = v14;
      sub_10009156C(*(a1 + 528), &v87, &v86);
      v33 = sub_10008136C(a1);
      v48 = sub_1000C9F54(8 * v33, v34, v35, v36, v37, v38, v39, v40);
      if (v33 < 1)
      {
        sub_10008136C(a1);
        v14 = v84;
        a6 = v83;
      }

      else
      {
        v80 = a7;
        v81 = a2;
        v82 = a3;
        v49 = 0;
        v50 = v33;
        do
        {
          *(v48 + v49) = sub_1000C9F54(2 * v15, v41, v42, v43, v44, v45, v46, v47);
          v49 += 8;
        }

        while (8 * v33 != v49);
        sub_10008136C(a1);
        if (a4 > 0)
        {
          v51 = 0;
          v85 = 8 * a4;
          v52 = a5;
          do
          {
            v53 = &a5[v51];
            if (v51)
            {
              for (i = 0; i != v50; ++i)
              {
                v55 = (v48 + 8 * i);
                if (sub_100091C78(*v55, *v53, *(*(a1 + 480) + 712), *(*(a1 + 480) + 728), v87, v86))
                {
                  if (v52 == a5)
                  {
                    v63 = sub_1000C9F54(v85, v56, v57, v58, v59, v60, v61, v62);
                    v52 = v63;
                    v64 = 0;
                    if (v51 < 4)
                    {
                      goto LABEL_50;
                    }

                    if (v63 - a5 < 0x20)
                    {
                      goto LABEL_50;
                    }

                    v65 = (v63 + 16);
                    v67 = (a5 + 2);
                    v66 = v51 & 0xFFFFFFFFFFFFFFFCLL;
                    do
                    {
                      v68 = *v67;
                      *(v65 - 1) = *(v67 - 1);
                      *v65 = v68;
                      v67 += 2;
                      v65 += 2;
                      v66 -= 4;
                    }

                    while (v66);
                    v64 = v51 & 0x7FFFFFFFFFFFFFFCLL;
                    if (v51 != (v51 & 0x7FFFFFFFFFFFFFFCLL))
                    {
LABEL_50:
                      do
                      {
                        *(v63 + 8 * v64) = a5[v64];
                        ++v64;
                      }

                      while (v51 != v64);
                    }
                  }
                }

                else
                {
                  v55 = &a5[v51];
                }

                v52[v51] = *v55;
              }
            }

            else
            {
              v69 = v50;
              v70 = v48;
              do
              {
                if (sub_100091C78(*v70, *v53, *(*(a1 + 480) + 712), *(*(a1 + 480) + 728), v87, v86))
                {
                  v71 = v70;
                  if (v52 == a5)
                  {
                    v52 = sub_1000C9F54(v85, v72, v73, v74, v75, v76, v77, v78);
                    v71 = v70;
                  }
                }

                else
                {
                  v71 = a5;
                }

                *v52 = *v71;
                ++v70;
                --v69;
              }

              while (v69);
            }

            ++v51;
          }

          while (v51 != a4);
          a5 = v52;
        }

        a2 = v81;
        a3 = v82;
        v14 = v84;
        a6 = v83;
        a7 = v80;
      }
    }
  }

LABEL_47:
  v89 = sub_10008D3C4(*(a1 + 528), a2, a3, a5, a4, (a1 + 512), (a1 + 516), (a1 + 524), (a1 + 520), a6, a7);
  sub_1000CA0A0(v14);
  return v89;
}

uint64_t sub_100088044(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 480) + 32) <= a2)
  {
    v12 = 0;
  }

  else
  {
    v9 = a2;
    v10 = a3;
    v11 = sub_100088860(a1, a2, 0, 0, 0, a6, a7, a8);
    a2 = v9;
    a3 = v10;
    v12 = v11;
  }

  v13 = *(a1 + 528);

  return sub_10008E888(v13, a2, a3, v12, (a1 + 524), (a1 + 520));
}

uint64_t sub_1000880C8(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 480) + 32) <= a2)
  {
    v13 = 0;
    if (a3 >= 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v11 = a3;
  v12 = sub_100088860(a1, a2, 0, 0, 0, a6, a7, a8);
  a3 = v11;
  v13 = v12;
  if (v12 > v11)
  {
    return 0;
  }

LABEL_3:
  v14 = *(a1 + 528);

  return sub_10008F49C(v14, a2, a3, v13, a4, a6, a7, a8);
}

uint64_t sub_100088170(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 480) + 32);
  if (a2 == 0xFFFFFF)
  {
    if (v2 > 0)
    {
      return 0;
    }
  }

  else if (v2 - 1 > a2)
  {
    return (a2 + 1);
  }

  return sub_10009076C(*(a1 + 528), a2);
}

uint64_t sub_1000881C4(uint64_t a1, unsigned __int16 *a2)
{
  if (!*(*(a1 + 480) + 864))
  {
    return 2;
  }

  v24 = 0;
  v25 = 0;
  sub_10009156C(*(a1 + 528), &v25, &v24);
  v4 = 2 * sub_100091D34(*(*(a1 + 480) + 712), *(*(a1 + 480) + 728), v25, v24, a2);
  v12 = sub_1000C9F54(v4 + 2, v5, v6, v7, v8, v9, v10, v11);
  sub_1000919FC(*(*(a1 + 480) + 712), *(*(a1 + 480) + 728), v25, v24, a2, v12);
  v13 = *v12;
  if (v13 == 0xFFFF)
  {
LABEL_3:
    v14 = 2;
  }

  else
  {
    v16 = *(a1 + 480);
    v17 = *(v16 + 880);
    v18 = v12;
    while (1)
    {
      if (v17 > v13)
      {
        v20 = *(v16 + 864);
        v14 = *(v20 + v13);
        if (v14 != 2)
        {
          break;
        }
      }

      v19 = *(v18 + 1);
      v18 = (v18 + 2);
      v13 = v19;
      if (v19 == 0xFFFF)
      {
        goto LABEL_3;
      }
    }

    v21 = 2;
    while (1)
    {
      if (v17 > v13)
      {
        v22 = *(v20 + v13);
        if (v22 != v14 && v22 != 2)
        {
          break;
        }
      }

      v13 = *(v18 + v21);
      v21 += 2;
      if (v13 == 0xFFFF)
      {
        goto LABEL_4;
      }
    }

    v14 = 255;
  }

LABEL_4:
  sub_1000CA03C(v12, v4 + 2);
  return v14;
}

uint64_t sub_10008830C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1000CA0BC();
  v14 = sub_1000C9F54(8 * (a3 + 1), v7, v8, v9, v10, v11, v12, v13);
  v22 = v14;
  if ((a3 & 0x80000000) == 0)
  {
    v23 = 2 * *(a1 + 520);
    v24 = (a3 + 1);
    v25 = v14;
    do
    {
      *v25++ = sub_1000C9F54(v23 + 2, v15, v16, v17, v18, v19, v20, v21);
      --v24;
    }

    while (v24);
  }

  sub_100086E7C(a1, a2, (a3 + 1), v22);
  v26 = v22[a3];
  v27 = *v26;
  if (v27 == 0xFFFF)
  {
LABEL_5:
    v28 = 2;
  }

  else
  {
    v30 = *(a1 + 480);
    v31 = *(v30 + 880);
    while (1)
    {
      if (v31 > v27)
      {
        v33 = *(v30 + 864);
        v28 = *(v33 + v27);
        if (v28 != 2)
        {
          break;
        }
      }

      v32 = v26[1];
      ++v26;
      v27 = v32;
      if (v32 == 0xFFFF)
      {
        goto LABEL_5;
      }
    }

    v34 = 1;
    while (1)
    {
      if (v31 > v27)
      {
        v35 = *(v33 + v27);
        if (v35 != v28 && v35 != 2)
        {
          break;
        }
      }

      v27 = v26[v34++];
      if (v27 == 0xFFFF)
      {
        goto LABEL_6;
      }
    }

    v28 = 255;
  }

LABEL_6:
  sub_1000CA0A0(v6);
  return v28;
}

uint64_t sub_100088474(uint64_t a1)
{
  v1 = *(*(a1 + 480) + 728);
  v2 = *(a1 + 528);
  if (v2)
  {
    v3 = sub_100090764(v2);
    if (v1 <= v3)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }

  return v1;
}

uint64_t sub_1000884B0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 480);
  if (*(v2 + 728) >= a2)
  {
    return *(*(v2 + 848) + 8 * a2);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000884E0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_100090F50(*(a1 + 528), a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v10 = *(a1 + 480);
    *(a1 + 512) = v10[159];
    *(a1 + 516) = v10[160];
    *(a1 + 524) = v10[161];
    *(a1 + 520) = v10[162];
    v11 = result;
    sub_1000908FC(*(a1 + 528), a1, (a1 + 512), (a1 + 516), (a1 + 524), (a1 + 520));
    return v11;
  }

  return result;
}

uint64_t sub_100088560(uint64_t a1, int a2, int a3, unsigned __int16 *a4, uint64_t a5, int a6, int a7, int a8)
{
  v12 = *(a1 + 480);
  v13 = *(v12 + 776);
  v14 = (4 * sub_1000CB75C(a4)) | 1;
  v22 = sub_1000C9F54(v14, v15, v16, v17, v18, v19, v20, v21);
  v30 = sub_1000C9F54(v14, v23, v24, v25, v26, v27, v28, v29);
  if (v13 == 4)
  {
    v31 = 3;
  }

  else
  {
    v31 = v13;
  }

  if (sub_1000BD0C0(v31, a4, v14, v22) != 2 || (sub_1000CA03C(v30, v14), sub_1000CA03C(v22, v14), a8))
  {
    v47 = v14;
    v48 = a8;
    sub_100084C5C(v30, a4, *(v12 + 832), v13, 0, 0);
    if (*(v12 + 832))
    {
      v32 = sub_100084B10(a4);
      v33 = a2;
    }

    else
    {
      v33 = 0;
      v32 = 128;
    }

    memset(v54, 0, sizeof(v54));
    v55 = 0;
    v53 = v33;
    v56 = v33;
    v57 = a3;
    v34 = sub_10008ABD4(a1, &v55, v54, v22, v30, v32);
    v35 = 0;
    v36 = v48;
    if (v34 != 0xFFFFFF)
    {
      v37 = v34;
      if (a7)
      {
        v35 = 0;
        if (a6 <= 1)
        {
          v38 = 1;
        }

        else
        {
          v38 = a6;
        }

        v39 = (v38 - 1);
        while (1)
        {
          if (v35 < a6)
          {
            *(a5 + 4 * v35) = v37;
          }

          if (v39 == v35)
          {
            break;
          }

          sub_10008A594(v12, v54, 0);
          v40 = sub_10008B348(a1, &v55, v54, v22, v30, v32);
          v37 += v40;
          ++v35;
          if (!v40)
          {
            v36 = v48;
            goto LABEL_27;
          }
        }

        v35 = (v35 + 1);
        sub_1000CA03C(v30, v47);
        sub_1000CA03C(v22, v47);
        return v35;
      }

      v35 = 0;
      do
      {
        if (v35 < a6)
        {
          *(a5 + 4 * v35) = v37;
        }

        ++v35;
        sub_10008A594(v12, v54, 0);
        v43 = sub_10008B348(a1, &v55, v54, v22, v30, v32);
        v37 += v43;
      }

      while (v43);
    }

LABEL_27:
    sub_1000CA03C(v30, v47);
    sub_1000CA03C(v22, v47);
    if (a7)
    {
      v44 = a6 <= v35;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;
    if (!v36 && (v45 & 1) == 0)
    {
      if (a5)
      {
        v46 = a5 + 4 * v35;
      }

      else
      {
        v46 = 0;
      }

      return sub_100090130(*(a1 + 528), v53, a3, a4, v46, a6 - v35, a7) + v35;
    }

    return v35;
  }

  v41 = *(a1 + 528);

  return sub_100090130(v41, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100088860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v157 = 0;
  v10 = *(a1 + 480);
  if (*(v10 + 32) > a2)
  {
    v11 = a4;
    v13 = a2;
    v149 = *(v10 + 776);
    v161 = 0;
    v160 = 0;
    v159 = 0;
    v158 = 0;
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v14 = sub_1000C9F54(*(a1 + 512) + 1, a2, a3, a4, a5, a6, a7, a8);
    v22 = sub_1000C9F54(*(a1 + 516) + 1, v15, v16, v17, v18, v19, v20, v21);
    v151 = sub_1000C9F54((4 * *(a1 + 516)) | 1, v23, v24, v25, v26, v27, v28, v29);
    v37 = sub_1000C9F54(*(a1 + 512) + 1, v30, v31, v32, v33, v34, v35, v36);
    if (v11)
    {
      v38 = *(v10 + 696);
      v39 = v13 >> v38;
      v40 = v13 & ~(-1 << v38);
      v154 = (*v10 + *(*(v10 + 16) + 4 * v39));
    }

    else
    {
      sub_10008AB64(v10, v13, &v154);
      v40 = 0;
    }

    v153 = a1;
    sub_10008A13C(v10, &v154, v14, v37, &v158);
    sub_10008A500(v10, &v154, v22);
    if (v40)
    {
      if (v11 > 0)
      {
        v41 = 0;
        v42 = v10 + 376;
        while (1)
        {
          if ((v156 & 0x200000000) == 0)
          {
            v49 = 1;
            goto LABEL_15;
          }

          sub_100089298(v10, *a3, &v157, &v161 + 1, &v154);
          if (SHIDWORD(v161) < 2)
          {
            goto LABEL_62;
          }

          v50 = 0;
          v51 = v154;
          v52 = v155;
          v53 = v156;
          v54 = *(v10 + 704);
          v55 = *(v10 + 40);
          v56 = *(v10 + 692);
          do
          {
            if (v55 < 1)
            {
              goto LABEL_38;
            }

            if (v53)
            {
              v58 = v53 - 1;
              if (v58)
              {
                goto LABEL_23;
              }

LABEL_27:
              ++v52;
              goto LABEL_28;
            }

            v60 = *v51++;
            v59 = v60;
            if (*(v42 + v60) == 2)
            {
              v61 = (*(v10 + 104) + 2 * v59);
              v62 = *v61;
              v58 = v61[1] + ~v62;
              v52 = (*(v10 + 88) + v62);
              if (v58)
              {
LABEL_23:
                v53 = v58 - 1;
                v52 += 2;
                if (v55 == 1)
                {
                  goto LABEL_38;
                }

                goto LABEL_30;
              }

              goto LABEL_27;
            }

LABEL_28:
            v64 = *v51++;
            v63 = v64;
            if (*(v42 + v64) != 2)
            {
              if (v55 == 1)
              {
                v53 = 0;
                if (v54 == 1)
                {
                  goto LABEL_43;
                }

                goto LABEL_50;
              }

              goto LABEL_35;
            }

            v65 = (*(v10 + 104) + 2 * v63);
            v66 = *v65;
            v53 = v65[1] + ~v66;
            v52 = (*(v10 + 88) + v66 + 1);
            if (v55 == 1)
            {
              goto LABEL_38;
            }

LABEL_30:
            if (v53)
            {
              --v53;
LABEL_37:
              ++v52;
LABEL_38:
              if (v54 == 1)
              {
                goto LABEL_43;
              }

LABEL_50:
              if (v53)
              {
                v78 = v53 - 1;
                v80 = v52 + 1;
                LODWORD(v79) = *v52;
                if (v78)
                {
                  goto LABEL_49;
                }

                goto LABEL_55;
              }

              v81 = *v51++;
              v79 = v81;
              if (*(v42 + v81) == 2)
              {
                v82 = (*(v10 + 104) + 2 * v79);
                v79 = *v82;
                v78 = v82[1] + ~v79;
                v52 = (*(v10 + 88) + v79);
                v80 = v52 + 1;
                LODWORD(v79) = *v52;
                if (v78)
                {
LABEL_49:
                  v53 = v78 - 1;
                  v52 += 2;
                  if ((v79 | (*v80 << 8)) >= v56)
                  {
                    continue;
                  }

                  goto LABEL_50;
                }

LABEL_55:
                v52 = v80;
              }

              v84 = *v51++;
              v83 = v84;
              if (*(v42 + v84) == 2)
              {
                v85 = (*(v10 + 104) + 2 * v83);
                v86 = *v85;
                v53 = v85[1] + ~v86;
                v87 = (*(v10 + 88) + v86);
                v52 = v87 + 1;
                if ((v79 | (*v87 << 8)) >= v56)
                {
                  continue;
                }
              }

              else
              {
                v53 = 0;
                if ((v79 | (v83 << 8)) >= v56)
                {
                  continue;
                }
              }

              goto LABEL_50;
            }

LABEL_35:
            v68 = *v51++;
            v67 = v68;
            if (*(v42 + v68) == 2)
            {
              v69 = (*(v10 + 104) + 2 * v67);
              v70 = *v69;
              v53 = v69[1] + ~v70;
              v52 = (*(v10 + 88) + v70);
              goto LABEL_37;
            }

            v53 = 0;
            if (v54 != 1)
            {
              goto LABEL_50;
            }

            do
            {
              while (1)
              {
LABEL_43:
                while (v53)
                {
                  --v53;
                  v71 = *v52++;
                  if (v56 <= v71)
                  {
                    goto LABEL_19;
                  }
                }

                v73 = *v51++;
                v72 = v73;
                if (*(v42 + v73) != 2)
                {
                  break;
                }

                v74 = (*(v10 + 104) + 2 * v72);
                v75 = *v74;
                v53 = v74[1] + ~v75;
                v76 = (*(v10 + 88) + v75);
                v77 = *v76;
                v52 = v76 + 1;
                if (v56 <= v77)
                {
                  goto LABEL_19;
                }
              }

              v53 = 0;
            }

            while (v56 > v72);
LABEL_19:
            ;
          }

          while (v50++ != HIDWORD(v161) - 2);
          LODWORD(v156) = 0;
          v154 = v51;
LABEL_62:
          v49 = 2;
LABEL_15:
          sub_10008A594(v10, &v154, v49);
          ++v41;
          sub_10008A13C(v10, &v154, v14, v37, &v158);
          sub_10008A500(v10, &v154, v22);
          if (v41 == v40)
          {
            goto LABEL_9;
          }
        }
      }

      do
      {
        sub_10008A594(v10, &v154, 1u);
        sub_10008A13C(v10, &v154, v14, v37, &v158);
        sub_10008A500(v10, &v154, v22);
        --v40;
      }

      while (v40);
    }

LABEL_9:
    v152 = v14;
    if ((v156 & 0x200000000) == 0)
    {
      HIDWORD(v161) = 1;
      if (v11 >= 1)
      {
        v43 = v156;
        v44 = v154;
        v45 = v155;
        v46 = v10 + 376;
        if (*(v10 + 752) == -1)
        {
          LODWORD(v98) = 0;
          v47 = a5;
          v48 = v149;
          v99 = *(v10 + 40);
          if (v99 > 0)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v47 = a5;
          v48 = v149;
          if (v156)
          {
            v43 = v156 - 1;
          }

          else
          {
            v44 = v154 + 1;
            v98 = *v154;
            if (*(v46 + v98) != 2)
            {
              v99 = *(v10 + 40);
              v100 = v152;
              v101 = v153;
              if (v99 > 0)
              {
                goto LABEL_90;
              }

LABEL_78:
              if (v47)
              {
                v102 = -1;
LABEL_105:
                *v47 = v102;
              }

LABEL_106:
              if (*v22)
              {
                v119 = *(v101 + 488);
                v120 = sub_1000C7854(v22);
                v121 = v151;
                sub_100084ED4(v151, v22, v120 + 1, 1, *(*(v101 + 480) + 780), v119 + 784);
              }

              else
              {
                v122 = *(v10 + 832);
                v121 = v100;
                if (v122)
                {
                  v122 = v158;
                  v121 = v37;
                  if (v158 != 16)
                  {
                    v137 = sub_1000C7854(v100);
                    sub_100084ED4(v100, v100, v137 + 1, v158, *(v10 + 776), 0);
                    v121 = v100;
                  }
                }
              }

              v123 = *(v101 + 524);
              v124 = *a3;
              v125 = sub_1000C7898((v10 + 824), "z", 1, v122) == 0;
              HIDWORD(v161) = sub_100092B88(*(v101 + 496), v121, v48, v125, v124, (v123 + 1), &v159, 1u, &v161);
              if (v161 >= 1)
              {
                v133 = v101;
                v134 = sub_1000C9F54(2 * v161, v126, v127, v128, v129, v130, v131, v132);
                HIDWORD(v161) = sub_100092B88(*(v133 + 496), v121, v48, v125, v134, v161, &v159, 1u, &v160);
                v135 = sub_100098BE4(v134);
                memcpy(v124, v134, 2 * v135 + 2);
                sub_1000CA03C(v134, 2 * v161);
              }

              v136 = *(v10 + 752);
              if (v136 != 0xFFFF)
              {
                sub_100092240(v124, v98, v136);
              }

              goto LABEL_130;
            }

            v103 = (*(v10 + 104) + 2 * v98);
            v104 = *v103;
            v43 = v103[1] + ~v104;
            v45 = *(v10 + 88) + v104;
          }

          v105 = *v45++;
          LODWORD(v98) = v105;
          v99 = *(v10 + 40);
          if (v99 > 0)
          {
LABEL_83:
            v100 = v152;
            v101 = v153;
            if (v43)
            {
              v106 = v43 - 1;
              if (!v106)
              {
LABEL_94:
                v115 = *v44++;
                v45 = v115;
                if (*(v46 + v115) != 2)
                {
                  if (v99 == 1)
                  {
                    goto LABEL_103;
                  }

LABEL_99:
                  v118 = *v44;
                  if (*(v46 + v118) != 2)
                  {
LABEL_102:
                    LODWORD(v45) = v45 | (v118 << 8);
                    goto LABEL_103;
                  }

                  v114 = (*(v10 + 88) + *(*(v10 + 104) + 2 * v118));
LABEL_101:
                  LODWORD(v118) = *v114;
                  goto LABEL_102;
                }

                v45 = *(v10 + 104) + 2 * v45;
                v116 = *v45;
                v113 = *(v45 + 2) + ~v116;
                v117 = (*(v10 + 88) + v116);
                v114 = v117 + 1;
                LODWORD(v45) = *v117;
                if (v99 == 1)
                {
                  goto LABEL_103;
                }

LABEL_96:
                if (v113)
                {
                  goto LABEL_101;
                }

                goto LABEL_99;
              }

LABEL_92:
              v113 = v106 - 1;
              v114 = (v45 + 2);
              LODWORD(v45) = *(v45 + 1);
              if (v99 == 1)
              {
LABEL_103:
                if (v47)
                {
                  v102 = *(v10 + 668) + v45;
                  goto LABEL_105;
                }

                goto LABEL_106;
              }

              goto LABEL_96;
            }

LABEL_90:
            v110 = *v44++;
            v109 = v110;
            if (*(v46 + v110) != 2)
            {
              goto LABEL_94;
            }

            v111 = (*(v10 + 104) + 2 * v109);
            v112 = *v111;
            v106 = v111[1] + ~v112;
            v45 = *(v10 + 88) + v112;
            if (!v106)
            {
              goto LABEL_94;
            }

            goto LABEL_92;
          }
        }

        v100 = v152;
        v101 = v153;
        goto LABEL_78;
      }

LABEL_130:
      sub_1000CA03C(v37, *(v153 + 512) + 1);
      sub_1000CA03C(v151, (4 * *(v153 + 516)) | 1);
      sub_1000CA03C(v22, *(v153 + 516) + 1);
      sub_1000CA03C(v152, *(v153 + 512) + 1);
      return HIDWORD(v161);
    }

    v88 = v10 + 376;
    v89 = v154 + 1;
    v90 = *v154;
    if (*(v10 + 376 + v90) == 2)
    {
      v91 = (*(v10 + 104) + 2 * v90);
      v92 = *v91;
      v93 = v91[1] + ~v92;
      v94 = (*(v10 + 88) + v92);
      v155 = v94 + 1;
      LODWORD(v90) = *v94;
      if (v90 != 255)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v93 = v156;
      if (v90 != 255)
      {
LABEL_65:
        LODWORD(v95) = 1;
        if (*(v10 + 752) == -1)
        {
          LODWORD(v90) = 0;
          HIDWORD(v161) = 1;
          if (v11 <= 1)
          {
            v96 = v11;
          }

          else
          {
            v96 = 1;
          }

          if (v96 < 1)
          {
            goto LABEL_130;
          }

LABEL_125:
          v141 = *a3;
          sub_100089298(v10, *a3, &v157, 0, &v154);
          v142 = a5;
          if (a5)
          {
            *a5 = v157;
            v142 = a5 + 1;
          }

          v143 = *(v10 + 752);
          if (v143 != 0xFFFF)
          {
            sub_100092240(v141, v90, v143);
          }

          if (v96 != 1)
          {
            v144 = a3 + 1;
            v145 = v96 - 1;
            do
            {
              v146 = *v144;
              v147 = sub_100089298(v10, *v144, &v157, 0, &v154);
              if (v142)
              {
                *v142++ = v157;
              }

              memcpy(v146, v141, 2 * v147);
              v148 = *(v10 + 752);
              if (v148 != 0xFFFF)
              {
                sub_100092240(v146, v90, v148);
              }

              ++v144;
              v141 = v146;
              --v145;
            }

            while (v145);
          }

          goto LABEL_130;
        }

LABEL_121:
        v154 = v89;
        LODWORD(v156) = v93;
        HIDWORD(v161) = v95;
        if (v95 >= v11)
        {
          v96 = v11;
        }

        else
        {
          v96 = v95;
        }

        if (v96 < 1)
        {
          goto LABEL_130;
        }

        goto LABEL_125;
      }
    }

    if (v93)
    {
      --v93;
      v95 = v155;
      v97 = ++v155;
      LODWORD(v95) = *v95;
      if (*(v10 + 752) != -1)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v89 = v154 + 2;
      v95 = v154[1];
      if (*(v88 + v95) != 2)
      {
        if (*(v10 + 752) == -1)
        {
          LODWORD(v90) = 0;
          v93 = 0;
          goto LABEL_121;
        }

        goto LABEL_116;
      }

      v107 = (*(v10 + 104) + 2 * v95);
      v108 = *v107;
      v93 = v107[1] + ~v108;
      v95 = *(v10 + 88) + v108;
      v97 = (v95 + 1);
      v155 = (v95 + 1);
      LODWORD(v95) = *v95;
      if (*(v10 + 752) != -1)
      {
LABEL_74:
        if (v93)
        {
          --v93;
          goto LABEL_118;
        }

LABEL_116:
        v138 = *v89++;
        v90 = v138;
        if (*(v88 + v138) != 2)
        {
          v93 = 0;
          goto LABEL_121;
        }

        v139 = (*(v10 + 104) + 2 * v90);
        v140 = *v139;
        v93 = v139[1] + ~v140;
        v97 = (*(v10 + 88) + v140);
LABEL_118:
        v155 = v97 + 1;
        LODWORD(v90) = *v97;
        goto LABEL_121;
      }
    }

    LODWORD(v90) = 0;
    goto LABEL_121;
  }

  return result;
}

uint64_t sub_100089298(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, unsigned __int8 **a5)
{
  v5 = a1 + 376;
  v6 = *a5;
  v7 = a5[1];
  if (!a4)
  {
    v15 = *(a5 + 4);
    v17 = *(a1 + 40);
    if (v17 > 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  v8 = v6 + 1;
  v9 = *v6;
  if (*(v5 + v9) != 2)
  {
    if (v9 == 255)
    {
      goto LABEL_11;
    }

LABEL_9:
    v15 = 0;
    *a4 = 1;
    if (*(a1 + 752) == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v10 = (*(a1 + 104) + 2 * v9);
  v11 = *v10;
  v12 = (*(a1 + 88) + v11);
  v13 = *v12;
  v7 = (v12 + 1);
  if (v13 != 255)
  {
    goto LABEL_9;
  }

  v14 = v10[1] + ~v11;
  if (!v14)
  {
LABEL_11:
    v8 = v6 + 2;
    v18 = v6[1];
    if (*(v5 + v18) != 2)
    {
      v15 = 0;
      v6 += 2;
      *a4 = v18;
      if (*(a1 + 752) == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v19 = (*(a1 + 104) + 2 * v18);
    v20 = *v19;
    v15 = v19[1] + ~v20;
    v7 = *(a1 + 88) + v20;
    v16 = v7 + 1;
    goto LABEL_13;
  }

  v15 = v14 - 1;
  v16 = *(a1 + 88) + v11 + 2;
LABEL_13:
  v21 = *v7;
  v6 = v8;
  v7 = v16;
  *a4 = v21;
  if (*(a1 + 752) == -1)
  {
LABEL_18:
    v17 = *(a1 + 40);
    if (v17 > 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_16:
  if (v15)
  {
    --v15;
    ++v7;
    goto LABEL_18;
  }

  v29 = *v6++;
  v28 = v29;
  if (*(v5 + v29) == 2)
  {
    v30 = (*(a1 + 104) + 2 * v28);
    v31 = *v30;
    v15 = v30[1] + ~v31;
    v7 = *(a1 + 88) + v31 + 1;
    v17 = *(a1 + 40);
    if (v17 > 0)
    {
LABEL_19:
      if (v15)
      {
        v22 = v15 - 1;
        v23 = (v7 + 1);
        if (!v22)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

LABEL_30:
      v34 = *v6++;
      v33 = v34;
      if (*(v5 + v34) != 2)
      {
        v23 = v7;
        v37 = *v6++;
        v7 = v37;
        if (*(v5 + v37) == 2)
        {
LABEL_22:
          v7 = *(a1 + 104) + 2 * v7;
          v25 = *v7;
          v15 = *(v7 + 2) + ~v25;
          v26 = (*(a1 + 88) + v25);
          v27 = v26 + 1;
          LODWORD(v7) = *v26;
          if (v17 != 1)
          {
LABEL_23:
            if (v15)
            {
              --v15;
              goto LABEL_39;
            }

            v23 = v27;
LABEL_37:
            v39 = *v6++;
            v38 = v39;
            if (*(v5 + v39) != 2)
            {
              v15 = 0;
              goto LABEL_41;
            }

            v40 = (*(a1 + 104) + 2 * v38);
            v41 = *v40;
            v15 = v40[1] + ~v41;
            v27 = (*(a1 + 88) + v41);
LABEL_39:
            LODWORD(v38) = *v27;
            v23 = v27 + 1;
LABEL_41:
            LODWORD(v7) = v7 | (v38 << 8);
            goto LABEL_42;
          }

          goto LABEL_33;
        }

LABEL_35:
        if (v17 != 1)
        {
          goto LABEL_37;
        }

        v15 = 0;
LABEL_42:
        v32 = *(a1 + 668) + v7;
        v7 = v23;
        goto LABEL_43;
      }

      v35 = (*(a1 + 104) + 2 * v33);
      v36 = *v35;
      v22 = v35[1] + ~v36;
      v7 = *(a1 + 88) + v36;
      v23 = (v7 + 1);
      if (!v22)
      {
LABEL_21:
        v24 = *v6++;
        v7 = v24;
        if (*(v5 + v24) == 2)
        {
          goto LABEL_22;
        }

        goto LABEL_35;
      }

LABEL_32:
      v15 = v22 - 1;
      v27 = (v7 + 2);
      LODWORD(v7) = *v23;
      if (v17 != 1)
      {
        goto LABEL_23;
      }

LABEL_33:
      v23 = v27;
      goto LABEL_42;
    }

LABEL_27:
    v32 = -1;
    goto LABEL_43;
  }

  v17 = *(a1 + 40);
  if (v17 > 0)
  {
    goto LABEL_30;
  }

  v15 = 0;
  v32 = -1;
LABEL_43:
  *a3 = v32;
  v42 = *(a1 + 704);
  v43 = *(a1 + 692);
  v44 = v6;
  v45 = v7;
  if (v42 != 1)
  {
    v54 = v15;
    while (!v54)
    {
      v57 = *v44++;
      v56 = v57;
      if (*(v5 + v57) == 2)
      {
        v58 = (*(a1 + 104) + 2 * v56);
        v56 = *v58;
        v55 = v58[1] + ~v56;
        v45 = (*(a1 + 88) + v56);
        v47 = (v45 + 1);
        LODWORD(v56) = *v45;
        if (!v55)
        {
LABEL_59:
          v45 = v47;
          goto LABEL_60;
        }

LABEL_53:
        v54 = v55 - 1;
        v45 += 2;
        LODWORD(v47) = v56 | (*v47 << 8);
        if (v47 >= v43)
        {
          goto LABEL_64;
        }
      }

      else
      {
LABEL_60:
        v59 = *v44++;
        v47 = v59;
        if (*(v5 + v59) == 2)
        {
          v60 = (*(a1 + 104) + 2 * v47);
          v61 = *v60;
          v54 = v60[1] + ~v61;
          v47 = *(a1 + 88) + v61;
          v45 = (v47 + 1);
          LODWORD(v47) = v56 | (*v47 << 8);
          if (v47 >= v43)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v54 = 0;
          LODWORD(v47) = v56 | (v47 << 8);
          if (v47 >= v43)
          {
            goto LABEL_64;
          }
        }
      }
    }

    v55 = v54 - 1;
    v47 = (v45 + 1);
    LODWORD(v56) = *v45;
    if (!v55)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

  v46 = v15;
  do
  {
    while (1)
    {
      while (v46)
      {
        --v46;
        v48 = *v45++;
        LODWORD(v47) = v48;
        if (v43 <= v48)
        {
          goto LABEL_64;
        }
      }

      v49 = *v44++;
      v47 = v49;
      if (*(v5 + v49) != 2)
      {
        break;
      }

      v50 = (*(a1 + 104) + 2 * v47);
      v51 = *v50;
      v46 = v50[1] + ~v51;
      v52 = (*(a1 + 88) + v51);
      v53 = *v52;
      v45 = v52 + 1;
      LODWORD(v47) = v53;
      if (v43 <= v53)
      {
        goto LABEL_64;
      }
    }

    v46 = 0;
  }

  while (v43 > v47);
LABEL_64:
  v62 = (v47 - v43);
  v63 = (a2 + 2 * v62);
  if (!v15)
  {
    goto LABEL_67;
  }

LABEL_65:
  --v15;
  v65 = v7 + 1;
  LODWORD(v64) = *v7;
  if (v42 == 1)
  {
    goto LABEL_66;
  }

LABEL_69:
  if (v15)
  {
    --v15;
    v7 += 2;
  }

  else
  {
    v7 = v65;
LABEL_74:
    v68 = *v6++;
    v65 = v68;
    if (*(v5 + v68) != 2)
    {
      v15 = 0;
      goto LABEL_78;
    }

    v69 = (*(a1 + 104) + 2 * v65);
    v70 = *v69;
    v15 = v69[1] + ~v70;
    v65 = *(a1 + 88) + v70;
    v7 = v65 + 1;
  }

  LODWORD(v65) = *v65;
LABEL_78:
  LODWORD(v64) = v64 | (v65 << 8);
  while (v64 < *(a1 + 692))
  {
    *v63++ = v64;
    if (v15)
    {
      goto LABEL_65;
    }

LABEL_67:
    v66 = *v6++;
    v64 = v66;
    if (*(v5 + v66) == 2)
    {
      v67 = (*(a1 + 104) + 2 * v64);
      v64 = *v67;
      v15 = v67[1] + ~v64;
      v7 = *(a1 + 88) + v64;
      v65 = v7 + 1;
      LODWORD(v64) = *v7;
      if (v42 != 1)
      {
        goto LABEL_69;
      }

LABEL_66:
      v7 = v65;
      continue;
    }

    if (v42 != 1)
    {
      goto LABEL_74;
    }

    v15 = 0;
  }

  *v63 = -1;
  *(a5 + 4) = v15;
  *a5 = v6;
  a5[1] = v7;
  return v62;
}

uint64_t sub_10008979C(uint64_t result, _DWORD *a2, unsigned __int8 **a3)
{
  v3 = *(a3 + 4);
  v4 = *a3;
  v5 = a3[1];
  v6 = result + 376;
  if (*(result + 40) >= 1)
  {
    if (v3)
    {
      v7 = v3 - 1;
      v8 = (v5 + 1);
      a2[2] = *v5;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *v4++;
      v10 = v11;
      if (*(v6 + v11) != 2)
      {
        a2[2] = v10;
        v17 = *v4++;
        v8 = v17;
        if (*(v6 + v17) == 2)
        {
LABEL_10:
          v15 = (*(result + 104) + 2 * v8);
          v16 = *v15;
          v3 = v15[1] + ~v16;
          v8 = *(result + 88) + v16;
          v5 = (v8 + 1);
          LODWORD(v8) = *v8;
          if (*(result + 40) != 1)
          {
            goto LABEL_11;
          }

LABEL_21:
          v9 = *(result + 668) + v8;
          goto LABEL_22;
        }

LABEL_14:
        if (*(result + 40) != 1)
        {
          goto LABEL_16;
        }

        v3 = 0;
        goto LABEL_21;
      }

      v12 = (*(result + 104) + 2 * v10);
      v13 = *v12;
      v7 = v12[1] + ~v13;
      v5 = (*(result + 88) + v13);
      v8 = (v5 + 1);
      a2[2] = *v5;
      if (v7)
      {
LABEL_4:
        v3 = v7 - 1;
        v5 += 2;
        LODWORD(v8) = *v8;
        if (*(result + 40) == 1)
        {
          goto LABEL_21;
        }

LABEL_11:
        if (v3)
        {
          --v3;
          goto LABEL_18;
        }

LABEL_16:
        v19 = *v4++;
        v18 = v19;
        if (*(v6 + v19) != 2)
        {
          v3 = 0;
          goto LABEL_20;
        }

        v20 = (*(result + 104) + 2 * v18);
        v21 = *v20;
        v3 = v20[1] + ~v21;
        v5 = (*(result + 88) + v21);
LABEL_18:
        v22 = *v5++;
        LODWORD(v18) = v22;
LABEL_20:
        LODWORD(v8) = v8 | (v18 << 8);
        goto LABEL_21;
      }
    }

    v5 = v8;
    v14 = *v4++;
    v8 = v14;
    if (*(v6 + v14) == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  a2[2] = 1;
  v9 = -1;
LABEL_22:
  v23 = 0;
  a2[3] = v9;
  do
  {
    *a2 = v23;
    if (v3)
    {
      --v3;
      v28 = (v5 + 1);
      LODWORD(v27) = *v5;
      v29 = *(result + 704);
      if (v29 == 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v30 = *v4++;
      v27 = v30;
      if (*(v6 + v30) != 2)
      {
        v29 = *(result + 704);
        if (v29 == 1)
        {
          v3 = 0;
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      v31 = (*(result + 104) + 2 * v27);
      v27 = *v31;
      v3 = v31[1] + ~v27;
      v5 = (*(result + 88) + v27);
      v28 = (v5 + 1);
      LODWORD(v27) = *v5;
      v29 = *(result + 704);
      if (v29 == 1)
      {
LABEL_23:
        v5 = v28;
        goto LABEL_24;
      }
    }

    if (v3)
    {
      --v3;
      v5 += 2;
      goto LABEL_38;
    }

    v5 = v28;
LABEL_36:
    v32 = *v4++;
    v28 = v32;
    if (*(v6 + v32) != 2)
    {
      v3 = 0;
      goto LABEL_40;
    }

    v33 = (*(result + 104) + 2 * v28);
    v34 = *v33;
    v3 = v33[1] + ~v34;
    v28 = *(result + 88) + v34;
    v5 = (v28 + 1);
LABEL_38:
    LODWORD(v28) = *v28;
LABEL_40:
    LODWORD(v27) = v27 | (v28 << 8);
LABEL_24:
    v24 = *(result + 692);
    v23 += v29;
    v25 = __OFSUB__(v27, v24);
    v26 = v27 - v24;
  }

  while (v26 < 0 != v25);
  a2[1] = v26;
  *(a3 + 4) = v3;
  *a3 = v4;
  a3[1] = v5;
  return result;
}

double sub_100089A04(uint64_t a1)
{
  sub_1000BFEC4(*(a1 + 64));
  sub_1000BFEC4(*(a1 + 80));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  sub_1000BFEC4(*(a1 + 96));
  sub_1000BFEC4(*(a1 + 112));
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t sub_100089A5C(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v3 = 1;
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          return *(a1 + 36);
        }

        return 0;
      }

      return v3;
    }

    v5 = a1 + 376;
    v6 = a3 + 1;
    v7 = *a3;
    if (*(a1 + 376 + v7) == 2)
    {
      v8 = (*(a1 + 104) + 2 * v7);
      v9 = *v8;
      v10 = *(a1 + 88) + v9;
      v11 = (v10 + 1);
      if (*v10 == 255)
      {
        v12 = v8[1] + ~v9;
        if (v12)
        {
          v13 = v12 - 1;
          v14 = (v10 + 2);
          LODWORD(v10) = *v11;
          v11 = v14;
          if (*(a1 + 752) == -1)
          {
            goto LABEL_30;
          }

          goto LABEL_25;
        }

LABEL_21:
        v6 = a3 + 2;
        v10 = a3[1];
        if (*(v5 + v10) == 2)
        {
          v10 = *(a1 + 104) + 2 * v10;
          v15 = *v10;
          v13 = *(v10 + 2) + ~v15;
          v16 = (*(a1 + 88) + v15);
          LODWORD(v10) = *v16;
          v11 = v16 + 1;
          if (*(a1 + 752) == -1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v13 = 0;
          if (*(a1 + 752) == -1)
          {
            goto LABEL_30;
          }
        }

LABEL_25:
        if (v13)
        {
          --v13;
        }

        else
        {
          v18 = *v6++;
          v17 = v18;
          if (*(v5 + v18) != 2)
          {
            v13 = 0;
            if (v10)
            {
              goto LABEL_31;
            }

            return (v6 - a3);
          }

          v19 = (*(a1 + 104) + 2 * v17);
          v20 = *v19;
          v13 = v19[1] + ~v20;
          v11 = (*(a1 + 88) + v20);
        }

        ++v11;
LABEL_30:
        if (v10)
        {
LABEL_31:
          v21 = *(a1 + 40);
          v22 = *(a1 + 692);
          if (v21 > 0)
          {
            v23 = 0;
            while (1)
            {
              if (v13)
              {
                v24 = v13 - 1;
                if (v24)
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v26 = *v6++;
                v25 = v26;
                if (*(v5 + v26) != 2)
                {
                  goto LABEL_41;
                }

                v27 = (*(a1 + 104) + 2 * v25);
                v28 = *v27;
                v24 = v27[1] + ~v28;
                v11 = (*(a1 + 88) + v28);
                if (v24)
                {
LABEL_36:
                  v13 = v24 - 1;
                  v11 += 2;
                  if (v21 == 1)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_43;
                }
              }

              ++v11;
LABEL_41:
              v30 = *v6++;
              v29 = v30;
              if (*(v5 + v30) == 2)
              {
                v31 = (*(a1 + 104) + 2 * v29);
                v32 = *v31;
                v13 = v31[1] + ~v32;
                v11 = (*(a1 + 88) + v32 + 1);
                if (v21 == 1)
                {
                  goto LABEL_53;
                }

LABEL_43:
                if (v13)
                {
                  --v13;
LABEL_49:
                  ++v11;
                  goto LABEL_53;
                }

                goto LABEL_47;
              }

              if (v21 == 1)
              {
                v13 = 0;
                goto LABEL_53;
              }

LABEL_47:
              v34 = *v6++;
              v33 = v34;
              if (*(v5 + v34) == 2)
              {
                v35 = (*(a1 + 104) + 2 * v33);
                v36 = *v35;
                v13 = v35[1] + ~v36;
                v11 = (*(a1 + 88) + v36);
                goto LABEL_49;
              }

              v13 = 0;
              do
              {
LABEL_53:
                if (v13)
                {
                  --v13;
                  v38 = (v11 + 1);
                  LODWORD(v37) = *v11;
                  if (*(a1 + 704) == 1)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  v39 = *v6++;
                  v37 = v39;
                  if (*(v5 + v39) != 2)
                  {
                    if (*(a1 + 704) == 1)
                    {
                      v13 = 0;
                      continue;
                    }

                    goto LABEL_63;
                  }

                  v40 = (*(a1 + 104) + 2 * v37);
                  v37 = *v40;
                  v13 = v40[1] + ~v37;
                  v11 = (*(a1 + 88) + v37);
                  v38 = (v11 + 1);
                  LODWORD(v37) = *v11;
                  if (*(a1 + 704) == 1)
                  {
LABEL_51:
                    v11 = v38;
                    continue;
                  }
                }

                if (v13)
                {
                  --v13;
                  v11 += 2;
                  goto LABEL_65;
                }

                v11 = v38;
LABEL_63:
                v41 = *v6++;
                v38 = v41;
                if (*(v5 + v41) != 2)
                {
                  v13 = 0;
                  goto LABEL_67;
                }

                v42 = (*(a1 + 104) + 2 * v38);
                v43 = *v42;
                v13 = v42[1] + ~v43;
                v38 = *(a1 + 88) + v43;
                v11 = (v38 + 1);
LABEL_65:
                LODWORD(v38) = *v38;
LABEL_67:
                LODWORD(v37) = v37 | (v38 << 8);
              }

              while (v37 < v22);
              if (++v23 == v10)
              {
                return (v6 - a3);
              }
            }
          }

          v44 = 0;
          while (1)
          {
            if (v13)
            {
              --v13;
              v46 = (v11 + 1);
              LODWORD(v45) = *v11;
              if (*(a1 + 704) == 1)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v47 = *v6++;
              v45 = v47;
              if (*(v5 + v47) != 2)
              {
                if (*(a1 + 704) == 1)
                {
                  v13 = 0;
                  goto LABEL_70;
                }

                goto LABEL_81;
              }

              v48 = (*(a1 + 104) + 2 * v45);
              v45 = *v48;
              v13 = v48[1] + ~v45;
              v11 = (*(a1 + 88) + v45);
              v46 = (v11 + 1);
              LODWORD(v45) = *v11;
              if (*(a1 + 704) == 1)
              {
LABEL_69:
                v11 = v46;
                goto LABEL_70;
              }
            }

            if (v13)
            {
              --v13;
              v11 += 2;
              goto LABEL_83;
            }

            v11 = v46;
LABEL_81:
            v49 = *v6++;
            v46 = v49;
            if (*(v5 + v49) != 2)
            {
              v13 = 0;
              goto LABEL_85;
            }

            v50 = (*(a1 + 104) + 2 * v46);
            v51 = *v50;
            v13 = v50[1] + ~v51;
            v46 = *(a1 + 88) + v51;
            v11 = (v46 + 1);
LABEL_83:
            LODWORD(v46) = *v46;
LABEL_85:
            LODWORD(v45) = v45 | (v46 << 8);
LABEL_70:
            if (v45 >= v22 && ++v44 == v10)
            {
              return (v6 - a3);
            }
          }
        }

        return (v6 - a3);
      }
    }

    else
    {
      v11 = 0;
      if (v7 == 255)
      {
        goto LABEL_21;
      }
    }

    v13 = 0;
    LODWORD(v10) = 1;
    v6 = a3;
    if (*(a1 + 752) == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (a2 == 4)
  {
    return v3;
  }

  if (a2 != 5)
  {
    if (a2 == 6)
    {
      return *(a1 + 48);
    }

    return 0;
  }

  return *(a1 + 44);
}

uint64_t sub_100089EF0(uint64_t result, unsigned __int8 **a2)
{
  v2 = result + 120;
  v3 = *a2;
  v4 = *a2 + 1;
  *a2 = v4;
  v5 = *v3;
  if (*(result + 120 + v5) == 2)
  {
    v6 = (*(result + 72) + 2 * v5);
    v7 = *v6;
    v8 = v6[1] + ~v7;
    v9 = (*(result + 56) + v7);
    v11 = *v9;
    v10 = v9 + 1;
    if (v11 >= 0x20)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v10 = 0;
  v8 = 0;
  if (v5 < 0x20)
  {
LABEL_5:
    v12 = v4;
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
LABEL_11:
      while (v8)
      {
        --v8;
        v12 = v4;
        v15 = *v10++;
        if (v15 <= 0x1F)
        {
          goto LABEL_6;
        }
      }

      v12 = v4 + 1;
      *a2 = v4 + 1;
      v16 = *v4;
      if (*(v2 + v16) != 2)
      {
        break;
      }

      v17 = (*(result + 72) + 2 * v16);
      v18 = *v17;
      v8 = v17[1] + ~v18;
      v19 = (*(result + 56) + v18);
      v20 = *v19;
      v10 = v19 + 1;
      v4 = v12;
      if (v20 <= 0x1F)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    ++v4;
  }

  while (v16 > 0x1F);
LABEL_6:
  if (!*(result + 832))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    --v8;
    v13 = v12;
    v14 = *v10++;
    if (v14 == 16)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v13 = v12 + 1;
  *a2 = v12 + 1;
  v21 = *v12;
  if (*(v2 + v21) == 2)
  {
    v22 = (*(result + 72) + 2 * v21);
    v23 = *v22;
    v8 = v22[1] + ~v23;
    v24 = (*(result + 56) + v23);
    v25 = *v24;
    v10 = v24 + 1;
    if (v25 == 16)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v8 = 0;
  if (v21 != 16)
  {
LABEL_21:
    v12 = v13;
    goto LABEL_22;
  }

  do
  {
    while (1)
    {
LABEL_25:
      while (v8)
      {
        --v8;
        v12 = v13;
        v26 = *v10++;
        if (v26 <= 0x1F)
        {
          goto LABEL_22;
        }
      }

      v12 = v13 + 1;
      *a2 = v13 + 1;
      v27 = *v13;
      if (*(v2 + v27) != 2)
      {
        break;
      }

      v28 = (*(result + 72) + 2 * v27);
      v29 = *v28;
      v8 = v28[1] + ~v29;
      v30 = (*(result + 56) + v29);
      v31 = *v30;
      v10 = v30 + 1;
      v13 = v12;
      if (v31 <= 0x1F)
      {
        goto LABEL_22;
      }
    }

    v8 = 0;
    ++v13;
  }

  while (v27 > 0x1F);
LABEL_22:
  if (v8)
  {
    *(a2 + 20) = *v10;
    a2[1] = v10 + 1;
    *(a2 + 4) = v8 - 1;
  }

  else
  {
    *a2 = v12 + 1;
    v32 = *v12;
    if (*(v2 + v32) == 2)
    {
      v33 = (*(result + 72) + 2 * v32);
      v34 = *v33;
      LODWORD(v33) = v33[1] + ~v34;
      v35 = (*(result + 56) + v34);
      *(a2 + 20) = *v35;
      a2[1] = v35 + 1;
      *(a2 + 4) = v33;
    }

    else
    {
      *(a2 + 20) = v32;
      a2[1] = v10;
      *(a2 + 4) = 0;
    }
  }

  return result;
}

uint64_t sub_10008A13C(uint64_t result, unsigned __int8 **a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v5 = result + 120;
  v6 = *a2;
  v7 = **a2;
  if (*(result + 120 + v7) == 2)
  {
    v8 = (*(result + 72) + 2 * v7);
    v9 = *v8;
    v10 = v8[1] + ~v9;
    v11 = (*(result + 56) + v9);
    v13 = *v11;
    v12 = v11 + 1;
    LODWORD(v7) = v13;
    if (v13 < 0x20)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0;
    if (v7 < 0x20)
    {
      goto LABEL_12;
    }
  }

  v14 = *a2 + 1;
  do
  {
    while (1)
    {
      while (v10)
      {
        --v10;
        v15 = *v12++;
        LODWORD(v7) = v15;
        if (v15 <= 0x1F)
        {
          goto LABEL_12;
        }
      }

      v16 = *v14++;
      v7 = v16;
      if (*(v5 + v16) != 2)
      {
        break;
      }

      v17 = (*(result + 72) + 2 * v7);
      v7 = *v17;
      v10 = v17[1] + ~v7;
      v18 = (*(result + 56) + v7);
      v19 = *v18;
      v12 = v18 + 1;
      LODWORD(v7) = v19;
      if (v19 <= 0x1F)
      {
        goto LABEL_12;
      }
    }

    v10 = 0;
  }

  while (v7 > 0x1F);
LABEL_12:
  v20 = (a3 + v7);
  ++*a2;
  v21 = *v6;
  if (*(v5 + v21) == 2)
  {
    v22 = (*(result + 72) + 2 * v21);
    v21 = *v22;
    v23 = v22[1] + ~v21;
    v24 = (*(result + 56) + v21);
    v25 = *v24;
    v12 = v24 + 1;
    LOBYTE(v21) = v25;
    if (v25 >= 0x20)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = 0;
    if (v21 >= 0x20)
    {
      do
      {
        while (1)
        {
LABEL_18:
          while (1)
          {
            *v20++ = v21;
            if (!v23)
            {
              break;
            }

            --v23;
            v26 = *v12++;
            LOBYTE(v21) = v26;
            if (v26 <= 0x1F)
            {
              goto LABEL_23;
            }
          }

          v27 = (*a2)++;
          v21 = *v27;
          if (*(v5 + v21) != 2)
          {
            break;
          }

          v28 = (*(result + 72) + 2 * v21);
          v21 = *v28;
          v23 = v28[1] + ~v21;
          v29 = (*(result + 56) + v21);
          v30 = *v29;
          v12 = v29 + 1;
          LOBYTE(v21) = v30;
          if (v30 <= 0x1F)
          {
            goto LABEL_23;
          }
        }

        v23 = 0;
      }

      while (v21 > 0x1F);
    }
  }

LABEL_23:
  *v20 = 0;
  if (*(result + 832))
  {
    if (v23)
    {
      --v23;
      v31 = *v12++;
      *a5 = v31;
      if (v31 == 16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v32 = (*a2)++;
      v33 = *v32;
      if (*(v5 + v33) == 2)
      {
        v34 = (*(result + 72) + 2 * v33);
        v35 = *v34;
        v23 = v34[1] + ~v35;
        v36 = (*(result + 56) + v35);
        v37 = *v36;
        v12 = v36 + 1;
        *a5 = v37;
        if (v37 == 16)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v23 = 0;
        *a5 = v33;
        if (v33 == 16)
        {
          do
          {
            while (1)
            {
LABEL_33:
              while (v23)
              {
                --v23;
                v38 = *v12++;
                *a4++ = v38;
                if (v38 <= 0x1F)
                {
                  goto LABEL_38;
                }
              }

              v39 = (*a2)++;
              v40 = *v39;
              if (*(v5 + v40) != 2)
              {
                break;
              }

              v41 = (*(result + 72) + 2 * v40);
              v42 = *v41;
              v23 = v41[1] + ~v42;
              v43 = (*(result + 56) + v42);
              v44 = *v43;
              v12 = v43 + 1;
              *a4++ = v44;
              if (v44 <= 0x1F)
              {
                goto LABEL_38;
              }
            }

            v23 = 0;
            *a4++ = v40;
          }

          while (v40 > 0x1F);
        }
      }
    }
  }

LABEL_38:
  if (v23)
  {
    *(a2 + 20) = *v12;
    a2[1] = v12 + 1;
    *(a2 + 4) = v23 - 1;
  }

  else
  {
    v45 = (*a2)++;
    v46 = *v45;
    if (*(v5 + v46) == 2)
    {
      v47 = (*(result + 72) + 2 * v46);
      v48 = *v47;
      LODWORD(v47) = v47[1] + ~v48;
      v49 = (*(result + 56) + v48);
      *(a2 + 20) = *v49;
      a2[1] = v49 + 1;
      *(a2 + 4) = v47;
    }

    else
    {
      *(a2 + 20) = v46;
      a2[1] = v12;
      *(a2 + 4) = 0;
    }
  }

  return result;
}

uint64_t sub_10008A44C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 20))
  {
    v4 = *(a2 + 16);
    v5 = *(a2 + 8);
    v6 = *a3 == 0;
    while (1)
    {
      if (v4)
      {
        --v4;
        v8 = *v5++;
        LODWORD(v7) = v8;
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = (*a2)++;
        v7 = *v9;
        if (*(a1 + 120 + v7) == 2)
        {
          v10 = (*(a1 + 72) + 2 * v7);
          v7 = *v10;
          v4 = v10[1] + ~v7;
          v11 = (*(a1 + 56) + v7);
          v12 = *v11;
          v5 = v11 + 1;
          LODWORD(v7) = v12;
          if (!v6)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v4 = 0;
          if (!v6)
          {
LABEL_14:
            v13 = *a3++;
            v6 = (v7 - v13);
          }
        }
      }

      if (!v7)
      {
        *(a2 + 16) = 0;
        return v6;
      }
    }
  }

  if (*a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008A500(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 20))
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 8);
    do
    {
      while (1)
      {
        while (v3)
        {
          --v3;
          v5 = *v4++;
          *a3++ = v5;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        v6 = (*a2)++;
        v7 = *v6;
        if (*(result + 120 + v7) != 2)
        {
          break;
        }

        v8 = (*(result + 72) + 2 * v7);
        v9 = *v8;
        v3 = v8[1] + ~v9;
        v10 = (*(result + 56) + v9);
        v11 = *v10;
        v4 = v10 + 1;
        *a3++ = v11;
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      v3 = 0;
      *a3++ = v7;
    }

    while (v7);
LABEL_10:
    *(a2 + 16) = 0;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_10008A594(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  if ((a3 & 0x80000000) != 0)
  {
    result = sub_100089EF0(result, a2);
LABEL_6:
    v6 = *(a2 + 20);
    if (v6)
    {
      v7 = *(a2 + 16);
      v8 = *(a2 + 8);
      do
      {
        while (1)
        {
          while (v7)
          {
            --v7;
            if (!*v8++)
            {
              goto LABEL_14;
            }
          }

          v10 = (*a2)++;
          v11 = *v10;
          if (*(v4 + 120 + v11) != 2)
          {
            break;
          }

          v12 = (*(v4 + 72) + 2 * v11);
          v13 = *v12;
          v7 = v12[1] + ~v13;
          v14 = (*(v4 + 56) + v13);
          v15 = *v14;
          v8 = v14 + 1;
          if (!v15)
          {
            goto LABEL_14;
          }
        }

        v7 = 0;
      }

      while (v11);
LABEL_14:
      *(a2 + 16) = 0;
    }

    goto LABEL_15;
  }

  v5 = a3;
  if (!a3)
  {
    goto LABEL_6;
  }

  if (a3 != 1)
  {
    if (a3 >= 7)
    {
      return result;
    }

    goto LABEL_39;
  }

  v6 = *(a2 + 20);
LABEL_15:
  if ((v6 & 2) != 0)
  {
    v5 = 1;
    goto LABEL_39;
  }

  v16 = v4 + 376;
  if (*(v4 + 752) != -1)
  {
    v17 = (*a2)++;
    v18 = *v17;
    if (*(v16 + v18) == 2)
    {
      v19 = (*(v4 + 104) + 2 * v18);
      v20 = *v19;
      *(a2 + 16) = v19[1] + ~v20;
      *(a2 + 8) = *(v4 + 88) + v20 + 1;
    }
  }

  if (*(v4 + 40) < 1)
  {
    goto LABEL_38;
  }

  v21 = *(a2 + 16);
  if (!v21)
  {
    v24 = (*a2)++;
    v25 = *v24;
    if (*(v16 + v25) != 2)
    {
      goto LABEL_30;
    }

    v26 = (*(v4 + 104) + 2 * v25);
    v27 = *v26;
    v22 = v26[1] + ~v27;
    *(a2 + 16) = v22;
    *(a2 + 8) = *(v4 + 88) + v27 + 1;
    if (!v22)
    {
      goto LABEL_30;
    }

LABEL_28:
    v28 = v22 - 1;
    v29 = *(a2 + 8);
    *(a2 + 16) = v28;
    *(a2 + 8) = v29 + 1;
    if (*(v4 + 40) == 1)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v22 = v21 - 1;
  v23 = *(a2 + 8);
  *(a2 + 16) = v22;
  *(a2 + 8) = v23 + 1;
  if (v22)
  {
    goto LABEL_28;
  }

LABEL_30:
  v30 = (*a2)++;
  v31 = *v30;
  if (*(v16 + v31) != 2)
  {
    if (*(v4 + 40) == 1)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v32 = (*(v4 + 104) + 2 * v31);
  v33 = *v32;
  v28 = v32[1] + ~v33;
  *(a2 + 16) = v28;
  *(a2 + 8) = *(v4 + 88) + v33 + 1;
  if (*(v4 + 40) == 1)
  {
    goto LABEL_38;
  }

LABEL_32:
  if (v28)
  {
    v34 = v28 - 1;
    v36 = (a2 + 8);
    v35 = *(a2 + 8);
    *(a2 + 16) = v34;
LABEL_37:
    *v36 = v35 + 1;
    goto LABEL_38;
  }

LABEL_35:
  v37 = (*a2)++;
  v38 = *v37;
  if (*(v16 + v38) == 2)
  {
    v39 = (*(v4 + 104) + 2 * v38);
    v40 = *v39;
    *(a2 + 16) = v39[1] + ~v40;
    v35 = *(v4 + 88) + v40;
    v36 = (a2 + 8);
    goto LABEL_37;
  }

LABEL_38:
  v5 = 2;
LABEL_39:
  v41 = *(a2 + 20);
  do
  {
    if ((v41 >> v5))
    {
      v42 = *a2;
      result = sub_100089A5C(v4, v5, *a2);
      *a2 = &v42[result];
    }

    ++v5;
  }

  while (v5 != 7);
  return result;
}

uint64_t sub_10008A88C(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_100089EF0(a1, a2);
  if (!a3)
  {
    return result;
  }

  v7 = *(a2 + 20);
  if (v7)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 8);
    do
    {
      while (1)
      {
        while (v8)
        {
          --v8;
          if (!*v9++)
          {
            goto LABEL_10;
          }
        }

        v11 = (*a2)++;
        v12 = *v11;
        if (*(a1 + 120 + v12) != 2)
        {
          break;
        }

        v13 = (*(a1 + 72) + 2 * v12);
        v14 = *v13;
        v8 = v13[1] + ~v14;
        v15 = (*(a1 + 56) + v14);
        v16 = *v15;
        v9 = v15 + 1;
        if (!v16)
        {
          goto LABEL_10;
        }
      }

      v8 = 0;
    }

    while (v12);
LABEL_10:
    *(a2 + 16) = 0;
  }

  v17 = 1;
  if (a3 >= 2 && (v7 & 2) == 0)
  {
    v18 = a1 + 376;
    if (*(a1 + 752) != -1)
    {
      v19 = (*a2)++;
      v20 = *v19;
      if (*(v18 + v20) == 2)
      {
        v21 = (*(a1 + 104) + 2 * v20);
        v22 = *v21;
        *(a2 + 16) = v21[1] + ~v22;
        *(a2 + 8) = *(a1 + 88) + v22 + 1;
      }
    }

    if (*(a1 + 40) < 1)
    {
      goto LABEL_32;
    }

    v23 = *(a2 + 16);
    if (v23)
    {
      v24 = v23 - 1;
      v25 = *(a2 + 8);
      *(a2 + 16) = v24;
      *(a2 + 8) = v25 + 1;
      if (!v24)
      {
LABEL_24:
        v32 = (*a2)++;
        v33 = *v32;
        if (*(v18 + v33) != 2)
        {
          if (*(a1 + 40) == 1)
          {
            goto LABEL_32;
          }

          goto LABEL_29;
        }

        v34 = (*(a1 + 104) + 2 * v33);
        v35 = *v34;
        v30 = v34[1] + ~v35;
        *(a2 + 16) = v30;
        *(a2 + 8) = *(a1 + 88) + v35 + 1;
        if (*(a1 + 40) == 1)
        {
          goto LABEL_32;
        }

LABEL_26:
        if (v30)
        {
          v36 = v30 - 1;
          v38 = (a2 + 8);
          v37 = *(a2 + 8);
          *(a2 + 16) = v36;
LABEL_31:
          *v38 = v37 + 1;
          goto LABEL_32;
        }

LABEL_29:
        v39 = (*a2)++;
        v40 = *v39;
        if (*(v18 + v40) == 2)
        {
          v41 = (*(a1 + 104) + 2 * v40);
          v42 = *v41;
          *(a2 + 16) = v41[1] + ~v42;
          v37 = *(a1 + 88) + v42;
          v38 = (a2 + 8);
          goto LABEL_31;
        }

LABEL_32:
        v17 = 2;
        goto LABEL_33;
      }
    }

    else
    {
      v26 = (*a2)++;
      v27 = *v26;
      if (*(v18 + v27) != 2)
      {
        goto LABEL_24;
      }

      v28 = (*(a1 + 104) + 2 * v27);
      v29 = *v28;
      v24 = v28[1] + ~v29;
      *(a2 + 16) = v24;
      *(a2 + 8) = *(a1 + 88) + v29 + 1;
      if (!v24)
      {
        goto LABEL_24;
      }
    }

    v30 = v24 - 1;
    v31 = *(a2 + 8);
    *(a2 + 16) = v30;
    *(a2 + 8) = v31 + 1;
    if (*(a1 + 40) == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_33:
  if (v17 < a3)
  {
    do
    {
      if ((v7 >> v17))
      {
        v43 = *a2;
        result = sub_100089A5C(a1, v17, *a2);
        *a2 = &v43[result];
      }

      ++v17;
    }

    while (a3 != v17);
  }

  return result;
}

uint64_t sub_10008AB64(uint64_t result, unsigned int a2, void *a3)
{
  v3 = *(result + 696);
  *a3 = *result + *(*(result + 16) + 4 * (a2 >> v3));
  v4 = a2 & ~(-1 << v3);
  if (v4)
  {
    v6 = result;
    do
    {
      result = sub_10008A594(v6, a3, 0xFFFFFFFF);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_10008ABD4(uint64_t a1, int *a2, void *a3, unsigned __int8 *a4, _BYTE *a5, int a6)
{
  v12 = *(a1 + 480);
  v13 = sub_1000C7854(a4);
  v14 = a5;
  v15 = *a5;
  if (*a5)
  {
    v16 = a5 + 1;
    while (v15 >= 0x20)
    {
      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = *(v12 + 158);
    v19 = v18 - 2;
    if (v18 <= 2)
    {
      v21 = 0;
      v20 = *v12;
    }

    else
    {
      v20 = *v12;
      if (v13 < 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        do
        {
          v23 = 0;
          v24 = 0;
          v25 = (v19 + v21 + 1) >> 1;
          v26 = (v20 + *(v12[2] + 4 * v25));
          v27 = v13;
          v28 = v14;
          do
          {
            if (v23)
            {
              --v23;
              v30 = *v24++;
              LODWORD(v29) = v30;
              v31 = *v28;
              if (v31 < 0x20)
              {
                goto LABEL_8;
              }
            }

            else
            {
              v32 = *v26++;
              v29 = v32;
              if (*(v12 + v32 + 120) == 2)
              {
                v33 = (v12[9] + 2 * v29);
                v29 = *v33;
                v23 = v33[1] + ~v29;
                v34 = (v12[7] + v29);
                v35 = *v34;
                v24 = v34 + 1;
                LODWORD(v29) = v35;
                v31 = *v28;
                if (v31 < 0x20)
                {
                  goto LABEL_8;
                }
              }

              else
              {
                v23 = 0;
                v31 = *v28;
                if (v31 < 0x20)
                {
LABEL_8:
                  v22 = 1;
                  goto LABEL_9;
                }
              }
            }

            v22 = v29 - v31;
            if (v22)
            {
              goto LABEL_9;
            }

            ++v28;
            --v27;
          }

          while (v27);
          v22 = 0;
LABEL_9:
          if (v22 >= 0)
          {
            v19 = v25 - 1;
          }

          else
          {
            v21 = (v19 + v21 + 1) >> 1;
          }
        }

        while (v21 < v19);
      }
    }

    *a3 = v20 + *(v12[2] + 4 * v21);
    v36 = sub_10008ADA4(*(a1 + 480), a2, a3, a4, v14, a6);
    if ((v36 & 0x80000000) == 0)
    {
      return (v21 << *(v12 + 174)) + v36;
    }
  }

  return 0xFFFFFFLL;
}

uint64_t sub_10008ADA4(uint64_t a1, int *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v6 = *a1 + *(*(a1 + 16) + 4 * *(a1 + 632) - 4);
  v7 = *a3;
  if (*a3 >= v6)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = 0;
  v15 = a1 + 120;
  v16 = a5 + 1;
  while (1)
  {
    v18 = v7 + 1;
    v19 = *v7;
    if (*(v15 + v19) == 2)
    {
      v20 = (*(a1 + 72) + 2 * v19);
      v19 = *v20;
      v21 = v20[1] + ~v19;
      v22 = (*(a1 + 56) + v19);
      v24 = *v22;
      v23 = v22 + 1;
      LODWORD(v19) = v24;
      v25 = v7 + 1;
      if (v24 >= 0x20)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0;
      v25 = v7 + 1;
      if (v19 >= 0x20)
      {
        do
        {
          while (1)
          {
LABEL_13:
            while (v21)
            {
              --v21;
              v26 = *v23++;
              LODWORD(v19) = v26;
              if (v26 <= 0x1F)
              {
                goto LABEL_18;
              }
            }

            v27 = *v25++;
            v19 = v27;
            if (*(v15 + v27) != 2)
            {
              break;
            }

            v28 = (*(a1 + 72) + 2 * v19);
            v19 = *v28;
            v21 = v28[1] + ~v19;
            v29 = (*(a1 + 56) + v19);
            v30 = *v29;
            v23 = v29 + 1;
            LODWORD(v19) = v30;
            if (v30 <= 0x1F)
            {
              goto LABEL_18;
            }
          }

          v21 = 0;
        }

        while (v19 > 0x1F);
      }
    }

LABEL_18:
    if (a2[1] < v19)
    {
      v17 = *a2;
      *a3 = v25;
      goto LABEL_54;
    }

    *a3 = v18;
    v31 = *v7;
    if (*(v15 + v31) == 2)
    {
      v32 = (*(a1 + 72) + 2 * v31);
      v33 = *v32;
      v21 = v32[1] + ~v33;
      v34 = (*(a1 + 56) + v33);
      v35 = *v34;
      v23 = v34 + 1;
      LODWORD(v31) = v35;
      v36 = v19;
      v37 = *(a5 + v19);
      if (*(a5 + v19))
      {
        goto LABEL_29;
      }

LABEL_36:
      if (a2[3])
      {
        v50 = v31 > 0x1F;
      }

      else
      {
        v50 = 0;
      }

      v17 = v50;
      *a2 = v17;
      a2[1] = v19;
      if (v31 >= 0x20)
      {
        do
        {
          while (1)
          {
LABEL_49:
            while (v21)
            {
              --v21;
              v51 = *v23++;
              if (v51 <= 0x1F)
              {
                goto LABEL_54;
              }
            }

            v52 = (*a3)++;
            v53 = *v52;
            if (*(v15 + v53) != 2)
            {
              break;
            }

            v54 = (*(a1 + 72) + 2 * v53);
            v55 = *v54;
            v21 = v54[1] + ~v55;
            v56 = (*(a1 + 56) + v55);
            v57 = *v56;
            v23 = v56 + 1;
            if (v57 <= 0x1F)
            {
              goto LABEL_54;
            }
          }

          v21 = 0;
        }

        while (v53 > 0x1F);
      }

      goto LABEL_54;
    }

    v21 = 0;
    v36 = v19;
    v37 = *(a5 + v19);
    if (!*(a5 + v19))
    {
      goto LABEL_36;
    }

LABEL_29:
    while (1)
    {
      v17 = v31 - v37;
      if (v31 != v37)
      {
        break;
      }

      if (v21)
      {
        --v21;
        v44 = *v23++;
        LODWORD(v31) = v44;
        v37 = *(v16 + v36++);
        if (!v37)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v45 = v18 + 1;
        *a3 = v18 + 1;
        v31 = *v18;
        if (*(v15 + v31) == 2)
        {
          v46 = (*(a1 + 72) + 2 * v31);
          v47 = *v46;
          v21 = v46[1] + ~v47;
          v48 = (*(a1 + 56) + v47);
          v49 = *v48;
          v23 = v48 + 1;
          LODWORD(v31) = v49;
          v37 = *(v16 + v36++);
          v18 = v45;
          if (!v37)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v21 = 0;
          v37 = *(v16 + v36++);
          ++v18;
          if (!v37)
          {
LABEL_35:
            LODWORD(v19) = v36;
            goto LABEL_36;
          }
        }
      }
    }

    *a2 = v17;
    a2[1] = v36;
    if (v31 >= 0x20)
    {
      goto LABEL_49;
    }

LABEL_54:
    if (!*(a1 + 832))
    {
      goto LABEL_4;
    }

    if (v21)
    {
      --v21;
      v59 = *v23++;
      LODWORD(v58) = v59;
      if (v17)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v60 = (*a3)++;
      v58 = *v60;
      if (*(v15 + v58) == 2)
      {
        v61 = (*(a1 + 72) + 2 * v58);
        v58 = *v61;
        v21 = v61[1] + ~v58;
        v62 = (*(a1 + 56) + v58);
        v63 = *v62;
        v23 = v62 + 1;
        LODWORD(v58) = v63;
        if (v17)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v21 = 0;
        if (v17)
        {
          goto LABEL_80;
        }
      }
    }

    if (!a2[2])
    {
LABEL_80:
      if (v58 == 16)
      {
        do
        {
          while (1)
          {
            while (v21)
            {
              --v21;
              v79 = *v23++;
              if (v79 <= 0x1F)
              {
                goto LABEL_4;
              }
            }

            v80 = (*a3)++;
            v81 = *v80;
            if (*(v15 + v81) != 2)
            {
              break;
            }

            v82 = (*(a1 + 72) + 2 * v81);
            v83 = *v82;
            v21 = v82[1] + ~v83;
            v84 = (*(a1 + 56) + v83);
            v85 = *v84;
            v23 = v84 + 1;
            if (v85 <= 0x1F)
            {
              goto LABEL_4;
            }
          }

          v21 = 0;
        }

        while (v81 > 0x1F);
      }

      goto LABEL_4;
    }

    if (v58 == 16)
    {
      v64 = a4;
      do
      {
        if (v21)
        {
          --v21;
          v66 = *v23++;
          LODWORD(v65) = v66;
          if (v66 < 0x20)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v68 = (*a3)++;
          v65 = *v68;
          if (*(v15 + v65) == 2)
          {
            v69 = (*(a1 + 72) + 2 * v65);
            v65 = *v69;
            v21 = v69[1] + ~v65;
            v70 = (*(a1 + 56) + v65);
            v71 = *v70;
            v23 = v70 + 1;
            LODWORD(v65) = v71;
            if (v71 < 0x20)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v21 = 0;
            if (v65 < 0x20)
            {
LABEL_72:
              v17 = 0;
              goto LABEL_4;
            }
          }
        }

        v67 = *v64++;
      }

      while (v65 == v67);
      do
      {
        while (1)
        {
          while (v21)
          {
            --v21;
            v72 = *v23++;
            if (v72 <= 0x1F)
            {
              goto LABEL_3;
            }
          }

          v73 = (*a3)++;
          v74 = *v73;
          if (*(v15 + v74) != 2)
          {
            break;
          }

          v75 = (*(a1 + 72) + 2 * v74);
          v76 = *v75;
          v21 = v75[1] + ~v76;
          v77 = (*(a1 + 56) + v76);
          v78 = *v77;
          v23 = v77 + 1;
          if (v78 <= 0x1F)
          {
            goto LABEL_3;
          }
        }

        v21 = 0;
      }

      while (v74 > 0x1F);
LABEL_3:
      v17 = -1;
      goto LABEL_4;
    }

    if (a6 == 16)
    {
      goto LABEL_3;
    }

    v17 = (v58 & a6) != 0 ? 0 : -1;
LABEL_4:
    if (v21)
    {
      *(a3 + 20) = *v23;
      *(a3 + 16) = v21 - 1;
      *(a3 + 8) = v23 + 1;
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_6;
    }

    v38 = (*a3)++;
    v39 = *v38;
    if (*(v15 + v39) != 2)
    {
      break;
    }

    v40 = (*(a1 + 72) + 2 * v39);
    v41 = *v40;
    v42 = v40[1] + ~v41;
    v43 = (*(a1 + 56) + v41);
    *(a3 + 20) = *v43;
    *(a3 + 16) = v42;
    *(a3 + 8) = v43 + 1;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_6:
    sub_10008A594(a1, a3, 0);
    ++v14;
    v7 = *a3;
    if (*a3 >= v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *(a3 + 20) = v39;
  *(a3 + 16) = 0;
  *(a3 + 8) = v23;
  if (v17 < 0)
  {
    goto LABEL_6;
  }

LABEL_94:
  if (v17)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v14;
  }
}