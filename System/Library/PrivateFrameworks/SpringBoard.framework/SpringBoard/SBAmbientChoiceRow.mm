@interface SBAmbientChoiceRow
- (void)setPossibleChoicesFromDictionary:(id)dictionary order:(id)order;
@end

@implementation SBAmbientChoiceRow

- (void)setPossibleChoicesFromDictionary:(id)dictionary order:(id)order
{
  dictionaryCopy = dictionary;
  orderCopy = order;
  v8 = orderCopy;
  if (orderCopy)
  {
    allKeys = orderCopy;
  }

  else
  {
    allKeys = [dictionaryCopy allKeys];
  }

  v10 = allKeys;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SBAmbientChoiceRow_setPossibleChoicesFromDictionary_order___block_invoke;
  v13[3] = &unk_2783B5670;
  v14 = dictionaryCopy;
  v11 = dictionaryCopy;
  v12 = [v10 bs_compactMap:v13];
  [(SBAmbientChoiceRow *)self setPossibleValues:v10];
  [(SBAmbientChoiceRow *)self setPossibleTitles:v12];
}

@end