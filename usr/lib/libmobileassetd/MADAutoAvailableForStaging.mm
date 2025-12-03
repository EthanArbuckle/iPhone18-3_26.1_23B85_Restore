@interface MADAutoAvailableForStaging
- (MADAutoAvailableForStaging)initWithCoder:(id)coder;
- (id)initForTargetOSVersion:(id)version forTargetBuild:(id)build forTargetTrainName:(id)name forTargetRestoreVersion:(id)restoreVersion withRequiredDescriptors:(id)descriptors withOptionalDescriptors:(id)optionalDescriptors;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoAvailableForStaging

- (id)initForTargetOSVersion:(id)version forTargetBuild:(id)build forTargetTrainName:(id)name forTargetRestoreVersion:(id)restoreVersion withRequiredDescriptors:(id)descriptors withOptionalDescriptors:(id)optionalDescriptors
{
  versionCopy = version;
  buildCopy = build;
  nameCopy = name;
  restoreVersionCopy = restoreVersion;
  descriptorsCopy = descriptors;
  optionalDescriptorsCopy = optionalDescriptors;
  v24.receiver = self;
  v24.super_class = MADAutoAvailableForStaging;
  v18 = [(MADAutoAvailableForStaging *)&v24 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_targetOSVersion, version);
    objc_storeStrong(p_isa + 2, build);
    objc_storeStrong(p_isa + 3, name);
    objc_storeStrong(p_isa + 4, restoreVersion);
    objc_storeStrong(p_isa + 6, descriptors);
    objc_storeStrong(p_isa + 7, optionalDescriptors);
  }

  return p_isa;
}

- (MADAutoAvailableForStaging)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = MADAutoAvailableForStaging;
  v5 = [(MADAutoAvailableForStaging *)&v21 init];
  if (v5)
  {
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v22 count:2];
    v7 = [NSSet setWithArray:v6];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetOSVersion"];
    targetOSVersion = v5->_targetOSVersion;
    v5->_targetOSVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetBuild"];
    targetBuild = v5->_targetBuild;
    v5->_targetBuild = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetTrainName"];
    targetTrainName = v5->_targetTrainName;
    v5->_targetTrainName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetRestoreVersion"];
    targetRestoreVersion = v5->_targetRestoreVersion;
    v5->_targetRestoreVersion = v14;

    v16 = [coderCopy decodeObjectOfClasses:v7 forKey:@"requiredDescriptors"];
    descriptorsRequiredForStaging = v5->_descriptorsRequiredForStaging;
    v5->_descriptorsRequiredForStaging = v16;

    v18 = [coderCopy decodeObjectOfClasses:v7 forKey:@"optionalDescriptors"];
    descriptorsOptionalForStaging = v5->_descriptorsOptionalForStaging;
    v5->_descriptorsOptionalForStaging = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  targetOSVersion = [(MADAutoAvailableForStaging *)self targetOSVersion];
  [coderCopy encodeObject:targetOSVersion forKey:@"targetOSVersion"];

  targetBuild = [(MADAutoAvailableForStaging *)self targetBuild];
  [coderCopy encodeObject:targetBuild forKey:@"targetBuild"];

  targetTrainName = [(MADAutoAvailableForStaging *)self targetTrainName];
  [coderCopy encodeObject:targetTrainName forKey:@"targetTrainName"];

  targetRestoreVersion = [(MADAutoAvailableForStaging *)self targetRestoreVersion];
  [coderCopy encodeObject:targetRestoreVersion forKey:@"targetRestoreVersion"];

  descriptorsRequiredForStaging = [(MADAutoAvailableForStaging *)self descriptorsRequiredForStaging];
  [coderCopy encodeObject:descriptorsRequiredForStaging forKey:@"requiredDescriptors"];

  descriptorsOptionalForStaging = [(MADAutoAvailableForStaging *)self descriptorsOptionalForStaging];
  [coderCopy encodeObject:descriptorsOptionalForStaging forKey:@"optionalDescriptors"];
}

- (id)summary
{
  targetTrainName = [(MADAutoAvailableForStaging *)self targetTrainName];
  targetRestoreVersion = [(MADAutoAvailableForStaging *)self targetRestoreVersion];
  newSummaryWithoutEntryID = [(MADAutoAvailableForStaging *)self newSummaryWithoutEntryID];
  v6 = [NSString stringWithFormat:@"TARGET[trainName:%@|restoreVersion:%@]%@", targetTrainName, targetRestoreVersion, newSummaryWithoutEntryID];

  return v6;
}

- (id)newSummaryWithoutEntryID
{
  v3 = [NSString alloc];
  targetOSVersion = [(MADAutoAvailableForStaging *)self targetOSVersion];
  if (targetOSVersion)
  {
    targetOSVersion2 = [(MADAutoAvailableForStaging *)self targetOSVersion];
  }

  else
  {
    targetOSVersion2 = @"N";
  }

  targetBuild = [(MADAutoAvailableForStaging *)self targetBuild];
  if (targetBuild)
  {
    targetBuild2 = [(MADAutoAvailableForStaging *)self targetBuild];
  }

  else
  {
    targetBuild2 = @"N";
  }

  descriptorsRequiredForStaging = [(MADAutoAvailableForStaging *)self descriptorsRequiredForStaging];
  v9 = [descriptorsRequiredForStaging count];
  descriptorsOptionalForStaging = [(MADAutoAvailableForStaging *)self descriptorsOptionalForStaging];
  v11 = [v3 initWithFormat:@"[OSVersion:%@|Build:%@|descriptorsRequired:%ld|descriptorsOptional:%ld]", targetOSVersion2, targetBuild2, v9, objc_msgSend(descriptorsOptionalForStaging, "count")];

  if (targetBuild)
  {
  }

  if (targetOSVersion)
  {
  }

  return v11;
}

@end