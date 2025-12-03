@interface SBCustomPlaceholderIcon
- (SBCustomPlaceholderIcon)initWithReason:(id)reason;
- (void)_setPropertiesFromIcon:(id)icon;
@end

@implementation SBCustomPlaceholderIcon

- (SBCustomPlaceholderIcon)initWithReason:(id)reason
{
  reasonCopy = reason;
  reasonCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Placeholder: %@", reasonCopy];
  v10.receiver = self;
  v10.super_class = SBCustomPlaceholderIcon;
  v6 = [(SBPlaceholderIcon *)&v10 _initWithNodeIdentifier:reasonCopy icon:0];
  if (v6)
  {
    v7 = [reasonCopy copy];
    reason = v6->_reason;
    v6->_reason = v7;
  }

  return v6;
}

- (void)_setPropertiesFromIcon:(id)icon
{
  iconCopy = icon;
  v9.receiver = self;
  v9.super_class = SBCustomPlaceholderIcon;
  [(SBPlaceholderIcon *)&v9 _setPropertiesFromIcon:iconCopy];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [iconCopy[15] copy];
    reason = self->_reason;
    self->_reason = v7;
  }
}

@end