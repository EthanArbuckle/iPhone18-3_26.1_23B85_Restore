@interface SUIAC2GroupCompletion
+ (void)perform:(id)perform finalCompletion:(id)completion options:(unint64_t)options delegate:(id)delegate;
@end

@implementation SUIAC2GroupCompletion

+ (void)perform:(id)perform finalCompletion:(id)completion options:(unint64_t)options delegate:(id)delegate
{
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    v11 = completionCopy;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = 1;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    performCopy = perform;
    objc_initWeak(&location, delegate);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___SubcompletionGenerator_block_invoke;
    v17[3] = &unk_279D3FC88;
    objc_copyWeak(v23, &location);
    v20 = v29;
    v21 = v27;
    v23[1] = options;
    v22 = v25;
    v18 = v11;
    v19 = v31;
    v13 = v11;
    performCopy2 = _Block_copy(v17);

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v31, 8);
    v15 = performCopy2[2](performCopy2, 0);
    performCopy[2](performCopy, performCopy2);

    v15[2](v15, 1, 0);
  }

  else
  {
    v16 = *(perform + 2);
    performCopy2 = perform;
    v16();
  }
}

@end