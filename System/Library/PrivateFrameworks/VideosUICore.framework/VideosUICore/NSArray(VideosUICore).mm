@interface NSArray(VideosUICore)
- (id)vui_arrayByApplyingChangeSet:()VideosUICore destinationObjects:updateObjectBlock:;
- (id)vui_arrayByApplyingChangeSet:()VideosUICore destinationObjectsBlock:updateObjectBlock:;
- (id)vui_arrayByMappingObjectsUsingBlock:()VideosUICore;
- (id)vui_deepCopy;
@end

@implementation NSArray(VideosUICore)

- (id)vui_arrayByApplyingChangeSet:()VideosUICore destinationObjects:updateObjectBlock:
{
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__NSArray_VideosUICore__vui_arrayByApplyingChangeSet_destinationObjects_updateObjectBlock___block_invoke;
  v12[3] = &unk_279E21520;
  v13 = v8;
  v9 = v8;
  v10 = [self vui_arrayByApplyingChangeSet:a3 destinationObjectsBlock:v12 updateObjectBlock:a5];

  return v10;
}

- (id)vui_arrayByApplyingChangeSet:()VideosUICore destinationObjectsBlock:updateObjectBlock:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [self mutableCopy];
  [v11 vui_applyChangeSet:v10 destinationObjectsBlock:v9 updateObjectBlock:v8];

  return v11;
}

- (id)vui_deepCopy
{
  v1 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self copyItems:1];

  return v1;
}

- (id)vui_arrayByMappingObjectsUsingBlock:()VideosUICore
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __61__NSArray_VideosUICore__vui_arrayByMappingObjectsUsingBlock___block_invoke;
  v13 = &unk_279E21548;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:{v6, v10, v11, v12, v13}];

  return v8;
}

@end