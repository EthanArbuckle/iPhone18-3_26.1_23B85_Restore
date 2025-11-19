@interface PXObservableObservation
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXObservableObservation

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v7 = a3;
  v8 = self;
  sub_1B3F7FBAC(v7, a4);
}

@end