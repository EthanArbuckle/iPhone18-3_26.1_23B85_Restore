@interface PXLabeledValue
+ (PXLabeledValue)separatorLabeledValue;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLabeledValue:(id)value;
- (PXLabeledValue)init;
- (PXLabeledValue)initWithValue:(id)value localizedLabel:(id)label;
- (PXLabeledValue)labeledValueWithLocalizedBadgeLabel:(id)label;
- (id)_initSeparator;
@end

@implementation PXLabeledValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXLabeledValue *)self isEqualToLabeledValue:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToLabeledValue:(id)value
{
  valueCopy = value;
  value = [valueCopy value];
  value = self->_value;
  if (value | value)
  {
    if (value == value)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(PXLabeledValueType *)value isEqual:value];
    }
  }

  else
  {
    localizedLabel = self->_localizedLabel;
    localizedLabel = [valueCopy localizedLabel];
    if (localizedLabel == localizedLabel || [(NSString *)localizedLabel isEqual:localizedLabel])
    {
      localizedBadgeLabel = self->_localizedBadgeLabel;
      localizedBadgeLabel = [valueCopy localizedBadgeLabel];
      if (localizedBadgeLabel == localizedBadgeLabel)
      {
        v7 = 1;
      }

      else
      {
        v7 = [(NSString *)localizedBadgeLabel isEqual:localizedBadgeLabel];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PXLabeledValue)labeledValueWithLocalizedBadgeLabel:(id)label
{
  labelCopy = label;
  v5 = [PXLabeledValue alloc];
  value = [(PXLabeledValue *)self value];
  localizedLabel = [(PXLabeledValue *)self localizedLabel];
  v8 = [(PXLabeledValue *)v5 initWithValue:value localizedLabel:localizedLabel];

  v9 = [labelCopy copy];
  localizedBadgeLabel = v8->_localizedBadgeLabel;
  v8->_localizedBadgeLabel = v9;

  return v8;
}

- (PXLabeledValue)initWithValue:(id)value localizedLabel:(id)label
{
  valueCopy = value;
  labelCopy = label;
  if (!labelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLabeledValue.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"localizedLabel"}];
  }

  v14.receiver = self;
  v14.super_class = PXLabeledValue;
  v10 = [(PXLabeledValue *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, value);
    objc_storeStrong(&v11->_localizedLabel, label);
    v11->_separator = 0;
  }

  return v11;
}

- (id)_initSeparator
{
  v7.receiver = self;
  v7.super_class = PXLabeledValue;
  v2 = [(PXLabeledValue *)&v7 init];
  v3 = v2;
  if (v2)
  {
    value = v2->_value;
    v2->_value = 0;

    localizedLabel = v3->_localizedLabel;
    v3->_localizedLabel = @"-";

    v3->_separator = 1;
  }

  return v3;
}

- (PXLabeledValue)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLabeledValue.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXLabeledValue init]"}];

  abort();
}

+ (PXLabeledValue)separatorLabeledValue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXLabeledValue_separatorLabeledValue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (separatorLabeledValue_predicate != -1)
  {
    dispatch_once(&separatorLabeledValue_predicate, block);
  }

  v2 = separatorLabeledValue__separatorLabeledValue;

  return v2;
}

void __39__PXLabeledValue_separatorLabeledValue__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initSeparator];
  v2 = separatorLabeledValue__separatorLabeledValue;
  separatorLabeledValue__separatorLabeledValue = v1;
}

@end