@interface DDScannerResult(CRCodable)
+ (id)ddScannerResultWithCRCodableDataRepresentation:()CRCodable;
- (id)crCodableDataRepresentation;
@end

@implementation DDScannerResult(CRCodable)

- (id)crCodableDataRepresentation
{
  v3 = 0;
  v1 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v3];

  return v1;
}

+ (id)ddScannerResultWithCRCodableDataRepresentation:()CRCodable
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithObject:objc_opt_class()];
  v7 = [v3 unarchivedObjectOfClasses:v6 fromData:v5 error:0];

  return v7;
}

@end