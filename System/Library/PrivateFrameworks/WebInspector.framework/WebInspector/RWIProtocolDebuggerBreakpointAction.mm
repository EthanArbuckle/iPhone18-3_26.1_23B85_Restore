@interface RWIProtocolDebuggerBreakpointAction
- (BOOL)emulateUserGesture;
- (NSString)data;
- (RWIProtocolDebuggerBreakpointAction)initWithType:(int64_t)type;
- (int)identifier;
- (int64_t)type;
- (void)setData:(id)data;
- (void)setType:(int64_t)type;
@end

@implementation RWIProtocolDebuggerBreakpointAction

- (RWIProtocolDebuggerBreakpointAction)initWithType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDebuggerBreakpointAction;
  v4 = [(RWIProtocolJSONObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(RWIProtocolDebuggerBreakpointAction *)v4 setType:type];
    v6 = v5;
  }

  return v5;
}

- (void)setType:(int64_t)type
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
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
  v5.super_class = RWIProtocolDebuggerBreakpointAction;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDebuggerBreakpointAction;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDebuggerBreakpointActionType>(WTF::String const&)::mappings;
  v6 = 96;
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

- (void)setData:(id)data
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointAction;
  [(RWIProtocolJSONObject *)&v3 setString:data forKey:@"data"];
}

- (NSString)data
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerBreakpointAction;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"data"];

  return v2;
}

- (int)identifier
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointAction;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"id"];
}

- (BOOL)emulateUserGesture
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointAction;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"emulateUserGesture"];
}

@end