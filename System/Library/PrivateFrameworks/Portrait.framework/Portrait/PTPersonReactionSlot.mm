@interface PTPersonReactionSlot
- (PTPersonReactionSlot)initWithStartTime:(float)time stopTime:(float)stopTime;
@end

@implementation PTPersonReactionSlot

- (PTPersonReactionSlot)initWithStartTime:(float)time stopTime:(float)stopTime
{
  v13.receiver = self;
  v13.super_class = PTPersonReactionSlot;
  v6 = [(PTPersonReactionSlot *)&v13 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 1) = 0;
    v8 = MEMORY[0x277CC0898];
    v9 = *MEMORY[0x277CC0898];
    *(v6 + 2) = *MEMORY[0x277CC0898];
    v10 = *(v8 + 16);
    *(v6 + 6) = v10;
    *(v6 + 56) = v9;
    *(v6 + 9) = v10;
    *(v6 + 4) = time;
    *(v6 + 5) = stopTime;
    v11 = v6;
  }

  return v7;
}

@end