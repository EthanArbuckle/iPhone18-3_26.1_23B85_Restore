@interface WebDataSource(WebInternal)
+ (uint64_t)_repTypesAllowImageTypeOmission:()WebInternal;
@end

@implementation WebDataSource(WebInternal)

+ (uint64_t)_repTypesAllowImageTypeOmission:()WebInternal
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *self = v2;
  v3 = objc_opt_class();
  v4 = [+[WebHTMLRepresentation supportedNonImageMIMETypes](WebHTMLRepresentation "supportedNonImageMIMETypes")];
  for (i = [v4 nextObject]; ; i = objc_msgSend(v4, "nextObject"))
  {
    v6 = i;
    if (!i)
    {
      break;
    }

    if (![v2 objectForKey:i])
    {
      [v2 setObject:v3 forKey:v6];
    }
  }

  v7 = objc_opt_class();
  v8 = [+[WebHTMLRepresentation supportedMediaMIMETypes](WebHTMLRepresentation "supportedMediaMIMETypes")];
  for (j = [v8 nextObject]; ; j = objc_msgSend(v8, "nextObject"))
  {
    v10 = j;
    if (!j)
    {
      break;
    }

    if (![v2 objectForKey:j])
    {
      [v2 setObject:v7 forKey:v10];
    }
  }

  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if ((result & 1) == 0)
  {
    +[WebView _getPDFRepresentationClass];
    v12 = objc_opt_class();
    v13 = [-[objc_class supportedMIMETypes](+[WebView _getPDFRepresentationClass](WebView "_getPDFRepresentationClass")];
    for (result = [v13 nextObject]; ; result = objc_msgSend(v13, "nextObject"))
    {
      v14 = result;
      if (!result)
      {
        break;
      }

      if (![v2 objectForKey:result])
      {
        [v2 setObject:v12 forKey:v14];
      }
    }
  }

  return result;
}

@end