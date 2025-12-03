@interface _UIKeyboardIndirectTextSelectionGestureState
- (BOOL)isEqual:(id)equal;
- (CGPoint)translation;
- (_UIKeyboardIndirectTextSelectionGestureState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIKeyboardIndirectTextSelectionGestureState

- (_UIKeyboardIndirectTextSelectionGestureState)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v9.receiver = self;
  v9.super_class = _UIKeyboardIndirectTextSelectionGestureState;
  v5 = [(_UIKeyboardIndirectTextSelectionGestureState *)&v9 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntForKey:@"Type"];
    v5->_state = [coderCopy decodeIntForKey:@"State"];
    [coderCopy decodeCGPointForKey:@"Translation"];
    v5->_translation.x = v6;
    v5->_translation.y = v7;
    v5->_flickDirection = [coderCopy decodeIntForKey:@"FlickDirection"];
    v5->_isShiftKeyBeingHeld = [coderCopy decodeBoolForKey:@"Shift"];
    v5->_touchCount = [coderCopy decodeIntForKey:@"TouchCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeInt:LODWORD(self->_type) forKey:@"Type"];
  [coderCopy encodeInt:LODWORD(self->_state) forKey:@"State"];
  [coderCopy encodeCGPoint:@"Translation" forKey:{self->_translation.x, self->_translation.y}];
  [coderCopy encodeInt:LODWORD(self->_flickDirection) forKey:@"FlickDirection"];
  if (self->_isShiftKeyBeingHeld)
  {
    [coderCopy encodeBool:1 forKey:@"Shift"];
  }

  touchCount = self->_touchCount;
  v5 = coderCopy;
  if (touchCount)
  {
    [coderCopy encodeInt:touchCount forKey:@"TouchCount"];
    v5 = coderCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

  v5 = equalCopy;
  type = [(_UIKeyboardIndirectTextSelectionGestureState *)self type];
  if (type != [(_UIKeyboardIndirectTextSelectionGestureState *)v5 type])
  {
    goto LABEL_9;
  }

  state = [(_UIKeyboardIndirectTextSelectionGestureState *)self state];
  if (state != [(_UIKeyboardIndirectTextSelectionGestureState *)v5 state])
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

  flickDirection = [(_UIKeyboardIndirectTextSelectionGestureState *)self flickDirection];
  if (flickDirection == [(_UIKeyboardIndirectTextSelectionGestureState *)v5 flickDirection]&& (v16 = [(_UIKeyboardIndirectTextSelectionGestureState *)self isShiftKeyBeingHeld], v16 == [(_UIKeyboardIndirectTextSelectionGestureState *)v5 isShiftKeyBeingHeld]))
  {
    touchCount = [(_UIKeyboardIndirectTextSelectionGestureState *)self touchCount];
    v13 = touchCount == [(_UIKeyboardIndirectTextSelectionGestureState *)v5 touchCount];
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