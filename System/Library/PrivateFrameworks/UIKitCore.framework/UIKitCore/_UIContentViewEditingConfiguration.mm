@interface _UIContentViewEditingConfiguration
- (BOOL)isEqual:(id)a3;
- (_UIContentViewEditingConfiguration)initWithDidEndHandler:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIContentViewEditingConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (_UIContentViewEditingConfiguration)initWithDidEndHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingConfiguration.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"endHandler"}];
  }

  v11.receiver = self;
  v11.super_class = _UIContentViewEditingConfiguration;
  v6 = [(_UIContentViewEditingConfiguration *)&v11 init];
  if (v6)
  {
    v7 = [v5 copy];
    didEndHandler = v6->_didEndHandler;
    v6->_didEndHandler = v7;

    v6->_selectAllTextWhenEditingBegins = 1;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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