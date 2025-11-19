@interface SiriSharedUIRectSet
- (BOOL)containsPoint:(CGPoint)a3;
- (SiriSharedUIRectSet)initWithFramesForViews:(id)a3 inCoordinateSpace:(id)a4;
- (SiriSharedUIRectSet)initWithRectValues:(id)a3;
@end

@implementation SiriSharedUIRectSet

- (SiriSharedUIRectSet)initWithRectValues:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SiriSharedUIRectSet;
  v5 = [(SiriSharedUIRectSet *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    rectValues = v5->_rectValues;
    v5->_rectValues = v6;
  }

  return v5;
}

- (SiriSharedUIRectSet)initWithFramesForViews:(id)a3 inCoordinateSpace:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        [v14 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = [v14 superview];
        [v7 convertRect:v23 fromCoordinateSpace:{v16, v18, v20, v22}];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v32 = [MEMORY[0x277CCAE60] valueWithCGRect:{v25, v27, v29, v31}];
        [v8 addObject:v32];
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v11);
  }

  v33 = [(SiriSharedUIRectSet *)self initWithRectValues:v8];
  return v33;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SiriSharedUIRectSet *)self _rectValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * i) CGRectValue];
        v16.x = x;
        v16.y = y;
        if (CGRectContainsPoint(v17, v16))
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end