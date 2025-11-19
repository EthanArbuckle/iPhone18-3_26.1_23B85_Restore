@interface BFFPaneHeaderView_RemoteUI
- (BFFPaneHeaderView_RemoteUI)initWithAttributes:(id)a3;
- (void)setDetailText:(id)a3 attributes:(id)a4;
- (void)setImageAlignment:(unint64_t)a3;
- (void)setSubHeaderText:(id)a3 attributes:(id)a4;
- (void)setText:(id)a3 attributes:(id)a4;
@end

@implementation BFFPaneHeaderView_RemoteUI

- (BFFPaneHeaderView_RemoteUI)initWithAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = BFFPaneHeaderView_RemoteUI;
  return [(BFFPaneHeaderView *)&v4 initWithFrame:a3, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
}

- (void)setText:(id)a3 attributes:(id)a4
{
  v5 = a3;
  v6 = [(BFFPaneHeaderView *)self detailTextLabel];
  [v6 setText:v5];
}

- (void)setSubHeaderText:(id)a3 attributes:(id)a4
{
  v5 = a3;
  v6 = [(BFFPaneHeaderView *)self subLabel];
  [v6 setText:v5];
}

- (void)setDetailText:(id)a3 attributes:(id)a4
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_265AC5000, v4, OS_LOG_TYPE_DEFAULT, "Detail text is not supported with setupAssistant-style title headers", v5, 2u);
  }
}

- (void)setImageAlignment:(unint64_t)a3
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265AC5000, v3, OS_LOG_TYPE_DEFAULT, "Image alignment is not supported with setupAssistant-style title headers", v4, 2u);
  }
}

@end