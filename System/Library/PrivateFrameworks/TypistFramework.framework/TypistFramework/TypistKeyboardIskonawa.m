@interface TypistKeyboardIskonawa
- (id)_multiCharacterTrailForGrapheme:(id)a3;
- (id)init:(id)a3 options:(id)a4;
@end

@implementation TypistKeyboardIskonawa

- (id)init:(id)a3 options:(id)a4
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardIskonawa;
  v4 = [(TypistKeyboard *)&v7 init:a3 options:a4 locale:@"isc"];
  v5 = v4;
  if (v4)
  {
    [v4 setMultiCharacterKeys:&unk_28802A848];
  }

  return v5;
}

- (id)_multiCharacterTrailForGrapheme:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(TypistKeyboardIskonawa *)self multiCharacterKeys];
    v6 = [v4 lowercaseString];

    v7 = [v5 objectForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end