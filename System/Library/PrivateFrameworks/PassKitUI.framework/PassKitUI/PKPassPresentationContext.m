@interface PKPassPresentationContext
+ (id)contextWithWasAutomaticallySelected:(BOOL)a3 additionalPassUniqueIdentifiers:(id)a4 userInfo:(id)a5 terminalType:(int64_t)a6;
- (PKBackgroundContactlessInterfaceSessionController)backgroundSession;
- (id)description;
@end

@implementation PKPassPresentationContext

+ (id)contextWithWasAutomaticallySelected:(BOOL)a3 additionalPassUniqueIdentifiers:(id)a4 userInfo:(id)a5 terminalType:(int64_t)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v11 setAdditionalPassUniqueIdentifiers:v10];

  [(PKPassPresentationContext *)v11 setWasAutomaticallySelected:v8];
  [(PKPassPresentationContext *)v11 setUserInfo:v9];

  [(PKPassPresentationContext *)v11 setTerminalType:a6];

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