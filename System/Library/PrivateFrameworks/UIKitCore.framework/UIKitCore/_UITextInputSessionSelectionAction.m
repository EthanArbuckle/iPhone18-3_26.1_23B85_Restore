@interface _UITextInputSessionSelectionAction
- (_NSRange)rangeAfter;
- (id)description;
- (int64_t)mergeActionIfPossible:(id)a3;
- (int64_t)textInputActionsType;
@end

@implementation _UITextInputSessionSelectionAction

- (int64_t)mergeActionIfPossible:(id)a3
{
  v4 = a3;
  v5 = [(_UITextInputSessionAction *)self source];
  if (v5 == [v4 source] && (v6 = -[_UITextInputSessionAction flagOptions](self, "flagOptions"), v6 == objc_msgSend(v4, "flagOptions")))
  {
    v7 = [v4 asSelection];
    if (v7 && ((-[_UITextInputSessionSelectionAction rangeAfter](self, "rangeAfter"), !v8) && (-[_UITextInputSessionAction relativeRangeBefore](self, "relativeRangeBefore"), !v9) && ([v7 rangeAfter], !v10) || (-[_UITextInputSessionSelectionAction rangeAfter](self, "rangeAfter"), v11) && (-[_UITextInputSessionAction relativeRangeBefore](self, "relativeRangeBefore"), v12) && (objc_msgSend(v7, "rangeAfter"), v13)))
    {
      v14 = [v7 rangeAfter];
      [(_UITextInputSessionSelectionAction *)self setRangeAfter:v14, v15];
      -[_UITextInputSessionAction setInputActionCountFromMergedActions:](self, "setInputActionCountFromMergedActions:", -[_UITextInputSessionAction inputActionCountFromMergedActions](self, "inputActionCountFromMergedActions") + [v7 inputActionCount]);
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = _UITextInputSessionSelectionAction;
  v3 = [(_UITextInputSessionAction *)&v11 description];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AEC0];
  v13.location = [(_UITextInputSessionSelectionAction *)self rangeAfter];
  v6 = NSStringFromRange(v13);
  v7 = [v5 stringWithFormat:@"rangeAfter=%@", v6];
  [v4 addObject:v7];

  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [v3 stringByAppendingFormat:@", %@", v8];

  return v9;
}

- (int64_t)textInputActionsType
{
  [(_UITextInputSessionSelectionAction *)self rangeAfter];
  if (v2)
  {
    return 9;
  }

  else
  {
    return 8;
  }
}

- (_NSRange)rangeAfter
{
  p_rangeAfter = &self->_rangeAfter;
  location = self->_rangeAfter.location;
  length = p_rangeAfter->length;
  result.length = length;
  result.location = location;
  return result;
}

@end