@interface SXComponentTypeMatching
- (SXComponentTypeMatching)init;
- (id)match:(id)match;
- (void)addDescription:(id)description;
- (void)removeDescription:(id)description;
@end

@implementation SXComponentTypeMatching

- (SXComponentTypeMatching)init
{
  v6.receiver = self;
  v6.super_class = SXComponentTypeMatching;
  v2 = [(SXComponentTypeMatching *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    descriptions = v2->_descriptions;
    v2->_descriptions = array;
  }

  return v2;
}

- (id)match:(id)match
{
  v28 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  descriptions = [(SXComponentTypeMatching *)self descriptions];
  v6 = [descriptions countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    v22 = 0;
    v8 = 0;
    goto LABEL_16;
  }

  v7 = v6;
  v22 = 0;
  v8 = 0;
  v9 = *v24;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(descriptions);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      type = [matchCopy type];
      type2 = [v11 type];
      v14 = [type isEqualToString:type2];

      if (v14)
      {
        if (![v11 role])
        {
          v16 = v22;
          v22 = v11;
          v17 = v8;
LABEL_11:
          v18 = v11;

          v8 = v17;
          continue;
        }

        role = [v11 role];
        v16 = v8;
        v17 = v11;
        if (role == [matchCopy role])
        {
          goto LABEL_11;
        }
      }
    }

    v7 = [descriptions countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v7);
LABEL_16:

  if (v8)
  {
    v19 = v8;
  }

  else
  {
    v19 = v22;
  }

  v20 = v19;

  return v19;
}

- (void)addDescription:(id)description
{
  if (description)
  {
    descriptionCopy = description;
    descriptions = [(SXComponentTypeMatching *)self descriptions];
    [descriptions addObject:descriptionCopy];
  }
}

- (void)removeDescription:(id)description
{
  if (description)
  {
    descriptionCopy = description;
    descriptions = [(SXComponentTypeMatching *)self descriptions];
    [descriptions removeObject:descriptionCopy];
  }
}

@end