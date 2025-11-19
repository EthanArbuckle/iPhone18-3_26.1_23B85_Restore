@interface _UIEventSessionTouchAction
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)actionType;
- (int64_t)mergeActionIfPossible:(id)a3;
@end

@implementation _UIEventSessionTouchAction

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIEventSessionTouchAction;
  result = [(_UIEventSessionAction *)&v5 copyWithZone:a3];
  *(result + 9) = self->_tapDragState;
  *(result + 10) = self->_numFingers;
  *(result + 11) = self->_windowSection;
  return result;
}

- (int64_t)mergeActionIfPossible:(id)a3
{
  v4 = a3;
  v5 = [v4 uiInterfaceOrientation];
  if (v5 == -[_UIEventSessionAction uiInterfaceOrientation](self, "uiInterfaceOrientation") && (v6 = [v4 hardwareKeyboardState], v6 == -[_UIEventSessionAction hardwareKeyboardState](self, "hardwareKeyboardState")) && (v7 = objc_msgSend(v4, "magicKeyboardState"), v7 == -[_UIEventSessionAction magicKeyboardState](self, "magicKeyboardState")))
  {
    v8 = [v4 asTouch];
    v9 = [v4 source];
    v10 = 0;
    if (v9 == [(_UIEventSessionAction *)self source]&& v8)
    {
      v11 = [v8 numFingers];
      if (v11 == -[_UIEventSessionTouchAction numFingers](self, "numFingers") && (v12 = [v8 tapDragState], v12 == -[_UIEventSessionTouchAction tapDragState](self, "tapDragState")) && (objc_msgSend(v8, "numFingers") != 1 || objc_msgSend(v8, "tapDragState") != 1 || (v13 = objc_msgSend(v8, "windowSection"), v13 == -[_UIEventSessionTouchAction windowSection](self, "windowSection"))))
      {
        if (os_variant_has_internal_diagnostics())
        {
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &mergeActionIfPossible____s_category_231);
          if (*CategoryCachedImpl)
          {
            v16 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *v17 = 0;
              _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Successfully merged actions", v17, 2u);
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

- (id)description
{
  v11.receiver = self;
  v11.super_class = _UIEventSessionTouchAction;
  v3 = [(_UIEventSessionAction *)&v11 description];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" tapDragState = %lu", -[_UIEventSessionTouchAction tapDragState](self, "tapDragState")];
  [v4 addObject:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" numFingers = %lu", -[_UIEventSessionTouchAction numFingers](self, "numFingers")];
  [v4 addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" windowSection = %lu", -[_UIEventSessionTouchAction windowSection](self, "windowSection")];
  [v4 addObject:v7];

  if ([v4 count])
  {
    v8 = [v4 componentsJoinedByString:{@", "}];
    v9 = [v3 stringByAppendingFormat:@" %@", v8];

    v3 = v9;
  }

  return v3;
}

- (int64_t)actionType
{
  v3 = [(_UIEventSessionAction *)self source];
  if (v3 == 4)
  {
    numFingers = self->_numFingers;
    if (numFingers == 2)
    {
      return 19;
    }

    if (numFingers != 1)
    {
      return 20;
    }

    windowSection = self->_windowSection;
    v11 = windowSection - 1;
    v6 = windowSection + 14;
    v7 = v11 >= 3;
    v8 = 18;
LABEL_11:
    if (v7)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  if (v3 != 1)
  {
    return 21;
  }

  v4 = self->_numFingers;
  tapDragState = self->_tapDragState;
  switch(v4)
  {
    case 3:
      v13 = tapDragState == 1;
      v14 = 8;
      break;
    case 2:
      v13 = tapDragState == 1;
      v14 = 6;
      break;
    case 1:
      if (tapDragState != 1)
      {
        return 5;
      }

      v6 = self->_windowSection;
      v7 = (v6 - 1) >= 3;
      v8 = 4;
      goto LABEL_11;
    default:
      v13 = tapDragState == 1;
      v14 = 10;
      break;
  }

  if (v13)
  {
    return v14;
  }

  else
  {
    return v14 + 1;
  }
}

@end