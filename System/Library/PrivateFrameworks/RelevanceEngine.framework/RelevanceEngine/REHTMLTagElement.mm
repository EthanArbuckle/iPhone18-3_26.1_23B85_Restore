@interface REHTMLTagElement
- (REHTMLTagElement)initWithTag:(id)tag content:(id)content;
- (id)_prefixContentString;
- (id)_suffixContentString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)elementByAddingClass:(id)class;
- (id)elementByAddingClasses:(id)classes;
- (id)elementBySettingAtttibutes:(id)atttibutes;
- (id)elementBySettingClasses:(id)classes;
@end

@implementation REHTMLTagElement

- (REHTMLTagElement)initWithTag:(id)tag content:(id)content
{
  tagCopy = tag;
  contentCopy = content;
  v16.receiver = self;
  v16.super_class = REHTMLTagElement;
  v8 = [(REHTMLElement *)&v16 init];
  if (v8)
  {
    v9 = [tagCopy copy];
    tag = v8->_tag;
    v8->_tag = v9;

    v11 = [contentCopy copy];
    content = v8->_content;
    v8->_content = v11;

    classes = v8->_classes;
    v8->_classes = MEMORY[0x277CBEBF8];

    attributes = v8->_attributes;
    v8->_attributes = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)_prefixContentString
{
  v48 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__5;
  v44 = __Block_byref_object_dispose__5;
  v45 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __40__REHTMLTagElement__prefixContentString__block_invoke;
  v39[3] = &unk_2785FADB8;
  v39[4] = self;
  v39[5] = &v40;
  REHTMLElementAccessLock(v39);
  v2 = v41[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = self->_tag;
    v5 = [(NSDictionary *)self->_attributes count];
    v6 = 0x277CCA000;
    if (v5 || (v7 = [(NSArray *)self->_classes count], v6 = 0x277CCA000uLL, v7))
    {
      v8 = [*(v6 + 2920) stringWithString:{self->_tag, v4}];
      [v8 appendString:@" "];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v9 = self->_attributes;
      v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v10)
      {
        v11 = *v36;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            v14 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:v13];
            [v8 appendString:v13];
            [v8 appendString:@"="];
            [v8 appendString:v14];
            [v8 appendString:@" "];
          }

          v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v35 objects:v47 count:16];
        }

        while (v10);
      }

      if ([(NSArray *)self->_classes count])
      {
        [v8 appendString:@"class="];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v15 = self->_classes;
        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v31 objects:v46 count:16];
        if (v16)
        {
          v17 = *v32;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(v15);
              }

              [v8 appendString:*(*(&v31 + 1) + 8 * j)];
              [v8 appendString:@" "];
            }

            v16 = [(NSArray *)v15 countByEnumeratingWithState:&v31 objects:v46 count:16];
          }

          while (v16);
        }

        [v8 appendString:@""];
      }

      v4 = [v8 copy];
    }

    v19 = v4;
    v20 = [(NSString *)v19 length];
    v21 = [@"<" length];
    v22 = [@">" length];
    v23 = [MEMORY[0x277CCAB68] stringWithCapacity:v21 + v20 + v22];
    [v23 appendString:@"<"];
    [v23 appendString:v19];
    [v23 appendString:@">"];
    v24 = [v23 copy];

    v25 = v41[5];
    v41[5] = v24;

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __40__REHTMLTagElement__prefixContentString__block_invoke_2;
    v30[3] = &unk_2785FADE0;
    v30[4] = self;
    v30[5] = &v40;
    REHTMLElementAccessLock(v30);
    v3 = v41[5];
  }

  _Block_object_dispose(&v40, 8);

  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_suffixContentString
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__REHTMLTagElement__suffixContentString__block_invoke;
  v15[3] = &unk_2785FADB8;
  v15[4] = self;
  v15[5] = &v16;
  REHTMLElementAccessLock(v15);
  v3 = v17[5];
  if (!v3)
  {
    _contentString = [(REHTMLTagElement *)self _contentString];

    if (_contentString)
    {
      v5 = self->_tag;
      v6 = [(NSString *)v5 length];
      v7 = [@"</" length];
      v8 = [@">" length];
      v9 = [MEMORY[0x277CCAB68] stringWithCapacity:v7 + v6 + v8];
      [v9 appendString:@"</"];
      [v9 appendString:v5];
      [v9 appendString:@">"];
      v10 = [v9 copy];
    }

    else
    {
      v10 = &stru_283B97458;
    }

    v11 = v17[5];
    v17[5] = v10;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__REHTMLTagElement__suffixContentString__block_invoke_2;
    v14[3] = &unk_2785FADE0;
    v14[4] = self;
    v14[5] = &v16;
    REHTMLElementAccessLock(v14);
    v3 = v17[5];
  }

  v12 = v3;
  _Block_object_dispose(&v16, 8);

  return v12;
}

- (id)elementByAddingClass:(id)class
{
  classCopy = class;
  v5 = [(REHTMLTagElement *)self copy];
  v6 = [(NSArray *)self->_classes arrayByAddingObject:classCopy];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (id)elementByAddingClasses:(id)classes
{
  classesCopy = classes;
  v5 = [(REHTMLTagElement *)self copy];
  v6 = [(NSArray *)self->_classes arrayByAddingObjectsFromArray:classesCopy];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (id)elementBySettingClasses:(id)classes
{
  classesCopy = classes;
  v5 = [(REHTMLTagElement *)self copy];
  v6 = [classesCopy copy];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (id)elementBySettingAtttibutes:(id)atttibutes
{
  atttibutesCopy = atttibutes;
  v5 = [(REHTMLTagElement *)self copy];
  v6 = [atttibutesCopy copy];

  v7 = v5[5];
  v5[5] = v6;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REHTMLTagElement;
  v4 = [(REHTMLElement *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_tag);
  objc_storeStrong(v4 + 3, self->_content);
  objc_storeStrong(v4 + 5, self->_attributes);
  objc_storeStrong(v4 + 4, self->_classes);
  return v4;
}

@end