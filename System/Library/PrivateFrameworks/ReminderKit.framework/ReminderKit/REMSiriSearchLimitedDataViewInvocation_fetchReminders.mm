@interface REMSiriSearchLimitedDataViewInvocation_fetchReminders
- (BOOL)isEqual:(id)equal;
- (REMSiriSearchLimitedDataViewInvocation_fetchReminders)initWithCoder:(id)coder;
- (REMSiriSearchLimitedDataViewInvocation_fetchReminders)initWithTitle:(id)title dueAfter:(id)after dueBefore:(id)before isCompleted:(id)completed hasLocation:(id)location location:(id)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSiriSearchLimitedDataViewInvocation_fetchReminders

- (REMSiriSearchLimitedDataViewInvocation_fetchReminders)initWithTitle:(id)title dueAfter:(id)after dueBefore:(id)before isCompleted:(id)completed hasLocation:(id)location location:(id)a8
{
  titleCopy = title;
  afterCopy = after;
  beforeCopy = before;
  completedCopy = completed;
  locationCopy = location;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = REMSiriSearchLimitedDataViewInvocation_fetchReminders;
  v20 = [(REMStoreInvocationValueStorage *)&v34 init];
  if (v20)
  {
    v21 = [titleCopy copy];
    title = v20->_title;
    v20->_title = v21;

    v23 = [beforeCopy copy];
    dueBefore = v20->_dueBefore;
    v20->_dueBefore = v23;

    v25 = [afterCopy copy];
    dueAfter = v20->_dueAfter;
    v20->_dueAfter = v25;

    v27 = [completedCopy copy];
    completed = v20->_completed;
    v20->_completed = v27;

    v29 = [locationCopy copy];
    hasLocation = v20->_hasLocation;
    v20->_hasLocation = v29;

    v31 = [v19 copy];
    location = v20->_location;
    v20->_location = v31;
  }

  return v20;
}

- (REMSiriSearchLimitedDataViewInvocation_fetchReminders)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dueBefore"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dueAfter"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completed"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasLocation"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  v11 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self initWithTitle:v5 dueAfter:v7 dueBefore:v6 isCompleted:v8 hasLocation:v9 location:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  dueBefore = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueBefore];
  [coderCopy encodeObject:dueBefore forKey:@"dueBefore"];

  dueAfter = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueAfter];
  [coderCopy encodeObject:dueAfter forKey:@"dueAfter"];

  completed = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self completed];
  [coderCopy encodeObject:completed forKey:@"completed"];

  hasLocation = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self hasLocation];
  [coderCopy encodeObject:hasLocation forKey:@"hasLocation"];

  location = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self location];
  [coderCopy encodeObject:location forKey:@"location"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  title = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self title];
  title2 = [equalCopy title];
  v7 = title2;
  if (title == title2)
  {
  }

  else
  {
    title3 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self title];
    title4 = [equalCopy title];
    v10 = [title3 isEqual:title4];

    if (!v10)
    {
      goto LABEL_20;
    }
  }

  dueBefore = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueBefore];
  dueBefore2 = [equalCopy dueBefore];
  v13 = dueBefore2;
  if (dueBefore == dueBefore2)
  {
  }

  else
  {
    dueBefore3 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueBefore];
    dueBefore4 = [equalCopy dueBefore];
    v16 = [dueBefore3 isEqual:dueBefore4];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  dueAfter = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueAfter];
  dueAfter2 = [equalCopy dueAfter];
  v19 = dueAfter2;
  if (dueAfter == dueAfter2)
  {
  }

  else
  {
    dueAfter3 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueAfter];
    dueAfter4 = [equalCopy dueAfter];
    v22 = [dueAfter3 isEqual:dueAfter4];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  completed = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self completed];
  completed2 = [equalCopy completed];
  v25 = completed2;
  if (completed == completed2)
  {
  }

  else
  {
    completed3 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self completed];
    completed4 = [equalCopy completed];
    v28 = [completed3 isEqual:completed4];

    if (!v28)
    {
      goto LABEL_20;
    }
  }

  hasLocation = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self hasLocation];
  hasLocation2 = [equalCopy hasLocation];
  v31 = hasLocation2;
  if (hasLocation == hasLocation2)
  {
  }

  else
  {
    hasLocation3 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self hasLocation];
    hasLocation4 = [equalCopy hasLocation];
    v34 = [hasLocation3 isEqual:hasLocation4];

    if (!v34)
    {
LABEL_20:
      v35 = 0;
      goto LABEL_21;
    }
  }

  location = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self location];
  location2 = [equalCopy location];
  if (location == location2)
  {
    v35 = 1;
  }

  else
  {
    location3 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self location];
    location4 = [equalCopy location];
    v35 = [location3 isEqual:location4];
  }

LABEL_21:
  return v35 & 1;
}

- (unint64_t)hash
{
  title = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self title];
  v4 = [title hash];
  dueBefore = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueBefore];
  v6 = [dueBefore hash] ^ v4;
  dueAfter = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueAfter];
  v8 = [dueAfter hash];
  completed = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self completed];
  v10 = v6 ^ v8 ^ [completed hash];
  hasLocation = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self hasLocation];
  v12 = [hasLocation hash];
  location = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self location];
  v14 = v12 ^ [location hash];

  return v10 ^ v14;
}

@end