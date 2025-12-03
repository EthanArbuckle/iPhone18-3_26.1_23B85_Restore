@interface FLTMutableSSUMetadata
- (FLTMutableSSUMetadata)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)timestamp;
- (void)setData_version:(id)data_version;
- (void)setEncoder_version:(id)encoder_version;
- (void)setTimestamp:(int64_t)timestamp;
- (void)setUser_data:(id)user_data;
@end

@implementation FLTMutableSSUMetadata

- (void)setEncoder_version:(id)encoder_version
{
  v4 = [encoder_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_data:(id)user_data
{
  v4 = [user_data copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTimestamp:(int64_t)timestamp
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:timestamp];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)timestamp
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"timestamp"];
  longValue = [v2 longValue];

  return longValue;
}

- (void)setData_version:(id)data_version
{
  v4 = [data_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (FLTMutableSSUMetadata)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableSSUMetadata;
  v2 = [(FLTMutableSSUMetadata *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end