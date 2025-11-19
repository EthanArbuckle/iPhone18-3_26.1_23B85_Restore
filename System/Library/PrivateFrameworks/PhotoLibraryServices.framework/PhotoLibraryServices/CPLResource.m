@interface CPLResource
@end

@implementation CPLResource

void __39__CPLResource_PL__imageDerivativeTypes__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F0FBD900, &unk_1F0FBD918, &unk_1F0FBD930, &unk_1F0FBD948, 0}];
  v1 = imageDerivativeTypes_s_types;
  imageDerivativeTypes_s_types = v0;
}

void __39__CPLResource_PL__videoDerivativeTypes__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F0FBD8A0, &unk_1F0FBD8B8, &unk_1F0FBD8D0, &unk_1F0FBD8E8, 0}];
  v1 = videoDerivativeTypes_s_types;
  videoDerivativeTypes_s_types = v0;
}

@end