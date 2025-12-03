@interface MADSpaceInUseByDownload
- (MADSpaceInUseByDownload)initWithCoder:(id)coder;
- (MADSpaceInUseByDownload)initWithSpaceCheckedID:(id)d;
- (MADSpaceInUseByDownload)initWithSpaceCheckedID:(id)d totalRequiredFreeSpace:(unint64_t)space cacheDeleteUrgency:(int)urgency;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADSpaceInUseByDownload

- (MADSpaceInUseByDownload)initWithSpaceCheckedID:(id)d totalRequiredFreeSpace:(unint64_t)space cacheDeleteUrgency:(int)urgency
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = MADSpaceInUseByDownload;
  v10 = [(MADSpaceInUseByDownload *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_spaceCheckedID, d);
    v11->_totalRequiredFreeSpace = space;
    v11->_cacheDeleteUrgency = urgency;
  }

  return v11;
}

- (MADSpaceInUseByDownload)initWithSpaceCheckedID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MADSpaceInUseByDownload;
  v6 = [(MADSpaceInUseByDownload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spaceCheckedID, d);
    v7->_totalRequiredFreeSpace = 0;
    v7->_cacheDeleteUrgency = 0;
  }

  return v7;
}

- (MADSpaceInUseByDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MADSpaceInUseByDownload;
  v5 = [(MADSpaceInUseByDownload *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spaceCheckedID"];
    spaceCheckedID = v5->_spaceCheckedID;
    v5->_spaceCheckedID = v6;

    v5->_totalRequiredFreeSpace = [coderCopy decodeInt64ForKey:@"totalRequiredFreeSpace"];
    v5->_cacheDeleteUrgency = [coderCopy decodeIntForKey:@"cacheDeleteUrgency"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  spaceCheckedID = [(MADSpaceInUseByDownload *)self spaceCheckedID];
  [coderCopy encodeObject:spaceCheckedID forKey:@"spaceCheckedID"];

  [coderCopy encodeInt64:-[MADSpaceInUseByDownload totalRequiredFreeSpace](self forKey:{"totalRequiredFreeSpace"), @"totalRequiredFreeSpace"}];
  [coderCopy encodeInt:-[MADSpaceInUseByDownload cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"cacheDeleteUrgency"}];
}

- (id)description
{
  spaceCheckedID = [(MADSpaceInUseByDownload *)self spaceCheckedID];
  v4 = [NSString stringWithFormat:@"spaceCheckedID:%@, totalRequiredFreeSpace:%llu, cacheDeleteUrgency: %d", spaceCheckedID, [(MADSpaceInUseByDownload *)self totalRequiredFreeSpace], [(MADSpaceInUseByDownload *)self cacheDeleteUrgency]];

  return v4;
}

@end