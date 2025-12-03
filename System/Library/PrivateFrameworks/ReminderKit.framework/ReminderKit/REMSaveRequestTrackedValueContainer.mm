@interface REMSaveRequestTrackedValueContainer
- (REMSaveRequestTrackedValue)weakValue;
- (REMSaveRequestTrackedValueContainer)initWithValue:(id)value;
- (id)valueForSaveRequest:(id)request;
- (id)valueWithoutPerformingCopy;
@end

@implementation REMSaveRequestTrackedValueContainer

- (REMSaveRequestTrackedValueContainer)initWithValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = REMSaveRequestTrackedValueContainer;
  v5 = [(REMSaveRequestTrackedValueContainer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakValue, valueCopy);
    v7 = [valueCopy shallowCopyWithSaveRequest:0];
    v8 = v6->_template;
    v6->_template = v7;
  }

  return v6;
}

- (id)valueForSaveRequest:(id)request
{
  requestCopy = request;
  weakValue = [(REMSaveRequestTrackedValueContainer *)self weakValue];
  if (!weakValue)
  {
    template = [(REMSaveRequestTrackedValueContainer *)self template];
    weakValue = [template shallowCopyWithSaveRequest:requestCopy];

    [(REMSaveRequestTrackedValueContainer *)self setWeakValue:weakValue];
  }

  return weakValue;
}

- (id)valueWithoutPerformingCopy
{
  weakValue = [(REMSaveRequestTrackedValueContainer *)self weakValue];
  if (!weakValue)
  {
    weakValue = [(REMSaveRequestTrackedValueContainer *)self template];
  }

  return weakValue;
}

- (REMSaveRequestTrackedValue)weakValue
{
  WeakRetained = objc_loadWeakRetained(&self->_weakValue);

  return WeakRetained;
}

@end