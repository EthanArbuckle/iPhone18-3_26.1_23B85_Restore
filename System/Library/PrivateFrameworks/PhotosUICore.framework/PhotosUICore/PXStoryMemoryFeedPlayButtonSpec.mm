@interface PXStoryMemoryFeedPlayButtonSpec
- (id)labelAttributes;
@end

@implementation PXStoryMemoryFeedPlayButtonSpec

- (id)labelAttributes
{
  v9 = *MEMORY[0x1E69E9840];
  labelAttributesCache = [(PXStoryMemoryFeedPlayButtonSpec *)self labelAttributesCache];

  if (!labelAttributesCache)
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v5 = [defaultParagraphStyle mutableCopy];

    [v5 setAlignment:0];
    v8 = *MEMORY[0x1E69DB648];
    PXFontWithTextStyleSymbolicTraits();
  }

  labelAttributesCache2 = [(PXStoryMemoryFeedPlayButtonSpec *)self labelAttributesCache];

  return labelAttributesCache2;
}

@end