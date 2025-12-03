@interface WFOnScreenContentService
+ (id)sharedService;
- (void)getOnScreenContentWithOptions:(id)options completion:(id)completion;
- (void)getOnScreenContentWithOptions:(id)options completionHandler:(id)handler;
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

- (void)getOnScreenContentWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  v7 = +[VCVoiceShortcutClient standardClient];
  [v7 getOnScreenContentWithOptions:optionsCopy completionHandler:handlerCopy];
}

- (void)getOnScreenContentWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v7 = +[VCVoiceShortcutClient standardClient];
  [v7 getOnScreenContentWithOptions:optionsCopy completion:completionCopy];
}

@end