@interface PXDebugHierarchyCAArchiver
+ (BOOL)archiveDebugHierarchyWithIdentifier:(id)identifier provider:(id)provider toURL:(id)l error:(id *)error;
@end

@implementation PXDebugHierarchyCAArchiver

+ (BOOL)archiveDebugHierarchyWithIdentifier:(id)identifier provider:(id)provider toURL:(id)l error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v10 = [PXDebugHierarchyCALayerObjectsBuilder buildLayerTreeForDebugHierarchyWithIdentifier:identifier provider:provider options:0];
  v15 = @"rootLayer";
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:0];
  [v12 encodeObject:v11 forKey:@"root"];
  encodedData = [v12 encodedData];
  LOBYTE(error) = [encodedData writeToURL:lCopy options:0 error:error];

  return error;
}

@end