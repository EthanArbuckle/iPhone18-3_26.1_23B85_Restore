@interface PXObservableObservation
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXObservableObservation

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  selfCopy = self;
  sub_1B3F7FBAC(observableCopy, change);
}

@end