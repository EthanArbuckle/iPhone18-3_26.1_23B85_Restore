@interface RWIProtocolCSSPropertyInfo
- (BOOL)inherited;
- (NSArray)aliases;
- (NSArray)longhands;
- (NSArray)values;
- (NSString)name;
- (RWIProtocolCSSPropertyInfo)initWithName:(id)a3;
- (void)setAliases:(id)a3;
- (void)setLonghands:(id)a3;
- (void)setName:(id)a3;
- (void)setValues:(id)a3;
@end

@implementation RWIProtocolCSSPropertyInfo

- (RWIProtocolCSSPropertyInfo)initWithName:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RWIProtocolCSSPropertyInfo;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    [(RWIProtocolCSSPropertyInfo *)v5 setName:v4];
    v6 = v5;
  }

  return v5;
}

- (void)setName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSPropertyInfo;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSPropertyInfo;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setAliases:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
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

- (void)setLonghands:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
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

- (void)setValues:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
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