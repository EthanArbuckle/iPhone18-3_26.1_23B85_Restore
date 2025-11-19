@interface PIPerfPowerRecord
- (NSDictionary)payload;
@end

@implementation PIPerfPowerRecord

- (NSDictionary)payload
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = [(PIPerfPowerRecord *)self endTime];
  v4 = [(PIPerfPowerRecord *)self startTime];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v13[0] = @"durationInSeconds";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v14[0] = v7;
  v13[1] = @"startTime";
  v8 = [(PIPerfPowerRecord *)self startTime];
  v14[1] = v8;
  v13[2] = @"endTime";
  v9 = [(PIPerfPowerRecord *)self endTime];
  v14[2] = v9;
  v13[3] = @"operation";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PIPerfPowerRecord operation](self, "operation")}];
  v14[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

@end