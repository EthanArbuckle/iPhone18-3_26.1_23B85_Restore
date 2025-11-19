@interface PLEventForwardPowerStateEntry
+ (void)load;
- (BOOL)isBasebandWake;
- (id)initEntryWithIOMessage:(unsigned int)a3;
- (signed)event;
- (signed)state;
@end

@implementation PLEventForwardPowerStateEntry

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLEventForwardPowerStateEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)initEntryWithIOMessage:(unsigned int)a3
{
  HIDWORD(v5) = a3 + 536870288;
  LODWORD(v5) = a3 + 536870288;
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
    v10 = [MEMORY[0x277CBEAA8] monotonicDate];
    self = [(PLEventForwardPowerStateEntry *)self initEntryWithState:v9 withEvent:v6 withReason:0 withDate:v10];

    v7 = self;
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

  v7 = 0;
LABEL_19:

  return v7;
}

- (signed)state
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"State"];
  v3 = [v2 longValue];

  return v3;
}

- (signed)event
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"Event"];
  v3 = [v2 longValue];

  return v3;
}

- (BOOL)isBasebandWake
{
  v2 = [(PLEventForwardPowerStateEntry *)self reason];
  v3 = [v2 containsAtleastOneOf:&unk_28714BC78];

  return v3;
}

@end