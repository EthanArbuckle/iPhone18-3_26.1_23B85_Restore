@interface TSTWPColumnCache
- (id)description;
@end

@implementation TSTWPColumnCache

- (id)description
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v14 = [v3 stringWithFormat:@"<%@ %p with %d key/value pairs \n{\n", NSStringFromClass(v4), self, objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D6C388]), "count")];
  v5 = *(&self->super.super.super.super.isa + *MEMORY[0x277D6C390]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__TSTWPColumnCache_description__block_invoke;
  v8[3] = &unk_279D4A378;
  v8[4] = self;
  v8[5] = &v9;
  [v5 performSyncRead:v8];
  [v10[5] appendString:@"}>"];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __31__TSTWPColumnCache_description__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + *MEMORY[0x277D6C388]);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__TSTWPColumnCache_description__block_invoke_2;
  v3[3] = &unk_279D4A350;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

uint64_t __31__TSTWPColumnCache_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 unsignedIntValue];
  [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"  { key: cellID   : %@\n", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%hu, %hu)", v5, HIWORD(v5))];
  return [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"wpColumn:  object : %@\n           string : %@\n  }, \n", a3, objc_msgSend(objc_msgSend(a3, "storage"), "string")];
}

@end