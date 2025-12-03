@interface LemonadePeopleProgressStatus.ObserverProxy
- (_TtCC12PhotosUICore28LemonadePeopleProgressStatusP33_47088FF21381BA82A88DD8E5E7C0CB8D13ObserverProxy)init;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
@end

@implementation LemonadePeopleProgressStatus.ObserverProxy

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  if (swift_weakLoadStrong())
  {
    queueCopy = queue;
    selfCopy = self;
    sub_1A3F5659C(queueCopy);
  }
}

- (_TtCC12PhotosUICore28LemonadePeopleProgressStatusP33_47088FF21381BA82A88DD8E5E7C0CB8D13ObserverProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end