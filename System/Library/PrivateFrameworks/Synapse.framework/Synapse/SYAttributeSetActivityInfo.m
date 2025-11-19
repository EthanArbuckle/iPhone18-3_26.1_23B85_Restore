@interface SYAttributeSetActivityInfo
- (NSString)activityType;
- (NSString)persistentIdentifier;
- (NSString)targetContentIdentifier;
- (NSURL)canonicalURL;
- (NSURL)webpageURL;
- (SYAttributeSetActivityInfo)initWithAttributeSet:(id)a3;
@end

@implementation SYAttributeSetActivityInfo

- (SYAttributeSetActivityInfo)initWithAttributeSet:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SYAttributeSetActivityInfo;
  v6 = [(SYAttributeSetActivityInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributeSet, a3);
  }

  return v7;
}

- (NSString)activityType
{
  v3 = [SYItemIndexingManager _customKeyForKey:@"sy_activityType"];
  v4 = [(SYAttributeSetActivityInfo *)self attributeSet];
  v5 = [v4 valueForCustomKey:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2838DFF18;
  }

  v8 = v7;

  return &v7->isa;
}

- (NSURL)webpageURL
{
  v2 = [(SYAttributeSetActivityInfo *)self attributeSet];
  v3 = [v2 URL];

  return v3;
}

- (NSURL)canonicalURL
{
  v3 = [SYItemIndexingManager _customKeyForKey:@"sy_canonicalURL"];
  v4 = [(SYAttributeSetActivityInfo *)self attributeSet];
  v5 = [v4 valueForCustomKey:v3];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)targetContentIdentifier
{
  v3 = [SYItemIndexingManager _customKeyForKey:@"sy_activityTargetContentID"];
  v4 = [(SYAttributeSetActivityInfo *)self attributeSet];
  v5 = [v4 valueForCustomKey:v3];

  return v5;
}

- (NSString)persistentIdentifier
{
  v3 = [SYItemIndexingManager _customKeyForKey:@"sy_activityPersistentID"];
  v4 = [(SYAttributeSetActivityInfo *)self attributeSet];
  v5 = [v4 valueForCustomKey:v3];

  return v5;
}

@end