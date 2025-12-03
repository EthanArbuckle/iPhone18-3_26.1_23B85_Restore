@interface SPCoreSpotlightResult
- (BOOL)hasDetail;
- (SPCoreSpotlightResult)init;
- (id)debugDescription;
- (int)title_maxlines;
- (void)setBuddyScore:(SPCoreSpotlightResult *)self;
- (void)setCompatibilityDescriptions:(id)descriptions;
- (void)setTitle_maxlines:(int)title_maxlines;
@end

@implementation SPCoreSpotlightResult

- (SPCoreSpotlightResult)init
{
  v3.receiver = self;
  v3.super_class = SPCoreSpotlightResult;
  return [(SFSearchResult_SpotlightExtras *)&v3 init];
}

- (void)setCompatibilityDescriptions:(id)descriptions
{
  selfCopy = self;
  v23 = *MEMORY[0x1E69E9840];
  descriptionsCopy = descriptions;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = descriptionsCopy;
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
        v10 = [v9 objectForKeyedSubscript:{@"formatted_text", selfCopy}];
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = [v11 objectForKey:@"text"];
        v13 = [v9 objectForKey:@"text_maxlines"];
        v14 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
        [v14 setText:v12];
        [v14 setMaxLines:{objc_msgSend(v13, "intValue")}];
        [array addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [(SPCoreSpotlightResult *)selfCopy setDescriptions:array];
  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasDetail
{
  v3 = objc_autoreleasePoolPush();
  secondaryTitle = [(SPCoreSpotlightResult *)self secondaryTitle];
  if (secondaryTitle)
  {
    v5 = 1;
  }

  else
  {
    descriptions = [(SPCoreSpotlightResult *)self descriptions];
    if ([descriptions count])
    {
      v5 = 1;
    }

    else
    {
      auxiliaryTopText = [(SPCoreSpotlightResult *)self auxiliaryTopText];
      if (auxiliaryTopText)
      {
        v5 = 1;
      }

      else
      {
        auxiliaryMiddleText = [(SPCoreSpotlightResult *)self auxiliaryMiddleText];
        if (auxiliaryMiddleText)
        {
          v5 = 1;
        }

        else
        {
          auxiliaryBottomText = [(SPCoreSpotlightResult *)self auxiliaryBottomText];
          v5 = auxiliaryBottomText != 0;
        }
      }
    }
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (void)setTitle_maxlines:(int)title_maxlines
{
  title = [(SPCoreSpotlightResult *)self title];

  if (!title)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
    [(SPCoreSpotlightResult *)self setTitle:v6];
  }

  title2 = [(SPCoreSpotlightResult *)self title];
  [title2 setMaxLines:title_maxlines];
}

- (int)title_maxlines
{
  title = [(SPCoreSpotlightResult *)self title];
  maxLines = [title maxLines];

  return maxLines;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SPCoreSpotlightResult;
  v4 = [(SFSearchResult_Compatibility *)&v9 debugDescription];
  identifier = [(SPCoreSpotlightResult *)self identifier];
  interestingDate = [(SPCoreSpotlightResult *)self interestingDate];
  v7 = [v3 stringWithFormat:@"%@ %@ %@", v4, identifier, interestingDate];

  return v7;
}

- (void)setBuddyScore:(SPCoreSpotlightResult *)self
{
  v4 = v2;
  v5 = v3;
  objc_copyStruct(self->_buddyScore, &v4, 16, 1, 0);
}

@end