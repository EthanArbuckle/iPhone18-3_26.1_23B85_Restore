@interface PLPillContentItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isLikePillContentItem:(id)item;
- (NSAttributedString)attributedText;
- (NSString)text;
- (PLPillContentItem)itemWithAttributedText:(id)text;
- (PLPillContentItem)itemWithAttributedText:(id)text style:(unint64_t)style;
- (PLPillContentItem)itemWithAttributedText:(id)text style:(unint64_t)style accessoryView:(id)view;
- (PLPillContentItem)itemWithStyle:(unint64_t)style;
- (PLPillContentItem)itemWithText:(id)text;
- (PLPillContentItem)itemWithText:(id)text style:(unint64_t)style;
- (PLPillContentItem)itemWithText:(id)text style:(unint64_t)style accessoryView:(id)view;
- (PLPillContentWrapperView)wrapperView;
- (id)_initWithIdentifier:(id)identifier text:(id)text style:(unint64_t)style accessoryView:(id)view solo:(BOOL)solo;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)soloItem;
- (unint64_t)hash;
- (void)setWrapperView:(id)view;
- (void)updateWithContentItem:(id)item;
@end

@implementation PLPillContentItem

- (id)_initWithIdentifier:(id)identifier text:(id)text style:(unint64_t)style accessoryView:(id)view solo:(BOOL)solo
{
  identifierCopy = identifier;
  textCopy = text;
  viewCopy = view;
  v23.receiver = self;
  v23.super_class = PLPillContentItem;
  v15 = [(PLPillContentItem *)&v23 init];
  if (v15)
  {
    if (identifierCopy)
    {
      v16 = [identifierCopy copy];
      identifier = v15->_identifier;
      v15->_identifier = v16;
    }

    else
    {
      identifier = objc_opt_new();
      uUIDString = [identifier UUIDString];
      v19 = v15->_identifier;
      v15->_identifier = uUIDString;
    }

    v20 = [textCopy copy];
    text = v15->_text;
    v15->_text = v20;

    v15->_style = style;
    objc_storeStrong(&v15->_accessoryView, view);
    v15->_solo = solo;
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_identifier];
  v5 = [builder appendUnsignedInteger:self->_style];
  v6 = [builder appendObject:self->_accessoryView];
  v7 = [builder appendBool:self->_solo];
  v8 = [builder hash];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([(PLPillContentItem *)self isLikePillContentItem:v5])
    {
      text = [v5 text];
      if (BSEqualStrings() && (style = self->_style, style == [v5 style]))
      {
        accessoryView = self->_accessoryView;
        accessoryView = [v5 accessoryView];
        if (accessoryView == accessoryView)
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

- (BOOL)isLikePillContentItem:(id)item
{
  identifier = self->_identifier;
  _identifier = [item _identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:_identifier];

  return identifier;
}

- (PLPillContentItem)itemWithText:(id)text
{
  textCopy = text;
  v5 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:textCopy style:self->_style accessoryView:self->_accessoryView solo:0];

  return v5;
}

- (PLPillContentItem)itemWithAttributedText:(id)text
{
  textCopy = text;
  v5 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:textCopy style:self->_style accessoryView:self->_accessoryView solo:0];

  return v5;
}

- (PLPillContentItem)itemWithStyle:(unint64_t)style
{
  v3 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:self->_text style:style accessoryView:self->_accessoryView solo:0];

  return v3;
}

- (PLPillContentItem)itemWithText:(id)text style:(unint64_t)style
{
  textCopy = text;
  v7 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:textCopy style:style accessoryView:self->_accessoryView solo:0];

  return v7;
}

- (PLPillContentItem)itemWithAttributedText:(id)text style:(unint64_t)style
{
  textCopy = text;
  v7 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:textCopy style:style accessoryView:self->_accessoryView solo:0];

  return v7;
}

- (PLPillContentItem)itemWithText:(id)text style:(unint64_t)style accessoryView:(id)view
{
  viewCopy = view;
  textCopy = text;
  v10 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:textCopy style:style accessoryView:viewCopy solo:0];

  return v10;
}

- (PLPillContentItem)itemWithAttributedText:(id)text style:(unint64_t)style accessoryView:(id)view
{
  viewCopy = view;
  textCopy = text;
  v10 = [[PLPillContentItem alloc] _initWithIdentifier:self->_identifier text:textCopy style:style accessoryView:viewCopy solo:0];

  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PLPillContentItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__PLPillContentItem_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2784254E0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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

- (void)setWrapperView:(id)view
{
  obj = view;
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

- (void)updateWithContentItem:(id)item
{
  itemCopy = item;
  wrapperView = [(PLPillContentItem *)self wrapperView];
  [wrapperView updateWithContentItem:itemCopy];
}

@end