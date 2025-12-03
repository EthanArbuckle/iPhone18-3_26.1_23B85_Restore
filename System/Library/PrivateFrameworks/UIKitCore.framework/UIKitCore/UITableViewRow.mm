@interface UITableViewRow
+ (id)row;
- (UITableViewRow)initWithCoder:(id)coder;
- (int64_t)indentationLevel;
- (void)encodeWithCoder:(id)coder;
- (void)setIndentationLevel:(int64_t)level;
@end

@implementation UITableViewRow

+ (id)row
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (UITableViewRow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UITableViewRow;
  v5 = [(UITableViewRow *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UITableRowCell"];
    cell = v5->_cell;
    v5->_cell = v6;

    v8 = [coderCopy containsValueForKey:@"UITableRowHeight"];
    v9 = -1.0;
    if (v8)
    {
      [coderCopy decodeFloatForKey:{@"UITableRowHeight", -1.0}];
      v9 = v10;
    }

    v5->_height = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  cell = self->_cell;
  if (cell)
  {
    [coderCopy encodeObject:cell forKey:@"UITableRowCell"];
    height = self->_height;
    _tableView = [(UITableViewCell *)self->_cell _tableView];
    [_tableView rowHeight];
    v10 = v9;

    if (height != v10)
    {
      *&v11 = height;
      [v5 encodeFloat:@"UITableRowHeight" forKey:v11];
    }
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v13 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "attempt to encode a an instance of UITableViewRow without a cell", buf, 2u);
    }
  }

  else
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &encodeWithCoder____s_category_0) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "attempt to encode a an instance of UITableViewRow without a cell", v14, 2u);
    }
  }
}

- (void)setIndentationLevel:(int64_t)level
{
  if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "indentationLevel property on UITableViewRow is deprecated", buf, 2u);
    }
  }

  else
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &setIndentationLevel____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "indentationLevel property on UITableViewRow is deprecated", v7, 2u);
    }
  }

  [(UITableViewCell *)self->_cell setIndentationLevel:level];
}

- (int64_t)indentationLevel
{
  if (os_variant_has_internal_diagnostics())
  {
    v5 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "indentationLevel property on UITableViewRow is deprecated", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &indentationLevel___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "indentationLevel property on UITableViewRow is deprecated", v6, 2u);
    }
  }

  return [(UITableViewCell *)self->_cell indentationLevel];
}

@end