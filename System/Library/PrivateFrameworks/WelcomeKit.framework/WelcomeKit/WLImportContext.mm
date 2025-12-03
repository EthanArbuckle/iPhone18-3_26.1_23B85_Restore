@interface WLImportContext
- (WLImportContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WLImportContext

- (WLImportContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WLImportContext;
  v5 = [(WLImportContext *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"import_count"];
    v5->_importCount = [v6 unsignedLongLongValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"import_error_count"];
    v5->_importErrorCount = [v7 unsignedLongLongValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    v5->_size = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  importCount = self->_importCount;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedLongLong:importCount];
  [coderCopy encodeObject:v7 forKey:@"import_count"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_importErrorCount];
  [coderCopy encodeObject:v8 forKey:@"import_error_count"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_size];
  [coderCopy encodeObject:v9 forKey:@"size"];
}

@end