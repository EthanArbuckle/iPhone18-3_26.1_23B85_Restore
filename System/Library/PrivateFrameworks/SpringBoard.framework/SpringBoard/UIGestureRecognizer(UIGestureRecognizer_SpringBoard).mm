@interface UIGestureRecognizer(UIGestureRecognizer_SpringBoard)
- (__CFString)sb_stringForState;
- (id)sb_briefDescription;
@end

@implementation UIGestureRecognizer(UIGestureRecognizer_SpringBoard)

- (id)sb_briefDescription
{
  v2 = [a1 name];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (v2)
  {
    v7 = [a1 name];
    v8 = [v3 stringWithFormat:@"<%@: %p> name: %@", v6, a1, v7];;
  }

  else
  {
    v8 = [v3 stringWithFormat:@"<%@: %p>", v5, a1];
  }

  return v8;
}

- (__CFString)sb_stringForState
{
  v2 = [a1 state];
  if (v2 >= 6)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown: %lu", objc_msgSend(a1, "state")];
  }

  else
  {
    v3 = off_2783C0D48[v2];
  }

  return v3;
}

@end