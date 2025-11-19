@interface MADAutoAvailableForStaging
- (MADAutoAvailableForStaging)initWithCoder:(id)a3;
- (id)initForTargetOSVersion:(id)a3 forTargetBuild:(id)a4 forTargetTrainName:(id)a5 forTargetRestoreVersion:(id)a6 withRequiredDescriptors:(id)a7 withOptionalDescriptors:(id)a8;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAvailableForStaging

- (id)initForTargetOSVersion:(id)a3 forTargetBuild:(id)a4 forTargetTrainName:(id)a5 forTargetRestoreVersion:(id)a6 withRequiredDescriptors:(id)a7 withOptionalDescriptors:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = MADAutoAvailableForStaging;
  v18 = [(MADAutoAvailableForStaging *)&v24 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_targetOSVersion, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 6, a7);
    objc_storeStrong(p_isa + 7, a8);
  }

  return p_isa;
}

- (MADAutoAvailableForStaging)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MADAutoAvailableForStaging;
  v5 = [(MADAutoAvailableForStaging *)&v21 init];
  if (v5)
  {
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v22 count:2];
    v7 = [NSSet setWithArray:v6];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetOSVersion"];
    targetOSVersion = v5->_targetOSVersion;
    v5->_targetOSVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetBuild"];
    targetBuild = v5->_targetBuild;
    v5->_targetBuild = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetTrainName"];
    targetTrainName = v5->_targetTrainName;
    v5->_targetTrainName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetRestoreVersion"];
    targetRestoreVersion = v5->_targetRestoreVersion;
    v5->_targetRestoreVersion = v14;

    v16 = [v4 decodeObjectOfClasses:v7 forKey:@"requiredDescriptors"];
    descriptorsRequiredForStaging = v5->_descriptorsRequiredForStaging;
    v5->_descriptorsRequiredForStaging = v16;

    v18 = [v4 decodeObjectOfClasses:v7 forKey:@"optionalDescriptors"];
    descriptorsOptionalForStaging = v5->_descriptorsOptionalForStaging;
    v5->_descriptorsOptionalForStaging = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAvailableForStaging *)self targetOSVersion];
  [v4 encodeObject:v5 forKey:@"targetOSVersion"];

  v6 = [(MADAutoAvailableForStaging *)self targetBuild];
  [v4 encodeObject:v6 forKey:@"targetBuild"];

  v7 = [(MADAutoAvailableForStaging *)self targetTrainName];
  [v4 encodeObject:v7 forKey:@"targetTrainName"];

  v8 = [(MADAutoAvailableForStaging *)self targetRestoreVersion];
  [v4 encodeObject:v8 forKey:@"targetRestoreVersion"];

  v9 = [(MADAutoAvailableForStaging *)self descriptorsRequiredForStaging];
  [v4 encodeObject:v9 forKey:@"requiredDescriptors"];

  v10 = [(MADAutoAvailableForStaging *)self descriptorsOptionalForStaging];
  [v4 encodeObject:v10 forKey:@"optionalDescriptors"];
}

- (id)summary
{
  v3 = [(MADAutoAvailableForStaging *)self targetTrainName];
  v4 = [(MADAutoAvailableForStaging *)self targetRestoreVersion];
  v5 = [(MADAutoAvailableForStaging *)self newSummaryWithoutEntryID];
  v6 = [NSString stringWithFormat:@"TARGET[trainName:%@|restoreVersion:%@]%@", v3, v4, v5];

  return v6;
}

- (id)newSummaryWithoutEntryID
{
  v3 = [NSString alloc];
  v4 = [(MADAutoAvailableForStaging *)self targetOSVersion];
  if (v4)
  {
    v5 = [(MADAutoAvailableForStaging *)self targetOSVersion];
  }

  else
  {
    v5 = @"N";
  }

  v6 = [(MADAutoAvailableForStaging *)self targetBuild];
  if (v6)
  {
    v7 = [(MADAutoAvailableForStaging *)self targetBuild];
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(MADAutoAvailableForStaging *)self descriptorsRequiredForStaging];
  v9 = [v8 count];
  v10 = [(MADAutoAvailableForStaging *)self descriptorsOptionalForStaging];
  v11 = [v3 initWithFormat:@"[OSVersion:%@|Build:%@|descriptorsRequired:%ld|descriptorsOptional:%ld]", v5, v7, v9, objc_msgSend(v10, "count")];

  if (v6)
  {
  }

  if (v4)
  {
  }

  return v11;
}

@end