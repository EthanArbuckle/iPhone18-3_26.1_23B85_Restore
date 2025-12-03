@interface _UITextInputSessionSelectionAction
- (_NSRange)rangeAfter;
- (id)description;
- (int64_t)mergeActionIfPossible:(id)possible;
- (int64_t)textInputActionsType;
@end

@implementation _UITextInputSessionSelectionAction

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  source = [(_UITextInputSessionAction *)self source];
  if (source == [possibleCopy source] && (v6 = -[_UITextInputSessionAction flagOptions](self, "flagOptions"), v6 == objc_msgSend(possibleCopy, "flagOptions")))
  {
    asSelection = [possibleCopy asSelection];
    if (asSelection && ((-[_UITextInputSessionSelectionAction rangeAfter](self, "rangeAfter"), !v8) && (-[_UITextInputSessionAction relativeRangeBefore](self, "relativeRangeBefore"), !v9) && ([asSelection rangeAfter], !v10) || (-[_UITextInputSessionSelectionAction rangeAfter](self, "rangeAfter"), v11) && (-[_UITextInputSessionAction relativeRangeBefore](self, "relativeRangeBefore"), v12) && (objc_msgSend(asSelection, "rangeAfter"), v13)))
    {
      rangeAfter = [asSelection rangeAfter];
      [(_UITextInputSessionSelectionAction *)self setRangeAfter:rangeAfter, v15];
      -[_UITextInputSessionAction setInputActionCountFromMergedActions:](self, "setInputActionCountFromMergedActions:", -[_UITextInputSessionAction inputActionCountFromMergedActions](self, "inputActionCountFromMergedActions") + [asSelection inputActionCount]);
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
  array = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AEC0];
  v13.location = [(_UITextInputSessionSelectionAction *)self rangeAfter];
  v6 = NSStringFromRange(v13);
  v7 = [v5 stringWithFormat:@"rangeAfter=%@", v6];
  [array addObject:v7];

  v8 = [array componentsJoinedByString:{@", "}];
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