@interface SUCorePersistedActivity
- (BOOL)isEqual:(id)a3;
- (SUCorePersistedActivity)initWithCoder:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCorePersistedActivity

- (id)init:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUCorePersistedActivity;
  v9 = [(SUCorePersistedActivity *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_activityName, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x277D643F8];
      v6 = [(SUCorePersistedActivity *)v4 activityName];
      v7 = [v5 stringIsEqual:v6 to:self->_activityName];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (SUCorePersistedActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUCorePersistedActivity;
  v5 = [(SUCorePersistedActivity *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityName"];
    activityName = v5->_activityName;
    v5->_activityName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityOptions"];
    activityOptions = v5->_activityOptions;
    v5->_activityOptions = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activityName = self->_activityName;
  v5 = a3;
  [v5 encodeObject:activityName forKey:@"activityName"];
  [v5 encodeObject:self->_activityOptions forKey:@"activityOptions"];
}

@end