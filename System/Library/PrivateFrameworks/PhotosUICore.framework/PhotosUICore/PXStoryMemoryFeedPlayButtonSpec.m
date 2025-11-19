@interface PXStoryMemoryFeedPlayButtonSpec
- (id)labelAttributes;
@end

@implementation PXStoryMemoryFeedPlayButtonSpec

- (id)labelAttributes
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryMemoryFeedPlayButtonSpec *)self labelAttributesCache];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v5 = [v4 mutableCopy];

    [v5 setAlignment:0];
    v8 = *MEMORY[0x1E69DB648];
    PXFontWithTextStyleSymbolicTraits();
  }

  v6 = [(PXStoryMemoryFeedPlayButtonSpec *)self labelAttributesCache];

  return v6;
}

@end