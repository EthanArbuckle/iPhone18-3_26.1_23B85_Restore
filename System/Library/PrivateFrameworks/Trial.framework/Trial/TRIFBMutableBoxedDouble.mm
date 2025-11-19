@interface TRIFBMutableBoxedDouble
- (TRIFBMutableBoxedDouble)initWithVal:(double)a3;
- (void)dealloc;
- (void)setVal:(double)a3;
@end

@implementation TRIFBMutableBoxedDouble

- (void)setVal:(double)a3
{
  if (self && !self->_allowMutation)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = NSStringFromSelector(a2);
    v6 = [v4 initWithFormat:@"%@ mutating method sent to immutable object", v5];

    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:@"NSInternalInconsistencyException" reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  self->_ptr->var0 = a3;
}

- (void)dealloc
{
  if (self->_deleteWhenDone)
  {
    ptr = self->_ptr;
    if (ptr)
    {
      MEMORY[0x2318F1E10](ptr, 0x1000C4000313F17);
    }
  }

  v4.receiver = self;
  v4.super_class = TRIFBMutableBoxedDouble;
  [(TRIFBMutableBoxedDouble *)&v4 dealloc];
}

- (TRIFBMutableBoxedDouble)initWithVal:(double)a3
{
  v4 = [(TRIFBMutableBoxedDouble *)self init];
  v5 = v4;
  if (v4)
  {
    [(TRIFBMutableBoxedDouble *)v4 setVal:a3];
  }

  return v5;
}

@end