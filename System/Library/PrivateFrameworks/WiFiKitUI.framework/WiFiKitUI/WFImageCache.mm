@interface WFImageCache
+ (id)sharedImageCache;
- (BOOL)_isUIKitImageName:(id)name;
- (WFImageCache)init;
- (id)imageNamed:(id)named;
- (id)imageNamed:(id)named variableValue:(double)value;
@end

@implementation WFImageCache

+ (id)sharedImageCache
{
  if (sharedImageCache_onceToken != -1)
  {
    +[WFImageCache sharedImageCache];
  }

  v3 = _sharedImageCache;

  return v3;
}

uint64_t __32__WFImageCache_sharedImageCache__block_invoke()
{
  v0 = objc_alloc_init(WFImageCache);
  v1 = _sharedImageCache;
  _sharedImageCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WFImageCache)init
{
  v6.receiver = self;
  v6.super_class = WFImageCache;
  v2 = [(WFImageCache *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  imageCache = v2->_imageCache;
  v2->_imageCache = v3;

  return v2;
}

id __41__WFImageCache_imageNamed_variableValue___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlackColor];
  }
  v2 = ;

  return v2;
}

- (BOOL)_isUIKitImageName:(id)name
{
  v3 = MEMORY[0x277CBEB98];
  nameCopy = name;
  v5 = [v3 setWithObjects:{@"LockScreen_0_Bars", @"LockScreen_1_Bars", @"LockScreen_2_Bars", @"LockScreen_3_Bars", @"LockScreen_4_Bars", 0}];
  v6 = [v5 containsObject:nameCopy];

  return v6;
}

- (id)imageNamed:(id)named
{
  v35 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  if (namedCopy)
  {
    v5 = [(NSMutableDictionary *)self->_imageCache objectForKey:namedCopy];
    if (v5)
    {
      goto LABEL_9;
    }

    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.WiFiKitUI"];
    if (!v6)
    {
      v27 = WFLogForCategory(0);
      v32 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v27 || !os_log_type_enabled(v27, v32))
      {
        goto LABEL_32;
      }

      v33 = 138412290;
      v34 = @"com.apple.framework.WiFiKitUI";
      v29 = "Unable to get bundle for %@";
      v30 = v27;
      v31 = v32;
      goto LABEL_31;
    }

    if ([(WFImageCache *)self _isUIKitImageName:namedCopy])
    {
      v7 = [MEMORY[0x277D755B8] kitImageNamed:namedCopy];
      goto LABEL_6;
    }

    if ([(__CFString *)namedCopy isEqualToString:@"checkmark"])
    {
      [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_2();
      v11 = [v10 fontDescriptorWithSymbolicTraits:?];

      v12 = OUTLINED_FUNCTION_1_1();
      v14 = [v13 fontWithDescriptor:v12 size:?];
      v15 = [MEMORY[0x277D755D0] configurationWithFont:v14 scale:2];
      v16 = MEMORY[0x277D755B8];
      v17 = @"checkmark";
    }

    else if ([(__CFString *)namedCopy isEqualToString:@"Lock"])
    {
      [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_2();
      v11 = [v18 fontDescriptorWithSymbolicTraits:?];

      v19 = OUTLINED_FUNCTION_1_1();
      v14 = [v20 fontWithDescriptor:v19 size:?];
      v15 = [MEMORY[0x277D755D0] configurationWithFont:v14 scale:1];
      v16 = MEMORY[0x277D755B8];
      v17 = @"lock.fill";
    }

    else if ([(__CFString *)namedCopy isEqualToString:@"Personal_Hotspot"])
    {
      [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_2();
      v11 = [v21 fontDescriptorWithSymbolicTraits:?];

      v22 = OUTLINED_FUNCTION_1_1();
      v14 = [v23 fontWithDescriptor:v22 size:?];
      v15 = [MEMORY[0x277D755D0] configurationWithFont:v14 scale:1];
      v16 = MEMORY[0x277D755B8];
      v17 = @"personalhotspot";
    }

    else
    {
      if (![(__CFString *)namedCopy isEqualToString:@"WiFiBarsError"])
      {
        v7 = [MEMORY[0x277D755B8] imageNamed:namedCopy inBundle:v6 compatibleWithTraitCollection:0];
LABEL_6:
        v5 = v7;
        if (v7)
        {
LABEL_7:
          [(NSMutableDictionary *)self->_imageCache setObject:v5 forKey:namedCopy];
LABEL_8:

          goto LABEL_9;
        }

        goto LABEL_21;
      }

      [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_2();
      v11 = [v24 fontDescriptorWithSymbolicTraits:?];

      v25 = OUTLINED_FUNCTION_1_1();
      v14 = [v26 fontWithDescriptor:v25 size:?];
      v15 = [MEMORY[0x277D755D0] configurationWithFont:v14 scale:1];
      v16 = MEMORY[0x277D755B8];
      v17 = @"wifi.exclamationmark";
    }

    v5 = [v16 systemImageNamed:v17 withConfiguration:v15];

    if (v5)
    {
      goto LABEL_7;
    }

LABEL_21:
    v27 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v27 || !os_log_type_enabled(v27, v28))
    {
      goto LABEL_32;
    }

    v33 = 138412290;
    v34 = namedCopy;
    v29 = "Unable to get image named %@";
    v30 = v27;
    v31 = v28;
LABEL_31:
    _os_log_impl(&dword_273FB9000, v30, v31, v29, &v33, 0xCu);
LABEL_32:

    v5 = 0;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)imageNamed:(id)named variableValue:(double)value
{
  v23 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  if (namedCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%f", namedCopy, *&value];
    v8 = [(WFImageCache *)self imageNamed:v7];
    if (v8)
    {
      v9 = v8;
      goto LABEL_14;
    }

    if (([namedCopy isEqualToString:@"wifi"] & 1) != 0 || objc_msgSend(namedCopy, "isEqualToString:", @"cellularbars"))
    {
      v10 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_60];
      v11 = [MEMORY[0x277D755D0] configurationWithHierarchicalColor:v10];
      v12 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
      v13 = [v12 fontDescriptorWithSymbolicTraits:2];

      v14 = [MEMORY[0x277D74300] fontWithDescriptor:v13 size:0.0];
      v15 = [MEMORY[0x277D755D0] configurationWithFont:v14 scale:1];
      v16 = [v11 configurationByApplyingConfiguration:v15];
      v9 = [MEMORY[0x277D755B8] systemImageNamed:namedCopy variableValue:v16 withConfiguration:value];

      if (v9)
      {
        [(NSMutableDictionary *)self->_imageCache setObject:v9 forKey:v7];
        goto LABEL_14;
      }
    }

    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v17 && os_log_type_enabled(v17, v18))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_273FB9000, v17, v18, "Unable to get image named %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

@end