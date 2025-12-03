@interface WFContextualActionCalendarEventDescriptor
- (BOOL)isEqual:(id)equal;
- (WFContextualActionCalendarEventDescriptor)initWithCoder:(id)coder;
- (WFContextualActionCalendarEventDescriptor)initWithEventIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier title:(id)title;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualActionCalendarEventDescriptor

- (void)encodeWithCoder:(id)coder
{
  eventIdentifier = self->_eventIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:eventIdentifier forKey:@"eventIdentifier"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
}

- (WFContextualActionCalendarEventDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(WFContextualActionCalendarEventDescriptor *)self initWithEventIdentifier:v5 uniqueIdentifier:v6 title:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    eventIdentifier = [(WFContextualActionCalendarEventDescriptor *)v6 eventIdentifier];
    eventIdentifier2 = [(WFContextualActionCalendarEventDescriptor *)self eventIdentifier];
    v9 = eventIdentifier;
    v10 = eventIdentifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    uniqueIdentifier = [(WFContextualActionCalendarEventDescriptor *)v6 uniqueIdentifier];
    uniqueIdentifier2 = [(WFContextualActionCalendarEventDescriptor *)self uniqueIdentifier];
    v14 = uniqueIdentifier;
    v18 = uniqueIdentifier2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqualToString:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    title = [(WFContextualActionCalendarEventDescriptor *)v6 title];
    title2 = [(WFContextualActionCalendarEventDescriptor *)self title];
    v20 = title;
    v23 = title2;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqualToString:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  eventIdentifier = [(WFContextualActionCalendarEventDescriptor *)self eventIdentifier];
  v5 = [v3 combineContentsOfPropertyListObject:eventIdentifier];

  uniqueIdentifier = [(WFContextualActionCalendarEventDescriptor *)self uniqueIdentifier];
  v7 = [v3 combineContentsOfPropertyListObject:uniqueIdentifier];

  title = [(WFContextualActionCalendarEventDescriptor *)self title];
  v9 = [v3 combineContentsOfPropertyListObject:title];

  v10 = [v3 finalize];
  return v10;
}

- (WFContextualActionCalendarEventDescriptor)initWithEventIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier title:(id)title
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  titleCopy = title;
  if (identifierCopy)
  {
    if (uniqueIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionCalendarEventDescriptor.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];

    if (titleCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFContextualActionCalendarEventDescriptor.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"eventIdentifier"}];

  if (!uniqueIdentifierCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (titleCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFContextualActionCalendarEventDescriptor.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"title"}];

LABEL_4:
  v24.receiver = self;
  v24.super_class = WFContextualActionCalendarEventDescriptor;
  v12 = [(WFContextualActionCalendarEventDescriptor *)&v24 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    eventIdentifier = v12->_eventIdentifier;
    v12->_eventIdentifier = v13;

    v15 = [uniqueIdentifierCopy copy];
    uniqueIdentifier = v12->_uniqueIdentifier;
    v12->_uniqueIdentifier = v15;

    v17 = [titleCopy copy];
    title = v12->_title;
    v12->_title = v17;

    v19 = v12;
  }

  return v12;
}

@end