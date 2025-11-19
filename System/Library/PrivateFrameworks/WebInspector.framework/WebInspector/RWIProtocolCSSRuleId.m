@interface RWIProtocolCSSRuleId
- (NSString)styleSheetId;
- (int)ordinal;
- (void)setStyleSheetId:(id)a3;
@end

@implementation RWIProtocolCSSRuleId

- (void)setStyleSheetId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRuleId;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"styleSheetId"];
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