@interface _UIContentViewEditingConfiguration
- (BOOL)isEqual:(id)equal;
- (_UIContentViewEditingConfiguration)initWithDidEndHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIContentViewEditingConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [self->_shouldBeginHandler copy];
    v6 = *(v4 + 24);
    *(v4 + 24) = v5;

    v7 = [self->_shouldChangeHandler copy];
    v8 = *(v4 + 32);
    *(v4 + 32) = v7;

    v9 = [self->_shouldEndHandler copy];
    v10 = *(v4 + 40);
    *(v4 + 40) = v9;

    v11 = [self->_didEndHandler copy];
    v12 = *(v4 + 16);
    *(v4 + 16) = v11;

    *(v4 + 8) = self->_useTextInputAsLabel;
    *(v4 + 9) = self->_selectAllTextWhenEditingBegins;
  }

  return v4;
}

- (_UIContentViewEditingConfiguration)initWithDidEndHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingConfiguration.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"endHandler"}];
  }

  v11.receiver = self;
  v11.super_class = _UIContentViewEditingConfiguration;
  v6 = [(_UIContentViewEditingConfiguration *)&v11 init];
  if (v6)
  {
    v7 = [handlerCopy copy];
    didEndHandler = v6->_didEndHandler;
    v6->_didEndHandler = v7;

    v6->_selectAllTextWhenEditingBegins = 1;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(self) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self)
    {
      LOBYTE(self) = (self->_didEndHandler == 0) != (v6->_didEndHandler != 0) && (self->_shouldBeginHandler == 0) != (v6->_shouldBeginHandler != 0) && (self->_shouldChangeHandler == 0) != (v6->_shouldChangeHandler != 0) && (self->_shouldEndHandler == 0) != (v6->_shouldEndHandler != 0) && self->_useTextInputAsLabel == v6->_useTextInputAsLabel && self->_selectAllTextWhenEditingBegins == v6->_selectAllTextWhenEditingBegins;
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end