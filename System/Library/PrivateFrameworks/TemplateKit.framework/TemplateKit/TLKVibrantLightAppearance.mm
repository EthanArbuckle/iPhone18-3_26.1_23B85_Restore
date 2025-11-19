@interface TLKVibrantLightAppearance
- (id)textColorForColor:(int64_t)a3;
@end

@implementation TLKVibrantLightAppearance

- (id)textColorForColor:(int64_t)a3
{
  switch(a3)
  {
    case 4:
      v3 = 28;
      v4 = 188;
      v5 = 52;
      goto LABEL_7;
    case 2:
      v3 = 255;
      v4 = 132;
      v5 = 0;
      goto LABEL_7;
    case 1:
      v3 = 255;
      v4 = 59;
      v5 = 48;
LABEL_7:
      v6 = [TLKAppearance colorWithRed:v3 green:v4 blue:v5];
      goto LABEL_9;
  }

  v8.receiver = self;
  v8.super_class = TLKVibrantLightAppearance;
  v6 = [(TLKAppearance *)&v8 textColorForColor:?];
LABEL_9:

  return v6;
}

@end