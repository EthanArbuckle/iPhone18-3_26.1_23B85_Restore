@interface _UIKeyboardHIDEventOrderedDescriptorSet
- (id)copyWithZone:(_NSZone *)a3;
- (id)events;
- (void)_eventsByDescriptor;
- (void)_orderedDescriptors;
- (void)addEvent:(void *)a1;
- (void)removeAllEvents;
- (void)removeEvent:(void *)a1;
@end

@implementation _UIKeyboardHIDEventOrderedDescriptorSet

- (id)events
{
  v1 = a1;
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([a1[2] count])
    {
      v2 = objc_opt_new();
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = [(_UIKeyboardHIDEventOrderedDescriptorSet *)v1 _orderedDescriptors];
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v12 + 1) + 8 * i);
            v9 = [(_UIKeyboardHIDEventOrderedDescriptorSet *)v1 _eventsByDescriptor];
            v10 = [v9 objectForKey:{v8, v12}];

            if (v10)
            {
              [v2 addObject:v10];
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v5);
      }

      v1 = [v2 copy];
    }

    else
    {
      v1 = MEMORY[0x1E695E0F0];
    }
  }

  return v1;
}

- (void)removeAllEvents
{
  if (a1)
  {
    v2 = [(_UIKeyboardHIDEventOrderedDescriptorSet *)a1 _orderedDescriptors];
    [v2 removeAllObjects];

    v3 = [(_UIKeyboardHIDEventOrderedDescriptorSet *)a1 _eventsByDescriptor];
    [v3 removeAllObjects];
  }
}

- (void)_eventsByDescriptor
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = v2[2];
      v2[2] = v4;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_orderedDescriptors
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = v2[1];
      v2[1] = v4;

      v3 = v2[1];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)addEvent:(void *)a1
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (IOHIDEventGetType() == 3)
    {
      v4 = [_UIKeyboardHIDEventDescriptor descriptorWithEvent:a2];
      if (v4)
      {
        v9 = v4;
        v5 = [(_UIKeyboardHIDEventOrderedDescriptorSet *)a1 _orderedDescriptors];
        [v5 addObject:v9];

        v6 = [(_UIKeyboardHIDEventOrderedDescriptorSet *)a1 _eventsByDescriptor];
        [v6 setObject:a2 forKey:v9];

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

- (void)removeEvent:(void *)a1
{
  if (a1)
  {
    v3 = [_UIKeyboardHIDEventDescriptor descriptorWithEvent:a2];
    if (v3)
    {
      v6 = v3;
      v4 = [(_UIKeyboardHIDEventOrderedDescriptorSet *)a1 _orderedDescriptors];
      [v4 removeObject:v6];

      v5 = [(_UIKeyboardHIDEventOrderedDescriptorSet *)a1 _eventsByDescriptor];
      [v5 removeObjectForKey:v6];

      v3 = v6;
    }
  }
}

@end