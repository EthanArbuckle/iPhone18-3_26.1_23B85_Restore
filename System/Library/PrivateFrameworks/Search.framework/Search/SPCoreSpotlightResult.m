@interface SPCoreSpotlightResult
- (BOOL)hasDetail;
- (SPCoreSpotlightResult)init;
- (id)debugDescription;
- (int)title_maxlines;
- (void)setBuddyScore:(SPCoreSpotlightResult *)self;
- (void)setCompatibilityDescriptions:(id)a3;
- (void)setTitle_maxlines:(int)a3;
@end

@implementation SPCoreSpotlightResult

- (SPCoreSpotlightResult)init
{
  v3.receiver = self;
  v3.super_class = SPCoreSpotlightResult;
  return [(SFSearchResult_SpotlightExtras *)&v3 init];
}

- (void)setCompatibilityDescriptions:(id)a3
{
  v16 = self;
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"formatted_text", v16}];
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = [v11 objectForKey:@"text"];
        v13 = [v9 objectForKey:@"text_maxlines"];
        v14 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
        [v14 setText:v12];
        [v14 setMaxLines:{objc_msgSend(v13, "intValue")}];
        [v4 addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [(SPCoreSpotlightResult *)v16 setDescriptions:v4];
  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasDetail
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(SPCoreSpotlightResult *)self secondaryTitle];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SPCoreSpotlightResult *)self descriptions];
    if ([v6 count])
    {
      v5 = 1;
    }

    else
    {
      v7 = [(SPCoreSpotlightResult *)self auxiliaryTopText];
      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = [(SPCoreSpotlightResult *)self auxiliaryMiddleText];
        if (v8)
        {
          v5 = 1;
        }

        else
        {
          v9 = [(SPCoreSpotlightResult *)self auxiliaryBottomText];
          v5 = v9 != 0;
        }
      }
    }
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (void)setTitle_maxlines:(int)a3
{
  v5 = [(SPCoreSpotlightResult *)self title];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
    [(SPCoreSpotlightResult *)self setTitle:v6];
  }

  v7 = [(SPCoreSpotlightResult *)self title];
  [v7 setMaxLines:a3];
}

- (int)title_maxlines
{
  v2 = [(SPCoreSpotlightResult *)self title];
  v3 = [v2 maxLines];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SPCoreSpotlightResult;
  v4 = [(SFSearchResult_Compatibility *)&v9 debugDescription];
  v5 = [(SPCoreSpotlightResult *)self identifier];
  v6 = [(SPCoreSpotlightResult *)self interestingDate];
  v7 = [v3 stringWithFormat:@"%@ %@ %@", v4, v5, v6];

  return v7;
}

- (void)setBuddyScore:(SPCoreSpotlightResult *)self
{
  v4 = v2;
  v5 = v3;
  objc_copyStruct(self->_buddyScore, &v4, 16, 1, 0);
}

@end