@interface _PXEmptyAudioCueProvider
- (id)requestCuesForAudioAsset:(id)asset resultHandler:(id)handler;
@end

@implementation _PXEmptyAudioCueProvider

- (id)requestCuesForAudioAsset:(id)asset resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_alloc_init(PXConcreteAudioCueSource);
  (*(handler + 2))(handlerCopy, v6, 0);

  return 0;
}

@end