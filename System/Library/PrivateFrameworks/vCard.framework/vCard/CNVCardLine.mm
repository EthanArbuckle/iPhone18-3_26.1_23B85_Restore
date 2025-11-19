@interface CNVCardLine
+ (id)lineWithName:(id)a3 value:(id)a4 itemSeparator:(id)a5;
- (BOOL)canSerializeWithStrategy:(id)a3;
- (CNVCardLine)initWithName:(id)a3 value:(id)a4 itemSeparator:(id)a5;
- (id)makeGroupingNameWithCounter:(int64_t *)a3;
- (void)addGroupedLine:(id)a3 withCounter:(int64_t *)a4;
- (void)addParameterWithName:(id)a3 value:(id)a4;
- (void)insertParameterWithName:(id)a3 value:(id)a4 atIndex:(unint64_t)a5;
- (void)serializeValueWithStrategy:(id)a3;
@end

@implementation CNVCardLine

+ (id)lineWithName:(id)a3 value:(id)a4 itemSeparator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 value:v9 itemSeparator:v8];

  return v11;
}

- (CNVCardLine)initWithName:(id)a3 value:(id)a4 itemSeparator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNVCardLine *)self init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_value, a4);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    parameters = v11->_parameters;
    v11->_parameters = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    groupedLines = v11->_groupedLines;
    v11->_groupedLines = v16;

    v18 = [v10 copy];
    itemSeparator = v11->_itemSeparator;
    v11->_itemSeparator = v18;

    v20 = v11;
  }

  return v11;
}

- (void)addParameterWithName:(id)a3 value:(id)a4
{
  v5 = [CNVCardParameter parameterWithName:a3 value:a4];
  [(NSMutableArray *)self->_parameters _cn_addNonNilObject:v5];
}

- (void)insertParameterWithName:(id)a3 value:(id)a4 atIndex:(unint64_t)a5
{
  v7 = [CNVCardParameter parameterWithName:a3 value:a4];
  [(NSMutableArray *)self->_parameters _cn_insertNonNilObject:v7 atIndex:a5];
}

- (void)addGroupedLine:(id)a3 withCounter:(int64_t *)a4
{
  v6 = a3;
  if (v6)
  {
    v9 = v6;
    if (!self->_grouping)
    {
      v7 = [(CNVCardLine *)self makeGroupingNameWithCounter:a4];
      grouping = self->_grouping;
      self->_grouping = v7;
    }

    [(NSMutableArray *)self->_groupedLines addObject:v9];
  }

  MEMORY[0x2821F96F8]();
}

- (id)makeGroupingNameWithCounter:(int64_t *)a3
{
  v3 = *a3 + 1;
  *a3 = v3;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"item%ld", v3];
}

- (BOOL)canSerializeWithStrategy:(id)a3
{
  v4 = a3;
  value = self->_value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = self->_value;
  if (isKindOfClass)
  {
    v8 = [v4 canSerializeString:self->_value];
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    v10 = self->_value;
    if (v9)
    {
      v8 = [v4 canSerializeArray:self->_value];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_8;
      }

      v8 = [v4 canSerializeData:self->_value];
    }
  }

  v11 = v8;
LABEL_8:

  return v11;
}

- (void)serializeValueWithStrategy:(id)a3
{
  v13 = a3;
  objc_opt_class();
  v4 = self->_value;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v13 serializeString:v6];
  }

  else
  {
    objc_opt_class();
    v7 = self->_value;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [(CNVCardLine *)self itemSeparator];
      [v13 serializeArray:v9 withItemSeparator:v10];
    }

    else
    {
      objc_opt_class();
      v11 = self->_value;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v10 = v12;

      if (v10)
      {
        [v13 serializeData:v10];
      }
    }
  }
}

@end