@interface PXGPPTStringsLayout
- (PXGPPTStringsLayout)initWithStringCount:(unint64_t)count localeCodes:(id)codes;
- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout;
@end

@implementation PXGPPTStringsLayout

- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout
{
  v5 = [(PXGPPTStringsLayout *)self strings:*&index];
  v6 = [v5 objectAtIndexedSubscript:index];

  return v6;
}

- (PXGPPTStringsLayout)initWithStringCount:(unint64_t)count localeCodes:(id)codes
{
  v41 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  v37.receiver = self;
  v37.super_class = PXGPPTStringsLayout;
  v7 = [(PXGItemsLayout *)&v37 init];
  v8 = v7;
  if (v7)
  {
    v29 = v7;
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v11 setDay:15];
    [v11 setHour:5];
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v12 setDateStyle:4];
    array = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = codesCopy;
    v14 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    v30 = codesCopy;
    if (v14)
    {
      v15 = v14;
      v32 = *v34;
      do
      {
        v16 = 0;
        do
        {
          if (*v34 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v33 + 1) + 8 * v16)];
          [v12 setLocale:v17];

          for (i = count; i; --i)
          {
            v19 = [v10 dateByAddingComponents:v11 toDate:v9 options:0];

            v20 = [v12 stringFromDate:v19];
            [array addObject:v20];

            v9 = v19;
          }

          ++v16;
        }

        while (v16 != v15);
        v15 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v15);
    }

    [(PXGPPTStringsLayout *)v29 setStrings:array];
    strings = [(PXGPPTStringsLayout *)v29 strings];
    -[PXGItemsLayout setNumberOfItems:](v29, "setNumberOfItems:", [strings count]);

    [(PXGPPTStringsLayout *)v29 setMediaKind:3];
    [(PXGPPTStringsLayout *)v29 setContentSource:v29];
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v23 = [defaultParagraphStyle mutableCopy];

    [v23 setLineBreakMode:0];
    [v23 setAlignment:1];
    v24 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v26 = *MEMORY[0x1E69DB650];
    v38[0] = *MEMORY[0x1E69DB648];
    v38[1] = v26;
    v39[0] = v24;
    v39[1] = blackColor;
    v38[2] = *MEMORY[0x1E69DB688];
    v39[2] = v23;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
    [(PXGPPTStringsLayout *)v29 setAttributes:v27];

    v8 = v29;
    codesCopy = v30;
  }

  return v8;
}

@end