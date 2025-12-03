@interface _UIStatusBarThermalItem
- (id)_colorForThermalColor:(int64_t)color imageTintColor:(id)tintColor;
- (id)imageForUpdate:(id)update;
@end

@implementation _UIStatusBarThermalItem

- (id)imageForUpdate:(id)update
{
  updateCopy = update;
  data = [updateCopy data];
  thermalEntry = [data thermalEntry];

  color = [thermalEntry color];
  styleAttributes = [updateCopy styleAttributes];
  imageTintColor = [styleAttributes imageTintColor];
  v10 = [(_UIStatusBarThermalItem *)self _colorForThermalColor:color imageTintColor:imageTintColor];

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

  v17 = [[UIGraphicsImageRenderer alloc] initWithSize:v13, v13];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __42___UIStatusBarThermalItem_imageForUpdate___block_invoke;
  v22[3] = &unk_1E711FC70;
  v23 = v10;
  v24 = thermalEntry;
  v18 = thermalEntry;
  v19 = v10;
  v20 = [(UIGraphicsImageRenderer *)v17 imageWithActions:v22];

  return v20;
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
        v7 = +[UIColor whiteColor];
        break;
      case 4:
        v7 = +[UIColor blueColor];
        break;
      case 3:
        v7 = +[UIColor purpleColor];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (color)
  {
    if (color == 1)
    {
      v7 = +[UIColor orangeColor];
    }

    else
    {
      if (color != 2)
      {
        goto LABEL_15;
      }

      v7 = +[UIColor redColor];
    }
  }

  else
  {
    v7 = +[UIColor yellowColor];
  }

  v6 = v7;
LABEL_15:
  v8 = [tintColorCopy colorWithAlphaComponent:0.15];
  v9 = [v6 _colorBlendedWithColor:v8 compositingFilter:*MEMORY[0x1E6979D40]];

  return v9;
}

@end