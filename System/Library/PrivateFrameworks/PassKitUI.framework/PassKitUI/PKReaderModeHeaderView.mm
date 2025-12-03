@interface PKReaderModeHeaderView
- (PKReaderModeHeaderView)initWithState:(unint64_t)state context:(int64_t)context product:(id)product;
- (id)_subtitleForState:(unint64_t)state;
- (id)_titleForState:(unint64_t)state;
- (void)_configureForCurrentState;
- (void)layoutSubviews;
@end

@implementation PKReaderModeHeaderView

- (PKReaderModeHeaderView)initWithState:(unint64_t)state context:(int64_t)context product:(id)product
{
  v19[6] = *MEMORY[0x1E69E9840];
  productCopy = product;
  v18.receiver = self;
  v18.super_class = PKReaderModeHeaderView;
  v10 = [(PKTableHeaderView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    v10->_state = state;
    objc_storeStrong(&v10->_product, product);
    v19[0] = @"transferValue";
    v19[1] = @"notFound";
    v19[2] = @"transferValue";
    v19[3] = @"transferring";
    v19[4] = @"cardAdded";
    v19[5] = @"commuteCardAdded";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:6];
    resourceKeys = v11->_resourceKeys;
    v11->_resourceKeys = v12;

    v11->_context = context;
    v14 = [productCopy provisioningMethodMetadataForType:*MEMORY[0x1E69BC148]];
    readerModeResources = [v14 readerModeResources];
    readerModeResources = v11->_readerModeResources;
    v11->_readerModeResources = readerModeResources;

    [(PKReaderModeHeaderView *)v11 _configureForCurrentState];
  }

  return v11;
}

- (id)_titleForState:(unint64_t)state
{
  v5 = [(NSArray *)self->_resourceKeys objectAtIndexedSubscript:?];
  v6 = [(NSDictionary *)self->_readerModeResources objectForKeyedSubscript:@"readerModeScreens"];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 objectForKeyedSubscript:@"localizedTitle"];

  if (!v8)
  {
    if (state > 5)
    {
      v8 = 0;
    }

    else
    {
      v8 = PKLocalizedPaymentString(&off_1E8012A90[state]->isa);
    }
  }

  return v8;
}

- (id)_subtitleForState:(unint64_t)state
{
  v5 = [(NSArray *)self->_resourceKeys objectAtIndexedSubscript:?];
  v6 = [(NSDictionary *)self->_readerModeResources objectForKeyedSubscript:@"readerModeScreens"];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 objectForKeyedSubscript:@"localizedDescription"];

  if (!v8)
  {
    if (state > 2)
    {
      if (state != 3)
      {
        if (state == 4)
        {
          displayName = [(PKPaymentSetupProduct *)self->_product displayName];
          PKLocalizedPaymentString(&cfstr_ReaderModeProv_6.isa, &stru_1F3BD5BF0.isa, displayName);
        }

        else
        {
          if (state != 5)
          {
            goto LABEL_16;
          }

          displayName = [(PKPaymentSetupProduct *)self->_product displayName];
          PKLocalizedPaymentString(&cfstr_ReaderModeProv_7.isa, &stru_1F3BD5BF0.isa, displayName);
        }

        goto LABEL_15;
      }

      v10 = @"READER_MODE_PROVISIONING_TRANSFERRING_SUBTITLE";
    }

    else
    {
      if (!state)
      {
LABEL_6:
        displayName = [(PKPaymentSetupProduct *)self->_product displayName];
        PKLocalizedPaymentString(&cfstr_ReaderModeProv_3.isa, &stru_1F3BD5BF0.isa, displayName);
        v8 = LABEL_15:;

        goto LABEL_16;
      }

      if (state != 1)
      {
        if (state != 2)
        {
          goto LABEL_16;
        }

        goto LABEL_6;
      }

      v10 = @"READER_MODE_PROVISIONING_CARD_NOT_FOUND_SUBTITLE";
    }

    v8 = PKLocalizedPaymentString(&v10->isa);
  }

LABEL_16:

  return v8;
}

- (void)_configureForCurrentState
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [(PKReaderModeHeaderView *)self _titleForState:self->_state];
  v4 = [(PKReaderModeHeaderView *)self _subtitleForState:self->_state];
  titleLabel = [(PKTableHeaderView *)self titleLabel];
  [titleLabel setText:v3];

  [(PKTableHeaderView *)self showCheckmark:(self->_state & 0xFFFFFFFFFFFFFFFELL) == 4 animated:0];
  subtitleLabel = [(PKTableHeaderView *)self subtitleLabel];
  v7 = subtitleLabel;
  if (v4)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v8 setLineSpacing:1.0];
    [v8 setParagraphSpacing:-7.0];
    [v8 setAlignment:1];
    v14[0] = *MEMORY[0x1E69DB648];
    font = [v7 font];
    v15[0] = font;
    v14[1] = *MEMORY[0x1E69DB650];
    textColor = [v7 textColor];
    v15[1] = textColor;
    v14[2] = *MEMORY[0x1E69DB600];
    backgroundColor = [v7 backgroundColor];
    v14[3] = *MEMORY[0x1E69DB688];
    v15[2] = backgroundColor;
    v15[3] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v12];
    [v7 setAttributedText:v13];
  }

  else
  {
    [subtitleLabel setText:0];
  }

  [(PKTableHeaderView *)self setActionTitle:0];
  [(PKReaderModeHeaderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKReaderModeHeaderView;
  [(PKTableHeaderView *)&v4 layoutSubviews];
  subtitleLabel = [(PKTableHeaderView *)self subtitleLabel];
  [subtitleLabel frame];
  [subtitleLabel setFrame:?];
}

@end