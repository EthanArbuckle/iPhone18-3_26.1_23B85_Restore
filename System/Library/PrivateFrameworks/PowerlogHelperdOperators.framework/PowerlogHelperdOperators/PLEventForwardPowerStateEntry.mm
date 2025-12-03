@interface PLEventForwardPowerStateEntry
+ (void)load;
- (BOOL)isBasebandWake;
- (id)initEntryWithIOMessage:(unsigned int)message;
- (signed)event;
- (signed)state;
@end

@implementation PLEventForwardPowerStateEntry

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLEventForwardPowerStateEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)initEntryWithIOMessage:(unsigned int)message
{
  HIDWORD(v5) = message + 536870288;
  LODWORD(v5) = message + 536870288;
  v4 = v5 >> 4;
  v6 = -1;
  if (v4 <= 1)
  {
    if (v4 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (v4)
    {
      v6 = v8;
    }

    else
    {
      v6 = 3;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_18;
  }

  if (v4 == 2)
  {
    v9 = 1;
    v6 = 2;
LABEL_18:
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    self = [(PLEventForwardPowerStateEntry *)self initEntryWithState:v9 withEvent:v6 withReason:0 withDate:monotonicDate];

    selfCopy = self;
    goto LABEL_19;
  }

  if (v4 == 9)
  {
    v6 = 0;
    v9 = 0;
    goto LABEL_18;
  }

  if (v4 != 11)
  {
    v9 = -1;
    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

- (signed)state
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"State"];
  longValue = [v2 longValue];

  return longValue;
}

- (signed)event
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"Event"];
  longValue = [v2 longValue];

  return longValue;
}

- (BOOL)isBasebandWake
{
  reason = [(PLEventForwardPowerStateEntry *)self reason];
  v3 = [reason containsAtleastOneOf:&unk_28714BC78];

  return v3;
}

@end