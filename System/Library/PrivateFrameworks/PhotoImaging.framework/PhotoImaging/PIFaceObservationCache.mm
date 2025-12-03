@interface PIFaceObservationCache
+ (id)faceRequestWithRequest:(id)request;
- (PIFaceObservationCache)init;
- (id)submitSynchronous:(id)synchronous error:(id *)error;
- (void)submit:(id)submit response:(id)response;
@end

@implementation PIFaceObservationCache

- (id)submitSynchronous:(id)synchronous error:(id *)error
{
  synchronousCopy = synchronous;
  v7 = synchronousCopy;
  v8 = self->_result;
  if (!v8)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PIFaceObservationCache_submitSynchronous_error___block_invoke;
    block[3] = &unk_1E82A9F50;
    block[4] = self;
    v13 = synchronousCopy;
    errorCopy = error;
    dispatch_sync(queue, block);

    v8 = self->_result;
  }

  v10 = v8;

  return v8;
}

intptr_t __50__PIFaceObservationCache_submitSynchronous_error___block_invoke(uint64_t a1)
{
  result = dispatch_group_wait(*(*(a1 + 32) + 8), 0xFFFFFFFFFFFFFFFFLL);
  if (!*(*(a1 + 32) + 24))
  {
    v3 = [*(a1 + 40) submitGenericSynchronous:*(a1 + 48)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

- (void)submit:(id)submit response:(id)response
{
  submitCopy = submit;
  responseCopy = response;
  v8 = responseCopy;
  if (self->_result)
  {
    v9 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:self->_result];
    (v8)[2](v8, v9);
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__PIFaceObservationCache_submit_response___block_invoke;
    block[3] = &unk_1E82ABF90;
    block[4] = self;
    v13 = responseCopy;
    v12 = submitCopy;
    dispatch_async(queue, block);
  }
}

void __42__PIFaceObservationCache_submit_response___block_invoke(uint64_t a1)
{
  dispatch_group_wait(*(*(a1 + 32) + 8), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    v4 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:*(*(a1 + 32) + 24)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    dispatch_group_enter(*(v2 + 8));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__PIFaceObservationCache_submit_response___block_invoke_2;
    v5[3] = &unk_1E82ACC00;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = *(a1 + 48);
    [v3 submit:v5];
  }
}

void __42__PIFaceObservationCache_submit_response___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = a2;
  v4 = [v3 result:&v7];
  v5 = v7;
  v6 = v5;
  if (v4 && !v5)
  {
    objc_storeStrong((*(a1 + 32) + 24), v4);
  }

  dispatch_group_leave(*(*(a1 + 32) + 8));
  (*(*(a1 + 40) + 16))();
}

- (PIFaceObservationCache)init
{
  v9.receiver = self;
  v9.super_class = PIFaceObservationCache;
  v2 = [(PIFaceObservationCache *)&v9 init];
  v3 = dispatch_group_create();
  group = v2->_group;
  v2->_group = v3;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("PIFaceObservationCache", v5);
  queue = v2->_queue;
  v2->_queue = v6;

  return v2;
}

+ (id)faceRequestWithRequest:(id)request
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3A50];
  requestCopy = request;
  v5 = [[v3 alloc] initWithRequest:requestCopy];

  v6 = +[PIPipelineFilters sourceFilterNoOrientation];
  v7 = +[PIPipelineFilters applyOrientationFilter];
  [v5 setName:@"PIFaceObservationCache-newRequest"];
  v11[0] = v6;
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v5 setPipelineFilters:v8];

  v9 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:762048];
  [v5 setScalePolicy:v9];

  [v5 setSampleMode:3];

  return v5;
}

@end