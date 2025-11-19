@interface LabelSequenceView
- (CGSize)requiredSize;
- (LabelSequenceView)init;
- (void)drawRect:(CGRect)a3;
@end

@implementation LabelSequenceView

- (LabelSequenceView)init
{
  v6.receiver = self;
  v6.super_class = LabelSequenceView;
  v2 = [(LabelSequenceView *)&v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    v4 = [(LabelSequenceView *)v2 layer];
    [v4 setNeedsDisplayOnBoundsChange:0];
  }

  return v3;
}

- (CGSize)requiredSize
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF3A8];
  v2 = *(MEMORY[0x277CBF3A8] + 8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_stringDrawingInfoValues;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v9 size];
        v11 = v10;
        [v9 size];
        if (v12 > v2)
        {
          [v9 size];
          v2 = v13;
        }

        v3 = v3 + v11 + 15.0;
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = v3 + -15.0;
  v15 = v2;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v5 = [v4 mutableCopy];

  v28 = v5;
  [v5 setLineBreakMode:5];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_stringDrawingInfoValues;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *v30;
    v10 = *MEMORY[0x277D740A8];
    v11 = *MEMORY[0x277D74118];
    v12 = *MEMORY[0x277D740C0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        [v14 size];
        v16 = v15;
        v18 = v17;
        v19 = RoundToPixel(22.5);
        v20 = [v14 font];
        [v20 ascender];
        v22 = RoundToPixel(v19 - v21);

        v23 = [v14 string];
        v33[0] = v10;
        v24 = [v14 font];
        v34[0] = v24;
        v34[1] = v28;
        v33[1] = v11;
        v33[2] = v12;
        v25 = [v14 color];
        v34[2] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
        [v23 drawInRect:v26 withAttributes:{v8, v22, v16, v18}];

        v8 = v8 + v16 + 15.0;
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }
}

@end