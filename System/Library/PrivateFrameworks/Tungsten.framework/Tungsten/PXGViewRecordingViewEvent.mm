@interface PXGViewRecordingViewEvent
+ (id)eventWithSpriteTexture:(id)a3 viewClass:(Class)a4 spriteIndex:(unsigned int)a5 needsParenting:(BOOL)a6;
- (PXGViewRecordingViewEvent)initWithSpriteTexture:(id)a3 viewClass:(Class)a4 spriteIndex:(unsigned int)a5 needsParenting:(BOOL)a6;
@end

@implementation PXGViewRecordingViewEvent

- (PXGViewRecordingViewEvent)initWithSpriteTexture:(id)a3 viewClass:(Class)a4 spriteIndex:(unsigned int)a5 needsParenting:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v10 = a3;
  v18.receiver = self;
  v18.super_class = PXGViewRecordingViewEvent;
  v11 = [(PXGTungstenRecordingEvent *)&v18 initWithComponent:2 eventName:@"frameEnd"];
  if (v11)
  {
    v12 = objc_alloc_init(PXGViewRecordingViewSerializable);
    serializable = v11->_serializable;
    v11->_serializable = v12;

    [(PXGViewRecordingViewSerializable *)v11->_serializable setSpriteIndex:v7];
    -[PXGViewRecordingViewSerializable setPresentationType:](v11->_serializable, "setPresentationType:", [v10 presentationType]);
    v14 = NSStringFromClass(a4);
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_282C556B8;
    }

    [(PXGViewRecordingViewSerializable *)v11->_serializable setPayloadViewClass:v16];

    [(PXGViewRecordingViewSerializable *)v11->_serializable setNeedsParenting:v6];
  }

  return v11;
}

+ (id)eventWithSpriteTexture:(id)a3 viewClass:(Class)a4 spriteIndex:(unsigned int)a5 needsParenting:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v10 = a3;
  v11 = [[a1 alloc] initWithSpriteTexture:v10 viewClass:a4 spriteIndex:v7 needsParenting:v6];

  return v11;
}

@end