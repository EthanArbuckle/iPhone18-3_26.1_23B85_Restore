@interface SKUITracklistColumn
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setPreferredWidthForAttributedStrings:(id)strings;
@end

@implementation SKUITracklistColumn

- (void)setPreferredWidthForAttributedStrings:(id)strings
{
  v29 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITracklistColumn *)v5 setPreferredWidthForAttributedStrings:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = stringsCopy;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v14)
  {

    v16 = 0;
LABEL_19:
    v23 = 0.0;
    goto LABEL_20;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v25;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v24 + 1) + 8 * i);
      if (v16)
      {
        v20 = [*(*(&v24 + 1) + 8 * i) length];
        if (v20 > [v16 length])
        {
          v21 = v19;

          v16 = v21;
        }
      }

      else
      {
        v16 = v19;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v15);

  if (!v16)
  {
    goto LABEL_19;
  }

  [v16 size];
  v23 = v22;
LABEL_20:
  [(SKUITracklistColumn *)self setPreferredWidth:ceilf(v23), v24];
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITracklistColumn *)v3 description:v4];
      }
    }
  }

  v11 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = SKUITracklistColumn;
  v12 = [(SKUITracklistColumn *)&v15 description];
  v13 = [v11 stringWithFormat:@"%@: [ID: %ld, Width: %.2f]", v12, self->_columnIdentifier, *&self->_width];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITracklistColumn *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v13 setColumnIdentifier:self->_columnIdentifier];
  [v13 setContentAlignment:self->_contentAlignment];
  [v13 setHeaderAlignment:self->_headerAlignment];
  [v13 setMaximumWidthFraction:self->_maximumWidthFraction];
  [v13 setPreferredWidth:self->_preferredWidth];
  [v13 setShowsPreviewControl:self->_showsPreviewControl];
  [v13 setSizesToFit:self->_sizesToFit];
  [v13 setWidth:self->_width];
  return v13;
}

@end