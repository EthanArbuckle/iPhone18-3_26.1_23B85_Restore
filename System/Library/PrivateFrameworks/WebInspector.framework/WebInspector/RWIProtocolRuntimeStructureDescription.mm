@interface RWIProtocolRuntimeStructureDescription
- (BOOL)isImprecise;
- (NSArray)fields;
- (NSArray)optionalFields;
- (NSString)constructorName;
- (RWIProtocolRuntimeStructureDescription)prototypeStructure;
- (void)setConstructorName:(id)a3;
- (void)setFields:(id)a3;
- (void)setOptionalFields:(id)a3;
- (void)setPrototypeStructure:(id)a3;
@end

@implementation RWIProtocolRuntimeStructureDescription

- (void)setFields:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolRuntimeStructureDescription;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"fields"];
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

- (NSArray)fields
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeStructureDescription;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"fields"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setOptionalFields:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolRuntimeStructureDescription;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"optionalFields"];
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

- (NSArray)optionalFields
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeStructureDescription;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"optionalFields"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setConstructorName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeStructureDescription;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"constructorName"];
}

- (NSString)constructorName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeStructureDescription;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"constructorName"];

  return v2;
}

- (void)setPrototypeStructure:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeStructureDescription;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"prototypeStructure"];
}

- (RWIProtocolRuntimeStructureDescription)prototypeStructure
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeStructureDescription;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"prototypeStructure"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeStructureDescription alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeStructureDescription;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"prototypeStructure"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isImprecise
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeStructureDescription;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isImprecise"];
}

@end