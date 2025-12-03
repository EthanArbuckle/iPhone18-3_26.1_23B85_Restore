@interface TypistKeyboardLushootseed
- (id)_multiCharacterTrailForGrapheme:(id)grapheme;
- (id)init:(id)init options:(id)options;
@end

@implementation TypistKeyboardLushootseed

- (id)init:(id)init options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardLushootseed;
  v4 = [(TypistKeyboard *)&v7 init:init options:options locale:@"lut"];
  v5 = v4;
  if (v4)
  {
    [v4 setMultiCharacterKeys:&unk_28802A6B8];
  }

  return v5;
}

- (id)_multiCharacterTrailForGrapheme:(id)grapheme
{
  if (grapheme)
  {
    graphemeCopy = grapheme;
    multiCharacterKeys = [(TypistKeyboardLushootseed *)self multiCharacterKeys];
    v6 = [multiCharacterKeys objectForKey:graphemeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end