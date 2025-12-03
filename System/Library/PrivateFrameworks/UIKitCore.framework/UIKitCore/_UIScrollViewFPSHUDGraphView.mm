@interface _UIScrollViewFPSHUDGraphView
- (_UIScrollViewFPSHUDGraphView)init;
- (void)drawRect:(CGRect)rect;
- (void)setColorForFramerate:(unsigned int)framerate context:(CGContext *)context;
@end

@implementation _UIScrollViewFPSHUDGraphView

- (_UIScrollViewFPSHUDGraphView)init
{
  v5.receiver = self;
  v5.super_class = _UIScrollViewFPSHUDGraphView;
  v2 = [(UIView *)&v5 init];
  if (v2)
  {
    v3 = +[UIColor blackColor];
    [(UIView *)v2 setBackgroundColor:v3];
  }

  return v2;
}

- (void)setColorForFramerate:(unsigned int)framerate context:(CGContext *)context
{
  if (framerate > 0x1E)
  {
    if (framerate > 0x30)
    {
      if (framerate > 0x3C)
      {
        if (framerate > 0x50)
        {
          if (framerate > 0x78)
          {
            if (framerate == 301)
            {
              v4 = 1.0;
              v5 = 1.0;
              v6 = 1.0;
            }

            else
            {
              if (framerate != 300)
              {
                return;
              }

              v4 = 0.9;
              v6 = 0.05;
              v5 = 0.0;
            }
          }

          else
          {
            v5 = 0.78;
            v6 = 0.4;
            v4 = 0.0;
          }
        }

        else
        {
          v4 = 0.48;
          v5 = 0.32;
          v6 = 0.58;
        }
      }

      else
      {
        v5 = 0.65;
        v4 = 1.0;
        v6 = 0.0;
      }
    }

    else
    {
      v4 = 0.94;
      v5 = 0.33;
      v6 = 0.45;
    }
  }

  else
  {
    v4 = 0.23;
    v5 = 0.65;
    v6 = 0.82;
  }

  CGContextSetRGBFillColor(context, v4, v5, v6, 1.0);
}

- (void)drawRect:(CGRect)rect
{
  [(UIView *)self bounds:rect.origin.x];
  v5 = v4;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextTranslateCTM(v7, 0.0, v5);
  CGContextScaleCTM(v7, 1.0, -1.0);
  [(UIView *)self bounds];
  v8 = 0;
  v9 = 0;
  arr = self->arr;
  v11 = v5 * 0.25;
  v13 = v12 / 150.0;
  do
  {
    v14 = arr[v8];
    v15 = v14;
    if (v8 == 149 || (v16 = v8 + 1, v15 != arr[v8 + 1]))
    {
      [(_UIScrollViewFPSHUDGraphView *)self setColorForFramerate:arr[v8] context:v7];
      v17 = v15 / 48.0;
      if (v14 >= 0x31)
      {
        v17 = (-240.0 / v15) + 6.0;
      }

      v18 = v11 * v17;
      v19.origin.x = v13 * v9;
      v19.size.width = v13 * (v8 - v9);
      v19.size.height = v18;
      v19.origin.y = 0.0;
      CGContextFillRect(v7, v19);
      v16 = v8 + 1;
      v9 = v8;
    }

    v8 = v16;
  }

  while (v16 != 150);
}

@end