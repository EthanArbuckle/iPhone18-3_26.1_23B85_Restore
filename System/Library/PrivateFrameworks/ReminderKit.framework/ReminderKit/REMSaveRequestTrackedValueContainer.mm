@interface REMSaveRequestTrackedValueContainer
- (REMSaveRequestTrackedValue)weakValue;
- (REMSaveRequestTrackedValueContainer)initWithValue:(id)a3;
- (id)valueForSaveRequest:(id)a3;
- (id)valueWithoutPerformingCopy;
@end

@implementation REMSaveRequestTrackedValueContainer

- (REMSaveRequestTrackedValueContainer)initWithValue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = REMSaveRequestTrackedValueContainer;
  v5 = [(REMSaveRequestTrackedValueContainer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakValue, v4);
    v7 = [v4 shallowCopyWithSaveRequest:0];
    v8 = v6->_template;
    v6->_template = v7;
  }

  return v6;
}

- (id)valueForSaveRequest:(id)a3
{
  v4 = a3;
  v5 = [(REMSaveRequestTrackedValueContainer *)self weakValue];
  if (!v5)
  {
    v6 = [(REMSaveRequestTrackedValueContainer *)self template];
    v5 = [v6 shallowCopyWithSaveRequest:v4];

    [(REMSaveRequestTrackedValueContainer *)self setWeakValue:v5];
  }

  return v5;
}

- (id)valueWithoutPerformingCopy
{
  v3 = [(REMSaveRequestTrackedValueContainer *)self weakValue];
  if (!v3)
  {
    v3 = [(REMSaveRequestTrackedValueContainer *)self template];
  }

  return v3;
}

- (REMSaveRequestTrackedValue)weakValue
{
  WeakRetained = objc_loadWeakRetained(&self->_weakValue);

  return WeakRetained;
}

@end