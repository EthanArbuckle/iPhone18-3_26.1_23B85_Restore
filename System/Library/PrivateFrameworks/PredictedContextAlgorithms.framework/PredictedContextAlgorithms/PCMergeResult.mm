@interface PCMergeResult
- (PCMergeResult)initWithLoiId:(id)id confidence:(double)confidence entryTime:(double)time exitTime:(double)exitTime entryUnc:(double)unc exitUnc:(double)exitUnc sources:(id)sources transports:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PCMergeResult

- (PCMergeResult)initWithLoiId:(id)id confidence:(double)confidence entryTime:(double)time exitTime:(double)exitTime entryUnc:(double)unc exitUnc:(double)exitUnc sources:(id)sources transports:(id)self0
{
  idCopy = id;
  sourcesCopy = sources;
  transportsCopy = transports;
  v25.receiver = self;
  v25.super_class = PCMergeResult;
  v21 = [(PCMergeResult *)&v25 init];
  if (v21)
  {
    v22 = [idCopy copy];
    loiId = v21->_loiId;
    v21->_loiId = v22;

    v21->_confidence = confidence;
    v21->_entryTime = time;
    v21->_exitTime = exitTime;
    v21->_entryUnc = unc;
    v21->_exitUnc = exitUnc;
    objc_storeStrong(&v21->_sources, sources);
    objc_storeStrong(&v21->_transports, transports);
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  loiId = [(PCMergeResult *)self loiId];
  [(PCMergeResult *)self confidence];
  v7 = v6;
  [(PCMergeResult *)self entryTime];
  v9 = v8;
  [(PCMergeResult *)self exitTime];
  v11 = v10;
  [(PCMergeResult *)self entryUnc];
  v13 = v12;
  [(PCMergeResult *)self exitUnc];
  v15 = v14;
  sources = [(PCMergeResult *)self sources];
  transports = [(PCMergeResult *)self transports];
  v18 = [v4 initWithLoiId:loiId confidence:sources entryTime:transports exitTime:v7 entryUnc:v9 exitUnc:v11 sources:v13 transports:v15];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@:\n", v5];

  loiId = [(PCMergeResult *)self loiId];
  v8 = [PCAlgorithmsCommonUtils uuidStringFromData:loiId];
  [v6 appendFormat:@"loiId: %@\n", v8];

  [(PCMergeResult *)self confidence];
  [v6 appendFormat:@"confidence: %.2f\n", v9];
  [(PCMergeResult *)self entryTime];
  v11 = v10;
  [(PCMergeResult *)self entryUnc];
  [v6 appendFormat:@"entryTime: %.2f (±%.2f)\n", v11, v12];
  [(PCMergeResult *)self exitTime];
  v14 = v13;
  [(PCMergeResult *)self exitUnc];
  [v6 appendFormat:@"exitTime: %.2f (±%.2f)\n", v14, v15];
  sources = [(PCMergeResult *)self sources];
  [v6 appendFormat:@"sources count: %lu\n", objc_msgSend(sources, "count")];

  transports = [(PCMergeResult *)self transports];
  [v6 appendFormat:@"transports count: %lu", objc_msgSend(transports, "count")];

  v18 = [v6 copy];

  return v18;
}

@end