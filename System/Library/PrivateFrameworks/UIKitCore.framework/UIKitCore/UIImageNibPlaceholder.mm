@interface UIImageNibPlaceholder
- (UIImageNibPlaceholder)initWithCoder:(id)a3;
- (UIImageNibPlaceholder)initWithContentsOfFile:(id)a3 andRuntimeResourceName:(id)a4;
- (UIImageNibPlaceholder)initWithData:(id)a3 andRuntimeResourceName:(id)a4;
- (UIImageNibPlaceholder)initWithRuntimeSystemSymbolResourceName:(id)a3;
- (id)_initWithOtherImage:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIImageNibPlaceholder

- (UIImageNibPlaceholder)initWithContentsOfFile:(id)a3 andRuntimeResourceName:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = UIImageNibPlaceholder;
  v7 = [(UIImage *)&v12 initWithContentsOfFile:a3];
  v8 = v7;
  if (v7)
  {
    [(UIImageNibPlaceholder *)v7 _commonInit];
    v9 = [v6 copy];
    runtimeResourceName = v8->runtimeResourceName;
    v8->runtimeResourceName = v9;
  }

  return v8;
}

- (UIImageNibPlaceholder)initWithData:(id)a3 andRuntimeResourceName:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = UIImageNibPlaceholder;
  v7 = [(UIImage *)&v12 initWithData:a3];
  v8 = v7;
  if (v7)
  {
    [(UIImageNibPlaceholder *)v7 _commonInit];
    v9 = [v6 copy];
    runtimeResourceName = v8->runtimeResourceName;
    v8->runtimeResourceName = v9;
  }

  return v8;
}

- (UIImageNibPlaceholder)initWithRuntimeSystemSymbolResourceName:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIImageNibPlaceholder;
  v5 = [(UIImage *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(UIImageNibPlaceholder *)v5 _commonInit];
    v7 = [v4 copy];
    systemSymbolResourceName = v6->systemSymbolResourceName;
    v6->systemSymbolResourceName = v7;

    v9 = [v4 copy];
    runtimeResourceName = v6->runtimeResourceName;
    v6->runtimeResourceName = v9;
  }

  return v6;
}

- (id)_initWithOtherImage:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UIImageNibPlaceholder;
  v5 = [(UIImage *)&v16 _initWithOtherImage:v4];
  v6 = v5;
  if (v5)
  {
    [v5 _commonInit];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v4[18] copy];
      v8 = v6[18];
      v6[18] = v7;

      v9 = [v4[19] copy];
      v10 = v6[19];
      v6[19] = v9;

      v6[20] = v4[20];
      v11 = [v4[21] copy];
      v12 = v6[21];
      v6[21] = v11;

      v13 = [v4[22] copy];
      v14 = v6[22];
      v6[22] = v13;

      v6[23] = v4[23];
    }
  }

  return v6;
}

- (UIImageNibPlaceholder)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = UIResourceBundleForNIBBeingDecodedWithCoder(v3);
  v5 = [v3 decodeObjectForKey:@"UISystemSymbolResourceName"];
  v6 = [v3 decodeObjectForKey:@"UIResourceCatalogName"];
  v7 = v6;
  if (!v5)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  if ([v6 length] || (+[UIImage systemImageNamed:](UIImage, "systemImageNamed:", v5), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v7 isEqualToString:@"private"])
    {
      v8 = [UIImage _systemImageNamed:v5];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
  if ([v3 containsValueForKey:@"UIImageVariableValue"])
  {
    [v3 decodeDoubleForKey:@"UIImageVariableValue"];
    v9 = [v8 _imageWithVariableValue:?];

    v8 = v9;
  }

  v10 = [v3 decodeObjectForKey:@"UIResourceName"];
  if (v4)
  {
    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    if (v4 == v11)
    {
      _UIKitGetApplicationAssetManager();
    }

    else
    {
      [_UIAssetManager assetManagerForBundle:v4];
    }
    v12 = ;

    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = _UIKitGetApplicationAssetManager();
    if (v8)
    {
LABEL_20:
      v13 = v8;
      goto LABEL_21;
    }
  }

  v13 = [v12 imageNamed:v10];
  if (!v13)
  {
    v13 = _UIImageAtPath(v10, v4, 0, 0);
    if (!v13)
    {
      [v3 decodeFloatForKey:@"UIImageWidth"];
      v15 = v14;
      [v3 decodeFloatForKey:@"UIImageHeight"];
      v17 = v16;
      v18 = [v4 bundleIdentifier];
      NSLog(&cfstr_CouldNotLoadTh.isa, v10, v18);

      space = CGColorSpaceCreateDeviceRGB();
      v19 = v15;
      v20 = 4 * (v15 & 0x3FFFFFFF);
      v32 = malloc_type_calloc(v20 * v17, 1uLL, 0xCC38A882uLL);
      v21 = CGBitmapContextCreate(v32, v19, v17, 8uLL, v20, space, 2u);
      Image = CGBitmapContextCreateImage(v21);
      CGContextRelease(v21);
      CGColorSpaceRelease(space);
      v23 = Image;
      v24 = [[UIImage alloc] initWithCGImage:Image];
      CGImageRelease(v23);
      free(v32);
      if (!v24)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  v24 = v13;
LABEL_22:
  v25 = [v3 decodeIntegerForKey:@"UIRenderingMode"];
  if (v25)
  {
    v26 = [(UIImage *)v24 imageWithRenderingMode:v25];

    v24 = v26;
  }

  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"UISymbolImageConfiguration"];
  if (v27)
  {
    v28 = [(UIImage *)v24 imageByApplyingSymbolConfiguration:v27];

    v24 = v28;
  }

LABEL_27:
  v29 = v24;

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [(UIImage *)self size];
  *&v4 = v4;
  [v8 encodeFloat:@"UIImageWidth" forKey:v4];
  [(UIImage *)self size];
  *&v6 = v5;
  [v8 encodeFloat:@"UIImageHeight" forKey:v6];
  [v8 encodeObject:self->runtimeResourceName forKey:@"UIResourceName"];
  [v8 encodeObject:self->systemSymbolResourceName forKey:@"UISystemSymbolResourceName"];
  if (self->_variableValue != INFINITY)
  {
    [v8 encodeDouble:@"UIImageVariableValue" forKey:?];
  }

  resourceRenderingMode = self->_resourceRenderingMode;
  if (resourceRenderingMode)
  {
    [v8 encodeInteger:resourceRenderingMode forKey:@"UIRenderingMode"];
  }

  [v8 encodeObject:self->_resourceSymbolImageConfiguration forKey:@"UISymbolImageConfiguration"];
  [v8 encodeObject:self->_resourceCatalogName forKey:@"UIResourceCatalogName"];
}

@end