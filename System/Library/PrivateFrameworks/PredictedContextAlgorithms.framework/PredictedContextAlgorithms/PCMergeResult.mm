@interface PCMergeResult
- (PCMergeResult)initWithLoiId:(id)a3 confidence:(double)a4 entryTime:(double)a5 exitTime:(double)a6 entryUnc:(double)a7 exitUnc:(double)a8 sources:(id)a9 transports:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation PCMergeResult

- (PCMergeResult)initWithLoiId:(id)a3 confidence:(double)a4 entryTime:(double)a5 exitTime:(double)a6 entryUnc:(double)a7 exitUnc:(double)a8 sources:(id)a9 transports:(id)a10
{
  v18 = a3;
  v19 = a9;
  v20 = a10;
  v25.receiver = self;
  v25.super_class = PCMergeResult;
  v21 = [(PCMergeResult *)&v25 init];
  if (v21)
  {
    v22 = [v18 copy];
    loiId = v21->_loiId;
    v21->_loiId = v22;

    v21->_confidence = a4;
    v21->_entryTime = a5;
    v21->_exitTime = a6;
    v21->_entryUnc = a7;
    v21->_exitUnc = a8;
    objc_storeStrong(&v21->_sources, a9);
    objc_storeStrong(&v21->_transports, a10);
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PCMergeResult *)self loiId];
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
  v16 = [(PCMergeResult *)self sources];
  v17 = [(PCMergeResult *)self transports];
  v18 = [v4 initWithLoiId:v5 confidence:v16 entryTime:v17 exitTime:v7 entryUnc:v9 exitUnc:v11 sources:v13 transports:v15];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@:\n", v5];

  v7 = [(PCMergeResult *)self loiId];
  v8 = [PCAlgorithmsCommonUtils uuidStringFromData:v7];
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
  v16 = [(PCMergeResult *)self sources];
  [v6 appendFormat:@"sources count: %lu\n", objc_msgSend(v16, "count")];

  v17 = [(PCMergeResult *)self transports];
  [v6 appendFormat:@"transports count: %lu", objc_msgSend(v17, "count")];

  v18 = [v6 copy];

  return v18;
}

@end