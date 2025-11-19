@interface PPParsedCSSI
- (PPParsedCSSI)init;
@end

@implementation PPParsedCSSI

- (PPParsedCSSI)init
{
  v10.receiver = self;
  v10.super_class = PPParsedCSSI;
  v2 = [(PPParsedCSSI *)&v10 init];
  v3 = v2;
  if (v2)
  {
    identifiers = v2->_identifiers;
    v2->_identifiers = MEMORY[0x1E695E0F0];

    v5 = objc_opt_new();
    neStrings = v3->_neStrings;
    v3->_neStrings = v5;

    v7 = objc_opt_new();
    topicStrings = v3->_topicStrings;
    v3->_topicStrings = v7;
  }

  return v3;
}

@end