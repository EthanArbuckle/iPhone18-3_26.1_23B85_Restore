@interface _UIEventSessionAction
+ (id)stringValueForActionType:(int64_t)type;
+ (id)stringValueForSource:(int64_t)source;
+ (int64_t)getUIEventSourceForUITouchType:(int64_t)type;
- (NSString)metadata;
- (_UIEventSessionContextualAction)asContextualPress;
- (_UIEventSessionHoverAction)asHover;
- (_UIEventSessionKeyCommandAction)asKeyCommand;
- (_UIEventSessionScrollAction)asScroll;
- (_UIEventSessionTapAction)asTap;
- (_UIEventSessionTextSelectionAction)asTextSelection;
- (_UIEventSessionTouchAction)asTouch;
- (_UIEventSessionTypingAction)asTyping;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)mergeActionIfPossible:(id)possible;
@end

@implementation _UIEventSessionAction

- (_UIEventSessionTouchAction)asTouch
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UIEventSessionTapAction)asTap
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UIEventSessionScrollAction)asScroll
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UIEventSessionContextualAction)asContextualPress
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UIEventSessionTypingAction)asTyping
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UIEventSessionTextSelectionAction)asTextSelection
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UIEventSessionKeyCommandAction)asKeyCommand
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UIEventSessionHoverAction)asHover
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_source;
  objc_storeStrong((v4 + 24), self->_sessionID);
  *(v4 + 56) = self->_sequenceNumber;
  *(v4 + 64) = self->_actionCountFromMergedActions;
  *(v4 + 32) = self->_uiInterfaceOrientation;
  *(v4 + 48) = self->_hardwareKeyboardState;
  *(v4 + 40) = self->_magicKeyboardState;
  return v4;
}

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  uiInterfaceOrientation = [possibleCopy uiInterfaceOrientation];
  if (uiInterfaceOrientation == -[_UIEventSessionAction uiInterfaceOrientation](self, "uiInterfaceOrientation") && (v6 = [possibleCopy hardwareKeyboardState], v6 == -[_UIEventSessionAction hardwareKeyboardState](self, "hardwareKeyboardState")) && (v7 = objc_msgSend(possibleCopy, "magicKeyboardState"), v7 == -[_UIEventSessionAction magicKeyboardState](self, "magicKeyboardState")) && (v8 = objc_msgSend(possibleCopy, "source"), v8 == -[_UIEventSessionAction source](self, "source")) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

    -[_UIEventSessionAction setActionCountFromMergedActions:](self, "setActionCountFromMergedActions:", -[_UIEventSessionAction actionCountFromMergedActions](self, "actionCountFromMergedActions") + [possibleCopy actionCount]);
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
  array = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [_UIEventSessionAction stringValueForSource:[(_UIEventSessionAction *)self source]];
  v7 = [v5 stringWithFormat:@" source = %@", v6];
  [array addObject:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uiInterfaceOrientation = %lu", -[_UIEventSessionAction uiInterfaceOrientation](self, "uiInterfaceOrientation")];
  [array addObject:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hardwareKeyboardState = %lu", -[_UIEventSessionAction hardwareKeyboardState](self, "hardwareKeyboardState")];
  [array addObject:v9];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"magicKeyboardState = %lu", -[_UIEventSessionAction magicKeyboardState](self, "magicKeyboardState")];
  [array addObject:v10];

  if ([array count])
  {
    v11 = [array componentsJoinedByString:{@", "}];
    v12 = [v3 stringByAppendingFormat:@" %@", v11];

    v3 = v12;
  }

  return v3;
}

- (NSString)metadata
{
  source = [(_UIEventSessionAction *)self source];

  return [_UIEventSessionAction stringValueForSource:source];
}

+ (int64_t)getUIEventSourceForUITouchType:(int64_t)type
{
  if (type < 4)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (id)stringValueForSource:(int64_t)source
{
  if ((source - 1) > 5)
  {
    return @"unspecified";
  }

  else
  {
    return off_1E71144C8[source - 1];
  }
}

+ (id)stringValueForActionType:(int64_t)type
{
  if ((type - 1) > 0x1B)
  {
    return @"Generic";
  }

  else
  {
    return off_1E71144F8[type - 1];
  }
}

@end