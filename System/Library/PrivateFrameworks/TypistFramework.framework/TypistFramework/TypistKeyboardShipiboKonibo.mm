@interface TypistKeyboardShipiboKonibo
- (id)_multiCharacterTrailForGrapheme:(id)a3;
- (id)init:(id)a3 options:(id)a4;
@end

@implementation TypistKeyboardShipiboKonibo

- (id)init:(id)a3 options:(id)a4
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardShipiboKonibo;
  v4 = [(TypistKeyboard *)&v7 init:a3 options:a4 locale:@"shp"];
  v5 = v4;
  if (v4)
  {
    [v4 setMultiCharacterKeys:&unk_28802A4B0];
  }

  return v5;
}

- (id)_multiCharacterTrailForGrapheme:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(TypistKeyboardShipiboKonibo *)self multiCharacterKeys];
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