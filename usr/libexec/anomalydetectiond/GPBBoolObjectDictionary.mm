@interface GPBBoolObjectDictionary
- (BOOL)isEqual:(id)equal;
- (BOOL)isInitialized;
- (GPBBoolObjectDictionary)initWithDictionary:(id)dictionary;
- (GPBBoolObjectDictionary)initWithObjects:(const void *)objects forKeys:(const BOOL *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepCopyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (unint64_t)count;
- (unint64_t)hash;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)removeAll;
- (void)removeObjectForKey:(BOOL)key;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)setObject:(id)object forKey:(BOOL)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBBoolObjectDictionary

- (GPBBoolObjectDictionary)initWithObjects:(const void *)objects forKeys:(const BOOL *)keys count:(unint64_t)count
{
  v16.receiver = self;
  v16.super_class = GPBBoolObjectDictionary;
  v8 = [(GPBBoolObjectDictionary *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v10 = count == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    values = v8->_values;
    do
    {
      if (!*objects)
      {
        [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil object to a Dictionary"];
      }

      v13 = *keys++;
      v12 = v13;

      v14 = *objects++;
      values[v12] = v14;
      --count;
    }

    while (count);
  }

  return v9;
}

- (GPBBoolObjectDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(GPBBoolObjectDictionary *)self initWithObjects:0 forKeys:0 count:0];
  v5 = v4;
  if (dictionary && v4)
  {
    v4->_values[0] = *(dictionary + 2);
    v5->_values[1] = *(dictionary + 3);
  }

  return v5;
}

- (void)dealloc
{
  if (self->_autocreator)
  {
    sub_10033C7EC();
  }

  v3.receiver = self;
  v3.super_class = GPBBoolObjectDictionary;
  [(GPBBoolObjectDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBBoolObjectDictionary allocWithZone:zone];

  return [(GPBBoolObjectDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = self->_values[0], (v5 != 0) == (*(equal + 2) == 0)) || (v6 = self->_values[1], (v6 != 0) == (*(equal + 3) == 0)))
    {
      LOBYTE(v7) = 0;
      return v7;
    }

    if (v5)
    {
      v7 = [self->_values[0] isEqual:?];
      if (!v7)
      {
        return v7;
      }

      v6 = self->_values[1];
    }

    if (!v6 || (v7 = [v6 isEqual:*(equal + 3)]) != 0)
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  if (self->_values[0])
  {
    return (self->_values[1] != 0) + 1;
  }

  else
  {
    return self->_values[1] != 0;
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_values[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %@", self->_values[0]];
  }

  if (self->_values[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %@", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (unint64_t)count
{
  if (self->_values[0])
  {
    return (self->_values[1] != 0) + 1;
  }

  else
  {
    return self->_values[1] != 0;
  }
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  v5 = (&self->super.isa + key->var0);

  v5[2] = value->var7;
}

- (void)enumerateForTextFormat:(id)format
{
  if (self->_values[0])
  {
    (*(format + 2))(format, @"false");
  }

  if (self->_values[1])
  {
    v5 = *(format + 2);

    v5(format, @"true");
  }
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  v7 = 0;
  v5 = self->_values[0];
  if (!v5 || ((*(block + 2))(block, 0, v5, &v7), (v7 & 1) == 0))
  {
    v6 = self->_values[1];
    if (v6)
    {
      (*(block + 2))(block, 1, v6, &v7);
    }
  }
}

- (BOOL)isInitialized
{
  v3 = self->_values[0];
  if (!v3 || (v4 = [v3 isInitialized]) != 0)
  {
    v5 = self->_values[1];
    if (!v5 || (v4 = [v5 isInitialized]) != 0)
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (id)deepCopyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(GPBBoolObjectDictionary);
  v6 = 0;
  values = self->_values;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = values[v6];
    if (v10)
    {
      v5->_values[v6] = [v10 copyWithZone:zone];
    }

    v8 = 0;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  return v5;
}

- (unint64_t)computeSerializedSizeAsField:(id)field
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(*(field + 1) + 30);
  values = self->_values;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = values[v4];
    if (v11)
    {
      ++v5;
      v12 = GPBComputeBoolSize(1);
      v13 = sub_10031C838(v11, v7);
      v6 += &v13[v12 + GPBComputeRawVarint32SizeForInteger(v13 + v12)];
    }

    v9 = 0;
    v4 = 1;
  }

  while ((v10 & 1) != 0);
  return v6 + GPBComputeWireFormatTagSize(*(*(field + 1) + 16), 15) * v5;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v6 = *(field + 1);
  v7 = *(v6 + 30);
  Tag = GPBWireFormatMakeTag(*(v6 + 16), 2);
  v9 = 0;
  v10 = 0;
  values = self->_values;
  v12 = 1;
  do
  {
    v13 = v12;
    if (values[v10])
    {
      [stream writeInt32NoTag:Tag];
      v14 = GPBComputeBoolSize(1);
      [stream writeInt32NoTag:{sub_10031C838(values[v10], v7) + v14}];
      [stream writeBool:1 value:v9 & 1];
      sub_10031CA3C(stream, values[v10], v7);
    }

    v12 = 0;
    v9 = 1;
    v10 = 1;
  }

  while ((v13 & 1) != 0);
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = 0;
    v5 = dictionary + 16;
    values = self->_values;
    v7 = 1;
    do
    {
      v8 = v7;
      if (*&v5[8 * v4])
      {

        values[v4] = *&v5[8 * v4];
      }

      v7 = 0;
      v4 = 1;
    }

    while ((v8 & 1) != 0);
    autocreator = self->_autocreator;
    if (autocreator)
    {

      GPBAutocreatedDictionaryModified(autocreator, self);
    }
  }
}

- (void)setObject:(id)object forKey:(BOOL)key
{
  keyCopy = key;
  if (!object)
  {
    [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil object to a Dictionary"];
  }

  v7 = (&self->super.isa + keyCopy);

  v7[2] = object;
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

- (void)removeObjectForKey:(BOOL)key
{
  v3 = (&self->super.isa + key);

  v3[2] = 0;
}

- (void)removeAll
{
  self->_values[0] = 0;

  self->_values[1] = 0;
}

@end