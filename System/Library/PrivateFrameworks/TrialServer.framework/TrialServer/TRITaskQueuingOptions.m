@interface TRITaskQueuingOptions
+ (id)optionsWithDuplicateTaskResolution:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOptions:(id)a3;
- (TRITaskQueuingOptions)initWithCoder:(id)a3;
- (TRITaskQueuingOptions)initWithDuplicateTaskResolution:(unint64_t)a3;
- (id)copyWithReplacementDuplicateTaskResolution:(unint64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRITaskQueuingOptions

- (TRITaskQueuingOptions)initWithDuplicateTaskResolution:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TRITaskQueuingOptions;
  result = [(TRITaskQueuingOptions *)&v5 init];
  if (result)
  {
    result->_duplicateTaskResolution = a3;
  }

  return result;
}

+ (id)optionsWithDuplicateTaskResolution:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithDuplicateTaskResolution:a3];

  return v3;
}

- (id)copyWithReplacementDuplicateTaskResolution:(unint64_t)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithDuplicateTaskResolution:a3];
}

- (BOOL)isEqualToOptions:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  duplicateTaskResolution = self->_duplicateTaskResolution;
  return duplicateTaskResolution == [a3 duplicateTaskResolution];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskQueuingOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (TRITaskQueuingOptions)initWithCoder:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"duplicateTaskResolution"];
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = [v4 error];

  if (v7)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  if (([v4 containsValueForKey:@"duplicateTaskResolution"] & 1) == 0)
  {
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Missing serialized value for TRITaskQueuingOptions.duplicateTaskResolution";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskQueuingOptionsOCNTErrorDomain" code:1 userInfo:v8];
    [v4 failWithError:v9];

    goto LABEL_6;
  }

LABEL_2:
  self = [(TRITaskQueuingOptions *)self initWithDuplicateTaskResolution:v5];
  v6 = self;
LABEL_7:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:666 description:{@"Do not use NSKeyedArchiver to persist instances of TRITaskQueuingOptions to disk. If you want to persist this object to disk, create a protobuf schema."}];
  }

  [(TRITaskQueuingOptions *)self defaultEncodeWithCoder:v6];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_duplicateTaskResolution];
  v5 = [v3 initWithFormat:@"<TRITaskQueuingOptions | duplicateTaskResolution:%@>", v4];

  return v5;
}

@end