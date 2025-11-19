@interface SWCollaborationMetadataClass
@end

@implementation SWCollaborationMetadataClass

Class __get_SWCollaborationMetadataClass_block_invoke(uint64_t a1)
{
  SharedWithYouCoreLibrary();
  result = objc_getClass("_SWCollaborationMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SWCollaborationMetadataClass_block_invoke_cold_1();
  }

  get_SWCollaborationMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_SWCollaborationMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SWCollaborationMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:121 description:{@"Unable to find class %s", "_SWCollaborationMetadata"}];

  __break(1u);
}

@end