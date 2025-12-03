@interface PXGEngineRecordingChangeDetailsEvent
+ (id)eventWithChangeDetails:(id)details;
- (PXGEngineRecordingChangeDetailsEvent)initWithChangeDetails:(id)details;
- (id)serializable;
@end

@implementation PXGEngineRecordingChangeDetailsEvent

- (id)serializable
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(PXGChangeDetails *)self->_changeDetails hasAnyInsertionsRemovalsOrMoves])
  {
    spriteIndexAfterChangeBySpriteIndexBeforeChange = [(PXGChangeDetails *)self->_changeDetails spriteIndexAfterChangeBySpriteIndexBeforeChange];
    if ([(PXGChangeDetails *)self->_changeDetails numberOfSpritesBeforeChange])
    {
      v5 = 0;
      do
      {
        v6 = spriteIndexAfterChangeBySpriteIndexBeforeChange[v5];
        if (v5 != v6 && v6 != -1)
        {
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
          [dictionary setObject:v8 forKey:v9];
        }

        ++v5;
      }

      while (v5 < [(PXGChangeDetails *)self->_changeDetails numberOfSpritesBeforeChange]);
    }
  }

  v10 = objc_alloc_init(PXGEngineRecordingChangeDetailsSerializable);
  [(PXGEngineRecordingChangeDetailsSerializable *)v10 setChangeDetails:dictionary];

  return v10;
}

- (PXGEngineRecordingChangeDetailsEvent)initWithChangeDetails:(id)details
{
  detailsCopy = details;
  v9.receiver = self;
  v9.super_class = PXGEngineRecordingChangeDetailsEvent;
  v5 = [(PXGTungstenRecordingEvent *)&v9 initWithComponent:0 eventName:@"changeDetails"];
  if (v5)
  {
    v6 = [detailsCopy copy];
    changeDetails = v5->_changeDetails;
    v5->_changeDetails = v6;
  }

  return v5;
}

+ (id)eventWithChangeDetails:(id)details
{
  detailsCopy = details;
  v4 = [[PXGEngineRecordingChangeDetailsEvent alloc] initWithChangeDetails:detailsCopy];

  return v4;
}

@end