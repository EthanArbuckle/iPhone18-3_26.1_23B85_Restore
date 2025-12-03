@interface NSKeyedArchiver(ICUserIdentity)
+ (id)ic_archivedDataWithRootUserIdentity:()ICUserIdentity inStore:requiringSecureCoding:error:;
@end

@implementation NSKeyedArchiver(ICUserIdentity)

+ (id)ic_archivedDataWithRootUserIdentity:()ICUserIdentity inStore:requiringSecureCoding:error:
{
  v10 = a3;
  v11 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5355;
  v31 = __Block_byref_object_dispose__5356;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5355;
  v25 = __Block_byref_object_dispose__5356;
  v26 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__NSKeyedArchiver_ICUserIdentity__ic_archivedDataWithRootUserIdentity_inStore_requiringSecureCoding_error___block_invoke;
  v15[3] = &unk_1E7BF4298;
  v17 = &v27;
  selfCopy = self;
  v12 = v10;
  v20 = a5;
  v16 = v12;
  v18 = &v21;
  [v12 _performEncodingTaskUsingSpecificIdentityStore:v11 encodingHandler:v15];
  if (a6)
  {
    *a6 = v22[5];
  }

  v13 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

@end