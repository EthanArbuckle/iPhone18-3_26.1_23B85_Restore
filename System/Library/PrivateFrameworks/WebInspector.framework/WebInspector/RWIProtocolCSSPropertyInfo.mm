@interface RWIProtocolCSSPropertyInfo
- (BOOL)inherited;
- (NSArray)aliases;
- (NSArray)longhands;
- (NSArray)values;
- (NSString)name;
- (RWIProtocolCSSPropertyInfo)initWithName:(id)name;
- (void)setAliases:(id)aliases;
- (void)setLonghands:(id)longhands;
- (void)setName:(id)name;
- (void)setValues:(id)values;
@end

@implementation RWIProtocolCSSPropertyInfo

- (RWIProtocolCSSPropertyInfo)initWithName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = RWIProtocolCSSPropertyInfo;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    [(RWIProtocolCSSPropertyInfo *)v5 setName:nameCopy];
    v6 = v5;
  }

  return v5;
}

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSPropertyInfo;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSPropertyInfo;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setAliases:(id)aliases
{
  Inspector::toJSONStringArray(aliases, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolCSSPropertyInfo;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"aliases"];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }
}

- (NSArray)aliases
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSPropertyInfo;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"aliases"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setLonghands:(id)longhands
{
  Inspector::toJSONStringArray(longhands, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolCSSPropertyInfo;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"longhands"];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }
}

- (NSArray)longhands
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSPropertyInfo;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"longhands"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setValues:(id)values
{
  Inspector::toJSONStringArray(values, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolCSSPropertyInfo;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"values"];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }
}

- (NSArray)values
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSPropertyInfo;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"values"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (BOOL)inherited
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSPropertyInfo;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"inherited"];
}

@end