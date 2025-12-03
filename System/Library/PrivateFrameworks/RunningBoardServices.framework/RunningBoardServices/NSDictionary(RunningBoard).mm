@interface NSDictionary(RunningBoard)
- (id)entriesToStringWithIndent:()RunningBoard debug:;
@end

@implementation NSDictionary(RunningBoard)

- (id)entriesToStringWithIndent:()RunningBoard debug:
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  string = [MEMORY[0x1E696AD60] string];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__NSDictionary_RunningBoard__entriesToStringWithIndent_debug___block_invoke;
  v9[3] = &unk_1E7276310;
  v9[4] = &v12;
  v10 = a3;
  v11 = a4;
  [self enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

@end