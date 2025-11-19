@interface PXFeedPPTConfiguration
+ (id)configurationsForPreset:(unint64_t)a3 testOptions:(id)a4;
- (PXFeedPPTConfiguration)init;
- (PXFeedPPTConfiguration)initWithName:(id)a3 feedConfiguration:(id)a4;
- (PXFeedPPTConfiguration)initWithPreset:(unint64_t)a3;
@end

@implementation PXFeedPPTConfiguration

- (PXFeedPPTConfiguration)initWithName:(id)a3 feedConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PXFeedPPTConfiguration;
  v8 = [(PXFeedPPTConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    feedConfiguration = v8->_feedConfiguration;
    v8->_feedConfiguration = v11;
  }

  return v8;
}

- (PXFeedPPTConfiguration)initWithPreset:(unint64_t)a3
{
  if (a3 > 3)
  {
    v6 = @"??";
  }

  else
  {
    v6 = off_1E7749960[a3];
  }

  v7 = v6;
  v8 = [(__CFString *)v7 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  if (a3 == 2)
  {
    v10 = [PXStoryMemoryFeedConfiguration alloc];
    v11 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v12 = [(PXStoryMemoryFeedConfiguration *)v10 initWithSyntheticSectionCount:5 numberOfItemsPerSection:20 photoLibrary:v11 layoutKind:1];
LABEL_10:
    v9 = v12;

    goto LABEL_11;
  }

  if (a3 == 3)
  {
    v13 = [PXStoryMemoryFeedConfiguration alloc];
    v11 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v12 = [(PXStoryMemoryFeedConfiguration *)v13 initWithMemoriesInPhotoLibrary:v11 layoutKind:1 viewControllerSetupBlock:0];
    goto LABEL_10;
  }

  if (a3 <= 1)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXFeedPPTConfiguration.m" lineNumber:55 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v9 = 0;
LABEL_11:
  v14 = [(PXFeedPPTConfiguration *)self initWithName:v8 feedConfiguration:v9];

  return v14;
}

- (PXFeedPPTConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedPPTConfiguration.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXFeedPPTConfiguration init]"}];

  abort();
}

+ (id)configurationsForPreset:(unint64_t)a3 testOptions:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PXFeedPPTConfiguration_configurationsForPreset_testOptions___block_invoke;
  aBlock[3] = &unk_1E7749940;
  v6 = v5;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (a3 == 1)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __62__PXFeedPPTConfiguration_configurationsForPreset_testOptions___block_invoke_2;
    v14 = &unk_1E7747410;
    v15 = v7;
    do
    {
      v13(&v11, a3++);
    }

    while (a3 != 4);
  }

  else
  {
    (*(v7 + 2))(v7, a3);
  }

  v9 = [v6 copy];

  return v9;
}

void __62__PXFeedPPTConfiguration_configurationsForPreset_testOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[PXFeedPPTConfiguration alloc] initWithPreset:a2];
  [v2 addObject:v3];
}

uint64_t __62__PXFeedPPTConfiguration_configurationsForPreset_testOptions___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

@end