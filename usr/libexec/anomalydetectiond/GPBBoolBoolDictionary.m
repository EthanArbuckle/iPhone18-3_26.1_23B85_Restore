@interface GPBBoolBoolDictionary
- (BOOL)getBool:(BOOL *)a3 forKey:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (GPBBoolBoolDictionary)initWithBools:(const BOOL *)a3 forKeys:(const BOOL *)a4 count:(unint64_t)a5;
- (GPBBoolBoolDictionary)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndBoolsUsingBlock:(id)a3;
- (void)setBool:(BOOL)a3 forKey:(BOOL)a4;
- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation GPBBoolBoolDictionary

- (GPBBoolBoolDictionary)initWithBools:(const BOOL *)a3 forKeys:(const BOOL *)a4 count:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = GPBBoolBoolDictionary;
  result = [(GPBBoolBoolDictionary *)&v12 init];
  if (result)
  {
    v9 = a5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      v11 = *a4++;
      v10 = v11;
      LOBYTE(v11) = *a3++;
      result->_values[v10] = v11;
      result->_valueSet[v10] = 1;
      --a5;
    }

    while (a5);
  }

  return result;
}

- (GPBBoolBoolDictionary)initWithDictionary:(id)a3
{
  result = [(GPBBoolBoolDictionary *)self initWithBools:0 forKeys:0 count:0];
  if (a3 && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(a3 + v5 + 18) == 1)
      {
        result->_values[v5] = *(a3 + v5 + 16);
        result->_valueSet[v5] = 1;
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
  }

  return result;
}

- (void)dealloc
{
  v2 = a2;
  if (self->_autocreator)
  {
    sub_10033C6CC();
  }

  v4.receiver = self;
  v4.super_class = GPBBoolBoolDictionary;
  [(GPBBoolBoolDictionary *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GPBBoolBoolDictionary allocWithZone:a3];

  return [(GPBBoolBoolDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(a3 + 18) && self->_valueSet[1] == *(a3 + 19) && (!self->_valueSet[0] || self->_values[0] == *(a3 + 16)) && (!self->_valueSet[1] || self->_values[1] == *(a3 + 17));
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_valueSet[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %d", self->_values[0]];
  }

  if (self->_valueSet[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %d", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (BOOL)getBool:(BOOL *)a3 forKey:(BOOL)a4
{
  v5 = self->_valueSet[a4];
  if (a3 && v5)
  {
    *a3 = self->_values[a4];
  }

  return v5;
}

- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4
{
  v4 = self + a4->var0;
  v4[16] = a3->var0;
  v4[18] = 1;
}

- (void)enumerateForTextFormat:(id)a3
{
  if (self->_valueSet[0])
  {
    if (self->_values[0])
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    (*(a3 + 2))(a3, @"false", v5);
  }

  if (self->_valueSet[1])
  {
    if (self->_values[1])
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    v7 = *(a3 + 2);

    v7(a3, @"true", v6);
  }
}

- (void)enumerateKeysAndBoolsUsingBlock:(id)a3
{
  v5 = 0;
  if (!self->_valueSet[0] || ((*(a3 + 2))(a3, 0, self->_values[0], &v5), (v5 & 1) == 0))
  {
    if (self->_valueSet[1])
    {
      (*(a3 + 2))(a3, 1, self->_values[1], &v5);
    }
  }
}

- (unint64_t)computeSerializedSizeAsField:(id)a3
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(*(a3 + 1) + 30);
  valueSet = self->_valueSet;
  values = self->_values;
  v10 = 1;
  do
  {
    v11 = v10;
    if (valueSet[v4])
    {
      ++v5;
      v12 = GPBComputeBoolSize(1);
      v13 = sub_10031FF38(values[v4], 2, v7) + v12;
      v6 += v13 + GPBComputeRawVarint32SizeForInteger(v13);
    }

    v10 = 0;
    v4 = 1;
  }

  while ((v11 & 1) != 0);
  return v6 + GPBComputeWireFormatTagSize(*(*(a3 + 1) + 16), 15) * v5;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v6 = *(a4 + 1);
  v7 = *(v6 + 30);
  Tag = GPBWireFormatMakeTag(*(v6 + 16), 2);
  v9 = 0;
  v10 = 0;
  valueSet = self->_valueSet;
  values = self->_values;
  v13 = 1;
  do
  {
    v14 = v13;
    if (valueSet[v10])
    {
      [a3 writeInt32NoTag:Tag];
      v15 = GPBComputeBoolSize(1);
      [a3 writeInt32NoTag:{sub_10031FF38(values[v10], 2, v7) + v15}];
      [a3 writeBool:1 value:v9 & 1];
      sub_1003200BC(a3, values[v10], 2, v7);
    }

    v13 = 0;
    v9 = 1;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
}

- (void)addEntriesFromDictionary:(id)a3
{
  if (a3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(a3 + v4 + 18) == 1)
      {
        self->_valueSet[v4] = 1;
        self->_values[v4] = *(a3 + v4 + 16);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    autocreator = self->_autocreator;
    if (autocreator)
    {
      GPBAutocreatedDictionaryModified(autocreator, self);
    }
  }
}

- (void)setBool:(BOOL)a3 forKey:(BOOL)a4
{
  v5 = self + a4;
  v5[16] = a3;
  v5[18] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

@end