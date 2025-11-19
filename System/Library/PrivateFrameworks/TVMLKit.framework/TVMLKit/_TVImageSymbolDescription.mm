@interface _TVImageSymbolDescription
- (BOOL)isEqual:(id)a3;
- (_TVImageSymbolDescription)initWithSymbolName:(id)a3 imageSymbolConfiguration:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _TVImageSymbolDescription

- (_TVImageSymbolDescription)initWithSymbolName:(id)a3 imageSymbolConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _TVImageSymbolDescription;
  v9 = [(_TVImageSymbolDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_symbolName, a3);
    objc_storeStrong(&v10->_imageSymbolConfiguration, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_TVImageSymbolDescription allocWithZone:a3];
  v5 = [(_TVImageSymbolDescription *)self symbolName];
  v6 = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
  v7 = [(_TVImageSymbolDescription *)v4 initWithSymbolName:v5 imageSymbolConfiguration:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_TVImageSymbolDescription *)self symbolName];
      v7 = [(_TVImageSymbolDescription *)v5 symbolName];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(_TVImageSymbolDescription *)self symbolName];
        if (v8)
        {
          v9 = [(_TVImageSymbolDescription *)v5 symbolName];
          if (v9)
          {
            v10 = [(_TVImageSymbolDescription *)self symbolName];
            v11 = [(_TVImageSymbolDescription *)v5 symbolName];
            v12 = [v10 isEqualToString:v11];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      v14 = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
      v15 = [(_TVImageSymbolDescription *)v5 imageSymbolConfiguration];
      if (v14 == v15)
      {
        v20 = 1;
      }

      else
      {
        v16 = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
        if (v16)
        {
          v17 = [(_TVImageSymbolDescription *)v5 imageSymbolConfiguration];
          if (v17)
          {
            v18 = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
            v19 = [(_TVImageSymbolDescription *)v5 imageSymbolConfiguration];
            v20 = [v18 isEqualToConfiguration:v19];
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      v13 = v12 & v20;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(_TVImageSymbolDescription *)self symbolName];
  v4 = [v3 hash];

  v5 = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end