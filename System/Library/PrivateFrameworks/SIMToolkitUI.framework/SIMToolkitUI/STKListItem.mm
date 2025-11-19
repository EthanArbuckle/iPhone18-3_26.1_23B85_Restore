@interface STKListItem
- (STKListItem)initWithText:(id)a3 selected:(BOOL)a4;
- (STKListItem)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation STKListItem

- (STKListItem)initWithText:(id)a3 selected:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = STKListItem;
  v7 = [(STKListItem *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_selected = a4;
  }

  return v7;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  text = self->_text;
  xdict = a3;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "_selected", self->_selected);
}

- (STKListItem)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STKListItem;
  v5 = [(STKListItem *)&v9 init];
  if (v5)
  {
    v6 = BSDeserializeStringFromXPCDictionaryWithKey();
    text = v5->_text;
    v5->_text = v6;

    v5->_selected = xpc_dictionary_get_BOOL(v4, "_selected");
  }

  return v5;
}

@end