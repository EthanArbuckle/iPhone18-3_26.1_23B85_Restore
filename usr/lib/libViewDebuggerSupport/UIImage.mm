@interface UIImage
- (id)_imageResizedForDisplayInInspector;
- (id)fallback_debugHierarchyValueWithOutOptions:(id *)options outError:(id *)error;
@end

@implementation UIImage

- (id)fallback_debugHierarchyValueWithOutOptions:(id *)options outError:(id *)error
{
  v6 = objc_opt_class();
  if (!v6 || (v7 = v6, !object_isClass(v6)))
  {
    v9 = 0;
    goto LABEL_4;
  }

  v8 = NSStringFromClass(v7);
  v9 = v8;
  if (!v8)
  {
LABEL_4:
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    goto LABEL_7;
  }

  v11 = v8;
LABEL_7:
  v12 = v11;

  v56[0] = @"propertyFormat";
  v56[1] = @"propertyRuntimeType";
  v57[0] = @"image";
  v57[1] = v12;
  v53 = v12;
  v13 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
  *options = v13;
  v14 = _UIImageIsFromMainBundle();
  IsUIKitImage = _UIImageIsUIKitImage();
  IsSystemSymbol = _UIImageIsSystemSymbol();
  v54[0] = @"isFromMainBundle";
  v17 = [NSNumber numberWithBool:v14];
  v55[0] = v17;
  v54[1] = @"isUIKitImage";
  v18 = [NSNumber numberWithBool:IsUIKitImage];
  v55[1] = v18;
  v54[2] = @"isSystemSymbol";
  v19 = [NSNumber numberWithBool:IsSystemSymbol];
  v55[2] = v19;
  v54[3] = @"width";
  [(UIImage *)self size];
  v20 = [NSNumber numberWithDouble:?];
  v55[3] = v20;
  v54[4] = @"height";
  [(UIImage *)self size];
  v22 = [NSNumber numberWithDouble:v21];
  v55[4] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:5];
  v24 = [v23 mutableCopy];

  v25 = _UIImageIdentityName();
  if (v25)
  {
    [v24 setObject:v25 forKeyedSubscript:@"imageName"];
  }

  v26 = _UIImageIdentityBundleIdentifier();
  if (v26)
  {
    [v24 setObject:v26 forKeyedSubscript:@"bundleIdentifier"];
  }

  symbolConfiguration = [(UIImage *)self symbolConfiguration];

  if (symbolConfiguration)
  {
    symbolConfiguration2 = [(UIImage *)self symbolConfiguration];
    v29 = _UIImageSymbolConfigurationTextualSummary();

    if (v29)
    {
      [v24 setObject:v29 forKeyedSubscript:@"symbolConfigurationSummary"];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UIImage *)self hasBaseline])
  {
    [(UIImage *)self baselineOffsetFromBottom];
    v30 = [NSNumber numberWithDouble:?];
    [v24 setObject:v30 forKeyedSubscript:@"baselineOffsetFromBottom"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UIImage *)self hasMidline])
  {
    [(UIImage *)self midlineOffsetFromCenter];
    v31 = [NSNumber numberWithDouble:?];
    [v24 setObject:v31 forKeyedSubscript:@"midlineOffsetFromCenter"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UIImage *)self hasContentInsets])
  {
    [(UIImage *)self contentInsets];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = [NSNumber numberWithDouble:?];
    v58[0] = v38;
    v39 = [NSNumber numberWithDouble:v33];
    v58[1] = v39;
    v40 = [NSNumber numberWithDouble:v35];
    v58[2] = v40;
    v41 = [NSNumber numberWithDouble:v37];
    v58[3] = v41;
    v42 = [NSArray arrayWithObjects:v58 count:4];

    [v24 setObject:v42 forKeyedSubscript:@"contentInsets"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UIImage *)self _CGPDFPage])
  {
    v43 = @"PDF";
LABEL_30:
    [v24 setObject:v43 forKeyedSubscript:@"vectorImageType"];
    goto LABEL_31;
  }

  if (objc_opt_respondsToSelector())
  {
    _CGSVGDocument = [(UIImage *)self _CGSVGDocument];

    if (_CGSVGDocument)
    {
      v43 = @"SVG";
      goto LABEL_30;
    }
  }

LABEL_31:
  _imageResizedForDisplayInInspector = [(UIImage *)self _imageResizedForDisplayInInspector];
  v46 = UIImagePNGRepresentation(_imageResizedForDisplayInInspector);

  v47 = v46;
  v48 = v24;
  if (v48 | v47)
  {
    Mutable = CFDictionaryCreateMutable(0, 2, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v50 = Mutable;
    v51 = v53;
    if (v47)
    {
      CFDictionaryAddValue(Mutable, @"imageData", v47);
    }

    if (v48)
    {
      CFDictionaryAddValue(v50, @"metadata", v48);
    }
  }

  else
  {
    v50 = 0;
    v51 = v53;
  }

  return v50;
}

- (id)_imageResizedForDisplayInInspector
{
  if (_UIImageIsSystemSymbol() && ([(UIImage *)self size], v3 >= 2.22044605e-16))
  {
    [(UIImage *)self size];
    v6 = v5 * 84.0;
    [(UIImage *)self size];
    v8 = v6 / v7;
    v11.width = v8;
    v11.height = 84.0;
    UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
    [(UIImage *)self drawInRect:0.0, 0.0, v8, 84.0];
    selfCopy = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end