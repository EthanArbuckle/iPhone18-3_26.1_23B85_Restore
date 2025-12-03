@interface TSUBacktrace
+ (id)backtrace;
+ (id)callee;
+ (id)caller;
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (TSUBacktrace)initWithAdjustment:(int)adjustment;
- (id)backtraceString;
- (id)callerAtIndex:(int64_t)index;
- (void)dealloc;
@end

@implementation TSUBacktrace

- (TSUBacktrace)initWithAdjustment:(int)adjustment
{
  v8.receiver = self;
  v8.super_class = TSUBacktrace;
  v4 = [(TSUBacktrace *)&v8 init];
  if (v4)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *__src = 0u;
    v10 = 0u;
    v5 = backtrace(__src, 256);
    v4->_frames = v5;
    v6 = malloc_type_calloc(v5, 8uLL, 0x80040B8603338uLL);
    v4->_callstack = v6;
    memcpy(v6, __src, 8 * v4->_frames);
    v4->_initAdjustment = adjustment;
  }

  return v4;
}

- (void)dealloc
{
  free(self->_callstack);
  v3.receiver = self;
  v3.super_class = TSUBacktrace;
  [(TSUBacktrace *)&v3 dealloc];
}

+ (id)backtrace
{
  v2 = [[self alloc] initWithAdjustment:2];

  return v2;
}

+ (id)new
{
  v2 = [self alloc];

  return [v2 initWithAdjustment:2];
}

+ (id)caller
{
  backtrace = [self backtrace];

  return [backtrace callerAtIndex:2];
}

+ (id)callee
{
  backtrace = [self backtrace];

  return [backtrace callerAtIndex:1];
}

- (id)backtraceString
{
  initAdjustment = self->_initAdjustment;
  v3 = (self->_frames - initAdjustment);
  v4 = backtrace_symbols(&self->_callstack[initAdjustment], v3);
  v5 = [NSMutableString stringWithString:@"Backtrace:\n"];
  if (v3 >= 1)
  {
    v6 = v4;
    do
    {
      v7 = *v6++;
      [(NSMutableString *)v5 appendFormat:@"\t%s\n", v7];
      --v3;
    }

    while (v3);
  }

  free(v4);
  return v5;
}

- (id)callerAtIndex:(int64_t)index
{
  memset(&v6, 0, sizeof(v6));
  if (dladdr(*(&self->_callstack[self->_initAdjustment] + index), &v6))
  {
    return [NSString stringWithUTF8String:v6.dli_sname];
  }

  else
  {
    return [NSString stringWithFormat:@"(%s @ %p)", v6.dli_fname, *(&self->_callstack[self->_initAdjustment] + index)];
  }
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equal);
  frames = self->_frames;
  LODWORD(v7) = self->_initAdjustment;
  v9 = *(v6 + 16) - *(v6 + 20);
  v10 = frames - v7 == v9;
  if (frames - v7 == v9 && frames > v7)
  {
    v7 = v7;
    do
    {
      v12 = self->_callstack[v7] == *(*(v6 + 8) + 8 * v7);
      v10 = v12;
      ++v7;
    }

    while (v12 && v7 < frames);
  }

  return v10;
}

@end