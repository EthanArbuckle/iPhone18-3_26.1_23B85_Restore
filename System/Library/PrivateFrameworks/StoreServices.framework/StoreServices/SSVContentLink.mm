@interface SSVContentLink
- (NSURL)URL;
- (id)_URLSchemeWithApplication:(int64_t)application;
- (id)_stringForContentKind:(int64_t)kind;
- (int64_t)_targetApplicationWithContentKind:(int64_t)kind;
@end

@implementation SSVContentLink

- (NSURL)URL
{
  targetApplication = [(SSVContentLink *)self targetApplication];
  contentKind = [(SSVContentLink *)self contentKind];
  if (targetApplication)
  {
LABEL_4:
    v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v7 = [(SSVContentLink *)self _URLSchemeWithApplication:targetApplication];
    [v6 setScheme:v7];

    [v6 setPath:@"/"];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_itemIdentifier)
    {
      v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"action" value:@"lookup"];
      [v8 addObject:v9];

      v10 = MEMORY[0x1E696AF60];
      stringValue = [(NSNumber *)self->_itemIdentifier stringValue];
      v12 = @"ids";
      v13 = v10;
      categoryName = stringValue;
    }

    else
    {
      if (self->_searchTerm)
      {
        v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"action" value:@"search"];
        [v8 addObject:v16];

        stringValue = [MEMORY[0x1E696AF60] queryItemWithName:@"term" value:self->_searchTerm];
        [v8 addObject:stringValue];
        goto LABEL_10;
      }

      v19 = [(SSVContentLink *)self _stringForContentKind:contentKind];
      stringValue = v19;
      if (targetApplication != 3 || !v19)
      {
        if (self->_itemTitle || self->_providerName || self->_categoryName)
        {
          v24 = [MEMORY[0x1E696AF60] queryItemWithName:@"term" value:?];
          [v8 addObject:v24];
        }

        if (![v8 count])
        {
          goto LABEL_10;
        }

        v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"action" value:@"search"];
        [v8 insertObject:v15 atIndex:0];
        goto LABEL_7;
      }

      v20 = [MEMORY[0x1E696AF60] queryItemWithName:@"action" value:@"library-link"];
      [v8 addObject:v20];

      v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"kind" value:stringValue];
      [v8 addObject:v21];

      if (self->_itemTitle)
      {
        v22 = [MEMORY[0x1E696AF60] queryItemWithName:@"n" value:?];
        [v8 addObject:v22];
      }

      if (self->_providerName)
      {
        v23 = [MEMORY[0x1E696AF60] queryItemWithName:@"an" value:?];
        [v8 addObject:v23];
      }

      categoryName = self->_categoryName;
      if (!categoryName)
      {
        goto LABEL_10;
      }

      v13 = MEMORY[0x1E696AF60];
      v12 = @"gn";
    }

    v15 = [v13 queryItemWithName:v12 value:categoryName];
    [v8 addObject:v15];
LABEL_7:

LABEL_10:
    if ([v8 count])
    {
      [v6 setQueryItems:v8];
      v17 = [v6 URL];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_14;
  }

  v5 = [(SSVContentLink *)self _targetApplicationWithContentKind:contentKind];
  if (v5)
  {
    targetApplication = v5;
    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Must specify target app or content kind"];
  v17 = 0;
LABEL_14:

  return v17;
}

- (id)_stringForContentKind:(int64_t)kind
{
  if ((kind - 2) > 6)
  {
    return 0;
  }

  else
  {
    return off_1E84ACCB8[kind - 2];
  }
}

- (int64_t)_targetApplicationWithContentKind:(int64_t)kind
{
  if ((kind - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1D4B38D60[kind - 1];
  }
}

- (id)_URLSchemeWithApplication:(int64_t)application
{
  if ((application - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E84ACCF0[application - 1];
  }
}

@end