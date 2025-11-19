@interface PXGEngineRecordingChangeDetailsEvent
+ (id)eventWithChangeDetails:(id)a3;
- (PXGEngineRecordingChangeDetailsEvent)initWithChangeDetails:(id)a3;
- (id)serializable;
@end

@implementation PXGEngineRecordingChangeDetailsEvent

- (id)serializable
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(PXGChangeDetails *)self->_changeDetails hasAnyInsertionsRemovalsOrMoves])
  {
    v4 = [(PXGChangeDetails *)self->_changeDetails spriteIndexAfterChangeBySpriteIndexBeforeChange];
    if ([(PXGChangeDetails *)self->_changeDetails numberOfSpritesBeforeChange])
    {
      v5 = 0;
      do
      {
        v6 = v4[v5];
        if (v5 != v6 && v6 != -1)
        {
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
          [v3 setObject:v8 forKey:v9];
        }

        ++v5;
      }

      while (v5 < [(PXGChangeDetails *)self->_changeDetails numberOfSpritesBeforeChange]);
    }
  }

  v10 = objc_alloc_init(PXGEngineRecordingChangeDetailsSerializable);
  [(PXGEngineRecordingChangeDetailsSerializable *)v10 setChangeDetails:v3];

  return v10;
}

- (PXGEngineRecordingChangeDetailsEvent)initWithChangeDetails:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXGEngineRecordingChangeDetailsEvent;
  v5 = [(PXGTungstenRecordingEvent *)&v9 initWithComponent:0 eventName:@"changeDetails"];
  if (v5)
  {
    v6 = [v4 copy];
    changeDetails = v5->_changeDetails;
    v5->_changeDetails = v6;
  }

  return v5;
}

+ (id)eventWithChangeDetails:(id)a3
{
  v3 = a3;
  v4 = [[PXGEngineRecordingChangeDetailsEvent alloc] initWithChangeDetails:v3];

  return v4;
}

@end