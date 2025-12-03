@interface IKImageElement(TVMLKitAdditions)
- (double)tv_imageScaleToSize;
- (id)tv_imageProxyWithLayout:()TVMLKitAdditions;
- (id)tv_resourceImage;
- (id)tv_symbolImage;
- (id)tv_urlWithLayout:()TVMLKitAdditions;
- (id)tv_urlWithSize:()TVMLKitAdditions focusSizeIncrease:;
- (id)tv_urlWithSize:()TVMLKitAdditions focusSizeIncrease:centerGrowth:cropCode:;
- (uint64_t)tv_associatedViewElement;
- (uint64_t)tv_imageType;
- (uint64_t)tv_isResource;
- (uint64_t)tv_isSymbol;
@end

@implementation IKImageElement(TVMLKitAdditions)

- (uint64_t)tv_associatedViewElement
{
  v2 = objc_opt_class();

  return [self tv_associatedViewElementWithDefaultClass:v2];
}

- (uint64_t)tv_isResource
{
  v1 = [self url];
  tv_isResourceURL = [v1 tv_isResourceURL];

  return tv_isResourceURL;
}

- (id)tv_resourceImage
{
  v1 = [self url];
  if ([v1 tv_isResourceURL])
  {
    v2 = +[TVInterfaceFactory sharedInterfaceFactory];
    tv_resourceName = [v1 tv_resourceName];
    v4 = [v2 imageForResource:tv_resourceName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)tv_isSymbol
{
  v1 = [self url];
  tv_isSymbolURL = [v1 tv_isSymbolURL];

  return tv_isSymbolURL;
}

- (id)tv_symbolImage
{
  v1 = [self url];
  if ([v1 tv_isSymbolURL])
  {
    v2 = MEMORY[0x277D755B8];
    tv_symbolName = [v1 tv_symbolName];
    v4 = [v2 systemImageNamed:tv_symbolName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tv_imageProxyWithLayout:()TVMLKitAdditions
{
  v4 = [TVImageLayout layoutWithLayout:a3 element:self];
  v5 = [self tv_urlWithLayout:v4];
  if (![v5 tv_isResourceURL] || (+[TVInterfaceFactory sharedInterfaceFactory](TVInterfaceFactory, "sharedInterfaceFactory"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "decoratorSize"), objc_msgSend(v6, "_imageProxyForResourceURL:scaleToSize:", v5), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    if (![v5 tv_isSymbolURL] || (+[TVInterfaceFactory sharedInterfaceFactory](TVInterfaceFactory, "sharedInterfaceFactory"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "imageSymbolConfiguration"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "decoratorSize"), objc_msgSend(v8, "_imageProxyForSymbolURL:imageSymbolConfiguration:scaleToSize:", v5, v9), v7 = objc_claimAutoreleasedReturnValue(), v9, v8, !v7))
    {
      v10 = +[TVInterfaceFactory sharedInterfaceFactory];
      v7 = [v10 _imageProxyFromElement:self withLayout:v4];

      if (!v7)
      {
        v7 = [TVViewFactory imageProxyWithURL:v5];
      }
    }
  }

  return v7;
}

- (double)tv_imageScaleToSize
{
  v2 = [TVImageLayout layoutWithLayout:0 element:self];
  [v2 decoratorSize];
  v4 = v3;
  v6 = v5;
  v7 = [self tv_urlWithLayout:v2];
  v8 = v7;
  if (v4 == *MEMORY[0x277CBF3A8] && v6 == *(MEMORY[0x277CBF3A8] + 8))
  {
    if ([v7 tv_isResourceURL])
    {
      tv_symbolName = +[TVInterfaceFactory sharedInterfaceFactory];
      tv_resourceName = [v8 tv_resourceName];
      v12 = [tv_symbolName imageForResource:tv_resourceName];
    }

    else
    {
      if (![v8 tv_isSymbolURL])
      {
        goto LABEL_12;
      }

      v13 = MEMORY[0x277D755B8];
      tv_symbolName = [v8 tv_symbolName];
      tv_resourceName = [v2 imageSymbolConfiguration];
      v12 = [v13 systemImageNamed:tv_symbolName withConfiguration:tv_resourceName];
    }

    v14 = v12;

    if (v14)
    {
      [v14 size];
      v4 = v15;
    }
  }

LABEL_12:

  return v4;
}

- (uint64_t)tv_imageType
{
  elementName = [self elementName];
  if ([elementName isEqualToString:@"img"])
  {
    v2 = 0;
  }

  else if ([elementName isEqualToString:@"fullscreenImg"])
  {
    v2 = 1;
  }

  else if ([elementName isEqualToString:@"decorationImage"])
  {
    v2 = 2;
  }

  else if ([elementName isEqualToString:@"heroImg"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)tv_urlWithSize:()TVMLKitAdditions focusSizeIncrease:centerGrowth:cropCode:
{
  v12 = a7;
  attributes = [self attributes];
  v14 = [attributes objectForKeyedSubscript:@"isTemplated"];

  if ([v14 length] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v14, "BOOLValue"))
  {
    attributes2 = [self attributes];
    v16 = [attributes2 objectForKeyedSubscript:@"src"];

    if ([v16 length])
    {
      attributes3 = [self attributes];
      v18 = [attributes3 objectForKeyedSubscript:@"format"];

      v19 = [[TVURLDescription alloc] initUrlWithProperties:v16 imageSize:v12 focusSizeIncrease:v18 cropCode:a2 urlFormat:a3, a4];
      [v19 setCenterGrowth:a6];
      v20 = [TVViewFactory imageURLWithDescription:v19];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = [self url];
  }

  return v20;
}

- (id)tv_urlWithSize:()TVMLKitAdditions focusSizeIncrease:
{
  attributes = [self attributes];
  v9 = [attributes objectForKeyedSubscript:@"cropCode"];

  v10 = [self tv_urlWithSize:0 focusSizeIncrease:v9 centerGrowth:a2 cropCode:{a3, a4}];

  return v10;
}

- (id)tv_urlWithLayout:()TVMLKitAdditions
{
  v4 = a3;
  [v4 decoratorSize];
  if (v5 == 0.0 || ([v4 decoratorSize], v6 == 0.0))
  {
    v7 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [IKImageElement(TVMLKitAdditions) tv_urlWithLayout:v7];
    }
  }

  attributes = [self attributes];
  v9 = [attributes objectForKeyedSubscript:@"cropCode"];
  v10 = v9;
  if (v9)
  {
    cropCode = v9;
  }

  else
  {
    cropCode = [v4 cropCode];
  }

  v12 = cropCode;

  [v4 decoratorSize];
  v14 = v13;
  v16 = v15;
  [v4 focusSizeIncrease];
  v18 = [self tv_urlWithSize:objc_msgSend(v4 focusSizeIncrease:"centerGrowth") centerGrowth:v12 cropCode:{v14, v16, v17}];

  return v18;
}

@end