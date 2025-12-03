@interface CACSpokenCommandNounSpecifier
- (CACSpokenCommandNounSpecifier)initWithType:(unsigned int)type item:(id)item;
- (CACSpokenCommandNounSpecifier)initWithType:(unsigned int)type items:(id)items;
@end

@implementation CACSpokenCommandNounSpecifier

- (CACSpokenCommandNounSpecifier)initWithType:(unsigned int)type items:(id)items
{
  itemsCopy = items;
  v11.receiver = self;
  v11.super_class = CACSpokenCommandNounSpecifier;
  v8 = [(CACSpokenCommandNounSpecifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_items, items);
  }

  return v9;
}

- (CACSpokenCommandNounSpecifier)initWithType:(unsigned int)type item:(id)item
{
  v4 = *&type;
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:item];
  v7 = [(CACSpokenCommandNounSpecifier *)self initWithType:v4 items:v6];

  return v7;
}

@end