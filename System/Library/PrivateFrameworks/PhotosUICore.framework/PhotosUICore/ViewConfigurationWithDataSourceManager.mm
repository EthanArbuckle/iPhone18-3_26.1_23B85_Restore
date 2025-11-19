@interface ViewConfigurationWithDataSourceManager
@end

@implementation ViewConfigurationWithDataSourceManager

void ___ViewConfigurationWithDataSourceManager_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC650];
  v3 = a2;
  v4 = [v2 alertControllerWithTitle:0 message:0 preferredStyle:1];
  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@"Content Syndication Badges:\n\n"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___PXContentSyndicationReviewInfoAlertController_block_invoke;
  aBlock[3] = &unk_1E773F130;
  v19 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  v8 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v7[2](v7, -6, 0, v8);

  v9 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v7[2](v7, -5, 1, v9);

  v10 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v7[2](v7, -4, 2, v10);

  v11 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v7[2](v7, -3, 2, v11);

  v12 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v7[2](v7, -2, 3, v12);

  v13 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v7[2](v7, -1, 4, v13);

  v14 = [MEMORY[0x1E69DC888] systemDarkRedColor];
  v7[2](v7, 0, 5, v14);

  v15 = [MEMORY[0x1E69DC888] systemDarkTealColor];
  v7[2](v7, 1, 6, v15);

  v16 = [MEMORY[0x1E69DC888] systemDarkGreenColor];
  v7[2](v7, 2, 7, v16);

  [v4 _setAttributedMessage:v6];
  v17 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v4 addAction:v17];

  [v3 presentViewController:v4 animated:1 completion:0];
}

@end