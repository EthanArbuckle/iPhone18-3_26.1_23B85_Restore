@interface PKPassMessageFooterContentView
- (PKPassMessageFooterContentView)initWithPass:(id)pass presentationContext:(id)context;
- (void)layoutSubviews;
@end

@implementation PKPassMessageFooterContentView

- (PKPassMessageFooterContentView)initWithPass:(id)pass presentationContext:(id)context
{
  v9.receiver = self;
  v9.super_class = PKPassMessageFooterContentView;
  v4 = [(PKPassFooterContentView *)&v9 initWithPass:pass presentationContext:0];
  if (v4)
  {
    v5 = [PKDashboardMessagesView alloc];
    v6 = [(PKDashboardMessagesView *)v5 initWithInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    messagesView = v4->_messagesView;
    v4->_messagesView = v6;

    [(PKPassMessageFooterContentView *)v4 addSubview:v4->_messagesView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKPassMessageFooterContentView;
  [(PKPassFooterContentView *)&v11 layoutSubviews];
  [(PKPassMessageFooterContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(PKDashboardMessagesView *)self->_messagesView sizeThatFits:v7, v9 + -16.0];
  [(PKDashboardMessagesView *)self->_messagesView setFrame:v4, v6 + 16.0, v8, v10];
}

@end