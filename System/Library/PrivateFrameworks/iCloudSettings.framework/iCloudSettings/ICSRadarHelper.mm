@interface ICSRadarHelper
+ (void)tapToRadarWithTitle:(id)title initialMessage:(id)message;
@end

@implementation ICSRadarHelper

+ (void)tapToRadarWithTitle:(id)title initialMessage:(id)message
{
  v5 = MEMORY[0x277CCACE0];
  messageCopy = message;
  titleCopy = title;
  v19 = objc_alloc_init(v5);
  [v19 setScheme:@"tap-to-radar"];
  [v19 setHost:@"new"];
  array = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentName" value:@"AppleAccount"];
  [array addObject:v9];

  v10 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentVersion" value:@"iOS"];
  [array addObject:v10];

  v11 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentID" value:@"511458"];
  [array addObject:v11];

  v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Classification" value:@"Serious Bug"];
  [array addObject:v12];

  v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Reproducibility" value:@"I Didn't Try"];
  [array addObject:v13];

  v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"AutoDiagnostics" value:@"phone"];
  [array addObject:v14];

  v15 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Title" value:titleCopy];
  [array addObject:v15];

  v16 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Description" value:messageCopy];
  [array addObject:v16];

  [v19 setQueryItems:array];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v18 = [v19 URL];
  [defaultWorkspace openURL:v18 configuration:0 completionHandler:0];
}

@end