@interface PXGPPTRowItemLayout
- (PXGPPTRowItemLayout)init;
- (PXGPPTRowItemLayout)initWithColor:(id)color;
- (void)_invalidateContent;
- (void)_updateContent;
- (void)referenceSizeDidChange;
- (void)update;
@end

@implementation PXGPPTRowItemLayout

- (void)_updateContent
{
  [(PXGPPTRowItemLayout *)self referenceSize];
  v4 = v3;
  [(PXGPPTRowItemLayout *)self setContentSize:v3];
  localNumberOfSprites = [(PXGPPTRowItemLayout *)self localNumberOfSprites];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__PXGPPTRowItemLayout__updateContent__block_invoke;
  v6[3] = &unk_1E774B270;
  *&v6[5] = v4;
  *&v6[6] = v4;
  v6[4] = self;
  [(PXGPPTRowItemLayout *)self modifySpritesInRange:localNumberOfSprites << 32 state:v6];
}

- (void)_invalidateContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXGPPTRowItemLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXGPPTRowStackLayout.m" lineNumber:146 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXGPPTRowItemLayout *)self setNeedsUpdate];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXGPPTRowItemLayout update]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXGPPTRowStackLayout.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGPPTRowItemLayout *)self _updateContent];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXGPPTRowItemLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXGPPTRowStackLayout.m" lineNumber:141 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXGPPTRowItemLayout;
  [(PXGPPTRowItemLayout *)&v9 update];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGPPTRowItemLayout;
  [(PXGPPTRowItemLayout *)&v3 referenceSizeDidChange];
  [(PXGPPTRowItemLayout *)self _invalidateContent];
}

- (PXGPPTRowItemLayout)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = PXGPPTRowItemLayout;
  v6 = [(PXGPPTRowItemLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
    v7->_colorSpriteIndex = [(PXGPPTRowItemLayout *)v7 addSpriteCount:1 withInitialState:0];
    [(PXGPPTRowItemLayout *)v7 setContentSource:v7];
  }

  return v7;
}

- (PXGPPTRowItemLayout)init
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(PXGPPTRowItemLayout *)self initWithColor:clearColor];

  return v4;
}

@end