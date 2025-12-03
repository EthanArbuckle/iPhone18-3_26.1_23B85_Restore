@interface SUCorePersistedActivity
- (BOOL)isEqual:(id)equal;
- (SUCorePersistedActivity)initWithCoder:(id)coder;
- (id)init:(id)init options:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePersistedActivity

- (id)init:(id)init options:(id)options
{
  initCopy = init;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = SUCorePersistedActivity;
  v9 = [(SUCorePersistedActivity *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_activityName, init);
    objc_storeStrong(p_isa + 2, options);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x277D643F8];
      activityName = [(SUCorePersistedActivity *)equalCopy activityName];
      v7 = [v5 stringIsEqual:activityName to:self->_activityName];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (SUCorePersistedActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SUCorePersistedActivity;
  v5 = [(SUCorePersistedActivity *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityName"];
    activityName = v5->_activityName;
    v5->_activityName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityOptions"];
    activityOptions = v5->_activityOptions;
    v5->_activityOptions = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activityName = self->_activityName;
  coderCopy = coder;
  [coderCopy encodeObject:activityName forKey:@"activityName"];
  [coderCopy encodeObject:self->_activityOptions forKey:@"activityOptions"];
}

@end