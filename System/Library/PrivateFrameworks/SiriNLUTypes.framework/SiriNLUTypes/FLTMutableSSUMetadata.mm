@interface FLTMutableSSUMetadata
- (FLTMutableSSUMetadata)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)timestamp;
- (void)setData_version:(id)a3;
- (void)setEncoder_version:(id)a3;
- (void)setTimestamp:(int64_t)a3;
- (void)setUser_data:(id)a3;
@end

@implementation FLTMutableSSUMetadata

- (void)setEncoder_version:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_data:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTimestamp:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)timestamp
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"timestamp"];
  v3 = [v2 longValue];

  return v3;
}

- (void)setData_version:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end