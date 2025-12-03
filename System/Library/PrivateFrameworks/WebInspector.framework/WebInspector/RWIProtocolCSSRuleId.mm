@interface RWIProtocolCSSRuleId
- (NSString)styleSheetId;
- (int)ordinal;
- (void)setStyleSheetId:(id)id;
@end

@implementation RWIProtocolCSSRuleId

- (void)setStyleSheetId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRuleId;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"styleSheetId"];
}

- (NSString)styleSheetId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSRuleId;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"styleSheetId"];

  return v2;
}

- (int)ordinal
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRuleId;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"ordinal"];
}

@end