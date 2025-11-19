@interface SCROBrailleEvent
- (SCROBrailleEvent)initWithType:(int)a3 data:(id)a4 data2:(id)a5 data3:(id)a6;
- (id)description;
@end

@implementation SCROBrailleEvent

- (SCROBrailleEvent)initWithType:(int)a3 data:(id)a4 data2:(id)a5 data3:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SCROBrailleEvent;
  v14 = [(SCROBrailleEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    objc_storeStrong(&v14->_data, a4);
    objc_storeStrong(&v15->_data2, a5);
    objc_storeStrong(&v15->_data3, a6);
    v15->_shouldDisplay = 1;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SCROBrailleEvent;
  v4 = [(SCROBrailleEvent *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ : [%ld], %@, %@, %@", v4, self->_type, self->_data, self->_data2, self->_data3];

  return v5;
}

@end