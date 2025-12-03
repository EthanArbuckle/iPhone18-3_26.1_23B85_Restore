@interface WBSFetchedCloudTabDeviceOrCloseRequest
- (WBSFetchedCloudTabDeviceOrCloseRequest)initWithCoder:(id)coder;
- (WBSFetchedCloudTabDeviceOrCloseRequest)initWithUUIDString:(id)string deviceOrCloseRequestDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSFetchedCloudTabDeviceOrCloseRequest

- (WBSFetchedCloudTabDeviceOrCloseRequest)initWithUUIDString:(id)string deviceOrCloseRequestDictionary:(id)dictionary
{
  stringCopy = string;
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = WBSFetchedCloudTabDeviceOrCloseRequest;
  v8 = [(WBSFetchedCloudTabDeviceOrCloseRequest *)&v15 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    uuidString = v8->_uuidString;
    v8->_uuidString = v9;

    v11 = [dictionaryCopy copy];
    deviceOrCloseRequestDictionary = v8->_deviceOrCloseRequestDictionary;
    v8->_deviceOrCloseRequestDictionary = v11;

    v13 = v8;
  }

  return v8;
}

- (WBSFetchedCloudTabDeviceOrCloseRequest)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuidString"];
  v6 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:5];
  v8 = [v6 setWithArray:{v7, v13, v14, v15, v16}];

  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"deviceOrCloseRequestDictionary"];

  v10 = [(WBSFetchedCloudTabDeviceOrCloseRequest *)self initWithUUIDString:v5 deviceOrCloseRequestDictionary:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  uuidString = self->_uuidString;
  coderCopy = coder;
  [coderCopy encodeObject:uuidString forKey:@"uuidString"];
  [coderCopy encodeObject:self->_deviceOrCloseRequestDictionary forKey:@"deviceOrCloseRequestDictionary"];
}

@end