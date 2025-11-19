@interface PXFeedDummyItemLayout
- (PXFeedDummyItemLayout)init;
- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)axSpriteIndexes;
- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)verticalAlignmentForStringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (void)_invalidateContent;
- (void)_updateContent;
- (void)displayScaleDidChange;
- (void)referenceSizeDidChange;
- (void)setRepresentedObject:(id)a3;
- (void)update;
@end

@implementation PXFeedDummyItemLayout

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_textSpriteIndex != a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXFeedDummyItemLayout.m" lineNumber:154 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_textSpriteIndex != a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXFeedDummyItemLayout.m" lineNumber:146 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  if (stringAttributesAtIndex_inLayout__onceToken != -1)
  {
    dispatch_once(&stringAttributesAtIndex_inLayout__onceToken, &__block_literal_global_75257);
  }

  v9 = stringAttributesAtIndex_inLayout__attributes;
  v10 = stringAttributesAtIndex_inLayout__attributes;

  return v9;
}

void __58__PXFeedDummyItemLayout_stringAttributesAtIndex_inLayout___block_invoke()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v0 setAlignment:1];
  [v0 setLineBreakMode:0];
  v6[0] = *MEMORY[0x1E69DB648];
  v1 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:13.0 weight:*MEMORY[0x1E69DB980]];
  v7[0] = v1;
  v6[1] = *MEMORY[0x1E69DB650];
  v2 = [MEMORY[0x1E69DC888] darkGrayColor];
  v7[1] = v2;
  v6[2] = *MEMORY[0x1E69DB688];
  v3 = [v0 copy];
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v5 = stringAttributesAtIndex_inLayout__attributes;
  stringAttributesAtIndex_inLayout__attributes = v4;
}

- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_textSpriteIndex != a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXFeedDummyItemLayout.m" lineNumber:126 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = [(PXFeedDummyItemLayout *)self representedObject];
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 initWithFormat:@"<%@: %p>", v12, v9];

  return v13;
}

- (int64_t)verticalAlignmentForStringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_textSpriteIndex != a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXFeedDummyItemLayout.m" lineNumber:117 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_backgroundSpriteIndex != a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXFeedDummyItemLayout.m" lineNumber:107 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.85 alpha:1.0];

  return v9;
}

- (void)_updateContent
{
  [(PXFeedDummyItemLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  [(PXFeedDummyItemLayout *)self setContentSize:?];
  v7 = [(PXFeedDummyItemLayout *)self localNumberOfSprites];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PXFeedDummyItemLayout__updateContent__block_invoke;
  v8[3] = &unk_1E77353F0;
  v8[5] = v4;
  v8[6] = v6;
  v8[4] = self;
  [(PXFeedDummyItemLayout *)self modifySpritesInRange:v7 << 32 fullState:v8];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedDummyItemLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedDummyItemLayout.m" lineNumber:77 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXFeedDummyItemLayout *)self setNeedsUpdate];
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
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedDummyItemLayout update]"];
      [v5 handleFailureInFunction:v6 file:@"PXFeedDummyItemLayout.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXFeedDummyItemLayout *)self _updateContent];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedDummyItemLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXFeedDummyItemLayout.m" lineNumber:67 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXFeedDummyItemLayout;
  [(PXFeedDummyItemLayout *)&v9 update];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXFeedDummyItemLayout;
  [(PXFeedDummyItemLayout *)&v3 displayScaleDidChange];
  [(PXFeedDummyItemLayout *)self _invalidateContent];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXFeedDummyItemLayout;
  [(PXFeedDummyItemLayout *)&v3 referenceSizeDidChange];
  [(PXFeedDummyItemLayout *)self _invalidateContent];
}

- (void)setRepresentedObject:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_representedObject != v5)
  {
    v8 = v5;
    v7 = [v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_representedObject, a3);
      [(PXFeedDummyItemLayout *)self _invalidateContentVersion];
      v6 = v8;
    }
  }
}

- (PXFeedDummyItemLayout)init
{
  v5.receiver = self;
  v5.super_class = PXFeedDummyItemLayout;
  v2 = [(PXFeedDummyItemLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_backgroundSpriteIndex = [(PXFeedDummyItemLayout *)v2 addSpriteWithInitialState:0];
    v3->_textSpriteIndex = [(PXFeedDummyItemLayout *)v3 addSpriteWithInitialState:0];
    [(PXFeedDummyItemLayout *)v3 setContentSource:v3];
  }

  return v3;
}

@end