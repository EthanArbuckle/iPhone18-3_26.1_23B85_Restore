@interface STKListItem
- (STKListItem)initWithText:(id)text selected:(BOOL)selected;
- (STKListItem)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation STKListItem

- (STKListItem)initWithText:(id)text selected:(BOOL)selected
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = STKListItem;
  v7 = [(STKListItem *)&v11 init];
  if (v7)
  {
    v8 = [textCopy copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_selected = selected;
  }

  return v7;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  text = self->_text;
  xdict = dictionary;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "_selected", self->_selected);
}

- (STKListItem)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = STKListItem;
  v5 = [(STKListItem *)&v9 init];
  if (v5)
  {
    v6 = BSDeserializeStringFromXPCDictionaryWithKey();
    text = v5->_text;
    v5->_text = v6;

    v5->_selected = xpc_dictionary_get_BOOL(dictionaryCopy, "_selected");
  }

  return v5;
}

@end