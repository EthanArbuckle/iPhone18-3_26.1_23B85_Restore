@interface PHUtilityCollection
@end

@implementation PHUtilityCollection

void __81__PHUtilityCollection_PhotosUICore__px_utilityCollectionTypeforBuiltInAlbumName___block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"utility-generic-documents";
  v2[1] = @"utility-receipts";
  v3[0] = &unk_1F190D858;
  v3[1] = &unk_1F190D870;
  v2[2] = @"utility-illustrations";
  v2[3] = @"utility-handwriting";
  v3[2] = &unk_1F190D888;
  v3[3] = &unk_1F190D8A0;
  v2[4] = @"utility-maps";
  v2[5] = @"utility-qr-codes";
  v3[4] = &unk_1F190D8B8;
  v3[5] = &unk_1F190D8D0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = px_utilityCollectionTypeforBuiltInAlbumName__utilityCollectionTypes;
  px_utilityCollectionTypeforBuiltInAlbumName__utilityCollectionTypes = v0;
}

@end