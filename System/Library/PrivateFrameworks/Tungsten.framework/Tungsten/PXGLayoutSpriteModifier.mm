@interface PXGLayoutSpriteModifier
- (PXGLayoutSpriteModifier)initWithStateHandler:(id)handler;
- (void)modifySpriteDataStore:(id)store spriteIndexRange:(_PXGSpriteIndexRange)range forLayout:(id)layout;
@end

@implementation PXGLayoutSpriteModifier

- (void)modifySpriteDataStore:(id)store spriteIndexRange:(_PXGSpriteIndexRange)range forLayout:(id)layout
{
  layoutCopy = layout;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  if (store)
  {
    [store spritesInRange:range];
  }

  stateHandler = self->_stateHandler;
  v11 = stateHandler[2];
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  (v11)(stateHandler, layoutCopy, range, v12, v8);
}

- (PXGLayoutSpriteModifier)initWithStateHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = PXGLayoutSpriteModifier;
  v5 = [(PXGLayoutSpriteModifier *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x21CEE40A0](handlerCopy);
    stateHandler = v5->_stateHandler;
    v5->_stateHandler = v6;
  }

  return v5;
}

@end