@interface CNVCardLine
+ (id)lineWithName:(id)name value:(id)value itemSeparator:(id)separator;
- (BOOL)canSerializeWithStrategy:(id)strategy;
- (CNVCardLine)initWithName:(id)name value:(id)value itemSeparator:(id)separator;
- (id)makeGroupingNameWithCounter:(int64_t *)counter;
- (void)addGroupedLine:(id)line withCounter:(int64_t *)counter;
- (void)addParameterWithName:(id)name value:(id)value;
- (void)insertParameterWithName:(id)name value:(id)value atIndex:(unint64_t)index;
- (void)serializeValueWithStrategy:(id)strategy;
@end

@implementation CNVCardLine

+ (id)lineWithName:(id)name value:(id)value itemSeparator:(id)separator
{
  separatorCopy = separator;
  valueCopy = value;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy value:valueCopy itemSeparator:separatorCopy];

  return v11;
}

- (CNVCardLine)initWithName:(id)name value:(id)value itemSeparator:(id)separator
{
  nameCopy = name;
  valueCopy = value;
  separatorCopy = separator;
  v11 = [(CNVCardLine *)self init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_value, value);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    parameters = v11->_parameters;
    v11->_parameters = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    groupedLines = v11->_groupedLines;
    v11->_groupedLines = v16;

    v18 = [separatorCopy copy];
    itemSeparator = v11->_itemSeparator;
    v11->_itemSeparator = v18;

    v20 = v11;
  }

  return v11;
}

- (void)addParameterWithName:(id)name value:(id)value
{
  v5 = [CNVCardParameter parameterWithName:name value:value];
  [(NSMutableArray *)self->_parameters _cn_addNonNilObject:v5];
}

- (void)insertParameterWithName:(id)name value:(id)value atIndex:(unint64_t)index
{
  v7 = [CNVCardParameter parameterWithName:name value:value];
  [(NSMutableArray *)self->_parameters _cn_insertNonNilObject:v7 atIndex:index];
}

- (void)addGroupedLine:(id)line withCounter:(int64_t *)counter
{
  lineCopy = line;
  if (lineCopy)
  {
    v9 = lineCopy;
    if (!self->_grouping)
    {
      v7 = [(CNVCardLine *)self makeGroupingNameWithCounter:counter];
      grouping = self->_grouping;
      self->_grouping = v7;
    }

    [(NSMutableArray *)self->_groupedLines addObject:v9];
  }

  MEMORY[0x2821F96F8]();
}

- (id)makeGroupingNameWithCounter:(int64_t *)counter
{
  v3 = *counter + 1;
  *counter = v3;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"item%ld", v3];
}

- (BOOL)canSerializeWithStrategy:(id)strategy
{
  strategyCopy = strategy;
  value = self->_value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = self->_value;
  if (isKindOfClass)
  {
    v8 = [strategyCopy canSerializeString:self->_value];
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    v10 = self->_value;
    if (v9)
    {
      v8 = [strategyCopy canSerializeArray:self->_value];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_8;
      }

      v8 = [strategyCopy canSerializeData:self->_value];
    }
  }

  v11 = v8;
LABEL_8:

  return v11;
}

- (void)serializeValueWithStrategy:(id)strategy
{
  strategyCopy = strategy;
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
    [strategyCopy serializeString:v6];
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
      itemSeparator = [(CNVCardLine *)self itemSeparator];
      [strategyCopy serializeArray:v9 withItemSeparator:itemSeparator];
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

      itemSeparator = v12;

      if (itemSeparator)
      {
        [strategyCopy serializeData:itemSeparator];
      }
    }
  }
}

@end