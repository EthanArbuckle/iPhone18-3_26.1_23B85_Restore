@interface UITableViewCountView
- (UITableViewCountView)initWithFrame:(CGRect)frame withCountString:(id)string withCount:(int64_t)count;
- (void)setCount:(int64_t)count;
- (void)setCountString:(id)string withCount:(int64_t)count;
@end

@implementation UITableViewCountView

- (UITableViewCountView)initWithFrame:(CGRect)frame withCountString:(id)string withCount:(int64_t)count
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stringCopy = string;
  v16.receiver = self;
  v16.super_class = UITableViewCountView;
  height = [(UILabel *)&v16 initWithFrame:x, y, width, height];
  if (height)
  {
    v13 = +[UIColor grayColor];
    [(UILabel *)height setTextColor:v13];

    v14 = [off_1E70ECC18 systemFontOfSize:20.0];
    [(UILabel *)height setFont:v14];

    [(UILabel *)height setUserInteractionEnabled:0];
    [(UILabel *)height setTextAlignment:1];
    [(UIView *)height setBackgroundColor:0];
    [(UITableViewCountView *)height setCountString:stringCopy withCount:count];
  }

  return height;
}

- (void)setCountString:(id)string withCount:(int64_t)count
{
  v6 = [string copy];
  countString = self->_countString;
  self->_countString = v6;

  [(UITableViewCountView *)self setCount:count];
}

- (void)setCount:(int64_t)count
{
  self->_count = count;
  v4 = 0.0;
  if (count > 19)
  {
    v4 = 1.0;
  }

  [(UIView *)self setAlpha:v4];
  countString = self->_countString;
  v26 = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:countString validFormatSpecifiers:@"%d" error:&v26, self->_count];
  v7 = v26;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    v10 = self->_countString;
    v25 = v7;
    v6 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%u" error:&v25, self->_count];
    v11 = v25;

    v8 = v11;
  }

  if (v6)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8 == 0;
  }

  if (!v12)
  {
    v13 = self->_countString;
    v24 = v8;
    v6 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%ld" error:&v24, self->_count];
    v14 = v24;

    v8 = v14;
  }

  if (v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8 == 0;
  }

  if (!v15)
  {
    v16 = self->_countString;
    v23 = v8;
    v6 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v16 validFormatSpecifiers:@"%lu" error:&v23, self->_count];
    v17 = v23;

    v8 = v17;
  }

  if (v6)
  {
    v18 = 1;
  }

  else
  {
    v18 = v8 == 0;
  }

  if (!v18)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Unrecognized format string presented to setCountString:. The count label will not be updated.", buf, 2u);
      }
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &setCount____s_category) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Unrecognized format string presented to setCountString:. The count label will not be updated.", buf, 2u);
      }
    }
  }

  [(UILabel *)self setText:v6];
}

@end