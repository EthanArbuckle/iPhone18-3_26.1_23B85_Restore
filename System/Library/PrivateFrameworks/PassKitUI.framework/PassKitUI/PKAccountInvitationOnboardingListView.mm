@interface PKAccountInvitationOnboardingListView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountInvitationOnboardingListView)initWithConfigurations:(id)configurations;
- (void)layoutSubviews;
@end

@implementation PKAccountInvitationOnboardingListView

- (PKAccountInvitationOnboardingListView)initWithConfigurations:(id)configurations
{
  v23 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  v21.receiver = self;
  v21.super_class = PKAccountInvitationOnboardingListView;
  v5 = [(PKAccountInvitationOnboardingListView *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = configurationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = objc_alloc(MEMORY[0x1E69DCC30]);
          v14 = [v13 initWithConfiguration:{v12, v17}];
          [(PKAccountInvitationOnboardingListView *)v5 addSubview:v14];
          [(NSArray *)v6 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    listContentViews = v5->_listContentViews;
    v5->_listContentViews = v6;
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_listContentViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        [v12 sizeThatFits:{width, height, v17}];
        v10 = v10 + v13;
        firstObject = [(NSArray *)self->_listContentViews firstObject];

        if (v12 != firstObject)
        {
          v10 = v10 + 10.0;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v15 = width;
  v16 = v10;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKAccountInvitationOnboardingListView;
  [(PKAccountInvitationOnboardingListView *)&v21 layoutSubviews];
  [(PKAccountInvitationOnboardingListView *)self bounds];
  remainder.origin.x = v3;
  remainder.origin.y = v4;
  remainder.size.width = v5;
  remainder.size.height = v6;
  memset(&slice, 0, sizeof(slice));
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_listContentViews;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 sizeThatFits:{remainder.size.width, remainder.size.height, v15}];
        CGRectDivide(remainder, &slice, &remainder, v13, CGRectMinYEdge);
        [v12 setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
        lastObject = [(NSArray *)self->_listContentViews lastObject];

        if (v12 != lastObject)
        {
          CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v9);
  }
}

@end