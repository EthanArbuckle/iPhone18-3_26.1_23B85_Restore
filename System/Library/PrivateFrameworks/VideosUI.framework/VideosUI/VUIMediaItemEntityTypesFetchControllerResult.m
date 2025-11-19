@interface VUIMediaItemEntityTypesFetchControllerResult
- (VUIMediaItemEntityTypesFetchControllerResult)init;
- (VUIMediaItemEntityTypesFetchControllerResult)initWithFetchReason:(int64_t)a3 fetchResponse:(id)a4;
- (id)description;
@end

@implementation VUIMediaItemEntityTypesFetchControllerResult

- (VUIMediaItemEntityTypesFetchControllerResult)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaItemEntityTypesFetchControllerResult)initWithFetchReason:(int64_t)a3 fetchResponse:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VUIMediaItemEntityTypesFetchControllerResult;
  v8 = [(VUIMediaItemEntityTypesFetchControllerResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_fetchReason = a3;
    objc_storeStrong(&v8->_fetchResponse, a4);
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18.receiver = self;
  v18.super_class = VUIMediaItemEntityTypesFetchControllerResult;
  v4 = [(VUIMediaItemEntityTypesFetchControllerResult *)&v18 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = VUIMediaLibraryFetchReasonLogString([(VUIMediaItemEntityTypesFetchControllerResult *)self fetchReason]);
  v7 = [v5 stringWithFormat:@"%@=%@", @"fetchReason", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaItemEntityTypesFetchControllerResult *)self fetchResponse];
  v10 = [v8 stringWithFormat:@"%@=%@", @"fetchResponse", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(VUIMediaItemEntityTypesFetchControllerResult *)self fetchChanges];
  v13 = [v11 stringWithFormat:@"%@=%@", @"fetchChanges", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v14 stringWithFormat:@"<%@>", v15];

  return v16;
}

@end