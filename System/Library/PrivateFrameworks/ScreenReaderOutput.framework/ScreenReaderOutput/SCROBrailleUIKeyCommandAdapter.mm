@interface SCROBrailleUIKeyCommandAdapter
- (BOOL)isBrailleUIDeleteCommand:(id)command;
- (BOOL)isBrailleUIReturnCommand:(id)command;
- (BOOL)isBrailleUIStartCommand:(id)command;
- (SCROBrailleUIKeyCommandAdapter)init;
- (id)eventForCommand:(id)command;
@end

@implementation SCROBrailleUIKeyCommandAdapter

- (SCROBrailleUIKeyCommandAdapter)init
{
  Current = CFAbsoluteTimeGetCurrent();
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_lastSelectLeftPressTime) = Current;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_isSelectLeftDoublePressed) = 0;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_lastSelectRightPressTime) = Current;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_isSelectRightDoublePressed) = 0;
  v5.receiver = self;
  v5.super_class = SCROBrailleUIKeyCommandAdapter;
  return [(SCROBrailleUIKeyCommandAdapter *)&v5 init];
}

- (BOOL)isBrailleUIStartCommand:(id)command
{
  if (sub_264982784() == 0xD00000000000001ELL && 0x80000002649922C0 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_264982AA4();
  }

  return v4 & 1;
}

- (BOOL)isBrailleUIDeleteCommand:(id)command
{
  if (sub_264982784() == 0xD000000000000015 && 0x8000000264992050 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_264982AA4();
  }

  return v4 & 1;
}

- (BOOL)isBrailleUIReturnCommand:(id)command
{
  if (sub_264982784() == 0xD000000000000015 && 0x80000002649920F0 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_264982AA4();
  }

  return v4 & 1;
}

- (id)eventForCommand:(id)command
{
  v4 = sub_264982784();
  v6 = v5;
  selfCopy = self;
  v8 = sub_26496A3F0(v4, v6);

  return v8;
}

@end