@interface WFUIRUserEvent
- (WFUIRUserEvent)initWithCoder:(id)coder;
- (WFUIRUserEvent)initWithSerializedRepresentation:(id)representation;
- (id)serializedRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFUIRUserEvent

- (WFUIRUserEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = WFUIRUserEvent;
  v5 = [(WFUIRUserEvent *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedActionName"];
    localizedActionName = v5->_localizedActionName;
    v5->_localizedActionName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionName"];
    actionName = v5->_actionName;
    v5->_actionName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
    processName = v5->_processName;
    v5->_processName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDescription"];
    userDescription = v5->_userDescription;
    v5->_userDescription = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"delay"];
    [v14 doubleValue];
    v5->_delay = v15;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
    [v16 doubleValue];
    v5->_timeout = v17;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedActionName = [(WFUIRUserEvent *)self localizedActionName];
  [coderCopy encodeObject:localizedActionName forKey:@"localizedActionName"];

  actionName = [(WFUIRUserEvent *)self actionName];
  [coderCopy encodeObject:actionName forKey:@"actionName"];

  processName = [(WFUIRUserEvent *)self processName];
  [coderCopy encodeObject:processName forKey:@"processName"];

  userDescription = [(WFUIRUserEvent *)self userDescription];
  [coderCopy encodeObject:userDescription forKey:@"userDescription"];

  v9 = MEMORY[0x1E696AD98];
  [(WFUIRUserEvent *)self delay];
  v10 = [v9 numberWithDouble:?];
  [coderCopy encodeObject:v10 forKey:@"delay"];

  v11 = MEMORY[0x1E696AD98];
  [(WFUIRUserEvent *)self timeout];
  v12 = [v11 numberWithDouble:?];
  [coderCopy encodeObject:v12 forKey:@"timeout"];
}

- (id)serializedRepresentation
{
  v3 = objc_opt_new();
  actionName = [(WFUIRUserEvent *)self actionName];
  [v3 setValue:actionName forKey:@"actionName"];

  localizedActionName = [(WFUIRUserEvent *)self localizedActionName];
  [v3 setValue:localizedActionName forKey:@"localizedActionName"];

  processName = [(WFUIRUserEvent *)self processName];
  [v3 setValue:processName forKey:@"processName"];

  userDescription = [(WFUIRUserEvent *)self userDescription];
  [v3 setValue:userDescription forKey:@"userDescription"];

  v8 = MEMORY[0x1E696AD98];
  [(WFUIRUserEvent *)self delay];
  v9 = [v8 numberWithDouble:?];
  [v3 setValue:v9 forKey:@"delay"];

  v10 = MEMORY[0x1E696AD98];
  [(WFUIRUserEvent *)self timeout];
  v11 = [v10 numberWithDouble:?];
  [v3 setValue:v11 forKey:@"timeout"];

  return v3;
}

- (WFUIRUserEvent)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v21.receiver = self;
  v21.super_class = WFUIRUserEvent;
  v5 = [(WFUIRUserEvent *)&v21 init];
  if (v5)
  {
    v6 = representationCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 objectForKey:@"actionName"];
      actionName = v5->_actionName;
      v5->_actionName = v7;

      v9 = [v6 objectForKey:@"localizedActionName"];
      localizedActionName = v5->_localizedActionName;
      v5->_localizedActionName = v9;

      v11 = [v6 objectForKey:@"processName"];
      processName = v5->_processName;
      v5->_processName = v11;

      v13 = [v6 objectForKey:@"userDescription"];
      userDescription = v5->_userDescription;
      v5->_userDescription = v13;

      v15 = [v6 objectForKey:@"delay"];
      [v15 doubleValue];
      v5->_delay = v16;

      v17 = [v6 objectForKey:@"timeout"];
      [v17 doubleValue];
      v5->_timeout = v18;

      v19 = v5;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end