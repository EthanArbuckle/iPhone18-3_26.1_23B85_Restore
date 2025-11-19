@interface UIEventDeferringDescriptor
@end

@implementation UIEventDeferringDescriptor

void __69___UIEventDeferringDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69___UIEventDeferringDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

uint64_t __69___UIEventDeferringDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v4 = &stru_1EFB14550;
  if (v3 == 1)
  {
    v4 = @"remote";
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"local";
  }

  v6 = [v2 appendObject:v5 withName:@"scope"];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"compatibility"];
  v8 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"environment"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 40) withName:@"displayIdentifier"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 48) withName:@"predicateSceneIdentity" skipIfEmpty:1];
  v9 = *(a1 + 40);
  v10 = *(v9 + 12);
  if (v10)
  {
    v11 = [*(a1 + 32) appendUnsignedInteger:v10 withName:@"predicateContextID" format:1];
    v9 = *(a1 + 40);
  }

  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = [*(a1 + 32) appendUnsignedInteger:v12 withName:@"targetPID"];
    v9 = *(a1 + 40);
  }

  v14 = *(v9 + 20);
  if (v14)
  {
    v15 = [*(a1 + 32) appendUnsignedInteger:v14 withName:@"targetContextID" format:1];
    v9 = *(a1 + 40);
  }

  v16 = *(a1 + 32);
  v17 = *(v9 + 64);

  return [v16 appendString:v17 withName:@"targetSceneIdentity"];
}

@end