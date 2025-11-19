@interface INSearchForMediaIntentHandler
- (_TtC17SiriAudioInternal29INSearchForMediaIntentHandler)init;
- (void)handleSearchForMedia:(id)a3 completion:(id)a4;
- (void)resolveMediaItemsForSearchForMedia:(id)a3 withCompletion:(id)a4;
@end

@implementation INSearchForMediaIntentHandler

- (void)resolveMediaItemsForSearchForMedia:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_2662291D0(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleSearchForMedia:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
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