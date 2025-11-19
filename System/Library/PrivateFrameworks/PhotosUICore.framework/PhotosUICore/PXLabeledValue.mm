@interface PXLabeledValue
+ (PXLabeledValue)separatorLabeledValue;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLabeledValue:(id)a3;
- (PXLabeledValue)init;
- (PXLabeledValue)initWithValue:(id)a3 localizedLabel:(id)a4;
- (PXLabeledValue)labeledValueWithLocalizedBadgeLabel:(id)a3;
- (id)_initSeparator;
@end

@implementation PXLabeledValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXLabeledValue *)self isEqualToLabeledValue:v4];
  }

  return v5;
}

- (BOOL)isEqualToLabeledValue:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  value = self->_value;
  if (value | v5)
  {
    if (value == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(PXLabeledValueType *)value isEqual:v5];
    }
  }

  else
  {
    localizedLabel = self->_localizedLabel;
    v9 = [v4 localizedLabel];
    if (localizedLabel == v9 || [(NSString *)localizedLabel isEqual:v9])
    {
      localizedBadgeLabel = self->_localizedBadgeLabel;
      v11 = [v4 localizedBadgeLabel];
      if (localizedBadgeLabel == v11)
      {
        v7 = 1;
      }

      else
      {
        v7 = [(NSString *)localizedBadgeLabel isEqual:v11];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PXLabeledValue)labeledValueWithLocalizedBadgeLabel:(id)a3
{
  v4 = a3;
  v5 = [PXLabeledValue alloc];
  v6 = [(PXLabeledValue *)self value];
  v7 = [(PXLabeledValue *)self localizedLabel];
  v8 = [(PXLabeledValue *)v5 initWithValue:v6 localizedLabel:v7];

  v9 = [v4 copy];
  localizedBadgeLabel = v8->_localizedBadgeLabel;
  v8->_localizedBadgeLabel = v9;

  return v8;
}

- (PXLabeledValue)initWithValue:(id)a3 localizedLabel:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXLabeledValue.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"localizedLabel"}];
  }

  v14.receiver = self;
  v14.super_class = PXLabeledValue;
  v10 = [(PXLabeledValue *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, a3);
    objc_storeStrong(&v11->_localizedLabel, a4);
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXLabeledValue.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXLabeledValue init]"}];

  abort();
}

+ (PXLabeledValue)separatorLabeledValue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXLabeledValue_separatorLabeledValue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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