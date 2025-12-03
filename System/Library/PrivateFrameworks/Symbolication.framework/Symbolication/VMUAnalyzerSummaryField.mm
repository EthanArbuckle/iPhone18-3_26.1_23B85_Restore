@interface VMUAnalyzerSummaryField
- (NSString)formattedValue;
- (VMUAnalyzerSummaryField)initWithKey:(id)key numericalValue:(unint64_t)value objectValue:(id)objectValue fieldType:(int)type;
@end

@implementation VMUAnalyzerSummaryField

- (VMUAnalyzerSummaryField)initWithKey:(id)key numericalValue:(unint64_t)value objectValue:(id)objectValue fieldType:(int)type
{
  keyCopy = key;
  objectValueCopy = objectValue;
  v13 = [(VMUAnalyzerSummaryField *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_key, key);
    v14->_numericalValue = value;
    objc_storeStrong(&v14->_objectValue, objectValue);
    v14->_fieldType = type;
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