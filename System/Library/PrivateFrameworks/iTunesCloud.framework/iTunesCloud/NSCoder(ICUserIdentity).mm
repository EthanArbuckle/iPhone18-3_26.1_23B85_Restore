@interface NSCoder(ICUserIdentity)
- (void)ic_encodeUserIdentity:()ICUserIdentity withStore:forKey:;
@end

@implementation NSCoder(ICUserIdentity)

- (void)ic_encodeUserIdentity:()ICUserIdentity withStore:forKey:
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__NSCoder_ICUserIdentity__ic_encodeUserIdentity_withStore_forKey___block_invoke;
  v12[3] = &unk_1E7BFA178;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [v11 _performEncodingTaskUsingSpecificIdentityStore:a4 encodingHandler:v12];
}

@end