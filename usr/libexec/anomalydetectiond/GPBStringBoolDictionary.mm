@interface GPBStringBoolDictionary
- (BOOL)getBool:(BOOL *)bool forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (GPBStringBoolDictionary)initWithBools:(const BOOL *)bools forKeys:(id *)keys count:(unint64_t)count;
- (GPBStringBoolDictionary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndBoolsUsingBlock:(id)block;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBStringBoolDictionary

- (GPBStringBoolDictionary)initWithBools:(const BOOL *)bools forKeys:(id *)keys count:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = GPBStringBoolDictionary;
  v8 = [(GPBStringBoolDictionary *)&v14 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (bools && count)
      {
        do
        {
          if (!*keys)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
          }

          dictionary = v8->_dictionary;
          v10 = *bools++;
          v11 = [NSNumber numberWithBool:v10];
          v12 = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:v12];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (GPBStringBoolDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(GPBStringBoolDictionary *)self initWithBools:0 forKeys:0 count:0];
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
    sub_10033C3CC();
  }

  v3.receiver = self;
  v3.super_class = GPBStringBoolDictionary;
  [(GPBStringBoolDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBStringBoolDictionary allocWithZone:zone];

  return [(GPBStringBoolDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndBoolsUsingBlock:(id)block
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

    (*(block + 2))(block, nextObject, [-[NSMutableDictionary objectForKeyedSubscript:](dictionary objectForKeyedSubscript:{nextObject), "BOOLValue"}], &v7);
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
        v14 = sub_100332660(nextObject2, mapKeyDataType);
        v15 = &v14[sub_10031FF38([v13 BOOLValue], 2, v7)];
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
      bOOLValue = [v14 BOOLValue];
      v16 = sub_100332660(nextObject2, mapKeyDataType);
      [stream writeInt32NoTag:{sub_10031FF38(bOOLValue, 2, v7) + v16}];
      sub_1003327D0(stream, nextObject2, mapKeyDataType);
      sub_1003200BC(stream, bOOLValue, 2, v7);
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithBool:value->var0];
  var2 = key->var2;

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:var2];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100334940;
  v3[3] = &unk_100435C60;
  v3[4] = format;
  [(GPBStringBoolDictionary *)self enumerateKeysAndBoolsUsingBlock:v3];
}

- (BOOL)getBool:(BOOL *)bool forKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
  v6 = v5;
  if (bool && v5)
  {
    *bool = [v5 BOOLValue];
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

@end