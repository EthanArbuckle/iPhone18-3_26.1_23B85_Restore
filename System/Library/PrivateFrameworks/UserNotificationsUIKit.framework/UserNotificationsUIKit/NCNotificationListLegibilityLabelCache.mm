@interface NCNotificationListLegibilityLabelCache
+ (id)sharedInstance;
- (NCNotificationListLegibilityLabelCache)init;
- (id)_createLegibilityLabelWithTitle:(id)title font:(id)font;
- (id)_stringDescriptorForFont:(id)font;
- (id)legibilityLabelForTitle:(id)title forSuperview:(id)superview font:(id)font;
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

- (id)legibilityLabelForTitle:(id)title forSuperview:(id)superview font:(id)font
{
  titleCopy = title;
  superviewCopy = superview;
  fontCopy = font;
  sectionHeaderViewLegibilityLabelDictionary = [(NCNotificationListLegibilityLabelCache *)self sectionHeaderViewLegibilityLabelDictionary];
  v12 = [sectionHeaderViewLegibilityLabelDictionary objectForKey:titleCopy];

  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionHeaderViewLegibilityLabelDictionary2 = [(NCNotificationListLegibilityLabelCache *)self sectionHeaderViewLegibilityLabelDictionary];
    [sectionHeaderViewLegibilityLabelDictionary2 setObject:v12 forKey:titleCopy];
  }

  v14 = [(NCNotificationListLegibilityLabelCache *)self _stringDescriptorForFont:fontCopy];
  v15 = [v12 objectForKey:v14];
  if (v15)
  {
    v16 = v15;
    superview = [v15 superview];
    if (superview)
    {
      v18 = superview;
      superview2 = [v16 superview];

      if (superview2 != superviewCopy)
      {
        v20 = [(NCNotificationListLegibilityLabelCache *)self _createLegibilityLabelWithTitle:titleCopy font:fontCopy];

        v16 = v20;
      }
    }
  }

  else
  {
    v16 = [(NCNotificationListLegibilityLabelCache *)self _createLegibilityLabelWithTitle:titleCopy font:fontCopy];
    [v12 setObject:v16 forKey:v14];
  }

  return v16;
}

- (void)clearAll
{
  sectionHeaderViewLegibilityLabelDictionary = [(NCNotificationListLegibilityLabelCache *)self sectionHeaderViewLegibilityLabelDictionary];
  [sectionHeaderViewLegibilityLabelDictionary removeAllObjects];
}

- (id)_createLegibilityLabelWithTitle:(id)title font:(id)font
{
  v5 = MEMORY[0x277D760A8];
  fontCopy = font;
  titleCopy = title;
  v8 = [v5 sharedInstanceForStyle:1];
  v9 = [objc_alloc(MEMORY[0x277D67CF8]) initWithSettings:v8 strength:*MEMORY[0x277D774E8]];
  [v9 setNumberOfLines:0];
  [v9 setLineBreakMode:0];
  [v9 setFont:fontCopy];

  [v9 setString:titleCopy];
  [v9 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v9 setUserInteractionEnabled:0];

  return v9;
}

- (id)_stringDescriptorForFont:(id)font
{
  v3 = MEMORY[0x277CCACA8];
  fontCopy = font;
  familyName = [fontCopy familyName];
  fontName = [fontCopy fontName];
  [fontCopy pointSize];
  v8 = v7;

  v9 = [v3 stringWithFormat:@"%@:%@:%f", familyName, fontName, v8];

  return v9;
}

@end