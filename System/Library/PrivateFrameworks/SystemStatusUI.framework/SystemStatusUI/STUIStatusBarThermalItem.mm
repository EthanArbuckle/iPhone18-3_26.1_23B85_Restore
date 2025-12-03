@interface STUIStatusBarThermalItem
- (id)_colorForThermalColor:(int64_t)color imageTintColor:(id)tintColor;
- (id)imageForUpdate:(id)update;
@end

@implementation STUIStatusBarThermalItem

- (id)imageForUpdate:(id)update
{
  updateCopy = update;
  data = [updateCopy data];
  thermalEntry = [data thermalEntry];

  color = [thermalEntry color];
  styleAttributes = [updateCopy styleAttributes];
  imageTintColor = [styleAttributes imageTintColor];
  v10 = [(STUIStatusBarThermalItem *)self _colorForThermalColor:color imageTintColor:imageTintColor];

  styleAttributes2 = [updateCopy styleAttributes];
  imageNamePrefixes = [styleAttributes2 imageNamePrefixes];
  LOBYTE(imageTintColor) = [imageNamePrefixes containsObject:@"SystemUpdate_"];

  v13 = 15.0;
  if ((imageTintColor & 1) == 0)
  {
    styleAttributes3 = [updateCopy styleAttributes];
    imageNamePrefixes2 = [styleAttributes3 imageNamePrefixes];
    v16 = [imageNamePrefixes2 containsObject:@"Large_"];

    if (v16)
    {
      v13 = 12.0;
    }

    else
    {
      v13 = 10.0;
    }
  }

  v17 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v13, v13}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43__STUIStatusBarThermalItem_imageForUpdate___block_invoke;
  v22[3] = &unk_279D38FF0;
  v23 = v10;
  v24 = thermalEntry;
  v18 = thermalEntry;
  v19 = v10;
  v20 = [v17 imageWithActions:v22];

  return v20;
}

void __43__STUIStatusBarThermalItem_imageForUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 set];
  if ([*(a1 + 40) sunlightMode])
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(CurrentContext, 3.0);
    v6 = [v4 format];
    [v6 bounds];
    [v4 strokeRect:?];
  }

  else
  {
    v6 = [v4 format];
    [v6 bounds];
    [v4 fillRect:?];
  }
}

- (id)_colorForThermalColor:(int64_t)color imageTintColor:(id)tintColor
{
  tintColorCopy = tintColor;
  v6 = 0;
  if (color > 2)
  {
    switch(color)
    {
      case 5:
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        break;
      case 4:
        whiteColor = [MEMORY[0x277D75348] blueColor];
        break;
      case 3:
        whiteColor = [MEMORY[0x277D75348] purpleColor];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (color)
  {
    if (color == 1)
    {
      whiteColor = [MEMORY[0x277D75348] orangeColor];
    }

    else
    {
      if (color != 2)
      {
        goto LABEL_15;
      }

      whiteColor = [MEMORY[0x277D75348] redColor];
    }
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] yellowColor];
  }

  v6 = whiteColor;
LABEL_15:
  v8 = [tintColorCopy colorWithAlphaComponent:0.15];
  v9 = [v6 _colorBlendedWithColor:v8 compositingFilter:*MEMORY[0x277CDA620]];

  return v9;
}

@end