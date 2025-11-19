@interface RWIProtocolPageFrameResource
- (BOOL)canceled;
- (BOOL)failed;
- (NSString)mimeType;
- (NSString)sourceMapURL;
- (NSString)targetId;
- (NSString)url;
- (RWIProtocolPageFrameResource)initWithUrl:(id)a3 type:(int64_t)a4 mimeType:(id)a5;
- (int64_t)type;
- (void)setMimeType:(id)a3;
- (void)setSourceMapURL:(id)a3;
- (void)setTargetId:(id)a3;
- (void)setType:(int64_t)a3;
- (void)setUrl:(id)a3;
@end

@implementation RWIProtocolPageFrameResource

- (RWIProtocolPageFrameResource)initWithUrl:(id)a3 type:(int64_t)a4 mimeType:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = RWIProtocolPageFrameResource;
  v10 = [(RWIProtocolJSONObject *)&v13 init];
  if (v10)
  {
    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"url"}];
    }

    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"mimeType"}];
    }

    [(RWIProtocolPageFrameResource *)v10 setUrl:v8];
    [(RWIProtocolPageFrameResource *)v10 setType:a4];
    [(RWIProtocolPageFrameResource *)v10 setMimeType:v9];
    v11 = v10;
  }

  return v10;
}

- (void)setUrl:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrameResource;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrameResource;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setType:(int64_t)a3
{
  Inspector::toProtocolString();
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v7, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  else
  {
    v7 = &stru_2882B1C88;
  }

  v5.receiver = self;
  v5.super_class = RWIProtocolPageFrameResource;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolPageFrameResource;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"type"];
  MEMORY[0x2743DB520](&v9, v2);
  if (v9)
  {
    v3 = *(v9 + 8);
    v4 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
  }

  v5 = &Inspector::fromProtocolString<RWIProtocolPageResourceType>(WTF::String const&)::mappings;
  v6 = 288;
  do
  {
    if (WTF::operator==(v3, v4, *v5, v5[1]))
    {
      goto LABEL_8;
    }

    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  do
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_8:
    ;
  }

  while (!v6);
  [(RWIProtocolCSSStyleSheetHeader *)v5 origin];
  return v10;
}

- (void)setMimeType:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrameResource;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"mimeType"];
}

- (NSString)mimeType
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrameResource;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"mimeType"];

  return v2;
}

- (BOOL)failed
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrameResource;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"failed"];
}

- (BOOL)canceled
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrameResource;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"canceled"];
}

- (void)setSourceMapURL:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrameResource;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"sourceMapURL"];
}

- (NSString)sourceMapURL
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrameResource;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"sourceMapURL"];

  return v2;
}

- (void)setTargetId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrameResource;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"targetId"];
}

- (NSString)targetId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrameResource;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"targetId"];

  return v2;
}

@end