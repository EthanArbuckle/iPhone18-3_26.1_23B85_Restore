@interface _UITableViewIgnoreDragsTokenImpl
- (_UITableViewIgnoreDragsTokenImpl)initWithDidEndHandler:(id)a3;
- (void)dealloc;
- (void)endIgnoringDrags;
@end

@implementation _UITableViewIgnoreDragsTokenImpl

- (_UITableViewIgnoreDragsTokenImpl)initWithDidEndHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UITableViewIgnoreDragsTokenImpl;
  v5 = [(_UITableViewIgnoreDragsTokenImpl *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    didEndHandler = v5->_didEndHandler;
    v5->_didEndHandler = v6;
  }

  return v5;
}

- (void)endIgnoringDrags
{
  v3 = _Block_copy(self->_didEndHandler);
  if (v3)
  {
    didEndHandler = self->_didEndHandler;
    self->_didEndHandler = 0;
    v5 = v3;

    v5[2](v5);
    v3 = v5;
  }
}

- (void)dealloc
{
  [(_UITableViewIgnoreDragsTokenImpl *)self endIgnoringDrags];
  v3.receiver = self;
  v3.super_class = _UITableViewIgnoreDragsTokenImpl;
  [(_UITableViewIgnoreDragsTokenImpl *)&v3 dealloc];
}

@end