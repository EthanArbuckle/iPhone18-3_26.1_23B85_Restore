@interface PLPillContentItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isLikePillContentItem:(id)a3;
- (NSAttributedString)attributedText;
- (NSString)text;
- (PLPillContentItem)itemWithAttributedText:(id)a3;
- (PLPillContentItem)itemWithAttributedText:(id)a3 style:(unint64_t)a4;
- (PLPillContentItem)itemWithAttributedText:(id)a3 style:(unint64_t)a4 accessoryView:(id)a5;
- (PLPillContentItem)itemWithStyle:(unint64_t)a3;
- (PLPillContentItem)itemWithText:(id)a3;
- (PLPillContentItem)itemWithText:(id)a3 style:(unint64_t)a4;
- (PLPillContentItem)itemWithText:(id)a3 style:(unint64_t)a4 accessoryView:(id)a5;
- (PLPillContentWrapperView)wrapperView;
- (id)_initWithIdentifier:(id)a3 text:(id)a4 style:(unint64_t)a5 accessoryView:(id)a6 solo:(BOOL)a7;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)soloItem;
- (unint64_t)hash;
- (void)setWrapperView:(id)a3;
- (void)updateWithContentItem:(id)a3;
@end

@implementation PLPillContentItem

- (id)_initWithIdentifier:(id)a3 text:(id)a4 style:(unint64_t)a5 accessoryView:(id)a6 solo:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = PLPillContentItem;
  v15 = [(PLPillContentItem *)&v23 init];
  if (v15)
  {
    if (v12)
    {
      v16 = [v12 copy];
      identifier = v15->_identifier;
      v15->_identifier = v16;
    }

    else
    {
      identifier = objc_opt_new();
      v18 = [identifier UUIDString];
      v19 = v15->_identifier;
      v15->_identifier = v18;
    }

    v20 = [v13 copy];
    text = v15->_text;
    v15->_text = v20;

    v15->_style = a5;
    objc_storeStrong(&v15->_accessoryView, a6);
    v15->_solo = a7;
  }

  return v15;
}

- (NSString)text
{
  text = self->_text;
  v3 = objc_opt_class();
  v4 = text;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (NSAttributedString)attributedText
{
  text = self->_text;
  v3 = objc_opt_class();
  v4 = text;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_identifier];
  v5 = [v3 appendUnsignedInteger:self->_style];
  v6 = [v3 appendObject:self->_accessoryView];
  v7 = [v3 appendBool:self->_solo];
  v8 = [v3 hash];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(PLPillContentItem *)self isLikePillContentItem:v5])
    {
      v6 = [v5 text];
      if (BSEqualStrings() && (style = self->_style, style == [v5 style]))
      {
        accessoryView = self->_accessoryView;
        v9 = [v5 accessoryView];
        if (accessoryView == v9)
        {
          solo = self->_solo;
          v10 = solo == [v5 isSolo];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isLikePillContentItem:(id)a3
{
  identifier = self->_identifier;
  v4 = [a3 _identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:v4];

  return identifier;
}

- (PLPillContentItem)itemWithText:(id)a3
{
  v4 = a3;
  v5 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:v4 style:self->_style accessoryView:self->_accessoryView solo:0];

  return v5;
}

- (PLPillContentItem)itemWithAttributedText:(id)a3
{
  v4 = a3;
  v5 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:v4 style:self->_style accessoryView:self->_accessoryView solo:0];

  return v5;
}

- (PLPillContentItem)itemWithStyle:(unint64_t)a3
{
  v3 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:self->_text style:a3 accessoryView:self->_accessoryView solo:0];

  return v3;
}

- (PLPillContentItem)itemWithText:(id)a3 style:(unint64_t)a4
{
  v6 = a3;
  v7 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:v6 style:a4 accessoryView:self->_accessoryView solo:0];

  return v7;
}

- (PLPillContentItem)itemWithAttributedText:(id)a3 style:(unint64_t)a4
{
  v6 = a3;
  v7 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:v6 style:a4 accessoryView:self->_accessoryView solo:0];

  return v7;
}

- (PLPillContentItem)itemWithText:(id)a3 style:(unint64_t)a4 accessoryView:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:v9 style:a4 accessoryView:v8 solo:0];

  return v10;
}

- (PLPillContentItem)itemWithAttributedText:(id)a3 style:(unint64_t)a4 accessoryView:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:v9 style:a4 accessoryView:v8 solo:0];

  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PLPillContentItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__PLPillContentItem_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2784254E0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

id __59__PLPillContentItem_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 48) withName:@"identifier" skipIfEmpty:1];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 24) withName:@"text" skipIfEmpty:1];
  v2 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 32) withName:@"style"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"accessoryView" skipIfNil:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"solo" ifEqualTo:1];
}

- (PLPillContentWrapperView)wrapperView
{
  WeakRetained = objc_loadWeakRetained(&self->_wrapperView);

  return WeakRetained;
}

- (void)setWrapperView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_wrapperView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_wrapperView, obj);
    v5 = obj;
  }
}

- (id)soloItem
{
  v2 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:self->_text style:self->_style accessoryView:self->_accessoryView solo:1];

  return v2;
}

- (void)updateWithContentItem:(id)a3
{
  v4 = a3;
  v5 = [(PLPillContentItem *)self wrapperView];
  [v5 updateWithContentItem:v4];
}

@end