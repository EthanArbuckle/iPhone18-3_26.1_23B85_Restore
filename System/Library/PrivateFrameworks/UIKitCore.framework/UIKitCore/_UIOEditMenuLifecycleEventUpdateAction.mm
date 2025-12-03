@interface _UIOEditMenuLifecycleEventUpdateAction
- (_UIOEditMenuLifecycleEventUpdateAction)initWithMenuIdentifier:(id)identifier event:(int64_t)event;
- (id)identifier;
- (int64_t)lifecycleEvent;
- (void)handleClientActionToOverlayService:(id)service;
@end

@implementation _UIOEditMenuLifecycleEventUpdateAction

- (_UIOEditMenuLifecycleEventUpdateAction)initWithMenuIdentifier:(id)identifier event:(int64_t)event
{
  identifierCopy = identifier;
  v7 = objc_opt_new();
  [v7 setObject:identifierCopy forSetting:0];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:event];
  [v7 setObject:v8 forSetting:1];

  v11.receiver = self;
  v11.super_class = _UIOEditMenuLifecycleEventUpdateAction;
  v9 = [(_UIOEditMenuLifecycleEventUpdateAction *)&v11 initWithInfo:v7 responder:0];

  return v9;
}

- (id)identifier
{
  info = [(_UIOEditMenuLifecycleEventUpdateAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (int64_t)lifecycleEvent
{
  info = [(_UIOEditMenuLifecycleEventUpdateAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)handleClientActionToOverlayService:(id)service
{
  serviceCopy = service;
  delegate = [serviceCopy delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [delegate handleLifecycleEvent:{-[_UIOEditMenuLifecycleEventUpdateAction lifecycleEvent](self, "lifecycleEvent")}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIOEditMenuLifecycleEventUpdateAction.m" lineNumber:47 description:{@"Cannot handle response to unknown overlay service: %@", serviceCopy}];
  }
}

@end