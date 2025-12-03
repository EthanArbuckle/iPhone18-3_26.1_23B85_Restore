@interface CNVCardSelectorMap
- (CNVCardSelectorMap)init;
- (SEL)selectorForString:(id)string;
- (void)setSelector:(SEL)selector forString:(id)string;
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

- (void)setSelector:(SEL)selector forString:(id)string
{
  strings = self->_strings;
  stringCopy = string;
  v8 = [(NSMutableArray *)strings indexOfObject:stringCopy inSortedRange:0 options:[(NSMutableArray *)strings count] usingComparator:1024, &__block_literal_global_0];
  [(NSMutableArray *)self->_strings insertObject:stringCopy atIndex:v8];

  selectors = self->_selectors;
  v10 = [MEMORY[0x277CCAE60] valueWithPointer:selector];
  [(NSMutableArray *)selectors insertObject:v10 atIndex:v8];
}

- (SEL)selectorForString:(id)string
{
  strings = self->_strings;
  stringCopy = string;
  v6 = [(NSMutableArray *)strings indexOfObject:stringCopy inSortedRange:0 options:[(NSMutableArray *)strings count] usingComparator:256, &__block_literal_global_0];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(NSMutableArray *)self->_selectors objectAtIndex:v6];
  pointerValue = [v8 pointerValue];

  return pointerValue;
}

@end