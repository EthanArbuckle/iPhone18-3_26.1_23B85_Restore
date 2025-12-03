@interface GPBUInt64ObjectDictionary
- (BOOL)isEqual:(id)equal;
- (BOOL)isInitialized;
- (GPBUInt64ObjectDictionary)initWithDictionary:(id)dictionary;
- (GPBUInt64ObjectDictionary)initWithObjects:(const void *)objects forKeys:(const unint64_t *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepCopyWithZone:(_NSZone *)zone;
- (id)objectForKey:(unint64_t)key;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)removeObjectForKey:(unint64_t)key;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)setObject:(id)object forKey:(unint64_t)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBUInt64ObjectDictionary

- (GPBUInt64ObjectDictionary)initWithObjects:(const void *)objects forKeys:(const unint64_t *)keys count:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = GPBUInt64ObjectDictionary;
  v8 = [(GPBUInt64ObjectDictionary *)&v12 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (objects && count)
      {
        do
        {
          v9 = *objects;
          if (!*objects)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil object to a Dictionary"];
            v9 = *objects;
          }

          v10 = *keys++;
          [(NSMutableDictionary *)v8->_dictionary setObject:v9 forKey:[NSNumber numberWithUnsignedLongLong:v10]];
          ++objects;
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (GPBUInt64ObjectDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(GPBUInt64ObjectDictionary *)self initWithObjects:0 forKeys:0 count:0];
  v5 = v4;
  if (dictionary && v4)
  {
    [(NSMutableDictionary *)v4->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_autocreator)
  {
    sub_10033BDB4();
  }

  v3.receiver = self;
  v3.super_class = GPBUInt64ObjectDictionary;
  [(GPBUInt64ObjectDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBUInt64ObjectDictionary allocWithZone:zone];

  return [(GPBUInt64ObjectDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = self->_dictionary;
  v6 = *(equal + 2);

  return [(NSMutableDictionary *)dictionary isEqual:v6];
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  v7 = 0;
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    (*(block + 2))(block, [nextObject unsignedLongLongValue], -[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", nextObject), &v7);
  }

  while (v7 != 1);
}

- (BOOL)isInitialized
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_dictionary objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(objectEnumerator);
      }

      isInitialized = [*(*(&v9 + 1) + 8 * v6) isInitialized];
      if (!isInitialized)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(isInitialized) = 1;
  }

  return isInitialized;
}

- (id)deepCopyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(GPBUInt64ObjectDictionary);
  keyEnumerator = [(NSMutableDictionary *)self->_dictionary keyEnumerator];
  dictionary = v5->_dictionary;
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v10 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{nextObject2), "copyWithZone:", zone}];
      [(NSMutableDictionary *)dictionary setObject:v10 forKey:nextObject2];

      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }

  return v5;
}

- (unint64_t)computeSerializedSizeAsField:(id)field
{
  dictionary = self->_dictionary;
  result = [(NSMutableDictionary *)dictionary count];
  if (result)
  {
    v6 = result;
    v7 = *(*(field + 1) + 30);
    mapKeyDataType = [field mapKeyDataType];
    keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v12 = 0;
      do
      {
        v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
        v14 = sub_10031EA6C([nextObject2 unsignedLongLongValue], 1, mapKeyDataType);
        v15 = &sub_10031C838(v13, v7)[v14];
        v12 += &v15[GPBComputeRawVarint32SizeForInteger(v15)];
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v12 = 0;
    }

    return v12 + GPBComputeWireFormatTagSize(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v7 = *(*(field + 1) + 30);
  mapKeyDataType = [field mapKeyDataType];
  Tag = GPBWireFormatMakeTag(*(*(field + 1) + 16), 2);
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v14 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
      [stream writeInt32NoTag:Tag];
      unsignedLongLongValue = [nextObject2 unsignedLongLongValue];
      v16 = sub_10031EA6C(unsignedLongLongValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:{sub_10031C838(v14, v7) + v16}];
      sub_10031EC7C(stream, unsignedLongLongValue, 1, mapKeyDataType);
      sub_10031CA3C(stream, v14, v7);
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  var2 = value->var2;
  v6 = [NSNumber numberWithUnsignedLongLong:key->var2];

  [(NSMutableDictionary *)dictionary setObject:var2 forKey:v6];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10032CE3C;
  v3[3] = &unk_100435A58;
  v3[4] = format;
  [(GPBUInt64ObjectDictionary *)self enumerateKeysAndObjectsUsingBlock:v3];
}

- (id)objectForKey:(unint64_t)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedLongLong:key];

  return [(NSMutableDictionary *)dictionary objectForKey:v4];
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      GPBAutocreatedDictionaryModified(autocreator, self);
    }
  }
}

- (void)setObject:(id)object forKey:(unint64_t)key
{
  if (!object)
  {
    [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil object to a Dictionary"];
  }

  [(NSMutableDictionary *)self->_dictionary setObject:object forKey:[NSNumber numberWithUnsignedLongLong:key]];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

- (void)removeObjectForKey:(unint64_t)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedLongLong:key];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end