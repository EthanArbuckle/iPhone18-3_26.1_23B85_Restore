@interface _TVImageSymbolDescription
- (BOOL)isEqual:(id)equal;
- (_TVImageSymbolDescription)initWithSymbolName:(id)name imageSymbolConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _TVImageSymbolDescription

- (_TVImageSymbolDescription)initWithSymbolName:(id)name imageSymbolConfiguration:(id)configuration
{
  nameCopy = name;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = _TVImageSymbolDescription;
  v9 = [(_TVImageSymbolDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_symbolName, name);
    objc_storeStrong(&v10->_imageSymbolConfiguration, configuration);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_TVImageSymbolDescription allocWithZone:zone];
  symbolName = [(_TVImageSymbolDescription *)self symbolName];
  imageSymbolConfiguration = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
  v7 = [(_TVImageSymbolDescription *)v4 initWithSymbolName:symbolName imageSymbolConfiguration:imageSymbolConfiguration];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      symbolName = [(_TVImageSymbolDescription *)self symbolName];
      symbolName2 = [(_TVImageSymbolDescription *)v5 symbolName];
      if (symbolName == symbolName2)
      {
        v12 = 1;
      }

      else
      {
        symbolName3 = [(_TVImageSymbolDescription *)self symbolName];
        if (symbolName3)
        {
          symbolName4 = [(_TVImageSymbolDescription *)v5 symbolName];
          if (symbolName4)
          {
            symbolName5 = [(_TVImageSymbolDescription *)self symbolName];
            symbolName6 = [(_TVImageSymbolDescription *)v5 symbolName];
            v12 = [symbolName5 isEqualToString:symbolName6];
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

      imageSymbolConfiguration = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
      imageSymbolConfiguration2 = [(_TVImageSymbolDescription *)v5 imageSymbolConfiguration];
      if (imageSymbolConfiguration == imageSymbolConfiguration2)
      {
        v20 = 1;
      }

      else
      {
        imageSymbolConfiguration3 = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
        if (imageSymbolConfiguration3)
        {
          imageSymbolConfiguration4 = [(_TVImageSymbolDescription *)v5 imageSymbolConfiguration];
          if (imageSymbolConfiguration4)
          {
            imageSymbolConfiguration5 = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
            imageSymbolConfiguration6 = [(_TVImageSymbolDescription *)v5 imageSymbolConfiguration];
            v20 = [imageSymbolConfiguration5 isEqualToConfiguration:imageSymbolConfiguration6];
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
  symbolName = [(_TVImageSymbolDescription *)self symbolName];
  v4 = [symbolName hash];

  imageSymbolConfiguration = [(_TVImageSymbolDescription *)self imageSymbolConfiguration];
  v6 = [imageSymbolConfiguration hash];

  return v6 ^ v4;
}

@end