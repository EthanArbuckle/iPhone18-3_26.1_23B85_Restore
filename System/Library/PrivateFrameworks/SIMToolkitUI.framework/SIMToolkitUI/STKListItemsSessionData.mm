@interface STKListItemsSessionData
- (STKListItemsSessionData)initWithText:(id)a3 simLabel:(id)a4 listItems:(id)a5;
- (STKListItemsSessionData)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation STKListItemsSessionData

- (STKListItemsSessionData)initWithText:(id)a3 simLabel:(id)a4 listItems:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = STKListItemsSessionData;
  v10 = [(STKTextSessionData *)&v13 initWithText:a3 simLabel:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_listItems, a5);
  }

  return v11;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = STKListItemsSessionData;
  v4 = a3;
  [(STKTextSessionData *)&v6 encodeWithXPCDictionary:v4];
  listItems = self->_listItems;
  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
}

- (STKListItemsSessionData)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STKListItemsSessionData;
  v5 = [(STKTextSessionData *)&v11 initWithXPCDictionary:v4];
  if (v5)
  {
    v6 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
    listItems = v5->_listItems;
    v5->_listItems = v6;

    if (!v5->_listItems)
    {
      v8 = [MEMORY[0x277CBEA60] array];
      v9 = v5->_listItems;
      v5->_listItems = v8;
    }
  }

  return v5;
}

@end