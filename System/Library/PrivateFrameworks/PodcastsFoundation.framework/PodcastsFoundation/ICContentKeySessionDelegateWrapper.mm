@interface ICContentKeySessionDelegateWrapper
- (_TtC18PodcastsFoundationP33_C5CCB7FDAA241CA13F97384CFFA3ACE334ICContentKeySessionDelegateWrapper)init;
- (void)contentKeySession:(id)session didFinishProcessingKey:(id)key withResponse:(id)response error:(id)error;
@end

@implementation ICContentKeySessionDelegateWrapper

- (void)contentKeySession:(id)session didFinishProcessingKey:(id)key withResponse:(id)response error:(id)error
{
  v9 = sub_1D917820C();
  v11 = v10;
  if (swift_unknownObjectWeakLoadStrong())
  {
    responseCopy = response;
    selfCopy = self;
    errorCopy = error;
    sub_1D8EAF668(v9, v11, response, error);
    swift_unknownObjectRelease();
  }
}

- (_TtC18PodcastsFoundationP33_C5CCB7FDAA241CA13F97384CFFA3ACE334ICContentKeySessionDelegateWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end