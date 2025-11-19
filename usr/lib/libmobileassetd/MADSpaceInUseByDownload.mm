@interface MADSpaceInUseByDownload
- (MADSpaceInUseByDownload)initWithCoder:(id)a3;
- (MADSpaceInUseByDownload)initWithSpaceCheckedID:(id)a3;
- (MADSpaceInUseByDownload)initWithSpaceCheckedID:(id)a3 totalRequiredFreeSpace:(unint64_t)a4 cacheDeleteUrgency:(int)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADSpaceInUseByDownload

- (MADSpaceInUseByDownload)initWithSpaceCheckedID:(id)a3 totalRequiredFreeSpace:(unint64_t)a4 cacheDeleteUrgency:(int)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MADSpaceInUseByDownload;
  v10 = [(MADSpaceInUseByDownload *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_spaceCheckedID, a3);
    v11->_totalRequiredFreeSpace = a4;
    v11->_cacheDeleteUrgency = a5;
  }

  return v11;
}

- (MADSpaceInUseByDownload)initWithSpaceCheckedID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADSpaceInUseByDownload;
  v6 = [(MADSpaceInUseByDownload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spaceCheckedID, a3);
    v7->_totalRequiredFreeSpace = 0;
    v7->_cacheDeleteUrgency = 0;
  }

  return v7;
}

- (MADSpaceInUseByDownload)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADSpaceInUseByDownload;
  v5 = [(MADSpaceInUseByDownload *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spaceCheckedID"];
    spaceCheckedID = v5->_spaceCheckedID;
    v5->_spaceCheckedID = v6;

    v5->_totalRequiredFreeSpace = [v4 decodeInt64ForKey:@"totalRequiredFreeSpace"];
    v5->_cacheDeleteUrgency = [v4 decodeIntForKey:@"cacheDeleteUrgency"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MADSpaceInUseByDownload *)self spaceCheckedID];
  [v5 encodeObject:v4 forKey:@"spaceCheckedID"];

  [v5 encodeInt64:-[MADSpaceInUseByDownload totalRequiredFreeSpace](self forKey:{"totalRequiredFreeSpace"), @"totalRequiredFreeSpace"}];
  [v5 encodeInt:-[MADSpaceInUseByDownload cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"cacheDeleteUrgency"}];
}

- (id)description
{
  v3 = [(MADSpaceInUseByDownload *)self spaceCheckedID];
  v4 = [NSString stringWithFormat:@"spaceCheckedID:%@, totalRequiredFreeSpace:%llu, cacheDeleteUrgency: %d", v3, [(MADSpaceInUseByDownload *)self totalRequiredFreeSpace], [(MADSpaceInUseByDownload *)self cacheDeleteUrgency]];

  return v4;
}

@end