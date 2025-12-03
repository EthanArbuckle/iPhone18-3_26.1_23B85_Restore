@interface PKTextRangeHyperlink
+ (id)hyperlinkSourcesFromApplyFooter:(id)footer linkTapped:(id)tapped;
- (BOOL)isEqual:(id)equal;
- (PKTextRangeHyperlink)initWithLinkRange:(_NSRange)range action:(id)action;
- (PKTextRangeHyperlink)initWithLinkText:(id)text action:(id)action;
- (PKTextRangeHyperlink)initWithLinkText:(id)text linkRange:(_NSRange)range action:(id)action;
- (_NSRange)linkRange;
- (unint64_t)hash;
@end

@implementation PKTextRangeHyperlink

+ (id)hyperlinkSourcesFromApplyFooter:(id)footer linkTapped:(id)tapped
{
  v33 = *MEMORY[0x1E69E9840];
  footerCopy = footer;
  tappedCopy = tapped;
  if (footerCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = footerCopy;
    obj = [footerCopy links];
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          linkText = [v11 linkText];
          [v11 linkRange];
          if ([linkText length] | v13)
          {
            v14 = [PKTextRangeHyperlink alloc];
            linkText2 = [v11 linkText];
            linkRange = [v11 linkRange];
            v18 = v17;
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __67__PKTextRangeHyperlink_hyperlinkSourcesFromApplyFooter_linkTapped___block_invoke;
            v26[3] = &unk_1E8010E20;
            v19 = tappedCopy;
            v26[4] = v11;
            v27 = v19;
            v20 = [(PKTextRangeHyperlink *)v14 initWithLinkText:linkText2 linkRange:linkRange action:v18, v26];

            [v6 safelyAddObject:v20];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    if ([v6 count])
    {
      v21 = [v6 copy];
    }

    else
    {
      v21 = 0;
    }

    footerCopy = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __67__PKTextRangeHyperlink_hyperlinkSourcesFromApplyFooter_linkTapped___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (PKTextRangeHyperlink)initWithLinkText:(id)text action:(id)action
{
  textCopy = text;
  actionCopy = action;
  if ([textCopy length])
  {
    v14.receiver = self;
    v14.super_class = PKTextRangeHyperlink;
    v9 = [(PKTextRangeHyperlink *)&v14 init];
    if (v9)
    {
      v10 = [actionCopy copy];
      action = v9->_action;
      v9->_action = v10;

      objc_storeStrong(&v9->_linkText, text);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKTextRangeHyperlink)initWithLinkRange:(_NSRange)range action:(id)action
{
  length = range.length;
  location = range.location;
  actionCopy = action;
  if (length)
  {
    v12.receiver = self;
    v12.super_class = PKTextRangeHyperlink;
    v8 = [(PKTextRangeHyperlink *)&v12 init];
    if (v8)
    {
      v9 = [actionCopy copy];
      action = v8->_action;
      v8->_action = v9;

      v8->_linkRange.location = location;
      v8->_linkRange.length = length;
    }

    self = v8;
    length = self;
  }

  return length;
}

- (PKTextRangeHyperlink)initWithLinkText:(id)text linkRange:(_NSRange)range action:(id)action
{
  length = range.length;
  location = range.location;
  textCopy = text;
  actionCopy = action;
  if ([textCopy length])
  {
    actionCopy = [(PKTextRangeHyperlink *)self initWithLinkText:textCopy action:actionCopy];
  }

  else
  {
    actionCopy = [(PKTextRangeHyperlink *)self initWithLinkRange:location action:length, actionCopy];
  }

  v12 = actionCopy;

  v13 = v12;
  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = _Block_copy(self->_action);
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_linkText];
  PKCombinedHash();
  PKIntegerHash();
  v5 = PKIntegerHash();

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = _Block_copy(self->_action);
        v8 = _Block_copy(v6[2]);
        if (PKEqualObjects())
        {
          v9 = v6[1];
          v10 = self->_linkText;
          v11 = v9;
          v12 = v11;
          if (v10 == v11)
          {

            goto LABEL_13;
          }

          if (v10 && v11)
          {
            v13 = [(NSString *)v10 isEqualToString:v11];

            if (!v13)
            {
              goto LABEL_20;
            }

LABEL_13:
            v14 = self->_linkRange.location == v6[3] && self->_linkRange.length == v6[4];
            goto LABEL_21;
          }
        }

LABEL_20:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (_NSRange)linkRange
{
  length = self->_linkRange.length;
  location = self->_linkRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end