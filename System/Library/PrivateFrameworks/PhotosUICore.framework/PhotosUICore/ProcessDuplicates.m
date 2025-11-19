@interface ProcessDuplicates
@end

@implementation ProcessDuplicates

void ___ProcessDuplicates_block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ProcessDuplicates_block_invoke_3;
  v3[3] = &unk_1E774C620;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void ___ProcessDuplicates_block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v12 = 0;
  v3 = [v2 internal_processIdenticalDuplicatesWithError:&v12];
  v4 = v12;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ProcessDuplicates_block_invoke_4;
  block[3] = &unk_1E77443F0;
  v5 = *(a1 + 32);
  v11 = v3;
  v8 = v5;
  v9 = v4;
  v10 = *(a1 + 40);
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void ___ProcessDuplicates_block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ProcessDuplicates_block_invoke_5;
  v3[3] = &unk_1E774B368;
  v6 = *(a1 + 56);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void ___ProcessDuplicates_block_invoke_5(uint64_t a1)
{
  v2 = @"Processing failed";
  if (*(a1 + 48))
  {
    v2 = @"Processing succeeded";
  }

  v3 = MEMORY[0x1E69DC650];
  v4 = *(a1 + 32);
  v5 = v2;
  v6 = [v4 description];
  v8 = [v3 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v7 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v8 addAction:v7];

  [*(a1 + 40) presentViewController:v8 animated:1 completion:0];
}

@end