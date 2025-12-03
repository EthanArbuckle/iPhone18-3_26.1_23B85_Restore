@interface _UIUpdateHIDInput
- (void)addEvent:(__IOHIDEvent *)event;
- (void)removeEvent:(__IOHIDEvent *)event;
@end

@implementation _UIUpdateHIDInput

- (void)addEvent:(__IOHIDEvent *)event
{
  [(NSMutableArray *)self->_events addObject:event];
  if (self->_input._state.mode != 2)
  {
    self->_input._state.mode = 2;
    set = self->_input._set;

    _UIUpdateInputSetInputChanged(set, &self->_input);
  }
}

- (void)removeEvent:(__IOHIDEvent *)event
{
  [(NSMutableArray *)self->_events removeObjectIdenticalTo:event];
  if (![(NSMutableArray *)self->_events count]&& self->_input._state.mode)
  {
    self->_input._state.mode = 0;
    set = self->_input._set;

    _UIUpdateInputSetInputChanged(set, &self->_input);
  }
}

@end