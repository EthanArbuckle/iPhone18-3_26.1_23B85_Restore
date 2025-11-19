@interface SKDiskImageInfoParams
+ (id)getDictDescriptionWithDisk:(id)a3;
- (id)getInfoDictWithDisk:(id)a3;
@end

@implementation SKDiskImageInfoParams

+ (id)getDictDescriptionWithDisk:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  v5 = [v3 ioContent];
  if (v5)
  {
    v6 = [v3 ioContent];
    [v4 setObject:v6 forKey:@"content-hint"];
  }

  else
  {
    [v4 setObject:@"N/A" forKey:@"content-hint"];
  }

  v7 = [v3 volumeName];
  if (v7)
  {
    v8 = [v3 volumeName];
    [v4 setObject:v8 forKey:@"volume-name"];
  }

  else
  {
    [v4 setObject:@"N/A" forKey:@"volume-name"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "totalSpace")}];
  [v4 setObject:v9 forKey:@"total-space"];

  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "usedSpace")}];
    [v4 setObject:v10 forKey:@"used-space"];
  }

  else
  {
    [v4 setObject:@"N/A" forKey:@"used-space"];
  }

  return v4;
}

- (id)getInfoDictWithDisk:(id)a3
{
  v4 = a3;
  v5 = [(SKDiskImageInfoParams *)self imageInfo];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    v8 = [MEMORY[0x277CBEB18] arrayWithObject:v4];
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
        v13 = [v9 container];
        v14 = [v13 volumes];
        [v8 addObjectsFromArray:v14];

        v15 = [SKDiskImageInfoParams getDictDescriptionWithDisk:v13];
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