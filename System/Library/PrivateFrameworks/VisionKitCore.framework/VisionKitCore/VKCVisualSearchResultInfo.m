@interface VKCVisualSearchResultInfo
+ (id)visualIntelligenceResultItem;
- (CGRect)normalizedBoundingRect;
- (NSString)displayLabel;
- (NSString)displayMessage;
- (NSString)filledInfoButtonGlyphName;
- (NSString)glyphName;
- (NSString)infoButtonGlyphName;
- (VKCVisualSearchResultInfo)initWithResultItem:(id)a3;
- (id)_infoButtonGlyphName;
- (int64_t)calcDomain;
@end

@implementation VKCVisualSearchResultInfo

+ (id)visualIntelligenceResultItem
{
  v2 = objc_alloc_init(VKCVisualSearchResultInfo);
  [(VKCVisualSearchResultInfo *)v2 setDomain:20];

  return v2;
}

- (VKCVisualSearchResultInfo)initWithResultItem:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = VKCVisualSearchResultInfo;
  v6 = [(VKCVisualSearchResultInfo *)&v8 init];
  if (!v5)
  {
    [VKAssert handleFailedAssertWithCondition:"((item) != nil)" functionName:"[VKCVisualSearchResultInfo initWithResultItem:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "item"];
  }

  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
    v6->_domain = [(VKCVisualSearchResultInfo *)v6 calcDomain];
  }

  return v6;
}

- (NSString)displayLabel
{
  v2 = [(VKCVisualSearchResultInfo *)self item];
  v3 = [v2 domainInfo];
  v4 = [v3 displayLabel];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F2C04538;
  }

  v7 = v6;

  return &v6->isa;
}

- (NSString)displayMessage
{
  v2 = [(VKCVisualSearchResultInfo *)self item];
  v3 = [v2 domainInfo];
  v4 = [v3 displayMessage];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F2C04538;
  }

  v7 = v6;

  return &v6->isa;
}

- (NSString)glyphName
{
  v2 = [(VKCVisualSearchResultInfo *)self item];
  v3 = [v2 domainInfo];
  v4 = [v3 glyphName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F2C04538;
  }

  v7 = v6;

  return &v6->isa;
}

- (CGRect)normalizedBoundingRect
{
  v2 = [(VKCVisualSearchResultInfo *)self item];
  [v2 normalizedBoundingBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSString)infoButtonGlyphName
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(VKCVisualSearchResultInfo *)self _forceDefaultGlyphForDomain:[(VKCVisualSearchResultInfo *)self domain]]|| ([(VKCVisualSearchResultInfo *)self _infoButtonGlyphName], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = @"info.circle.badge.sparkles";
  }

  if (vk_isInternalBuild() || vk_isSeedBuild())
  {
    v4 = [MEMORY[0x1E69DCAB8] vk_symbolImageWithName:v3];
    if (!v4)
    {
      v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(VKCVisualSearchResultInfo *)self item];
        v7 = [v6 domainInfo];
        v8 = [v7 domain];
        v9 = [v8 lastPathComponent];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Unable to find glyph for domain: %@", &v11, 0xCu);
      }

      v3 = @"info.circle.badge.sparkles";
    }
  }

  return v3;
}

- (id)_infoButtonGlyphName
{
  v2 = [(VKCVisualSearchResultInfo *)self domain];
  if (v2 > 0x14)
  {
    return 0;
  }

  else
  {
    return off_1E7BE5E20[v2];
  }
}

- (NSString)filledInfoButtonGlyphName
{
  v2 = [(VKCVisualSearchResultInfo *)self infoButtonGlyphName];
  v3 = [v2 stringByAppendingString:@".fill"];

  return v3;
}

- (int64_t)calcDomain
{
  v2 = [(VKCVisualSearchResultInfo *)self item];
  v3 = [v2 domainInfo];
  v4 = [v3 domain];
  v5 = [v4 pathExtension];

  if ([v5 isEqualToString:@"album"])
  {
    goto LABEL_2;
  }

  if ([v5 isEqualToString:@"art"])
  {
    v6 = 2;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"birds"])
  {
    v6 = 5;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"book"])
  {
    v6 = 6;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"cats"])
  {
    v6 = 7;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"dogs"])
  {
    v6 = 8;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"food"])
  {
    v6 = 9;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"insects"])
  {
    v6 = 10;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"landmark"])
  {
    v6 = 11;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"mammals"])
  {
    v6 = 12;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"naturalLandmark"])
  {
    v6 = 13;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"nature"])
  {
    v6 = 14;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"reptiles"])
  {
    v6 = 15;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"sculpture"])
  {
    v6 = 16;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"skyline"])
  {
    v6 = 17;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"storefront"])
  {
    v6 = 18;
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"album"])
  {
LABEL_2:
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"laundryCareSymbol"])
  {
    v6 = 19;
  }

  else if ([v5 isEqualToString:@"brandLogoSymbol"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"autoSymbol"])
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

LABEL_33:

  return v6;
}

@end