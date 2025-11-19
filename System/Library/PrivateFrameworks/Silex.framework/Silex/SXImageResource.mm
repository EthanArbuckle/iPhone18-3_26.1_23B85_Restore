@interface SXImageResource
- (CGSize)sizeThatFills:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (double)heightForImageWidth:(double)a3;
- (double)widthForImageHeight:(double)a3;
@end

@implementation SXImageResource

- (double)heightForImageWidth:(double)a3
{
  [(SXImageResource *)self dimensions];
  v6 = 0.0;
  if (v4 != *MEMORY[0x1E695F060] || v5 != *(MEMORY[0x1E695F060] + 8))
  {
    return v5 * (a3 / v4);
  }

  return v6;
}

- (double)widthForImageHeight:(double)a3
{
  [(SXImageResource *)self dimensions];
  v6 = 0.0;
  if (v4 != *MEMORY[0x1E695F060] || v5 != *(MEMORY[0x1E695F060] + 8))
  {
    return v4 * (a3 / v5);
  }

  return v6;
}

- (CGSize)sizeThatFills:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  [(SXImageResource *)self dimensions];
  if (v9 != v6 || v8 != v7)
  {
    [(SXImageResource *)self dimensions];
    v6 = v11 * (height / v12);
    if (v6 >= width)
    {
      v7 = height;
    }

    else
    {
      v7 = v12 * (width / v11);
      v6 = width;
    }
  }

  v13 = v6;
  v14 = v7;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  [(SXImageResource *)self dimensions];
  if (v9 != v6 || v8 != v7)
  {
    [(SXImageResource *)self dimensions];
    v12 = width / v11;
    [(SXImageResource *)self dimensions];
    if (v12 >= height / v13)
    {
      v14 = height / v13;
    }

    else
    {
      v14 = v12;
    }

    [(SXImageResource *)self dimensions];
    *&v15 = v15 * v14;
    v6 = roundf(*&v15);
    [(SXImageResource *)self dimensions];
    v17 = v16 * v14;
    v7 = roundf(v17);
  }

  v18 = v6;
  v19 = v7;
  result.height = v19;
  result.width = v18;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SXImageResource *)self URL];
  [(SXImageResource *)self dimensions];
  v6 = NSStringFromCGSize(v10);
  v7 = [v3 stringWithFormat:@"<%@: %p URL: '%@' SIZE: '%@'>", v4, self, v5, v6];;

  return v7;
}

@end