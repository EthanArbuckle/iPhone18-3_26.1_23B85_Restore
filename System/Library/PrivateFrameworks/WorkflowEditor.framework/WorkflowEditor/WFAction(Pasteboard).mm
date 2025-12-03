@interface WFAction(Pasteboard)
+ (id)objectWithItemProviderData:()Pasteboard typeIdentifier:error:;
+ (id)readableTypeIdentifiersForItemProvider;
+ (id)writableTypeIdentifiersForItemProvider;
- (uint64_t)loadDataWithTypeIdentifier:()Pasteboard forItemProviderCompletionHandler:;
@end

@implementation WFAction(Pasteboard)

- (uint64_t)loadDataWithTypeIdentifier:()Pasteboard forItemProviderCompletionHandler:
{
  v5 = MEMORY[0x277CCAC58];
  v6 = a4;
  serializedRepresentation = [self serializedRepresentation];
  v11 = 0;
  v8 = [v5 dataWithPropertyList:serializedRepresentation format:200 options:0 error:&v11];
  v9 = v11;

  v6[2](v6, v8, v9);
  return 0;
}

+ (id)objectWithItemProviderData:()Pasteboard typeIdentifier:error:
{
  v5 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:a5];
  if (v5)
  {
    v6 = MEMORY[0x277D7C098];
    mEMORY[0x277D7C0D0] = [MEMORY[0x277D7C0D0] sharedRegistry];
    v8 = [v6 actionFromSerializedRepresentation:v5 actionRegistry:mEMORY[0x277D7C0D0]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)writableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:@"com.apple.shortcuts.action"];
  identifier = [v0 identifier];
  v4[0] = identifier;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)readableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:@"com.apple.shortcuts.action"];
  identifier = [v0 identifier];
  v4[0] = identifier;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end