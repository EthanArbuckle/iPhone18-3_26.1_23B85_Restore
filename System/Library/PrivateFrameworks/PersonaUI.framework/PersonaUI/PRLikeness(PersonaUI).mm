@interface PRLikeness(PersonaUI)
- (CGImage)_photoSnapshotWithSize:()PersonaUI scale:options:;
- (id)_accentColorForMonogram;
- (id)_accentColorForPhoto;
- (id)accentColor;
- (id)snapshotWithSize:()PersonaUI scale:options:;
@end

@implementation PRLikeness(PersonaUI)

- (id)accentColor
{
  type = [self type];
  if (type == 2)
  {
    _accentColorForPhoto = [self _accentColorForPhoto];
  }

  else if (type == 1)
  {
    _accentColorForPhoto = [self _accentColorForMonogram];
  }

  else
  {
    _accentColorForPhoto = 0;
  }

  return _accentColorForPhoto;
}

- (id)_accentColorForMonogram
{
  recipe = [self recipe];
  v2 = [PRMonogram monogramWithData:recipe];

  color = [v2 color];
  v4 = [color colorWithAlphaComponent:0.300000012];

  return v4;
}

- (id)_accentColorForPhoto
{
  staticRepresentation = [self staticRepresentation];
  [self cropRect];
  v7 = PRImageCreateWithImageInRect(staticRepresentation, v3, v4, v5, v6);
  if (v7)
  {
    v8 = v7;
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = 1.0;
    v26.size.height = 1.0;
    v10 = (CGRectGetWidth(v26) * AlignedBytesPerRow);
    Data = CGBitmapAllocateData();
    if (Data)
    {
      v12 = Data;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      if (DeviceRGB)
      {
        v14 = DeviceRGB;
        v27.origin.x = 0.0;
        v27.origin.y = 0.0;
        v27.size.width = 1.0;
        v27.size.height = 1.0;
        Width = CGRectGetWidth(v27);
        v28.origin.x = 0.0;
        v28.origin.y = 0.0;
        v28.size.width = 1.0;
        v28.size.height = 1.0;
        Height = CGRectGetHeight(v28);
        v17 = CGBitmapContextCreate(v12, Width, Height, 8uLL, v10, v14, 0x4001u);
        if (v17)
        {
          v18 = v17;
          staticRepresentation2 = [self staticRepresentation];
          v29.origin.x = 0.0;
          v29.origin.y = 0.0;
          v29.size.width = 1.0;
          v29.size.height = 1.0;
          CGContextDrawImage(v18, v29, staticRepresentation2);
          LOBYTE(v20) = *v12;
          LOBYTE(v21) = v12[1];
          LOBYTE(v22) = v12[2];
          v23 = [MEMORY[0x277D75348] colorWithRed:(v20 / 255.0) green:(v21 / 255.0) blue:(v22 / 255.0) alpha:1.0];
          CGContextRelease(v18);
        }

        else
        {
          v23 = 0;
        }

        CGColorSpaceRelease(v14);
      }

      else
      {
        v23 = 0;
      }

      CGBitmapFreeData();
    }

    else
    {
      v23 = 0;
    }

    CGImageRelease(v8);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)snapshotWithSize:()PersonaUI scale:options:
{
  v10 = a6;
  type = [self type];
  if (type == 2)
  {
    v14 = [self _photoSnapshotWithSize:v10 scale:a2 options:{a3, a4}];
  }

  else if (type == 1)
  {
    recipe = [self recipe];
    v13 = [PRMonogram monogramWithData:recipe];

    v14 = [v13 snapshotWithSize:v10 scale:a2 options:{a3, a4}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGImage)_photoSnapshotWithSize:()PersonaUI scale:options:
{
  v10 = a6;
  v11 = [v10 objectForKeyedSubscript:@"PRLikenessSnapshotOptionCircular"];
  bOOLValue = [v11 BOOLValue];

  staticRepresentation = [self staticRepresentation];
  [self cropRect];
  if (bOOLValue)
  {
    CircularImageInRect = PRImageCreateCircularImageInRect(staticRepresentation, v14, v15, v16, v17);
  }

  else
  {
    CircularImageInRect = PRImageCreateWithImageInRect(staticRepresentation, v14, v15, v16, v17);
  }

  v19 = CircularImageInRect;
  if (CircularImageInRect)
  {
    Width = CGImageGetWidth(CircularImageInRect);
    Height = CGImageGetHeight(v19);
    v22 = a3 * a4 < Height || a2 * a4 < Width;
    if (v22)
    {
      v23 = CGImageCreateByScaling();
    }

    else
    {
      v23 = CGImageRetain(v19);
    }

    v24 = v23;
    CGImageRelease(v19);
    if (v24)
    {
      v25 = [v10 objectForKeyedSubscript:@"PRLikenessSnapshotOptionForceDecode"];
      bOOLValue2 = [v25 BOOLValue];

      if (bOOLValue2)
      {
        PRImageForceDecompress(v24);
      }

      if (v22)
      {
        v27 = v24;
        v28 = a2;
        v29 = a3;
        v30 = a4;
      }

      else
      {
        v30 = 1.0;
        v27 = v24;
        v28 = Width;
        v29 = Height;
      }

      v19 = [MEMORY[0x277D755B8] pr_imageWithCGImage:v27 size:v28 scale:{v29, v30}];
      CGImageRelease(v24);
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

@end