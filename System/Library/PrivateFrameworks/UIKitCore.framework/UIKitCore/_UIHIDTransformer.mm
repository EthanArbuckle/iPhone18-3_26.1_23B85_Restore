@interface _UIHIDTransformer
- (CGSize)canvasSize;
- (_UIHIDTransformer)initWithRunLoop:(__CFRunLoop *)loop;
- (id)_inputEventsForHIDEvent:(__IOHIDEvent *)event contextId:(unsigned int)id;
- (id)drainOutputHIDEvents;
- (id)handleHIDEvent:(__IOHIDEvent *)event;
- (void)addOutputHIDEvent:(id)event injected:(BOOL)injected;
- (void)pathCollection;
- (void)scaleEventTracker;
@end

@implementation _UIHIDTransformer

- (id)drainOutputHIDEvents
{
  v3 = [(NSMutableArray *)self->_hidEvents copy];
  [(NSMutableArray *)self->_hidEvents removeAllObjects];

  return v3;
}

- (_UIHIDTransformer)initWithRunLoop:(__CFRunLoop *)loop
{
  v16.receiver = self;
  v16.super_class = _UIHIDTransformer;
  v4 = [(_UIHIDTransformer *)&v16 init];
  if (v4)
  {
    v5 = objc_opt_new();
    hidEvents = v4->_hidEvents;
    v4->_hidEvents = v5;

    v7 = objc_opt_new();
    hidContextByContextId = v4->_hidContextByContextId;
    v4->_hidContextByContextId = v7;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = _UIWindowDidDetachContextNotification;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37___UIHIDTransformer_initWithRunLoop___block_invoke;
    v13[3] = &unk_1E711EBD8;
    loopCopy = loop;
    v14 = v4;
    v11 = [defaultCenter addObserverForName:v10 object:0 queue:0 usingBlock:v13];
  }

  return v4;
}

- (void)pathCollection
{
  if (self)
  {
    selfCopy = self;
    v3 = self[1];
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_pathCollection object:selfCopy file:@"_UIHIDTransformer.m" lineNumber:425 description:@"Attempting to access a path collection when no hidEvent is being processed"];

      v3 = selfCopy[1];
    }

    v4 = *(v3 + 8);
    if (!v4)
    {
      v4 = objc_opt_new();
      v5 = selfCopy[1];
      v6 = *(v5 + 8);
      *(v5 + 8) = v4;
    }

    self = v4;
    v1 = vars8;
  }

  return self;
}

- (void)scaleEventTracker
{
  if (self)
  {
    selfCopy = self;
    v3 = self[1];
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_scaleEventTracker object:selfCopy file:@"_UIHIDTransformer.m" lineNumber:431 description:@"Attempting to access a scaleEventTracker when no hidEvent is being processed"];

      v3 = selfCopy[1];
    }

    v4 = *(v3 + 16);
    if (!v4)
    {
      v4 = objc_opt_new();
      v5 = selfCopy[1];
      v6 = *(v5 + 16);
      *(v5 + 16) = v4;
    }

    self = v4;
    v1 = vars8;
  }

  return self;
}

- (id)handleHIDEvent:(__IOHIDEvent *)event
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = BKSHIDEventGetBaseAttributes();
  contextID = [v5 contextID];

  self->_hidEvent = event;
  hidContextByContextId = self->_hidContextByContextId;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
  v9 = [(NSMutableDictionary *)hidContextByContextId objectForKeyedSubscript:v8];
  hidContext = self->_hidContext;
  self->_hidContext = v9;

  if (!self->_hidContext)
  {
    v11 = objc_opt_new();
    v12 = self->_hidContext;
    self->_hidContext = v11;

    v13 = self->_hidContextByContextId;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
    [(NSMutableDictionary *)v13 setObject:v11 forKeyedSubscript:v14];

    self->_hidContext->state = 1;
  }

  self->_hidContext->remoteTimestamp = BKSHIDEventGetRemoteTimestamp();
  v15 = [(_UIHIDTransformer *)self _inputEventsForHIDEvent:event contextId:contextID];
  if ([v15 count] == 1)
  {
    v16 = [v15 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v16 unsignedIntegerValue];

    if (!unsignedIntegerValue)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDTransformer", &qword_1ED4A00F8);
      if (*CategoryCachedImpl)
      {
        v44 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          eventCopy = event;
          _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_ERROR, "No input event specified for HIDEvent:\n%@", buf, 0xCu);
        }
      }
    }
  }

  v19 = v15;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v49 objects:buf count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v50;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v22 |= 1 << [*(*(&v49 + 1) + 8 * i) unsignedIntegerValue];
      }

      v21 = [v19 countByEnumeratingWithState:&v49 objects:buf count:16];
    }

    while (v21);
  }

  else
  {
    LODWORD(v22) = 0;
  }

  kdebug_trace();
  if (qword_1ED4A0110 != -1)
  {
    dispatch_once(&qword_1ED4A0110, &__block_literal_global_490);
  }

  if (_MergedGlobals_1259 == 1)
  {
    v25 = objc_opt_new();
    for (j = 0; j != 9; ++j)
    {
      if ((v22 & (1 << j)) != 0)
      {
        if ([v25 length])
        {
          v27 = @", ";
        }

        else
        {
          v27 = &stru_1EFB14550;
        }

        [v25 appendFormat:@"%s%s", -[__CFString UTF8String](v27, "UTF8String"), -[__CFString UTF8String](_UIHIDInputEventString[j], "UTF8String")];
      }
    }

    uTF8String = [v25 UTF8String];
    v29 = *(__UILogGetCategoryCachedImpl("HIDTransformer", &qword_1ED4A0100) + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_hidContext;
      v31 = _UIStateString[v30->state];
      v32 = v31;
      v33 = v29;
      uTF8String2 = [v31 UTF8String];
      *buf = 134218498;
      eventCopy = v30;
      v56 = 2080;
      v57 = uTF8String2;
      v58 = 2080;
      v59 = uTF8String;
      _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_DEFAULT, "State machine: hidContext: %p; state: %s; events for event: %s", buf, 0x20u);
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = v19;
  v36 = [v35 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v46;
    do
    {
      v39 = 0;
      do
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(v35);
        }

        unsignedIntegerValue2 = [*(*(&v45 + 1) + 8 * v39) unsignedIntegerValue];
        if (qword_1ED4A0120 != -1)
        {
          dispatch_once(&qword_1ED4A0120, &__block_literal_global_161);
        }

        handleEvent(&xmmword_1ED4A0130, self->_hidContext->state, unsignedIntegerValue2, self, &self->_hidContext->state);
        ++v39;
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v37);
  }

  self->_hidEvent = 0;
  v41 = self->_hidContext;
  self->_hidContext = 0;

  drainOutputHIDEvents = [(_UIHIDTransformer *)self drainOutputHIDEvents];

  return drainOutputHIDEvents;
}

- (id)_inputEventsForHIDEvent:(__IOHIDEvent *)event contextId:(unsigned int)id
{
  v4 = *&id;
  v44 = *MEMORY[0x1E69E9840];
  v5 = _UIEventHIDShouldTransformEvent();
  Type = IOHIDEventGetType();
  v7 = [UIWindow _windowWithContextId:v4];
  screen = [v7 screen];
  _userInterfaceIdiom = [screen _userInterfaceIdiom];

  kdebug_trace();
  if (qword_1ED4A0110 != -1)
  {
    dispatch_once(&qword_1ED4A0110, &__block_literal_global_490);
  }

  if (_MergedGlobals_1259 == 1)
  {
    v10 = *(__UILogGetCategoryCachedImpl("HIDTransformer", &qword_1ED4A0108) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v35 = v5;
      v36 = 1024;
      v37 = Type;
      v38 = 1024;
      v39 = v4;
      v40 = 2048;
      v41 = v7;
      v42 = 2048;
      v43 = _userInterfaceIdiom;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Should consider event transformation: %d; backing type: %i; contextId: 0x%X; window: %p; idiom: %li", buf, 0x28u);
    }
  }

  if (!v5)
  {
    v15 = &unk_1EFE2D3D8;
    goto LABEL_70;
  }

  _supportsIndirectInputEvents = [UIApp _supportsIndirectInputEvents];
  if (_supportsIndirectInputEvents)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v12 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1 || (v32 = _UIInternalPreference_ShouldIncludeTranslationHIDEvent, _UIInternalPreferencesRevisionVar == _UIInternalPreference_ShouldIncludeTranslationHIDEvent))
    {
      v13 = 1;
    }

    else
    {
      do
      {
        v13 = v12 >= v32;
        if (v12 < v32)
        {
          break;
        }

        _UIInternalPreferenceSync(v12, &_UIInternalPreference_ShouldIncludeTranslationHIDEvent, @"ShouldIncludeTranslationHIDEvent", _UIInternalPreferenceUpdateBool);
        v32 = _UIInternalPreference_ShouldIncludeTranslationHIDEvent;
      }

      while (v12 != _UIInternalPreference_ShouldIncludeTranslationHIDEvent);
    }

    if (byte_1ED48A8D4)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  if (IOHIDEventGetType() != 17)
  {
    v26 = &unk_1EFE2D3D8;
    goto LABEL_69;
  }

  Children = IOHIDEventGetChildren();
  if (!Children || (v17 = Children, Count = CFArrayGetCount(Children), Count < 1))
  {
    v20 = 0;
    goto LABEL_57;
  }

  v19 = Count;
  v20 = 0;
  for (i = 0; i != v19; ++i)
  {
    CFArrayGetValueAtIndex(v17, i);
    v22 = IOHIDEventGetType();
    if (_supportsIndirectInputEvents)
    {
      if (v22 <= 5)
      {
        if (v22 == 4)
        {
          if (!v20)
          {
            v20 = objc_opt_new();
          }

          if (v14)
          {
            goto LABEL_43;
          }
        }

        else if (v22 == 5)
        {
          goto LABEL_31;
        }

        continue;
      }

      if (v22 == 7)
      {
LABEL_31:
        if (!v20)
        {
          v20 = objc_opt_new();
        }

LABEL_43:
        if ([v20 containsObject:&unk_1EFE32D58])
        {
          continue;
        }

        v23 = v20;
        v24 = &unk_1EFE32D58;
        goto LABEL_50;
      }

      goto LABEL_34;
    }

    if (v22 > 5)
    {
      if (v22 == 7)
      {
LABEL_38:
        if (!v20)
        {
          v20 = objc_opt_new();
        }

LABEL_48:
        if ([v20 containsObject:&unk_1EFE32D70])
        {
          continue;
        }

        v23 = v20;
        v24 = &unk_1EFE32D70;
LABEL_50:
        [v23 addObject:v24];
        continue;
      }

LABEL_34:
      if (v22 != 6)
      {
        continue;
      }

      if (!v20)
      {
        v20 = objc_opt_new();
      }

      v23 = v20;
      v24 = &unk_1EFE32D40;
      goto LABEL_50;
    }

    if (v22 == 4)
    {
      if (!v20)
      {
        v20 = objc_opt_new();
      }

      if (v14)
      {
        goto LABEL_48;
      }
    }

    else if (v22 == 5)
    {
      goto LABEL_38;
    }
  }

  if (v20)
  {
    if ([v20 isEqualToArray:&unk_1EFE2D3F0])
    {
      v25 = 0;
      goto LABEL_58;
    }

LABEL_67:
    v20 = v20;
    v26 = v20;
    goto LABEL_68;
  }

LABEL_57:
  v25 = 1;
LABEL_58:
  if (IOHIDEventGetIntegerValue())
  {
    v27 = 3;
  }

  else
  {
    v28 = BKSHIDEventGetPointerAttributes();
    if ([v28 pointerState] == 3)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }
  }

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
  v30 = v29;
  if ((v25 & 1) == 0)
  {
    [v20 addObject:v29];

    goto LABEL_67;
  }

  v33 = v29;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];

LABEL_68:
LABEL_69:
  v15 = v26;
LABEL_70:

  return v15;
}

- (void)addOutputHIDEvent:(id)event injected:(BOOL)injected
{
  injectedCopy = injected;
  eventCopy = event;
  if (eventCopy)
  {
    v7 = eventCopy;
    if (injectedCopy)
    {
      IOHIDEventSetIntegerValue();
    }

    if (self->_hidContext->remoteTimestamp)
    {
      BKSHIDEventSetRemoteTimestamp();
    }

    [(NSMutableArray *)self->_hidEvents addObject:v7];
    eventCopy = v7;
  }
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end