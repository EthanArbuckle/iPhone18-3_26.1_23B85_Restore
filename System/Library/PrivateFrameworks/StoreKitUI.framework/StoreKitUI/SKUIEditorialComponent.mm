@interface SKUIEditorialComponent
- (NSAttributedString)bodyAttributedText;
- (SKUIEditorialComponent)initWithBrickRoomText:(id)a3;
- (SKUIEditorialComponent)initWithCustomPageContext:(id)a3;
- (SKUIEditorialComponent)initWithUberText:(id)a3;
- (SKUIEditorialComponent)initWithViewElement:(id)a3;
- (SKUIEditorialStyle)editorialStyle;
- (void)_setTitleText:(id)a3;
@end

@implementation SKUIEditorialComponent

- (SKUIEditorialComponent)initWithBrickRoomText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKUIEditorialComponent;
  v5 = [(SKUIEditorialComponent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bodyText = v5->_bodyText;
    v5->_bodyText = v6;

    v5->_maximumBodyLines = 0;
    v5->_style.bodyFontSize = 14.0;
  }

  return v5;
}

- (SKUIEditorialComponent)initWithCustomPageContext:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SKUIEditorialComponent;
  v5 = [(SKUIPageComponent *)&v38 initWithCustomPageContext:v4];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    SKUIEditorialStyleForDictionary(v6, v36);
    v7 = v36[1];
    *&v5->_style.alignment = v36[0];
    *&v5->_style.bodyFontSize = v7;
    *&v5->_style.titleFontSize = v37;
    if (v5->_style.alignment == 3 && ![v4 layoutStyle])
    {
      v5->_style.alignment = 1;
    }

    v8 = [v6 objectForKey:@"maximumBodyLines"];
    if (objc_opt_respondsToSelector())
    {
      v5->_maximumBodyLines = [v8 integerValue];
    }

    v9 = [v6 objectForKey:@"body"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      bodyText = v5->_bodyText;
      v5->_bodyText = v10;
    }

    v12 = [v6 objectForKey:@"title"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      titleText = v5->_titleText;
      v5->_titleText = v13;
    }

    v15 = [v6 objectForKey:@"useLockupTitle"];

    if (objc_opt_respondsToSelector())
    {
      v5->_usesLockupTitle = [v15 BOOLValue];
    }

    v16 = [v6 objectForKey:@"links"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v6;
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31 = v4;
      v18 = [v4 copy];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v29 = v16;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v33;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v32 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v18 setComponentDictionary:v24];
              v25 = [[SKUILink alloc] initWithComponentContext:v18];
              if (v25)
              {
                [v17 addObject:v25];
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v32 objects:v39 count:16];
        }

        while (v21);
      }

      v26 = [v17 copy];
      links = v5->_links;
      v5->_links = v26;

      v6 = v30;
      v4 = v31;
      v16 = v29;
    }
  }

  return v5;
}

- (SKUIEditorialComponent)initWithUberText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKUIEditorialComponent;
  v5 = [(SKUIEditorialComponent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bodyText = v5->_bodyText;
    v5->_bodyText = v6;

    v5->_maximumBodyLines = 3;
    v5->_style.bodyFontSize = 14.0;
  }

  return v5;
}

- (SKUIEditorialComponent)initWithViewElement:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKUIEditorialComponent;
  v5 = [(SKUIPageComponent *)&v9 initWithViewElement:v4];
  if (v5)
  {
    v6 = [v4 style];
    v7 = [v6 maxTextLines];
    if (!v6 || v7 == -1)
    {
      v7 = [v4 numberOfLines];
    }

    v5->_maximumBodyLines = v7;
  }

  return v5;
}

- (NSAttributedString)bodyAttributedText
{
  v2 = [(SKUIPageComponent *)self viewElement];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 style];
    v5 = SKUIViewElementFontWithStyle(v4);
    if (!v5)
    {
      v5 = SKUIFontPreferredFontForTextStyle(5);
    }

    v6 = [v4 ikColor];
    v7 = [v6 color];

    if (!v7)
    {
      v7 = [MEMORY[0x277D75348] blackColor];
    }

    v8 = SKUIViewElementAlignmentForStyle(v4);
    if (v8)
    {
      v9 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = [v3 text];
    v12 = [v11 attributedStringWithDefaultFont:v5 foregroundColor:v7 textAlignment:v9 style:v4];
    v13 = [v12 mutableCopy];

    v14 = *MEMORY[0x277D74118];
    v15 = [v13 length];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__SKUIEditorialComponent_bodyAttributedText__block_invoke;
    v17[3] = &unk_2781FB7E8;
    v10 = v13;
    v18 = v10;
    [v10 enumerateAttribute:v14 inRange:0 options:v15 usingBlock:{0, v17}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __44__SKUIEditorialComponent_bodyAttributedText__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 mutableCopy];
  [v7 setLineBreakMode:0];
  [*(a1 + 32) addAttribute:*MEMORY[0x277D74118] value:v7 range:{a3, a4}];
}

- (void)_setTitleText:(id)a3
{
  if (self->_titleText != a3)
  {
    v4 = [a3 copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    MEMORY[0x2821F96F8](v4, titleText);
  }
}

- (SKUIEditorialStyle)editorialStyle
{
  v3 = *&self[1].titleFontWeight;
  *&retstr->alignment = *&self[1].bodyFontWeight;
  *&retstr->bodyFontSize = v3;
  *&retstr->titleFontSize = self[2].alignment;
  return self;
}

@end