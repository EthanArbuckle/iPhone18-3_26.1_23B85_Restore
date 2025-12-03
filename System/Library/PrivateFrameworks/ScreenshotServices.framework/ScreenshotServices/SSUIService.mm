@interface SSUIService
- (SSUIService)init;
- (void)_runPPTNamed:(id)named numberOfRequiredScreenshots:(unint64_t)screenshots;
- (void)showScreenshotUI;
- (void)showScreenshotUIForImage:(id)image options:(id)options withCompletion:(id)completion;
- (void)takeScreenshotWithOptions:(id)options;
@end

@implementation SSUIService

- (SSUIService)init
{
  v6.receiver = self;
  v6.super_class = SSUIService;
  v2 = [(SSUIService *)&v6 init];
  v3 = objc_alloc_init(SSUIServiceClient);
  client = v2->_client;
  v2->_client = v3;

  return v2;
}

- (void)showScreenshotUI
{
  v3 = objc_alloc_init(SSUIShowScreenshotServiceRequest);
  [(SSUIServiceClient *)self->_client sendRequest:v3 withCompletion:0];
}

- (void)takeScreenshotWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(SSUIShowScreenshotServiceRequest);
  [(SSUIShowScreenshotServiceRequest *)v5 setOptions:optionsCopy];

  [(SSUIServiceClient *)self->_client sendRequest:v5 withCompletion:0];
}

- (void)showScreenshotUIForImage:(id)image options:(id)options withCompletion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  imageCopy = image;
  v11 = objc_alloc_init(SSUIShowScreenshotUIWithImageServiceRequest);
  [(SSUIShowScreenshotUIWithImageServiceRequest *)v11 setImage:imageCopy];

  [(SSUIShowScreenshotUIWithImageServiceRequest *)v11 setOptions:optionsCopy];
  [(SSUIServiceClient *)self->_client sendRequest:v11 withCompletion:completionCopy];
}

- (void)_runPPTNamed:(id)named numberOfRequiredScreenshots:(unint64_t)screenshots
{
  namedCopy = named;
  v7 = objc_alloc_init(SSUIRunPPTServiceRequest);
  [(SSUIRunPPTServiceRequest *)v7 setTestName:namedCopy];

  [(SSUIRunPPTServiceRequest *)v7 setNumberOfRequiredScreenshots:screenshots];
  [(SSUIServiceClient *)self->_client sendRequest:v7 withCompletion:0];
}

@end