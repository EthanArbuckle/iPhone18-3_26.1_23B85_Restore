@interface SUIAC2GroupCompletion
+ (void)perform:(id)a3 finalCompletion:(id)a4 options:(unint64_t)a5 delegate:(id)a6;
@end

@implementation SUIAC2GroupCompletion

+ (void)perform:(id)a3 finalCompletion:(id)a4 options:(unint64_t)a5 delegate:(id)a6
{
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
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
    v12 = a3;
    objc_initWeak(&location, a6);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___SubcompletionGenerator_block_invoke;
    v17[3] = &unk_279D3FC88;
    objc_copyWeak(v23, &location);
    v20 = v29;
    v21 = v27;
    v23[1] = a5;
    v22 = v25;
    v18 = v11;
    v19 = v31;
    v13 = v11;
    v14 = _Block_copy(v17);

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v31, 8);
    v15 = v14[2](v14, 0);
    v12[2](v12, v14);

    v15[2](v15, 1, 0);
  }

  else
  {
    v16 = *(a3 + 2);
    v14 = a3;
    v16();
  }
}

@end