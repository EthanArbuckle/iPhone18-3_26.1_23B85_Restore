@interface CMTimeRangeAndNonretainedObject
- (CMTimeRangeAndNonretainedObject)initWithCMTimeRange:(id *)range andObject:(id)object;
- (id)object;
@end

@implementation CMTimeRangeAndNonretainedObject

- (CMTimeRangeAndNonretainedObject)initWithCMTimeRange:(id *)range andObject:(id)object
{
  v6 = [PCWeakPointerValue valueWithNonretainedObject:object];
  v7 = *&range->var0.var3;
  v10[0] = *&range->var0.var0;
  v10[1] = v7;
  v10[2] = *&range->var1.var1;
  v9.receiver = self;
  v9.super_class = CMTimeRangeAndNonretainedObject;
  return [(FigTimeRangeAndObject *)&v9 initWithCMTimeRange:v10 andObject:v6];
}

- (id)object
{
  v3.receiver = self;
  v3.super_class = CMTimeRangeAndNonretainedObject;
  return [-[FigTimeRangeAndObject object](&v3 object)];
}

@end