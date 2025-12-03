@interface PGGraphMemoryNodeFeatureExtractor
+ (id)featureExtractorWithError:(id *)error;
- (PGGraphMemoryNodeFeatureExtractor)initWithError:(id *)error;
- (PGGraphMemoryNodeFeatureExtractor)initWithName:(id)name featureNames:(id)names relation:(id)relation labelForTargetBlock:(id)block;
- (unint64_t)featureLength;
@end

@implementation PGGraphMemoryNodeFeatureExtractor

- (unint64_t)featureLength
{
  featureNames = [(MARelationCollectionFeatureExtractor *)self featureNames];
  v3 = [featureNames count];

  return v3;
}

- (PGGraphMemoryNodeFeatureExtractor)initWithError:(id *)error
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

- (PGGraphMemoryNodeFeatureExtractor)initWithName:(id)name featureNames:(id)names relation:(id)relation labelForTargetBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = PGGraphMemoryNodeFeatureExtractor;
  return [(MARelationCollectionFeatureExtractor *)&v7 initWithName:name featureNames:names relation:relation labelForTargetBlock:block];
}

+ (id)featureExtractorWithError:(id *)error
{
  v3 = [[self alloc] initWithError:error];

  return v3;
}

@end