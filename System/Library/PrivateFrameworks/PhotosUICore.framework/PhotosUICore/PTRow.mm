@interface PTRow
@end

@implementation PTRow

uint64_t __36__PTRow_PhotosUICore__px_increment___block_invoke(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v4 = *(a1 + 32) * round(v3 / *(a1 + 32));
  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithDouble:v4];
}

BOOL __79__PTRow_PhotosUICore__px_rowWithTitle_presentationStyle_viewControllerFactory___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  ++isIndexingQueryCount;
  if ((isIndexing & 1) == 0)
  {
    v6 = (*(*(a1 + 32) + 16))();
    v5 = v6 != 0;
    if (!v6)
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Couldn't load view controller controller from factory", buf, 2u);
      }

      goto LABEL_18;
    }

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __79__PTRow_PhotosUICore__px_rowWithTitle_presentationStyle_viewControllerFactory___block_invoke_29;
    v19 = &unk_1E774C620;
    v7 = v4;
    v20 = v7;
    v8 = v6;
    v21 = v8;
    v9 = _Block_copy(&v16);
    v10 = *(a1 + 40);
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v14 = [v7 navigationController:v16];
      [v14 pushViewController:v8 animated:1];

LABEL_17:
      v11 = v20;
LABEL_18:

      goto LABEL_19;
    }

    if (v10 == 2)
    {
      v12 = v8;
      v13 = 1;
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_17;
      }

      v12 = v8;
      v13 = 5;
    }

    [v12 setModalPresentationStyle:{v13, v16, v17, v18, v19}];
LABEL_16:
    v9[2](v9);
    goto LABEL_17;
  }

  v5 = 0;
LABEL_19:

  return v5;
}

void __49__PTRow_PhotosUICore__px_rowWithTitle_urlString___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  v1 = [MEMORY[0x1E69DC668] sharedApplication];
  [v1 openURL:v2 options:MEMORY[0x1E695E0F8] completionHandler:&__block_literal_global_53353];
}

uint64_t __59__PTRow_PhotosUICore__px_rowWithTitle_postDismissalAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  ++isIndexingQueryCount;
  v8 = isIndexing;
  if ((isIndexing & 1) == 0)
  {
    v9 = [v6 presentingViewController];

    if (v9)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __59__PTRow_PhotosUICore__px_rowWithTitle_postDismissalAction___block_invoke_2;
      v19[3] = &unk_1E774C250;
      v20 = *(a1 + 32);
      [v7 dismissViewControllerAnimated:1 completion:v19];
      v10 = v20;
    }

    else
    {
      v10 = [v7 navigationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 dismissButton];
        v12 = [MEMORY[0x1E69DC668] sharedApplication];
        v13 = [v11 action];
        v14 = [v11 target];
        [v12 sendAction:v13 to:v14 from:0 forEvent:0];

        if (*(a1 + 32))
        {
          v15 = dispatch_time(0, 500000000);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __59__PTRow_PhotosUICore__px_rowWithTitle_postDismissalAction___block_invoke_3;
          v17[3] = &unk_1E774C250;
          v18 = *(a1 + 32);
          dispatch_after(v15, MEMORY[0x1E69E96A0], v17);
        }
      }
    }
  }

  return v8 ^ 1u;
}

uint64_t __59__PTRow_PhotosUICore__px_rowWithTitle_postDismissalAction___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __46__PTRow_PhotosUICore__px_rowWithTitle_action___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 navigationController];
  (*(v3 + 16))(v3, v4);

  return 1;
}

void __64__PTRow_PhotosUICore__px_rowWithTitle_continuousOutputProducer___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DD258];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 px_viewControllerWithContinuousOutputProducer:v3];
  [v4 pushViewController:v5 animated:1];
}

void __66__PTRow_PhotosUICore__px_rowWithTitle_asynchronousOutputProducer___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DD258];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 px_viewControllerWithAsynchronousOutputProducer:v3];
  [v4 pushViewController:v5 animated:1];
}

void __46__PTRow_PhotosUICore__px_rowWithTitle_output___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2);
  v4[2](v4, v5);
}

id __117__PTRow_PhotosUICoreProtoSoftLinking__px_rowWithTitle_protoViewControllerFactoryClassName_options_presentationStyle___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3 = PXSoftLinkedProtoMakeViewControllerWithFactoryClassName(*(a1 + 32), v2, *(a1 + 40));
  if (!v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Couldn't load view controller controller from factory %@", &v7, 0xCu);
    }
  }

  return v3;
}

@end