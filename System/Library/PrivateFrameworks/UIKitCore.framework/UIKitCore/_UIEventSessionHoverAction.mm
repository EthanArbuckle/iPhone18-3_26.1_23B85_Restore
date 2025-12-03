@interface _UIEventSessionHoverAction
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)actionType;
- (int64_t)mergeActionIfPossible:(id)possible;
@end

@implementation _UIEventSessionHoverAction

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIEventSessionHoverAction;
  result = [(_UIEventSessionAction *)&v5 copyWithZone:zone];
  *(result + 9) = self->_tapDragState;
  *(result + 10) = self->_numFingers;
  return result;
}

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  uiInterfaceOrientation = [possibleCopy uiInterfaceOrientation];
  if (uiInterfaceOrientation == -[_UIEventSessionAction uiInterfaceOrientation](self, "uiInterfaceOrientation") && (v6 = [possibleCopy hardwareKeyboardState], v6 == -[_UIEventSessionAction hardwareKeyboardState](self, "hardwareKeyboardState")) && (v7 = objc_msgSend(possibleCopy, "magicKeyboardState"), v7 == -[_UIEventSessionAction magicKeyboardState](self, "magicKeyboardState")))
  {
    asHover = [possibleCopy asHover];
    source = [possibleCopy source];
    v10 = 0;
    if (source == [(_UIEventSessionAction *)self source]&& asHover)
    {
      numFingers = [asHover numFingers];
      if (numFingers == [(_UIEventSessionHoverAction *)self numFingers])
      {
        if (os_variant_has_internal_diagnostics())
        {
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &mergeActionIfPossible____s_category_326);
          if (*CategoryCachedImpl)
          {
            v14 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *v15 = 0;
              _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Successfully merged actions", v15, 2u);
            }
          }
        }

        -[_UIEventSessionAction setActionCountFromMergedActions:](self, "setActionCountFromMergedActions:", -[_UIEventSessionAction actionCountFromMergedActions](self, "actionCountFromMergedActions") + [possibleCopy actionCount]);
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)actionType
{
  if ([(_UIEventSessionAction *)self source]== 4)
  {
    numFingers = self->_numFingers;
    v5 = 13;
    if (numFingers != 2)
    {
      v5 = 14;
    }

    if (numFingers == 1)
    {
      return 12;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIEventSessionAction.m" lineNumber:498 description:@"Received hover event of unsupported source"];

    return 28;
  }
}

@end