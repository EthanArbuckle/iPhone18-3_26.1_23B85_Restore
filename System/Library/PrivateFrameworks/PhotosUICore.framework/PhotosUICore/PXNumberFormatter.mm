@interface PXNumberFormatter
- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error;
@end

@implementation PXNumberFormatter

- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error
{
  v9.receiver = self;
  v9.super_class = PXNumberFormatter;
  v7 = [(PXNumberFormatter *)&v9 getObjectValue:value forString:string range:range error:error];
  if (value && v7 && !*value)
  {
    *value = &unk_1F190AD98;
  }

  return v7;
}

@end