@interface PLCrowdSourcedThemesAssetEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (PLCrowdSourcedThemesAssetEvent)initWithUUID:(id)d;
- (id)serialize;
@end

@implementation PLCrowdSourcedThemesAssetEvent

- (id)serialize
{
  uuid = [(PLCrowdSourcedThemesAssetEvent *)self uuid];
  v3 = [uuid dataUsingEncoding:4];

  return v3;
}

- (PLCrowdSourcedThemesAssetEvent)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = PLCrowdSourcedThemesAssetEvent;
  v5 = [(PLCrowdSourcedThemesAssetEvent *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCrowdSourcedThemesAssetEvent.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"dataVersion == 0"}];
  }

  v8 = [self alloc];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
  v10 = [v8 initWithUUID:v9];

  return v10;
}

@end