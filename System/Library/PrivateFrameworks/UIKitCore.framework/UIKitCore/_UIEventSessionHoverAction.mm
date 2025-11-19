@interface _UIEventSessionHoverAction
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)actionType;
- (int64_t)mergeActionIfPossible:(id)a3;
@end

@implementation _UIEventSessionHoverAction

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIEventSessionHoverAction;
  result = [(_UIEventSessionAction *)&v5 copyWithZone:a3];
  *(result + 9) = self->_tapDragState;
  *(result + 10) = self->_numFingers;
  return result;
}

- (int64_t)mergeActionIfPossible:(id)a3
{
  v4 = a3;
  v5 = [v4 uiInterfaceOrientation];
  if (v5 == -[_UIEventSessionAction uiInterfaceOrientation](self, "uiInterfaceOrientation") && (v6 = [v4 hardwareKeyboardState], v6 == -[_UIEventSessionAction hardwareKeyboardState](self, "hardwareKeyboardState")) && (v7 = objc_msgSend(v4, "magicKeyboardState"), v7 == -[_UIEventSessionAction magicKeyboardState](self, "magicKeyboardState")))
  {
    v8 = [v4 asHover];
    v9 = [v4 source];
    v10 = 0;
    if (v9 == [(_UIEventSessionAction *)self source]&& v8)
    {
      v11 = [v8 numFingers];
      if (v11 == [(_UIEventSessionHoverAction *)self numFingers])
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

        -[_UIEventSessionAction setActionCountFromMergedActions:](self, "setActionCountFromMergedActions:", -[_UIEventSessionAction actionCountFromMergedActions](self, "actionCountFromMergedActions") + [v4 actionCount]);
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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIEventSessionAction.m" lineNumber:498 description:@"Received hover event of unsupported source"];

    return 28;
  }
}

@end