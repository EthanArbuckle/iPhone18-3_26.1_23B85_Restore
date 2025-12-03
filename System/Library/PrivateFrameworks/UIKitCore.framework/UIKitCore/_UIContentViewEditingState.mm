@interface _UIContentViewEditingState
- (_NSRange)proposedReplacementRange;
- (_UIContentViewEditingState)initWithText:(id)text proposedReplacementText:(id)replacementText proposedReplacementRange:(_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIContentViewEditingState

- (_UIContentViewEditingState)initWithText:(id)text proposedReplacementText:(id)replacementText proposedReplacementRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  replacementTextCopy = replacementText;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingConfiguration.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"text"}];
  }

  v19.receiver = self;
  v19.super_class = _UIContentViewEditingState;
  v12 = [(_UIContentViewEditingState *)&v19 init];
  if (v12)
  {
    v13 = [textCopy copy];
    text = v12->_text;
    v12->_text = v13;

    v15 = [replacementTextCopy copy];
    proposedReplacementText = v12->_proposedReplacementText;
    v12->_proposedReplacementText = v15;

    v12->_proposedReplacementRange.location = location;
    v12->_proposedReplacementRange.length = length;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(NSString *)self->_text copy];
    v6 = *(v4 + 8);
    *(v4 + 8) = v5;

    *(v4 + 24) = self->_proposedReplacementRange;
    v7 = [(NSString *)self->_proposedReplacementText copy];
    v8 = *(v4 + 16);
    *(v4 + 16) = v7;
  }

  return v4;
}

- (_NSRange)proposedReplacementRange
{
  length = self->_proposedReplacementRange.length;
  location = self->_proposedReplacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end