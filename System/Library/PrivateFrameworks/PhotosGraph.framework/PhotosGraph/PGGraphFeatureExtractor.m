@interface PGGraphFeatureExtractor
+ (id)featureExtractorWithError:(id *)a3;
- (PGGraphFeatureExtractor)initWithError:(id *)a3;
- (PGGraphFeatureExtractor)initWithName:(id)a3 featureNames:(id)a4 relation:(id)a5 labelForTargetBlock:(id)a6;
- (unint64_t)featureLength;
@end

@implementation PGGraphFeatureExtractor

- (unint64_t)featureLength
{
  v2 = [(MARelationCollectionFeatureExtractor *)self featureNames];
  v3 = [v2 count];

  return v3;
}

- (PGGraphFeatureExtractor)initWithError:(id *)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"Subclasses must override %@", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (PGGraphFeatureExtractor)initWithName:(id)a3 featureNames:(id)a4 relation:(id)a5 labelForTargetBlock:(id)a6
{
  v7.receiver = self;
  v7.super_class = PGGraphFeatureExtractor;
  return [(MARelationCollectionFeatureExtractor *)&v7 initWithName:a3 featureNames:a4 relation:a5 labelForTargetBlock:a6];
}

+ (id)featureExtractorWithError:(id *)a3
{
  v3 = [[a1 alloc] initWithError:a3];

  return v3;
}

@end