@interface AceObject(CommandUserInfo)
- (void)_siriui_applyUserInfoDictionary:()CommandUserInfo;
@end

@implementation AceObject(CommandUserInfo)

- (void)_siriui_applyUserInfoDictionary:()CommandUserInfo
{
  v10 = a3;
  if ([a1 conformsToProtocol:&unk_287A68170])
  {
    v4 = [v10 objectForKey:@"CRKMapCardSectionPlacemarkData"];
    v5 = [MEMORY[0x277D0EBC0] mapItemStorageForSerializedPlaceData:v4];
    v6 = [MEMORY[0x277CBFC40] placemarkWithGEOMapItem:v5];
    v7 = INIntentSlotValueTransformToLocation();

    v8 = objc_alloc_init(MEMORY[0x277D47418]);
    v9 = [v7 data];
    [v8 setData:v9];

    [a1 setLocation:v8];
  }
}

@end