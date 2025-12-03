@interface PXGViewRecordingViewEvent
+ (id)eventWithSpriteTexture:(id)texture viewClass:(Class)class spriteIndex:(unsigned int)index needsParenting:(BOOL)parenting;
- (PXGViewRecordingViewEvent)initWithSpriteTexture:(id)texture viewClass:(Class)class spriteIndex:(unsigned int)index needsParenting:(BOOL)parenting;
@end

@implementation PXGViewRecordingViewEvent

- (PXGViewRecordingViewEvent)initWithSpriteTexture:(id)texture viewClass:(Class)class spriteIndex:(unsigned int)index needsParenting:(BOOL)parenting
{
  parentingCopy = parenting;
  v7 = *&index;
  textureCopy = texture;
  v18.receiver = self;
  v18.super_class = PXGViewRecordingViewEvent;
  v11 = [(PXGTungstenRecordingEvent *)&v18 initWithComponent:2 eventName:@"frameEnd"];
  if (v11)
  {
    v12 = objc_alloc_init(PXGViewRecordingViewSerializable);
    serializable = v11->_serializable;
    v11->_serializable = v12;

    [(PXGViewRecordingViewSerializable *)v11->_serializable setSpriteIndex:v7];
    -[PXGViewRecordingViewSerializable setPresentationType:](v11->_serializable, "setPresentationType:", [textureCopy presentationType]);
    v14 = NSStringFromClass(class);
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

    [(PXGViewRecordingViewSerializable *)v11->_serializable setNeedsParenting:parentingCopy];
  }

  return v11;
}

+ (id)eventWithSpriteTexture:(id)texture viewClass:(Class)class spriteIndex:(unsigned int)index needsParenting:(BOOL)parenting
{
  parentingCopy = parenting;
  v7 = *&index;
  textureCopy = texture;
  v11 = [[self alloc] initWithSpriteTexture:textureCopy viewClass:class spriteIndex:v7 needsParenting:parentingCopy];

  return v11;
}

@end