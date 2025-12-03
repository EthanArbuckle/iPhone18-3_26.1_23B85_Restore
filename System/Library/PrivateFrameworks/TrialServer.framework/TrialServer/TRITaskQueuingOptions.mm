@interface TRITaskQueuingOptions
+ (id)optionsWithDuplicateTaskResolution:(unint64_t)resolution;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOptions:(id)options;
- (TRITaskQueuingOptions)initWithCoder:(id)coder;
- (TRITaskQueuingOptions)initWithDuplicateTaskResolution:(unint64_t)resolution;
- (id)copyWithReplacementDuplicateTaskResolution:(unint64_t)resolution;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRITaskQueuingOptions

- (TRITaskQueuingOptions)initWithDuplicateTaskResolution:(unint64_t)resolution
{
  v5.receiver = self;
  v5.super_class = TRITaskQueuingOptions;
  result = [(TRITaskQueuingOptions *)&v5 init];
  if (result)
  {
    result->_duplicateTaskResolution = resolution;
  }

  return result;
}

+ (id)optionsWithDuplicateTaskResolution:(unint64_t)resolution
{
  v3 = [[self alloc] initWithDuplicateTaskResolution:resolution];

  return v3;
}

- (id)copyWithReplacementDuplicateTaskResolution:(unint64_t)resolution
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithDuplicateTaskResolution:resolution];
}

- (BOOL)isEqualToOptions:(id)options
{
  if (!options)
  {
    return 0;
  }

  duplicateTaskResolution = self->_duplicateTaskResolution;
  return duplicateTaskResolution == [options duplicateTaskResolution];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskQueuingOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (TRITaskQueuingOptions)initWithCoder:(id)coder
{
  v13[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"duplicateTaskResolution"];
  if (v5)
  {
    goto LABEL_2;
  }

  error = [coderCopy error];

  if (error)
  {
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  if (([coderCopy containsValueForKey:@"duplicateTaskResolution"] & 1) == 0)
  {
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Missing serialized value for TRITaskQueuingOptions.duplicateTaskResolution";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskQueuingOptionsOCNTErrorDomain" code:1 userInfo:v8];
    [coderCopy failWithError:v9];

    goto LABEL_6;
  }

LABEL_2:
  self = [(TRITaskQueuingOptions *)self initWithDuplicateTaskResolution:v5];
  selfCopy = self;
LABEL_7:

  v10 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:666 description:{@"Do not use NSKeyedArchiver to persist instances of TRITaskQueuingOptions to disk. If you want to persist this object to disk, create a protobuf schema."}];
  }

  [(TRITaskQueuingOptions *)self defaultEncodeWithCoder:coderCopy];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_duplicateTaskResolution];
  v5 = [v3 initWithFormat:@"<TRITaskQueuingOptions | duplicateTaskResolution:%@>", v4];

  return v5;
}

@end