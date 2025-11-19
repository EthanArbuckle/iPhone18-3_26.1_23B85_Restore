@interface _UIKeyboardIndirectTextSelectionGestureState
- (BOOL)isEqual:(id)a3;
- (CGPoint)translation;
- (_UIKeyboardIndirectTextSelectionGestureState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIKeyboardIndirectTextSelectionGestureState

- (_UIKeyboardIndirectTextSelectionGestureState)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v9.receiver = self;
  v9.super_class = _UIKeyboardIndirectTextSelectionGestureState;
  v5 = [(_UIKeyboardIndirectTextSelectionGestureState *)&v9 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntForKey:@"Type"];
    v5->_state = [v4 decodeIntForKey:@"State"];
    [v4 decodeCGPointForKey:@"Translation"];
    v5->_translation.x = v6;
    v5->_translation.y = v7;
    v5->_flickDirection = [v4 decodeIntForKey:@"FlickDirection"];
    v5->_isShiftKeyBeingHeld = [v4 decodeBoolForKey:@"Shift"];
    v5->_touchCount = [v4 decodeIntForKey:@"TouchCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (([v6 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [v6 encodeInt:LODWORD(self->_type) forKey:@"Type"];
  [v6 encodeInt:LODWORD(self->_state) forKey:@"State"];
  [v6 encodeCGPoint:@"Translation" forKey:{self->_translation.x, self->_translation.y}];
  [v6 encodeInt:LODWORD(self->_flickDirection) forKey:@"FlickDirection"];
  if (self->_isShiftKeyBeingHeld)
  {
    [v6 encodeBool:1 forKey:@"Shift"];
  }

  touchCount = self->_touchCount;
  v5 = v6;
  if (touchCount)
  {
    [v6 encodeInt:touchCount forKey:@"TouchCount"];
    v5 = v6;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [(_UIKeyboardIndirectTextSelectionGestureState *)self type];
  if (v6 != [(_UIKeyboardIndirectTextSelectionGestureState *)v5 type])
  {
    goto LABEL_9;
  }

  v7 = [(_UIKeyboardIndirectTextSelectionGestureState *)self state];
  if (v7 != [(_UIKeyboardIndirectTextSelectionGestureState *)v5 state])
  {
    goto LABEL_9;
  }

  [(_UIKeyboardIndirectTextSelectionGestureState *)self translation];
  v9 = v8;
  v11 = v10;
  [(_UIKeyboardIndirectTextSelectionGestureState *)v5 translation];
  v13 = 0;
  if (v9 != v14 || v11 != v12)
  {
    goto LABEL_10;
  }

  v15 = [(_UIKeyboardIndirectTextSelectionGestureState *)self flickDirection];
  if (v15 == [(_UIKeyboardIndirectTextSelectionGestureState *)v5 flickDirection]&& (v16 = [(_UIKeyboardIndirectTextSelectionGestureState *)self isShiftKeyBeingHeld], v16 == [(_UIKeyboardIndirectTextSelectionGestureState *)v5 isShiftKeyBeingHeld]))
  {
    v18 = [(_UIKeyboardIndirectTextSelectionGestureState *)self touchCount];
    v13 = v18 == [(_UIKeyboardIndirectTextSelectionGestureState *)v5 touchCount];
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

LABEL_10:

LABEL_13:
  return v13;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end