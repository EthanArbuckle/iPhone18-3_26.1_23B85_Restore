@interface ICContentKeySessionDelegateWrapper
- (_TtC18PodcastsFoundationP33_C5CCB7FDAA241CA13F97384CFFA3ACE334ICContentKeySessionDelegateWrapper)init;
- (void)contentKeySession:(id)a3 didFinishProcessingKey:(id)a4 withResponse:(id)a5 error:(id)a6;
@end

@implementation ICContentKeySessionDelegateWrapper

- (void)contentKeySession:(id)a3 didFinishProcessingKey:(id)a4 withResponse:(id)a5 error:(id)a6
{
  v9 = sub_1D917820C();
  v11 = v10;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = a5;
    v13 = self;
    v14 = a6;
    sub_1D8EAF668(v9, v11, a5, a6);
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