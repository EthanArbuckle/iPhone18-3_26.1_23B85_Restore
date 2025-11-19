@interface VMUMutableFieldInfo
- (BOOL)replaceFieldRecursively:(id)a3 atOffset:(unsigned int)a4 withField:(id)a5;
- (void)addSubField:(id)a3;
- (void)setIvarName:(id)a3;
@end

@implementation VMUMutableFieldInfo

- (void)setIvarName:(id)a3
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setIvarName:a3];
}

- (BOOL)replaceFieldRecursively:(id)a3 atOffset:(unsigned int)a4 withField:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(VMUFieldInfo *)self subFieldArray];
  v11 = [v10 count];
  if (v11)
  {
    v12 = v11;
    v13 = [v10 objectAtIndexedSubscript:0];
    v14 = [v13 offset];
    if (a4 - v14 < [v13 size])
    {
      v15 = 0;
      v16 = 1;
LABEL_8:
      v18 = a4 - v14;
      if (v18 || ![v13 isEqual:v8])
      {
        v19 = [v13 subFieldArray];

        if (!v19 || ([v13 replaceFieldRecursively:v8 atOffset:v18 withField:v9] & 1) == 0)
        {
          LOBYTE(a4) = 0;
          goto LABEL_16;
        }
      }

      else
      {
        [v10 setObject:v9 atIndexedSubscript:v15];
      }

      LOBYTE(a4) = 1;
LABEL_16:

      goto LABEL_17;
    }

    v17 = 1;
    while (1)
    {

      if (v12 == v17)
      {
        break;
      }

      v13 = [v10 objectAtIndexedSubscript:v17];
      v14 = [v13 offset];
      ++v17;
      if (a4 - v14 < [v13 size])
      {
        v15 = v17 - 1;
        v16 = v15 < v12;
        goto LABEL_8;
      }
    }
  }

  v16 = 0;
LABEL_17:

  return v16 & a4;
}

- (void)addSubField:(id)a3
{
  v4 = a3;
  v5 = [(VMUFieldInfo *)self subFieldArray];

  if (!v5)
  {
    [(VMUFieldInfo *)self initializeSubFieldArray];
  }

  v6 = [(VMUFieldInfo *)self subFieldArray];
  [v6 addObject:v4];
}

@end