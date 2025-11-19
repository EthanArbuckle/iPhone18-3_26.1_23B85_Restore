@interface _UIUpdateHIDInput
- (void)addEvent:(__IOHIDEvent *)a3;
- (void)removeEvent:(__IOHIDEvent *)a3;
@end

@implementation _UIUpdateHIDInput

- (void)addEvent:(__IOHIDEvent *)a3
{
  [(NSMutableArray *)self->_events addObject:a3];
  if (self->_input._state.mode != 2)
  {
    self->_input._state.mode = 2;
    set = self->_input._set;

    _UIUpdateInputSetInputChanged(set, &self->_input);
  }
}

- (void)removeEvent:(__IOHIDEvent *)a3
{
  [(NSMutableArray *)self->_events removeObjectIdenticalTo:a3];
  if (![(NSMutableArray *)self->_events count]&& self->_input._state.mode)
  {
    self->_input._state.mode = 0;
    set = self->_input._set;

    _UIUpdateInputSetInputChanged(set, &self->_input);
  }
}

@end