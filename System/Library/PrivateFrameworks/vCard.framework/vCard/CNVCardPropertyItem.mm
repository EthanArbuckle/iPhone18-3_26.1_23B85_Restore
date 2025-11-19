@interface CNVCardPropertyItem
+ (id)itemWithValue:(id)a3 label:(id)a4 identifier:(id)a5;
- (CNVCardPropertyItem)initWithValue:(id)a3 label:(id)a4 identifier:(id)a5;
- (id)description;
@end

@implementation CNVCardPropertyItem

+ (id)itemWithValue:(id)a3 label:(id)a4 identifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithValue:v10 label:v9 identifier:v8];

  return v11;
}

- (CNVCardPropertyItem)initWithValue:(id)a3 label:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNVCardPropertyItem *)self init];
  if (v11)
  {
    v12 = [v8 copy];
    value = v11->_value;
    v11->_value = v12;

    v14 = [v9 copy];
    label = v11->_label;
    v11->_label = v14;

    v16 = [v10 copy];
    identifier = v11->_identifier;
    v11->_identifier = v16;

    v18 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"value" object:self->_value];
  v5 = [v3 appendName:@"label" object:self->_label];
  v6 = [v3 build];

  return v6;
}

@end