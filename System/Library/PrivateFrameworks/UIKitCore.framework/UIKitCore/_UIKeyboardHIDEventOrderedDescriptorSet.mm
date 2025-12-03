@interface _UIKeyboardHIDEventOrderedDescriptorSet
- (id)copyWithZone:(_NSZone *)zone;
- (id)events;
- (void)_eventsByDescriptor;
- (void)_orderedDescriptors;
- (void)addEvent:(void *)event;
- (void)removeAllEvents;
- (void)removeEvent:(void *)event;
@end

@implementation _UIKeyboardHIDEventOrderedDescriptorSet

- (id)events
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ([self[2] count])
    {
      v2 = objc_opt_new();
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      _orderedDescriptors = [(_UIKeyboardHIDEventOrderedDescriptorSet *)selfCopy _orderedDescriptors];
      v4 = [_orderedDescriptors countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v13;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v13 != v6)
            {
              objc_enumerationMutation(_orderedDescriptors);
            }

            v8 = *(*(&v12 + 1) + 8 * i);
            _eventsByDescriptor = [(_UIKeyboardHIDEventOrderedDescriptorSet *)selfCopy _eventsByDescriptor];
            v10 = [_eventsByDescriptor objectForKey:{v8, v12}];

            if (v10)
            {
              [v2 addObject:v10];
            }
          }

          v5 = [_orderedDescriptors countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v5);
      }

      selfCopy = [v2 copy];
    }

    else
    {
      selfCopy = MEMORY[0x1E695E0F0];
    }
  }

  return selfCopy;
}

- (void)removeAllEvents
{
  if (self)
  {
    _orderedDescriptors = [(_UIKeyboardHIDEventOrderedDescriptorSet *)self _orderedDescriptors];
    [_orderedDescriptors removeAllObjects];

    _eventsByDescriptor = [(_UIKeyboardHIDEventOrderedDescriptorSet *)self _eventsByDescriptor];
    [_eventsByDescriptor removeAllObjects];
  }
}

- (void)_eventsByDescriptor
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = selfCopy[2];
      selfCopy[2] = v4;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_orderedDescriptors
{
  if (self)
  {
    selfCopy = self;
    v3 = self[1];
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = selfCopy[1];
      selfCopy[1] = v4;

      v3 = selfCopy[1];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIKeyboardHIDEventOrderedDescriptorSet allocWithZone:?]];
  if (v4)
  {
    v5 = [(NSMutableOrderedSet *)self->_orderedDescriptors mutableCopy];
    orderedDescriptors = v4->_orderedDescriptors;
    v4->_orderedDescriptors = v5;

    v7 = [(NSMutableDictionary *)self->_eventsByDescriptor mutableCopy];
    eventsByDescriptor = v4->_eventsByDescriptor;
    v4->_eventsByDescriptor = v7;
  }

  return v4;
}

- (void)addEvent:(void *)event
{
  v14 = *MEMORY[0x1E69E9840];
  if (event)
  {
    if (IOHIDEventGetType() == 3)
    {
      v4 = [_UIKeyboardHIDEventDescriptor descriptorWithEvent:a2];
      if (v4)
      {
        v9 = v4;
        _orderedDescriptors = [(_UIKeyboardHIDEventOrderedDescriptorSet *)event _orderedDescriptors];
        [_orderedDescriptors addObject:v9];

        _eventsByDescriptor = [(_UIKeyboardHIDEventOrderedDescriptorSet *)event _eventsByDescriptor];
        [_eventsByDescriptor setObject:a2 forKey:v9];

        v4 = v9;
      }
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v8 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v11 = objc_opt_class();
          v12 = 2112;
          v13 = a2;
          _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Invalid HID event type added to %@: %@", buf, 0x16u);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &addEvent____s_category) + 8);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v8 = v7;
        *buf = 138412546;
        v11 = objc_opt_class();
        v12 = 2112;
        v13 = a2;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Invalid HID event type added to %@: %@", buf, 0x16u);
      }
    }
  }
}

- (void)removeEvent:(void *)event
{
  if (event)
  {
    v3 = [_UIKeyboardHIDEventDescriptor descriptorWithEvent:a2];
    if (v3)
    {
      v6 = v3;
      _orderedDescriptors = [(_UIKeyboardHIDEventOrderedDescriptorSet *)event _orderedDescriptors];
      [_orderedDescriptors removeObject:v6];

      _eventsByDescriptor = [(_UIKeyboardHIDEventOrderedDescriptorSet *)event _eventsByDescriptor];
      [_eventsByDescriptor removeObjectForKey:v6];

      v3 = v6;
    }
  }
}

@end