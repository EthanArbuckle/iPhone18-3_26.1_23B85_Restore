@interface MTImageDownloadClientRequest
+ (id)requestForUrl:(id)a3 key:(id)a4 podcastUuid:(id)a5 completion:(id)a6;
- (MTImageDownloadClientRequest)initWithUrl:(id)a3 key:(id)a4 podcastUuid:(id)a5 completion:(id)a6;
- (id)description;
@end

@implementation MTImageDownloadClientRequest

+ (id)requestForUrl:(id)a3 key:(id)a4 podcastUuid:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithUrl:v13 key:v12 podcastUuid:v11 completion:v10];

  return v14;
}

- (MTImageDownloadClientRequest)initWithUrl:(id)a3 key:(id)a4 podcastUuid:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = MTImageDownloadClientRequest;
  v15 = [(MTImageDownloadClientRequest *)&v23 init];
  if (v15)
  {
    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v16 UUIDString];
    uniqueId = v15->_uniqueId;
    v15->_uniqueId = v17;

    objc_storeStrong(&v15->_url, a3);
    objc_storeStrong(&v15->_key, a4);
    if (v13)
    {
      if ([v13 length])
      {
        v19 = v13;
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
    v20 = _Block_copy(v14);
    completion = v15->_completion;
    v15->_completion = v20;
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"url=%@, key=%@", self->_url, self->_key];
  [v3 addObject:v4];

  if ([(NSString *)self->_uuid length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"uuid=%@", self->_uuid];
    [v3 addObject:v5];
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
  [v3 addObject:v7];

  v8 = [v3 componentsJoinedByString:{@", "}];

  return v8;
}

@end