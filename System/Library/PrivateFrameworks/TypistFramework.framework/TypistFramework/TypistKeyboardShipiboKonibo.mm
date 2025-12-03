@interface TypistKeyboardShipiboKonibo
- (id)_multiCharacterTrailForGrapheme:(id)grapheme;
- (id)init:(id)init options:(id)options;
@end

@implementation TypistKeyboardShipiboKonibo

- (id)init:(id)init options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardShipiboKonibo;
  v4 = [(TypistKeyboard *)&v7 init:init options:options locale:@"shp"];
  v5 = v4;
  if (v4)
  {
    [v4 setMultiCharacterKeys:&unk_28802A4B0];
  }

  return v5;
}

- (id)_multiCharacterTrailForGrapheme:(id)grapheme
{
  if (grapheme)
  {
    graphemeCopy = grapheme;
    multiCharacterKeys = [(TypistKeyboardShipiboKonibo *)self multiCharacterKeys];
    lowercaseString = [graphemeCopy lowercaseString];

    v7 = [multiCharacterKeys objectForKey:lowercaseString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end