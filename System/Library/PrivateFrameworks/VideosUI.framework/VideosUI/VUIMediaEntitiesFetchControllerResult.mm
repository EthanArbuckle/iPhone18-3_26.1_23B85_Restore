@interface VUIMediaEntitiesFetchControllerResult
- (VUIMediaEntitiesFetchControllerResult)init;
- (VUIMediaEntitiesFetchControllerResult)initWithFetchReason:(int64_t)a3 fetchResponses:(id)a4;
- (id)description;
@end

@implementation VUIMediaEntitiesFetchControllerResult

- (VUIMediaEntitiesFetchControllerResult)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaEntitiesFetchControllerResult)initWithFetchReason:(int64_t)a3 fetchResponses:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = VUIMediaEntitiesFetchControllerResult;
  v7 = [(VUIMediaEntitiesFetchControllerResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_fetchReason = a3;
    v9 = [v6 copy];
    fetchResponses = v8->_fetchResponses;
    v8->_fetchResponses = v9;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18.receiver = self;
  v18.super_class = VUIMediaEntitiesFetchControllerResult;
  v4 = [(VUIMediaEntitiesFetchControllerResult *)&v18 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = VUIMediaLibraryFetchReasonLogString([(VUIMediaEntitiesFetchControllerResult *)self fetchReason]);
  v7 = [v5 stringWithFormat:@"%@=%@", @"fetchReason", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaEntitiesFetchControllerResult *)self fetchResponses];
  v10 = [v8 stringWithFormat:@"%@=%@", @"fetchResponses", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(VUIMediaEntitiesFetchControllerResult *)self fetchResponseChanges];
  v13 = [v11 stringWithFormat:@"%@=%@", @"fetchResponseChanges", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v14 stringWithFormat:@"<%@>", v15];

  return v16;
}

@end