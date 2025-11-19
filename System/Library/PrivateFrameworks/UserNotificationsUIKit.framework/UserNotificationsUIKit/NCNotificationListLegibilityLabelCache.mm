@interface NCNotificationListLegibilityLabelCache
+ (id)sharedInstance;
- (NCNotificationListLegibilityLabelCache)init;
- (id)_createLegibilityLabelWithTitle:(id)a3 font:(id)a4;
- (id)_stringDescriptorForFont:(id)a3;
- (id)legibilityLabelForTitle:(id)a3 forSuperview:(id)a4 font:(id)a5;
- (void)clearAll;
@end

@implementation NCNotificationListLegibilityLabelCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[NCNotificationListLegibilityLabelCache sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __56__NCNotificationListLegibilityLabelCache_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(NCNotificationListLegibilityLabelCache);

  return MEMORY[0x2821F96F8]();
}

- (NCNotificationListLegibilityLabelCache)init
{
  v6.receiver = self;
  v6.super_class = NCNotificationListLegibilityLabelCache;
  v2 = [(NCNotificationListLegibilityLabelCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionHeaderViewLegibilityLabelDictionary = v2->_sectionHeaderViewLegibilityLabelDictionary;
    v2->_sectionHeaderViewLegibilityLabelDictionary = v3;
  }

  return v2;
}

- (id)legibilityLabelForTitle:(id)a3 forSuperview:(id)a4 font:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NCNotificationListLegibilityLabelCache *)self sectionHeaderViewLegibilityLabelDictionary];
  v12 = [v11 objectForKey:v8];

  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = [(NCNotificationListLegibilityLabelCache *)self sectionHeaderViewLegibilityLabelDictionary];
    [v13 setObject:v12 forKey:v8];
  }

  v14 = [(NCNotificationListLegibilityLabelCache *)self _stringDescriptorForFont:v10];
  v15 = [v12 objectForKey:v14];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 superview];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 superview];

      if (v19 != v9)
      {
        v20 = [(NCNotificationListLegibilityLabelCache *)self _createLegibilityLabelWithTitle:v8 font:v10];

        v16 = v20;
      }
    }
  }

  else
  {
    v16 = [(NCNotificationListLegibilityLabelCache *)self _createLegibilityLabelWithTitle:v8 font:v10];
    [v12 setObject:v16 forKey:v14];
  }

  return v16;
}

- (void)clearAll
{
  v2 = [(NCNotificationListLegibilityLabelCache *)self sectionHeaderViewLegibilityLabelDictionary];
  [v2 removeAllObjects];
}

- (id)_createLegibilityLabelWithTitle:(id)a3 font:(id)a4
{
  v5 = MEMORY[0x277D760A8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstanceForStyle:1];
  v9 = [objc_alloc(MEMORY[0x277D67CF8]) initWithSettings:v8 strength:*MEMORY[0x277D774E8]];
  [v9 setNumberOfLines:0];
  [v9 setLineBreakMode:0];
  [v9 setFont:v6];

  [v9 setString:v7];
  [v9 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v9 setUserInteractionEnabled:0];

  return v9;
}

- (id)_stringDescriptorForFont:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 familyName];
  v6 = [v4 fontName];
  [v4 pointSize];
  v8 = v7;

  v9 = [v3 stringWithFormat:@"%@:%@:%f", v5, v6, v8];

  return v9;
}

@end