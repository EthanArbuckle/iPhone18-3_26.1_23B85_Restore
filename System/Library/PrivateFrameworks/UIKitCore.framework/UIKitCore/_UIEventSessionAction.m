@interface _UIEventSessionAction
+ (id)stringValueForActionType:(int64_t)a3;
+ (id)stringValueForSource:(int64_t)a3;
+ (int64_t)getUIEventSourceForUITouchType:(int64_t)a3;
- (NSString)metadata;
- (_UIEventSessionContextualAction)asContextualPress;
- (_UIEventSessionHoverAction)asHover;
- (_UIEventSessionKeyCommandAction)asKeyCommand;
- (_UIEventSessionScrollAction)asScroll;
- (_UIEventSessionTapAction)asTap;
- (_UIEventSessionTextSelectionAction)asTextSelection;
- (_UIEventSessionTouchAction)asTouch;
- (_UIEventSessionTypingAction)asTyping;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)mergeActionIfPossible:(id)a3;
@end

@implementation _UIEventSessionAction

- (_UIEventSessionTouchAction)asTouch
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIEventSessionTapAction)asTap
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIEventSessionScrollAction)asScroll
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIEventSessionContextualAction)asContextualPress
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIEventSessionTypingAction)asTyping
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIEventSessionTextSelectionAction)asTextSelection
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIEventSessionKeyCommandAction)asKeyCommand
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIEventSessionHoverAction)asHover
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 8) = self->_source;
  objc_storeStrong((v4 + 24), self->_sessionID);
  *(v4 + 56) = self->_sequenceNumber;
  *(v4 + 64) = self->_actionCountFromMergedActions;
  *(v4 + 32) = self->_uiInterfaceOrientation;
  *(v4 + 48) = self->_hardwareKeyboardState;
  *(v4 + 40) = self->_magicKeyboardState;
  return v4;
}

- (int64_t)mergeActionIfPossible:(id)a3
{
  v4 = a3;
  v5 = [v4 uiInterfaceOrientation];
  if (v5 == -[_UIEventSessionAction uiInterfaceOrientation](self, "uiInterfaceOrientation") && (v6 = [v4 hardwareKeyboardState], v6 == -[_UIEventSessionAction hardwareKeyboardState](self, "hardwareKeyboardState")) && (v7 = objc_msgSend(v4, "magicKeyboardState"), v7 == -[_UIEventSessionAction magicKeyboardState](self, "magicKeyboardState")) && (v8 = objc_msgSend(v4, "source"), v8 == -[_UIEventSessionAction source](self, "source")) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (os_variant_has_internal_diagnostics())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &mergeActionIfPossible____s_category);
      if (*CategoryCachedImpl)
      {
        v12 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Successfully merged actions", v13, 2u);
        }
      }
    }

    -[_UIEventSessionAction setActionCountFromMergedActions:](self, "setActionCountFromMergedActions:", -[_UIEventSessionAction actionCountFromMergedActions](self, "actionCountFromMergedActions") + [v4 actionCount]);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = _UIEventSessionAction;
  v3 = [(_UIEventSessionAction *)&v14 description];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [_UIEventSessionAction stringValueForSource:[(_UIEventSessionAction *)self source]];
  v7 = [v5 stringWithFormat:@" source = %@", v6];
  [v4 addObject:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uiInterfaceOrientation = %lu", -[_UIEventSessionAction uiInterfaceOrientation](self, "uiInterfaceOrientation")];
  [v4 addObject:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hardwareKeyboardState = %lu", -[_UIEventSessionAction hardwareKeyboardState](self, "hardwareKeyboardState")];
  [v4 addObject:v9];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"magicKeyboardState = %lu", -[_UIEventSessionAction magicKeyboardState](self, "magicKeyboardState")];
  [v4 addObject:v10];

  if ([v4 count])
  {
    v11 = [v4 componentsJoinedByString:{@", "}];
    v12 = [v3 stringByAppendingFormat:@" %@", v11];

    v3 = v12;
  }

  return v3;
}

- (NSString)metadata
{
  v2 = [(_UIEventSessionAction *)self source];

  return [_UIEventSessionAction stringValueForSource:v2];
}

+ (int64_t)getUIEventSourceForUITouchType:(int64_t)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (id)stringValueForSource:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"unspecified";
  }

  else
  {
    return off_1E71144C8[a3 - 1];
  }
}

+ (id)stringValueForActionType:(int64_t)a3
{
  if ((a3 - 1) > 0x1B)
  {
    return @"Generic";
  }

  else
  {
    return off_1E71144F8[a3 - 1];
  }
}

@end