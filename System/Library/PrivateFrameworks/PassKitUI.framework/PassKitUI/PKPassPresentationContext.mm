@interface PKPassPresentationContext
+ (id)contextWithWasAutomaticallySelected:(BOOL)selected additionalPassUniqueIdentifiers:(id)identifiers userInfo:(id)info terminalType:(int64_t)type;
- (PKBackgroundContactlessInterfaceSessionController)backgroundSession;
- (id)description;
@end

@implementation PKPassPresentationContext

+ (id)contextWithWasAutomaticallySelected:(BOOL)selected additionalPassUniqueIdentifiers:(id)identifiers userInfo:(id)info terminalType:(int64_t)type
{
  selectedCopy = selected;
  infoCopy = info;
  identifiersCopy = identifiers;
  v11 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v11 setAdditionalPassUniqueIdentifiers:identifiersCopy];

  [(PKPassPresentationContext *)v11 setWasAutomaticallySelected:selectedCopy];
  [(PKPassPresentationContext *)v11 setUserInfo:infoCopy];

  [(PKPassPresentationContext *)v11 setTerminalType:type];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_wasAutomaticallySelected)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p; wasAutomaticallySelected: %@; additionalPassUniqueIdentifiers: %@; userInfo: %@; >", v4, self, v5, self->_additionalPassUniqueIdentifiers, self->_userInfo];
}

- (PKBackgroundContactlessInterfaceSessionController)backgroundSession
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundSession);

  return WeakRetained;
}

@end