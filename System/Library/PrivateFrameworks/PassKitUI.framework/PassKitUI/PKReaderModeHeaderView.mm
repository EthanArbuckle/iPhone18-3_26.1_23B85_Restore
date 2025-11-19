@interface PKReaderModeHeaderView
- (PKReaderModeHeaderView)initWithState:(unint64_t)a3 context:(int64_t)a4 product:(id)a5;
- (id)_subtitleForState:(unint64_t)a3;
- (id)_titleForState:(unint64_t)a3;
- (void)_configureForCurrentState;
- (void)layoutSubviews;
@end

@implementation PKReaderModeHeaderView

- (PKReaderModeHeaderView)initWithState:(unint64_t)a3 context:(int64_t)a4 product:(id)a5
{
  v19[6] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v18.receiver = self;
  v18.super_class = PKReaderModeHeaderView;
  v10 = [(PKTableHeaderView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    v10->_state = a3;
    objc_storeStrong(&v10->_product, a5);
    v19[0] = @"transferValue";
    v19[1] = @"notFound";
    v19[2] = @"transferValue";
    v19[3] = @"transferring";
    v19[4] = @"cardAdded";
    v19[5] = @"commuteCardAdded";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:6];
    resourceKeys = v11->_resourceKeys;
    v11->_resourceKeys = v12;

    v11->_context = a4;
    v14 = [v9 provisioningMethodMetadataForType:*MEMORY[0x1E69BC148]];
    v15 = [v14 readerModeResources];
    readerModeResources = v11->_readerModeResources;
    v11->_readerModeResources = v15;

    [(PKReaderModeHeaderView *)v11 _configureForCurrentState];
  }

  return v11;
}

- (id)_titleForState:(unint64_t)a3
{
  v5 = [(NSArray *)self->_resourceKeys objectAtIndexedSubscript:?];
  v6 = [(NSDictionary *)self->_readerModeResources objectForKeyedSubscript:@"readerModeScreens"];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 objectForKeyedSubscript:@"localizedTitle"];

  if (!v8)
  {
    if (a3 > 5)
    {
      v8 = 0;
    }

    else
    {
      v8 = PKLocalizedPaymentString(&off_1E8012A90[a3]->isa);
    }
  }

  return v8;
}

- (id)_subtitleForState:(unint64_t)a3
{
  v5 = [(NSArray *)self->_resourceKeys objectAtIndexedSubscript:?];
  v6 = [(NSDictionary *)self->_readerModeResources objectForKeyedSubscript:@"readerModeScreens"];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 objectForKeyedSubscript:@"localizedDescription"];

  if (!v8)
  {
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          v9 = [(PKPaymentSetupProduct *)self->_product displayName];
          PKLocalizedPaymentString(&cfstr_ReaderModeProv_6.isa, &stru_1F3BD5BF0.isa, v9);
        }

        else
        {
          if (a3 != 5)
          {
            goto LABEL_16;
          }

          v9 = [(PKPaymentSetupProduct *)self->_product displayName];
          PKLocalizedPaymentString(&cfstr_ReaderModeProv_7.isa, &stru_1F3BD5BF0.isa, v9);
        }

        goto LABEL_15;
      }

      v10 = @"READER_MODE_PROVISIONING_TRANSFERRING_SUBTITLE";
    }

    else
    {
      if (!a3)
      {
LABEL_6:
        v9 = [(PKPaymentSetupProduct *)self->_product displayName];
        PKLocalizedPaymentString(&cfstr_ReaderModeProv_3.isa, &stru_1F3BD5BF0.isa, v9);
        v8 = LABEL_15:;

        goto LABEL_16;
      }

      if (a3 != 1)
      {
        if (a3 != 2)
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
  v5 = [(PKTableHeaderView *)self titleLabel];
  [v5 setText:v3];

  [(PKTableHeaderView *)self showCheckmark:(self->_state & 0xFFFFFFFFFFFFFFFELL) == 4 animated:0];
  v6 = [(PKTableHeaderView *)self subtitleLabel];
  v7 = v6;
  if (v4)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v8 setLineSpacing:1.0];
    [v8 setParagraphSpacing:-7.0];
    [v8 setAlignment:1];
    v14[0] = *MEMORY[0x1E69DB648];
    v9 = [v7 font];
    v15[0] = v9;
    v14[1] = *MEMORY[0x1E69DB650];
    v10 = [v7 textColor];
    v15[1] = v10;
    v14[2] = *MEMORY[0x1E69DB600];
    v11 = [v7 backgroundColor];
    v14[3] = *MEMORY[0x1E69DB688];
    v15[2] = v11;
    v15[3] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v12];
    [v7 setAttributedText:v13];
  }

  else
  {
    [v6 setText:0];
  }

  [(PKTableHeaderView *)self setActionTitle:0];
  [(PKReaderModeHeaderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKReaderModeHeaderView;
  [(PKTableHeaderView *)&v4 layoutSubviews];
  v3 = [(PKTableHeaderView *)self subtitleLabel];
  [v3 frame];
  [v3 setFrame:?];
}

@end