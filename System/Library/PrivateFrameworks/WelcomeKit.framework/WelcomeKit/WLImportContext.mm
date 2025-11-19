@interface WLImportContext
- (WLImportContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLImportContext

- (WLImportContext)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WLImportContext;
  v5 = [(WLImportContext *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"import_count"];
    v5->_importCount = [v6 unsignedLongLongValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"import_error_count"];
    v5->_importErrorCount = [v7 unsignedLongLongValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    v5->_size = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  importCount = self->_importCount;
  v6 = a3;
  v7 = [v4 numberWithUnsignedLongLong:importCount];
  [v6 encodeObject:v7 forKey:@"import_count"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_importErrorCount];
  [v6 encodeObject:v8 forKey:@"import_error_count"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_size];
  [v6 encodeObject:v9 forKey:@"size"];
}

@end