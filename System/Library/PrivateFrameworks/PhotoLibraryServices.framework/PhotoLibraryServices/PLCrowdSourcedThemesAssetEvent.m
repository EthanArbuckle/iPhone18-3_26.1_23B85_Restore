@interface PLCrowdSourcedThemesAssetEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (PLCrowdSourcedThemesAssetEvent)initWithUUID:(id)a3;
- (id)serialize;
@end

@implementation PLCrowdSourcedThemesAssetEvent

- (id)serialize
{
  v2 = [(PLCrowdSourcedThemesAssetEvent *)self uuid];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

- (PLCrowdSourcedThemesAssetEvent)initWithUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLCrowdSourcedThemesAssetEvent;
  v5 = [(PLCrowdSourcedThemesAssetEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v7 = a3;
  if (a4)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLCrowdSourcedThemesAssetEvent.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"dataVersion == 0"}];
  }

  v8 = [a1 alloc];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
  v10 = [v8 initWithUUID:v9];

  return v10;
}

@end