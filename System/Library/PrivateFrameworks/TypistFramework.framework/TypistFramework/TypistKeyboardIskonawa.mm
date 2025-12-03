@interface TypistKeyboardIskonawa
- (id)_multiCharacterTrailForGrapheme:(id)grapheme;
- (id)init:(id)init options:(id)options;
@end

@implementation TypistKeyboardIskonawa

- (id)init:(id)init options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardIskonawa;
  v4 = [(TypistKeyboard *)&v7 init:init options:options locale:@"isc"];
  v5 = v4;
  if (v4)
  {
    [v4 setMultiCharacterKeys:&unk_28802A848];
  }

  return v5;
}

- (id)_multiCharacterTrailForGrapheme:(id)grapheme
{
  if (grapheme)
  {
    graphemeCopy = grapheme;
    multiCharacterKeys = [(TypistKeyboardIskonawa *)self multiCharacterKeys];
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