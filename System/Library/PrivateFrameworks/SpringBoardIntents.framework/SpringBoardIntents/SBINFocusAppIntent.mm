@interface SBINFocusAppIntent
- (BOOL)isEqual:(id)equal;
- (SBINFocusAppIntent)initWithModeIdentifier:(id)identifier systemContext:(id)context;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBINFocusAppIntent

- (SBINFocusAppIntent)initWithModeIdentifier:(id)identifier systemContext:(id)context
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SBINFocusAppIntent;
  v8 = [(SBINAppIntent *)&v11 initWithIdentifier:@"Focus" systemContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_modeIdentifier, identifier);
  }

  return v9;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SBINFocusAppIntent_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_279D12120;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

uint64_t __51__SBINFocusAppIntent_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = SBINFocusAppIntent;
  objc_msgSendSuper2(&v4, sel_appendDescriptionToFormatter_, v2);
  return [*(a1 + 32) appendString:*(*(a1 + 40) + 24) withName:@"modeIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = SBINFocusAppIntent;
  if ([(SBINAppIntent *)&v11 isEqual:equalCopy]&& (objc_opt_self(), v5 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    modeIdentifier = self->_modeIdentifier;
    v8 = equalCopy[3];
    v9 = BSEqualStrings();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SBINFocusAppIntent;
  v3 = [(SBINAppIntent *)&v5 hash];
  return [(NSString *)self->_modeIdentifier hash]^ v3;
}

@end