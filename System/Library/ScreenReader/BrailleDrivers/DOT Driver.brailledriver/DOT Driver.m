id sub_1AA0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 160);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1B1C;
  v3[3] = &unk_81E0;
  v3[4] = *(a1 + 40);
  return [v1 ax_removeObjectsFromArrayUsingBlock:v3];
}

double *sub_1BE8(uint64_t a1)
{
  if ([*(a1 + 32) type] == &dword_0 + 2)
  {
    [*(*(a1 + 40) + 160) insertObject:*(a1 + 32) atIndex:0];
  }

  else if ([*(a1 + 32) type] == &dword_0 + 1)
  {
    v2 = [*(*(a1 + 40) + 144) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "canvasRow")}];
    v3 = [v2 data];
    v4 = [*(a1 + 32) data];
    v5 = [v3 isEqualToData:v4];

    if ((v5 & 1) == 0)
    {
      [*(*(a1 + 40) + 160) addObject:*(a1 + 32)];
    }
  }

  if ([*(*(a1 + 40) + 160) count] == &dword_0 + 1)
  {
    result = *(a1 + 40);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    result = *(a1 + 40);
    if (Current - result[21] <= 1.0)
    {
      return result;
    }
  }

  return [result _dequeueData];
}

void sub_1D84(uint64_t a1)
{
  if ([*(*(a1 + 32) + 160) count])
  {
    v2 = *(a1 + 32);
    if (!*(v2 + 152) || (Current = CFAbsoluteTimeGetCurrent(), v2 = *(a1 + 32), Current - *(v2 + 168) > 1.0))
    {
      v6 = [*(v2 + 160) objectAtIndexedSubscript:0];
      objc_storeStrong((*(a1 + 32) + 152), v6);
      *(*(a1 + 32) + 168) = CFAbsoluteTimeGetCurrent();
      if ([v6 type] == &dword_0 + 1)
      {
        [*(*(a1 + 32) + 144) setObject:v6 atIndexedSubscript:{objc_msgSend(v6, "canvasRow")}];
      }

      v4 = *(*(a1 + 32) + 64);
      v5 = [v6 data];
      [v4 writeValue:v5 forCharacteristic:*(*(a1 + 32) + 72) type:0];

      [*(*(a1 + 32) + 160) removeObjectAtIndex:0];
    }
  }
}

id sub_27F8(uint64_t a1)
{
  byte_D388 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2888;
  block[3] = &unk_8258;
  block[4] = v2;
  dispatch_async(v3, block);
  return [*(a1 + 32) _dequeueData];
}

void sub_2888(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 152);
  *(v1 + 152) = 0;
}