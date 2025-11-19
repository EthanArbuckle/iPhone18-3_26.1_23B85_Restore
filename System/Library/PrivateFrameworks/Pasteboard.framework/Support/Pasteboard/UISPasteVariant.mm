@interface UISPasteVariant
+ (id)_systemAssetCatalog;
- (id)_keyCommandSpecification;
@end

@implementation UISPasteVariant

- (id)_keyCommandSpecification
{
  v3 = [(UISPasteVariant *)self keyInput];
  if (v3)
  {
    v4 = [(UISPasteVariant *)self secureName];
    v5 = 0xF317E322CB2CEA02;
    if (v4 != 65537)
    {
      v5 = 0;
    }

    if (v4 == 0x10000)
    {
      v6 = 0x84E6A8CBF3F0F10CLL;
    }

    else
    {
      v6 = v5;
    }

    v7 = [BKSHIDEventKeyCommand keyCommandWithInput:v3 modifierFlags:[(UISPasteVariant *)self keyModifierFlags]];
    v8 = [BKSHIDAuthenticatedKeyCommandSpecification specificationWithKeyCommand:v7 context:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_systemAssetCatalog
{
  off_1000391E8();
  v3 = *v2;
  if (*v2)
  {
    goto LABEL_4;
  }

  v4 = v2;
  v5 = [CUICatalog alloc];
  v6 = [NSURL fileURLWithPath:@"/System/Library/CoreServices/CoreGlyphs.bundle/Assets.car"];
  v12 = 0;
  v7 = [v5 initWithURL:v6 error:&v12];
  v8 = v12;

  if (v7)
  {
    *v4 = v7;

    v3 = *v4;
LABEL_4:
    v9 = v3;
    goto LABEL_5;
  }

  v11 = _PBLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not load system asset catalog. Error: %@", buf, 0xCu);
  }

  v9 = 0;
LABEL_5:

  return v9;
}

@end