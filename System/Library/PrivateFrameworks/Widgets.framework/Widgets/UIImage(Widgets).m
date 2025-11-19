@interface UIImage(Widgets)
- (id)imagesWithSpriteSize:()Widgets;
@end

@implementation UIImage(Widgets)

- (id)imagesWithSpriteSize:()Widgets
{
  v3 = MEMORY[0x277CBEBF8];
  if (a2 > 0.0 && a3 > 0.0)
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 scale];
    v9 = v8;

    v10 = [a1 CGImage];
    v11 = [MEMORY[0x277CBEB18] array];
    Width = CGImageGetWidth(v10);
    Height = CGImageGetHeight(v10);
    if (Height)
    {
      v14 = Height;
      for (i = 0; i < v14; i = (v16 + a3 * v9))
      {
        v16 = i;
        if (Width)
        {
          v17 = 0;
          do
          {
            v18 = v17;
            v23.origin.x = v17;
            v23.origin.y = v16;
            v23.size.width = a2 * v9;
            v23.size.height = a3 * v9;
            v19 = CGImageCreateWithImageInRect(v10, v23);
            v20 = [MEMORY[0x277D755B8] imageWithCGImage:v19 scale:0 orientation:v9];
            [v11 addObject:v20];
            CGImageRelease(v19);
            v17 = (v18 + a2 * v9);
          }

          while (Width > v17);
        }
      }
    }

    v3 = [v11 copy];
  }

  return v3;
}

@end