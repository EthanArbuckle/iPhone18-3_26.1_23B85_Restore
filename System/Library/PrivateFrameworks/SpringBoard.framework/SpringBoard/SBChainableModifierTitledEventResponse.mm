@interface SBChainableModifierTitledEventResponse
+ (id)responseWithTitle:(id)title;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBChainableModifierTitledEventResponse

+ (id)responseWithTitle:(id)title
{
  titleCopy = title;
  v4 = objc_alloc_init(SBChainableModifierTitledEventResponse);
  v5 = [titleCopy copy];

  title = v4->_title;
  v4->_title = v5;

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v6.receiver = self;
  v6.super_class = SBChainableModifierTitledEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v6 descriptionBuilderWithMultilinePrefix:prefix];
  [v4 appendString:self->_title withName:@"title"];

  return v4;
}

@end