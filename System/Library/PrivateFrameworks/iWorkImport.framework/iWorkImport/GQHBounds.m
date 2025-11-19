@interface GQHBounds
+ (void)mapBounds:(CGRect)a3 angle:(float)a4 srcGraphicStyle:(id)a5 style:(id)a6 state:(id)a7;
+ (void)mapPosition:(CGPoint)a3 srcGraphicStyle:(id)a4 style:(id)a5 state:(id)a6;
+ (void)mapSize:(CGSize)a3 angle:(float)a4 flipX:(BOOL)a5 flipY:(BOOL)a6 srcGraphicStyle:(id)a7 style:(id)a8 state:(id)a9;
@end

@implementation GQHBounds

+ (void)mapSize:(CGSize)a3 angle:(float)a4 flipX:(BOOL)a5 flipY:(BOOL)a6 srcGraphicStyle:(id)a7 style:(id)a8 state:(id)a9
{
  v11 = a6;
  v12 = a5;
  width = a3.width;
  height = a3.height;
  v29 = 0;
  if ([a7 hasValueForObjectProperty:68 value:&v29])
  {
    v16 = [GQHGraphicStyle strokeWidth:v29];
    width = width - v16;
    height = height - v16;
  }

  v17 = off_9CE98;
  [a9 scale];
  [a8 addAttribute:v17 intValue:(v18 * llroundf(height))];
  v19 = off_9CF68;
  [a9 scale];
  [a8 addAttribute:v19 intValue:(v20 * llroundf(width))];
  if (a4 != 0.0 || v12 || v11)
  {
    memset(&v28, 0, sizeof(v28));
    v21 = 1.0;
    if (v12)
    {
      v22 = -1.0;
    }

    else
    {
      v22 = 1.0;
    }

    if (v11)
    {
      v21 = -1.0;
    }

    CGAffineTransformMakeScale(&v28, v22, v21);
    memset(&v27, 0, sizeof(v27));
    CGAffineTransformMakeRotation(&v27, (360 - llroundf(a4)) * 3.14159265 / 180.0);
    t1 = v28;
    memset(&v26, 0, sizeof(v26));
    t2 = v27;
    CGAffineTransformConcat(&v26, &t1, &t2);
    v23 = CFStringCreateWithFormat(0, 0, @"matrix(%f, %f, %f, %f, %f, %f)", *&v26.a, *&v26.b, *&v26.c, *&v26.d, *&v26.tx, *&v26.ty);
    [a8 addAttribute:off_9CF90 value:v23];
    CFRelease(v23);
  }
}

+ (void)mapPosition:(CGPoint)a3 srcGraphicStyle:(id)a4 style:(id)a5 state:(id)a6
{
  v15 = 0;
  y = a3.y;
  x = a3.x;
  if ([a4 hasValueForObjectProperty:68 value:&v15])
  {
    v10 = ([GQHGraphicStyle strokeWidth:v15]/ 2);
    x = x - v10;
    y = y - v10;
  }

  v11 = off_9CF50;
  [a6 scale];
  [a5 addAttribute:v11 intValue:(v12 * llroundf(y))];
  v13 = off_9CEA0;
  [a6 scale];
  [a5 addAttribute:v13 intValue:(v14 * llroundf(x))];
}

+ (void)mapBounds:(CGRect)a3 angle:(float)a4 srcGraphicStyle:(id)a5 style:(id)a6 state:(id)a7
{
  y = a3.origin.y;
  x = a3.origin.x;
  width = a3.size.width;
  *&a3.size.width = a4;
  [a1 mapSize:width angle:a3.size.height srcGraphicStyle:a3.size.width style:? state:?];

  [a1 mapPosition:a5 srcGraphicStyle:a6 style:a7 state:{x, y}];
}

@end