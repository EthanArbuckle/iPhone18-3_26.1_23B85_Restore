@interface PXAttributedStringHTMLParser
- (PXAttributedStringHTMLParser)initWithHTMLString:(id)string defaultAttributes:(id)attributes;
- (void)_setCurrentTraits:(unsigned int)traits;
- (void)_updateCurrentTraits;
- (void)parse;
@end

@implementation PXAttributedStringHTMLParser

- (void)_setCurrentTraits:(unsigned int)traits
{
  if (self->__currentTraits == traits)
  {
    return;
  }

  v4 = *&traits;
  self->__currentTraits = traits;
  if (traits == 1)
  {
    italicizedAttributes = [(PXAttributedStringHTMLParser *)self italicizedAttributes];
  }

  else
  {
    if (traits != 2)
    {
LABEL_7:
      _defaultAttributes = [(PXAttributedStringHTMLParser *)self _defaultAttributes];
      v9 = *MEMORY[0x1E69DB648];
      v10 = [_defaultAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
      v11 = MEMORY[0x1E69DB878];
      fontDescriptor = [v10 fontDescriptor];
      v13 = [fontDescriptor fontDescriptorWithSymbolicTraits:v4];
      [v10 pointSize];
      v14 = [v11 fontWithDescriptor:v13 size:?];

      v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:_defaultAttributes];
      if (v14)
      {
        [v15 setObject:v14 forKeyedSubscript:v9];
      }

      v7 = v15;
      goto LABEL_10;
    }

    italicizedAttributes = [(PXAttributedStringHTMLParser *)self emphasizedAttributes];
  }

  v7 = italicizedAttributes;
  if (!italicizedAttributes)
  {
    goto LABEL_7;
  }

LABEL_10:
  v16 = v7;
  [(PXAttributedStringHTMLParser *)self _setCurrentAttributes:v7];
}

- (void)_updateCurrentTraits
{
  _currentMarkupElements = [(PXAttributedStringHTMLParser *)self _currentMarkupElements];
  if ([_currentMarkupElements containsObject:&unk_1F190BD70])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  -[PXAttributedStringHTMLParser _setCurrentTraits:](self, "_setCurrentTraits:", v3 | [_currentMarkupElements containsObject:&unk_1F190BD88]);
}

- (void)parse
{
  v3 = [PXMiniHTMLParser alloc];
  _htmlString = [(PXAttributedStringHTMLParser *)self _htmlString];
  v5 = [(PXMiniHTMLParser *)v3 initWithString:_htmlString];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__PXAttributedStringHTMLParser_parse__block_invoke;
  v9[3] = &unk_1E774BE48;
  v9[4] = self;
  [(PXMiniHTMLParser *)v5 setParsedCharactersBlock:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PXAttributedStringHTMLParser_parse__block_invoke_2;
  v8[3] = &unk_1E7748D18;
  v8[4] = self;
  [(PXMiniHTMLParser *)v5 setParsedMarkupElementStartBlock:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PXAttributedStringHTMLParser_parse__block_invoke_3;
  v7[3] = &unk_1E7748D18;
  v7[4] = self;
  [(PXMiniHTMLParser *)v5 setParsedMarkupElementEndBlock:v7];
  parsedErrorBlock = [(PXAttributedStringHTMLParser *)self parsedErrorBlock];
  [(PXMiniHTMLParser *)v5 setParsedErrorBlock:parsedErrorBlock];

  [(PXMiniHTMLParser *)v5 parse];
}

void __37__PXAttributedStringHTMLParser_parse__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) parsedAttributedStringBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) _currentAttributes];
    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v4];
    v6 = [*(a1 + 32) parsedAttributedStringBlock];
    (v6)[2](v6, v5);
  }
}

uint64_t __37__PXAttributedStringHTMLParser_parse__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _currentMarkupElements];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v4 addObject:v5];

  v6 = *(a1 + 32);

  return [v6 _updateCurrentTraits];
}

uint64_t __37__PXAttributedStringHTMLParser_parse__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _currentMarkupElements];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v4 removeObject:v5];

  v6 = *(a1 + 32);

  return [v6 _updateCurrentTraits];
}

- (PXAttributedStringHTMLParser)initWithHTMLString:(id)string defaultAttributes:(id)attributes
{
  stringCopy = string;
  attributesCopy = attributes;
  v16.receiver = self;
  v16.super_class = PXAttributedStringHTMLParser;
  v8 = [(PXAttributedStringHTMLParser *)&v16 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    htmlString = v8->__htmlString;
    v8->__htmlString = v9;

    v11 = [attributesCopy copy];
    defaultAttributes = v8->__defaultAttributes;
    v8->__defaultAttributes = v11;

    v13 = [MEMORY[0x1E696AB50] setWithCapacity:3];
    currentMarkupElements = v8->__currentMarkupElements;
    v8->__currentMarkupElements = v13;

    objc_storeStrong(&v8->__currentAttributes, v8->__defaultAttributes);
  }

  return v8;
}

@end