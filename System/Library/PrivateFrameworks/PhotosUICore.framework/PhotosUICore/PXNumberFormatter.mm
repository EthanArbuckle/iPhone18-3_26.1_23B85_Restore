@interface PXNumberFormatter
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6;
@end

@implementation PXNumberFormatter

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6
{
  v9.receiver = self;
  v9.super_class = PXNumberFormatter;
  v7 = [(PXNumberFormatter *)&v9 getObjectValue:a3 forString:a4 range:a5 error:a6];
  if (a3 && v7 && !*a3)
  {
    *a3 = &unk_1F190AD98;
  }

  return v7;
}

@end