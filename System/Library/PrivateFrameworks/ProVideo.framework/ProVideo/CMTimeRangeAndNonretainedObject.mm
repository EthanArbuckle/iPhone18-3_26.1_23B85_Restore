@interface CMTimeRangeAndNonretainedObject
- (CMTimeRangeAndNonretainedObject)initWithCMTimeRange:(id *)a3 andObject:(id)a4;
- (id)object;
@end

@implementation CMTimeRangeAndNonretainedObject

- (CMTimeRangeAndNonretainedObject)initWithCMTimeRange:(id *)a3 andObject:(id)a4
{
  v6 = [PCWeakPointerValue valueWithNonretainedObject:a4];
  v7 = *&a3->var0.var3;
  v10[0] = *&a3->var0.var0;
  v10[1] = v7;
  v10[2] = *&a3->var1.var1;
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