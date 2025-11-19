@interface PVEffectTimedPropertiesDelegateWrapper
- (BOOL)isEqual:(id)a3;
- (PVEffectTimedPropertiesDelegate)timedPropertiesDelegate;
- (PVEffectTimedPropertiesDelegateWrapper)initWithTimedPropertiesDelegate:(id)a3 supportedTimedPropertyGroups:(id)a4 userContext:(id)a5;
- (unint64_t)hash;
@end

@implementation PVEffectTimedPropertiesDelegateWrapper

- (PVEffectTimedPropertiesDelegateWrapper)initWithTimedPropertiesDelegate:(id)a3 supportedTimedPropertyGroups:(id)a4 userContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PVEffectTimedPropertiesDelegateWrapper;
  v11 = [(PVEffectTimedPropertiesDelegateWrapper *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PVEffectTimedPropertiesDelegateWrapper *)v11 setTimedPropertiesDelegate:v8];
    [(PVEffectTimedPropertiesDelegateWrapper *)v12 setSupportedTimedPropertyGroups:v9];
    [(PVEffectTimedPropertiesDelegateWrapper *)v12 setUserContext:v10];
    v13 = objc_opt_respondsToSelector();
    [(PVEffectTimedPropertiesDelegateWrapper *)v12 setWantsStartStopNotifications:v13 & objc_opt_respondsToSelector() & 1];
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(PVEffectTimedPropertiesDelegateWrapper *)self timedPropertiesDelegate];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PVEffectTimedPropertiesDelegateWrapper *)self timedPropertiesDelegate];
    v6 = [v4 timedPropertiesDelegate];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v5 = [(PVEffectTimedPropertiesDelegateWrapper *)self timedPropertiesDelegate];
    v7 = [v5 isEqual:v4];
  }

  return v7;
}

- (PVEffectTimedPropertiesDelegate)timedPropertiesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_timedPropertiesDelegate);

  return WeakRetained;
}

@end