@interface UIAccessibilityGamepadEventSource
- (UIAccessibilityGamepadEventSource)init;
- (id)observeGamepadEvents:(id)events;
- (void)publishGamepadEvent:(id)event;
@end

@implementation UIAccessibilityGamepadEventSource

- (UIAccessibilityGamepadEventSource)init
{
  v6.receiver = self;
  v6.super_class = UIAccessibilityGamepadEventSource;
  v2 = [(UIAccessibilityGamepadEventSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    handlers = v2->_handlers;
    v2->_handlers = v3;
  }

  return v2;
}

- (void)publishGamepadEvent:(id)event
{
  eventCopy = event;
  handlers = self->_handlers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__UIAccessibilityGamepadEventSource_publishGamepadEvent___block_invoke;
  v7[3] = &unk_1E78AB590;
  v8 = eventCopy;
  v6 = eventCopy;
  [(NSMutableArray *)handlers enumerateObjectsUsingBlock:v7];
}

- (id)observeGamepadEvents:(id)events
{
  v4 = [events copy];
  handlers = self->_handlers;
  v6 = _Block_copy(v4);
  [(NSMutableArray *)handlers addObject:v6];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v7 = get_GCObservationClass_softClass;
  v19 = get_GCObservationClass_softClass;
  if (!get_GCObservationClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __get_GCObservationClass_block_invoke;
    v15[3] = &unk_1E78AA680;
    v15[4] = &v16;
    __get_GCObservationClass_block_invoke(v15);
    v7 = v17[3];
  }

  v8 = v7;
  _Block_object_dispose(&v16, 8);
  v9 = [v7 alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__UIAccessibilityGamepadEventSource_observeGamepadEvents___block_invoke;
  v13[3] = &unk_1E78AA528;
  v13[4] = self;
  v14 = v4;
  v10 = v4;
  v11 = [v9 initWithCleanupHandler:v13];

  return v11;
}

void __58__UIAccessibilityGamepadEventSource_observeGamepadEvents___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = _Block_copy(*(a1 + 40));
  [v1 removeObject:v2];
}

@end