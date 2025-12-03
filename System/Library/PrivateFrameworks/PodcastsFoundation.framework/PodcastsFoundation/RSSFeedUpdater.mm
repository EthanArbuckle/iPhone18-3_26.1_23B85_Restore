@interface RSSFeedUpdater
- (_TtC18PodcastsFoundation14RSSFeedUpdater)init;
- (id)sessionCompletionHandler;
- (void)didDownloadFeedWithError:(id)error data:(id)data task:(id)task requestedUrl:(id)url useBackgroundFetch:(BOOL)fetch;
- (void)didRestoreFeedUrlTask:(id)task;
- (void)performOnFeedProcessingQueue:(id)queue;
- (void)setSessionCompletionHandler:(id)handler;
@end

@implementation RSSFeedUpdater

- (void)didRestoreFeedUrlTask:(id)task
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176B9C();
  selfCopy = self;
  RSSFeedUpdater.didRestoreFeedUrlTask(_:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)didDownloadFeedWithError:(id)error data:(id)data task:(id)task requestedUrl:(id)url useBackgroundFetch:(BOOL)fetch
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  if (!data)
  {
    taskCopy = task;
    urlCopy = url;
    selfCopy = self;
    errorCopy = error;
    v22 = 0xF000000000000000;
    if (url)
    {
      goto LABEL_3;
    }

LABEL_5:
    v28 = sub_1D9176C2C();
    (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
    goto LABEL_6;
  }

  dataCopy = data;
  taskCopy2 = task;
  urlCopy2 = url;
  selfCopy2 = self;
  errorCopy2 = error;
  data = sub_1D9176C8C();
  v22 = v21;

  if (!url)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D9176B9C();

  v23 = sub_1D9176C2C();
  (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
LABEL_6:
  _s18PodcastsFoundation14RSSFeedUpdaterC24didDownloadFeedWithError_4data4task12requestedUrl18useBackgroundFetchys0I0_pSg_0B04DataVSgSo16NSURLSessionTaskCSgAK3URLVSgSbtF_0(error, data, v22, task, v15);
  sub_1D8D75668(data, v22);

  sub_1D8D08A50(v15, &unk_1ECAB5910, &qword_1D9188C90);
}

- (_TtC18PodcastsFoundation14RSSFeedUpdater)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)performOnFeedProcessingQueue:(id)queue
{
  v4 = _Block_copy(queue);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  RSSFeedUpdater.perform(onFeedProcessingQueue:)(sub_1D8D99DAC, v5);
}

- (id)sessionCompletionHandler
{
  sessionCompletionHandler = [*(&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_externalFeedDownloader) sessionCompletionHandler];
  if (sessionCompletionHandler)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sessionCompletionHandler;
    v5[4] = sub_1D8D99DAC;
    v5[5] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D8CF5F60;
    v5[3] = &block_descriptor_56;
    sessionCompletionHandler = _Block_copy(v5);
  }

  return sessionCompletionHandler;
}

- (void)setSessionCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D8D99DAC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1D8F59D38(v7, v6);
  sub_1D8D15664(v7);
}

@end