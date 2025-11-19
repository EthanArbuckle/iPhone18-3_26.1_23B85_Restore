@interface RSDoorWindowOnlineDetector
- (RSDoorWindowOnlineDetector)init;
- (id).cxx_construct;
@end

@implementation RSDoorWindowOnlineDetector

- (id).cxx_construct
{
  sub_262247498(&self->_wall_selector_for_door_window);
  sub_262247498(&self->_open_selector_for_door_window);
  sub_26224A450(&self->_merger_for_close_door_window);
  sub_26224A450(&self->_merger_for_open_door);
  return self;
}

- (RSDoorWindowOnlineDetector)init
{
  v8.receiver = self;
  v8.super_class = RSDoorWindowOnlineDetector;
  v2 = [(RSDoorWindowOnlineDetector *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_anon_68[112] = 1;
    v4 = objc_opt_new();
    doorWindowDetector = v3->_doorWindowDetector;
    v3->_doorWindowDetector = v4;

    v6 = v3->_doorWindowDetector;
    if (v6)
    {
      v6->normalizedOutput = 0;
    }
  }

  return v3;
}

@end