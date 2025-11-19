@interface PKPaymentCameraCaptureViewController
- (PKPaymentCameraCaptureViewController)initWithWebService:(id)a3 context:(int64_t)a4;
- (PKPaymentCameraCaptureViewControllerDelegate)flowItemDelegate;
@end

@implementation PKPaymentCameraCaptureViewController

uint64_t __71___PKPaymentCameraCaptureViewController_cameraReader_didFailWithError___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1608);
  v7 = *MEMORY[0x1E69BA2D8];
  v8[0] = *MEMORY[0x1E69BA048];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 reportError:v2 context:v4];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1600));
  [WeakRetained cameraCaptureViewControllerDidFail:*(a1 + 32)];

  return [*(*(a1 + 32) + 1584) setButtonsEnabled:1];
}

void __60___PKPaymentCameraCaptureViewController_cameraReaderDidEnd___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) loadViewIfNeeded];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(*(a1 + 32) + 1536);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) type];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 containsObject:*MEMORY[0x1E6998FF0]])
  {
    v10 = &stru_1F3BD7330;
  }

  else
  {
    v10 = [&stru_1F3BD7330 stringByAppendingFormat:@"%@, ", *MEMORY[0x1E69BA030]];
  }

  if (([v3 containsObject:*MEMORY[0x1E6999000]] & 1) == 0)
  {
    v11 = [(__CFString *)v10 stringByAppendingFormat:@"%@, ", *MEMORY[0x1E69BA040]];

    v10 = v11;
  }

  if (([v3 containsObject:*MEMORY[0x1E6998FF8]] & 1) == 0)
  {
    v12 = [(__CFString *)v10 stringByAppendingString:*MEMORY[0x1E69BA038]];

    v10 = v12;
  }

  if ([(__CFString *)v10 length])
  {
    [v2 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69BA2D8]];
  }

  [*(*(a1 + 32) + 1608) reportPageCompleted:1 context:v2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1600));
  [WeakRetained cameraCaptureViewController:*(a1 + 32) didRecognizeObjects:*(*(a1 + 32) + 1536)];

  [*(*(a1 + 32) + 1584) setButtonsEnabled:1];
  [*(a1 + 32) cancel];
}

uint64_t __74___PKPaymentCameraCaptureViewController_cameraReader_didRecognizeObjects___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 1536) != v1)
  {
    objc_storeStrong((v2 + 1536), v1);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 1584);

  return [v4 setButtonsEnabled:0];
}

- (PKPaymentCameraCaptureViewController)initWithWebService:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v7 = [[_PKPaymentCameraCaptureViewController alloc] initWithWebService:v6 context:a4];

  return v7;
}

- (PKPaymentCameraCaptureViewControllerDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end