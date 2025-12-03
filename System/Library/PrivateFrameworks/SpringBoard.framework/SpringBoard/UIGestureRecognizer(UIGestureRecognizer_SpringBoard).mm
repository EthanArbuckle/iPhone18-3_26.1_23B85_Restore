@interface UIGestureRecognizer(UIGestureRecognizer_SpringBoard)
- (__CFString)sb_stringForState;
- (id)sb_briefDescription;
@end

@implementation UIGestureRecognizer(UIGestureRecognizer_SpringBoard)

- (id)sb_briefDescription
{
  name = [self name];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (name)
  {
    name2 = [self name];
    v8 = [v3 stringWithFormat:@"<%@: %p> name: %@", v6, self, name2];;
  }

  else
  {
    v8 = [v3 stringWithFormat:@"<%@: %p>", v5, self];
  }

  return v8;
}

- (__CFString)sb_stringForState
{
  state = [self state];
  if (state >= 6)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown: %lu", objc_msgSend(self, "state")];
  }

  else
  {
    v3 = off_2783C0D48[state];
  }

  return v3;
}

@end