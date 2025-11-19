@interface CPLMasterChange(BatchUploader)
- (BOOL)hasResourceOfType:()BatchUploader notInMasterChange:;
@end

@implementation CPLMasterChange(BatchUploader)

- (BOOL)hasResourceOfType:()BatchUploader notInMasterChange:
{
  v6 = a4;
  v7 = [a1 scopedIdentifier];
  v8 = [v6 scopedIdentifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__CPLMasterChange_BatchUploader__hasResourceOfType_notInMasterChange___block_invoke;
    aBlock[3] = &__block_descriptor_40_e28_B32__0__CPLResource_8Q16_B24l;
    aBlock[4] = a3;
    v10 = _Block_copy(aBlock);
    v11 = [a1 resources];
    v12 = [v11 indexOfObjectPassingTest:v10];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v14 = [v6 resources];
      v15 = [v14 indexOfObjectPassingTest:v10];

      v13 = v15 == 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end