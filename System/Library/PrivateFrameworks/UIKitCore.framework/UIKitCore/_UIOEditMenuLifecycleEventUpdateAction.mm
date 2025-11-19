@interface _UIOEditMenuLifecycleEventUpdateAction
- (_UIOEditMenuLifecycleEventUpdateAction)initWithMenuIdentifier:(id)a3 event:(int64_t)a4;
- (id)identifier;
- (int64_t)lifecycleEvent;
- (void)handleClientActionToOverlayService:(id)a3;
@end

@implementation _UIOEditMenuLifecycleEventUpdateAction

- (_UIOEditMenuLifecycleEventUpdateAction)initWithMenuIdentifier:(id)a3 event:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setObject:v6 forSetting:0];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v7 setObject:v8 forSetting:1];

  v11.receiver = self;
  v11.super_class = _UIOEditMenuLifecycleEventUpdateAction;
  v9 = [(_UIOEditMenuLifecycleEventUpdateAction *)&v11 initWithInfo:v7 responder:0];

  return v9;
}

- (id)identifier
{
  v2 = [(_UIOEditMenuLifecycleEventUpdateAction *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

- (int64_t)lifecycleEvent
{
  v2 = [(_UIOEditMenuLifecycleEventUpdateAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (void)handleClientActionToOverlayService:(id)a3
{
  v7 = a3;
  v5 = [v7 delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 handleLifecycleEvent:{-[_UIOEditMenuLifecycleEventUpdateAction lifecycleEvent](self, "lifecycleEvent")}];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIOEditMenuLifecycleEventUpdateAction.m" lineNumber:47 description:{@"Cannot handle response to unknown overlay service: %@", v7}];
  }
}

@end