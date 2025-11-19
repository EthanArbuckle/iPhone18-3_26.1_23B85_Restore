@interface SFOngoingSharingGroupManager
+ (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)a3;
@end

@implementation SFOngoingSharingGroupManager

+ (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D499C0]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SFOngoingSharingGroupManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke;
  v7[3] = &unk_279B622D0;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [v6 fetchSharingGroupsThatIncludeFamilyMembers:v7];
}

@end