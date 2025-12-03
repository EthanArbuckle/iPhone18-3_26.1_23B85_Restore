@interface INSearchForMediaIntentHandler
- (_TtC17SiriAudioInternal29INSearchForMediaIntentHandler)init;
- (void)handleSearchForMedia:(id)media completion:(id)completion;
- (void)resolveMediaItemsForSearchForMedia:(id)media withCompletion:(id)completion;
@end

@implementation INSearchForMediaIntentHandler

- (void)resolveMediaItemsForSearchForMedia:(id)media withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  mediaCopy = media;
  selfCopy = self;
  sub_2662291D0(mediaCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleSearchForMedia:(id)media completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:4 userActivity:0];
  v4[2](v4, v5);
  _Block_release(v4);
}

- (_TtC17SiriAudioInternal29INSearchForMediaIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for INSearchForMediaIntentHandler();
  return [(INSearchForMediaIntentHandler *)&v3 init];
}

@end