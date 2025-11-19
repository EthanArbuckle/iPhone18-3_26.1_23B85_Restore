@interface SBCustomPlaceholderIcon
- (SBCustomPlaceholderIcon)initWithReason:(id)a3;
- (void)_setPropertiesFromIcon:(id)a3;
@end

@implementation SBCustomPlaceholderIcon

- (SBCustomPlaceholderIcon)initWithReason:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Placeholder: %@", v4];
  v10.receiver = self;
  v10.super_class = SBCustomPlaceholderIcon;
  v6 = [(SBPlaceholderIcon *)&v10 _initWithNodeIdentifier:v5 icon:0];
  if (v6)
  {
    v7 = [v4 copy];
    reason = v6->_reason;
    v6->_reason = v7;
  }

  return v6;
}

- (void)_setPropertiesFromIcon:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBCustomPlaceholderIcon;
  [(SBPlaceholderIcon *)&v9 _setPropertiesFromIcon:v4];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4[15] copy];
    reason = self->_reason;
    self->_reason = v7;
  }
}

@end