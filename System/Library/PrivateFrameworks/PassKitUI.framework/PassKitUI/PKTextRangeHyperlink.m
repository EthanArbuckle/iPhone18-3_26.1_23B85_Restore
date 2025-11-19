@interface PKTextRangeHyperlink
+ (id)hyperlinkSourcesFromApplyFooter:(id)a3 linkTapped:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PKTextRangeHyperlink)initWithLinkRange:(_NSRange)a3 action:(id)a4;
- (PKTextRangeHyperlink)initWithLinkText:(id)a3 action:(id)a4;
- (PKTextRangeHyperlink)initWithLinkText:(id)a3 linkRange:(_NSRange)a4 action:(id)a5;
- (_NSRange)linkRange;
- (unint64_t)hash;
@end

@implementation PKTextRangeHyperlink

+ (id)hyperlinkSourcesFromApplyFooter:(id)a3 linkTapped:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = a4;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v5;
    obj = [v5 links];
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
          v12 = [v11 linkText];
          [v11 linkRange];
          if ([v12 length] | v13)
          {
            v14 = [PKTextRangeHyperlink alloc];
            v15 = [v11 linkText];
            v16 = [v11 linkRange];
            v18 = v17;
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __67__PKTextRangeHyperlink_hyperlinkSourcesFromApplyFooter_linkTapped___block_invoke;
            v26[3] = &unk_1E8010E20;
            v19 = v24;
            v26[4] = v11;
            v27 = v19;
            v20 = [(PKTextRangeHyperlink *)v14 initWithLinkText:v15 linkRange:v16 action:v18, v26];

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

    v5 = v23;
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

- (PKTextRangeHyperlink)initWithLinkText:(id)a3 action:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 length])
  {
    v14.receiver = self;
    v14.super_class = PKTextRangeHyperlink;
    v9 = [(PKTextRangeHyperlink *)&v14 init];
    if (v9)
    {
      v10 = [v8 copy];
      action = v9->_action;
      v9->_action = v10;

      objc_storeStrong(&v9->_linkText, a3);
    }

    self = v9;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PKTextRangeHyperlink)initWithLinkRange:(_NSRange)a3 action:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (length)
  {
    v12.receiver = self;
    v12.super_class = PKTextRangeHyperlink;
    v8 = [(PKTextRangeHyperlink *)&v12 init];
    if (v8)
    {
      v9 = [v7 copy];
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

- (PKTextRangeHyperlink)initWithLinkText:(id)a3 linkRange:(_NSRange)a4 action:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if ([v9 length])
  {
    v11 = [(PKTextRangeHyperlink *)self initWithLinkText:v9 action:v10];
  }

  else
  {
    v11 = [(PKTextRangeHyperlink *)self initWithLinkRange:location action:length, v10];
  }

  v12 = v11;

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    if (v4)
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