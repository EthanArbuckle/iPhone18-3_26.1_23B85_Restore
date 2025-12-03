@interface PDControllerType6
- (id)printRegisterTitle:(id)title andData:(char *)data;
- (int)decodeRegister:(id)register withArray:(id)array fromBuffer:(void *)buffer;
- (int)printAll;
- (int)printTitle;
@end

@implementation PDControllerType6

- (int)printTitle
{
  userClient = [(PDController *)self userClient];
  routerID = [userClient routerID];
  userClient2 = [(PDController *)self userClient];
  printf("HPM at RID 0x%x Route 0x%llx Address 0x%02x :\n", routerID, [userClient2 routeString], -[PDController address](self, "address"));

  return 0;
}

- (int)printAll
{
  printTitle = [(PDControllerType6 *)self printTitle];
  if (!printTitle)
  {
    putchar(10);
    v4 = malloc_type_malloc(0x40uLL, 0x8F55C211uLL);
    v5 = 0;
    do
    {
      v10 = 0;
      if (v4)
      {
        printTitle = [(PDController *)self registerRead:v4 ofLength:64 atAddress:v5 andOutReadLength:&v10];
        v6 = v10;
      }

      else
      {
        v6 = 0;
        printTitle = -536870211;
      }

      v9.receiver = self;
      v9.super_class = PDControllerType6;
      [(PDController *)&v9 printRegister:v5 dataBuffer:v4 andLength:v6];
      if (printTitle)
      {
        break;
      }

      v7 = v5 == 127;
      v5 = (v5 + 1);
    }

    while (!v7);
    free(v4);
  }

  return printTitle;
}

- (id)printRegisterTitle:(id)title andData:(char *)data
{
  titleCopy = title;
  v6 = objc_alloc_init(NSMutableString);
  [v6 appendFormat:@"0x%02X ", *data];
  if ([titleCopy size] >= 2)
  {
    v7 = 1;
    do
    {
      [v6 appendFormat:@"0x%02X ", data[v7++]];
    }

    while (v7 < [titleCopy size]);
  }

  return v6;
}

- (int)decodeRegister:(id)register withArray:(id)array fromBuffer:(void *)buffer
{
  bufferCopy = buffer;
  registerCopy = register;
  arrayCopy = array;
  fields = [registerCopy fields];
  v8 = [fields objectAtIndexedSubscript:0];
  byteOffset = [v8 byteOffset];

  fields2 = [registerCopy fields];
  v11 = [fields2 count];

  if (v11)
  {
    v12 = 0;
    v13 = 0;
    byteOffset2 = byteOffset;
    do
    {
      fields3 = [registerCopy fields];
      v16 = [fields3 objectAtIndexedSubscript:v12];

      if (byteOffset != [v16 byteOffset])
      {
        byteOffset2 = [v16 byteOffset];
        byteOffset = [v16 byteOffset];
      }

      v17 = &bufferCopy[byteOffset2];
      v18 = *v17;
      v19 = [v16 length];
      v20 = v19;
      v21 = v13 + v19;
      v22 = v21 - 1;
      if (v21 < 1)
      {
        v22 = v21 + 6;
      }

      if ((v21 + 6) > 0xE)
      {
        v33 = v22 >> 3;
        if (v21 >= -6)
        {
          v35 = 0;
          v36 = ((v22 >> 3) & ~(v22 >> 31)) + 1;
          do
          {
            v38 = *v17++;
            v37 = v38;
            v39 = v19;
            if (v19 >= (8 - v13))
            {
              v40 = (8 - v13);
            }

            else
            {
              v40 = v19;
            }

            v41 = v37 >> v13;
            v42 = v41 & 0x7F;
            if (v40 == 8)
            {
              v43 = v41;
            }

            else
            {
              v43 = 0;
            }

            if (v40 != 7)
            {
              v42 = v43;
            }

            v44 = v41 & 0x1F;
            v45 = v41 & 0x3F;
            if (v40 != 6)
            {
              v45 = 0;
            }

            if (v40 != 5)
            {
              v44 = v45;
            }

            if (v40 <= 6)
            {
              v42 = v44;
            }

            v46 = v41 & 7;
            v47 = v41 & 0xF;
            if (v40 != 4)
            {
              v47 = 0;
            }

            if (v40 != 3)
            {
              v46 = v47;
            }

            v48 = v41 & 1;
            v49 = v41 & 3;
            if (v40 != 2)
            {
              v49 = 0;
            }

            if (v40 == 1)
            {
              v49 = v48;
            }

            if (v40 > 2)
            {
              v49 = v46;
            }

            if (v40 > 4)
            {
              v49 = v42;
            }

            v35 |= v49 << (v20 - v19);
            v19 -= v40;
            if (v39 == v40)
            {
              v13 = v40 & 7;
            }

            else
            {
              v13 = 0;
            }

            --v36;
          }

          while (v36);
        }

        else
        {
          v35 = 0;
        }

        v34 = [[NSNumber alloc] initWithUnsignedLongLong:v35];
      }

      else
      {
        v23 = v18 >> v13;
        v24 = (v18 >> v13) & 0x7F;
        if (v19 == 8)
        {
          v25 = v18 >> v13;
        }

        else
        {
          LOBYTE(v25) = 0;
        }

        if (v19 != 7)
        {
          LOBYTE(v24) = v25;
        }

        v26 = v23 & 0x1F;
        v27 = v23 & 0x3F;
        if (v19 != 6)
        {
          v27 = 0;
        }

        if (v19 != 5)
        {
          v26 = v27;
        }

        if (v19 <= 6u)
        {
          LOBYTE(v24) = v26;
        }

        v28 = v23 & 7;
        v29 = v23 & 0xF;
        if (v19 != 4)
        {
          v29 = 0;
        }

        if (v19 != 3)
        {
          v28 = v29;
        }

        v30 = v23 & 1;
        v31 = v23 & 3;
        if (v19 != 2)
        {
          v31 = 0;
        }

        if (v19 == 1)
        {
          v31 = v30;
        }

        if (v19 > 2u)
        {
          v31 = v28;
        }

        if (v19 <= 4u)
        {
          v32 = v31;
        }

        else
        {
          v32 = v24;
        }

        v33 = v21 == 8;
        if (v21 == 8)
        {
          v13 = 0;
        }

        else
        {
          v13 += v19;
        }

        v34 = [[NSNumber alloc] initWithChar:v32];
      }

      v50 = v34;
      [arrayCopy setObject:v34 atIndexedSubscript:v12];

      byteOffset2 += v33;
      ++v12;
      fields4 = [registerCopy fields];
      v52 = [fields4 count];
    }

    while (v52 > v12);
  }

  return 0;
}

@end