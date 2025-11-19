@interface TRIFBMutableBoxedInt64
- (TRIFBMutableBoxedInt64)initWithVal:(int64_t)a3;
- (void)dealloc;
- (void)setVal:(int64_t)a3;
@end

@implementation TRIFBMutableBoxedInt64

- (void)setVal:(int64_t)a3
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
  v4.super_class = TRIFBMutableBoxedInt64;
  [(TRIFBMutableBoxedInt64 *)&v4 dealloc];
}

- (TRIFBMutableBoxedInt64)initWithVal:(int64_t)a3
{
  v4 = [(TRIFBMutableBoxedInt64 *)self init];
  v5 = v4;
  if (v4)
  {
    [(TRIFBMutableBoxedInt64 *)v4 setVal:a3];
  }

  return v5;
}

@end