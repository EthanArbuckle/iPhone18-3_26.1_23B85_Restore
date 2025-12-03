@interface UIKeyboardTaskEntry
- (UIKeyboardTaskEntry)initWithTask:(id)task breadcrumb:(id)breadcrumb;
- (id)copyWithZone:(_NSZone *)zone;
- (void)execute:(id)execute;
@end

@implementation UIKeyboardTaskEntry

- (UIKeyboardTaskEntry)initWithTask:(id)task breadcrumb:(id)breadcrumb
{
  taskCopy = task;
  breadcrumbCopy = breadcrumb;
  v18.receiver = self;
  v18.super_class = UIKeyboardTaskEntry;
  v8 = [(UIKeyboardTaskEntry *)&v18 init];
  if (v8)
  {
    v9 = [taskCopy copy];
    task = v8->__task;
    v8->__task = v9;

    if (os_variant_has_internal_diagnostics())
    {
      v14 = _UIKeyboardTaskQueueLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

      if (v15)
      {
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        originatingStack = v8->_originatingStack;
        v8->_originatingStack = callStackSymbols;
      }
    }

    v11 = [breadcrumbCopy copy];
    breadcrumb = v8->_breadcrumb;
    v8->_breadcrumb = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIKeyboardTaskEntry);
  v5 = [self->__task copy];
  task = v4->__task;
  v4->__task = v5;

  return v4;
}

- (void)execute:(id)execute
{
  executeCopy = execute;
  kdebug_trace();
  v5 = kace_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "task", "", buf, 2u);
    }
  }

  (*(self->__task + 2))();
  kdebug_trace();
  v8 = kace_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, self);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v8, OS_SIGNPOST_INTERVAL_END, v10, "task", "", v11, 2u);
    }
  }
}

@end