@interface NSString(QueryParser)
- (uint64_t)composedLength;
@end

@implementation NSString(QueryParser)

- (uint64_t)composedLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [a1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__NSString_QueryParser__composedLength__block_invoke;
  v5[3] = &unk_1E8596088;
  v5[4] = &v6;
  [a1 enumerateSubstringsInRange:0 options:v2 usingBlock:{2, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end