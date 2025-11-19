@interface UIActiveViewServiceSessionComparator
@end

@implementation UIActiveViewServiceSessionComparator

uint64_t _UIActiveViewServiceSessionComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = v4[5] == 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 1;
    if (v5)
    {
LABEL_3:
      v7 = v5[5] == 0;
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_24:
      v8 = 0;
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }
  }

  v7 = 1;
  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_4:
  v8 = *(v4 + 5);
  if (v5)
  {
LABEL_5:
    v9 = *(v5 + 5);
    goto LABEL_6;
  }

LABEL_25:
  v9 = 0;
LABEL_6:
  if (v8 == 3)
  {
    v6 = 1;
  }

  if (!v8)
  {
    v6 = 1;
  }

  v10 = 1;
  if (v9 && v9 != 3)
  {
    v10 = v7;
  }

  if (v10 == v6)
  {
    if (v5)
    {
      v11 = v5[6];
      if (v4)
      {
LABEL_16:
        v12 = v4[6];
LABEL_17:
        v6 = v11 > v12;
        goto LABEL_18;
      }
    }

    else
    {
      v11 = 0;
      if (v4)
      {
        goto LABEL_16;
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

LABEL_18:
  if (v6)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end