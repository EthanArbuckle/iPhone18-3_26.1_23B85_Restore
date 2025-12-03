@interface SKUIPickerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIPickerView)initWithCoder:(id)coder;
- (SKUIPickerView)initWithFrame:(CGRect)frame;
- (SKUIPickerView)initWithTitles:(id)titles;
- (SKUIPickerViewDelegate)delegate;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation SKUIPickerView

- (SKUIPickerView)initWithCoder:(id)coder
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIPickerView *)v4 initWithCoder:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return [(SKUIPickerView *)self initWithTitles:0];
}

- (SKUIPickerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIPickerView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [(SKUIPickerView *)self initWithTitles:0];
  v17 = v16;
  if (v16)
  {
    [(SKUIPickerView *)v16 setFrame:x, y, width, height];
  }

  return v17;
}

- (SKUIPickerView)initWithTitles:(id)titles
{
  titlesCopy = titles;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPickerView *)v5 initWithTitles:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v27.receiver = self;
  v27.super_class = SKUIPickerView;
  v13 = [(SKUIPickerView *)&v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v13)
  {
    v14 = [titlesCopy copy];
    titles = v13->_titles;
    v13->_titles = v14;

    v16 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = v13->_backdropView;
    v13->_backdropView = v16;

    [(SKUIPickerView *)v13 addSubview:v13->_backdropView];
    v18 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v13->_separatorView;
    v13->_separatorView = v18;

    v20 = v13->_separatorView;
    v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
    [(UIView *)v20 setBackgroundColor:v21];

    [(SKUIPickerView *)v13 addSubview:v13->_separatorView];
    v22 = objc_alloc(MEMORY[0x277D75840]);
    [(SKUIPickerView *)v13 bounds];
    v23 = [v22 initWithFrame:?];
    pickerView = v13->_pickerView;
    v13->_pickerView = v23;

    [(UIPickerView *)v13->_pickerView setDataSource:v13];
    [(UIPickerView *)v13->_pickerView setDelegate:v13];
    [(UIPickerView *)v13->_pickerView setShowsSelectionIndicator:1];
    [(SKUIPickerView *)v13 addSubview:v13->_pickerView];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIPickerView *)v13 setBackgroundColor:clearColor];
  }

  return v13;
}

- (void)dealloc
{
  [(UIPickerView *)self->_pickerView setDataSource:0];
  [(UIPickerView *)self->_pickerView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIPickerView;
  [(SKUIPickerView *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIPickerView *)self->_pickerView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(SKUIPickerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  [(UIPickerView *)self->_pickerView setFrame:v4, v6, v8, v10];
  separatorView = self->_separatorView;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [(UIView *)separatorView setFrame:v4, v6, v8, 1.0 / v12];
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 pickerView:self didSelectItemAtIndex:row];
  }
}

- (SKUIPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end