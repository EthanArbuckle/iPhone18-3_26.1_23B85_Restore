@interface SBUpdateLayoutSwitcherEventResponse
+ (id)setNeedsLayout;
- (SBUpdateLayoutSwitcherEventResponse)initWithOptions:(unint64_t)options updateMode:(int64_t)mode;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBUpdateLayoutSwitcherEventResponse

- (SBUpdateLayoutSwitcherEventResponse)initWithOptions:(unint64_t)options updateMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = SBUpdateLayoutSwitcherEventResponse;
  result = [(SBChainableModifierEventResponse *)&v7 init];
  if (result)
  {
    result->_options = options;
    result->_updateMode = mode;
  }

  return result;
}

+ (id)setNeedsLayout
{
  v2 = [[self alloc] initWithOptions:64 updateMode:0];

  return v2;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = SBUpdateLayoutSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v9 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = v4;
  options = self->_options;
  if ((options & 2) != 0)
  {
    [v4 appendString:@"updateVisibleItems" withName:0];
    options = self->_options;
    if ((options & 4) == 0)
    {
LABEL_3:
      if ((options & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((options & 4) == 0)
  {
    goto LABEL_3;
  }

  [v5 appendString:@"layout" withName:0];
  options = self->_options;
  if ((options & 8) == 0)
  {
LABEL_4:
    if ((options & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v5 appendString:@"style" withName:0];
  if ((self->_options & 0x40) != 0)
  {
LABEL_5:
    [v5 appendString:@"setNeedsLayout" withName:0];
  }

LABEL_6:
  v7 = SBStringFromAnimationUpdateMode();
  [v5 appendString:v7 withName:@"mode"];

  return v5;
}

@end