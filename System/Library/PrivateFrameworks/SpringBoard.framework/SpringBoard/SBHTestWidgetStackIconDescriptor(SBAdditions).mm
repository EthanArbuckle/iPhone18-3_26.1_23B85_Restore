@interface SBHTestWidgetStackIconDescriptor(SBAdditions)
+ (id)defaultStackIconDescriptorForSizeClass:()SBAdditions;
+ (id)padDefaultLeadingHomescreenLayoutStackWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)padDefaultTrailingHomescreenLayoutStackWidgetIconDescriptorForSizeClass:()SBAdditions;
@end

@implementation SBHTestWidgetStackIconDescriptor(SBAdditions)

+ (id)defaultStackIconDescriptorForSizeClass:()SBAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D66300];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277D662F8] weatherWidgetIconDescriptorForSizeClass:v4];

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [v5 initWithWidgetIconDescriptors:v7];

  return v8;
}

+ (id)padDefaultLeadingHomescreenLayoutStackWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D66300];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277D662F8] todayNewsWidgetIconDescriptorForSizeClass:v4];
  v7 = [MEMORY[0x277D662F8] mapsWidgetIconDescriptorForSizeClass:{v4, v6}];
  v12[1] = v7;
  v8 = [MEMORY[0x277D662F8] relivePhotosWidgetIconDescriptorForSizeClass:v4];

  v12[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v10 = [v5 initWithWidgetIconDescriptors:v9];

  return v10;
}

+ (id)padDefaultTrailingHomescreenLayoutStackWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D66300];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277D662F8] weatherWidgetIconDescriptorForSizeClass:v4];
  v7 = [MEMORY[0x277D662F8] remindersWidgetIconDescriptorForSizeClass:{v4, v6}];
  v12[1] = v7;
  v8 = [MEMORY[0x277D662F8] recentsWidgetIconDescriptorForSizeClass:v4];

  v12[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v10 = [v5 initWithWidgetIconDescriptors:v9];

  return v10;
}

@end