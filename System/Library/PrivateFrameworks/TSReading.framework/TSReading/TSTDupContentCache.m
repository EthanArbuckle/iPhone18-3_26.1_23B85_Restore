@interface TSTDupContentCache
- (id)description;
@end

@implementation TSTDupContentCache

- (id)description
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__31;
  v13 = __Block_byref_object_dispose__31;
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v14 = [v3 stringWithFormat:@"<%@ %p with %d key/value pairs \n{\n", NSStringFromClass(v4), self, objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D6C388]), "count")];
  v5 = *(&self->super.super.super.super.isa + *MEMORY[0x277D6C390]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__TSTDupContentCache_description__block_invoke;
  v8[3] = &unk_279D4A378;
  v8[4] = self;
  v8[5] = &v9;
  [v5 performSyncRead:v8];
  [v10[5] appendString:@"}>"];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __33__TSTDupContentCache_description__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + *MEMORY[0x277D6C388]);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__TSTDupContentCache_description__block_invoke_2;
  v3[3] = &unk_279D4AC28;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

uint64_t __33__TSTDupContentCache_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 string];
  [a2 width];
  v9 = v8;
  [a2 height];
  v11 = v10;
  v12 = TSWPStringFromTSWPVerticalAlignment([a2 verticalAlignment]);
  [v6 appendFormat:@"  { key: string   : %@\n         width    : %f\n         height   : %f\n         vertical : %@\n         direction : %@\n", v7, v9, v11, v12, TSWPStringFromTSWPWritingDirection(objc_msgSend(a2, "writingDirection"))];
  return [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"wpColumn:  object : %@\n           string : %@\n  }, \n", a3, objc_msgSend(objc_msgSend(a3, "storage"), "string")];
}

@end