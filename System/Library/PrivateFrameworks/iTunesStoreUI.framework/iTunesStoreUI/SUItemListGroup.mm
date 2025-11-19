@interface SUItemListGroup
- (NSString)indexBarTitle;
- (id)description;
- (void)dealloc;
@end

@implementation SUItemListGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUItemListGroup;
  [(SUItemListGroup *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SUItemListGroup;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@, %lu)", -[SUItemListGroup description](&v3, sel_description), -[SUItem title](self->_separatorItem, "title"), -[NSMutableArray count](self->_items, "count")];
}

- (NSString)indexBarTitle
{
  result = [(SUItem *)self->_separatorItem stringValueForProperty:@"index-title"];
  if (!result)
  {
    separatorItem = self->_separatorItem;

    return [(SUItem *)separatorItem title];
  }

  return result;
}

@end