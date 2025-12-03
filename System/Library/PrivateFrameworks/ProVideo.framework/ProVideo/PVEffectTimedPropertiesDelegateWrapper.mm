@interface PVEffectTimedPropertiesDelegateWrapper
- (BOOL)isEqual:(id)equal;
- (PVEffectTimedPropertiesDelegate)timedPropertiesDelegate;
- (PVEffectTimedPropertiesDelegateWrapper)initWithTimedPropertiesDelegate:(id)delegate supportedTimedPropertyGroups:(id)groups userContext:(id)context;
- (unint64_t)hash;
@end

@implementation PVEffectTimedPropertiesDelegateWrapper

- (PVEffectTimedPropertiesDelegateWrapper)initWithTimedPropertiesDelegate:(id)delegate supportedTimedPropertyGroups:(id)groups userContext:(id)context
{
  delegateCopy = delegate;
  groupsCopy = groups;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = PVEffectTimedPropertiesDelegateWrapper;
  v11 = [(PVEffectTimedPropertiesDelegateWrapper *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PVEffectTimedPropertiesDelegateWrapper *)v11 setTimedPropertiesDelegate:delegateCopy];
    [(PVEffectTimedPropertiesDelegateWrapper *)v12 setSupportedTimedPropertyGroups:groupsCopy];
    [(PVEffectTimedPropertiesDelegateWrapper *)v12 setUserContext:contextCopy];
    v13 = objc_opt_respondsToSelector();
    [(PVEffectTimedPropertiesDelegateWrapper *)v12 setWantsStartStopNotifications:v13 & objc_opt_respondsToSelector() & 1];
  }

  return v12;
}

- (unint64_t)hash
{
  timedPropertiesDelegate = [(PVEffectTimedPropertiesDelegateWrapper *)self timedPropertiesDelegate];
  v3 = [timedPropertiesDelegate hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    timedPropertiesDelegate = [(PVEffectTimedPropertiesDelegateWrapper *)self timedPropertiesDelegate];
    timedPropertiesDelegate2 = [equalCopy timedPropertiesDelegate];
    v7 = [timedPropertiesDelegate isEqual:timedPropertiesDelegate2];
  }

  else
  {
    timedPropertiesDelegate = [(PVEffectTimedPropertiesDelegateWrapper *)self timedPropertiesDelegate];
    v7 = [timedPropertiesDelegate isEqual:equalCopy];
  }

  return v7;
}

- (PVEffectTimedPropertiesDelegate)timedPropertiesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_timedPropertiesDelegate);

  return WeakRetained;
}

@end