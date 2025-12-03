@interface GPBInt64Int64Dictionary
- (BOOL)getInt64:(int64_t *)int64 forKey:(int64_t)key;
- (BOOL)isEqual:(id)equal;
- (GPBInt64Int64Dictionary)initWithDictionary:(id)dictionary;
- (GPBInt64Int64Dictionary)initWithInt64s:(const int64_t *)int64s forKeys:(const int64_t *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndInt64sUsingBlock:(id)block;
- (void)removeInt64ForKey:(int64_t)key;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)setInt64:(int64_t)int64 forKey:(int64_t)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBInt64Int64Dictionary

- (GPBInt64Int64Dictionary)initWithInt64s:(const int64_t *)int64s forKeys:(const int64_t *)keys count:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = GPBInt64Int64Dictionary;
  v8 = [(GPBInt64Int64Dictionary *)&v14 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (int64s && count)
      {
        do
        {
          dictionary = v8->_dictionary;
          v10 = *int64s++;
          v11 = [NSNumber numberWithLongLong:v10];
          v12 = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:[NSNumber numberWithLongLong:v12]];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (GPBInt64Int64Dictionary)initWithDictionary:(id)dictionary
{
  v4 = [(GPBInt64Int64Dictionary *)self initWithInt64s:0 forKeys:0 count:0];
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
    sub_10033BF34();
  }

  v3.receiver = self;
  v3.super_class = GPBInt64Int64Dictionary;
  [(GPBInt64Int64Dictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBInt64Int64Dictionary allocWithZone:zone];

  return [(GPBInt64Int64Dictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndInt64sUsingBlock:(id)block
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

    (*(block + 2))(block, [nextObject longLongValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", nextObject), "longLongValue"), &v7);
  }

  while (v7 != 1);
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
        v14 = sub_10031F4A4([nextObject2 longLongValue], 1, mapKeyDataType);
        v15 = sub_10031F4A4([v13 longLongValue], 2, v7) + v14;
        v12 += v15 + GPBComputeRawVarint32SizeForInteger(v15);
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
      longLongValue = [nextObject2 longLongValue];
      longLongValue2 = [v14 longLongValue];
      v17 = sub_10031F4A4(longLongValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:{sub_10031F4A4(longLongValue2, 2, v7) + v17}];
      sub_10031F6E4(stream, longLongValue, 1, mapKeyDataType);
      sub_10031F6E4(stream, longLongValue2, 2, v7);
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithLongLong:value->var2];
  v7 = [NSNumber numberWithLongLong:key->var2];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10032F070;
  v3[3] = &unk_100435AF8;
  v3[4] = format;
  [(GPBInt64Int64Dictionary *)self enumerateKeysAndInt64sUsingBlock:v3];
}

- (BOOL)getInt64:(int64_t *)int64 forKey:(int64_t)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithLongLong:key]];
  v6 = v5;
  if (int64 && v5)
  {
    *int64 = [v5 longLongValue];
  }

  return v6 != 0;
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

- (void)setInt64:(int64_t)int64 forKey:(int64_t)key
{
  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber forKey:"numberWithLongLong:" numberWithLongLong:int64], [NSNumber numberWithLongLong:key]];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

- (void)removeInt64ForKey:(int64_t)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithLongLong:key];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end