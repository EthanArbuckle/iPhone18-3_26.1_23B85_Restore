@interface VMUDomtreeName
- (BOOL)isEqual:(id)equal;
- (VMUDomtreeName)initWithArray:(id)array;
- (VMUDomtreeName)initWithDict:(id)dict;
- (id)asArray;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation VMUDomtreeName

- (VMUDomtreeName)initWithDict:(id)dict
{
  v5 = 1;
  v6 = name_keys;
  do
  {
    v7 = [dict objectForKeyedSubscript:*v6];
    v8 = v7;
    if (v7)
    {
      null = v7;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v10 = *(&self->super.isa + v5);
    *(&self->super.isa + v5) = null;

    ++v5;
    ++v6;
  }

  while (v5 != 7);
  return self;
}

- (VMUDomtreeName)initWithArray:(id)array
{
  arrayCopy = array;
  v5 = -6;
  v6 = 8;
  while (v5 + 6 < [arrayCopy count])
  {
    v7 = [arrayCopy objectAtIndexedSubscript:v5 + 6];
    v8 = *(&self->super.isa + v6);
    *(&self->super.isa + v6) = v7;

    v6 += 8;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_8;
    }
  }

  if (v5 >= 0xFFFFFFFFFFFFFFFALL)
  {
    do
    {
      null = [MEMORY[0x1E695DFB0] null];
      v11 = *(&self->super.isa + v6);
      *(&self->super.isa + v6) = null;

      v6 += 8;
    }

    while (v6 != 56);
  }

LABEL_8:

  return self;
}

- (id)asArray
{
  v2 = 6;
  do
  {
    v3 = v2;
    if (!v2)
    {
      break;
    }

    --v2;
  }

  while (!*(&self->super.isa + v3));
  return [MEMORY[0x1E695DEC8] arrayWithObjects:self->_elements count:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  null = [MEMORY[0x1E695DFB0] null];
  v6 = self->_elements[0];
  v7 = equalCopy[1];
  if ((v6 != null) == (v7 == null))
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = &self->_elements[1];
    while ([(NSCopying *)v6 isEqual:v7])
    {

      if (v8 == 5)
      {
        v9 = 1;
        goto LABEL_9;
      }

      v9 = v8 > 4;
      v6 = v10[v8];
      v7 = equalCopy[v8++ + 2];
      if ((v6 != null) == (v7 == null))
      {
        break;
      }
    }
  }

LABEL_9:
  return v9;
}

- (unint64_t)hash
{
  null = [MEMORY[0x1E695DFB0] null];
  v4 = 0;
  for (i = 8; i != 56; i += 8)
  {
    v6 = *(&self->super.isa + i);
    if (v6 != null)
    {
      v4 += [v6 hash];
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VMUDomtreeName allocWithZone:zone];
  for (i = 8; i != 56; i += 8)
  {
    objc_storeStrong((&v4->super.isa + i), *(&self->super.isa + i));
  }

  return v4;
}

@end