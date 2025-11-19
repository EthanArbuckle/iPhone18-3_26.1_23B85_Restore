@interface NSHashTable(WBSNSHashTableExtras)
- (BOOL)safari_isEmpty;
@end

@implementation NSHashTable(WBSNSHashTableExtras)

- (BOOL)safari_isEmpty
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  result = [a1 countByEnumeratingWithState:v3 objects:v4 count:16] == 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

@end