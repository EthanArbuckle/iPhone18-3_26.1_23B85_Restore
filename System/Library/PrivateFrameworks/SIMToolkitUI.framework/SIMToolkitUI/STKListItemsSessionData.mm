@interface STKListItemsSessionData
- (STKListItemsSessionData)initWithText:(id)text simLabel:(id)label listItems:(id)items;
- (STKListItemsSessionData)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation STKListItemsSessionData

- (STKListItemsSessionData)initWithText:(id)text simLabel:(id)label listItems:(id)items
{
  itemsCopy = items;
  v13.receiver = self;
  v13.super_class = STKListItemsSessionData;
  v10 = [(STKTextSessionData *)&v13 initWithText:text simLabel:label];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_listItems, items);
  }

  return v11;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = STKListItemsSessionData;
  dictionaryCopy = dictionary;
  [(STKTextSessionData *)&v6 encodeWithXPCDictionary:dictionaryCopy];
  listItems = self->_listItems;
  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
}

- (STKListItemsSessionData)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = STKListItemsSessionData;
  v5 = [(STKTextSessionData *)&v11 initWithXPCDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
    listItems = v5->_listItems;
    v5->_listItems = v6;

    if (!v5->_listItems)
    {
      array = [MEMORY[0x277CBEA60] array];
      v9 = v5->_listItems;
      v5->_listItems = array;
    }
  }

  return v5;
}

@end