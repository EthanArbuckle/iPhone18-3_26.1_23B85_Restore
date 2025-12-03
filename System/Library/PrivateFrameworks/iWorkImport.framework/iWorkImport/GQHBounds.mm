@interface GQHBounds
+ (void)mapBounds:(CGRect)bounds angle:(float)angle srcGraphicStyle:(id)style style:(id)a6 state:(id)state;
+ (void)mapPosition:(CGPoint)position srcGraphicStyle:(id)style style:(id)a5 state:(id)state;
+ (void)mapSize:(CGSize)size angle:(float)angle flipX:(BOOL)x flipY:(BOOL)y srcGraphicStyle:(id)style style:(id)a8 state:(id)state;
@end

@implementation GQHBounds

+ (void)mapSize:(CGSize)size angle:(float)angle flipX:(BOOL)x flipY:(BOOL)y srcGraphicStyle:(id)style style:(id)a8 state:(id)state
{
  yCopy = y;
  xCopy = x;
  width = size.width;
  height = size.height;
  v29 = 0;
  if ([style hasValueForObjectProperty:68 value:&v29])
  {
    v16 = [GQHGraphicStyle strokeWidth:v29];
    width = width - v16;
    height = height - v16;
  }

  v17 = off_9CE98;
  [state scale];
  [a8 addAttribute:v17 intValue:(v18 * llroundf(height))];
  v19 = off_9CF68;
  [state scale];
  [a8 addAttribute:v19 intValue:(v20 * llroundf(width))];
  if (angle != 0.0 || xCopy || yCopy)
  {
    memset(&v28, 0, sizeof(v28));
    v21 = 1.0;
    if (xCopy)
    {
      v22 = -1.0;
    }

    else
    {
      v22 = 1.0;
    }

    if (yCopy)
    {
      v21 = -1.0;
    }

    CGAffineTransformMakeScale(&v28, v22, v21);
    memset(&v27, 0, sizeof(v27));
    CGAffineTransformMakeRotation(&v27, (360 - llroundf(angle)) * 3.14159265 / 180.0);
    t1 = v28;
    memset(&v26, 0, sizeof(v26));
    t2 = v27;
    CGAffineTransformConcat(&v26, &t1, &t2);
    v23 = CFStringCreateWithFormat(0, 0, @"matrix(%f, %f, %f, %f, %f, %f)", *&v26.a, *&v26.b, *&v26.c, *&v26.d, *&v26.tx, *&v26.ty);
    [a8 addAttribute:off_9CF90 value:v23];
    CFRelease(v23);
  }
}

+ (void)mapPosition:(CGPoint)position srcGraphicStyle:(id)style style:(id)a5 state:(id)state
{
  v15 = 0;
  y = position.y;
  x = position.x;
  if ([style hasValueForObjectProperty:68 value:&v15])
  {
    v10 = ([GQHGraphicStyle strokeWidth:v15]/ 2);
    x = x - v10;
    y = y - v10;
  }

  v11 = off_9CF50;
  [state scale];
  [a5 addAttribute:v11 intValue:(v12 * llroundf(y))];
  v13 = off_9CEA0;
  [state scale];
  [a5 addAttribute:v13 intValue:(v14 * llroundf(x))];
}

+ (void)mapBounds:(CGRect)bounds angle:(float)angle srcGraphicStyle:(id)style style:(id)a6 state:(id)state
{
  y = bounds.origin.y;
  x = bounds.origin.x;
  width = bounds.size.width;
  *&bounds.size.width = angle;
  [self mapSize:width angle:bounds.size.height srcGraphicStyle:bounds.size.width style:? state:?];

  [self mapPosition:style srcGraphicStyle:a6 style:state state:{x, y}];
}

@end