@interface SKUIAttributedStringIndexBarEntry
- (BOOL)isEqual:(id)a3;
- (CGSize)_calculatedContentSize;
- (SKUIAttributedStringIndexBarEntry)initWithAttributedString:(id)a3;
- (id)_synthesizedAttributedString;
- (id)description;
- (unint64_t)hash;
- (void)_drawContentInRect:(CGRect)a3;
- (void)_invalidateSynthesizedAttributedString;
- (void)_tintColorDidChange;
- (void)setDefaultTextAttributes:(id)a3;
@end

@implementation SKUIAttributedStringIndexBarEntry

- (SKUIAttributedStringIndexBarEntry)initWithAttributedString:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIAttributedStringIndexBarEntry *)v5 initWithAttributedString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUIAttributedStringIndexBarEntry;
  v13 = [(SKUIAttributedStringIndexBarEntry *)&v17 init];
  if (v13)
  {
    v14 = [v4 copy];
    attributedString = v13->_attributedString;
    v13->_attributedString = v14;

    [(SKUIIndexBarEntry *)v13 setEntryType:1];
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p attributedString:%@>", v5, self, self->_attributedString];

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SKUIAttributedStringIndexBarEntry;
  v3 = [(SKUIIndexBarEntry *)&v5 hash];
  return [(NSAttributedString *)self->_attributedString hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v8.receiver = self, v8.super_class = SKUIAttributedStringIndexBarEntry, ![(SKUIIndexBarEntry *)&v8 isEqual:v4]))
  {
    v6 = 0;
    goto LABEL_8;
  }

  attributedString = v4->_attributedString;
  if (attributedString == self->_attributedString)
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v6 = [(NSAttributedString *)attributedString isEqualToAttributedString:?];
LABEL_8:

  return v6;
}

- (CGSize)_calculatedContentSize
{
  v2 = [(SKUIAttributedStringIndexBarEntry *)self _synthesizedAttributedString];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_drawContentInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SKUIAttributedStringIndexBarEntry *)self _synthesizedAttributedString];
  [v7 drawInRect:{x, y, width, height}];
}

- (void)_tintColorDidChange
{
  [(SKUIAttributedStringIndexBarEntry *)self _invalidateSynthesizedAttributedString];
  v3.receiver = self;
  v3.super_class = SKUIAttributedStringIndexBarEntry;
  [(SKUIIndexBarEntry *)&v3 _tintColorDidChange];
}

- (void)setDefaultTextAttributes:(id)a3
{
  v4 = a3;
  defaultTextAttributes = self->_defaultTextAttributes;
  if (defaultTextAttributes != v4)
  {
    v8 = v4;
    defaultTextAttributes = [defaultTextAttributes isEqualToDictionary:v4];
    v4 = v8;
    if ((defaultTextAttributes & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_defaultTextAttributes;
      self->_defaultTextAttributes = v6;

      defaultTextAttributes = [(SKUIAttributedStringIndexBarEntry *)self _invalidateSynthesizedAttributedString];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](defaultTextAttributes, v4);
}

- (void)_invalidateSynthesizedAttributedString
{
  self->_hasValidSynthesizedAttributedString = 0;
  self->_synthesizedAttributedString = 0;
  MEMORY[0x2821F96F8]();
}

- (id)_synthesizedAttributedString
{
  if (!self->_hasValidSynthesizedAttributedString)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = [(SKUIIndexBarEntry *)self tintColor];
    v5 = *MEMORY[0x277D740C0];
    v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:11.0];
    v7 = [v3 dictionaryWithObjectsAndKeys:{v4, v5, v6, *MEMORY[0x277D740A8], 0}];

    v8 = [(SKUIAttributedStringIndexBarEntry *)self defaultTextAttributes];
    [v7 addEntriesFromDictionary:v8];

    if (-[NSAttributedString length](self->_attributedString, "length") && [v7 count])
    {
      v9 = objc_alloc(MEMORY[0x277CCAB48]);
      v10 = [(NSAttributedString *)self->_attributedString string];
      v11 = [v9 initWithString:v10 attributes:v7];

      attributedString = self->_attributedString;
      v13 = [(NSAttributedString *)attributedString length];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __65__SKUIAttributedStringIndexBarEntry__synthesizedAttributedString__block_invoke;
      v19[3] = &unk_2781FAFF0;
      v14 = v11;
      v20 = v14;
      [(NSAttributedString *)attributedString enumerateAttributesInRange:0 options:v13 usingBlock:0, v19];
      synthesizedAttributedString = self->_synthesizedAttributedString;
      self->_synthesizedAttributedString = v14;
      v16 = v14;
    }

    self->_hasValidSynthesizedAttributedString = 1;
  }

  v17 = self->_synthesizedAttributedString;

  return v17;
}

@end