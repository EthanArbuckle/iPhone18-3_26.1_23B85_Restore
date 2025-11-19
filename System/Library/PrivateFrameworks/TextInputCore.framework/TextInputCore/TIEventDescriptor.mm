@interface TIEventDescriptor
- (TIEventDescriptor)initWithEventName:(id)a3 eventDescription:(id)a4 fieldDescriptors:(id)a5 includeTestingParameters:(BOOL)a6;
@end

@implementation TIEventDescriptor

- (TIEventDescriptor)initWithEventName:(id)a3 eventDescription:(id)a4 fieldDescriptors:(id)a5 includeTestingParameters:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = TIEventDescriptor;
  v14 = [(TIEventDescriptor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_eventName, a3);
    objc_storeStrong(&v15->_eventDescription, a4);
    objc_storeStrong(&v15->_fieldDescriptors, a5);
    v15->_includeTestingParameters = a6;
  }

  return v15;
}

@end