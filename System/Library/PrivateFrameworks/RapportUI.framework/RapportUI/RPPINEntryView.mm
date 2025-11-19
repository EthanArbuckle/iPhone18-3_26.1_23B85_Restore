@interface RPPINEntryView
- (NSString)text;
- (int64_t)keyboardType;
- (void)_updateFields;
- (void)awakeFromNib;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)setText:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation RPPINEntryView

- (void)awakeFromNib
{
  v7.receiver = self;
  v7.super_class = RPPINEntryView;
  [(RPPINEntryView *)&v7 awakeFromNib];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v3;
  if (self->_label1)
  {
    [v3 addObject:?];
  }

  if (self->_label2)
  {
    [v4 addObject:?];
  }

  if (self->_label3)
  {
    [v4 addObject:?];
  }

  if (self->_label4)
  {
    [v4 addObject:?];
  }

  if (self->_label5)
  {
    [v4 addObject:?];
  }

  if (self->_label6)
  {
    [v4 addObject:?];
  }

  if (self->_label7)
  {
    [v4 addObject:?];
  }

  if (self->_label8)
  {
    [v4 addObject:?];
  }

  if ([v4 count])
  {
    objc_storeStrong(&self->_labels, v4);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  if (self->_well1)
  {
    [v5 addObject:?];
  }

  if (self->_well2)
  {
    [v6 addObject:?];
  }

  if (self->_well3)
  {
    [v6 addObject:?];
  }

  if (self->_well4)
  {
    [v6 addObject:?];
  }

  if (self->_well5)
  {
    [v6 addObject:?];
  }

  if (self->_well6)
  {
    [v6 addObject:?];
  }

  if (self->_well7)
  {
    [v6 addObject:?];
  }

  if (self->_well8)
  {
    [v6 addObject:?];
  }

  if ([v6 count])
  {
    objc_storeStrong(&self->_wells, v6);
  }

  [(RPPINEntryView *)self setText:&stru_287405838];
}

- (NSString)text
{
  text = self->_text;
  if (text)
  {
    v4 = [(NSMutableString *)text copy];
  }

  else
  {
    v4 = &stru_287405838;
  }

  return v4;
}

- (void)setText:(id)a3
{
  v4 = [a3 uppercaseString];
  v5 = [v4 mutableCopy];
  text = self->_text;
  self->_text = v5;

  [(RPPINEntryView *)self _updateFields];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = RPPINEntryView;
  [(RPPINEntryView *)&v5 touchesBegan:a3 withEvent:a4];
  if (!self->_disabled)
  {
    [(RPPINEntryView *)self becomeFirstResponder];
  }
}

- (void)_updateFields
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_wells count];
  v4 = &stru_287405838;
  if (!v3)
  {
    v4 = @"-";
  }

  v30 = v4;
  v5 = [(NSMutableString *)self->_text length];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = self->_labels;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        if (v9 >= v5)
        {
          [*(*(&v35 + 1) + 8 * i) setText:v30];
        }

        else
        {
          v13 = [(NSMutableString *)self->_text substringWithRange:v9, 1];
          [v12 setText:v13];
        }

        if (self->_disabled)
        {
          [MEMORY[0x277D75348] systemGrayColor];
        }

        else
        {
          [MEMORY[0x277D75348] blackColor];
        }
        v14 = ;
        [v12 setTextColor:v14];

        ++v9;
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  wellFocusColor = self->_wellFocusColor;
  if (wellFocusColor)
  {
    v16 = wellFocusColor;
  }

  else
  {
    v16 = [MEMORY[0x277D75348] grayColor];
  }

  v29 = v16;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = self->_wells;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v32;
    do
    {
      v22 = 0;
      v28 = v20;
      v23 = v5 - v20;
      do
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v31 + 1) + 8 * v22);
        if (v23 == v22 && !self->_disabled)
        {
          [*(*(&v31 + 1) + 8 * v22) setBorderColor:v29];
          v26 = 2.0;
        }

        else
        {
          v25 = [MEMORY[0x277D75348] colorWithWhite:0.800000012 alpha:1.0];
          [v24 setBorderColor:v25];

          v26 = 1.5;
        }

        [v24 setBorderWidth:v26];
        ++v22;
      }

      while (v19 != v22);
      v20 = v28 + v19;
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v19);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)deleteBackward
{
  if (!self->_disabled)
  {
    if ([(NSMutableString *)self->_text length])
    {
      text = self->_text;
      v4 = [(NSMutableString *)text rangeOfComposedCharacterSequenceAtIndex:[(NSMutableString *)text length]- 1];
      [(NSMutableString *)text deleteCharactersInRange:v4, v5];
      [(RPPINEntryView *)self _updateFields];
      textChangedHandler = self->_textChangedHandler;
      if (textChangedHandler)
      {
        v7 = self->_text;
        v8 = *(textChangedHandler + 2);

        v8();
      }
    }
  }
}

- (void)insertText:(id)a3
{
  textChangedHandler = a3;
  v5 = textChangedHandler;
  if (!self->_disabled)
  {
    v20 = textChangedHandler;
    v6 = textChangedHandler;
    v7 = [v20 UTF8String];
    v8 = [(NSArray *)self->_labels count];
    v9 = v8 - [(NSMutableString *)self->_text length];
    v10 = *v7;
    if (*v7)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = MEMORY[0x277D85DE0];
      v13 = v7 + 1;
      do
      {
        if ((v10 & 0x80) != 0)
        {
          if (__maskrune(v10, 0x4000uLL))
          {
            goto LABEL_24;
          }
        }

        else if ((*(v12 + 4 * v10 + 60) & 0x4000) != 0)
        {
          goto LABEL_24;
        }

        if (self->_alphaNumeric)
        {
          if ((v10 & 0x80) != 0)
          {
            __maskrune(v10, 0x500uLL);
          }

          else if ((*(v12 + 4 * v10 + 60) & 0x500) != 0 && v10 - 48 < 0xA)
          {
LABEL_20:
            text = self->_text;
            if (!text)
            {
              v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
              v17 = self->_text;
              self->_text = v16;

              text = self->_text;
            }

            [(NSMutableString *)text appendFormat:@"%c", __toupper(v10)];
            --v9;
          }
        }

        else if (v10 - 48 <= 9)
        {
          goto LABEL_20;
        }

LABEL_24:
        v18 = *v13++;
        v10 = v18;
      }

      while (v18 && v9);
    }

    [(RPPINEntryView *)self _updateFields];
    textChangedHandler = self->_textChangedHandler;
    v5 = v20;
    if (textChangedHandler)
    {
      if (self->_text)
      {
        v19 = self->_text;
      }

      else
      {
        v19 = &stru_287405838;
      }

      textChangedHandler = (*(textChangedHandler + 2))(textChangedHandler, v19);
      v5 = v20;
    }
  }

  MEMORY[0x2821F96F8](textChangedHandler, v5);
}

- (int64_t)keyboardType
{
  if (self->_alphaNumeric)
  {
    return 6;
  }

  else
  {
    return 11;
  }
}

@end