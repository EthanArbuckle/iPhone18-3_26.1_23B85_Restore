@interface BFFPaneHeaderView_RemoteUI
- (BFFPaneHeaderView_RemoteUI)initWithAttributes:(id)attributes;
- (void)setDetailText:(id)text attributes:(id)attributes;
- (void)setImageAlignment:(unint64_t)alignment;
- (void)setSubHeaderText:(id)text attributes:(id)attributes;
- (void)setText:(id)text attributes:(id)attributes;
@end

@implementation BFFPaneHeaderView_RemoteUI

- (BFFPaneHeaderView_RemoteUI)initWithAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = BFFPaneHeaderView_RemoteUI;
  return [(BFFPaneHeaderView *)&v4 initWithFrame:attributes, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
}

- (void)setText:(id)text attributes:(id)attributes
{
  textCopy = text;
  detailTextLabel = [(BFFPaneHeaderView *)self detailTextLabel];
  [detailTextLabel setText:textCopy];
}

- (void)setSubHeaderText:(id)text attributes:(id)attributes
{
  textCopy = text;
  subLabel = [(BFFPaneHeaderView *)self subLabel];
  [subLabel setText:textCopy];
}

- (void)setDetailText:(id)text attributes:(id)attributes
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_265AC5000, v4, OS_LOG_TYPE_DEFAULT, "Detail text is not supported with setupAssistant-style title headers", v5, 2u);
  }
}

- (void)setImageAlignment:(unint64_t)alignment
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265AC5000, v3, OS_LOG_TYPE_DEFAULT, "Image alignment is not supported with setupAssistant-style title headers", v4, 2u);
  }
}

@end