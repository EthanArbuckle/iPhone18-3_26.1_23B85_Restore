@interface CSDAudioStateHandler
- (CSDAudioStateHandler)initWith:(id)with delegate:(id)delegate;
@end

@implementation CSDAudioStateHandler

- (CSDAudioStateHandler)initWith:(id)with delegate:(id)delegate
{
  withCopy = with;
  swift_unknownObjectRetain();
  return sub_1003C6274(withCopy, delegate);
}

@end