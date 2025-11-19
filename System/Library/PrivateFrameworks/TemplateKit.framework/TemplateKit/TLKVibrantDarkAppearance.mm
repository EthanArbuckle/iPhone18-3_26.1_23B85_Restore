@interface TLKVibrantDarkAppearance
- (id)textColorForColor:(int64_t)a3;
@end

@implementation TLKVibrantDarkAppearance

- (id)textColorForColor:(int64_t)a3
{
  switch(a3)
  {
    case 4:
      v3 = 76;
      v4 = 217;
      v5 = 100;
      goto LABEL_7;
    case 2:
      v3 = 255;
      v4 = 179;
      v5 = 64;
      goto LABEL_7;
    case 1:
      v3 = 255;
      v4 = 105;
      v5 = 97;
LABEL_7:
      v6 = [TLKAppearance colorWithRed:v3 green:v4 blue:v5];
      goto LABEL_9;
  }

  v8.receiver = self;
  v8.super_class = TLKVibrantDarkAppearance;
  v6 = [(TLKAppearance *)&v8 textColorForColor:?];
LABEL_9:

  return v6;
}

@end