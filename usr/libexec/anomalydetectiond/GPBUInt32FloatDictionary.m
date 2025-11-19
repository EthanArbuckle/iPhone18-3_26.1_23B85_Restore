@interface GPBUInt32FloatDictionary
- (BOOL)isEqual:(id)a3;
- (GPBUInt32FloatDictionary)initWithDictionary:(id)a3;
- (GPBUInt32FloatDictionary)initWithFloats:(const float *)a3 forKeys:(const unsigned int *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndFloatsUsingBlock:(id)a3;
- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation GPBUInt32FloatDictionary

- (GPBUInt32FloatDictionary)initWithFloats:(const float *)a3 forKeys:(const unsigned int *)a4 count:(unint64_t)a5
{
  v15.receiver = self;
  v15.super_class = GPBUInt32FloatDictionary;
  v8 = [(GPBUInt32FloatDictionary *)&v15 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (a4)
    {
      if (a3 && a5)
      {
        do
        {
          dictionary = v8->_dictionary;
          v11 = *a3++;
          LODWORD(v9) = v11;
          v12 = [NSNumber numberWithFloat:v9];
          v13 = *a4++;
          [(NSMutableDictionary *)dictionary setObject:v12 forKey:[NSNumber numberWithUnsignedInt:v13]];
          --a5;
        }

        while (a5);
      }
    }
  }

  return v8;
}

- (GPBUInt32FloatDictionary)initWithDictionary:(id)a3
{
  v4 = [(GPBUInt32FloatDictionary *)self initWithFloats:0 forKeys:0 count:0];
  v5 = v4;
  if (a3 && v4)
  {
    [(NSMutableDictionary *)v4->_dictionary addEntriesFromDictionary:*(a3 + 2)];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_autocreator)
  {
    sub_10033B34C();
  }

  v3.receiver = self;
  v3.super_class = GPBUInt32FloatDictionary;
  [(GPBUInt32FloatDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GPBUInt32FloatDictionary allocWithZone:a3];

  return [(GPBUInt32FloatDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = self->_dictionary;
  v6 = *(a3 + 2);

  return [(NSMutableDictionary *)dictionary isEqual:v6];
}

- (void)enumerateKeysAndFloatsUsingBlock:(id)a3
{
  v10 = 0;
  dictionary = self->_dictionary;
  v5 = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    v6 = [v5 nextObject];
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v8 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v6];
    v9 = [v7 unsignedIntValue];
    [v8 floatValue];
    (*(a3 + 2))(a3, v9, &v10);
  }

  while (v10 != 1);
}

- (unint64_t)computeSerializedSizeAsField:(id)a3
{
  dictionary = self->_dictionary;
  result = [(NSMutableDictionary *)dictionary count];
  if (result)
  {
    v6 = result;
    v7 = *(*(a3 + 1) + 30);
    v8 = [a3 mapKeyDataType];
    v9 = [(NSMutableDictionary *)dictionary keyEnumerator];
    v10 = [v9 nextObject];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      do
      {
        v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v11];
        v14 = sub_10031D598([v11 unsignedIntValue], 1, v8);
        [v13 floatValue];
        v15 = sub_100320864(v7) + v14;
        v12 += v15 + GPBComputeRawVarint32SizeForInteger(v15);
        v11 = [v9 nextObject];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    return v12 + GPBComputeWireFormatTagSize(*(*(a3 + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v7 = *(*(a4 + 1) + 30);
  v8 = [a4 mapKeyDataType];
  Tag = GPBWireFormatMakeTag(*(*(a4 + 1) + 16), 2);
  dictionary = self->_dictionary;
  v11 = [(NSMutableDictionary *)dictionary keyEnumerator];
  v12 = [v11 nextObject];
  if (v12)
  {
    v13 = v12;
    do
    {
      v14 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v13];
      [a3 writeInt32NoTag:Tag];
      v15 = [v13 unsignedIntValue];
      [v14 floatValue];
      v17 = v16;
      LODWORD(v14) = sub_10031D598(v15, 1, v8);
      [a3 writeInt32NoTag:sub_100320864(v7) + v14];
      sub_10031D7A8(a3, v15, 1, v8);
      LODWORD(v18) = v17;
      sub_1003209DC(a3, v7, v18);
      v13 = [v11 nextObject];
    }

    while (v13);
  }
}

- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  LODWORD(v4) = a3->var1;
  v7 = [NSNumber numberWithFloat:v4];
  v8 = [NSNumber numberWithUnsignedInt:a4->var3];

  [(NSMutableDictionary *)dictionary setObject:v7 forKey:v8];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100320B0C;
  v3[3] = &unk_100435788;
  v3[4] = a3;
  [(GPBUInt32FloatDictionary *)self enumerateKeysAndFloatsUsingBlock:v3];
}

- (void)addEntriesFromDictionary:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(a3 + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      GPBAutocreatedDictionaryModified(autocreator, self);
    }
  }
}

@end