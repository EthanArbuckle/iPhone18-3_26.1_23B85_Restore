@interface SKDiskImageInfoParams
+ (id)getDictDescriptionWithDisk:(id)disk;
- (id)getInfoDictWithDisk:(id)disk;
@end

@implementation SKDiskImageInfoParams

+ (id)getDictDescriptionWithDisk:(id)disk
{
  diskCopy = disk;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  ioContent = [diskCopy ioContent];
  if (ioContent)
  {
    ioContent2 = [diskCopy ioContent];
    [v4 setObject:ioContent2 forKey:@"content-hint"];
  }

  else
  {
    [v4 setObject:@"N/A" forKey:@"content-hint"];
  }

  volumeName = [diskCopy volumeName];
  if (volumeName)
  {
    volumeName2 = [diskCopy volumeName];
    [v4 setObject:volumeName2 forKey:@"volume-name"];
  }

  else
  {
    [v4 setObject:@"N/A" forKey:@"volume-name"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(diskCopy, "totalSpace")}];
  [v4 setObject:v9 forKey:@"total-space"];

  if ([diskCopy isMemberOfClass:objc_opt_class()])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(diskCopy, "usedSpace")}];
    [v4 setObject:v10 forKey:@"used-space"];
  }

  else
  {
    [v4 setObject:@"N/A" forKey:@"used-space"];
  }

  return v4;
}

- (id)getInfoDictWithDisk:(id)disk
{
  diskCopy = disk;
  imageInfo = [(SKDiskImageInfoParams *)self imageInfo];
  v6 = [imageInfo mutableCopy];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    v8 = [MEMORY[0x277CBEB18] arrayWithObject:diskCopy];
    while ([v8 count])
    {
      v9 = [v8 objectAtIndex:0];
      v10 = +[SKManager syncSharedManager];
      v11 = [v10 childDisksForWholeDisk:v9];
      [v8 addObjectsFromArray:v11];

      v12 = [SKDiskImageInfoParams getDictDescriptionWithDisk:v9];
      [v7 addObject:v12];

      if ([v9 isMemberOfClass:objc_opt_class()])
      {
        container = [v9 container];
        volumes = [container volumes];
        [v8 addObjectsFromArray:volumes];

        v15 = [SKDiskImageInfoParams getDictDescriptionWithDisk:container];
        [v7 addObject:v15];
      }

      [v8 removeObjectAtIndex:0];
    }

    [v6 setObject:v7 forKey:@"Partitions"];
    v16 = v6;
  }

  return v6;
}

@end