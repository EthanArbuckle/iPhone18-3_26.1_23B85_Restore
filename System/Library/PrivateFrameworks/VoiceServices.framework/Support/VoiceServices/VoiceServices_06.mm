uint64_t sub_100041C10(unint64_t a1, unsigned __int8 *a2, __int16 *a3, int a4, int a5, int a6, int a7, _DWORD *a8)
{
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (a1)
  {
    v23 = sub_1000BFB80(*(a1 + 6480));
    v22 = sub_1000C9EBC(*(a1 + 6488));
    v19 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v20 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v21);
    nullsub_1(v20);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v17 = sub_1000BDA90();
    if (setjmp(v17))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      goto LABEL_11;
    }

    if (*(a1 + 8160))
    {
      goto LABEL_13;
    }

    if (a8)
    {
      *a8 = 0;
    }

    if (!a2 || !a3 || !*a2 || !a8 || !*a3)
    {
      goto LABEL_11;
    }

    if (*(a1 + 6448))
    {
      v18 = 7;
      goto LABEL_14;
    }

    if (!sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_START") || !sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_END"))
    {
      goto LABEL_11;
    }

    if (!*(a1 + 80))
    {
LABEL_13:
      v18 = 1;
      goto LABEL_14;
    }

    v25 = 0;
    v26 = sub_100040DB0(a1, a2, &v25, &v24);
    if (!v26)
    {
      if (!v25 || v24)
      {
LABEL_11:
        v18 = 4;
LABEL_14:
        v26 = v18;
        sub_1000BDAF4();
        goto LABEL_9;
      }

      v26 = sub_100041428(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v18 = v26;
    goto LABEL_14;
  }

  v23 = sub_1000BFB80(0);
  v22 = sub_1000C9EBC(0);
  v19 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v20 = sub_1000CED78(0, 0, &v21);
  nullsub_1(v20);
LABEL_8:
  v26 = 1;
LABEL_9:
  sub_10004D8D8(v26);
  sub_1000CED78(v20, v21, 0);
  sub_1000BDB44(v19);
  sub_1000C9EBC(v22);
  sub_1000BFB80(v23);
  return v26;
}

uint64_t sub_100041E90(unint64_t a1, unsigned __int8 *a2, __int16 *a3, unint64_t a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  if (a1)
  {
    v26 = sub_1000BFB80(*(a1 + 6480));
    v25 = sub_1000C9EBC(*(a1 + 6488));
    v22 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v23 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v24);
    nullsub_1(v23);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v18 = sub_1000BDA90();
    if (setjmp(v18))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      goto LABEL_11;
    }

    if (*(a1 + 8160))
    {
      goto LABEL_13;
    }

    if (a9)
    {
      *a9 = 0;
    }

    if (!a2)
    {
      goto LABEL_11;
    }

    if (!a3)
    {
      goto LABEL_11;
    }

    if (!*a2)
    {
      goto LABEL_11;
    }

    v20 = sub_1000CB75C(a3);
    if (!a9 || !v20)
    {
      goto LABEL_11;
    }

    if (*(a1 + 6448))
    {
      v19 = 7;
      goto LABEL_14;
    }

    if (!sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_START") || !sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_END"))
    {
      goto LABEL_11;
    }

    if (!*(a1 + 80))
    {
LABEL_13:
      v19 = 1;
      goto LABEL_14;
    }

    v28 = 0;
    v29 = sub_100040DB0(a1, a2, &v28, &v27);
    if (!v29)
    {
      if (!v28 || v27)
      {
LABEL_11:
        v19 = 4;
LABEL_14:
        v29 = v19;
        sub_1000BDAF4();
        goto LABEL_9;
      }

      if (a4 && sub_1000CB75C(a4))
      {
        v21 = sub_100042160(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      }

      else
      {
        v21 = sub_100041428(a1, a2, a3, a5, a6, a7, a8, a9);
      }

      v29 = v21;
    }

    v19 = v29;
    goto LABEL_14;
  }

  v26 = sub_1000BFB80(0);
  v25 = sub_1000C9EBC(0);
  v22 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v23 = sub_1000CED78(0, 0, &v24);
  nullsub_1(v23);
LABEL_8:
  v29 = 1;
LABEL_9:
  sub_10004D8D8(v29);
  sub_1000CED78(v23, v24, 0);
  sub_1000BDB44(v22);
  sub_1000C9EBC(v25);
  sub_1000BFB80(v26);
  return v29;
}

uint64_t sub_100042160(unint64_t a1, unsigned __int8 *a2, __int16 *a3, uint64_t a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  *a9 = 0;
  v16 = sub_1000CBC48(a3, asc_1000F2960);
  v105 = a4;
  if (sub_1000CBC48(a4, asc_1000F2960) == v16)
  {
    v24 = a1;
    v100 = a2;
    v102 = a5;
    v103 = a6;
    v109 = 0;
    v106 = sub_1000C9F54(8 * v16, v17, v18, v19, v20, v21, v22, v23);
    v104 = 8 * v16;
    v32 = sub_1000C9F54(v104, v25, v26, v27, v28, v29, v30, v31);
    v110 = 0;
    v33 = sub_1000CB75C(a3) + 1;
    v41 = sub_1000BFBD8(2 * v33, v34, v35, v36, v37, v38, v39, v40);
    v101 = a3;
    sub_1000CB778(v41, a3, v33);
    v42 = sub_1000CBA4C(v41, asc_1000F2960, &v110);
    v108 = v16;
    if (v16 >= 1 && v42 != 0)
    {
      v44 = v42;
      v45 = 1;
      v46 = v106;
      do
      {
        v47 = sub_1000CB75C(v44) + 1;
        v55 = sub_1000BFBD8(2 * v47, v48, v49, v50, v51, v52, v53, v54);
        sub_1000CB778(v55, v44, v47);
        *v46++ = v55;
        v44 = sub_1000CBA4C(0, asc_1000F2960, &v110);
        if (v44)
        {
          v56 = v45 >= v16;
        }

        else
        {
          v56 = 1;
        }

        ++v45;
      }

      while (!v56);
    }

    sub_1000BFEC4(v41);
    v110 = 0;
    v57 = sub_1000CB75C(v105) + 1;
    v65 = sub_1000BFBD8(2 * v57, v58, v59, v60, v61, v62, v63, v64);
    sub_1000CB778(v65, v105, v57);
    v66 = sub_1000CBA4C(v65, asc_1000F2960, &v110);
    v67 = 0;
    if (v16 >= 1)
    {
      v68 = v66;
      if (v66)
      {
        v69 = 0;
        do
        {
          v70 = sub_1000CB75C(v68) + 1;
          v78 = sub_1000BFBD8(2 * v70, v71, v72, v73, v74, v75, v76, v77);
          sub_1000CB778(v78, v68, v70);
          v32[v69++] = v78;
          v68 = sub_1000CBA4C(0, asc_1000F2960, &v110);
          if (v68)
          {
            v79 = v69 >= v108;
          }

          else
          {
            v79 = 1;
          }
        }

        while (!v79);
        v67 = v69;
      }
    }

    sub_1000BFEC4(v65);
    v87 = sub_1000C9F54(4 * v67, v80, v81, v82, v83, v84, v85, v86);
    if (v67 < 1)
    {
      v88 = 0;
LABEL_30:
      v92 = sub_100041228(v24, v100, v88, v87, v101, v103, v102, a9);
    }

    else
    {
      v88 = 0;
      v89 = v106;
      v90 = v32;
      v91 = v67;
      while (1)
      {
        v92 = sub_10004E038(v24, *v89, *v90, v67 - v88, &v87[v88], &v109);
        if (v92)
        {
          break;
        }

        v88 += v109;
        ++v90;
        ++v89;
        if (!--v91)
        {
          goto LABEL_30;
        }
      }
    }

    v94 = v92;
    sub_1000CA03C(v87, 4 * v67);
    if (v108 >= 1)
    {
      v95 = v108;
      v96 = v106;
      v97 = v32;
      do
      {
        v98 = *v96++;
        sub_1000BFEC4(v98);
        v99 = *v97++;
        sub_1000BFEC4(v99);
        --v95;
      }

      while (v95);
    }

    sub_1000CA03C(v32, v104);
    sub_1000CA03C(v106, v104);
    return v94;
  }

  else
  {

    return sub_100041428(a1, a2, a3, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_1000424E4(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  if (a1)
  {
    v14 = sub_1000BFB80(*(a1 + 6480));
    v13 = sub_1000C9EBC(*(a1 + 6488));
    v10 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v11 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v12);
    nullsub_1(v11);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v7 = sub_1000BDA90();
    if (setjmp(v7))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
LABEL_11:
      v8 = 4;
LABEL_16:
      v15 = v8;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (!*(a1 + 8160))
    {
      if (*(a1 + 6448))
      {
        v8 = 7;
        goto LABEL_16;
      }

      if (!a2 || !sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_START") || !sub_1000C7A1C(a2, "_CONSTRAINT_CLASS_END") || !*a2)
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 80);
      if (v9)
      {
        *a3 = sub_10002FD6C(v9, a2);
        v8 = v15;
        goto LABEL_16;
      }
    }

    v8 = 1;
    goto LABEL_16;
  }

  v14 = sub_1000BFB80(0);
  v13 = sub_1000C9EBC(0);
  v10 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v11 = sub_1000CED78(0, 0, &v12);
  nullsub_1(v11);
LABEL_8:
  v15 = 1;
LABEL_9:
  sub_10004D8D8(v15);
  sub_1000CED78(v11, v12, 0);
  sub_1000BDB44(v10);
  sub_1000C9EBC(v13);
  sub_1000BFB80(v14);
  return v15;
}

uint64_t sub_1000426E0(uint64_t a1, unsigned __int8 *a2, int a3, int a4, _WORD *a5)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  if (a1)
  {
    v19 = sub_1000BFB80(*(a1 + 6480));
    v18 = sub_1000C9EBC(*(a1 + 6488));
    v15 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v16 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v17);
    nullsub_1(v16);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v11 = sub_1000BDA90();
    if (setjmp(v11))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      goto LABEL_11;
    }

    if (*(a1 + 8160))
    {
      v12 = 1;
      goto LABEL_14;
    }

    if (a4 < 1 || !a5 || !a2 || !*a2 || a3 == -1)
    {
LABEL_11:
      v12 = 4;
LABEL_14:
      v20 = v12;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    v13 = sub_100033C8C(*(a1 + 80), a2, a3, a4, a5);
    if (v13 >= a4)
    {
      v14 = 10;
    }

    else
    {
      if (v13 != -1)
      {
LABEL_25:
        v12 = v20;
        goto LABEL_14;
      }

      v14 = 4;
    }

    v20 = v14;
    goto LABEL_25;
  }

  v19 = sub_1000BFB80(0);
  v18 = sub_1000C9EBC(0);
  v15 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v16 = sub_1000CED78(0, 0, &v17);
  nullsub_1(v16);
LABEL_8:
  v20 = 1;
LABEL_9:
  sub_10004D8D8(v20);
  sub_1000CED78(v16, v17, 0);
  sub_1000BDB44(v15);
  sub_1000C9EBC(v18);
  sub_1000BFB80(v19);
  return v20;
}

uint64_t sub_1000428F0(uint64_t a1, unsigned __int8 *a2, int a3, int a4, int a5, _DWORD *a6)
{
  v20 = 0;
  v19 = a4;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  if (a1)
  {
    v18 = sub_1000BFB80(*(a1 + 6480));
    v17 = sub_1000C9EBC(*(a1 + 6488));
    v14 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v15 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v16);
    nullsub_1(v15);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v12 = sub_1000BDA90();
    if (setjmp(v12))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        goto LABEL_13;
      }

      if (*(a1 + 6448))
      {
        v20 = 7;
        sub_1000BDAF4();
        goto LABEL_9;
      }

      if (a3 < 0 || v19 < 0)
      {
        goto LABEL_11;
      }

      if (!*(a1 + 80) || !*(a1 + 72))
      {
LABEL_13:
        v20 = 1;
        sub_1000BDAF4();
        goto LABEL_9;
      }

      if (a2 && *a2 && sub_1000C7854(a2) < 20 && sub_10002C6C4(*(a1 + 72), a2) == -1)
      {
        if (qword_1001065A8 && *(qword_1001065A8 + 1928))
        {
          v19 += a3;
        }

        v13 = sub_100023DC8(a2, *(a1 + 80), a3, v19, a5);
        if (v13)
        {
          *a6 = sub_10002C29C(*(a1 + 72), v13, -1);
          v20 = 0;
        }

        else
        {
          v20 = 2;
        }

        sub_1000BDAF4();
        goto LABEL_9;
      }
    }

LABEL_11:
    v20 = 4;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v18 = sub_1000BFB80(0);
  v17 = sub_1000C9EBC(0);
  v14 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v15 = sub_1000CED78(0, 0, &v16);
  nullsub_1(v15);
LABEL_8:
  v20 = 1;
LABEL_9:
  sub_10004D8D8(v20);
  sub_1000CED78(v15, v16, 0);
  sub_1000BDB44(v14);
  sub_1000C9EBC(v17);
  sub_1000BFB80(v18);
  return v20;
}

uint64_t sub_100042B80(uint64_t a1, unsigned int a2, char *a3, char *a4, unsigned int a5, _DWORD *a6)
{
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  if (a1)
  {
    v24 = sub_1000BFB80(*(a1 + 6480));
    v23 = sub_1000C9EBC(*(a1 + 6488));
    v20 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v21 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v22);
    nullsub_1(v21);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v13 = sub_1000BDA90();
    if (setjmp(v13))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        goto LABEL_13;
      }

      *a6 = 0;
      if (a2 == -1)
      {
        goto LABEL_11;
      }

      if (*(a1 + 6448))
      {
        v14 = 7;
        goto LABEL_14;
      }

      if (!a3 || !a4 || !*a3 || !*a4 || !sub_1000C7A1C(a4, "_CONSTRAINT_CLASS_START") || !sub_1000C7A1C(a3, "_CONSTRAINT_CLASS_END"))
      {
        goto LABEL_11;
      }

      if (!*(a1 + 80) || (v15 = *(a1 + 72)) == 0)
      {
LABEL_13:
        v14 = 1;
        goto LABEL_14;
      }

      if (sub_10002C688(v15, a2))
      {
        v16 = sub_10002C688(*(a1 + 72), a2);
        if (sub_100022AD4(v16) == 3)
        {
          if (!sub_1000C7A1C(a3, "_CONSTRAINT_CLASS_START"))
          {
            a3 = "<s>";
          }

          v17 = (sub_1000C7A1C(a4, "_CONSTRAINT_CLASS_END") ? a4 : "<e>");
          v18 = sub_10002E70C(*(a1 + 80), a3, &v25);
          v19 = sub_10002E70C(*(a1 + 80), v17, &v25);
          if (v18 != -1 && v19 != -1 && a5 < 0x100)
          {
            *a6 = sub_100024B18(v16, v18, v19, a5);
            v14 = v26;
            goto LABEL_14;
          }
        }
      }
    }

LABEL_11:
    v14 = 4;
LABEL_14:
    v26 = v14;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v24 = sub_1000BFB80(0);
  v23 = sub_1000C9EBC(0);
  v20 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v21 = sub_1000CED78(0, 0, &v22);
  nullsub_1(v21);
LABEL_8:
  v26 = 1;
LABEL_9:
  sub_10004D8D8(v26);
  sub_1000CED78(v21, v22, 0);
  sub_1000BDB44(v20);
  sub_1000C9EBC(v23);
  sub_1000BFB80(v24);
  return v26;
}

uint64_t sub_100042E60(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, int *a6, void *a7, uint64_t a8, _DWORD *a9)
{
  v39 = 4;
  if (!a6)
  {
    return v39;
  }

  *a6 = -1;
  if (a2 < 1 || !a3 || a4 < 1 || !a5 || !a7)
  {
    return v39;
  }

  if (*(a1 + 72))
  {
    *a7 = 0;
    v16 = a2;
    v17 = a2;
    v18 = a3;
    while (1)
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 == -1)
      {
        break;
      }

      v21 = *(a1 + 72);
      if (!v21)
      {
        break;
      }

      v22 = v16;
      if (!sub_10002C688(v21, v19))
      {
        break;
      }

      v16 = v22;
      if (!--v17)
      {
        v23 = 0;
        do
        {
          if (!sub_1000B252C(*(a1 + 8), *(a5 + v23)) || *(a5 + v23) > 0xFFFFFFFA)
          {
            return 4;
          }

          v23 += 4;
        }

        while (4 * a4 != v23);
        v38 = 0;
        v39 = 0;
        v31 = sub_1000C9F54(8 * v22, v24, v25, v26, v27, v28, v29, v30);
        for (i = 0; i != v22; ++i)
        {
          v31[i] = sub_10002C688(*(a1 + 72), a3[i]);
        }

        v37 = 0;
        bzero(a7, 8 * a4);
        if (sub_1000234A0(v31, a2, a4, a5, &v38, a7, &v37, a8))
        {
          v33 = *(a1 + 72);
          if (v33)
          {
            v34 = sub_10002C44C(v33, v38);
          }

          else
          {
            v34 = -1;
          }

          *a6 = v34;
        }

        sub_1000CA03C(v31, 8 * v22);
        result = 0;
        if (a9)
        {
          *a9 = v37;
        }

        return result;
      }
    }

    return v39;
  }

  return 1;
}

uint64_t sub_10004304C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, int *a6, void *a7, uint64_t a8, uint64_t a9, _DWORD *a10, _DWORD *a11)
{
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  if (a1)
  {
    v68 = sub_1000BFB80(*(a1 + 6480));
    v67 = sub_1000C9EBC(*(a1 + 6488));
    v64 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v65 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v66);
    nullsub_1(v65);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v20 = sub_1000BDA90();
    if (setjmp(v20))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      goto LABEL_11;
    }

    if (*(a1 + 8160))
    {
      v69 = 1;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (!a8 || !a9 || !a10)
    {
LABEL_11:
      v69 = 4;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    v63 = a4 + 1;
    v28 = sub_1000C9F54(v63, v21, v22, v23, v24, v25, v26, v27);
    v29 = a6;
    v30 = v28;
    v69 = sub_100042E60(a1, a2, a3, a4, a5, v29, a7, v28, a11);
    if (v69)
    {
LABEL_32:
      v69 = 0;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (a4 < 1)
    {
      LODWORD(v36) = 0;
      v35 = a9;
    }

    else
    {
      v31 = 1;
      v32 = a7;
      v33 = 0;
      v34 = 0;
      v35 = a9;
      do
      {
        v36 = v33;
        if (a4 == v31 || *(v30 + v31))
        {
          *(a8 + 4 * v33) = v34;
          *(a9 + 4 * v33) = v31 - v34;
          a7[v33] = *v32;
          v36 = (v33 + 1);
          v34 = v31;
        }

        v33 = v36;
        ++v31;
        ++v32;
      }

      while (v63 != v31);
    }

    *a10 = v36;
    if (v36 < a4)
    {
      v37 = v36;
      v38 = v36;
      v39 = a4 - v36;
      if (v39 >= 0x14)
      {
        v45 = 4 * v36;
        v46 = a8 + 4 * v37;
        v47 = a8 + 4 * a4;
        v48 = v35 + 4 * v37;
        v49 = v35 + 4 * a4;
        v50 = &a7[v37];
        v51 = &a7[a4];
        v52 = v46 >= v51 || v50 >= v47;
        v53 = !v52;
        v55 = v48 < v51 && v50 < v49;
        v52 = v48 >= v47;
        v40 = v38;
        if ((v52 || v46 >= v49) && (v53 & 1) == 0 && !v55)
        {
          v57 = v39 & 0xFFFFFFFFFFFFFFF8;
          v40 = (v39 & 0xFFFFFFFFFFFFFFF8) + v37;
          v58 = v50 + 4;
          v59 = v45 + 16;
          v60 = (a8 + v45 + 16);
          v61 = (v35 + v59);
          *&v62 = -1;
          *(&v62 + 1) = -1;
          do
          {
            *(v60 - 1) = v62;
            *v60 = v62;
            *(v61 - 1) = v62;
            *v61 = v62;
            *(v58 - 2) = 0uLL;
            *(v58 - 1) = 0uLL;
            *v58 = 0uLL;
            v58[1] = 0uLL;
            v58 += 4;
            v60 += 2;
            v61 += 2;
            v57 -= 8;
          }

          while (v57);
          if (v39 == (v39 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v40 = v36;
      }

      v41 = (a8 + 4 * v40);
      v42 = (v35 + 4 * v40);
      v43 = &a7[v40];
      v44 = a4 - v40;
      do
      {
        *v41++ = -1;
        *v42++ = -1;
        *v43++ = 0;
        --v44;
      }

      while (v44);
    }

LABEL_31:
    sub_1000CA03C(v30, v63);
    goto LABEL_32;
  }

  v68 = sub_1000BFB80(0);
  v67 = sub_1000C9EBC(0);
  v64 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v65 = sub_1000CED78(0, 0, &v66);
  nullsub_1(v65);
LABEL_8:
  v69 = 1;
LABEL_9:
  sub_10004D8D8(v69);
  sub_1000CED78(v65, v66, 0);
  sub_1000BDB44(v64);
  sub_1000C9EBC(v67);
  sub_1000BFB80(v68);
  return v69;
}

uint64_t sub_100043410(uint64_t a1, _DWORD *a2)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a1)
  {
    v11 = sub_1000BFB80(*(a1 + 6480));
    v10 = sub_1000C9EBC(*(a1 + 6488));
    v7 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v8 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v9);
    nullsub_1(v8);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (!setjmp(v5))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v6 = 4;
      }

      else if (*(a1 + 8160))
      {
        v6 = 1;
      }

      else
      {
        *a2 = 0;
        if (*a1)
        {
          *a2 = sub_100056FA0(*a1);
          v12 = 0;
        }

        else
        {
          v12 = 1;
        }

        v6 = v12;
      }

      v12 = v6;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v11 = sub_1000BFB80(0);
    v10 = sub_1000C9EBC(0);
    v7 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v8 = sub_1000CED78(0, 0, &v9);
    nullsub_1(v8);
  }

  v12 = 1;
LABEL_9:
  sub_10004D8D8(v12);
  sub_1000CED78(v8, v9, 0);
  sub_1000BDB44(v7);
  sub_1000C9EBC(v10);
  sub_1000BFB80(v11);
  return v12;
}

uint64_t sub_1000435C8(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (a1)
  {
    v9 = sub_1000BFB80(*(a1 + 6480));
    v8 = sub_1000C9EBC(*(a1 + 6488));
    v5 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v6 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v7);
    nullsub_1(v6);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v3 = sub_1000BDA90();
    if (!setjmp(v3))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v4 = 4;
      }

      else if (*(a1 + 8160))
      {
        v4 = 1;
      }

      else
      {
        sub_100056F04(*a1);
        if (sub_100001118(*(a1 + 16)))
        {
          sub_100001128(*(a1 + 16), 0);
        }

        v4 = v10;
      }

      v10 = v4;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v9 = sub_1000BFB80(0);
    v8 = sub_1000C9EBC(0);
    v5 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v6 = sub_1000CED78(0, 0, &v7);
    nullsub_1(v6);
  }

  v10 = 1;
LABEL_9:
  sub_10004D8D8(v10);
  sub_1000CED78(v6, v7, 0);
  sub_1000BDB44(v5);
  sub_1000C9EBC(v8);
  sub_1000BFB80(v9);
  return v10;
}

double sub_10004377C(uint64_t a1)
{
  if (*(a1 + 192))
  {
    goto LABEL_2;
  }

  if (!qword_1001065A8)
  {
    goto LABEL_2;
  }

  v21 = *(qword_1001065A8 + 4136);
  if (v21 < 1)
  {
    goto LABEL_2;
  }

  *(a1 + 236) = v21;
  v22 = sub_100056FB8(*a1);
  *(a1 + 232) = v22;
  *(a1 + 192) = sub_1000BFBD8(*(a1 + 236) * v22, v23, v24, v25, v26, v27, v28, v29);
  *(a1 + 296) = sub_1000BFBD8(4 * *(a1 + 236), v30, v31, v32, v33, v34, v35, v36);
  *(a1 + 200) = sub_1000BFBD8(*(a1 + 236), v37, v38, v39, v40, v41, v42, v43);
  *(a1 + 208) = sub_1000BFBD8(*(a1 + 236), v44, v45, v46, v47, v48, v49, v50);
  if (qword_1001065A8 && *(qword_1001065A8 + 1904))
  {
    *(a1 + 216) = sub_1000BFBD8(*(a1 + 236), v51, v52, v53, v54, v55, v56, v57);
  }

  *(a1 + 184) = sub_1000BFBD8(*(a1 + 232), v51, v52, v53, v54, v55, v56, v57);
  v59 = *(a1 + 228);
  v58 = *(a1 + 232);
  *(a1 + 224) = v59;
  *(a1 + 240) = 0;
  *(a1 + 244) = v59;
  *(a1 + 248) = -1;
  v60 = sub_1000B16AC(*(a1 + 192), *(a1 + 296), *(a1 + 236), v58);
  *(a1 + 256) = v60;
  if (v60)
  {
LABEL_2:
    v2 = sub_100057000(*a1);
    *(a1 + 408) = sub_1000BFBD8(v2, v3, v4, v5, v6, v7, v8, v9);
    *(a1 + 364) = 0;
    v10 = sub_100056FA8(*a1);
    *(a1 + 304) = v10;
    if (qword_1001065A8 && *(qword_1001065A8 + 2016))
    {
      *(a1 + 724) = 1;
      v10 *= 2;
      *(a1 + 304) = v10;
    }

    v18 = 1000 * v10 / sub_100056FA0(*a1);
    *(a1 + 728) = v18;
    v19 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v20 = *(qword_1001065A8 + 2320);
    }

    else
    {
      v20 = 0;
    }

    *(a1 + 308) = v20 / v18;
    *(a1 + 656) = 0;
    *(a1 + 672) = 0;
    *(a1 + 664) = 0;
    if (!v19 || !*(v19 + 2848))
    {
      v71 = 0;
      if (sub_1000A1A54(0, *a1, &v71 + 1, &v71))
      {
        *(a1 + 656) = 0;
        v62 = v71;
        *(a1 + 660) = HIDWORD(v71);
        *(a1 + 664) = v62;
        *(a1 + 668) = sub_100056FB0(*a1);
        *(a1 + 672) = 0x100000001;
      }
    }

    v63 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v64 = *(qword_1001065A8 + 2232);
      if (v64 == 1)
      {
        v71 = 0;
        if (sub_1000A1A54(1, *a1, &v71 + 1, &v71))
        {
          *(a1 + 680) = 1;
          v66 = v71;
          *(a1 + 684) = HIDWORD(v71);
          *(a1 + 688) = v66;
          *(a1 + 692) = sub_100056FB0(*a1);
          *(a1 + 696) = 0;
        }
      }

      else
      {
        if (v64)
        {
LABEL_28:
          v67 = *(v63 + 2176);
          if ((v67 & 0x8000000000000000) == 0)
          {
            *(a1 + 708) = v67;
            if (v67 >= 1)
            {
              *(a1 + 712) = sub_1000BFBD8(24 * (v67 & 0x7FFFFFFF), v11, v12, v13, v14, v15, v16, v17);
              if (*(a1 + 708) >= 1)
              {
                v68 = 0;
                v69 = 16;
                do
                {
                  *(*(a1 + 712) + v69) = 0xFFFFFFFFLL;
                  ++v68;
                  v69 += 24;
                }

                while (v68 < *(a1 + 708));
              }
            }

            goto LABEL_35;
          }

LABEL_34:
          *(a1 + 708) = 0;
LABEL_35:
          v70 = qword_1001065A8;
          if (qword_1001065A8)
          {
            v70 = *(qword_1001065A8 + 2896);
          }

          *(a1 + 360) = v70;
          result = NAN;
          *(a1 + 432) = -1;
          *(a1 + 416) = -1;
          return result;
        }

        if (!*(qword_1001065A8 + 2848))
        {
          goto LABEL_23;
        }
      }

LABEL_27:
      v63 = qword_1001065A8;
      if (!qword_1001065A8)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

LABEL_23:
    v71 = 0;
    if (sub_1000A1A54(0, *a1, &v71 + 1, &v71))
    {
      *(a1 + 680) = 0;
      v65 = v71;
      *(a1 + 684) = HIDWORD(v71);
      *(a1 + 688) = v65;
      *(a1 + 692) = sub_100056FB0(*a1);
      *(a1 + 696) = 0x100000001;
    }

    goto LABEL_27;
  }

  return result;
}

uint64_t sub_100043A90(uint64_t a1)
{
  v2 = *(a1 + 312);
  if (v2)
  {
    sub_1000BFEC4(v2);
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  sub_1000BFEC4(*(a1 + 712));
  *(a1 + 712) = 0;
  sub_1000BFEC4(*(a1 + 408));
  *(a1 + 408) = 0;
  sub_1000B1CC4(*(a1 + 280));
  *(a1 + 280) = 0;
  sub_1000BFEC4(*(a1 + 272));
  *(a1 + 272) = 0;
  sub_1000BFEC4(*(a1 + 424));
  *(a1 + 424) = 0;
  sub_1000B1BAC(*(a1 + 256));
  *(a1 + 256) = 0;
  sub_1000BFEC4(*(a1 + 184));
  *(a1 + 184) = 0;
  sub_1000BFEC4(*(a1 + 216));
  *(a1 + 216) = 0;
  sub_1000BFEC4(*(a1 + 208));
  *(a1 + 208) = 0;
  sub_1000BFEC4(*(a1 + 200));
  *(a1 + 200) = 0;
  sub_1000BFEC4(*(a1 + 296));
  *(a1 + 296) = 0;
  sub_1000BFEC4(*(a1 + 192));
  *(a1 + 192) = 0;

  return sub_10003D47C(a1);
}

_OWORD *sub_100043B68(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result[46] = 0u;
  if (*(result + 11))
  {
    v8 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v8 = *(qword_1001065A8 + 4136);
    }

    *(result + 187) = v8;
    v9 = result;
    result = sub_1000BFBD8(2 * v8, a2, a3, a4, a5, a6, a7, a8);
    *(v9 + 92) = result;
  }

  return result;
}

double sub_100043BC4(uint64_t a1)
{
  sub_1000BFEC4(*(a1 + 736));
  result = 0.0;
  *(a1 + 736) = 0u;
  return result;
}

uint64_t sub_100043BF4(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (*(a1 + 348))
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100043E60(a1);
    a2 = v7;
    a3 = v6;
    a4 = v5;
  }

  result = sub_100044948(a1, a2, a3, a4);
  *(a1 + 348) = 1;
  *(a1 + 352) = 0;
  *(a1 + 648) = 0;
  *(a1 + 6636) = 0;
  *(a1 + 6440) = 0;
  v9 = *(a1 + 384);
  if (v9 >= 1)
  {
    v10 = *(a1 + 400);
    v11 = *(a1 + 392);
    if (v10 >= v9)
    {
      v11[v10 - 1] = 102;
    }

    else
    {
      *(a1 + 400) = 1;
      *v11 = 108;
    }
  }

  return result;
}

uint64_t sub_100043CB0(uint64_t a1, _DWORD *a2)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a1)
  {
    v11 = sub_1000BFB80(*(a1 + 6480));
    v10 = sub_1000C9EBC(*(a1 + 6488));
    v7 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v8 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v9);
    nullsub_1(v8);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (setjmp(v5))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        v6 = 1;
        goto LABEL_16;
      }

      if (a2)
      {
        sub_100043BF4(a1, 1, 1, a2);
        v12 = 0;
        v6 = 0;
        goto LABEL_16;
      }
    }

    v6 = 4;
LABEL_16:
    v12 = v6;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v11 = sub_1000BFB80(0);
  v10 = sub_1000C9EBC(0);
  v7 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v8 = sub_1000CED78(0, 0, &v9);
  nullsub_1(v8);
LABEL_8:
  v12 = 1;
LABEL_9:
  sub_10004D8D8(v12);
  sub_1000CED78(v8, v9, 0);
  sub_1000BDB44(v7);
  sub_1000C9EBC(v10);
  sub_1000BFB80(v11);
  return v12;
}

uint64_t sub_100043E60(uint64_t a1)
{
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if (a1)
  {
    v32 = sub_1000BFB80(*(a1 + 6480));
    v31 = sub_1000C9EBC(*(a1 + 6488));
    v28 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v29 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v30);
    nullsub_1(v29);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v3 = sub_1000BDA90();
    if (!setjmp(v3))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v4 = 4;
      }

      else if (*(a1 + 8160))
      {
        v4 = 1;
      }

      else
      {
        if (*(a1 + 348))
        {
          v5 = *(a1 + 6416);
          sub_10004422C(a1, 1);
          v33 = 0;
          v6 = *(a1 + 384);
          if (v6 >= 1)
          {
            v7 = *(a1 + 400);
            v8 = *(a1 + 392);
            if (v7 >= v6)
            {
              *(v8 + v7 - 1) = 102;
            }

            else
            {
              *(a1 + 400) = v7 + 1;
              *(v8 + v7) = 76;
            }
          }

          while (!v33)
          {
            v17 = *(a1 + 184);
            while (1)
            {
              v18 = sub_100056FE0(*a1);
              v22 = v18;
              if ((v18 - 5) > 1)
              {
                break;
              }

              v23 = *(a1 + 6636);
              if (*(a1 + 724))
              {
                v23 = v23 == 0;
                *(a1 + 6636) = v23;
              }

              if (!v23)
              {
                sub_1000037F0(*(a1 + 16), v17, v19, v20, v21);
                v27 = v22;
                goto LABEL_54;
              }
            }

            v27 = v18;
            v24 = v18 != 4 || *(a1 + 724) == 0;
            if (v24 || !sub_1000444D4(a1, a1 + 176, &v27))
            {
              break;
            }

LABEL_54:
            v25 = *(a1 + 228);
            if (v25 + 1 == *(a1 + 236))
            {
              v26 = 0;
            }

            else
            {
              v26 = v25 + 1;
            }

            if (v26 != *(a1 + 224))
            {
              sub_100044588(a1, a1 + 176, v27 == 6);
            }
          }

          v9 = *(a1 + 228);
          v10 = v9 - 2;
          if (v9 <= 1)
          {
            v10 = *(a1 + 236) + v9 - 2;
          }

          if (v10 != *(a1 + 224))
          {
            v14 = v10;
            do
            {
              v10 = v14;
              if (!*(*(a1 + 200) + v14))
              {
                break;
              }

              *(*(a1 + 208) + v14) = -1;
              v15 = v14 - 1;
              v16 = v10 - 1;
              if (v10 <= 0)
              {
                v16 = *(a1 + 236) + v15;
              }

              v10 = v16;
              v14 = v16;
            }

            while (v16 != *(a1 + 224));
          }

          if (*(a1 + 252) == -1)
          {
            v11 = v10 + *(a1 + 240) - *(a1 + 228) + 1;
            if (v11 >= *(a1 + 236))
            {
              v12 = *(a1 + 236);
            }

            else
            {
              v12 = 0;
            }

            if (v11 >= 0)
            {
              v13 = -v12;
            }

            else
            {
              v13 = *(a1 + 236);
            }

            *(a1 + 252) = v11 + v13;
          }

          *(a1 + 348) = 0;
          if (sub_100044790(a1, v5, 0) != 1)
          {
            sub_100044830(a1, v5, 1);
          }
        }

        *(a1 + 352) = 1;
        v4 = v33;
      }

      v33 = v4;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v32 = sub_1000BFB80(0);
    v31 = sub_1000C9EBC(0);
    v28 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v29 = sub_1000CED78(0, 0, &v30);
    nullsub_1(v29);
  }

  v33 = 1;
LABEL_9:
  sub_10004D8D8(v33);
  sub_1000CED78(v29, v30, 0);
  sub_1000BDB44(v28);
  sub_1000C9EBC(v31);
  sub_1000BFB80(v32);
  return v33;
}

uint64_t sub_10004422C(uint64_t result, int a2)
{
  if (*(result + 176) != 2)
  {
    v2 = result;
    if (*(result + 6452))
    {
      *(result + 6452) = 0;
      v3 = a2;
      result = sub_100036AE8(*result);
      a2 = v3;
      *(v2 + 6460) = 0;
    }

    if (a2)
    {
      result = sub_100056F90(*v2);
    }

    if (*(v2 + 5672))
    {
      if (*(v2 + 6536))
      {
        if (!*(v2 + 6248))
        {
          v4 = *(v2 + 336);
          v5 = *(v2 + 340);
          if (v4 != v5)
          {
            v6 = *(v2 + 304);
            if (v6 < 1)
            {
              v11 = 0;
              do
              {
                v4 = (v4 + 1) % *(v2 + 344);
                ++v11;
              }

              while (v4 != v5);
              *(v2 + 336) = v5;
              *(v2 + 6248) = v11;
            }

            else
            {
              v7 = *(v2 + 6240);
              if (v6 > 0xF)
              {
                v12 = v6 & 0x7FFFFFF0;
                if ((v6 & 0x7FFFFFF0) == v6)
                {
                  do
                  {
                    v23 = (*(v2 + 328) + 2 * v4 * v6);
                    if ((v7 - v23) > 0x1F)
                    {
                      v26 = &v7[v12];
                      v27 = v7 + 8;
                      v28 = (v23 + 8);
                      v29 = v6 & 0x7FFFFFF0;
                      do
                      {
                        v30 = *v28;
                        *(v27 - 1) = *(v28 - 1);
                        *v27 = v30;
                        v27 += 2;
                        v28 += 2;
                        v29 -= 16;
                      }

                      while (v29);
                      v7 = v26;
                    }

                    else
                    {
                      v24 = v6;
                      do
                      {
                        v25 = *v23++;
                        *v7++ = v25;
                        --v24;
                      }

                      while (v24);
                    }

                    v4 = (*(v2 + 336) + 1) % *(v2 + 344);
                    *(v2 + 336) = v4;
                    ++*(v2 + 6248);
                  }

                  while (v4 != *(v2 + 340));
                }

                else
                {
                  do
                  {
                    v13 = *(v2 + 328) + 2 * v4 * v6;
                    if (v7 - v13 >= 0x20)
                    {
                      v15 = (v13 + v12 * 2);
                      v16 = &v7[v12];
                      v17 = v7 + 8;
                      v18 = (v13 + 16);
                      v19 = v6 & 0x7FFFFFF0;
                      do
                      {
                        v20 = *v18;
                        *(v17 - 1) = *(v18 - 1);
                        *v17 = v20;
                        v17 += 2;
                        v18 += 2;
                        v19 -= 16;
                      }

                      while (v19);
                      v14 = v6 & 0x7FFFFFF0;
                      v7 = v16;
                    }

                    else
                    {
                      v14 = 0;
                      v15 = (*(v2 + 328) + 2 * v4 * v6);
                    }

                    v21 = v6 - v14;
                    do
                    {
                      v22 = *v15++;
                      *v7++ = v22;
                      --v21;
                    }

                    while (v21);
                    v4 = (*(v2 + 336) + 1) % *(v2 + 344);
                    *(v2 + 336) = v4;
                    ++*(v2 + 6248);
                  }

                  while (v4 != *(v2 + 340));
                }
              }

              else
              {
                do
                {
                  v8 = (*(v2 + 328) + 2 * v4 * v6);
                  v9 = v6;
                  do
                  {
                    v10 = *v8++;
                    *v7++ = v10;
                    --v9;
                  }

                  while (v9);
                  v4 = (*(v2 + 336) + 1) % *(v2 + 344);
                  *(v2 + 336) = v4;
                  ++*(v2 + 6248);
                }

                while (v4 != *(v2 + 340));
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10004448C(uint64_t result, int a2)
{
  v2 = *(result + 384);
  if (v2 >= 1)
  {
    v3 = *(result + 400);
    if (v3 >= v2)
    {
      *(*(result + 392) + v3 - 1) = 102;
    }

    else
    {
      if (a2 == 108)
      {
        LODWORD(v3) = 0;
      }

      v4 = *(result + 392);
      *(result + 400) = v3 + 1;
      *(v4 + v3) = a2;
    }
  }

  return result;
}

uint64_t sub_1000444D4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a2 + 8);
  do
  {
    v7 = sub_100056FE0(*a1);
    if ((v7 - 5) > 1)
    {
      *a3 = v7;
      return 0;
    }

    v11 = *(a1 + 6636);
    if (*(a2 + 548))
    {
      v11 = v11 == 0;
      *(a1 + 6636) = v11;
    }
  }

  while (v11);
  v13 = *(a1 + 16);
  v14 = v7;
  sub_1000037F0(v13, v6, v8, v9, v10);
  *a3 = v14;
  return 1;
}

uint64_t sub_100044588(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(a2 + 52);
  v6 = *(a2 + 56);
  v8 = *(a2 + 8);
  if (v6 >= 1)
  {
    v9 = *(a2 + 16);
    v10 = v7 * v6;
    if (v6 < 8 || (v9 + v10 - v8) < 0x20)
    {
      v11 = 0;
LABEL_5:
      v12 = (v9 + v11 + v10);
      v13 = &v8[v11];
      v14 = v6 - v11;
      do
      {
        v15 = *v13++;
        *v12++ = v15;
        --v14;
      }

      while (v14);
LABEL_7:
      v7 = *(a2 + 52);
      goto LABEL_8;
    }

    if (v6 >= 0x20)
    {
      v11 = v6 & 0x7FFFFFE0;
      v25 = (v8 + 16);
      v26 = (v10 + v9 + 16);
      v27 = v11;
      do
      {
        v28 = *v25;
        *(v26 - 1) = *(v25 - 1);
        *v26 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 32;
      }

      while (v27);
      if (v11 == v6)
      {
        goto LABEL_7;
      }

      if ((v6 & 0x18) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = 0;
    }

    v29 = v11;
    v11 = v6 & 0x7FFFFFF8;
    v30 = &v8[v29];
    v31 = (v9 + v29 + v10);
    v32 = v29 - v11;
    do
    {
      v33 = *v30++;
      *v31++ = v33;
      v32 += 8;
    }

    while (v32);
    if (v11 == v6)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_8:
  *(*(a2 + 120) + 4 * v7) = *(a2 + 116);
  *(*(a2 + 24) + *(a2 + 52)) = a3;
  *(*(a2 + 32) + *(a2 + 52)) = 0;
  if (qword_1001065A8 && *(qword_1001065A8 + 1904))
  {
    *(*(a2 + 40) + *(a2 + 52)) = *v8;
  }

  result = sub_100044B14(a1, a3);
  *(*(a2 + 32) + *(a2 + 52)) = 0;
  if ((result - 1) <= 2 && a3 && qword_1001065A8 && *(qword_1001065A8 + 2096))
  {
    v17 = result;
    v18 = sub_100056FC0(*a1);
    result = v17;
    if (v18 >= 255)
    {
      LOBYTE(v18) = -1;
    }

    *(*(a2 + 32) + *(a2 + 52)) = v18;
  }

  v20 = *(a2 + 48);
  v19 = *(a2 + 52);
  *(a2 + 52) = v19 + 1;
  v21 = v19 + 1 == *(a1 + 236);
  v22 = *(a2 + 60);
  ++*(a2 + 64);
  if (v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = v19 + 1;
  }

  *(a2 + 52) = v23;
  v24 = (v23 - v20 + v22) % v22;
  if (v24 > *(a2 + 88))
  {
    *(a2 + 88) = v24;
  }

  return result;
}

uint64_t sub_100044790(uint64_t a1, int a2, _DWORD *a3)
{
  if (a2 == -2)
  {
    a2 = *(a1 + 6416);
  }

  v3 = *(a1 + 708);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 712);
    v8 = 24 * v3;
    do
    {
      v9 = *(v7 + v5 + 16);
      if (v9 == 0xFFFFFFFFLL)
      {
        break;
      }

      if (v9 == a2)
      {
        if (a3)
        {
          *a3 = v4;
          v7 = *(a1 + 712);
        }

        if (*(v7 + v5 + 4) + v6 < *(a1 + 236))
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      v6 += *(v7 + v5 + 4);
      v5 += 24;
      ++v4;
    }

    while (v8 != v5);
  }

  return 0;
}

unsigned int *sub_100044830(unsigned int *result, unsigned int a2, int a3)
{
  v3 = a2;
  v4 = result;
  v6 = result[59];
  v5 = result[60];
  v7 = (result[56] - result[61] + v6) % v6;
  v8 = v6 + v7;
  if (v5 <= (v6 + v7))
  {
    v9 = v6 + v7;
  }

  else
  {
    v9 = result[60];
  }

  if (v8 >= v5)
  {
    v10 = v6 + v7;
  }

  else
  {
    v10 = v8 + 1;
  }

  v11 = v9 - v10;
  if (v6 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = result[59];
  }

  v13 = v8 < v5;
  v14 = v11 / v12;
  if (v13)
  {
    ++v14;
  }

  v15 = v7 + v6 * v14;
  if (result[189] == 6)
  {
    v16 = result[60];
  }

  else
  {
    v16 = v15;
  }

  if (a3)
  {
    v17 = result[60];
  }

  else
  {
    v17 = v16;
  }

  if (a2 == -2)
  {
    v3 = result[1604];
  }

  v18 = result[177];
  v19 = *(result + 89);
  v20 = v3;
  if (v18 >= 1)
  {
    v21 = v19 + 2;
    v22 = result[177];
    do
    {
      v24 = *v21;
      v21 += 3;
      v23 = v24;
      if (v24 == 0xFFFFFFFFLL)
      {
        break;
      }

      if (v23 == v20)
      {
        return result;
      }

      --v22;
    }

    while (v22);
  }

  result[60] = v5 - v17;
  result = j__memmove(v19 + 3, v19, 24 * v18 - 24);
  **(v4 + 89) = v4[61];
  *(*(v4 + 89) + 16) = v20;
  *(*(v4 + 89) + 4) = v17;
  *(*(v4 + 89) + 8) = v16;
  return result;
}

uint64_t sub_100044948(uint64_t result, int a2, int a3, _DWORD *a4)
{
  v7 = result;
  *(result + 176) = a2;
  v8 = *(result + 6432);
  *(result + 6432) = v8 + 1;
  *(result + 6416) = v8;
  *a4 = v8;
  *(result + 288) = 0;
  if (*(result + 408))
  {
    result = sub_100057008(*result);
  }

  if (*(v7 + 424))
  {
    result = sub_100057008(*v7);
  }

  *(v7 + 436) = *a4;
  if (!a3)
  {
    *(v7 + 6452) = 0;
    if (a2 != 2)
    {
      v9 = (v7 + 6452);
      goto LABEL_15;
    }

LABEL_12:
    v11 = *(v7 + 228);
    *(v7 + 224) = v11;
    *(v7 + 240) = 0;
    *(v7 + 244) = v11;
    *(v7 + 248) = -1;
    *(v7 + 6460) = 0;
    if (!*(v7 + 5672))
    {
      goto LABEL_22;
    }

LABEL_23:
    *(v7 + 5692) = 0;
    *(v7 + 6248) = 0;
    *(v7 + 336) = 0;
    goto LABEL_24;
  }

  *(v7 + 320) = 0;
  *(v7 + 6452) = 0;
  if (a2 == 2)
  {
    goto LABEL_12;
  }

  v9 = (v7 + 6452);
  v10 = *(v7 + 228);
  *(v7 + 224) = v10;
  *(v7 + 240) = 0;
  *(v7 + 244) = v10;
  *(v7 + 248) = -1;
  if (!qword_1001065A8)
  {
LABEL_20:
    result = sub_100056F88(*v7);
LABEL_21:
    *v9 = 0;
    *(v7 + 6460) = 0;
    if (!*(v7 + 5672))
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (*(qword_1001065A8 + 2024))
  {
    sub_100056F04(*v7);
    result = sub_100001118(*(v7 + 16));
    if (result)
    {
      result = sub_100001128(*(v7 + 16), 0);
    }
  }

  else if (*(qword_1001065A8 + 2212))
  {
    result = sub_100056F0C(*v7, *(qword_1001065A8 + 2384));
  }

LABEL_15:
  if (!qword_1001065A8 || !*(qword_1001065A8 + 1880))
  {
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  sub_100056FC8(*v7);
  result = sub_100056F88(*v7);
  *(v7 + 6452) = 1;
  *(v7 + 6460) = 0;
  if (*(v7 + 5672))
  {
    goto LABEL_23;
  }

LABEL_22:
  if (*(v7 + 6260))
  {
    goto LABEL_23;
  }

LABEL_24:
  if (a2 == 1 && a3)
  {
    if (*(v7 + 364))
    {
      *(v7 + 372) = 0;
    }
  }

  return result;
}

uint64_t sub_100044B14(uint64_t a1, int a2)
{
  result = sub_1000B13FC(*(a1 + 440), a2);
  if (result != 3)
  {
    if (result == 2)
    {
      if (*(a1 + 252) == -1)
      {
        *(a1 + 252) = sub_1000B15D8(*(a1 + 440));
      }

      return 2;
    }

    else if (result == 1)
    {
      *(a1 + 248) = -1;
    }

    return result;
  }

  if (*(a1 + 248) == -1)
  {
    *(a1 + 248) = sub_1000B15BC(*(a1 + 440));
    return 3;
  }

  result = 3;
  if (!a2 || !qword_1001065A8 || !*(qword_1001065A8 + 2096))
  {
    return result;
  }

  v5 = sub_100056FC0(*a1);
  if (v5 < 1)
  {
    return 3;
  }

  v6 = v5;
  v7 = *(a1 + 440);

  return sub_1000B162C(v7, v6, 1);
}

uint64_t sub_100044C38(uint64_t a1, char *a2, int a3, int *a4)
{
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  if (a1)
  {
    v28 = sub_1000BFB80(*(a1 + 6480));
    v27 = sub_1000C9EBC(*(a1 + 6488));
    v24 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v25 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v26);
    nullsub_1(v25);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v9 = sub_1000BDA90();
    if (setjmp(v9))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      goto LABEL_11;
    }

    if (*(a1 + 8160))
    {
      v17 = 1;
      goto LABEL_14;
    }

    *a4 = 0;
    if (!a2)
    {
LABEL_11:
      v17 = 4;
LABEL_14:
      v29 = v17;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (!*(a1 + 348))
    {
      *a4 = 2;
      v29 = 0;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    v18 = *(a1 + 320);
    if (v18 >= 1)
    {
      v19 = *(a1 + 304) - v18 >= a3 ? a3 : *(a1 + 304) - v18;
      memcpy((*(a1 + 312) + 2 * v18), a2, 2 * v19);
      v20 = *(a1 + 320) + v19;
      *(a1 + 320) = v20;
      a3 -= v19;
      a2 += 2 * v19;
      if (v20 == *(a1 + 304))
      {
        v29 = sub_100044F10(a1, *(a1 + 312));
        if (v29)
        {
          goto LABEL_38;
        }

        *(a1 + 320) = 0;
      }
    }

    LODWORD(v21) = *(a1 + 304);
    while (a3 >= v21)
    {
      v29 = sub_100044F10(a1, a2);
      v21 = *(a1 + 304);
      a2 += 2 * v21;
      a3 -= v21;
      if (v29)
      {
        goto LABEL_38;
      }
    }

    if (a3 >= 1)
    {
      v22 = *(a1 + 312);
      if (!v22)
      {
        *(a1 + 320) = 0;
        v22 = sub_1000BFBD8(2 * v21, v10, v11, v12, v13, v14, v15, v16);
        *(a1 + 312) = v22;
      }

      memcpy(v22, a2, (2 * a3));
      *(a1 + 320) = a3;
    }

    *a4 = 0;
    if (*(a1 + 640))
    {
      v23 = 2;
LABEL_37:
      *a4 = v23;
      goto LABEL_38;
    }

    if (*(a1 + 648))
    {
      v23 = 1;
      goto LABEL_37;
    }

LABEL_38:
    v17 = v29;
    goto LABEL_14;
  }

  v28 = sub_1000BFB80(0);
  v27 = sub_1000C9EBC(0);
  v24 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v25 = sub_1000CED78(0, 0, &v26);
  nullsub_1(v25);
LABEL_8:
  v29 = 1;
LABEL_9:
  sub_10004D8D8(v29);
  sub_1000CED78(v25, v26, 0);
  sub_1000BDB44(v24);
  sub_1000C9EBC(v27);
  sub_1000BFB80(v28);
  return v29;
}

uint64_t sub_100044F10(uint64_t a1, char *a2)
{
  v156 = 0;
  v4 = sub_100045ED8(a1);
  v5 = v4;
  if (!*(a1 + 5672) || !*(a1 + 6536))
  {
    goto LABEL_113;
  }

  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 5)
      {
        goto LABEL_113;
      }

      v17 = *(a1 + 304);
      if (*(a1 + 6452))
      {
        v18 = *(a1 + 6248);
        if (v18 >= *(a1 + 6256))
        {
          goto LABEL_113;
        }

        if (v17 < 1)
        {
LABEL_26:
          v16 = v18 + 1;
          goto LABEL_112;
        }

        v19 = *(a1 + 6240);
        v20 = v18 * v17;
        v21 = (v19 + 2 * v18 * v17);
        if (v17 < 4 || (v22 = v20, v23 = 2 * v20, (v23 + v19 - a2) < 0x20))
        {
          LODWORD(v24) = 0;
          v25 = a2;
          goto LABEL_23;
        }

        if (v17 >= 0x10)
        {
          v123 = v17 & 0x7FFFFFF0;
          v148 = (a2 + 16);
          v149 = (v23 + v19 + 16);
          v150 = v123;
          do
          {
            v151 = *v148;
            *(v149 - 1) = *(v148 - 1);
            *v149 = v151;
            v148 += 2;
            v149 += 2;
            v150 -= 16;
          }

          while (v150);
          if (v123 == v17)
          {
            goto LABEL_25;
          }

          if ((v17 & 0xC) == 0)
          {
            v25 = &a2[2 * v123];
            v21 += v123;
            LODWORD(v24) = v17 & 0x7FFFFFF0;
LABEL_23:
            v26 = v17 - v24;
            do
            {
              v27 = *v25;
              v25 += 2;
              *v21++ = v27;
              --v26;
            }

            while (v26);
LABEL_25:
            v18 = *(a1 + 6248);
            goto LABEL_26;
          }
        }

        else
        {
          v123 = 0;
        }

        v24 = v17 & 0x7FFFFFFC;
        v21 += v24;
        v25 = &a2[2 * v24];
        v152 = &a2[2 * v123];
        v153 = (v19 + 2 * v123 + 2 * v22);
        v154 = v123 - v24;
        do
        {
          v155 = *v152;
          v152 += 8;
          *v153++ = v155;
          v154 += 4;
        }

        while (v154);
        if (v24 == v17)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v60 = *(a1 + 340);
      if (v17 < 1)
      {
LABEL_61:
        v70 = v60 + 1;
        goto LABEL_73;
      }

      v61 = *(a1 + 328);
      v62 = v60 * v17;
      v63 = (v61 + 2 * v60 * v17);
      if (v17 < 4 || (v64 = v62, v65 = 2 * v62, (v65 + v61 - a2) < 0x20))
      {
        LODWORD(v66) = 0;
        v67 = a2;
        goto LABEL_58;
      }

      if (v17 >= 0x10)
      {
        v122 = v17 & 0x7FFFFFF0;
        v140 = (a2 + 16);
        v141 = (v65 + v61 + 16);
        v142 = v122;
        do
        {
          v143 = *v140;
          *(v141 - 1) = *(v140 - 1);
          *v141 = v143;
          v140 += 2;
          v141 += 2;
          v142 -= 16;
        }

        while (v142);
        if (v122 == v17)
        {
          goto LABEL_60;
        }

        if ((v17 & 0xC) == 0)
        {
          v67 = &a2[2 * v122];
          v63 += v122;
          LODWORD(v66) = v17 & 0x7FFFFFF0;
LABEL_58:
          v68 = v17 - v66;
          do
          {
            v69 = *v67;
            v67 += 2;
            *v63++ = v69;
            --v68;
          }

          while (v68);
LABEL_60:
          v60 = *(a1 + 340);
          goto LABEL_61;
        }
      }

      else
      {
        v122 = 0;
      }

      v66 = v17 & 0x7FFFFFFC;
      v63 += v66;
      v67 = &a2[2 * v66];
      v144 = &a2[2 * v122];
      v145 = (v61 + 2 * v122 + 2 * v64);
      v146 = v122 - v66;
      do
      {
        v147 = *v144;
        v144 += 8;
        *v145++ = v147;
        v146 += 4;
      }

      while (v146);
      if (v66 == v17)
      {
        goto LABEL_60;
      }

      goto LABEL_58;
    }

    v57 = *(a1 + 6248);
    if (!v57)
    {
      v58 = *(a1 + 336);
      v59 = *(a1 + 340);
      if (v58 == v59)
      {
        v57 = 0;
        goto LABEL_103;
      }

      v83 = *(a1 + 304);
      if (v83 >= 1)
      {
        v84 = *(a1 + 6240);
        v85 = v83 & 0x7FFFFFF0;
        while (1)
        {
          v86 = *(a1 + 328);
          v87 = v58 * v83;
          v88 = (v86 + 2 * v58 * v83);
          if (v83 >= 0x10 && (v89 = 2 * v87, v84 - v86 - v89 >= 0x20))
          {
            v88 = (v88 + v85 * 2);
            v91 = &v84[v85];
            v94 = v84 + 8;
            v95 = (v86 + v89 + 16);
            v96 = v83 & 0x7FFFFFF0;
            do
            {
              v97 = *v95;
              *(v94 - 1) = *(v95 - 1);
              *v94 = v97;
              v94 += 2;
              v95 += 2;
              v96 -= 16;
            }

            while (v96);
            v90 = v83 & 0x7FFFFFF0;
            if ((v83 & 0x7FFFFFF0) == v83)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v90 = 0;
            v91 = v84;
          }

          v92 = v83 - v90;
          do
          {
            v93 = *v88++;
            *v91++ = v93;
            --v92;
          }

          while (v92);
LABEL_77:
          v58 = (*(a1 + 336) + 1) % *(a1 + 344);
          *(a1 + 336) = v58;
          v57 = *(a1 + 6248) + 1;
          *(a1 + 6248) = v57;
          v84 = v91;
          if (v58 == *(a1 + 340))
          {
            goto LABEL_103;
          }
        }
      }

      v57 = 0;
      do
      {
        v58 = (v58 + 1) % *(a1 + 344);
        ++v57;
      }

      while (v58 != v59);
      *(a1 + 336) = v59;
      *(a1 + 6248) = v57;
    }

LABEL_103:
    if (v57 >= *(a1 + 6256))
    {
      goto LABEL_113;
    }

    v108 = *(a1 + 304);
    if (v108 < 1)
    {
LABEL_111:
      v16 = v57 + 1;
      goto LABEL_112;
    }

    v109 = *(a1 + 6240);
    v110 = (v109 + 2 * v108 * v57);
    if (v108 < 4 || (v111 = 2 * v108 * v57, (v111 + v109 - a2) < 0x20))
    {
      LODWORD(v112) = 0;
      v113 = a2;
      goto LABEL_108;
    }

    if (v108 >= 0x10)
    {
      v121 = v108 & 0x7FFFFFF0;
      v132 = (a2 + 16);
      v133 = (v111 + v109 + 16);
      v134 = v121;
      do
      {
        v135 = *v132;
        *(v133 - 1) = *(v132 - 1);
        *v133 = v135;
        v132 += 2;
        v133 += 2;
        v134 -= 16;
      }

      while (v134);
      if (v121 == v108)
      {
        goto LABEL_110;
      }

      if ((v108 & 0xC) == 0)
      {
        v113 = &a2[2 * v121];
        v110 += v121;
        LODWORD(v112) = v108 & 0x7FFFFFF0;
LABEL_108:
        v114 = v108 - v112;
        do
        {
          v115 = *v113;
          v113 += 2;
          *v110++ = v115;
          --v114;
        }

        while (v114);
LABEL_110:
        v57 = *(a1 + 6248);
        goto LABEL_111;
      }
    }

    else
    {
      v121 = 0;
    }

    v112 = v108 & 0x7FFFFFFC;
    v110 += v112;
    v113 = &a2[2 * v112];
    v136 = &a2[2 * v121];
    v137 = (v109 + v111 + 2 * v121);
    v138 = v121 - v112;
    do
    {
      v139 = *v136;
      v136 += 8;
      *v137++ = v139;
      v138 += 4;
    }

    while (v138);
    if (v112 == v108)
    {
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  if (v4 == 1)
  {
    v28 = *(a1 + 6248);
    if (v28)
    {
      v29 = *(*(a1 + 440) + 8);
      v30 = *(a1 + 304);
      *(a1 + 6248) = 0;
      *(a1 + 336) = 0;
      if (v29 >= 2)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = v29 - 1;
        v35 = *(a1 + 6240) + 2 * (v28 - v34) * v30;
        v36 = -v35;
        v37 = 2 * v30;
        v38 = (v35 + 16);
        while (1)
        {
          v39 = *(a1 + 304);
          if (v39 >= 1)
          {
            break;
          }

LABEL_38:
          v49 = *(a1 + 344);
          v33 = (v33 + 1) % v49;
          *(a1 + 340) = v33;
          if (v33 == v32)
          {
            v32 = (v32 + 1) % v49;
            *(a1 + 336) = v32;
          }

          v35 += v37;
          ++v31;
          v38 = (v38 + v37);
          if (v31 == v34)
          {
            goto LABEL_64;
          }
        }

        v40 = *(a1 + 328);
        v41 = v39 * v33;
        v42 = (v40 + 2 * v39 * v33);
        if (v39 < 4 || (v43 = 2 * v41, (v36 + -v37 * v31 + v40 + v43) < 0x20))
        {
          LODWORD(v44) = 0;
          v45 = v42;
          v46 = v35;
          goto LABEL_35;
        }

        if (v39 >= 0x10)
        {
          v50 = v39 & 0x7FFFFFF0;
          v51 = (v40 + v43 + 16);
          v52 = v38;
          v53 = v50;
          do
          {
            v54 = *v52;
            *(v51 - 1) = *(v52 - 1);
            *v51 = v54;
            v52 += 2;
            v51 += 2;
            v53 -= 16;
          }

          while (v53);
          if (v50 == v39)
          {
            goto LABEL_37;
          }

          if ((v39 & 0xC) == 0)
          {
            v46 = (v35 + 2 * v50);
            v45 = &v42[v50];
            LODWORD(v44) = v39 & 0x7FFFFFF0;
LABEL_35:
            v47 = v39 - v44;
            do
            {
              v48 = *v46++;
              *v45++ = v48;
              --v47;
            }

            while (v47);
LABEL_37:
            v33 = *(a1 + 340);
            v32 = *(a1 + 336);
            goto LABEL_38;
          }
        }

        else
        {
          v50 = 0;
        }

        v44 = v39 & 0x7FFFFFFC;
        v45 = &v42[v44];
        v46 = (v35 + 2 * v44);
        v55 = v50;
        v56 = v50 - v44;
        do
        {
          *&v42[v55] = *(v35 + v55 * 2);
          v55 += 4;
          v56 += 4;
        }

        while (v56);
        if (v44 == v39)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v33 = 0;
LABEL_64:
      *(a1 + 6248) = 0;
    }

    else
    {
      v33 = *(a1 + 340);
    }

    v71 = *(a1 + 304);
    if (v71 < 1)
    {
      goto LABEL_72;
    }

    v72 = *(a1 + 328);
    v73 = v71 * v33;
    v74 = (v72 + 2 * v71 * v33);
    if (v71 < 4 || (v75 = v73, v76 = 2 * v73, (v76 + v72 - a2) < 0x20))
    {
      LODWORD(v77) = 0;
      v78 = a2;
      goto LABEL_69;
    }

    if (v71 >= 0x10)
    {
      v98 = v71 & 0x7FFFFFF0;
      v100 = (a2 + 16);
      v101 = (v76 + v72 + 16);
      v102 = v98;
      do
      {
        v103 = *v100;
        *(v101 - 1) = *(v100 - 1);
        *v101 = v103;
        v100 += 2;
        v101 += 2;
        v102 -= 16;
      }

      while (v102);
      if (v98 == v71)
      {
        goto LABEL_71;
      }

      if ((v71 & 0xC) == 0)
      {
        v78 = &a2[2 * v98];
        v74 += v98;
        LODWORD(v77) = v71 & 0x7FFFFFF0;
LABEL_69:
        v79 = v71 - v77;
        do
        {
          v80 = *v78;
          v78 += 2;
          *v74++ = v80;
          --v79;
        }

        while (v79);
LABEL_71:
        v33 = *(a1 + 340);
LABEL_72:
        v70 = v33 + 1;
LABEL_73:
        v81 = *(a1 + 344);
        v82 = v70 % v81;
        *(a1 + 340) = v82;
        if (v82 == *(a1 + 336))
        {
          *(a1 + 336) = (v82 + 1) % v81;
        }

        goto LABEL_113;
      }
    }

    else
    {
      v98 = 0;
    }

    v77 = v71 & 0x7FFFFFFC;
    v74 += v77;
    v78 = &a2[2 * v77];
    v104 = &a2[2 * v98];
    v105 = (v72 + 2 * v98 + 2 * v75);
    v106 = v98 - v77;
    do
    {
      v107 = *v104;
      v104 += 8;
      *v105++ = v107;
      v106 += 4;
    }

    while (v106);
    if (v77 == v71)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 6248);
    if (v6 < *(a1 + 6256))
    {
      v7 = *(a1 + 304);
      if (v7 < 1)
      {
LABEL_14:
        v16 = v6 + 1;
LABEL_112:
        *(a1 + 6248) = v16;
        goto LABEL_113;
      }

      v8 = *(a1 + 6240);
      v9 = v6 * v7;
      v10 = (v8 + 2 * v6 * v7);
      if (v7 < 4 || (v11 = 2 * v9, (v11 + v8 - a2) < 0x20))
      {
        LODWORD(v12) = 0;
        v13 = a2;
        goto LABEL_11;
      }

      if (v7 >= 0x10)
      {
        v99 = v7 & 0x7FFFFFF0;
        v124 = (a2 + 16);
        v125 = (v11 + v8 + 16);
        v126 = v99;
        do
        {
          v127 = *v124;
          *(v125 - 1) = *(v124 - 1);
          *v125 = v127;
          v124 += 2;
          v125 += 2;
          v126 -= 16;
        }

        while (v126);
        if (v99 == v7)
        {
          goto LABEL_13;
        }

        if ((v7 & 0xC) == 0)
        {
          v13 = &a2[2 * v99];
          v10 += v99;
          LODWORD(v12) = v7 & 0x7FFFFFF0;
LABEL_11:
          v14 = v7 - v12;
          do
          {
            v15 = *v13;
            v13 += 2;
            *v10++ = v15;
            --v14;
          }

          while (v14);
LABEL_13:
          v6 = *(a1 + 6248);
          goto LABEL_14;
        }
      }

      else
      {
        v99 = 0;
      }

      v12 = v7 & 0x7FFFFFFC;
      v10 += v12;
      v13 = &a2[2 * v12];
      v128 = &a2[2 * v99];
      v129 = (v8 + v11 + 2 * v99);
      v130 = v99 - v12;
      do
      {
        v131 = *v128;
        v128 += 8;
        *v129++ = v131;
        v130 += 4;
      }

      while (v130);
      if (v12 == v7)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

LABEL_113:
  if (*(a1 + 364))
  {
    if (v5 != 4)
    {
      v116 = *(a1 + 372);
      if (v116 < *(a1 + 368))
      {
        memcpy((*(a1 + 376) + 2 * *(a1 + 304) * v116), a2, 2 * *(a1 + 304));
        ++*(a1 + 372);
      }
    }
  }

  v117 = *(a1 + 384);
  if (v117 >= 1)
  {
    v118 = *(a1 + 400);
    v119 = *(a1 + 392);
    if (v118 >= v117)
    {
      *(v119 + v118 - 1) = 102;
      if (v5 != 4)
      {
        goto LABEL_121;
      }

      goto LABEL_127;
    }

    *(a1 + 400) = v118 + 1;
    *(v119 + v118) = 119;
  }

  if (v5 != 4)
  {
LABEL_121:
    if (v5 == 2 && !*(a1 + 640))
    {
      *(a1 + 640) = 1;
      *(a1 + 644) = *(a1 + 240);
      if (*(a1 + 6452))
      {
        *(a1 + 6452) = 0;
        sub_100036AE8(*a1);
        *(a1 + 6460) = 0;
      }

      v156 = 0;
    }

    goto LABEL_130;
  }

LABEL_127:
  *(a1 + 356) = 1;
  if (*(a1 + 6452))
  {
    *(a1 + 6452) = 0;
    sub_100036AE8(*a1);
    *(a1 + 6460) = 0;
  }

  v156 = 14;
LABEL_130:
  if (!*(a1 + 648))
  {
    *(a1 + 648) = v5 == 3;
  }

  return v156;
}

uint64_t sub_1000458E4(uint64_t result, int a2, int a3)
{
  if (a2 == -2)
  {
    a2 = *(result + 6416);
  }

  v3 = *(result + 708);
  if (v3 >= 1)
  {
    v4 = *(result + 712) + 8;
    do
    {
      v5 = *(v4 + 8);
      if (v5 == 0xFFFFFFFFLL)
      {
        break;
      }

      if (v5 == a2)
      {
        v6 = *(v4 - 4);
        if (v6 >= a3)
        {
          v6 = a3;
        }

        *v4 = v6;
        return result;
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100045944(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = a2;
  if (a2 == -2)
  {
    v3 = *(a1 + 6416);
  }

  v4 = *(a1 + 708);
  if (v4 >= 1)
  {
    v5 = (*(a1 + 712) + 16);
    while (*v5 != 0xFFFFFFFFLL)
    {
      if (*v5 == v3)
      {
        *a3 = *(v5 - 3);
        return 0;
      }

      v5 += 3;
      if (!--v4)
      {
        break;
      }
    }
  }

  if (*(a1 + 6416) == a2)
  {
    *a3 = *(a1 + 240);
  }

  else
  {
    *a3 = -1;
  }

  return 0;
}

uint64_t sub_1000459CC(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v3 = a2;
  if (a2 == -2)
  {
    v3 = *(a1 + 6416);
  }

  v4 = *(a1 + 708);
  if (v4 >= 1)
  {
    v5 = v3;
    v6 = *(a1 + 712) + 8;
    do
    {
      v7 = *(v6 + 8);
      if (v7 == 0xFFFFFFFFLL)
      {
        break;
      }

      if (v7 == v5)
      {
        goto LABEL_10;
      }

      v6 += 24;
      --v4;
    }

    while (v4);
  }

  if (*(a1 + 6416) == a2)
  {
    v6 = a1 + 240;
LABEL_10:
    *a3 = *v6;
    return 0;
  }

  else
  {
    *a3 = -1;
    return 0;
  }
}

uint64_t sub_100045A48(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  *a2 = 0;
  *a5 = 0;
  if (*(a1 + 6456))
  {
    v6 = *(a1 + 256);

    return sub_1000B1AFC(v6, a5);
  }

  else
  {
    if (*(a1 + 224) == *(a1 + 228) && *(a1 + 6416) == *(a1 + 6424))
    {
      v8 = a2;
      v9 = a5;
      v10 = a3;
      v11 = a4;
      v12 = *(a1 + 184);
      while (1)
      {
        v13 = sub_100056FE0(*a1);
        if ((v13 - 5) > 1)
        {
          break;
        }

        v17 = *(a1 + 6636);
        if (*(a1 + 724))
        {
          v17 = v17 == 0;
          *(a1 + 6636) = v17;
        }

        if (!v17)
        {
          v19 = v13;
          sub_1000037F0(*(a1 + 16), v12, v14, v15, v16);
          sub_100044588(a1, a1 + 176, v19 == 6);
          a4 = v11;
          a3 = v10;
          a5 = v9;
          a2 = v8;
          if (*(a1 + 348))
          {
            v20 = sub_100022AD4(*(a1 + 440));
            a2 = v8;
            a5 = v9;
            a3 = v10;
            a4 = v11;
            if (v20 == 2)
            {
              *(a1 + 640) = 1;
              if (*(a1 + 6452))
              {
                *(a1 + 6452) = 0;
                sub_100036AE8(*a1);
                a2 = v8;
                a5 = v9;
                a3 = v10;
                a4 = v11;
                *(a1 + 6460) = 0;
              }
            }
          }

          goto LABEL_21;
        }
      }

      v18 = v13 != 2 || *(a1 + 348) == 0;
      a4 = v11;
      a3 = v10;
      a5 = v9;
      a2 = v8;
      if (!v18)
      {
        *(a1 + 352) = 1;
      }
    }

LABEL_21:
    v21 = *(a1 + 224);
    if (v21 == *(a1 + 228))
    {
      return 0;
    }

    else
    {
      v22 = *(a1 + 192);
      v23 = *(a1 + 232);
      *a2 = *(*(a1 + 200) + v21);
      *a5 = *(a1 + 296) + 4 * *(a1 + 224);
      if (a3)
      {
        v24 = *(a1 + 224);
        v25 = *(a1 + 228);
        if (v24 == v25)
        {
          v26 = 0;
        }

        else
        {
          v27 = 0;
          v26 = 0;
          v28 = *(a1 + 208);
          do
          {
            if (!*(v28 + v24))
            {
              break;
            }

            if (v27 + *(v28 + v24) > v26)
            {
              v26 = v27 + *(v28 + v24);
            }

            if (v24 + 1 == *(a1 + 236))
            {
              v24 = 0;
            }

            else
            {
              ++v24;
            }

            ++v27;
          }

          while (v24 != v25);
        }

        *a3 = v26;
      }

      if (a4)
      {
        v29 = *(a1 + 224);
        v30 = *(a1 + 208);
        v31 = *(v30 + v29);
        if (*(v30 + v29))
        {
          v32 = *(a1 + 244);
          if (v29 == v32)
          {
            v31 = 0;
          }

          else
          {
            v31 = 0;
            do
            {
              if (!*(v30 + v29))
              {
                break;
              }

              if (v29 <= 0)
              {
                LODWORD(v29) = *(a1 + 236);
              }

              LODWORD(v29) = v29 - 1;
              ++v31;
            }

            while (v29 != v32);
          }
        }

        *a4 = v31;
      }

      v33 = *(a1 + 224);
      if (v33 + 1 == *(a1 + 236))
      {
        v34 = 0;
      }

      else
      {
        v34 = v33 + 1;
      }

      *(a1 + 224) = v34;
      return v22 + v23 * v21;
    }
  }
}

BOOL sub_100045D04(uint64_t a1)
{
  if (*(a1 + 6456))
  {
    return sub_100060940(*(a1 + 256)) > 0;
  }

  else
  {
    return *(a1 + 224) != *(a1 + 228);
  }
}

uint64_t sub_100045D44(uint64_t a1)
{
  sub_100056F88(*a1);
  *(a1 + 6252) = 0;
  v2 = *(a1 + 228);
  *(a1 + 224) = v2;
  *(a1 + 240) = 0;
  *(a1 + 244) = v2;
  *(a1 + 248) = -1;
  v3 = *(a1 + 6432);
  *(a1 + 6432) = v3 + 1;
  *(a1 + 6416) = v3;
  v4 = 1;
  if (*(a1 + 6248) >= 1)
  {
    v5 = *(a1 + 6240);
    *(a1 + 6252) = 1;
    if (v5)
    {
      do
      {
        if (sub_100045ED8(a1) == 4)
        {
          v4 = 0;
        }

        else
        {
          v4 = v4;
        }

        v6 = *(a1 + 6252);
        if (v6 >= *(a1 + 6248))
        {
          break;
        }

        v7 = *(a1 + 6240);
        *(a1 + 6252) = v6 + 1;
      }

      while (v7);
    }
  }

  sub_100036AE8(*a1);
  sub_100056F90(*a1);
LABEL_9:
  v8 = *(a1 + 184);
  while (1)
  {
    v9 = sub_100056FE0(*a1);
    if ((v9 - 5) > 1)
    {
      break;
    }

    v13 = *(a1 + 6636);
    if (*(a1 + 724))
    {
      v13 = v13 == 0;
      *(a1 + 6636) = v13;
    }

    if (!v13)
    {
      v14 = v9;
      sub_1000037F0(*(a1 + 16), v8, v10, v11, v12);
      v15 = *(a1 + 228);
      if (v15 + 1 == *(a1 + 236))
      {
        v16 = 0;
      }

      else
      {
        v16 = v15 + 1;
      }

      if (v16 == *(a1 + 224))
      {
        v4 = 0;
      }

      else
      {
        sub_100044588(a1, a1 + 176, v14 == 6);
      }

      goto LABEL_9;
    }
  }

  sub_100044830(a1, *(a1 + 6416), 1);
  return v4;
}

uint64_t sub_100045ED8(uint64_t a1)
{
  v1 = *(a1 + 228);
  if (v1 + 1 == *(a1 + 236))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 + 1;
  }

  if (v2 == *(a1 + 224))
  {
    return 4;
  }

  else
  {
    v6 = sub_100056F98(*a1);
    if (*(a1 + 724))
    {
      v6 = sub_100056F98(*a1);
    }

    if (v6 == 7)
    {
      *(a1 + 6440) = 1;
      v7 = *(a1 + 5512);
      if (v7)
      {
        sub_100036610(v7);
      }

      sub_100056F80(*a1);
      v17 = *(a1 + 244);
      *(a1 + 224) = v17;
      *(a1 + 228) = v17;
      *(a1 + 240) = 0;
      *(a1 + 248) = -1;
      *(a1 + 348) = 1;
      *(a1 + 352) = 0;
      *(a1 + 648) = 0;
      *(a1 + 6636) = 0;
      *(a1 + 6440) = 0;
      return 3;
    }

    else
    {
      if (qword_1001065A8 && *(qword_1001065A8 + 1984))
      {
        v8 = v6;
        sub_100057018(*a1, 1);
        v6 = v8;
      }

      if ((v6 - 5) <= 1)
      {
        if (*(a1 + 6452))
        {
          v9 = *(a1 + 6460);
          if (v6 == 5)
          {
            *(a1 + 6460) = ++v9;
          }

          v10 = qword_1001065A8;
          if (qword_1001065A8)
          {
            v10 = *(qword_1001065A8 + 1880);
          }

          if (v10 <= v9)
          {
            *(a1 + 6452) = 0;
            sub_100036AE8(*a1);
            *(a1 + 6460) = 0;
          }
        }

        if (!*(a1 + 360) || *(a1 + 5672) || *(a1 + 752) == 6)
        {
          v11 = *(a1 + 184);
          while (1)
          {
            v12 = sub_100056FE0(*a1);
            if ((v12 - 5) > 1)
            {
              break;
            }

            v16 = *(a1 + 6636);
            if (*(a1 + 724))
            {
              v16 = v16 == 0;
              *(a1 + 6636) = v16;
            }

            if (!v16)
            {
              v18 = v12;
              sub_1000037F0(*(a1 + 16), v11, v13, v14, v15);
              v19 = v18 == 6;
LABEL_34:
              v20 = v19;
              v3 = sub_100044588(a1, a1 + 176, v20);
              v21 = *(a1 + 228);
              if (v21 + 1 == *(a1 + 236))
              {
                v22 = 0;
              }

              else
              {
                v22 = v21 + 1;
              }

              if (v22 != *(a1 + 224))
              {
                v23 = *(a1 + 184);
                while (1)
                {
                  v24 = sub_100056FE0(*a1);
                  if ((v24 - 5) > 1)
                  {
                    break;
                  }

                  v28 = *(a1 + 6636);
                  if (*(a1 + 724))
                  {
                    v28 = v28 == 0;
                    *(a1 + 6636) = v28;
                  }

                  if (!v28)
                  {
                    v29 = v24;
                    sub_1000037F0(*(a1 + 16), v23, v25, v26, v27);
                    v19 = v29 == 6;
                    goto LABEL_34;
                  }
                }
              }

              return v3;
            }
          }
        }
      }

      return 5;
    }
  }
}

uint64_t sub_100046178(uint64_t a1, int a2)
{
  if (a2 == -2)
  {
    a2 = *(a1 + 6416);
  }

  v2 = *(a1 + 708);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 712);
  v6 = 24 * v2;
  while (1)
  {
    v7 = *(v5 + v3 + 16);
    if (v7 == 0xFFFFFFFFLL)
    {
      return 0;
    }

    if (v7 == a2)
    {
      break;
    }

    v4 += *(v5 + v3 + 4);
    v3 += 24;
    if (v6 == v3)
    {
      return 0;
    }
  }

  v9 = (v5 + v3);
  if (*(v5 + v3 + 4) + v4 >= *(a1 + 236))
  {
    return 0;
  }

  v11 = v9[2];
  if (!v11)
  {
    v11 = *(v5 + v3 + 4);
  }

  sub_1000B1C0C(*(a1 + 256), *v9, v11);
  *(a1 + 6416) = *(*(a1 + 712) + v3 + 16);
  return 1;
}

uint64_t sub_10004626C(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (*(a1 + 6456))
  {
    result = sub_10009C034(*(a1 + 256));
    *a3 = result;
    *a4 = result;
    *a2 = 0;
  }

  else
  {
    result = sub_100056FF8(*a1);
    *a2 += *(a1 + 236);
    *a3 += (*(a1 + 228) - *(a1 + 224) + *(a1 + 236)) % *(a1 + 236);
    *a4 += *(a1 + 264);
  }

  return result;
}

BOOL sub_100046328(uint64_t a1)
{
  v2 = sub_10005B874(*(a1 + 8));
  *(a1 + 64) = v2;
  return v2 == 0;
}

uint64_t sub_10004635C(uint64_t a1)
{
  sub_10005B8AC(*(a1 + 64));
  *(a1 + 64) = 0;
  return 0;
}

uint64_t sub_10004638C(uint64_t a1, const char *a2, int a3)
{
  if ((a3 - 6) < 0xFFFFFFFD)
  {
    return 4;
  }

  v46[7] = v3;
  v46[8] = v4;
  v8 = sub_1000C7E94(a2);
  if (!v8)
  {
    return 3;
  }

  v16 = v8;
  v17 = sub_1000C9F54(13, v9, v10, v11, v12, v13, v14, v15);
  *v17 = 0;
  *(v17 + 5) = 0;
  *v17 = *(a1 + 48) != 0;
  v17[1] = *(a1 + 80) != 0;
  v17[2] = *(a1 + 72) != 0;
  v17[3] = *(a1 + 64) != 0;
  v17[4] = *(a1 + 24) != 0;
  v17[5] = *(a1 + 40) != 0;
  v17[7] = *(a1 + 104) != 0;
  v17[8] = *(a1 + 112) != 0;
  v17[9] = *(a1 + 136) != 0;
  v17[10] = *(a1 + 144) != 0;
  v17[11] = *(a1 + 120) != 0;
  v17[12] = *(a1 + 56) != 0;
  v45 = 0;
  v46[0] = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  if (!sub_10003F5D8(v16, &v41, &v45, v46 + 1, v46, &v45 + 1, &v44 + 1, &v44, &v43 + 1, &v43, 0, 0, 0, 5, v42, 13, v17))
  {
    goto LABEL_45;
  }

  v18 = v45;
  if (v18 != sub_100099774())
  {
    goto LABEL_45;
  }

  v19 = sub_100099758();
  if (LODWORD(v46[0]) != v19 && !v45)
  {
    goto LABEL_45;
  }

  if (HIDWORD(v46[0]) != v19 && !v45)
  {
    goto LABEL_45;
  }

  if (LODWORD(v46[0]) != *(a1 + 156))
  {
    if (!v45)
    {
      goto LABEL_45;
    }

    *(a1 + 156) = v46[0];
  }

  if (v41 != a3)
  {
    goto LABEL_45;
  }

  v20 = a3 - 3;
  if ((a3 - 3) <= 1)
  {
    if (!sub_1000571A8(*a1) || !sub_1000191A8(*(a1 + 16), v16, 0, 0, 0, v21, v22, v23) || v17[4] && !sub_1000191A8(*(a1 + 24), v16, 0, 1, 0, v26, v27, v28) || v17[5] && !sub_1000191A8(*(a1 + 40), v16, 0, 0, 1, v26, v27, v28))
    {
      goto LABEL_45;
    }

    if (a3 != 3)
    {
      v38 = 3;
LABEL_54:
      if (!sub_100020BD0(*(a1 + 6408), v16, 0, v24, v25, v26, v27, v28))
      {
        goto LABEL_46;
      }

LABEL_55:
      v38 = 0;
      goto LABEL_46;
    }
  }

  if (!sub_1000BB1FC(*(a1 + 8), v16, 0))
  {
    goto LABEL_45;
  }

  if (a3 == 5)
  {
    v34 = 0;
  }

  else
  {
    if (a3 != 3)
    {
      v38 = 3;
      goto LABEL_51;
    }

    v29 = *(a1 + 104);
    if (v29 && !sub_1000360F8(v29))
    {
      goto LABEL_45;
    }

    v30 = *(a1 + 112);
    if (v30)
    {
      if (!sub_1000360F8(v30))
      {
        goto LABEL_45;
      }
    }

    v31 = *(a1 + 136);
    if (v31)
    {
      if (!sub_1000360F8(v31))
      {
        goto LABEL_45;
      }
    }

    v32 = *(a1 + 144);
    if (v32)
    {
      if (!sub_1000360F8(v32))
      {
        goto LABEL_45;
      }
    }

    v33 = *(a1 + 120);
    if (v33)
    {
      if (!sub_1000360F8(v33))
      {
        goto LABEL_45;
      }
    }

    v34 = 1;
  }

  v35 = *(a1 + 64);
  if (v35)
  {
    if (!sub_10005CAE0(v35, v16, 0))
    {
      goto LABEL_45;
    }
  }

  v36 = *(a1 + 80);
  if (v36)
  {
    if (!sub_100032B30(v36, v16, 0, *(a1 + 64), v34, v26, v27, v28))
    {
      goto LABEL_45;
    }
  }

  v37 = *(a1 + 72);
  if (!v37)
  {
    v38 = 3;
    goto LABEL_57;
  }

  if (!sub_10002C910(v37, v16, 0, *(a1 + 8), *(a1 + 80), v26, v27, v28))
  {
LABEL_45:
    v38 = 3;
    goto LABEL_46;
  }

  v38 = sub_100040760(a1);
LABEL_57:
  v40 = *(a1 + 56);
  if (!v40 || sub_100059FE4(v40, v16, 0, v24, v25, v26, v27, v28))
  {
LABEL_51:
    if (v20 > 1)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_46:
  if (sub_1000C836C(v16))
  {
    v39 = 3;
  }

  else
  {
    v39 = v38;
  }

  sub_1000CA03C(v17, 13);
  return v39;
}

uint64_t sub_1000467B4(uint64_t a1, const char *a2)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a1)
  {
    v11 = sub_1000BFB80(*(a1 + 6480));
    v10 = sub_1000C9EBC(*(a1 + 6488));
    v7 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v8 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v9);
    nullsub_1(v8);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (setjmp(v5))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        v6 = 1;
        goto LABEL_18;
      }

      if (a2)
      {
        if (*(a1 + 6448) || *(a1 + 348))
        {
          v6 = 7;
        }

        else
        {
          v12 = sub_100046974(a1, a2);
          v6 = v12;
        }

        goto LABEL_18;
      }
    }

    v6 = 4;
LABEL_18:
    v12 = v6;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v11 = sub_1000BFB80(0);
  v10 = sub_1000C9EBC(0);
  v7 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v8 = sub_1000CED78(0, 0, &v9);
  nullsub_1(v8);
LABEL_8:
  v12 = 1;
LABEL_9:
  sub_10004D8D8(v12);
  sub_1000CED78(v8, v9, 0);
  sub_1000BDB44(v7);
  sub_1000C9EBC(v10);
  sub_1000BFB80(v11);
  return v12;
}

uint64_t sub_100046974(uint64_t a1, const char *a2)
{
  v3 = sub_1000C8978(a2);
  if (!v3)
  {
    return 9;
  }

  v11 = v3;
  v12 = sub_1000C9F54(13, v4, v5, v6, v7, v8, v9, v10);
  *v12 = 0;
  *(v12 + 5) = 0;
  *v12 = *(a1 + 48) != 0;
  v12[1] = *(a1 + 80) != 0;
  v12[2] = *(a1 + 72) != 0;
  v12[3] = *(a1 + 64) != 0;
  v12[4] = *(a1 + 24) != 0;
  v12[5] = *(a1 + 40) != 0;
  v12[7] = *(a1 + 104) != 0;
  v12[8] = *(a1 + 112) != 0;
  v12[9] = *(a1 + 136) != 0;
  v12[10] = *(a1 + 144) != 0;
  v12[11] = *(a1 + 120) != 0;
  v12[12] = *(a1 + 56) != 0;
  result = sub_10003F3CC(a1, v11, 3, 0xDu, v12);
  if (!result)
  {
    if (sub_1000571A0(*a1) && sub_100018D70(*(a1 + 16), v11, 0, 0, 0) && (!v12[4] || sub_100018D70(*(a1 + 24), v11, 0, 1, 0)) && (!v12[5] || sub_100018D70(*(a1 + 40), v11, 0, 0, 1)) && sub_1000BB190(*(a1 + 8), v11, 0) && ((v19 = *(a1 + 104)) == 0 || sub_1000360E4(v19)) && ((v20 = *(a1 + 112)) == 0 || sub_1000360E4(v20)) && ((v21 = *(a1 + 136)) == 0 || sub_1000360E4(v21)) && ((v22 = *(a1 + 144)) == 0 || sub_1000360E4(v22)) && ((v23 = *(a1 + 120)) == 0 || sub_1000360E4(v23)) && ((v24 = *(a1 + 64)) == 0 || sub_10005C4AC(v24, v11, 0)) && ((v25 = *(a1 + 80)) == 0 || sub_100032608(v25, v11, 0, v14, v15, v16, v17, v18)) && ((v26 = *(a1 + 72)) == 0 || sub_10002C748(v26, v11, 0)) && ((v27 = *(a1 + 56)) == 0 || sub_100059D18(v27, v11, 0)))
    {
      if (sub_100020B48(*(a1 + 6408), v11, 0))
      {
        v28 = 0;
      }

      else
      {
        v28 = 9;
      }
    }

    else
    {
      v28 = 9;
    }

    if (sub_1000C836C(v11))
    {
      v29 = 9;
    }

    else
    {
      v29 = v28;
    }

    sub_1000CA03C(v12, 13);
    return v29;
  }

  return result;
}

uint64_t sub_100046C80(uint64_t a1, const char *a2, const char *a3)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (a1)
  {
    v13 = sub_1000BFB80(*(a1 + 6480));
    v12 = sub_1000C9EBC(*(a1 + 6488));
    v9 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v10 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v11);
    nullsub_1(v10);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v7 = sub_1000BDA90();
    if (setjmp(v7))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        v8 = 1;
        goto LABEL_18;
      }

      if (a2 | a3)
      {
        if (*(a1 + 6448) || *(a1 + 348))
        {
          v8 = 7;
        }

        else
        {
          if (a2)
          {
            v14 = sub_10004638C(a1, a2, 4);
          }

          if (!v14)
          {
            if (a3)
            {
              v14 = sub_10004638C(a1, a3, 5);
            }
          }

          v8 = v14;
        }

        goto LABEL_18;
      }
    }

    v8 = 4;
LABEL_18:
    v14 = v8;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v13 = sub_1000BFB80(0);
  v12 = sub_1000C9EBC(0);
  v9 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v10 = sub_1000CED78(0, 0, &v11);
  nullsub_1(v10);
LABEL_8:
  v14 = 1;
LABEL_9:
  sub_10004D8D8(v14);
  sub_1000CED78(v10, v11, 0);
  sub_1000BDB44(v9);
  sub_1000C9EBC(v12);
  sub_1000BFB80(v13);
  return v14;
}

uint64_t sub_100046E80(uint64_t a1, const char *a2, const char *a3)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (a1)
  {
    v13 = sub_1000BFB80(*(a1 + 6480));
    v12 = sub_1000C9EBC(*(a1 + 6488));
    v9 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v10 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v11);
    nullsub_1(v10);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v7 = sub_1000BDA90();
    if (setjmp(v7))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        v8 = 1;
        goto LABEL_18;
      }

      if (a2 | a3)
      {
        if (*(a1 + 6448) || *(a1 + 348))
        {
          v8 = 7;
        }

        else
        {
          v14 = 0;
          if (!a2 || (v14 = sub_10004707C(a1, a2)) == 0)
          {
            if (a3)
            {
              v14 = sub_100047280(a1, a3);
            }
          }

          v8 = v14;
        }

        goto LABEL_18;
      }
    }

    v8 = 4;
LABEL_18:
    v14 = v8;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v13 = sub_1000BFB80(0);
  v12 = sub_1000C9EBC(0);
  v9 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v10 = sub_1000CED78(0, 0, &v11);
  nullsub_1(v10);
LABEL_8:
  v14 = 1;
LABEL_9:
  sub_10004D8D8(v14);
  sub_1000CED78(v10, v11, 0);
  sub_1000BDB44(v9);
  sub_1000C9EBC(v12);
  sub_1000BFB80(v13);
  return v14;
}

uint64_t sub_10004707C(uint64_t *a1, const char *a2)
{
  v3 = sub_1000C8978(a2);
  if (!v3)
  {
    return 9;
  }

  v11 = v3;
  v12 = sub_1000C9F54(13, v4, v5, v6, v7, v8, v9, v10);
  *v12 = 0;
  *(v12 + 5) = 0;
  *v12 = a1[6] != 0;
  v12[1] = a1[10] != 0;
  v12[2] = a1[9] != 0;
  v12[3] = a1[8] != 0;
  v12[4] = a1[3] != 0;
  v12[5] = a1[5] != 0;
  v12[7] = a1[13] != 0;
  v12[8] = a1[14] != 0;
  v12[9] = a1[17] != 0;
  v12[10] = a1[18] != 0;
  v12[11] = a1[15] != 0;
  v12[12] = a1[7] != 0;
  v13 = sub_10003F3CC(a1, v11, 4, 0xDu, v12);
  if (!v13)
  {
    if (sub_1000571A0(*a1) && sub_100018D70(a1[2], v11, 0, 0, 0) && (!v12[4] || sub_100018D70(a1[3], v11, 0, 1, 0)) && (!v12[5] || sub_100018D70(a1[5], v11, 0, 0, 1)))
    {
      if (sub_100020B48(a1[801], v11, 0))
      {
        v13 = 0;
      }

      else
      {
        v13 = 9;
      }
    }

    else
    {
      v13 = 9;
    }
  }

  if (sub_1000C836C(v11))
  {
    v15 = 9;
  }

  else
  {
    v15 = v13;
  }

  sub_1000CA03C(v12, 13);
  return v15;
}

uint64_t sub_100047280(uint64_t a1, const char *a2)
{
  v3 = sub_1000C8978(a2);
  if (!v3)
  {
    return 9;
  }

  v11 = v3;
  v12 = sub_1000C9F54(13, v4, v5, v6, v7, v8, v9, v10);
  *v12 = 0;
  *(v12 + 5) = 0;
  *v12 = *(a1 + 48) != 0;
  v12[1] = *(a1 + 80) != 0;
  v12[2] = *(a1 + 72) != 0;
  v12[3] = *(a1 + 64) != 0;
  v12[4] = *(a1 + 24) != 0;
  v12[5] = *(a1 + 40) != 0;
  v12[7] = *(a1 + 104) != 0;
  v12[8] = *(a1 + 112) != 0;
  v12[9] = *(a1 + 136) != 0;
  v12[10] = *(a1 + 144) != 0;
  v12[11] = *(a1 + 120) != 0;
  v12[12] = *(a1 + 56) != 0;
  v13 = sub_10003F3CC(a1, v11, 5, 0xDu, v12);
  if (!v13)
  {
    if (sub_1000BB190(*(a1 + 8), v11, 0) && ((v19 = *(a1 + 104)) == 0 || sub_1000360E4(v19)) && ((v20 = *(a1 + 112)) == 0 || sub_1000360E4(v20)) && ((v21 = *(a1 + 136)) == 0 || sub_1000360E4(v21)) && ((v22 = *(a1 + 144)) == 0 || sub_1000360E4(v22)) && ((v23 = *(a1 + 120)) == 0 || sub_1000360E4(v23)) && ((v24 = *(a1 + 64)) == 0 || sub_10005C4AC(v24, v11, 0)) && ((v25 = *(a1 + 80)) == 0 || sub_100032608(v25, v11, 0, v14, v15, v16, v17, v18)) && ((v26 = *(a1 + 72)) == 0 || sub_10002C748(v26, v11, 0)) && ((v27 = *(a1 + 56)) == 0 || sub_100059D18(v27, v11, 0)))
    {
      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  if (sub_1000C836C(v11))
  {
    v29 = 9;
  }

  else
  {
    v29 = v13;
  }

  sub_1000CA03C(v12, 13);
  return v29;
}

uint64_t sub_1000474F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1001065A8)
  {
    v9 = *(qword_1001065A8 + 1136);
    v10 = *(qword_1001065A8 + 1152);
    *(a1 + 5500) = 0;
    if (!*(a1 + 104))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    *(a1 + 5500) = 0;
    if (!*(a1 + 104))
    {
      goto LABEL_6;
    }
  }

  result = sub_10003D030(v10, v9, a3, a4, a5, a6, a7, a8);
  *(a1 + 800) = result;
  if (!result)
  {
    return result;
  }

LABEL_6:
  if (*(a1 + 112))
  {
    result = sub_10003D030(v10, v9, a3, a4, a5, a6, a7, a8);
    *(a1 + 808) = result;
    if (!result)
    {
      return result;
    }
  }

  result = sub_1000C0034(28);
  *(a1 + 768) = result;
  if (!result)
  {
    return result;
  }

  if (sub_10000E6D8(*(a1 + 16)) < 1)
  {
    *(a1 + 5480) = 0;
  }

  else
  {
    v12 = sub_10000E6D8(*(a1 + 16));
    result = sub_1000C0034(v12);
    *(a1 + 5480) = result;
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 776) = 0;
  *(a1 + 816) = xmmword_1000F0DF0;
  *(a1 + 832) = xmmword_1000F0DF0;
  *(a1 + 848) = xmmword_1000F0DF0;
  *(a1 + 864) = xmmword_1000F0DF0;
  *(a1 + 880) = xmmword_1000F0DF0;
  *(a1 + 896) = xmmword_1000F0DF0;
  *(a1 + 912) = xmmword_1000F0DF0;
  *(a1 + 928) = xmmword_1000F0DF0;
  *(a1 + 944) = xmmword_1000F0DF0;
  *(a1 + 960) = xmmword_1000F0DF0;
  *(a1 + 976) = xmmword_1000F0DF0;
  *(a1 + 992) = xmmword_1000F0DF0;
  *(a1 + 1008) = xmmword_1000F0DF0;
  *(a1 + 1024) = xmmword_1000F0DF0;
  *(a1 + 1040) = xmmword_1000F0DF0;
  *(a1 + 1056) = xmmword_1000F0DF0;
  *(a1 + 1072) = xmmword_1000F0DF0;
  *(a1 + 1088) = xmmword_1000F0DF0;
  *(a1 + 1104) = xmmword_1000F0DF0;
  *(a1 + 1120) = xmmword_1000F0DF0;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *(a1 + 1280) = v13;
  *(a1 + 1264) = v13;
  *(a1 + 1248) = v13;
  *(a1 + 1232) = v13;
  *(a1 + 1216) = v13;
  *(a1 + 1200) = v13;
  *(a1 + 1184) = v13;
  *(a1 + 1168) = v13;
  *(a1 + 1152) = v13;
  *(a1 + 1136) = v13;
  if (!qword_1001065A8)
  {
    goto LABEL_27;
  }

  v14 = *(qword_1001065A8 + 2144);
  if (v14)
  {
    result = sub_1000C0034(4 * v14);
    *(a1 + 1304) = result;
    if (!result)
    {
      return result;
    }

    result = sub_1000C0034(v14 << 7);
    *(a1 + 1312) = result;
    if (!result)
    {
      return result;
    }

    *(a1 + 1296) = v14;
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        *(*(a1 + 1304) + 4 * v16) = -1;
        *(*(a1 + 1312) + v15) = 0;
        *(*(a1 + 1312) + v15 + 4) = -1;
        *(*(a1 + 1312) + v15 + 88) = -1;
        *(*(a1 + 1312) + v15 + 48) = 0x40000000;
        *(*(a1 + 1312) + v15 + 8) = 0x40000000;
        *(*(a1 + 1312) + v15 + 92) = -1;
        *(*(a1 + 1312) + v15 + 52) = 0x40000000;
        *(*(a1 + 1312) + v15 + 12) = 0x40000000;
        *(*(a1 + 1312) + v15 + 96) = -1;
        *(*(a1 + 1312) + v15 + 56) = 0x40000000;
        *(*(a1 + 1312) + v15 + 16) = 0x40000000;
        *(*(a1 + 1312) + v15 + 100) = -1;
        *(*(a1 + 1312) + v15 + 60) = 0x40000000;
        *(*(a1 + 1312) + v15 + 20) = 0x40000000;
        *(*(a1 + 1312) + v15 + 104) = -1;
        *(*(a1 + 1312) + v15 + 64) = 0x40000000;
        *(*(a1 + 1312) + v15 + 24) = 0x40000000;
        *(*(a1 + 1312) + v15 + 108) = -1;
        *(*(a1 + 1312) + v15 + 68) = 0x40000000;
        *(*(a1 + 1312) + v15 + 28) = 0x40000000;
        *(*(a1 + 1312) + v15 + 112) = -1;
        *(*(a1 + 1312) + v15 + 72) = 0x40000000;
        *(*(a1 + 1312) + v15 + 32) = 0x40000000;
        *(*(a1 + 1312) + v15 + 116) = -1;
        *(*(a1 + 1312) + v15 + 76) = 0x40000000;
        *(*(a1 + 1312) + v15 + 36) = 0x40000000;
        *(*(a1 + 1312) + v15 + 120) = -1;
        *(*(a1 + 1312) + v15 + 80) = 0x40000000;
        *(*(a1 + 1312) + v15 + 40) = 0x40000000;
        *(*(a1 + 1312) + v15 + 124) = -1;
        *(*(a1 + 1312) + v15 + 84) = 0x40000000;
        *(*(a1 + 1312) + v15 + 44) = 0x40000000;
        ++v16;
        v15 += 128;
      }

      while ((v14 & 0x7FFFFFFF) != v16);
    }
  }

  if (!qword_1001065A8)
  {
LABEL_27:
    *(a1 + 5496) = 0;
    *(a1 + 5488) = 0;
    goto LABEL_28;
  }

  v17 = *(qword_1001065A8 + 2160);
  *(a1 + 5496) = v17;
  *(a1 + 5488) = 0;
  if (v17 < 1)
  {
LABEL_28:
    *(a1 + 5500) = 0xFFFFFFFF00000001;
    return 1;
  }

  result = sub_1000C0034((v17 & 0x7FFFFFFF) << 6);
  *(a1 + 5488) = result;
  if (result)
  {
    if (*(a1 + 5496) >= 1)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        *(*(a1 + 5488) + v18 + 32) = -1;
        *(*(a1 + 5488) + v18) = 0;
        *(*(a1 + 5488) + v18 + 4) = 1;
        ++v19;
        v18 += 64;
      }

      while (v19 < *(a1 + 5496));
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1000478C0(uint64_t a1)
{
  sub_1000404B8(a1);
  *(a1 + 5500) = 0;
  sub_1000BFEC4(*(a1 + 1304));
  *(a1 + 1304) = 0;
  sub_1000BFEC4(*(a1 + 1312));
  *(a1 + 1312) = 0;
  v2 = *(a1 + 5488);
  if (v2)
  {
    v3 = *(a1 + 5496);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = v2 + 32;
      do
      {
        if (*(v5 - 32))
        {
          sub_1000A1774(*(v5 - 16));
          *(v5 - 16) = 0;
          sub_1000CF5EC(*(v5 - 24));
          *(v5 - 24) = 0;
          sub_1000B1BAC(*(v5 - 8));
          *(v5 - 8) = 0;
          sub_1000BFEC4(*(v5 + 8));
          *(v5 + 8) = 0;
          sub_1000BFEC4(*(v5 + 24));
          *(v5 + 24) = 0;
          *v5 = 0xFFFFFFFFLL;
          *(v5 + 16) = 0;
          *(v5 - 32) = &_mh_execute_header;
          v3 = *(a1 + 5496);
        }

        ++v4;
        v5 += 64;
      }

      while (v4 < v3);
      v2 = *(a1 + 5488);
    }

    sub_1000BFEC4(v2);
    *(a1 + 5488) = 0;
  }

  sub_1000BFEC4(*(a1 + 768));
  *(a1 + 768) = 0;
  sub_1000BFEC4(*(a1 + 784));
  *(a1 + 784) = 0;
  sub_1000BFEC4(*(a1 + 5480));
  *(a1 + 5480) = 0;
  sub_1000BFEC4(*(a1 + 5424));
  sub_1000BFEC4(*(a1 + 5432));
  sub_1000BFEC4(*(a1 + 5440));
  *(a1 + 5448) = 0;
  *(a1 + 5440) = 0;
  *(a1 + 5424) = 0u;
  sub_10003D17C(*(a1 + 808));
  *(a1 + 808) = 0;
  sub_10003D17C(*(a1 + 800));
  *(a1 + 800) = 0;
  v6 = *(a1 + 5456);
  if (v6)
  {
    sub_10002C494(*(a1 + 72), v6);
    *(a1 + 5456) = 0;
  }

  v7 = *(a1 + 5464);

  return sub_1000BFEC4(v7);
}

uint64_t sub_100047A3C(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a2 & ~(a2 >> 31);
  if (v5 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2 & ~(a2 >> 31);
  }

  *(result + 776) = v6;
  if (v6 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = a3 + 4 * (v5 - v6);
    do
    {
      *(*(result + 768) + 4 * v9) = *(v10 + 4 * v9);
      ++v9;
      v11 = *(result + 776);
    }

    while (v9 < v11);
    if (v11 >= 1)
    {
      v12 = 0;
      do
      {
        result = sub_1000B2A30(*(v8 + 8), *(*(v8 + 768) + 4 * v12));
        *(a5 + 2 * v12++) = result;
      }

      while (v12 < *(v8 + 776));
    }
  }

  return result;
}

uint64_t sub_100047ADC(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v100 = 0;
  v99 = a3;
  v98 = 1;
  v97 = 0;
  v96 = a4;
  v95 = a6;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  if (a1)
  {
    v94 = sub_1000BFB80(*(a1 + 6480));
    v93 = sub_1000C9EBC(*(a1 + 6488));
    v90 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v91 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v92);
    nullsub_1(v91);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v12 = sub_1000BDA90();
    if (setjmp(v12))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      goto LABEL_11;
    }

    if (*(a1 + 8160))
    {
      v13 = 1;
      goto LABEL_104;
    }

    sub_10004448C(a1, 114);
    memset(v101, 0, 14);
    *(a1 + 6448) = 0;
    *(a1 + 6464) = 0;
    if (*(a1 + 5500))
    {
      if (*(a1 + 104))
      {
        v14 = 800;
        if (*(a1 + 5512) == *(a1 + 112))
        {
          v14 = 808;
        }
      }

      else
      {
        v14 = 808;
      }

      v15 = *(a1 + v14);
      *(v15 + 136) = 0;
      *(v15 + 128) = 0;
      *(v15 + 4) = -1;
      *(v15 + 88) = -NAN;
      *(v15 + 104) = 0;
      *(v15 + 112) = -1;
      if (*(a1 + 5500))
      {
        goto LABEL_23;
      }
    }

    if (v99 == 6)
    {
LABEL_23:
      if (!*(a1 + 96) || v99 == 6)
      {
        if (!a5 && v96 >= 1 || v95 >= 1025 || !v99 || v95 >= 1024)
        {
LABEL_11:
          v13 = 4;
          goto LABEL_104;
        }

        v16 = a2;
        *(a1 + 6424) = a2;
        if (*(a1 + 6472))
        {
          if (*(a1 + 6416) == a2)
          {
            v17 = *(a1 + 5480);
            if (v17)
            {
              sub_10000E6F4(*(a1 + 16), v17);
            }
          }
        }

        if (qword_1001065A8 && (*(qword_1001065A8 + 2024) || *(qword_1001065A8 + 2212)))
        {
          v97 = 1;
        }

        if (*(a1 + 6468) && *(a1 + 6416) == a2 && v99 != 7)
        {
          sub_10000DE98(*(a1 + 16), v97);
        }

        v18 = *(a1 + 104);
        *(a1 + 5512) = v18;
        *(a1 + 756) = sub_1000485D4(v99);
        *(a1 + 752) = v99;
        *(a1 + 1320) = 0;
        *(a1 + 6476) = 0;
        v25 = (a1 + 5456);
        v26 = *(a1 + 5456);
        if (v26)
        {
          if (v18)
          {
            sub_100036250(v18);
            v26 = *v25;
          }

          v27 = *(a1 + 120);
          if (v27)
          {
            sub_100036250(v27);
            v26 = *v25;
          }

          v28 = *(a1 + 112);
          if (v28)
          {
            sub_100036250(v28);
            v26 = *v25;
          }

          sub_10002C494(*(a1 + 72), v26);
          *(a1 + 5456) = 0;
        }

        v29 = *(a1 + 5672);
        if (!v29 || v99 == 8 || v99 == 9)
        {
          if (v99 == 8 || v99 == 9)
          {
            if (!v29)
            {
              *(a1 + 5512) = 0;
              v13 = 11;
              goto LABEL_104;
            }

            *(a1 + 5512) = *(a1 + 112);
            v100 = sub_10003D9F8(a1);
            *(a1 + 5688) = 1;
LABEL_55:
            if (*(a1 + 5500))
            {
              if (*(a1 + 104))
              {
                v30 = 800;
                if (*(a1 + 5512) == *(a1 + 112))
                {
                  v30 = 808;
                }
              }

              else
              {
                v30 = 808;
              }

              v49 = *(a1 + v30);
              *(v49 + 4) = -1;
              *(v49 + 88) = -NAN;
              *(v49 + 136) = 0;
            }

            *(a1 + 6464) = 0;
            sub_1000B13D8(a1 + 448);
            sub_1000B13D8(a1 + 496);
            sub_1000B13D8(a1 + 544);
            sub_1000B13D8(a1 + 592);
            *(a1 + 440) = a1 + 496;
            v50 = a1 + 448;
            if (!*(a1 + 5672))
            {
              v50 = a1 + 592;
              if (v99 != 6)
              {
                if (v99 == 1)
                {
                  v50 = a1 + 544;
                }

                else
                {
                  v50 = a1 + 544;
                  if (v99 != 7)
                  {
LABEL_113:
                    *(a1 + 640) = 0xFFFFFFFF00000000;
                    *(a1 + 6456) = 1;
                    if (!sub_100046178(a1, a2))
                    {
                      *(a1 + 6456) = 0;
                      if (*(a1 + 6432) != a2 + 1)
                      {
                        *(a1 + 5512) = 0;
                        v13 = 13;
                        goto LABEL_104;
                      }

                      *(a1 + 6416) = v16;
                    }

                    *(a1 + 6448) = 1;
                    v13 = v100;
LABEL_104:
                    v100 = v13;
                    sub_1000BDAF4();
                    goto LABEL_9;
                  }
                }
              }
            }

            *(a1 + 440) = v50;
            goto LABEL_113;
          }

          if (*(a1 + 5500))
          {
            if (v95 >= 1)
            {
              v31 = 0;
              while (sub_100040158(a1, *(a7 + 4 * v31)))
              {
                if (++v31 >= v95)
                {
                  goto LABEL_68;
                }
              }

              goto LABEL_173;
            }

LABEL_68:
            sub_100047A3C(a1, v96, a5, 7, v101);
          }

          if (*(a1 + 436) == a2 && *(a1 + 784))
          {
            v32 = *(a1 + 776);
            if (v32 >= 7)
            {
              v33 = 7;
            }

            else
            {
              v33 = *(a1 + 776);
            }

            v34 = v33;
            if (v32 >= 1)
            {
              v35 = v32 - v33;
              **(a1 + 784) = *(*(a1 + 768) + 4 * v35);
              if (v32 != 1)
              {
                *(*(a1 + 784) + 4) = *(*(a1 + 768) + 4 * v35 + 4);
                if (v32 != 2)
                {
                  *(*(a1 + 784) + 8) = *(*(a1 + 768) + 4 * v35 + 8);
                  if (v32 != 3)
                  {
                    *(*(a1 + 784) + 12) = *(*(a1 + 768) + 4 * v35 + 12);
                    if (v32 != 4)
                    {
                      *(*(a1 + 784) + 16) = *(*(a1 + 768) + 4 * v35 + 16);
                      if (v32 != 5)
                      {
                        *(*(a1 + 784) + 20) = *(*(a1 + 768) + 4 * v35 + 20);
                        if (v32 != 6)
                        {
                          *(*(a1 + 784) + 24) = *(*(a1 + 768) + 4 * v35 + 24);
                        }
                      }
                    }
                  }
                }
              }
            }

            *(a1 + 792) = v34;
          }

          if (*(a1 + 756) == 6)
          {
            goto LABEL_55;
          }

          v36 = (2 * v95) | 1;
          v37 = sub_1000C9F54(8 * v36, v26, v19, v20, v21, v22, v23, v24);
          if (v95 >= 1)
          {
            v38 = 0;
            do
            {
              v39 = v38;
              v40 = *(a7 + 4 * v38);
              v37[v38] = sub_10002C688(*(a1 + 72), v40);
              *(a1 + 1324 + 4 * v39) = v40;
              ++*(a1 + 1320);
              v38 = v39 + 1;
            }

            while (v39 + 1 < v95);
          }

          if (v99 == 3 || v99 == 5)
          {
            v41 = sub_100039A34(v37, v95);
            v42 = qword_1001065A8;
            v43 = qword_1001065A8;
            if (v99 == 3)
            {
              v44 = v41 < 1 || qword_1001065A8 == 0;
              if (!v44 && *(qword_1001065A8 + 4728))
              {
                v99 = 5;
                v45 = v41;
                v46 = sub_1000485D4(5);
                v41 = v45;
                *(a1 + 756) = v46;
                *(a1 + 752) = v99;
              }
            }

            v47 = v41 < 1 || v42 == 0;
            if (!v47 && *(v43 + 2132))
            {
              sub_1000404B8(a1);
              v48 = sub_100040610(a1, v37, v95);
              v95 += v48;
            }
          }

          *(a1 + 5448) = v95;
          if (qword_1001065A8 && (*(qword_1001065A8 + 816) || *(qword_1001065A8 + 2320)))
          {
            sub_1000BFEC4(*(a1 + 5424));
            sub_1000BFEC4(*(a1 + 5432));
            *(a1 + 5424) = sub_1000BFBD8(4 * *(a1 + 5448) + 4, v51, v52, v53, v54, v55, v56, v57);
            v65 = sub_1000BFBD8(4 * *(a1 + 5448) + 4, v58, v59, v60, v61, v62, v63, v64);
            *(a1 + 5432) = v65;
            sub_100022CFC(v95, v37, *(a1 + 5424), v65);
          }

          if (*(a1 + 756) != 2)
          {
            v67 = v95 > 0;
            if (v95 < 1)
            {
LABEL_128:
              v66 = v67;
LABEL_129:
              if (v95 > 1 && qword_1001065A8 != 0)
              {
                if (*(qword_1001065A8 + 1876))
                {
                  v70 = sub_100027B08(v37, v95);
                  if (v70)
                  {
                    v71 = v70;
                    if (sub_10002C29C(*(a1 + 72), v70, -1) == -1)
                    {
                      sub_1000CA03C(v37, 8 * v36);
                      *(a1 + 5512) = 0;
                      v13 = 1;
                      goto LABEL_104;
                    }

                    *(a1 + 5456) = v71;
                  }
                }
              }

              v72 = *(a1 + 756);
              switch(v72)
              {
                case 0xB:
                  v75 = *(a1 + 120);
                  break;
                case 5:
                  if (!v95)
                  {
                    goto LABEL_173;
                  }

                  v75 = *(a1 + 104);
                  break;
                case 3:
                  if (!v95)
                  {
                    goto LABEL_173;
                  }

                  v73 = *(a1 + 144);
                  if (!v73)
                  {
                    v74 = *(a1 + 112);
                    *(a1 + 5512) = v74;
                    goto LABEL_149;
                  }

LABEL_147:
                  *(a1 + 5512) = v73;
                  v76 = v73;
                  goto LABEL_150;
                default:
                  v74 = *(a1 + 5512);
LABEL_149:
                  v76 = v74;
                  if (!v74)
                  {
                    sub_1000CA03C(v37, 8 * v36);
                    v13 = 4;
                    goto LABEL_104;
                  }

LABEL_150:
                  if (v66)
                  {
                    v77 = 2;
                  }

                  else
                  {
                    v77 = 0;
                  }

                  if (*(a1 + 5456))
                  {
                    v78 = 1;
                    v79 = (a1 + 5456);
                  }

                  else
                  {
                    v78 = v95;
                    v79 = v37;
                  }

                  v80 = qword_1001065A8;
                  if (qword_1001065A8)
                  {
                    v81 = *(qword_1001065A8 + 1448);
                    v82 = *(qword_1001065A8 + 1764);
                    v80 = *(qword_1001065A8 + 1652);
                  }

                  else
                  {
                    v81 = 0;
                    v82 = 0;
                  }

                  v83 = sub_10003648C(v76, *(a1 + 776), v101, v78, v79, v72, v77, v81, __SPAIR64__(v82, v80));
                  if (*(a1 + 120))
                  {
                    v84 = *(a1 + 120);
                    *(a1 + 6476) = 1;
                    *(a1 + 128) = *(a1 + 5512);
                    *(a1 + 5512) = v84;
                    v85 = (a1 + 5456);
                    v86 = 1;
                    if (!*(a1 + 5456))
                    {
                      v86 = v95;
                      v85 = v37;
                    }

                    v87 = qword_1001065A8;
                    if (qword_1001065A8)
                    {
                      v88 = *(qword_1001065A8 + 1448);
                      v89 = *(qword_1001065A8 + 1764);
                      v87 = *(qword_1001065A8 + 1652);
                    }

                    else
                    {
                      v88 = 0;
                      v89 = 0;
                    }

                    v83 = sub_10003648C(v84, *(a1 + 776), v101, v86, v85, 11, v77, v88, __SPAIR64__(v89, v87));
                  }

                  if (v83)
                  {
                    if (!*(a1 + 5672))
                    {
                      v98 = sub_100035F08(*(a1 + 5512));
                    }

                    sub_1000CA03C(v37, 8 * v36);
                    v16 = a2;
                    if (v98)
                    {
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    sub_1000CA03C(v37, 8 * v36);
                  }

LABEL_173:
                  *(a1 + 5512) = 0;
                  v13 = 4;
                  goto LABEL_104;
              }

              v73 = v75;
              if (!v75)
              {
                goto LABEL_173;
              }

              goto LABEL_147;
            }

            v68 = 0;
            while (sub_1000236C8(v37[v68]))
            {
              if (++v68 >= v95)
              {
                goto LABEL_128;
              }
            }
          }

          v66 = 0;
          goto LABEL_129;
        }

        *(a1 + 5512) = 0;
      }
    }

    v13 = 7;
    goto LABEL_104;
  }

  v94 = sub_1000BFB80(0);
  v93 = sub_1000C9EBC(0);
  v90 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v91 = sub_1000CED78(0, 0, &v92);
  nullsub_1(v91);
LABEL_8:
  v100 = 1;
LABEL_9:
  sub_10004D8D8(v100);
  sub_1000CED78(v91, v92, 0);
  sub_1000BDB44(v90);
  sub_1000C9EBC(v93);
  sub_1000BFB80(v94);
  return v100;
}

uint64_t sub_1000485D4(int a1)
{
  if ((a1 - 2) > 8)
  {
    return 1;
  }

  else
  {
    return dword_1000F0E00[a1 - 2];
  }
}

uint64_t sub_1000485F8(uint64_t a1, int a2)
{
  v26 = 2;
  if (*(a1 + 96))
  {
    return 0;
  }

  if (*(a1 + 6448))
  {
    v25 = 0;
    v5 = *(a1 + 6424);
    v6 = sub_100044790(a1, v5, &v25);
    if (!*(a1 + 6448))
    {
      result = 0;
LABEL_48:
      if (*(a1 + 5512) && !*(a1 + 5672) && *(a1 + 756) != 6)
      {
        v18 = result;
        if (sub_100046178(a1, v5))
        {
          v19 = *(a1 + 256);
        }

        else
        {
          v19 = 0;
        }

        sub_100036A38(*(a1 + 5512), v19);
        result = v18;
      }

LABEL_55:
      if (qword_1001065A8)
      {
        if (*(qword_1001065A8 + 2260))
        {
          v20 = result;
          v21 = sub_100022AD4(*(a1 + 440));
          result = v20;
          if (v21 == 1 && *(a1 + 756) != 6 && !*(a1 + 6456))
          {
            if (*(a1 + 104))
            {
              v22 = 800;
              if (*(a1 + 5512) == *(a1 + 112))
              {
                v22 = 808;
              }
            }

            else
            {
              v22 = 808;
            }

            v23 = *(a1 + v22);
            *(v23 + 4) = 0;
            *(v23 + 140) = -1;
            sub_100036B4C(*(a1 + 5512));
            result = v20;
          }
        }
      }

      *(a1 + 6448) = 0;
      if (!result)
      {
        if (*(a1 + 756) == 6)
        {
          return 0;
        }

        else
        {
          return sub_100048F34(a1, *(a1 + 6424), &v24, v7, v8, v9, v10, v11);
        }
      }

      return result;
    }

    v12 = v6;
    if (*(a1 + 756) == 6)
    {
      v26 = 0;
    }

    result = *(a1 + 5512);
    if (!result)
    {
      goto LABEL_55;
    }

    if (*(a1 + 5672))
    {
      v26 = 2;
      goto LABEL_11;
    }

    v17 = sub_100036A44(result);
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        if (!a2)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (v17 == 3)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_38;
      }

      if (v17 == 1 && a2)
      {
        goto LABEL_37;
      }
    }

    if (!v26)
    {
LABEL_17:
      result = 0;
LABEL_18:
      if (v12)
      {
        goto LABEL_19;
      }

      goto LABEL_39;
    }

LABEL_11:
    while (!sub_1000CEDA4())
    {
      result = sub_100048950(a1, &v26);
      if (result)
      {
        goto LABEL_18;
      }

      if (v26 <= 3 && v26 != 2)
      {
        goto LABEL_17;
      }
    }

LABEL_37:
    sub_100036B4C(*(a1 + 5512));
LABEL_38:
    result = 0;
    v26 = 0;
    if (v12)
    {
LABEL_19:
      if (v5 != *(a1 + 6416) || (v14 = (*(a1 + 224) - *(a1 + 244) + *(a1 + 236)) % *(a1 + 236), v14 <= *(*(a1 + 712) + 24 * v25 + 8)))
      {
LABEL_41:
        if (*(a1 + 5672))
        {
          v24 = 0;
          result = sub_10003EA48(a1, v5, &v24);
          switch(v24)
          {
            case 4:
              result = 2;
              break;
            case 3:
              result = 1;
              break;
            case 1:
              result = 12;
              break;
          }
        }

        goto LABEL_48;
      }

      v15 = result;
      sub_1000458E4(a1, v5, v14);
LABEL_40:
      result = v15;
      goto LABEL_41;
    }

LABEL_39:
    v15 = result;
    sub_100044830(a1, v5, 1);
    goto LABEL_40;
  }

  v16 = *(a1 + 104);
  if (v16)
  {
    sub_100036B4C(v16);
    sub_100037D5C(*(a1 + 104));
  }

  result = *(a1 + 112);
  if (result)
  {
    sub_100036B4C(result);
    sub_100037D5C(*(a1 + 112));
    return 0;
  }

  return result;
}

uint64_t sub_100048950(uint64_t a1, int *a2)
{
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  if (a1)
  {
    v34 = sub_1000BFB80(*(a1 + 6480));
    v33 = sub_1000C9EBC(*(a1 + 6488));
    v30 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v31 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v32);
    nullsub_1(v31);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v6 = sub_1000BDA90();
    if (setjmp(v6))
    {
      *(a1 + 8160) = 1;
      v5 = 1;
      goto LABEL_12;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      goto LABEL_8;
    }

    if (*(a1 + 8160))
    {
      v5 = 1;
      goto LABEL_11;
    }

    if (!a2)
    {
LABEL_8:
      v5 = 4;
LABEL_11:
      sub_1000BDAF4();
      goto LABEL_12;
    }

    if (!*(a1 + 6448))
    {
      *a2 = 0;
      v5 = 7;
      goto LABEL_11;
    }

    *a2 = 2;
    v7 = sub_100045A48(a1, &v37, &v39, &v38, &v35);
    v8 = v7;
    *(a1 + 6560) = v7;
    *(a1 + 6568) = v37;
    if (*(a1 + 5672))
    {
      v9 = sub_10003ED38(a1, v7, v35, a2);
      if (*a2 == 2 && !sub_100045D04(a1) && *(a1 + 348))
      {
        *a2 = 3;
      }

LABEL_83:
      if (*(a1 + 756) != 6)
      {
        sub_10004955C(a1);
      }

      if (*a2 <= 1)
      {
        *(a1 + 6464) = 1;
      }

      v5 = v9;
      goto LABEL_11;
    }

    if (v7)
    {
      sub_10004448C(a1, 112);
      if (*(a1 + 6468))
      {
        sub_10000E14C(*(a1 + 16), v8, v37);
      }

      if (*(a1 + 756) == 6)
      {
        if (!*(a1 + 640))
        {
LABEL_41:
          v11 = 0;
          goto LABEL_58;
        }

LABEL_42:
        *a2 = 0;
        v11 = 0;
        goto LABEL_58;
      }

      sub_100036A4C(*(a1 + 5512), v8, v35);
      v10 = sub_100036A44(*(a1 + 5512));
      v11 = 1;
      if (v10 > 1)
      {
        goto LABEL_35;
      }

      if (!v10)
      {
        goto LABEL_56;
      }

      if (v10 == 1)
      {
        sub_100036AF8(*(a1 + 5512));
        *a2 = 2;
        if (*(a1 + 640) && qword_1001065A8 && *(qword_1001065A8 + 2088) && sub_100044C18(a1) >= *(a1 + 644))
        {
          *a2 = 0;
        }

        if (v39 >= 1 && qword_1001065A8 && *(qword_1001065A8 + 2096) && *(qword_1001065A8 + 2104) <= v38 && sub_1000B162C(*(a1 + 440), v39, 0) == 2 && sub_100036AE0(*(a1 + 5512)) == 2)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      if (*(a1 + 756) == 6 || !sub_100036AF8(*(a1 + 5512)))
      {
        *a2 = 3;
        if (!*(a1 + 348))
        {
          *a2 = 1;
          v11 = 0;
          goto LABEL_58;
        }

        if (!*(a1 + 640) || sub_100044C18(a1) < *(a1 + 644))
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      sub_100036A4C(*(a1 + 5512), 0, v35);
      v10 = sub_100036A44(*(a1 + 5512));
      v11 = 1;
      if (v10 > 1)
      {
LABEL_35:
        if ((v10 - 2) >= 2)
        {
          if (v10 == 6)
          {
            *a2 = 2;
            sub_100036A38(*(a1 + 5512), 0);
            *(a1 + 5512) = *(a1 + 128);
            *(a1 + 6476) = 0;
            sub_100056F80(*a1);
          }

          goto LABEL_58;
        }

LABEL_56:
        *a2 = 0;
        goto LABEL_58;
      }

      if (!v10)
      {
        goto LABEL_56;
      }

      if (v10 == 1)
      {
        if (sub_100036AF8(*(a1 + 5512)))
        {
          *a2 = 2;
        }

        else if (*(a1 + 348))
        {
          *a2 = 3;
        }

        else
        {
          *a2 = 1;
          v11 = 1;
        }
      }
    }

LABEL_58:
    if (*(a1 + 360))
    {
      if (!*(a1 + 6548) && !*(a1 + 6456))
      {
        v13 = sub_100044C18(a1);
        if (v8)
        {
          if (*(a1 + 756) != 6)
          {
            if (sub_10000E764(*(a1 + 16), v13 - 1, &v36))
            {
              v14 = v36;
              if (v14 != sub_10000119C(*(a1 + 16)))
              {
                v15 = sub_100001108(*(a1 + 16));
                v23 = sub_1000C9F54(v15, v16, v17, v18, v19, v20, v21, v22);
                sub_10000501C(*(a1 + 16), v36, v23, v24, v25, v26, v27, v28);
                sub_100056FE8(*a1);
                sub_1000CA03C(v23, v15);
              }
            }
          }
        }
      }
    }

    if (*a2 != 2 || *(a1 + 756) == 6 || sub_100045D04(a1))
    {
      goto LABEL_74;
    }

    if (*(a1 + 348))
    {
      if (sub_100036AF8(*(a1 + 5512)))
      {
LABEL_74:
        if (qword_1001065A8)
        {
          v29 = v11;
        }

        else
        {
          v29 = 0;
        }

        if (v29 == 1 && *(qword_1001065A8 + 2208) && !*(a1 + 652) && sub_100036620(*(a1 + 5512)) != -1)
        {
          sub_100056F78(*a1);
          *(a1 + 652) = 1;
        }

        v9 = 0;
        goto LABEL_83;
      }

      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    *a2 = v12;
    goto LABEL_74;
  }

  v34 = sub_1000BFB80(0);
  v33 = sub_1000C9EBC(0);
  v30 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v31 = sub_1000CED78(0, 0, &v32);
  nullsub_1(v31);
  v5 = 1;
LABEL_12:
  sub_10004D8D8(v5);
  sub_1000CED78(v31, v32, 0);
  sub_1000BDB44(v30);
  sub_1000C9EBC(v33);
  sub_1000BFB80(v34);
  return v5;
}

uint64_t sub_100048F34(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 4;
  }

  if (!*(a1 + 5500))
  {
    return 7;
  }

  v9 = *(a1 + 5512);
  if (!v9)
  {
    result = 18;
    goto LABEL_72;
  }

  v10 = *(a1 + 756);
  v11 = v10 > 9;
  v12 = (1 << v10) & 0x340;
  v13 = v11 || v12 == 0;
  if (v13)
  {
    if (*(a1 + 104))
    {
      v13 = v9 == *(a1 + 112);
      v15 = 800;
      if (v13)
      {
        v15 = 808;
      }

      v16 = *(a1 + v15);
      if (v16[1] == -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = *(a1 + 808);
      if (v16[1] == -1)
      {
        goto LABEL_20;
      }
    }

    if (!v16[22] && v16[23] == 0x7FFFFFFF)
    {
LABEL_71:
      result = 0;
      LODWORD(v9) = v16[1];
      goto LABEL_72;
    }

LABEL_20:
    v17 = a3;
    v18 = a2;
    if (qword_1001065A8 && *(qword_1001065A8 + 1904) && (v48 = 0, sub_100044790(a1, a2, &v48) == 1))
    {
      v19 = (*(a1 + 712) + 24 * v48);
      v20 = v19[1];
      if (v20 <= 0)
      {
        v23 = 0;
        *(v16 + 11) = -NAN;
        v25 = *(a1 + 1320);
        if (v25 < 1)
        {
          goto LABEL_34;
        }

LABEL_29:
        if (*(a1 + 5456))
        {
          v26 = sub_1000C9F54(8 * v25 + 8, a2, a3, a4, a5, a6, a7, a8);
          for (i = 0; i != v25; ++i)
          {
            v26[i] = sub_10002C688(*(a1 + 72), *(a1 + 1324 + 4 * i));
          }

          goto LABEL_35;
        }

LABEL_34:
        v26 = 0;
LABEL_35:
        v16[1] = sub_100036890(*(a1 + 5512), v20, v23, *v16, *(v16 + 1), *(v16 + 2), v16[8], *(v16 + 5), *(v16 + 10), *(v16 + 6), *(v16 + 7), *(v16 + 8), *(v16 + 9), *(v16 + 3), v16 + 35);
        if (v26)
        {
          sub_1000CA03C(v26, 8 * v25 + 8);
        }

        v16[34] = sub_100036A18(*(a1 + 5512));
        LODWORD(v28) = v16[1];
        a3 = v17;
        if (v28 < *v16)
        {
          v28 = v28;
          do
          {
            *(*(v16 + 1) + 4 * v28++) = 0x40000000;
          }

          while (v28 < *v16);
          LODWORD(v28) = v16[1];
        }

        v29 = v28 - 1;
        if (v28 < 1)
        {
          LODWORD(v34) = 0;
        }

        else
        {
          v30 = *(v16 + 5);
          if (v28 == 1)
          {
            v31 = *(v16 + 5);
          }

          else
          {
            v31 = *(v16 + 5);
            do
            {
              v32 = v31;
              while (1)
              {
                v33 = *v32++;
                if (v33 == -1)
                {
                  break;
                }

                v31 = v32;
                if (v32 >= v30 + 4 * v16[8])
                {
                  v31 = 0;
                  goto LABEL_52;
                }
              }

              ++v31;
              --v29;
            }

            while (v29);
          }

LABEL_52:
          v34 = (v31 - v30) >> 2;
          do
          {
            v35 = *v31++;
            LODWORD(v34) = v34 + 1;
          }

          while (v35 != -1);
        }

        if (v34 < v16[8])
        {
          v36 = v34;
          do
          {
            *(*(v16 + 5) + 4 * v36++) = -1;
          }

          while (v36 < v16[8]);
        }

        if (v23)
        {
          sub_1000CA03C(v23, v20);
          a3 = v17;
        }

        v37 = v18;
        if (v16[1] >= 1)
        {
          v38 = sub_10004BFB0(a1, v18, 0);
          v37 = v18;
          a3 = v17;
          if (!v38)
          {
            v44 = *(v16 + 5);
            if (v44)
            {
              v45 = -1;
              v46 = *(v16 + 5);
              do
              {
                v47 = *v46++;
                ++v45;
              }

              while (v47 != -1);
              sub_10004C2B0(a1, v18, v45, *(v16 + 5), **(v16 + 1));
              v37 = v18;
              a3 = v17;
            }

            else
            {
              v45 = 0;
            }

            if (*(a1 + 5488) && *(a1 + 756) == 2 && *(a1 + 104) == *(a1 + 5512))
            {
              sub_10004CC5C(a1, v18, v45, v44);
              v37 = v18;
              a3 = v17;
            }
          }
        }

        v39 = *(a1 + 752);
        if (v39 == 7 || v39 == 1)
        {
          v41 = *(a1 + 1296);
          if (v41 < 1)
          {
LABEL_70:
            sub_10004CE6C(a1, v16, v37);
            a3 = v17;
          }

          else
          {
            v42 = *(a1 + 1304);
            while (1)
            {
              v43 = *v42++;
              if (v43 == v37)
              {
                break;
              }

              if (!--v41)
              {
                goto LABEL_70;
              }
            }
          }
        }

        goto LABEL_71;
      }

      v21 = *v19;
      v22 = sub_1000C9F54(v19[1], a2, a3, a4, a5, a6, a7, a8);
      v23 = v22;
      for (j = 0; j != v20; ++j)
      {
        *(v22 + j) = *(*(a1 + 216) + v21 % *(a1 + 236));
        ++v21;
      }
    }

    else
    {
      LODWORD(v20) = 0;
      v23 = 0;
    }

    *(v16 + 11) = -NAN;
    v25 = *(a1 + 1320);
    if (v25 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  LODWORD(v9) = 0;
  result = 0;
LABEL_72:
  *a3 = v9;
  return result;
}

uint64_t sub_1000493AC(uint64_t a1, int a2)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a1)
  {
    v11 = sub_1000BFB80(*(a1 + 6480));
    v10 = sub_1000C9EBC(*(a1 + 6488));
    v7 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v8 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v9);
    nullsub_1(v8);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (!setjmp(v5))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v6 = 4;
      }

      else if (*(a1 + 8160))
      {
        v6 = 1;
      }

      else
      {
        sub_10004448C(a1, 82);
        v12 = sub_1000485F8(a1, a2);
        v6 = v12;
      }

      v12 = v6;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v11 = sub_1000BFB80(0);
    v10 = sub_1000C9EBC(0);
    v7 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v8 = sub_1000CED78(0, 0, &v9);
    nullsub_1(v8);
  }

  v12 = 1;
LABEL_9:
  sub_10004D8D8(v12);
  sub_1000CED78(v8, v9, 0);
  sub_1000BDB44(v7);
  sub_1000C9EBC(v10);
  sub_1000BFB80(v11);
  return v12;
}

uint64_t sub_10004955C(uint64_t result)
{
  if (!*(result + 6448) || *(result + 756) == 6)
  {
    return result;
  }

  v1 = *(result + 5448);
  v2 = *(result + 308);
  v3 = *(result + 5432);
  v4 = *(result + 5672) || v2 == 0;
  v5 = v4 || v3 == 0;
  if (v5 || v1 < 1)
  {
    return result;
  }

  if (v1 < 8)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_20;
  }

  v7 = v1 & 0x7FFFFFF8;
  v9 = 0;
  v10 = v3 + 1;
  v11 = v7;
  v12 = 0;
  do
  {
    v9 = vorr_s8(v9, vmovn_s32(vtstq_s32(v10[-1], v10[-1])));
    v12 = vorr_s8(v12, vmovn_s32(vtstq_s32(*v10, *v10)));
    v10 += 2;
    v11 -= 8;
  }

  while (v11);
  v8 = vmaxv_u16(vcltz_s16(vshl_n_s16(vorr_s8(v12, v9), 0xFuLL))) & 1;
  if (v7 != v1)
  {
LABEL_20:
    v13 = &v3->i32[v7];
    v14 = v1 - v7;
    do
    {
      if (*v13++)
      {
        v8 = 1;
      }

      --v14;
    }

    while (v14);
  }

  if (v8)
  {
    v16 = *(result + 440);
    v17 = result;
    sub_1000B15D8(v16);
    if (sub_100036B14(*(v17 + 5512)))
    {
      v18 = v2;
    }

    else
    {
      v18 = 0;
    }

    return sub_1000B1698(v16, v18);
  }

  return result;
}

uint64_t sub_1000496AC(uint64_t a1, unsigned int a2, int a3, uint64_t a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (a1)
  {
    v23 = sub_1000BFB80(*(a1 + 6480));
    v22 = sub_1000C9EBC(*(a1 + 6488));
    v19 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v20 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v21);
    nullsub_1(v20);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v17 = sub_1000BDA90();
    if (!setjmp(v17))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v18 = 4;
      }

      else if (*(a1 + 8160))
      {
        v18 = 1;
      }

      else
      {
        v24 = sub_100049898(a1, a2, a3, a4, a5, a6, a7, a8, 0, 0, 0, 0);
        v18 = v24;
      }

      v24 = v18;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v23 = sub_1000BFB80(0);
    v22 = sub_1000C9EBC(0);
    v19 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v20 = sub_1000CED78(0, 0, &v21);
    nullsub_1(v20);
  }

  v24 = 1;
LABEL_9:
  sub_10004D8D8(v24);
  sub_1000CED78(v20, v21, 0);
  sub_1000BDB44(v19);
  sub_1000C9EBC(v22);
  sub_1000BFB80(v23);
  return v24;
}

uint64_t sub_100049898(uint64_t a1, unsigned int a2, int a3, uint64_t a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, int *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = 0;
  result = 4;
  if (!a5 || !a6 || !a7)
  {
    return result;
  }

  if (!*(a1 + 5500))
  {
    return 7;
  }

  if (*(a1 + 756) == 6)
  {
    v14 = 0;
    result = 0;
    *a5 = -1;
    *a6 = 0;
    *a7 = 0;
    if (a8)
    {
LABEL_7:
      result = 0;
      *a8 = v14;
    }
  }

  else
  {
    if (*(a1 + 6448))
    {
      return 18;
    }

    v15 = a8;
    v19 = a4;
    if (*(a1 + 104))
    {
      v20 = 800;
      if (*(a1 + 5512) == *(a1 + 112))
      {
        v20 = 808;
      }
    }

    else
    {
      v20 = 808;
    }

    v37 = 0;
    v21 = *(a1 + v20);
    *a5 = -1;
    *a6 = 0;
    v24 = a1;
    v25 = sub_100048F34(a1, *(a1 + 6424), &v37, a4, a5, a6, a7, a8);
    result = 4;
    if ((a2 & 0x80000000) != 0 || v25)
    {
      return result;
    }

    v26 = a2;
    if (*(v21 + 4) <= a2)
    {
      return 18;
    }

    v27 = v19;
    *a7 = *(*(v21 + 8) + 4 * a2);
    v28 = *(v21 + 40);
    v29 = 0;
    if (a2)
    {
      v30 = &v28[*(v21 + 32)];
      do
      {
        ++v29;
        v31 = v28;
        while (1)
        {
          v32 = *v31++;
          if (v32 == -1)
          {
            break;
          }

          ++v29;
          v28 = v31;
          if (v31 >= v30)
          {
            v29 = 0;
            v28 = 0;
            goto LABEL_27;
          }
        }

        ++v28;
        --v26;
      }

      while (v26);
    }

LABEL_27:
    if (a9)
    {
      *a9 = v29;
    }

    v38 = 0;
    result = sub_10004A900(v24, v29, a3, v27, a5, a10, a11, a12, &v38);
    v33 = -1;
    v34 = v28;
    do
    {
      v35 = *v34++;
      ++v33;
    }

    while (v35 != -1);
    if (!result)
    {
      *a6 = v38;
      if (v15)
      {
        v36 = sub_100036A30(*(v24 + 5512));
        a8 = v15;
        v14 = v36;
        goto LABEL_7;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100049AC4(uint64_t a1, signed int a2, int a3, _DWORD *a4, int *a5, _DWORD *a6, _DWORD *a7, uint64_t a8, _DWORD *a9)
{
  v82 = 0;
  v80 = 0;
  v81 = -1;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  if (a1)
  {
    v79 = sub_1000BFB80(*(a1 + 6480));
    v78 = sub_1000C9EBC(*(a1 + 6488));
    v75 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v76 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v77);
    nullsub_1(v76);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v18 = sub_1000BDA90();
    if (setjmp(v18))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      v26 = 4;
LABEL_52:
      v82 = v26;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (*(a1 + 8160))
    {
      v26 = 1;
      goto LABEL_52;
    }

    if (a9)
    {
      *a9 = -1;
    }

    *a4 = -1;
    *a5 = 0;
    v72 = sub_1000C9F54(a3, v19, v20, v21, v22, v23, v24, v25);
    v71 = sub_1000C9F54(4 * a3, v27, v28, v29, v30, v31, v32, v33);
    v41 = sub_1000C9F54(4 * a3, v34, v35, v36, v37, v38, v39, v40);
    v73 = 4 * a3;
    v49 = sub_1000C9F54(v73, v42, v43, v44, v45, v46, v47, v48);
    v70 = v41;
    v82 = sub_100049898(a1, a2, a3, 0, v49, &v80, a6, a7, &v81, v72, v71, v41);
    if (*(a1 + 104))
    {
      v50 = 800;
      if (*(a1 + 5512) == *(a1 + 112))
      {
        v50 = 808;
      }
    }

    else
    {
      v50 = 808;
    }

    v51 = a3;
    v74 = v49;
    v52 = *(a1 + v50);
    if (!v82)
    {
      v58 = *(*(v52 + 24) + 8 * a2);
      if (v58)
      {
        if (sub_1000405C4(v58))
        {
          v82 = 7;
        }

        else
        {
          if (!a9)
          {
            goto LABEL_51;
          }

          *a9 = sub_100040144(a1, *(*(v52 + 24) + 8 * a2));
        }
      }
    }

    if (!a9 || v82 || v80 < 1 || *a9 == -1 || sub_100022AD4(*(*(v52 + 24) + 8 * a2)) != 3)
    {
      goto LABEL_51;
    }

    v53 = v80;
    if (v80 < 1)
    {
      v57 = 0;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      do
      {
        if (v54 + 1 == v53 || *(v72 + v54 + 1))
        {
          *(a8 + 8 * v55) = sub_10002E914(*(a1 + 80), *(v71 + v54));
          a4[v55++] = *(v70 + v54);
          v53 = v80;
        }

        v56 = ++v54 < v53;
        v57 = v55;
      }

      while (v56);
    }

    *a5 = v57;
    v51 = a3;
    if (v57 >= a3)
    {
      goto LABEL_51;
    }

    v59 = a3 - v57;
    if (v59 >= 0xC)
    {
      v61 = a8 + 8 * v57;
      v62 = &a4[v57];
      if (v61 >= &a4[v73 / 4] || (v60 = v57, v62 >= a8 + 8 * a3))
      {
        v60 = (v59 & 0xFFFFFFFFFFFFFFF8) + v57;
        v63 = (v62 + 16);
        *&v64 = -1;
        *(&v64 + 1) = -1;
        v65 = (v61 + 32);
        v66 = v59 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          *(v65 - 2) = 0uLL;
          *(v65 - 1) = 0uLL;
          *v65 = 0uLL;
          v65[1] = 0uLL;
          v65 += 4;
          *(v63 - 1) = v64;
          *v63 = v64;
          v63 += 2;
          v66 -= 8;
        }

        while (v66);
        if (v59 == (v59 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v60 = v57;
    }

    v67 = (a8 + 8 * v60);
    v68 = &a4[v60];
    v69 = a3 - v60;
    do
    {
      *v67++ = 0;
      *v68++ = -1;
      --v69;
    }

    while (v69);
LABEL_51:
    sub_1000CA03C(v74, v73);
    sub_1000CA03C(v70, v73);
    sub_1000CA03C(v71, v73);
    sub_1000CA03C(v72, v51);
    v26 = v82;
    goto LABEL_52;
  }

  v79 = sub_1000BFB80(0);
  v78 = sub_1000C9EBC(0);
  v75 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v76 = sub_1000CED78(0, 0, &v77);
  nullsub_1(v76);
LABEL_8:
  v82 = 1;
LABEL_9:
  sub_10004D8D8(v82);
  sub_1000CED78(v76, v77, 0);
  sub_1000BDB44(v75);
  sub_1000C9EBC(v78);
  sub_1000BFB80(v79);
  return v82;
}

uint64_t sub_100049F70(unint64_t a1, int a2)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  if (a1)
  {
    v18 = sub_1000BFB80(*(a1 + 6480));
    v17 = sub_1000C9EBC(*(a1 + 6488));
    v14 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v15 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v16);
    nullsub_1(v15);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (setjmp(v5))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        v11 = 1;
        goto LABEL_14;
      }

      if (*(a1 + 104))
      {
        v12 = 800;
        if (*(a1 + 5512) == *(a1 + 112))
        {
          v12 = 808;
        }
      }

      else
      {
        v12 = 808;
      }

      v13 = *(a1 + v12);
      v20 = sub_100048F34(a1, *(a1 + 6424), &v19, v6, v7, v8, v9, v10);
      if ((a2 & 0x80000000) == 0 && !v20 && v13[1] > a2)
      {
        sub_10004A180(a1, v13, a2, 1);
        v11 = v20;
        goto LABEL_14;
      }
    }

    v11 = 4;
LABEL_14:
    v20 = v11;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v18 = sub_1000BFB80(0);
  v17 = sub_1000C9EBC(0);
  v14 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v15 = sub_1000CED78(0, 0, &v16);
  nullsub_1(v15);
LABEL_8:
  v20 = 1;
LABEL_9:
  sub_10004D8D8(v20);
  sub_1000CED78(v15, v16, 0);
  sub_1000BDB44(v14);
  sub_1000C9EBC(v17);
  sub_1000BFB80(v18);
  return v20;
}

unint64_t sub_10004A180(unint64_t result, int *a2, int a3, int a4)
{
  v6 = a2[1];
  if (v6 - 1 == a3)
  {
    LODWORD(v7) = v6 - 1;
    a2[1] = v7;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(a2 + 5);
    v9 = a2[8];
    v10 = &v8[v9];
    v11 = v8;
    v37 = result;
    v35 = a3 + 1;
    v36 = a4;
    if (a3 == -1)
    {
      goto LABEL_13;
    }

    v11 = *(a2 + 5);
    v12 = a3 + 1;
    do
    {
      v13 = v11;
      while (1)
      {
        v14 = *v13++;
        if (v14 == -1)
        {
          break;
        }

        v11 = v13;
        if (v13 >= v10)
        {
          v11 = 0;
          goto LABEL_12;
        }
      }

      ++v11;
      --v12;
    }

    while (v12);
LABEL_12:
    if (a3)
    {
LABEL_13:
      v15 = *(a2 + 5);
      v16 = a3;
      do
      {
        v17 = v15;
        while (1)
        {
          v18 = *v17++;
          if (v18 == -1)
          {
            break;
          }

          v15 = v17;
          if (v17 >= v10)
          {
            v15 = 0;
            goto LABEL_19;
          }
        }

        ++v15;
        --v16;
      }

      while (v16);
    }

    else
    {
      v15 = *(a2 + 5);
    }

LABEL_19:
    v19 = v15 - v8;
    v20 = (v11 - v15) >> 2;
    v21 = v9 - ((v11 - v8) >> 2);
    v22 = (v11 - v15);
    v23 = 4 * v21;
    j__memmove(v15, &v15[v22], v23);
    v24 = (v19 >> 2);
    j__memmove((*(a2 + 10) + v24), (*(a2 + 10) + v24 + v22), v21);
    v25 = (*(a2 + 9) + 2 * (v19 >> 2));
    j__memmove(v25, &v25[2 * v20], 2 * v21);
    j__memmove((*(a2 + 6) + 4 * v24), (*(a2 + 6) + 4 * v24 + 4 * v22), v23);
    j__memmove((*(a2 + 7) + 4 * v24), (*(a2 + 7) + 4 * v24 + 4 * v22), v23);
    j__memmove((*(a2 + 8) + v24), (*(a2 + 8) + v24 + v22), v21);
    v26 = v35;
    j__memmove((*(a2 + 1) + 4 * a3), (*(a2 + 1) + 4 * v35), 4 * (*a2 - v35));
    j__memmove((*(a2 + 2) + 2 * a3), (*(a2 + 2) + 2 * v26), 2 * (*a2 - v26));
    j__memmove((*(a2 + 3) + 8 * a3), (*(a2 + 3) + 8 * v26), 8 * (*a2 - v26));
    result = v37;
    a4 = v36;
    LODWORD(v7) = a2[1] - 1;
    a2[1] = v7;
    if (v7)
    {
LABEL_3:
      if (!a4)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }
  }

  a2[35] = -1;
  if (!a4)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (a3)
  {
    if (a2[35] != -1)
    {
      if (v7 == 1)
      {
        a2[35] = 100;
        LODWORD(v7) = 1;
      }

      else if (a3 == 1)
      {
        result = sub_100036B54(*(result + 5512), **(a2 + 1), *(*(a2 + 1) + 4));
        a2[35] = result;
        LODWORD(v7) = a2[1];
      }
    }
  }

  else
  {
    a2[35] = -1;
  }

LABEL_28:
  if (v7 < *a2)
  {
    v7 = v7;
    do
    {
      *(*(a2 + 1) + 4 * v7++) = 0x40000000;
    }

    while (v7 < *a2);
    LODWORD(v7) = a2[1];
  }

  v27 = v7 - 1;
  if (v7 < 1)
  {
    LODWORD(v32) = 0;
  }

  else
  {
    v28 = *(a2 + 5);
    if (v7 == 1)
    {
      v29 = *(a2 + 5);
    }

    else
    {
      v29 = *(a2 + 5);
      do
      {
        v30 = v29;
        while (1)
        {
          v31 = *v30++;
          if (v31 == -1)
          {
            break;
          }

          v29 = v30;
          if (v30 >= v28 + 4 * a2[8])
          {
            v29 = 0;
            goto LABEL_43;
          }
        }

        ++v29;
        --v27;
      }

      while (v27);
    }

LABEL_43:
    v32 = (v29 - v28) >> 2;
    do
    {
      v33 = *v29++;
      LODWORD(v32) = v32 + 1;
    }

    while (v33 != -1);
  }

  if (v32 < a2[8])
  {
    v34 = v32;
    do
    {
      *(*(a2 + 5) + 4 * v34++) = -1;
    }

    while (v34 < a2[8]);
  }

  return result;
}

uint64_t sub_10004A4F0(uint64_t a1, _DWORD *a2, int *a3)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  if (a1)
  {
    v20 = sub_1000BFB80(*(a1 + 6480));
    v19 = sub_1000C9EBC(*(a1 + 6488));
    v16 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v17 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v18);
    nullsub_1(v17);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v8 = sub_1000BDA90();
    if (setjmp(v8))
    {
      v7 = 1;
      *(a1 + 8160) = 1;
      goto LABEL_12;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        v14 = 1;
        goto LABEL_11;
      }

      if (a2)
      {
        if (*(a1 + 6448))
        {
          v14 = 18;
        }

        else
        {
          v14 = sub_100048F34(a1, *(a1 + 6424), a2, v9, v10, v11, v12, v13);
          if (!v14)
          {
            if (*(a1 + 756) != 6)
            {
              if (*(a1 + 104))
              {
                v15 = 800;
                if (*(a1 + 5512) == *(a1 + 112))
                {
                  v15 = 808;
                }
              }

              else
              {
                v15 = 808;
              }

              if (a3)
              {
                *a3 = *(*(a1 + v15) + 140) & ~(*(*(a1 + v15) + 140) >> 31);
              }
            }

            v14 = 0;
          }
        }

        goto LABEL_11;
      }
    }

    v14 = 4;
LABEL_11:
    v7 = v14;
    sub_1000BDAF4();
    goto LABEL_12;
  }

  v20 = sub_1000BFB80(0);
  v19 = sub_1000C9EBC(0);
  v16 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v17 = sub_1000CED78(0, 0, &v18);
  nullsub_1(v17);
  v7 = 1;
LABEL_12:
  sub_10004D8D8(v7);
  sub_1000CED78(v17, v18, 0);
  sub_1000BDB44(v16);
  sub_1000C9EBC(v19);
  sub_1000BFB80(v20);
  return v7;
}

uint64_t sub_10004A700(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (a1)
  {
    v17 = sub_1000BFB80(*(a1 + 6480));
    v16 = sub_1000C9EBC(*(a1 + 6488));
    v13 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v14 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v15);
    nullsub_1(v14);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v11 = sub_1000BDA90();
    if (!setjmp(v11))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v12 = 4;
      }

      else if (*(a1 + 8160))
      {
        v12 = 1;
      }

      else if (*(a1 + 6448))
      {
        v12 = 18;
      }

      else
      {
        v19 = sub_100049898(a1, a2, a3, 0, a4, a5, &v18, 0, 0, 0, 0, 0);
        v12 = v19;
      }

      v19 = v12;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v17 = sub_1000BFB80(0);
    v16 = sub_1000C9EBC(0);
    v13 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v14 = sub_1000CED78(0, 0, &v15);
    nullsub_1(v14);
  }

  v19 = 1;
LABEL_9:
  sub_10004D8D8(v19);
  sub_1000CED78(v14, v15, 0);
  sub_1000BDB44(v13);
  sub_1000C9EBC(v16);
  sub_1000BFB80(v17);
  return v19;
}

uint64_t sub_10004A900(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  LODWORD(v13) = a2;
  v15 = sub_1000B210C(*(a1 + 8));
  v16 = sub_1000B214C(*(a1 + 8));
  v17 = 2 * v15;
  v25 = sub_1000C9F54(v17 + 2, v18, v19, v20, v21, v22, v23, v24);
  v26 = 2 * v16;
  v34 = sub_1000C9F54(v26 + 2, v27, v28, v29, v30, v31, v32, v33);
  v55 = a3;
  v53 = v26;
  v54 = v17;
  if (*(a1 + 104))
  {
    v35 = 800;
    if (*(a1 + 5512) == *(a1 + 112))
    {
      v35 = 808;
    }
  }

  else
  {
    v35 = 808;
  }

  v36 = *(a1 + v35);
  v37 = *(v36 + 40);
  v38 = (v37 + 4 * v13);
  if (*(v36 + 32) <= v13)
  {
    v39 = 0;
    v41 = 0;
    goto LABEL_32;
  }

  v13 = v13;
  v56 = v55 - 1;
  if (a4)
  {
    v39 = 0;
    do
    {
      if (*v38 == -1)
      {
        break;
      }

      sub_1000B22CC(*(a1 + 8), *v38, v25, v34);
      if (sub_1000CBE9C(v25, L"<s>") && sub_1000CBE9C(v25, L"<e>"))
      {
        if (v39 >= v56)
        {
          goto LABEL_68;
        }

        if (a6)
        {
          *(a6 + v39) = *(*(v36 + 64) + v13);
        }

        if (a7)
        {
          *(a7 + 4 * v39) = *(*(v36 + 48) + 4 * v13);
        }

        if (a8)
        {
          *(a8 + 4 * v39) = *(*(v36 + 56) + 4 * v13);
        }

        v40 = v39 + 1;
        *(a5 + 4 * v39) = *v38;
        if (!*(*(v36 + 80) + v13) || v38[1] == -1)
        {
          ++v39;
        }

        else
        {
          if (a6)
          {
            *(a6 + v40) = 0;
          }

          if (a7)
          {
            *(a7 + 4 * v40) = *(a7 + 4 * v39);
          }

          if (a8)
          {
            *(a8 + 4 * v40) = *(a8 + 4 * v39);
          }

          v39 += 2;
          *(a5 + 4 * v40) = -2;
        }
      }

      ++v38;
      ++v13;
    }

    while (v38 < *(v36 + 40) + 4 * *(v36 + 32));
    v41 = 0;
  }

  else
  {
    if (a6)
    {
      if (a7)
      {
        v49 = 0;
        while (1)
        {
          if (*v38 == -1)
          {
LABEL_69:
            v41 = 0;
            v39 = v49;
            goto LABEL_32;
          }

          sub_1000B22CC(*(a1 + 8), *v38, v25, v34);
          if (sub_1000CBE9C(v25, L"<s>") && sub_1000CBE9C(v25, L"<e>"))
          {
            if (v49 >= v56)
            {
              v41 = 10;
              v39 = v49;
              goto LABEL_32;
            }

            *(a6 + v49) = *(*(v36 + 64) + v13);
            *(a7 + 4 * v49) = *(*(v36 + 48) + 4 * v13);
            if (a8)
            {
              *(a8 + 4 * v49) = *(*(v36 + 56) + 4 * v13);
            }

            *(a5 + 4 * v49++) = *v38;
          }

          ++v38;
          ++v13;
          if (v38 >= *(v36 + 40) + 4 * *(v36 + 32))
          {
            goto LABEL_69;
          }
        }
      }

      v39 = 0;
      v42 = v55;
      while (1)
      {
        if (*v38 == -1)
        {
          v41 = 0;
          goto LABEL_33;
        }

        sub_1000B22CC(*(a1 + 8), *v38, v25, v34);
        if (sub_1000CBE9C(v25, L"<s>") && sub_1000CBE9C(v25, L"<e>"))
        {
          if (v39 >= v56)
          {
            v41 = 10;
            goto LABEL_33;
          }

          *(a6 + v39) = *(*(v36 + 64) + v13);
          if (a8)
          {
            *(a8 + 4 * v39) = *(*(v36 + 56) + 4 * v13);
          }

          *(a5 + 4 * v39++) = *v38;
        }

        v41 = 0;
        ++v38;
        ++v13;
        if (v38 >= *(v36 + 40) + 4 * *(v36 + 32))
        {
          goto LABEL_33;
        }
      }
    }

    v39 = 0;
    v50 = 4 * v13;
    do
    {
      v51 = *(v37 + v50);
      if (v51 == -1)
      {
        v41 = 0;
        v38 = (v37 + v50);
        goto LABEL_32;
      }

      sub_1000B22CC(*(a1 + 8), v51, v25, v34);
      if (sub_1000CBE9C(v25, L"<s>") && sub_1000CBE9C(v25, L"<e>"))
      {
        if (v39 >= v56)
        {
LABEL_68:
          v41 = 10;
          goto LABEL_32;
        }

        if (a7)
        {
          *(a7 + 4 * v39) = *(*(v36 + 48) + v50);
        }

        v52 = v39;
        if (a8)
        {
          *(a8 + 4 * v39) = *(*(v36 + 56) + v50);
        }

        ++v39;
        *(a5 + 4 * v52) = *(v37 + v50);
      }

      ++v38;
      v50 += 4;
    }

    while (v37 + v50 < (*(v36 + 40) + 4 * *(v36 + 32)));
    v41 = 0;
    v38 = (v37 + v50);
  }

LABEL_32:
  v42 = v55;
LABEL_33:
  v43 = *(v36 + 40);
  v44 = *(v36 + 32);
  v45 = v39;
  if ((v39 & 0x80000000) == 0)
  {
    v45 = v39;
    if (v39 < v42)
    {
      v45 = v39 + 1;
      *(a5 + 4 * v39) = -1;
    }
  }

  if (a9)
  {
    *a9 = v45 - 1;
  }

  if (v38 < v43 + 4 * v44 && v39 < v42)
  {
    v47 = v41;
  }

  else
  {
    v47 = 10;
  }

  sub_1000CA03C(v34, v53 + 2);
  sub_1000CA03C(v25, v54 + 2);
  return v47;
}

uint64_t sub_10004AE3C(uint64_t a1, int a2)
{
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v191 = 0;
  v192 = 0;
  v190 = 0;
  if (a1)
  {
    v194 = sub_1000BFB80(*(a1 + 6480));
    v193 = sub_1000C9EBC(*(a1 + 6488));
    v190 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v191 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v192);
    nullsub_1(v191);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (setjmp(v5))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      v6 = 4;
LABEL_14:
      v195 = v6;
LABEL_15:
      sub_1000BDAF4();
      goto LABEL_9;
    }

    if (*(a1 + 8160))
    {
      v6 = 1;
      goto LABEL_14;
    }

    if (!*(a1 + 5500))
    {
      v6 = 7;
      goto LABEL_14;
    }

    if (*(a1 + 6448))
    {
      v6 = 18;
      goto LABEL_14;
    }

    if (*(a1 + 104))
    {
      v7 = 800;
      if (*(a1 + 5512) == *(a1 + 112))
      {
        v7 = 808;
      }
    }

    else
    {
      v7 = 808;
    }

    v8 = *(a1 + v7);
    if (*(v8 + 4) <= 0 || a2 <= 0 || !*(a1 + 112))
    {
LABEL_164:
      v6 = v195;
      goto LABEL_14;
    }

    if (!sub_100046178(a1, -2))
    {
      v6 = 13;
      goto LABEL_14;
    }

    v16 = sub_10003D234(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!v16)
    {
      v6 = 2;
      goto LABEL_14;
    }

    v24 = v16;
    v25 = *(a1 + 256);
    v26 = *(v8 + 4);
    if (v26 >= a2)
    {
      v27 = a2;
    }

    else
    {
      v27 = *(v8 + 4);
    }

    if (v27 >= 1024)
    {
      v28 = 1024;
    }

    else
    {
      v28 = v27;
    }

    v29 = 8 * v28;
    v35 = sub_1000C9FC0(v29, v17, v18, v19, v20, v21, v22, v23);
    if (v26 < 1)
    {
      v53 = 0;
      v52 = 0;
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      do
      {
        v39 = v37;
        v40 = v36;
        v41 = *(v8 + 40);
        if (v38)
        {
          v42 = *(v8 + 40);
          v43 = v38;
          do
          {
            v44 = v42;
            while (1)
            {
              v45 = (v44 + 1);
              if (*v44 == -1)
              {
                break;
              }

              ++v44;
              if (v45 >= *(v8 + 40) + 4 * *(v8 + 32))
              {
                v41 = 0;
                goto LABEL_46;
              }
            }

            v46 = v44 + 1;
            v42 = v46;
            --v43;
          }

          while (v43);
          v41 = v46;
        }

LABEL_46:
        v47 = -1;
        v48 = v41;
        do
        {
          v49 = *v48++;
          v50 = ++v47;
        }

        while (v49 != -1);
        v51 = (v40 + v50);
        if (v39 <= v50)
        {
          v39 = v50;
        }

        v37 = v39;
        ++v38;
        v36 = v51;
      }

      while (v38 != v28);
      v52 = 2 * v39;
      v53 = v51;
    }

    v178 = v52;
    v54 = v28;
    v55 = *(a1 + 80);
    v56 = v35;
    if (!v55)
    {
      v183 = v25;
      v187 = v26;
      v186 = v35;
      for (i = 0; ; ++i)
      {
        if (i >= v28)
        {
          v184 = v35;
          v185 = 8 * v28;
          v87 = v28;
          goto LABEL_106;
        }

        v89 = *(v8 + 40);
        if (i)
        {
          v90 = i;
          do
          {
            v91 = v89;
            while (1)
            {
              v92 = (v91 + 1);
              if (*v91 == -1)
              {
                break;
              }

              ++v91;
              if (v92 >= *(v8 + 40) + 4 * *(v8 + 32))
              {
                v89 = 0;
                goto LABEL_93;
              }
            }

            v93 = v91 + 1;
            v89 = v93;
            --v90;
          }

          while (v90);
          v89 = v93;
        }

LABEL_93:
        v94 = -1;
        v95 = v89;
        do
        {
          v96 = *v95++;
          v97 = ++v94;
        }

        while (v96 != -1);
        v98 = qword_1001065A8 ? *(qword_1001065A8 + 4928) : 0;
        v99 = sub_10002CFE0(v89, v97, *(a1 + 8), v98);
        v35[i] = v99;
        if (!v99)
        {
          break;
        }
      }

      if (i >= 1)
      {
        v100 = i + 1;
        v101 = &v35[i - 1];
        do
        {
          v102 = v100;
          v103 = v101 - 1;
          sub_100022FBC(*v101);
          v100 = v102 - 1;
          v101 = v103;
        }

        while ((v102 - 1) > 1);
        v29 = 8 * v28;
        v56 = v35;
      }

      sub_1000CA03C(v56, v29);
      sub_10003D17C(v24);
      v195 = 2;
      goto LABEL_15;
    }

    if (!sub_10002EBC8(v55, "\x01SCL", v28, v53, 0, 0, 1))
    {
      sub_1000CA03C(v35, 8 * v28);
      sub_10003D17C(v24);
      v6 = 4;
      goto LABEL_14;
    }

    v183 = v25;
    v184 = v35;
    v185 = 8 * v28;
    v186 = v35;
    v64 = sub_1000C9F54(v178, v57, v58, v59, v60, v61, v62, v63);
    v187 = v26;
    if (v26 >= 1)
    {
      v65 = 0;
      if (v28 <= 1)
      {
        v66 = 1;
      }

      else
      {
        v66 = v28;
      }

      v177 = v66;
      while (1)
      {
        v67 = *(v8 + 40);
        if (v65)
        {
          v68 = v65;
          do
          {
            v69 = v67;
            while (1)
            {
              v70 = (v69 + 1);
              if (*v69 == -1)
              {
                break;
              }

              ++v69;
              if (v70 >= *(v8 + 40) + 4 * *(v8 + 32))
              {
                v67 = 0;
                goto LABEL_70;
              }
            }

            v71 = v69 + 1;
            v67 = v71;
            --v68;
          }

          while (v68);
          v67 = v71;
        }

LABEL_70:
        v72 = -1;
        v73 = 0;
        v74 = v67;
        do
        {
          LODWORD(v75) = v73;
          v76 = *v74++;
          v77 = v72 + 1;
          ++v73;
          ++v72;
        }

        while (v76 != -1);
        v78 = v77;
        if (v77 >= 1)
        {
          v75 = v75;
          v79 = v67;
          v80 = v64;
          do
          {
            v81 = v75;
            v82 = *v79++;
            *v80++ = sub_1000B2A30(*(a1 + 8), v82);
            v75 = v81 - 1;
          }

          while (v81 != 1);
        }

        if (!sub_10002F46C(*(a1 + 80), "\x01SCL", v64, v78, 0, v65))
        {
          break;
        }

        if (++v65 == v177)
        {
          goto LABEL_77;
        }
      }

      sub_1000CA03C(v64, v178);
      v83 = 0;
      goto LABEL_113;
    }

LABEL_77:
    sub_1000CA03C(v64, v178);
    v83 = sub_100023DC8("\x01SCO", *(a1 + 80), 1, 1, 0);
    if (v83)
    {
      v84 = v83;
      v85 = sub_10002E83C(*(a1 + 80), "\x01SCL");
      if (v85 != -1)
      {
        v86 = v85;
        if (sub_100024B18(v84, 0, v85, 0))
        {
          if (sub_100024B18(v84, v86, 0, 0))
          {
            *v184 = v84;
            v87 = 1;
LABEL_106:
            v104 = *(a1 + 776);
            if (v104)
            {
              v105 = sub_1000C9F54(2 * v104, v30, v54, v53, v31, v32, v33, v34);
              if (*(a1 + 776) < 1)
              {
                v108 = *(a1 + 776);
              }

              else
              {
                v106 = 0;
                do
                {
                  v107 = v106;
                  *(v105 + 2 * v106) = sub_1000B2A30(*(a1 + 8), *(*(a1 + 768) + 4 * v106));
                  v106 = v107 + 1;
                }

                while (v107 + 1 < *(a1 + 776));
                v108 = *(a1 + 776);
              }
            }

            else
            {
              v108 = 0;
              v105 = 0;
            }

            v182 = v105;
            v109 = *(a1 + 112);
            *(a1 + 5512) = v109;
            v110 = *(a1 + 808);
            v111 = qword_1001065A8;
            if (qword_1001065A8)
            {
              v111 = *(qword_1001065A8 + 1764);
            }

            LODWORD(v176) = 0;
            HIDWORD(v176) = v111;
            if (sub_100036E28(v109, v108, v105, v87, v184, 3, 1, 1u, v176, v183) == 3)
            {
              v110[1] = 0;
              v110[35] = -1;
            }

            else
            {
              v112 = v110[35];
              v110[1] = sub_100036890(*(a1 + 5512), 0, 0, *v110, *(v110 + 1), *(v110 + 2), v110[8], *(v110 + 5), *(v110 + 10), *(v110 + 6), *(v110 + 7), *(v110 + 8), *(v110 + 9), *(v110 + 3), v110 + 35);
              if (v112 == -1)
              {
                v110[35] = -1;
              }

              v110[34] = sub_100036A18(*(a1 + 5512));
            }

            if (!*(a1 + 1320))
            {
              goto LABEL_158;
            }

            v189 = 0;
            v113 = (2 * sub_10004B96C(*(v110 + 5), v110[1], v110[8])) | 1;
            v180 = 4 * v113;
            v181 = sub_1000C9F54(v180, v114, v115, v116, v117, v118, v119, v120);
            if (v110[1] >= 1)
            {
              v179 = v113;
              v127 = 0;
              do
              {
                v188 = 0;
                v128 = *(v110 + 5);
                if (v127)
                {
                  v129 = 0;
                  v130 = *(v110 + 5);
                  v131 = v127;
                  do
                  {
                    v132 = v129 + 1;
                    v133 = v130;
                    while (1)
                    {
                      v134 = (v133 + 1);
                      if (*v133 == -1)
                      {
                        break;
                      }

                      ++v133;
                      ++v132;
                      if (v134 >= *(v110 + 5) + 4 * v110[8])
                      {
                        v136 = 0;
                        v128 = 0;
                        goto LABEL_136;
                      }
                    }

                    v135 = v133 + 1;
                    v130 = v135;
                    v129 = v132;
                    --v131;
                  }

                  while (v131);
                  v136 = v132;
                  v128 = v135;
                }

                else
                {
                  v136 = 0;
                }

LABEL_136:
                v137 = v128;
                v195 = sub_10004A900(a1, v136, v179, 1, v181, 0, 0, 0, &v188);
                v145 = -1;
                v146 = 0;
                v147 = v137;
                do
                {
                  v148 = v146;
                  v149 = *v147++;
                  v150 = ++v145;
                  ++v146;
                }

                while (v149 != -1);
                v151 = sub_1000C9F54(8 * v188, v138, v139, v140, v141, v142, v143, v144);
                v159 = sub_1000C9F54(v188, v152, v153, v154, v155, v156, v157, v158);
                v160 = *(*(v110 + 7) + 4 * v136);
                if (v160)
                {
                  v161 = *(*(v110 + 7) + 4 * v136);
                  v162 = 0;
                  v163 = *(v24 + 40);
                  do
                  {
                    v164 = v162 + 1;
                    v165 = v163;
                    while (1)
                    {
                      v166 = (v165 + 1);
                      if (*v165 == -1)
                      {
                        break;
                      }

                      ++v165;
                      ++v164;
                      if (v166 >= *(v24 + 40) + 4 * *(v24 + 32))
                      {
                        v167 = -1;
                        goto LABEL_147;
                      }
                    }

                    v163 = v165 + 1;
                    v162 = v164;
                    --v161;
                  }

                  while (v161);
                  v167 = v164;
                }

                else
                {
                  v167 = 0;
                }

LABEL_147:
                *(*(v110 + 3) + 8 * v127) = *(*(v24 + 24) + 8 * v160);
                if (v150 >= 1)
                {
                  v168 = v136;
                  v169 = v148;
                  do
                  {
                    *(*(v110 + 6) + 4 * v168) = *(*(v24 + 48) + 4 * v167);
                    *(*(v110 + 7) + 4 * v168) = *(*(v24 + 56) + 4 * v167);
                    *(*(v110 + 8) + v168++) = *(*(v24 + 64) + v167++);
                    --v169;
                  }

                  while (v169);
                }

                *(*(v110 + 1) + 4 * v127) = *(*(v110 + 1) + 4 * v127) - *(*(v110 + 2) + 2 * v127) + *(*(v24 + 16) + 2 * v160);
                *(*(v110 + 2) + 2 * v127) = *(*(v24 + 16) + 2 * v160);
                sub_1000CA03C(v159, v188);
                sub_1000CA03C(v151, 8 * v188);
                ++v127;
              }

              while (v127 < v110[1]);
            }

            sub_10004B9F8(a1, &v189, v121, v122, v123, v124, v125, v126);
            v170 = v110[1];
            if (v170 <= 1)
            {
              if (v170 != 1 || !v189)
              {
                goto LABEL_157;
              }

              v171 = 100;
            }

            else
            {
              v171 = sub_100036B54(*(a1 + 5512), **(v110 + 1), *(*(v110 + 1) + 4));
            }

            v110[35] = v171;
LABEL_157:
            sub_1000CA03C(v181, v180);
LABEL_158:
            if (v187 >= 1)
            {
              v172 = v28 + 1;
              v173 = &v186[v28 - 1];
              do
              {
                v174 = v172;
                v175 = v173;
                sub_100036250(*(a1 + 5512));
                sub_100022FBC(*v175);
                v172 = v174 - 1;
                v173 = (v175 - 1);
              }

              while (v174 - 1 > 1);
            }

            if (v182)
            {
              sub_1000CA03C(v182, 2 * *(a1 + 776));
            }

            sub_1000CA03C(v184, v185);
            sub_10003D17C(v24);
            goto LABEL_164;
          }
        }
      }

      v83 = v84;
    }

LABEL_113:
    sub_100022FBC(v83);
    sub_10003D17C(v24);
    sub_1000CA03C(v184, v185);
    goto LABEL_164;
  }

  v194 = sub_1000BFB80(0);
  v193 = sub_1000C9EBC(0);
  v190 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v191 = sub_1000CED78(0, 0, &v192);
  nullsub_1(v191);
LABEL_8:
  v195 = 1;
LABEL_9:
  sub_10004D8D8(v195);
  sub_1000CED78(v191, v192, 0);
  sub_1000BDB44(v190);
  sub_1000C9EBC(v193);
  sub_1000BFB80(v194);
  return v195;
}

uint64_t sub_10004B96C(int *a1, int a2, int a3)
{
  if (a2 < 1 || !a1)
  {
    return 0;
  }

  result = 0;
  for (i = 0; i != a2; ++i)
  {
    v6 = a1;
    if (i)
    {
      v6 = a1;
      v7 = i;
      do
      {
        v8 = v6;
        while (1)
        {
          v9 = *v8++;
          if (v9 == -1)
          {
            break;
          }

          v6 = v8;
          if (v8 >= &a1[a3])
          {
            return result;
          }
        }

        ++v6;
        --v7;
      }

      while (v7);
    }

    v10 = -1;
    do
    {
      v11 = *v6++;
      ++v10;
    }

    while (v11 != -1);
    if (result <= v10)
    {
      result = v10;
    }

    else
    {
      result = result;
    }
  }

  return result;
}

void *sub_10004B9F8(void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[13])
  {
    v8 = 100;
    if (a1[689] == a1[14])
    {
      v8 = 101;
    }
  }

  else
  {
    v8 = 101;
  }

  v153[0] = 0;
  v9 = a1[v8];
  v10 = *(v9 + 32);
  v151 = sub_1000C9F54(4 * v10, a2, a3, a4, a5, a6, a7, a8);
  v18 = sub_1000C9F54(v10, v11, v12, v13, v14, v15, v16, v17);
  v26 = sub_1000C9F54(4 * v10, v19, v20, v21, v22, v23, v24, v25);
  v141 = 4 * v10;
  v150 = sub_1000C9F54(4 * v10, v27, v28, v29, v30, v31, v32, v33);
  v41 = sub_1000C9F54(v10, v34, v35, v36, v37, v38, v39, v40);
  v139 = v10;
  v42 = 2 * v10;
  v43 = a1;
  v138 = v42;
  __dst = sub_1000C9F54(v42, v44, v45, v46, v47, v48, v49, v50);
  sub_100048F34(v43, *(v43 + 6424), v153, v51, v52, v53, v54, v55);
  if (v153[0] >= 1)
  {
    v59 = 0;
    v148 = 0;
    v60 = 0xFFFFFFFFLL;
    v152 = v26;
    v142 = v18;
    while (1)
    {
      v62 = *(v9 + 40);
      v63 = *(v9 + 32);
      v64 = v62;
      if (v59)
      {
        v64 = *(v9 + 40);
        v65 = v59;
        do
        {
          v66 = v64;
          while (1)
          {
            v67 = *v66++;
            if (v67 == -1)
            {
              break;
            }

            v64 = v66;
            if (v66 >= &v62[v63])
            {
              v64 = 0;
              goto LABEL_17;
            }
          }

          ++v64;
          --v65;
        }

        while (v65);
      }

LABEL_17:
      v68 = 0xFFFFFFFF00000000;
      v69 = -1;
      v70 = v64;
      do
      {
        v71 = *v70++;
        v68 += &_mh_execute_header;
        ++v69;
      }

      while (v71 != -1);
      v72 = *(*(v9 + 8) + 4 * v59);
      if (v59)
      {
        v73 = &v62[v63];
        v74 = v59 - 1;
        if (v59 == 1)
        {
          v79 = 0;
          v76 = *(v9 + 40);
        }

        else
        {
          v75 = 0;
          v76 = *(v9 + 40);
          do
          {
            ++v75;
            v77 = v76;
            while (1)
            {
              v78 = *v77++;
              if (v78 == -1)
              {
                break;
              }

              ++v75;
              v76 = v77;
              if (v77 >= v73)
              {
                v76 = 0;
                v79 = -1;
                goto LABEL_31;
              }
            }

            ++v76;
            --v74;
          }

          while (v74);
          v79 = v75;
        }

LABEL_31:
        LODWORD(v82) = 0;
        v83 = v59;
        do
        {
          LODWORD(v82) = v82 + 1;
          v84 = v62;
          while (1)
          {
            v85 = *v84++;
            if (v85 == -1)
            {
              break;
            }

            LODWORD(v82) = v82 + 1;
            v62 = v84;
            if (v84 >= v73)
            {
              v62 = 0;
              v82 = -1;
              goto LABEL_38;
            }
          }

          ++v62;
          --v83;
        }

        while (v83);
        v82 = v82;
LABEL_38:
        v86 = 0;
        v87 = -1;
        v88 = 1;
        v89 = v76;
        do
        {
          v90 = v88;
          v91 = v86;
          v92 = *v89++;
          ++v87;
          ++v88;
          ++v86;
        }

        while (v92 != -1);
        v93 = 0;
        v94 = -1;
        v95 = v62;
        do
        {
          v96 = v93;
          v97 = *v95++;
          ++v94;
          --v90;
          ++v93;
        }

        while (v97 != -1);
        v98 = 4 * v79;
        v99 = *(v9 + 48);
        v100 = *(v9 + 56);
        v56 = 4 * v82;
        v101 = v100 == 0;
        v102 = (v100 + 4 * v82);
        if (v100)
        {
          v103 = (v100 + v98);
        }

        else
        {
          v103 = 0;
        }

        if (v101)
        {
          v102 = 0;
        }

        v104 = (v99 + v98);
        v105 = (v99 + v56);
        v106 = v99 == 0;
        if (v99)
        {
          v107 = v104;
        }

        else
        {
          v107 = 0;
        }

        if (v106)
        {
          v105 = 0;
        }

        if (v87 >= v94)
        {
          v108 = v94;
        }

        else
        {
          v108 = v87;
        }

        if (v108 < 1)
        {
LABEL_62:
          if (v90)
          {
            if (v87 < v94)
            {
              v80 = -1;
            }

            else
            {
              v80 = 1;
            }

            v81 = v60 == v72;
            if (v60 < v72)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v80 = 0;
            if (v108 >= 1 && v107)
            {
              v80 = 0;
              if (v91 >= v96)
              {
                v112 = v96;
              }

              else
              {
                v112 = v91;
              }

              v113 = v112 - 1;
              do
              {
                v115 = *v107++;
                v114 = v115;
                v116 = *v105++;
                v117 = v114 == v116;
                v118 = v114 < v116;
                if (v114 == v116)
                {
                  v119 = v80;
                }

                else
                {
                  v119 = 1;
                }

                if (v118)
                {
                  v80 = -1;
                }

                else
                {
                  v80 = v119;
                }
              }

              while (v117 && v113-- != 0);
            }

            if (v108 >= 1 && v103)
            {
              if (v91 >= v96)
              {
                v121 = v96;
              }

              else
              {
                v121 = v91;
              }

              v122 = v121 - 1;
              do
              {
                v124 = *v103++;
                v123 = v124;
                v125 = *v102++;
                v126 = v123 == v125;
                v127 = v123 < v125;
                if (v123 == v125)
                {
                  v128 = v80;
                }

                else
                {
                  v128 = 1;
                }

                if (v127)
                {
                  v80 = -1;
                }

                else
                {
                  v80 = v128;
                }
              }

              while (v126 && v122-- != 0);
            }

LABEL_104:
            v81 = v60 == v72;
            if (v60 < v72)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
          if (v91 >= v96)
          {
            v56 = v96;
          }

          else
          {
            v56 = v91;
          }

          while (1)
          {
            v109 = *v76++;
            v57 = v109;
            v110 = *v62++;
            v58 = v110;
            v111 = v57 > v110;
            if (v57 < v110)
            {
              v80 = -1;
              goto LABEL_104;
            }

            if (v111)
            {
              break;
            }

            if (!--v56)
            {
              goto LABEL_62;
            }
          }

          v80 = 1;
          v81 = v60 == v72;
          if (v60 < v72)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v80 = -1;
        v81 = v60 == v72;
        if (v60 < v72)
        {
          goto LABEL_8;
        }
      }

      if (!v81 || (v80 & 0x80000000) == 0)
      {
        v147 = *(*(v9 + 8) + 4 * v59);
        v149 = v60;
        v146 = *(*(v9 + 16) + 2 * v59);
        v145 = *(*(v9 + 24) + 8 * v59);
        v130 = v18;
        v131 = v68 >> 32;
        v132 = 4 * (v68 >> 32);
        j__memmove(v151, v64, v132);
        j__memmove(v130, (*(v9 + 80) + ((v64 - *(v9 + 40)) >> 2)), v131);
        j__memmove(v152, v64 + *(v9 + 48) - *(v9 + 40), v132);
        v133 = v132;
        v43 = a1;
        j__memmove(v150, v64 + *(v9 + 56) - *(v9 + 40), v133);
        j__memmove(v41, (*(v9 + 64) + ((v64 - *(v9 + 40)) >> 2)), v131);
        j__memmove(__dst, (*(v9 + 72) + ((v64 - *(v9 + 40)) >> 1)), 2 * v131);
        sub_10004A180(a1, v9, v59, 0);
        if (v80)
        {
          v18 = v142;
          v134 = sub_10004D124(a1, v9, 0, v147, v146, v145, v69, v151, v142, v152, v150, v41, __dst, 0);
          v135 = v134 == v59;
          v136 = v148;
          if (v134 != v59)
          {
            v136 = 1;
          }

          v148 = v136;
          if (v134 == v59)
          {
            ++v59;
          }

          else
          {
            v59 = 0;
          }

          if (v135)
          {
            v61 = v149;
          }

          else
          {
            v61 = 0xFFFFFFFFLL;
          }
        }

        else
        {
          v148 = 1;
          v61 = v149;
          v18 = v142;
        }

        v26 = v152;
        goto LABEL_9;
      }

LABEL_8:
      v61 = *(*(v9 + 8) + 4 * v59++);
      v26 = v152;
LABEL_9:
      sub_100048F34(v43, *(v43 + 6424), v153, v56, v57, v58, v60, v72);
      v60 = v61;
      if (v59 >= v153[0])
      {
        goto LABEL_122;
      }
    }
  }

  v148 = 0;
LABEL_122:
  if (a2)
  {
    *a2 = v148;
  }

  sub_1000CA03C(__dst, v138);
  sub_1000CA03C(v41, v139);
  sub_1000CA03C(v150, v141);
  sub_1000CA03C(v26, v141);
  sub_1000CA03C(v18, v139);
  return sub_1000CA03C(v151, v141);
}

uint64_t sub_10004BFB0(_DWORD *a1, int a2, unsigned int *a3)
{
  v3 = a1 + 204;
  if (a2 == -2)
  {
    a2 = a1[1606];
  }

  if (*v3 == -1)
  {
    return 0;
  }

  if (*v3 != a2)
  {
    v6 = a1[208];
    if (v6 != -1)
    {
      v4 = a1[207];
      if (v6 == a2)
      {
        v5 = 1;
        goto LABEL_63;
      }

      v7 = a1[212];
      if (v7 != -1)
      {
        v4 += a1[211];
        if (v7 == a2)
        {
          v5 = 2;
          goto LABEL_63;
        }

        v8 = a1[216];
        if (v8 != -1)
        {
          v4 += a1[215];
          if (v8 == a2)
          {
            v5 = 3;
            goto LABEL_63;
          }

          v9 = a1[220];
          if (v9 != -1)
          {
            v4 += a1[219];
            if (v9 == a2)
            {
              v5 = 4;
              goto LABEL_63;
            }

            v10 = a1[224];
            if (v10 != -1)
            {
              v4 += a1[223];
              if (v10 == a2)
              {
                v5 = 5;
                goto LABEL_63;
              }

              v11 = a1[228];
              if (v11 != -1)
              {
                v4 += a1[227];
                if (v11 == a2)
                {
                  v5 = 6;
                  goto LABEL_63;
                }

                v12 = a1[232];
                if (v12 != -1)
                {
                  v4 += a1[231];
                  if (v12 == a2)
                  {
                    v5 = 7;
                    goto LABEL_63;
                  }

                  v13 = a1[236];
                  if (v13 != -1)
                  {
                    v4 += a1[235];
                    if (v13 == a2)
                    {
                      v5 = 8;
                      goto LABEL_63;
                    }

                    v14 = a1[240];
                    if (v14 != -1)
                    {
                      v4 += a1[239];
                      if (v14 == a2)
                      {
                        v5 = 9;
                        goto LABEL_63;
                      }

                      v15 = a1[244];
                      if (v15 != -1)
                      {
                        v4 += a1[243];
                        if (v15 == a2)
                        {
                          v5 = 10;
                          goto LABEL_63;
                        }

                        v16 = a1[248];
                        if (v16 != -1)
                        {
                          v4 += a1[247];
                          if (v16 == a2)
                          {
                            v5 = 11;
                            goto LABEL_63;
                          }

                          v17 = a1[252];
                          if (v17 != -1)
                          {
                            v4 += a1[251];
                            if (v17 == a2)
                            {
                              v5 = 12;
                              goto LABEL_63;
                            }

                            v18 = a1[256];
                            if (v18 != -1)
                            {
                              v4 += a1[255];
                              if (v18 == a2)
                              {
                                v5 = 13;
                                goto LABEL_63;
                              }

                              v19 = a1[260];
                              if (v19 != -1)
                              {
                                v4 += a1[259];
                                if (v19 == a2)
                                {
                                  v5 = 14;
                                  goto LABEL_63;
                                }

                                v20 = a1[264];
                                if (v20 != -1)
                                {
                                  v4 += a1[263];
                                  if (v20 == a2)
                                  {
                                    v5 = 15;
                                    goto LABEL_63;
                                  }

                                  v21 = a1[268];
                                  if (v21 != -1)
                                  {
                                    v4 += a1[267];
                                    if (v21 == a2)
                                    {
                                      v5 = 16;
                                      goto LABEL_63;
                                    }

                                    v22 = a1[272];
                                    if (v22 != -1)
                                    {
                                      v4 += a1[271];
                                      if (v22 == a2)
                                      {
                                        v5 = 17;
                                        goto LABEL_63;
                                      }

                                      v23 = a1[276];
                                      if (v23 != -1)
                                      {
                                        v4 += a1[275];
                                        if (v23 == a2)
                                        {
                                          v5 = 18;
                                          goto LABEL_63;
                                        }

                                        v24 = a1[280];
                                        if (v24 != -1 && v24 == a2)
                                        {
                                          v4 += a1[279];
                                          v5 = 19;
                                          goto LABEL_63;
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

    return 0;
  }

  v4 = 0;
  v5 = 0;
LABEL_63:
  if (a3)
  {
    *a3 = v5;
  }

  if (v3[4 * v5 + 3] + v4 <= 40)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void *sub_10004C2B0(uint64_t a1, int a2, int a3, __int128 *a4, int a5)
{
  v8 = a2;
  if (a2 == -2)
  {
    v8 = *(a1 + 6424);
  }

  v10 = (a1 + 816);
  v107 = 0;
  v11 = sub_10004BFB0(a1, v8, &v107);
  if (v11 == 1)
  {
    v65 = v107;
    v66 = &v10[2 * v107];
    v67 = v66[3];
    if (v67 == a3)
    {
      v68 = v66[2];
      result = memcmp((a1 + 4 * v68 + 1136), a4, 4 * a3);
      if (!result)
      {
        return result;
      }

      v106 = a5;
      v70 = v68;
    }

    else
    {
      v106 = a5;
      v68 = v66[2];
      v70 = v68;
    }

    v71 = a1 + 4 * v70;
    j__memmove(v66, v66 + 4, 16 * (19 - v65));
    j__memmove((v71 + 1136), (v71 + 1136 + 4 * v67), 4 * (39 - (v67 + v68)));
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_137;
    }

    v106 = a5;
    v19 = sub_1000C9F54(20, v12, v13, v14, v15, v16, v17, v18);
    v20 = v19;
    v22 = *(a1 + 828) >= 0 && *(a1 + 824) > 40;
    *v19 = v22;
    v24 = *(a1 + 844) >= 0 && *(a1 + 840) > 40;
    v19[1] = v24;
    v26 = *(a1 + 860) >= 0 && *(a1 + 856) > 40;
    v19[2] = v26;
    v28 = *(a1 + 876) >= 0 && *(a1 + 872) > 40;
    v19[3] = v28;
    v30 = *(a1 + 892) >= 0 && *(a1 + 888) > 40;
    v19[4] = v30;
    v32 = *(a1 + 908) >= 0 && *(a1 + 904) > 40;
    v19[5] = v32;
    v34 = *(a1 + 924) >= 0 && *(a1 + 920) > 40;
    v19[6] = v34;
    v36 = *(a1 + 940) >= 0 && *(a1 + 936) > 40;
    v19[7] = v36;
    v38 = *(a1 + 956) >= 0 && *(a1 + 952) > 40;
    v19[8] = v38;
    v40 = *(a1 + 972) >= 0 && *(a1 + 968) > 40;
    v19[9] = v40;
    v42 = *(a1 + 988) >= 0 && *(a1 + 984) > 40;
    v19[10] = v42;
    v44 = *(a1 + 1004) >= 0 && *(a1 + 1000) > 40;
    v19[11] = v44;
    v46 = *(a1 + 1020) >= 0 && *(a1 + 1016) > 40;
    v19[12] = v46;
    v48 = *(a1 + 1036) >= 0 && *(a1 + 1032) > 40;
    v19[13] = v48;
    v50 = *(a1 + 1052) >= 0 && *(a1 + 1048) > 40;
    v19[14] = v50;
    v52 = *(a1 + 1068) >= 0 && *(a1 + 1064) > 40;
    v19[15] = v52;
    v54 = *(a1 + 1084) >= 0 && *(a1 + 1080) > 40;
    v19[16] = v54;
    v56 = *(a1 + 1100) >= 0 && *(a1 + 1096) > 40;
    v19[17] = v56;
    v58 = *(a1 + 1116) >= 0 && *(a1 + 1112) > 40;
    v19[18] = v58;
    v60 = *(a1 + 1132) >= 0 && *(a1 + 1128) > 40;
    v19[19] = v60;
    v61 = (a1 + 1120);
    for (i = 19; i != -1; --i)
    {
      if (*(v20 + i))
      {
        v63 = v61[3];
        v64 = v61[2];
        *(v61 + 1) = 0xFFFFFFFFLL;
        *v61 = -1;
        if (v63 >= 1)
        {
          memset((a1 + 1136 + 4 * v64), 255, 4 * v63);
        }
      }

      v61 -= 4;
    }

    sub_1000CA03C(v20, 20);
  }

  a5 = v106;
LABEL_137:
  result = j__memmove((a1 + 832), (a1 + 816), 0x130uLL);
  if (a3 <= 39)
  {
    result = j__memmove((a1 + 1136 + 4 * a3), (a1 + 1136), 160 - 4 * a3);
  }

  *v10 = 0;
  *(a1 + 824) = 0;
  v72 = *(a1 + 840);
  if ((v72 & 0x80000000) == 0)
  {
    *(a1 + 840) = v72 + a3;
  }

  v73 = *(a1 + 856);
  if ((v73 & 0x80000000) == 0)
  {
    *(a1 + 856) = v73 + a3;
  }

  v74 = *(a1 + 872);
  if ((v74 & 0x80000000) == 0)
  {
    *(a1 + 872) = v74 + a3;
  }

  v75 = *(a1 + 888);
  if ((v75 & 0x80000000) == 0)
  {
    *(a1 + 888) = v75 + a3;
  }

  v76 = *(a1 + 904);
  if ((v76 & 0x80000000) == 0)
  {
    *(a1 + 904) = v76 + a3;
  }

  v77 = *(a1 + 920);
  if ((v77 & 0x80000000) == 0)
  {
    *(a1 + 920) = v77 + a3;
  }

  v78 = *(a1 + 936);
  if ((v78 & 0x80000000) == 0)
  {
    *(a1 + 936) = v78 + a3;
  }

  v79 = *(a1 + 952);
  if ((v79 & 0x80000000) == 0)
  {
    *(a1 + 952) = v79 + a3;
  }

  v80 = *(a1 + 968);
  if ((v80 & 0x80000000) == 0)
  {
    *(a1 + 968) = v80 + a3;
  }

  v81 = *(a1 + 984);
  if ((v81 & 0x80000000) == 0)
  {
    *(a1 + 984) = v81 + a3;
  }

  v82 = *(a1 + 1000);
  if ((v82 & 0x80000000) == 0)
  {
    *(a1 + 1000) = v82 + a3;
  }

  v83 = *(a1 + 1016);
  if ((v83 & 0x80000000) == 0)
  {
    *(a1 + 1016) = v83 + a3;
  }

  v84 = *(a1 + 1032);
  if ((v84 & 0x80000000) == 0)
  {
    *(a1 + 1032) = v84 + a3;
  }

  v85 = *(a1 + 1048);
  if ((v85 & 0x80000000) == 0)
  {
    *(a1 + 1048) = v85 + a3;
  }

  v86 = *(a1 + 1064);
  if ((v86 & 0x80000000) == 0)
  {
    *(a1 + 1064) = v86 + a3;
  }

  v87 = *(a1 + 1080);
  if ((v87 & 0x80000000) == 0)
  {
    *(a1 + 1080) = v87 + a3;
  }

  v88 = *(a1 + 1096);
  if ((v88 & 0x80000000) == 0)
  {
    *(a1 + 1096) = v88 + a3;
  }

  v89 = *(a1 + 1112);
  if ((v89 & 0x80000000) == 0)
  {
    *(a1 + 1112) = v89 + a3;
  }

  v90 = *(a1 + 1128);
  if ((v90 & 0x80000000) == 0)
  {
    *(a1 + 1128) = v90 + a3;
  }

  *(a1 + 824) = 0;
  *(a1 + 816) = v8;
  *(a1 + 828) = a3;
  *(a1 + 820) = a5;
  if (*(a1 + 104))
  {
    v91 = 800;
    if (*(a1 + 5512) == *(a1 + 112))
    {
      v91 = 808;
    }

    v92 = *(a1 + v91);
    v93 = (a3 - 1);
    if (a3 < 1)
    {
      goto LABEL_195;
    }

LABEL_183:
    if (v93 >= 0x27)
    {
      v94 = 39;
    }

    else
    {
      v94 = v93;
    }

    if (v93 > 6 && (a1 - a4 + 1136) >= 0x20)
    {
      v101 = (v94 + 1);
      v95 = (v94 + 1) & 0x78;
      v102 = a4 + 1;
      v103 = (a1 + 1152);
      v104 = v95;
      do
      {
        v105 = *v102;
        *(v103 - 1) = *(v102 - 1);
        *v103 = v105;
        v102 += 2;
        v103 += 2;
        v104 -= 8;
      }

      while (v104);
      if (v95 == v101)
      {
LABEL_193:
        v100 = 0;
        do
        {
          *(*(v92 + 120) + 4 * v100) = *(a4 + v100);
          ++v100;
        }

        while (a3 != v100);
        goto LABEL_195;
      }
    }

    else
    {
      v95 = 0;
    }

    v96 = (4 * v95 + a1 + 1136);
    v97 = a4 + v95;
    if (v93 >= 0x27)
    {
      v93 = 39;
    }

    v98 = v93 - v95 + 1;
    do
    {
      v99 = *v97++;
      *v96++ = v99;
      --v98;
    }

    while (v98);
    goto LABEL_193;
  }

  v92 = *(a1 + 808);
  v93 = (a3 - 1);
  if (a3 >= 1)
  {
    goto LABEL_183;
  }

LABEL_195:
  *(v92 + 128) = a3;
  return result;
}

uint64_t sub_10004C894(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 1296);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = 0;
  while (*(*(a1 + 1304) + 4 * v4) != a2)
  {
    if (v3 == ++v4)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v4;
  }

  return 1;
}

unint64_t sub_10004C8D8(unint64_t result, unsigned int a2)
{
  v3 = result;
  v4 = *(result + 800);
  if (v4)
  {
    v5 = *(v4 + 4);
    if (v5 >= 1)
    {
      do
      {
        v21 = v5;
        v22 = *(v4 + 40);
        if (--v5)
        {
          v23 = &v22[*(v4 + 32)];
          v24 = v5;
          do
          {
            v25 = v22;
            while (1)
            {
              v26 = *v25++;
              if (v26 == -1)
              {
                break;
              }

              v22 = v25;
              if (v25 >= v23)
              {
                v22 = 0;
                goto LABEL_24;
              }
            }

            ++v22;
            --v24;
          }

          while (v24);
        }

LABEL_24:
        v27 = 0;
        v28 = -1;
        v29 = v22;
        do
        {
          v30 = v27;
          v31 = *v29++;
          ++v28;
          ++v27;
        }

        while (v31 != -1);
        if (v28 >= 1)
        {
          v32 = v30;
          while (1)
          {
            v33 = *v22++;
            result = sub_1000BA980(*(v3 + 8), v33, a2);
            if (result == 1)
            {
              break;
            }

            if (!--v32)
            {
              goto LABEL_16;
            }
          }

          result = sub_10004A180(v3, v4, v5, 0);
        }

LABEL_16:
        ;
      }

      while (v21 > 1);
    }
  }

  v6 = *(v3 + 808);
  if (v6)
  {
    v7 = *(v6 + 4);
    if (v7 >= 1)
    {
      do
      {
        v34 = v7;
        v35 = *(v6 + 40);
        if (--v7)
        {
          v36 = &v35[*(v6 + 32)];
          v37 = v7;
          do
          {
            v38 = v35;
            while (1)
            {
              v39 = *v38++;
              if (v39 == -1)
              {
                break;
              }

              v35 = v38;
              if (v38 >= v36)
              {
                v35 = 0;
                goto LABEL_40;
              }
            }

            ++v35;
            --v37;
          }

          while (v37);
        }

LABEL_40:
        v40 = 0;
        v41 = -1;
        v42 = v35;
        do
        {
          v43 = v40;
          v44 = *v42++;
          ++v41;
          ++v40;
        }

        while (v44 != -1);
        if (v41 >= 1)
        {
          v45 = v43;
          while (1)
          {
            v46 = *v35++;
            result = sub_1000BA980(*(v3 + 8), v46, a2);
            if (result == 1)
            {
              break;
            }

            if (!--v45)
            {
              goto LABEL_32;
            }
          }

          result = sub_10004A180(v3, v6, v7, 0);
        }

LABEL_32:
        ;
      }

      while (v34 > 1);
    }
  }

  v8 = *(v3 + 1296);
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (*(*(v3 + 1304) + 4 * i) != -1)
      {
        v10 = (*(v3 + 1312) + (i << 7));
        if (*v10 >= 1)
        {
          v11 = 0;
          v12 = v10 + 22;
          v50 = i;
          v13 = v10 + 2;
          do
          {
            result = sub_1000BA980(*(v3 + 8), v12[v11], a2);
            v14 = *v10;
            if (result)
            {
              v15 = v3;
              v16 = v11 + 1;
              v17 = v16;
              v18 = 4 * (v14 - v16);
              j__memmove(&v12[v11], &v12[v16], v18);
              v19 = v11;
              j__memmove(&v10[v19 + 12], &v10[v17 + 12], v18);
              v20 = &v13[v19];
              v3 = v15;
              result = j__memmove(v20, &v13[v17], v18);
              v14 = *v10 - 1;
              *v10 = v14;
              --v11;
            }

            ++v11;
          }

          while (v11 < v14);
          v8 = *(v3 + 1296);
          i = v50;
        }
      }
    }
  }

  v47 = *(v3 + 5496);
  if (v47 >= 1)
  {
    v48 = 0;
    v49 = *(v3 + 5488) + 32;
    do
    {
      if (*(v49 - 32))
      {
        sub_1000A1774(*(v49 - 16));
        *(v49 - 16) = 0;
        sub_1000CF5EC(*(v49 - 24));
        *(v49 - 24) = 0;
        sub_1000B1BAC(*(v49 - 8));
        *(v49 - 8) = 0;
        sub_1000BFEC4(*(v49 + 8));
        *(v49 + 8) = 0;
        result = sub_1000BFEC4(*(v49 + 24));
        *(v49 + 24) = 0;
        *v49 = 0xFFFFFFFFLL;
        *(v49 + 16) = 0;
        *(v49 - 32) = &_mh_execute_header;
        v47 = *(v3 + 5496);
      }

      ++v48;
      v49 += 64;
    }

    while (v48 < v47);
  }

  return result;
}