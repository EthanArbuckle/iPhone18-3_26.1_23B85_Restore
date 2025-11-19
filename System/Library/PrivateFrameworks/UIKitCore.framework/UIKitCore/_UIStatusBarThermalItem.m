@interface _UIStatusBarThermalItem
- (id)_colorForThermalColor:(int64_t)a3 imageTintColor:(id)a4;
- (id)imageForUpdate:(id)a3;
@end

@implementation _UIStatusBarThermalItem

- (id)imageForUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  v6 = [v5 thermalEntry];

  v7 = [v6 color];
  v8 = [v4 styleAttributes];
  v9 = [v8 imageTintColor];
  v10 = [(_UIStatusBarThermalItem *)self _colorForThermalColor:v7 imageTintColor:v9];

  v11 = [v4 styleAttributes];
  v12 = [v11 imageNamePrefixes];
  LOBYTE(v9) = [v12 containsObject:@"SystemUpdate_"];

  v13 = 15.0;
  if ((v9 & 1) == 0)
  {
    v14 = [v4 styleAttributes];
    v15 = [v14 imageNamePrefixes];
    v16 = [v15 containsObject:@"Large_"];

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
  v24 = v6;
  v18 = v6;
  v19 = v10;
  v20 = [(UIGraphicsImageRenderer *)v17 imageWithActions:v22];

  return v20;
}

- (id)_colorForThermalColor:(int64_t)a3 imageTintColor:(id)a4
{
  v5 = a4;
  v6 = 0;
  if (a3 > 2)
  {
    switch(a3)
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

  else if (a3)
  {
    if (a3 == 1)
    {
      v7 = +[UIColor orangeColor];
    }

    else
    {
      if (a3 != 2)
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
  v8 = [v5 colorWithAlphaComponent:0.15];
  v9 = [v6 _colorBlendedWithColor:v8 compositingFilter:*MEMORY[0x1E6979D40]];

  return v9;
}

@end