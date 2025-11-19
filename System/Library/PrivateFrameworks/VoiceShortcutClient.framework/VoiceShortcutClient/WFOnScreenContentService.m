@interface WFOnScreenContentService
+ (id)sharedService;
- (void)getOnScreenContentWithOptions:(id)a3 completion:(id)a4;
- (void)getOnScreenContentWithOptions:(id)a3 completionHandler:(id)a4;
@end

@implementation WFOnScreenContentService

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_19065);
  }

  v3 = sharedService_service;

  return v3;
}

uint64_t __41__WFOnScreenContentService_sharedService__block_invoke()
{
  sharedService_service = objc_alloc_init(WFOnScreenContentService);

  return MEMORY[0x1EEE66BB8]();
}

- (void)getOnScreenContentWithOptions:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[VCVoiceShortcutClient standardClient];
  [v7 getOnScreenContentWithOptions:v6 completionHandler:v5];
}

- (void)getOnScreenContentWithOptions:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[VCVoiceShortcutClient standardClient];
  [v7 getOnScreenContentWithOptions:v6 completion:v5];
}

@end