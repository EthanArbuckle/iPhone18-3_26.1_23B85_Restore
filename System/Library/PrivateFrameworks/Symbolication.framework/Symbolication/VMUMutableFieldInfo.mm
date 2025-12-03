@interface VMUMutableFieldInfo
- (BOOL)replaceFieldRecursively:(id)recursively atOffset:(unsigned int)offset withField:(id)field;
- (void)addSubField:(id)field;
- (void)setIvarName:(id)name;
@end

@implementation VMUMutableFieldInfo

- (void)setIvarName:(id)name
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setIvarName:name];
}

- (BOOL)replaceFieldRecursively:(id)recursively atOffset:(unsigned int)offset withField:(id)field
{
  recursivelyCopy = recursively;
  fieldCopy = field;
  subFieldArray = [(VMUFieldInfo *)self subFieldArray];
  v11 = [subFieldArray count];
  if (v11)
  {
    v12 = v11;
    v13 = [subFieldArray objectAtIndexedSubscript:0];
    offset = [v13 offset];
    if (offset - offset < [v13 size])
    {
      v15 = 0;
      v16 = 1;
LABEL_8:
      v18 = offset - offset;
      if (v18 || ![v13 isEqual:recursivelyCopy])
      {
        subFieldArray2 = [v13 subFieldArray];

        if (!subFieldArray2 || ([v13 replaceFieldRecursively:recursivelyCopy atOffset:v18 withField:fieldCopy] & 1) == 0)
        {
          LOBYTE(offset) = 0;
          goto LABEL_16;
        }
      }

      else
      {
        [subFieldArray setObject:fieldCopy atIndexedSubscript:v15];
      }

      LOBYTE(offset) = 1;
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

      v13 = [subFieldArray objectAtIndexedSubscript:v17];
      offset = [v13 offset];
      ++v17;
      if (offset - offset < [v13 size])
      {
        v15 = v17 - 1;
        v16 = v15 < v12;
        goto LABEL_8;
      }
    }
  }

  v16 = 0;
LABEL_17:

  return v16 & offset;
}

- (void)addSubField:(id)field
{
  fieldCopy = field;
  subFieldArray = [(VMUFieldInfo *)self subFieldArray];

  if (!subFieldArray)
  {
    [(VMUFieldInfo *)self initializeSubFieldArray];
  }

  subFieldArray2 = [(VMUFieldInfo *)self subFieldArray];
  [subFieldArray2 addObject:fieldCopy];
}

@end