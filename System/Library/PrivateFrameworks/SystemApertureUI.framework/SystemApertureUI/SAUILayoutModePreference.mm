@interface SAUILayoutModePreference
- (NSString)description;
- (SAUILayoutModePreference)initWithPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason;
@end

@implementation SAUILayoutModePreference

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = SAUIStringFromElementViewLayoutMode(self->_preferredLayoutMode);
  v6 = SAUIStringFromLayoutModeChangeReason(self->_layoutModeChangeReason);
  v7 = [v3 initWithFormat:@"<%@: %p; _preferredLayoutMode: %@; _layoutModeChangeReason: %@>", v4, self, v5, v6];

  return v7;
}

- (SAUILayoutModePreference)initWithPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  v7.receiver = self;
  v7.super_class = SAUILayoutModePreference;
  result = [(SAUILayoutModePreference *)&v7 init];
  if (result)
  {
    result->_preferredLayoutMode = mode;
    result->_layoutModeChangeReason = reason;
  }

  return result;
}

@end