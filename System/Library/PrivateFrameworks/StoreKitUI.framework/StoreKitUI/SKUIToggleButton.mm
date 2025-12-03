@interface SKUIToggleButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIButtonViewElement)element;
- (SKUIToggleButton)init;
- (SKUIToggleButtonDelegate)delegate;
- (id)_layoutForString:(id)string;
- (id)_nonToggledLayout;
- (id)_titleAttributes;
- (id)_toggledLayout;
- (void)_sendDidAnimate;
- (void)_sendWillAnimate;
- (void)_showToggleState:(BOOL)state;
- (void)dealloc;
- (void)init;
- (void)itemStateCenter:(id)center itemStateChanged:(id)changed;
- (void)setButtonTitleText:(id)text;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation SKUIToggleButton

- (SKUIToggleButton)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIToggleButton init];
  }

  v6.receiver = self;
  v6.super_class = SKUIToggleButton;
  v3 = [(SKUIToggleButton *)&v6 init];
  if (v3)
  {
    v4 = +[SKUIToggleStateCenter defaultCenter];
    [v4 addObserver:v3];

    v3->_toggled = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[SKUIToggleStateCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SKUIToggleButton;
  [(SKUIStyledButton *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (self->_toggleButtonType)
  {
    v22.receiver = self;
    v22.super_class = SKUIToggleButton;
    [(SKUIStyledButton *)&v22 sizeThatFits:fits.width, fits.height];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    if (self->_toggled)
    {
      [(SKUIToggleButton *)self _toggledLayout:fits.width];
    }

    else
    {
      [(SKUIToggleButton *)self _nonToggledLayout:fits.width];
    }
    v8 = ;
    attributedString = [v8 attributedString];
    [attributedString size];
    v5 = v10;
    v7 = v11;

    borderStyle = [(SKUIStyledButton *)self borderStyle];
    v13 = borderStyle;
    if (borderStyle)
    {
      [borderStyle borderWidth];
      *&v14 = v14 + v14;
      v15 = floorf(*&v14);
      [v13 contentInset];
      v7 = v7 + v17 + v16 + v15;
      v5 = v5 + v18 + v19 + v15;
    }
  }

  v20 = v5;
  v21 = v7;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(SKUIToggleButton *)self isTouchInside])
  {
    if (self->_toggleItemIdentifier)
    {
      v8 = +[SKUIToggleStateCenter defaultCenter];
      v9 = [v8 itemForIdentifier:self->_toggleItemIdentifier];
      v10 = v9;
      if (self->_autoIncrement)
      {
        autoIncrementCount = [v9 count];
        self->_count = autoIncrementCount;
        if (autoIncrementCount == -1)
        {
          autoIncrementCount = self->_autoIncrementCount;
        }

        if (self->_toggled)
        {
          v12 = autoIncrementCount - 1;
        }

        else
        {
          v12 = autoIncrementCount + 1;
        }

        self->_count = v12 & ~(v12 >> 63);
        if (v12 < 1)
        {
          v15 = @" ";
        }

        else
        {
          if (touchesEnded_withEvent__sOnceToken != -1)
          {
            [SKUIToggleButton touchesEnded:withEvent:];
          }

          v13 = touchesEnded_withEvent__sNumberFormatter;
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_count];
          v15 = [v13 stringFromNumber:v14];
        }

        [v10 setToggledString:v15];
        [v10 setCount:self->_count];
      }

      [v10 setToggled:!self->_toggled];
      [v8 updateItem:v10];
    }

    else
    {
      [(SKUIToggleButton *)self setToggled:!self->_toggled];
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIToggleButton;
  [(SKUIStyledButton *)&v16 touchesEnded:endedCopy withEvent:eventCopy];
}

uint64_t __43__SKUIToggleButton_touchesEnded_withEvent___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = touchesEnded_withEvent__sNumberFormatter;
  touchesEnded_withEvent__sNumberFormatter = v0;

  v2 = touchesEnded_withEvent__sNumberFormatter;

  return [v2 setNumberStyle:1];
}

- (void)setButtonTitleText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    objc_storeStrong(&self->_titleToggleString, text);
    v5 = [(SKUIToggleButton *)self _layoutForString:textCopy];
    [(SKUIStyledButton *)self setTitleLayout:v5];

    [(SKUIToggleButton *)self setNeedsLayout];
    [(SKUIToggleButton *)self setNeedsDisplay];
  }
}

- (id)_layoutForString:(id)string
{
  v4 = MEMORY[0x277CCA898];
  stringCopy = string;
  v6 = [v4 alloc];
  _titleAttributes = [(SKUIToggleButton *)self _titleAttributes];
  v8 = [v6 initWithString:stringCopy attributes:_titleAttributes];

  v9 = [[SKUIAttributedStringLayoutRequest alloc] initWithAttributedString:v8];
  [(SKUIAttributedStringLayoutRequest *)v9 setNumberOfLines:1];
  [(SKUIAttributedStringLayoutRequest *)v9 setWantsBaselineOffset:1];
  [v8 size];
  [(SKUIAttributedStringLayoutRequest *)v9 setWidth:?];
  v10 = [[SKUIAttributedStringLayout alloc] initWithLayoutRequest:v9];

  return v10;
}

- (id)_nonToggledLayout
{
  nonToggledLayout = self->_nonToggledLayout;
  if (!nonToggledLayout)
  {
    nonToggledTitle = [(SKUIToggleButton *)self nonToggledTitle];
    v5 = [(SKUIToggleButton *)self _layoutForString:nonToggledTitle];
    v6 = self->_nonToggledLayout;
    self->_nonToggledLayout = v5;

    nonToggledLayout = self->_nonToggledLayout;
  }

  return nonToggledLayout;
}

- (void)_sendDidAnimate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 toggleButtonDidAnimateTransition:self];
  }
}

- (void)_sendWillAnimate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 toggleButtonWillAnimateTransition:self];
  }
}

- (void)_showToggleState:(BOOL)state
{
  toggleButtonType = self->_toggleButtonType;
  if (toggleButtonType == 1)
  {
    toggled = self->_toggled;
    imageView = [(SKUIStyledButton *)self imageView];
    if (toggled)
    {
      [(SKUIToggleButton *)self toggledContents];
    }

    else
    {
      [(SKUIToggleButton *)self nonToggledContents];
    }
    v8 = ;
    [imageView setContents:v8];
  }

  else if (!toggleButtonType)
  {
    stateCopy = state;
    window = [(SKUIToggleButton *)self window];

    [(SKUIToggleButton *)self _sendWillAnimate];
    if (window && stateCopy)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __37__SKUIToggleButton__showToggleState___block_invoke;
      v12[3] = &unk_2781F80F0;
      v12[4] = self;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __37__SKUIToggleButton__showToggleState___block_invoke_2;
      v11[3] = &unk_2781F84A0;
      v11[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v12 animations:v11 completion:0.4];
    }

    else
    {
      if (self->_toggled)
      {
        [(SKUIToggleButton *)self _toggledLayout];
      }

      else
      {
        [(SKUIToggleButton *)self _nonToggledLayout];
      }
      v9 = ;
      [(SKUIStyledButton *)self setTitleLayout:v9];

      [(SKUIToggleButton *)self _sendDidAnimate];
    }
  }
}

void __37__SKUIToggleButton__showToggleState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = v2;
  if (v2[688] == 1)
  {
    [v2 _toggledLayout];
  }

  else
  {
    [v2 _nonToggledLayout];
  }
  v3 = ;
  [v1 setTitleLayout:v3];
}

- (id)_titleAttributes
{
  titleLayout = [(SKUIStyledButton *)self titleLayout];
  attributedString = [titleLayout attributedString];
  v5 = [attributedString length];

  if (v5)
  {
    titleLayout2 = [(SKUIStyledButton *)self titleLayout];
    attributedString2 = [titleLayout2 attributedString];
    v8 = [attributedString2 attributesAtIndex:0 effectiveRange:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_element);
    titleLayout2 = [WeakRetained style];

    attributedString2 = SKUIViewElementFontWithStyle(titleLayout2);
    if (!attributedString2)
    {
      attributedString2 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    }

    ikColor = [titleLayout2 ikColor];
    color = [ikColor color];

    if (!color)
    {
      color = [MEMORY[0x277D75348] blackColor];
    }

    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v13 = [defaultParagraphStyle mutableCopy];

    [v13 setLineBreakMode:4];
    v14 = objc_alloc(MEMORY[0x277CBEAC0]);
    v8 = [v14 initWithObjectsAndKeys:{attributedString2, *MEMORY[0x277D740A8], v13, *MEMORY[0x277D74118], color, *MEMORY[0x277D740C0], 0}];
  }

  return v8;
}

- (id)_toggledLayout
{
  toggledLayout = self->_toggledLayout;
  if (!toggledLayout)
  {
    toggledTitle = [(SKUIToggleButton *)self toggledTitle];
    v5 = [(SKUIToggleButton *)self _layoutForString:toggledTitle];
    v6 = self->_toggledLayout;
    self->_toggledLayout = v5;

    toggledLayout = self->_toggledLayout;
  }

  return toggledLayout;
}

- (void)itemStateCenter:(id)center itemStateChanged:(id)changed
{
  changedCopy = changed;
  itemIdentifier = [changedCopy itemIdentifier];
  v7 = [itemIdentifier isEqualToString:self->_toggleItemIdentifier];

  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SKUIToggleButton_itemStateCenter_itemStateChanged___block_invoke;
    v8[3] = &unk_2781F80C8;
    v9 = changedCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __53__SKUIToggleButton_itemStateCenter_itemStateChanged___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) toggled] & 0x80000000) == 0)
  {
    v2 = [*(a1 + 32) toggled];
    v3 = *(a1 + 40);
    if (v3[688] != v2)
    {
      [v3 setToggled:{objc_msgSend(*(a1 + 32), "toggled") == 1}];
    }
  }

  v4 = *(a1 + 40);
  if (*(v4 + 736) == 1 && *(v4 + 616) == 1)
  {
    v8 = [*(a1 + 32) toggledString];
    if ([v8 length])
    {
      v5 = [*(a1 + 32) toggledString];
      v6 = [v5 isEqualToString:*(*(a1 + 40) + 672)];

      if (v6)
      {
        return;
      }

      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) toggledString];
      [v7 setButtonTitleText:?];
    }
  }
}

- (SKUIButtonViewElement)element
{
  WeakRetained = objc_loadWeakRetained(&self->_element);

  return WeakRetained;
}

- (SKUIToggleButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIToggleButton init]";
}

@end