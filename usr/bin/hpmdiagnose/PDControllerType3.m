@interface PDControllerType3
- (PDControllerType3)initWithAddress:(unsigned __int8)a3 userClient:(id)a4;
- (int)executeIECSCommand:(unsigned int)a3;
- (int)getVDM:(unsigned int *)a3 ofLength:(unint64_t *)a4;
- (int)isPDControllerType3HPM:(BOOL *)a3;
- (int)readIECSRegister:(void *)a3 ofLength:(unint64_t)a4 atRegister:(unsigned int)a5 andOutReadLength:(unint64_t *)a6;
- (int)sendVDM:(unsigned int *)a3 ofLength:(unint64_t)a4;
- (int)writeIECSRegister:(void *)a3 ofLength:(unint64_t)a4 atRegister:(unsigned int)a5;
- (void)dealloc;
@end

@implementation PDControllerType3

- (PDControllerType3)initWithAddress:(unsigned __int8)a3 userClient:(id)a4
{
  v5 = a4;
  v10.receiver = self;
  v10.super_class = PDControllerType3;
  v6 = [(PDControllerType3 *)&v10 init];
  v7 = v6;
  if (!v6 || ([(PDControllerType3 *)v6 setUserClient:v5], [(PDControllerType3 *)v7 userClient], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {

    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PDControllerType3;
  [(PDControllerType3 *)&v2 dealloc];
}

- (int)sendVDM:(unsigned int *)a3 ofLength:(unint64_t)a4
{
  v12 = 0;
  v11 = 0;
  v14 = 0;
  v13 = 0;
  if (a4 >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = a4;
  }

  v10 = v5;
  __memcpy_chk();
  v6 = [(PDControllerType3 *)self userClient];
  v7 = [v6 iecsWriteCommandForDevice:-[PDControllerType3 address](self withAddress:"address") buffer:9 length:&v10 flags:{(4 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1, 0}];

  if (!v7)
  {
    v8 = [(PDControllerType3 *)self userClient];
    v7 = [v8 iecsCommand:1447316851 forDevice:-[PDControllerType3 address](self flags:{"address"), 0}];
  }

  return v7;
}

- (int)getVDM:(unsigned int *)a3 ofLength:(unint64_t *)a4
{
  v12 = 65;
  if (*a4 >= 8)
  {
    *a4 = 7;
  }

  v7 = [(PDControllerType3 *)self userClient];
  v8 = [v7 iecsReadCommandForDevice:-[PDControllerType3 address](self withAddress:"address") buffer:79 length:&v13 flags:4 * *a4 andOutReadLength:{0, &v12}];

  if (!v8)
  {
    v9 = v13 >> 5;
    if (v9 == [(PDControllerType3 *)self cached_sequence_num])
    {
      bzero(a3, 4 * *a4);
      *a4 = 0;
    }

    else
    {
      [(PDControllerType3 *)self setCached_sequence_num:v9];
      v10 = v13 & 7;
      *a4 = v10;
      memcpy(a3, &v14, 4 * v10);
    }
  }

  return v8;
}

- (int)readIECSRegister:(void *)a3 ofLength:(unint64_t)a4 atRegister:(unsigned int)a5 andOutReadLength:(unint64_t *)a6
{
  v28 = 0;
  if (a4 >= 0x40)
  {
    v11 = 64;
  }

  else
  {
    v11 = a4;
  }

LABEL_4:
  v29 = 95158787;
  v30[0] = v11 | (([(PDControllerType3 *)self burstLimit]& 0xF) << 16) | 0x1000000;
  v30[1] = a5;
  v12 = [(PDControllerType3 *)self sendVDM:&v29 ofLength:3];
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    while (1)
    {
      do
      {
        v28 = 7;
        v13 = [(PDControllerType3 *)self getVDM:&v29 ofLength:&v28];
        v14 = v13;
      }

      while (!v13 && !v28);
      if (v13)
      {
        break;
      }

      if (v29 >> 15 == 2904)
      {
        v15 = (v29 >> 4) & 3;
        if (v15 == 2)
        {
          v14 = -536870212;
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_4;
          }

          v14 = 0;
        }

        break;
      }
    }
  }

  v16 = a4 != 0;
  if (!v14 && a4)
  {
    v27 = a6;
    v17 = 0;
    while (2)
    {
      if ((v11 - v17) <= 0x18uLL)
      {
        v18 = (((v11 - v17) & 0x1F) << 6) | 0x5AC0001;
      }

      else
      {
        v18 = 95159809;
      }

      while (1)
      {
        v29 = v18;
        [(PDControllerType3 *)self sendVDM:&v29 ofLength:1];
        do
        {
          v28 = 7;
          v19 = [(PDControllerType3 *)self getVDM:&v29 ofLength:&v28];
          v14 = v19;
        }

        while (!v19 && !v28);
        if (v19 || v29 >> 15 != 2904)
        {
          break;
        }

        v20 = (v29 >> 4) & 3;
        if (v20 > 1)
        {
          if (v20 != 3)
          {
            v14 = 0;
            if (v16)
            {
              goto LABEL_34;
            }

            return v14;
          }
        }

        else if (v20)
        {
          v21 = (v29 >> 6) & 0x1F;
          memcpy(a3 + v17, v30, v21);
          v17 += v21;
          *v27 = v17;
          break;
        }

        v16 = v11 > v17;
        if (v11 <= v17)
        {
          v14 = 0;
          v16 = v11 > v17;
          goto LABEL_33;
        }
      }

      v16 = v17 < v11;
      if (!v14 && v17 < v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:
  if (v16)
  {
LABEL_34:
    if (!v14)
    {
LABEL_35:
      v22 = v14;
      v29 = 95158276;
      v23 = [(PDControllerType3 *)self sendVDM:&v29 ofLength:1];
      if (v23)
      {
        return v23;
      }

      else
      {
        while (1)
        {
          do
          {
            v28 = 7;
            v24 = [(PDControllerType3 *)self getVDM:&v29 ofLength:&v28];
            v14 = v24;
          }

          while (!v24 && !v28);
          if (v24)
          {
            break;
          }

          if (v29 >> 15 == 2904)
          {
            v14 = 0;
            v25 = (v29 >> 4) & 3;
            if (v25 > 1)
            {
              if (v25 == 3)
              {
                goto LABEL_35;
              }

              return -536870212;
            }

            else
            {
              if (!v25)
              {
                goto LABEL_35;
              }

              return v22;
            }
          }
        }
      }
    }
  }

  return v14;
}

- (int)writeIECSRegister:(void *)a3 ofLength:(unint64_t)a4 atRegister:(unsigned int)a5
{
  v23 = 0;
  if (a4 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = a4;
  }

LABEL_4:
  v24[0] = 95158787;
  v24[1] = v8 | (([(PDControllerType3 *)self burstLimit:a3]& 0xF) << 16) | 0x1800000;
  v24[2] = a5;
  v9 = [(PDControllerType3 *)self sendVDM:v24 ofLength:3];
  if (!v9)
  {
    while (1)
    {
      do
      {
        v23 = 7;
        v9 = [(PDControllerType3 *)self getVDM:v24 ofLength:&v23];
      }

      while (!v9 && !v23);
      if (v9)
      {
        break;
      }

      if (v24[0] >> 15 == 2904)
      {
        v10 = (v24[0] >> 4) & 3;
        if (v10 <= 1)
        {
          if (!v10)
          {
            goto LABEL_4;
          }

          v9 = 0;
          break;
        }

        if (v10 == 3)
        {
          goto LABEL_4;
        }

        return -536870212;
      }
    }
  }

  v12 = a4 != 0;
  if (!v9 && a4)
  {
    v13 = 0;
    while (2)
    {
      v14 = v8 - v13;
      if ((v8 - v13) > 0x18uLL)
      {
        v14 = 24;
      }

      v15 = v14;
      v16 = ((v14 & 0x1F) << 6) | 0x5AC0002;
      v17 = ((v14 + 3) >> 2) + 1;
      while (1)
      {
        __memcpy_chk();
        v24[0] = v16;
        [(PDControllerType3 *)self sendVDM:v24 ofLength:v17];
        do
        {
          v23 = 7;
          v9 = [(PDControllerType3 *)self getVDM:v24 ofLength:&v23];
        }

        while (!v9 && !v23);
        if (v9 || v24[0] >> 15 != 2904)
        {
          break;
        }

        v18 = (v24[0] >> 4) & 3;
        if (v18 > 1)
        {
          if (v18 != 3)
          {
            v9 = 0;
            if (v12)
            {
              goto LABEL_34;
            }

            return v9;
          }
        }

        else if (v18)
        {
          v13 += v15;
          break;
        }

        v12 = v8 > v13;
        if (v8 <= v13)
        {
          v9 = 0;
          v12 = v8 > v13;
          goto LABEL_33;
        }
      }

      v12 = v13 < v8;
      if (!v9 && v13 < v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:
  if (!v12)
  {
    return v9;
  }

LABEL_34:
  if (v9)
  {
    return v9;
  }

LABEL_35:
  v19 = v9;
  v24[0] = 95158276;
  v9 = [(PDControllerType3 *)self sendVDM:v24 ofLength:1];
  if (v9)
  {
    return v9;
  }

  while (1)
  {
    do
    {
      v23 = 7;
      v20 = [(PDControllerType3 *)self getVDM:v24 ofLength:&v23];
      v11 = v20;
    }

    while (!v20 && !v23);
    if (v20)
    {
      return v11;
    }

    if (v24[0] >> 15 == 2904)
    {
      v9 = 0;
      v21 = (v24[0] >> 4) & 3;
      if (v21 > 1)
      {
        v11 = -536870212;
        if (v21 == 3)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v11 = v19;
        if (!v21)
        {
          goto LABEL_35;
        }
      }

      return v11;
    }
  }
}

- (int)executeIECSCommand:(unsigned int)a3
{
  v10 = 0;
  v9 = 4;
  result = [(PDControllerType3 *)self readIECSRegister:&v10 ofLength:4 atRegister:8 andOutReadLength:&v9];
  if (!result && v10)
  {
    v10 = 0;
    result = [(PDControllerType3 *)self writeIECSRegister:&v10 ofLength:4 atRegister:8];
  }

  if (!result)
  {
    LODWORD(v9) = bswap32(a3);
    result = [(PDControllerType3 *)self writeIECSRegister:&v9 ofLength:4 atRegister:8];
    if (!result)
    {
      v6 = 100000;
      while (1)
      {
        v9 = 4;
        v7 = [(PDControllerType3 *)self readIECSRegister:&v10 ofLength:4 atRegister:8 andOutReadLength:&v9];
        v8 = v10;
        if (v7 || !v10)
        {
          break;
        }

        [NSThread sleepForTimeInterval:0.0000999999975];
        if (!--v6)
        {
          v8 = v10;
          break;
        }
      }

      if (v8)
      {
        return -536870186;
      }

      else
      {
        return v7;
      }
    }
  }

  return result;
}

- (int)isPDControllerType3HPM:(BOOL *)a3
{
  *a3 = 0;
  v7 = 0;
  result = [(PDControllerType3 *)self registerRead32:&v7 + 4 atAddress:0];
  if (!result)
  {
    result = [(PDControllerType3 *)self registerRead32:&v7 atAddress:1];
    if (!result)
    {
      result = 0;
      if (HIDWORD(v7) == 2599 && v7 == 25)
      {
        *a3 = 1;
      }
    }
  }

  return result;
}

@end