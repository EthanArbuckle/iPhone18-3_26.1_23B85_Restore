@interface VMUAnalyzerSummaryField
- (NSString)formattedValue;
- (VMUAnalyzerSummaryField)initWithKey:(id)a3 numericalValue:(unint64_t)a4 objectValue:(id)a5 fieldType:(int)a6;
@end

@implementation VMUAnalyzerSummaryField

- (VMUAnalyzerSummaryField)initWithKey:(id)a3 numericalValue:(unint64_t)a4 objectValue:(id)a5 fieldType:(int)a6
{
  v11 = a3;
  v12 = a5;
  v13 = [(VMUAnalyzerSummaryField *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_key, a3);
    v14->_numericalValue = a4;
    objc_storeStrong(&v14->_objectValue, a5);
    v14->_fieldType = a6;
  }

  return v14;
}

- (NSString)formattedValue
{
  if (self->_fieldType == 2)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:VMUMemorySizeString(self->_numericalValue)];
  }

  else
  {
    if (self->_objectValue)
    {
      [self->_objectValue description];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", self->_numericalValue];
    }
    v2 = ;
  }

  return v2;
}

@end