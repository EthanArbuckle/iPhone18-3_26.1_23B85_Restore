@interface CNVCardSelectorMap
- (CNVCardSelectorMap)init;
- (SEL)selectorForString:(id)a3;
- (void)setSelector:(SEL)a3 forString:(id)a4;
@end

@implementation CNVCardSelectorMap

- (CNVCardSelectorMap)init
{
  v9.receiver = self;
  v9.super_class = CNVCardSelectorMap;
  v2 = [(CNVCardSelectorMap *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    strings = v2->_strings;
    v2->_strings = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selectors = v2->_selectors;
    v2->_selectors = v5;

    v7 = v2;
  }

  return v2;
}

- (void)setSelector:(SEL)a3 forString:(id)a4
{
  strings = self->_strings;
  v7 = a4;
  v8 = [(NSMutableArray *)strings indexOfObject:v7 inSortedRange:0 options:[(NSMutableArray *)strings count] usingComparator:1024, &__block_literal_global_0];
  [(NSMutableArray *)self->_strings insertObject:v7 atIndex:v8];

  selectors = self->_selectors;
  v10 = [MEMORY[0x277CCAE60] valueWithPointer:a3];
  [(NSMutableArray *)selectors insertObject:v10 atIndex:v8];
}

- (SEL)selectorForString:(id)a3
{
  strings = self->_strings;
  v5 = a3;
  v6 = [(NSMutableArray *)strings indexOfObject:v5 inSortedRange:0 options:[(NSMutableArray *)strings count] usingComparator:256, &__block_literal_global_0];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(NSMutableArray *)self->_selectors objectAtIndex:v6];
  v9 = [v8 pointerValue];

  return v9;
}

@end