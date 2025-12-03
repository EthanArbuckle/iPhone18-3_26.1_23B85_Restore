@interface REMAlarmContactTrigger
- (BOOL)isEqual:(id)equal;
- (REMAlarmContactTrigger)initWithCoder:(id)coder;
- (REMAlarmContactTrigger)initWithContactRepresentation:(id)representation;
- (REMAlarmContactTrigger)initWithObjectID:(id)d contactRepresentation:(id)representation;
- (id)_deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAlarmContactTrigger

- (REMAlarmContactTrigger)initWithObjectID:(id)d contactRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = REMAlarmContactTrigger;
  v8 = [(REMAlarmTrigger *)&v11 initWithObjectID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactRepresentation, representation);
  }

  return v9;
}

- (REMAlarmContactTrigger)initWithContactRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = REMAlarmContactTrigger;
  v6 = [(REMAlarmTrigger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactRepresentation, representation);
  }

  return v7;
}

- (REMAlarmContactTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = REMAlarmContactTrigger;
  v5 = [(REMAlarmTrigger *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactRepresentation"];
    contactRepresentation = v5->_contactRepresentation;
    v5->_contactRepresentation = v6;
  }

  return v5;
}

- (id)_deepCopy
{
  v3 = [REMAlarmContactTrigger alloc];
  contactRepresentation = [(REMAlarmContactTrigger *)self contactRepresentation];
  v5 = [(REMAlarmContactTrigger *)v3 initWithContactRepresentation:contactRepresentation];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contactRepresentation = [(REMAlarmContactTrigger *)v6 contactRepresentation];
      contactRepresentation2 = [(REMAlarmContactTrigger *)self contactRepresentation];
      if (contactRepresentation == contactRepresentation2)
      {
        v11 = 1;
      }

      else
      {
        contactRepresentation3 = [(REMAlarmContactTrigger *)v6 contactRepresentation];
        contactRepresentation4 = [(REMAlarmContactTrigger *)self contactRepresentation];
        v11 = [contactRepresentation3 isEqual:contactRepresentation4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (unint64_t)hash
{
  contactRepresentation = [(REMAlarmContactTrigger *)self contactRepresentation];
  v3 = [contactRepresentation hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = REMAlarmContactTrigger;
  v4 = [(REMAlarmContactTrigger *)&v8 description];
  contactRepresentation = [(REMAlarmContactTrigger *)self contactRepresentation];
  v6 = [v3 stringWithFormat:@"%@ {contact: %@}", v4, contactRepresentation];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = REMAlarmContactTrigger;
  coderCopy = coder;
  [(REMAlarmTrigger *)&v6 encodeWithCoder:coderCopy];
  v5 = [(REMAlarmContactTrigger *)self contactRepresentation:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"contactRepresentation"];
}

@end