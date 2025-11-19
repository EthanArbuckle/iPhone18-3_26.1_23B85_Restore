void sub_100019290(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_19;
  }

  v7 = v5;
  v8 = v7;
  v9 = *(a1 + 128);
  if (v9 == @"Dirty")
  {
    v11 = &stru_100029F20;
LABEL_17:
    v13 = [v8 keysSortedByValueUsingComparator:v11];
    goto LABEL_18;
  }

  if (v9 == @"Category")
  {
    v12 = [v7 allKeys];
    v13 = [v12 sortedArrayUsingSelector:"compare:"];

LABEL_18:
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001AB94;
    v16[3] = &unk_100029EE0;
    v17 = v8;
    v18 = a1;
    v19 = v6;
    [v13 fp_enumerateObjectsWithBatchSize:32 usingBlock:v16];

LABEL_19:
    return;
  }

  if (v9 == @"Swapped")
  {
    v10 = &selRef_totalSwappedSize;
    goto LABEL_16;
  }

  if (v9 == @"Clean")
  {
    v10 = &selRef_totalCleanSize;
    goto LABEL_16;
  }

  if (v9 == @"Reclaimable")
  {
    v10 = &selRef_totalReclaimableSize;
    goto LABEL_16;
  }

  if (v9 == @"Wired")
  {
    v10 = &selRef_totalWiredSize;
    goto LABEL_16;
  }

  if (v9 == @"Regions")
  {
    v10 = &selRef_totalRegions;
LABEL_16:
    v14 = *v10;
    v15 = [FPMemoryCategory instanceMethodForSelector:*v10];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001B4F0;
    v20[3] = &unk_100029F40;
    v20[4] = v15;
    v20[5] = v14;
    v11 = v20;
    goto LABEL_17;
  }

  _os_crash();
  __break(1u);
}

uint64_t sub_1000194D4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a1)
  {
    v11 = a1[15];
    if (a1[14] == 1)
    {
      v12 = 7;
    }

    else
    {
      v12 = 11;
    }

    v34 = v5;
    sub_1000182F4(a1, v5, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v6, v7, v8, v9, v12);
    if (a1[14] == 1)
    {
      v13 = 7;
    }

    else
    {
      v13 = 11;
    }

    v33 = v13;
    v14 = sub_100018EC4(a1, *(a2 + 8) + *a2);
    [v14 UTF8String];
    v15 = a1[15];
    if ((v15 & 2) != 0)
    {
      a1[14];
      v31 = sub_100018EC4(a1, *(a2 + 8));
      [v31 UTF8String];
    }

    a1[14];
    v16 = sub_100018EC4(a1, *(a2 + 16));
    [v16 UTF8String];
    a1[14];
    v17 = sub_100018EC4(a1, *(a2 + 24));
    [v17 UTF8String];
    if (a1[15])
    {
      v32 = v14;
      v22 = v15;
      v15 = a1[14];
      v23 = sub_100018EC4(a1, *(a2 + 32));
      [v23 UTF8String];
      v30 = *(a2 + 40);
      LOBYTE(v15) = v22;
      v14 = v32;
      sub_1000182F4(a1, v34, 1, "%*s%*s%*s%*s%*s %10d    %s%*s\n", v24, v25, v26, v27, v33);
    }

    else
    {
      v29 = *(a2 + 40);
      sub_1000182F4(a1, v34, 1, "%*s%*s%*s%*s%*s %10d    %s%*s\n", v18, v19, v20, v21, v33);
    }

    if ((v15 & 2) != 0)
    {
    }

    v10 = v34;
  }

  return _objc_release_x1(v5, v10);
}

void sub_100019D50(uint64_t a1, char *__format, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v18 = &a9;
    if (!*(a1 + 64))
    {
      vfprintf(*(a1 + 136), __format, v18);
      return;
    }

    v11 = v17;
    v12 = vsnprintf(v17, 0xC8uLL, __format, v18);
    if ((v12 & 0x80000000) == 0)
    {
      if (v12 < 0xC9)
      {
LABEL_8:
        v16 = [[NSString alloc] initWithCString:v11 encoding:4];
LABEL_11:
        sub_10001B560(a1, 0, 2, v16);

        return;
      }

      v13 = 200;
      while (1)
      {
        v14 = v13 + 200;
        v11 = &v18 - ((v13 + 215) & 0xFFFFFFFFFFFFFFF0);
        v15 = vsnprintf(v11, v13 + 200, __format, v18);
        if ((v15 & 0x80000000) != 0)
        {
          break;
        }

        v13 = v14;
        if (v14 >= v15)
        {
          goto LABEL_8;
        }
      }
    }

    v16 = 0;
    goto LABEL_11;
  }
}

void sub_10001A8FC(void *a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = [v7 allKeys];
  v10 = [v9 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

  v11 = v7;
  obj = v10;
  v44 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v44)
  {
    v12 = *v46;
    v42 = a3;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v19 = [v11 objectForKeyedSubscript:v14];
        for (j = a3; j; --j)
        {
          sub_1000182F4(a1, v8, 1, "    ", v15, v16, v17, v18, v41);
        }

        if ([v19 fp_isContainer])
        {
          v21 = [v14 UTF8String];
          sub_1000182F4(a1, v8, 1, "%s:\n", v22, v23, v24, v25, v21);
          sub_10001A8FC(a1, v19, (a3 + 1), v8);
        }

        else
        {
          v26 = v12;
          v27 = v11;
          v28 = v19;
          if ([v28 supportsFormattedValue])
          {
            v29 = [v14 UTF8String];
            [v28 formattedValue];
            sub_1000182F4(a1, v8, 1, "%s: %s\n", v30, v31, v32, v33, v29);
          }

          else
          {
            v34 = [v28 value];
            v35 = [v14 UTF8String];
            v36 = sub_100018EC4(a1, v34);
            [v36 UTF8String];
            sub_1000182F4(a1, v8, 1, "%s: %s\n", v37, v38, v39, v40, v35);
          }

          v11 = v27;
          v12 = v26;
          a3 = v42;
        }
      }

      v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v44);
  }
}

void sub_10001AB94(uint64_t a1, id *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v6 = *a2;
      v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
      v8 = v7;
      v9 = *(a1 + 40);
      if ((*(v9 + 56) & 1) != 0 || !v7)
      {
        goto LABEL_7;
      }

      if (([*(v7 + 24) verbose] & 1) == 0)
      {
        break;
      }

LABEL_23:

      ++a2;
      if (!--v3)
      {
        return;
      }
    }

    v9 = *(a1 + 40);
LABEL_7:
    v10 = sub_10001BC4C(v8);
    v11 = sub_100018968(v9, v10);

    v33 = v11;
    v32 = [v11 UTF8String];
    v34 = sub_10001BBF0(v8);
    if (!v34)
    {
      v34 = v6;
    }

    v12 = *(a1 + 40);
    if (v12[14] == 1)
    {
      v13 = 7;
    }

    else
    {
      v13 = 11;
    }

    v28 = v13;
    v29 = *(a1 + 48);
    v14 = sub_100018EC4(v12, [v8 totalDirtySize] + objc_msgSend(v8, "totalSwappedSize"));
    [v14 UTF8String];
    v15 = *(a1 + 40);
    v31 = v6;
    v30 = v12;
    v27 = v15[15];
    if ((v27 & 2) != 0)
    {
      v15[14];
      v26 = sub_100018EC4(v15, [v8 totalSwappedSize]);
      [v26 UTF8String];
      v15 = *(a1 + 40);
    }

    v15[14];
    v16 = sub_100018EC4(v15, [v8 totalCleanSize]);
    [v16 UTF8String];
    v17 = *(a1 + 40);
    v17[14];
    v18 = sub_100018EC4(v17, [v8 totalReclaimableSize]);
    [v18 UTF8String];
    v19 = *(a1 + 40);
    v20 = v19[15];
    if (v20)
    {
      v19[14];
      v25 = sub_100018EC4(v19, [v8 totalWiredSize]);
      [v25 UTF8String];
    }

    [v8 totalRegions];
    [v34 UTF8String];
    if (v32)
    {
      [v33 length];
    }

    sub_1000182F4(v30, v29, 1, "%*s%*s%*s%*s%*s %10d    %s%*s\n", v21, v22, v23, v24, v28);
    if (v20)
    {
    }

    if ((v27 & 2) != 0)
    {
    }

    v6 = v31;
    goto LABEL_23;
  }
}

int64_t sub_10001B3BC(id a1, FPMemoryCategory *a2, FPMemoryCategory *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(FPMemoryCategory *)v4 totalDirtySize];
  v7 = &v6[[(FPMemoryCategory *)v4 totalSwappedSize]];
  v8 = [(FPMemoryCategory *)v5 totalDirtySize];
  if (v7 > &v8[[(FPMemoryCategory *)v5 totalSwappedSize]])
  {
    goto LABEL_2;
  }

  v10 = [(FPMemoryCategory *)v4 totalDirtySize];
  v11 = &v10[[(FPMemoryCategory *)v4 totalSwappedSize]];
  v12 = [(FPMemoryCategory *)v5 totalDirtySize];
  if (v11 < &v12[[(FPMemoryCategory *)v5 totalSwappedSize]])
  {
LABEL_4:
    v9 = 1;
    goto LABEL_5;
  }

  v14 = [(FPMemoryCategory *)v4 totalReclaimableSize];
  if (v14 <= [(FPMemoryCategory *)v5 totalReclaimableSize])
  {
    v15 = [(FPMemoryCategory *)v4 totalReclaimableSize];
    if (v15 >= [(FPMemoryCategory *)v5 totalReclaimableSize])
    {
      v16 = [(FPMemoryCategory *)v4 totalCleanSize];
      if (v16 <= [(FPMemoryCategory *)v5 totalCleanSize])
      {
        v17 = [(FPMemoryCategory *)v4 totalCleanSize];
        v9 = v17 < [(FPMemoryCategory *)v5 totalCleanSize];
        goto LABEL_5;
      }

      goto LABEL_2;
    }

    goto LABEL_4;
  }

LABEL_2:
  v9 = -1;
LABEL_5:

  return v9;
}

uint64_t sub_10001B4F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v8 = v6(a2, v5);
  v9 = (*(a1 + 32))(v7, *(a1 + 40));

  if (v8 > v9)
  {
    return -1;
  }

  else
  {
    return v8 < v9;
  }
}

void sub_10001B560(void *a1, void *a2, int a3, void *a4)
{
  v25 = a2;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (a3 == 2)
  {
    v15 = a1[13];
LABEL_11:
    [v15 appendString:v7];
    goto LABEL_16;
  }

  if (a3 != 1)
  {
    v15 = a1[12];
    goto LABEL_11;
  }

  v8 = a1[11];
  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 pid]);
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableArray);
    v11 = a1[11];
    v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 pid]);
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v13 = [v10 lastObject];
  v14 = v13;
  if (v13 && ![v13 hasSuffix:@"\n"])
  {
    v16 = [v14 stringByAppendingString:v7];
    [v10 setObject:v16 atIndexedSubscript:{objc_msgSend(v10, "count") - 1}];
  }

  else
  {
    [v10 addObject:v7];
  }

  v17 = [v7 length];
  v18 = a1[9];
  v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 pid]);
  v20 = [v18 objectForKeyedSubscript:v19];
  v21 = [v20 integerValue];

  if (v17 > v21)
  {
    v22 = [NSNumber numberWithUnsignedInteger:v17];
    v23 = a1[9];
    v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 pid]);
    [v23 setObject:v22 forKeyedSubscript:v24];
  }

LABEL_16:
}

void *sub_10001B844()
{
  if (qword_100038668 != -1)
  {
    dispatch_once(&qword_100038668, &stru_100029FD8);
  }

  v0 = 0;
  if ((qword_1000344F0 & 0x8000000000000000) == 0 && (qword_100038648 & 0x8000000000000000) == 0)
  {
    v0 = malloc_type_malloc(88 * qword_1000344F0, 0x1000040931E79F6uLL);
    v2 = qword_1000344F0;
    if ((ledger() & 0x80000000) != 0 || v2 < qword_1000344F0)
    {
      free(v0);
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10001B918(unsigned int a1, uint64_t a2)
{
  if (qword_100038668 != -1)
  {
    dispatch_once(&qword_100038668, &stru_100029FD8);
  }

  if (qword_1000344F0 < 0)
  {
    return -1;
  }

  if (a1 >= 5)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v4 = qword_100038640[a1];
  if ((v4 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  if (v4 >= qword_1000344F0)
  {
LABEL_12:
    _os_assert_log();
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = a2 + 88 * v4;
  if (LOBYTE((&off_100029F60)[3 * a1 + 2]))
  {
    v5 += 48;
  }

  return *v5;
}

void sub_10001B9E8(id a1)
{
  v1 = 0;
  v2 = 40;
  do
  {
    v3 = 2 * v2;
    v9 = 2 * v2;
    v1 = malloc_type_realloc(v1, 192 * v2, 0x1000040565EDBD2uLL);
    if ((ledger() & 0x80000000) != 0)
    {
      free(v1);
      perror("Unable to retrieve ledger template info");
      return;
    }

    v2 = v3;
  }

  while (v3 == v9);
  qword_1000344F0 = v9;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *qword_100038640 = v4;
  *algn_100038650 = v4;
  qword_100038660 = -1;
  if (v9 >= 1)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = 0;
      v8 = &off_100029F60;
      do
      {
        if (!strcmp(*v8, v1 + 96 * v5))
        {
          qword_100038640[v7] = v5;
          ++v6;
        }

        ++v7;
        v8 += 3;
      }

      while (v7 != 5);
      ++v5;
      if (v6 == 5)
      {
        break;
      }

      if (v5 == v9)
      {
        goto LABEL_14;
      }
    }

    qword_1000344F0 = v5;
  }

LABEL_14:
  free(v1);
}

double sub_10001BB90(void *a1, char a2)
{
  if (a1)
  {
    v5.receiver = a1;
    v5.super_class = FPMemoryCategory;
    v3 = objc_msgSendSuper2(&v5, "init");
    if (v3)
    {
      v3[8] = a2;
      result = 0.0;
      *(v3 + 2) = 0u;
      *(v3 + 3) = 0u;
      *(v3 + 8) = 0;
    }
  }

  return result;
}

id *sub_10001BBF0(id *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [a1[3] name];
      v5 = v2[2];
      v2[2] = v4;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

id sub_10001BC4C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      a1 = 0;

      return a1;
    }

    a1 = [*(a1 + 24) detailedName];
  }

  return a1;
}

id sub_10001BC9C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) == 1)
    {
      sub_10001BBF0(a1);
    }

    else
    {
      [*(a1 + 24) fullName];
    }
    a1 = ;
    v1 = vars8;
  }

  return a1;
}

id *sub_10001BCE8(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[3] auxData];
    v3 = v2;
    if (*(v1 + 8) == 1)
    {
      v1 = v2;
    }

    else
    {
      v1 = [v1[3] detailedAuxData];
      if (v3)
      {
        v4 = [v3 fp_mergeWithData:v1 forceAggregate:1];

        v1 = v4;
      }
    }
  }

  return v1;
}

id sub_10001BD88(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 24) auxDataName];
    v3 = v2;
    if (*(a1 + 8) == 1)
    {
      v4 = v2;
    }

    else
    {
      v5 = [*(a1 + 24) detailedAuxDataName];
      if ([v5 length])
      {
        v6 = [[NSString alloc] initWithFormat:@"%@ %@", v3, v5];
      }

      else
      {
        v6 = v3;
      }

      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10001BE48(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v7 = v4;
    if (!*(a1 + 24))
    {
      objc_storeStrong((a1 + 24), a2);
      v5 = v7;
    }

    *(a1 + 32) += [v5 dirtySize];
    *(a1 + 40) += [v7 swappedSize];
    *(a1 + 48) += [v7 cleanSize];
    *(a1 + 56) += [v7 reclaimableSize];
    *(a1 + 64) += [v7 wiredSize];
    v4 = [v7 totalRegions];
    v5 = v7;
    *(a1 + 12) += v4;
  }

  return _objc_release_x1(v4, v5);
}