@interface BRCRequestData
- (BRCRequestData)initWithProgress:(id)progress requestType:(signed __int16)type finishBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation BRCRequestData

- (BRCRequestData)initWithProgress:(id)progress requestType:(signed __int16)type finishBlock:(id)block
{
  progressCopy = progress;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = BRCRequestData;
  v11 = [(BRCRequestData *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_progress, progress);
    v13 = MEMORY[0x22AA4A310](blockCopy);
    finishBlock = v12->_finishBlock;
    v12->_finishBlock = v13;

    v12->_requestType = type;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BRCRequestData alloc];
  progress = self->_progress;
  requestType = self->_requestType;
  finishBlock = self->_finishBlock;

  return [(BRCRequestData *)v4 initWithProgress:progress requestType:requestType finishBlock:finishBlock];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  requestType = self->_requestType;
  if (requestType >= 3)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(BRCRequestData *)v7 description];
    }

    v6 = @"invalid";
  }

  else
  {
    v6 = off_278507A38[requestType];
  }

  v9 = [v3 stringWithFormat:@"<%@: %p type:%@ %@ progress:%@>", v4, self, v6, &stru_2837504F0, self->_progress];

  return v9;
}

@end