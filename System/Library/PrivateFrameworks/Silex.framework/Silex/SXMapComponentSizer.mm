@interface SXMapComponentSizer
+ ($04509175BD9135993A1E69B8DF80FE31)regionForCoordinates:(SEL)a3;
+ ($04509175BD9135993A1E69B8DF80FE31)regionFromRegion:(SEL)a3 coordinates:(id *)a4;
+ ($5703109703F67BAFA4DD21228B123405)mapRectForRegion:(id *)a3;
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXMapComponentSizer

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v4 = [(SXComponentSizer *)self layoutOptions:a4];
  v5 = [v4 columnLayout];
  [v5 constrainedViewportSize];
  v7 = v6;
  v9 = v8;

  v10 = 0.5;
  if (v7 > v9)
  {
    v10 = 0.75;
  }

  return v9 * v10;
}

+ ($04509175BD9135993A1E69B8DF80FE31)regionFromRegion:(SEL)a3 coordinates:(id *)a4
{
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v14 = a4;
  v15 = [a2 isSpanSetOnRegion:{v12, v11, v10, v9}];
  v16 = [a2 isCenterSetOnRegion:{v12, v11, v10, v9}];
  v17 = [($04509175BD9135993A1E69B8DF80FE31 *)v14 count];
  if (((v15 | v16) & 1) != 0 && v17)
  {
    [a2 regionForCoordinates:v14];
  }

  return result;
}

+ ($04509175BD9135993A1E69B8DF80FE31)regionForCoordinates:(SEL)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a4;
  if ([v4 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      v9 = -1.79769313e308;
      v10 = 1.79769313e308;
      v11 = -1.79769313e308;
      v12 = 1.79769313e308;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v21 + 1) + 8 * i) MKCoordinateValue];
          v16 = fmin(v12, 1.79769313e308);
          if (v16 >= v15)
          {
            v12 = v15;
          }

          else
          {
            v12 = v16;
          }

          if (v11 >= -1.79769313e308)
          {
            v17 = v11;
          }

          else
          {
            v17 = -1.79769313e308;
          }

          if (v17 >= v15)
          {
            v11 = v17;
          }

          else
          {
            v11 = v15;
          }

          v18 = fmin(v10, 1.79769313e308);
          if (v18 >= v14)
          {
            v10 = v14;
          }

          else
          {
            v10 = v18;
          }

          if (v9 >= -1.79769313e308)
          {
            v19 = v9;
          }

          else
          {
            v19 = -1.79769313e308;
          }

          if (v19 >= v14)
          {
            v9 = v19;
          }

          else
          {
            v9 = v14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    else
    {
      v10 = 1.79769313e308;
      v9 = -1.79769313e308;
      v11 = -1.79769313e308;
      v12 = 1.79769313e308;
    }

    CLLocationCoordinate2DMake(v10 + (v9 - v10) * 0.5, v12 + (v11 - v12) * 0.5);
  }

  return result;
}

+ ($5703109703F67BAFA4DD21228B123405)mapRectForRegion:(id *)a3
{
  v7 = v4;
  v8 = v3;
  v9 = v5 * 0.5;
  v10 = v6 * 0.5;
  v19 = CLLocationCoordinate2DMake(v3 + v5 * 0.5, v4 - v6 * 0.5);
  v11 = MKMapPointForCoordinate(v19);
  v20 = CLLocationCoordinate2DMake(v8 - v9, v7 + v10);
  v12 = MKMapPointForCoordinate(v20);
  if (v11.x >= v12.x)
  {
    x = v12.x;
  }

  else
  {
    x = v11.x;
  }

  if (v11.y >= v12.y)
  {
    y = v12.y;
  }

  else
  {
    y = v11.y;
  }

  v15 = -(v11.x - v12.x);
  if (v11.x - v12.x >= 0.0)
  {
    v15 = v11.x - v12.x;
  }

  if (v11.y - v12.y >= 0.0)
  {
    v16 = v11.y - v12.y;
  }

  else
  {
    v16 = -(v11.y - v12.y);
  }

  v17 = x;
  v18 = y;
  result.var1.var1 = v16;
  result.var1.var0 = v15;
  result.var0.var1 = v18;
  result.var0.var0 = v17;
  return result;
}

@end