@interface REMAlarmContactTrigger
- (BOOL)isEqual:(id)a3;
- (REMAlarmContactTrigger)initWithCoder:(id)a3;
- (REMAlarmContactTrigger)initWithContactRepresentation:(id)a3;
- (REMAlarmContactTrigger)initWithObjectID:(id)a3 contactRepresentation:(id)a4;
- (id)_deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAlarmContactTrigger

- (REMAlarmContactTrigger)initWithObjectID:(id)a3 contactRepresentation:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = REMAlarmContactTrigger;
  v8 = [(REMAlarmTrigger *)&v11 initWithObjectID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactRepresentation, a4);
  }

  return v9;
}

- (REMAlarmContactTrigger)initWithContactRepresentation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMAlarmContactTrigger;
  v6 = [(REMAlarmTrigger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactRepresentation, a3);
  }

  return v7;
}

- (REMAlarmContactTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMAlarmContactTrigger;
  v5 = [(REMAlarmTrigger *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactRepresentation"];
    contactRepresentation = v5->_contactRepresentation;
    v5->_contactRepresentation = v6;
  }

  return v5;
}

- (id)_deepCopy
{
  v3 = [REMAlarmContactTrigger alloc];
  v4 = [(REMAlarmContactTrigger *)self contactRepresentation];
  v5 = [(REMAlarmContactTrigger *)v3 initWithContactRepresentation:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMAlarmContactTrigger *)v6 contactRepresentation];
      v8 = [(REMAlarmContactTrigger *)self contactRepresentation];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(REMAlarmContactTrigger *)v6 contactRepresentation];
        v10 = [(REMAlarmContactTrigger *)self contactRepresentation];
        v11 = [v9 isEqual:v10];
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
  v2 = [(REMAlarmContactTrigger *)self contactRepresentation];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = REMAlarmContactTrigger;
  v4 = [(REMAlarmContactTrigger *)&v8 description];
  v5 = [(REMAlarmContactTrigger *)self contactRepresentation];
  v6 = [v3 stringWithFormat:@"%@ {contact: %@}", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = REMAlarmContactTrigger;
  v4 = a3;
  [(REMAlarmTrigger *)&v6 encodeWithCoder:v4];
  v5 = [(REMAlarmContactTrigger *)self contactRepresentation:v6.receiver];
  [v4 encodeObject:v5 forKey:@"contactRepresentation"];
}

@end