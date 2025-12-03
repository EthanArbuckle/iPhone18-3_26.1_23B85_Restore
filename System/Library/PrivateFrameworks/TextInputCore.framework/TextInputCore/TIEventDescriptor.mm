@interface TIEventDescriptor
- (TIEventDescriptor)initWithEventName:(id)name eventDescription:(id)description fieldDescriptors:(id)descriptors includeTestingParameters:(BOOL)parameters;
@end

@implementation TIEventDescriptor

- (TIEventDescriptor)initWithEventName:(id)name eventDescription:(id)description fieldDescriptors:(id)descriptors includeTestingParameters:(BOOL)parameters
{
  nameCopy = name;
  descriptionCopy = description;
  descriptorsCopy = descriptors;
  v17.receiver = self;
  v17.super_class = TIEventDescriptor;
  v14 = [(TIEventDescriptor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_eventName, name);
    objc_storeStrong(&v15->_eventDescription, description);
    objc_storeStrong(&v15->_fieldDescriptors, descriptors);
    v15->_includeTestingParameters = parameters;
  }

  return v15;
}

@end