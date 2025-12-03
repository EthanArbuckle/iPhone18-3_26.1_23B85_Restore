@interface MTImageDownloadClientRequest
+ (id)requestForUrl:(id)url key:(id)key podcastUuid:(id)uuid completion:(id)completion;
- (MTImageDownloadClientRequest)initWithUrl:(id)url key:(id)key podcastUuid:(id)uuid completion:(id)completion;
- (id)description;
@end

@implementation MTImageDownloadClientRequest

+ (id)requestForUrl:(id)url key:(id)key podcastUuid:(id)uuid completion:(id)completion
{
  completionCopy = completion;
  uuidCopy = uuid;
  keyCopy = key;
  urlCopy = url;
  v14 = [[self alloc] initWithUrl:urlCopy key:keyCopy podcastUuid:uuidCopy completion:completionCopy];

  return v14;
}

- (MTImageDownloadClientRequest)initWithUrl:(id)url key:(id)key podcastUuid:(id)uuid completion:(id)completion
{
  urlCopy = url;
  keyCopy = key;
  uuidCopy = uuid;
  completionCopy = completion;
  v23.receiver = self;
  v23.super_class = MTImageDownloadClientRequest;
  v15 = [(MTImageDownloadClientRequest *)&v23 init];
  if (v15)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uniqueId = v15->_uniqueId;
    v15->_uniqueId = uUIDString;

    objc_storeStrong(&v15->_url, url);
    objc_storeStrong(&v15->_key, key);
    if (uuidCopy)
    {
      if ([uuidCopy length])
      {
        v19 = uuidCopy;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    objc_storeStrong(&v15->_uuid, v19);
    v20 = _Block_copy(completionCopy);
    completion = v15->_completion;
    v15->_completion = v20;
  }

  return v15;
}

- (id)description
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"url=%@, key=%@", self->_url, self->_key];
  [array addObject:v4];

  if ([(NSString *)self->_uuid length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"uuid=%@", self->_uuid];
    [array addObject:v5];
  }

  if (self->_completion)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"completion=%@", v6];
  [array addObject:v7];

  v8 = [array componentsJoinedByString:{@", "}];

  return v8;
}

@end