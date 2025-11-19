@interface PXPersonImageRequest
- (PXPersonImageRequest)initWithPerson:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)requestFaceCropWithOptions:(id)a3 timeout:(double)a4 resultHandler:(id)a5;
@end

@implementation PXPersonImageRequest

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(PXPersonImageRequest *)obj imageLoadInvalidationTimer];
  [v2 invalidate];

  [(PXPersonImageRequest *)obj setImageLoadInvalidationTimer:0];
  [(PXPersonImageRequest *)obj setImageRequestTag:[(PXPersonImageRequest *)obj imageRequestTag]+ 1];
  objc_sync_exit(obj);
}

- (void)requestFaceCropWithOptions:(id)a3 timeout:(double)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PXPersonImageRequest *)self imageLoadInvalidationTimer];

  if (v10)
  {
    [(PXPersonImageRequest *)self cancel];
  }

  v11 = [(PXPersonImageRequest *)self imageRequestTag];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E695DFF0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__PXPersonImageRequest_requestFaceCropWithOptions_timeout_resultHandler___block_invoke;
  v22[3] = &unk_1E772FAB0;
  objc_copyWeak(v25, &location);
  v24 = v27;
  v13 = v9;
  v23 = v13;
  v25[1] = v11;
  v14 = [v12 timerWithTimeInterval:0 repeats:v22 block:a4];
  [(PXPersonImageRequest *)self setImageLoadInvalidationTimer:v14];
  v15 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v15 addTimer:v14 forMode:*MEMORY[0x1E695D918]];

  v16 = +[PXPeopleFaceCropManager sharedManager];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__PXPersonImageRequest_requestFaceCropWithOptions_timeout_resultHandler___block_invoke_2;
  v18[3] = &unk_1E772FAD8;
  objc_copyWeak(v21, &location);
  v20 = v27;
  v17 = v13;
  v19 = v17;
  v21[1] = v11;
  [v16 requestFaceCropForOptions:v8 resultHandler:v18];

  objc_destroyWeak(v21);
  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(v27, 8);
}

void __73__PXPersonImageRequest_requestFaceCropWithOptions_timeout_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_loadWeakRetained((a1 + 48));
  objc_sync_enter(v3);
  v4 = *(*(a1 + 40) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    if (*(a1 + 32))
    {
      v5 = *(a1 + 56);
      if (v5 == [v3 imageRequestTag])
      {
        (*(*(a1 + 32) + 16))();
      }
    }

    [v3 cancel];
  }

  objc_sync_exit(v3);
}

void __73__PXPersonImageRequest_requestFaceCropWithOptions_timeout_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_loadWeakRetained((a1 + 48));
  objc_sync_enter(v7);
  v8 = [v6 objectForKeyedSubscript:@"PXPeopleErrorKey"];
  v9 = v8;
  if (v5 || [v8 code] || (v10 = *(*(a1 + 40) + 8), (*(v10 + 24) & 1) != 0))
  {
    v11 = [v7 imageLoadInvalidationTimer];
    [v11 invalidate];

    [v7 setImageLoadInvalidationTimer:0];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (*(a1 + 32))
    {
      v12 = *(a1 + 56);
      if (v12 == [v7 imageRequestTag])
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }

  else
  {
    *(v10 + 24) = 1;
    if (*(a1 + 32))
    {
      v13 = *(a1 + 56);
      if (v13 == [v7 imageRequestTag])
      {
        v14 = *(a1 + 32);
        v16 = @"PXPeopleErrorKey";
        v17[0] = v9;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        (*(v14 + 16))(v14, 0, v15);
      }
    }

    [v7 cancel];
  }

  objc_sync_exit(v7);
}

- (void)dealloc
{
  v3 = [(PXPersonImageRequest *)self imageLoadInvalidationTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = PXPersonImageRequest;
  [(PXPersonImageRequest *)&v4 dealloc];
}

- (PXPersonImageRequest)initWithPerson:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPersonImageRequest;
  v6 = [(PXPersonImageRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, a3);
    v7->_imageRequestTag = 0;
  }

  return v7;
}

@end