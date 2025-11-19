@interface PXGLayoutSpriteModifier
- (PXGLayoutSpriteModifier)initWithStateHandler:(id)a3;
- (void)modifySpriteDataStore:(id)a3 spriteIndexRange:(_PXGSpriteIndexRange)a4 forLayout:(id)a5;
@end

@implementation PXGLayoutSpriteModifier

- (void)modifySpriteDataStore:(id)a3 spriteIndexRange:(_PXGSpriteIndexRange)a4 forLayout:(id)a5
{
  v9 = a5;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  if (a3)
  {
    [a3 spritesInRange:a4];
  }

  stateHandler = self->_stateHandler;
  v11 = stateHandler[2];
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  (v11)(stateHandler, v9, a4, v12, v8);
}

- (PXGLayoutSpriteModifier)initWithStateHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXGLayoutSpriteModifier;
  v5 = [(PXGLayoutSpriteModifier *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x21CEE40A0](v4);
    stateHandler = v5->_stateHandler;
    v5->_stateHandler = v6;
  }

  return v5;
}

@end