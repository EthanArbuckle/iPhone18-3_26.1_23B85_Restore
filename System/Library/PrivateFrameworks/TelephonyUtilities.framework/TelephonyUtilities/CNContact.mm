@interface CNContact
@end

@implementation CNContact

void __54__CNContact_TUSearchUtilities__keysToFetchForFaceTime__block_invoke()
{
  v7[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v1 = *MEMORY[0x1E695C278];
  v7[0] = v0;
  v7[1] = v1;
  v2 = *MEMORY[0x1E695C330];
  v7[2] = *MEMORY[0x1E695C400];
  v7[3] = v2;
  v3 = *MEMORY[0x1E695C1E0];
  v7[4] = *MEMORY[0x1E695C208];
  v7[5] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];
  v5 = keysToFetchForFaceTime_keysToFetchForFaceTime;
  keysToFetchForFaceTime_keysToFetchForFaceTime = v4;

  v6 = *MEMORY[0x1E69E9840];
}

@end