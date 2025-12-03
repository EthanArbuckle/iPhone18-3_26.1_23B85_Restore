@interface PDControllerType3
- (PDControllerType3)initWithAddress:(unsigned __int8)address userClient:(id)client;
- (int)executeIECSCommand:(unsigned int)command;
- (int)getVDM:(unsigned int *)m ofLength:(unint64_t *)length;
- (int)isPDControllerType3HPM:(BOOL *)m;
- (int)readIECSRegister:(void *)register ofLength:(unint64_t)length atRegister:(unsigned int)atRegister andOutReadLength:(unint64_t *)readLength;
- (int)sendVDM:(unsigned int *)m ofLength:(unint64_t)length;
- (int)writeIECSRegister:(void *)register ofLength:(unint64_t)length atRegister:(unsigned int)atRegister;
- (void)dealloc;
@end

@implementation PDControllerType3

- (PDControllerType3)initWithAddress:(unsigned __int8)address userClient:(id)client
{
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = PDControllerType3;
  v6 = [(PDControllerType3 *)&v10 init];
  v7 = v6;
  if (!v6 || ([(PDControllerType3 *)v6 setUserClient:clientCopy], [(PDControllerType3 *)v7 userClient], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
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

- (int)sendVDM:(unsigned int *)m ofLength:(unint64_t)length
{
  v12 = 0;
  v11 = 0;
  v14 = 0;
  v13 = 0;
  if (length >= 7)
  {
    lengthCopy = 7;
  }

  else
  {
    lengthCopy = length;
  }

  v10 = lengthCopy;
  __memcpy_chk();
  userClient = [(PDControllerType3 *)self userClient];
  v7 = [userClient iecsWriteCommandForDevice:-[PDControllerType3 address](self withAddress:"address") buffer:9 length:&v10 flags:{(4 * (lengthCopy & 0x1FFFFFFFFFFFFFFFLL)) | 1, 0}];

  if (!v7)
  {
    userClient2 = [(PDControllerType3 *)self userClient];
    v7 = [userClient2 iecsCommand:1447316851 forDevice:-[PDControllerType3 address](self flags:{"address"), 0}];
  }

  return v7;
}

- (int)getVDM:(unsigned int *)m ofLength:(unint64_t *)length
{
  v12 = 65;
  if (*length >= 8)
  {
    *length = 7;
  }

  userClient = [(PDControllerType3 *)self userClient];
  v8 = [userClient iecsReadCommandForDevice:-[PDControllerType3 address](self withAddress:"address") buffer:79 length:&v13 flags:4 * *length andOutReadLength:{0, &v12}];

  if (!v8)
  {
    v9 = v13 >> 5;
    if (v9 == [(PDControllerType3 *)self cached_sequence_num])
    {
      bzero(m, 4 * *length);
      *length = 0;
    }

    else
    {
      [(PDControllerType3 *)self setCached_sequence_num:v9];
      v10 = v13 & 7;
      *length = v10;
      memcpy(m, &v14, 4 * v10);
    }
  }

  return v8;
}

- (int)readIECSRegister:(void *)register ofLength:(unint64_t)length atRegister:(unsigned int)atRegister andOutReadLength:(unint64_t *)readLength
{
  v28 = 0;
  if (length >= 0x40)
  {
    lengthCopy = 64;
  }

  else
  {
    lengthCopy = length;
  }

LABEL_4:
  v29 = 95158787;
  v30[0] = lengthCopy | (([(PDControllerType3 *)self burstLimit]& 0xF) << 16) | 0x1000000;
  v30[1] = atRegister;
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

  v16 = length != 0;
  if (!v14 && length)
  {
    readLengthCopy = readLength;
    v17 = 0;
    while (2)
    {
      if ((lengthCopy - v17) <= 0x18uLL)
      {
        v18 = (((lengthCopy - v17) & 0x1F) << 6) | 0x5AC0001;
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
          memcpy(register + v17, v30, v21);
          v17 += v21;
          *readLengthCopy = v17;
          break;
        }

        v16 = lengthCopy > v17;
        if (lengthCopy <= v17)
        {
          v14 = 0;
          v16 = lengthCopy > v17;
          goto LABEL_33;
        }
      }

      v16 = v17 < lengthCopy;
      if (!v14 && v17 < lengthCopy)
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

- (int)writeIECSRegister:(void *)register ofLength:(unint64_t)length atRegister:(unsigned int)atRegister
{
  v23 = 0;
  if (length >= 0x40)
  {
    lengthCopy = 64;
  }

  else
  {
    lengthCopy = length;
  }

LABEL_4:
  v24[0] = 95158787;
  v24[1] = lengthCopy | (([(PDControllerType3 *)self burstLimit:register]& 0xF) << 16) | 0x1800000;
  v24[2] = atRegister;
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

  v12 = length != 0;
  if (!v9 && length)
  {
    v13 = 0;
    while (2)
    {
      v14 = lengthCopy - v13;
      if ((lengthCopy - v13) > 0x18uLL)
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

        v12 = lengthCopy > v13;
        if (lengthCopy <= v13)
        {
          v9 = 0;
          v12 = lengthCopy > v13;
          goto LABEL_33;
        }
      }

      v12 = v13 < lengthCopy;
      if (!v9 && v13 < lengthCopy)
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

- (int)executeIECSCommand:(unsigned int)command
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
    LODWORD(v9) = bswap32(command);
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

- (int)isPDControllerType3HPM:(BOOL *)m
{
  *m = 0;
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
        *m = 1;
      }
    }
  }

  return result;
}

@end