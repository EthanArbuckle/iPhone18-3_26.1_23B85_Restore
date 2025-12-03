@interface TUMomentsRawVideoMessageDescriptor
- (TUMomentsRawVideoMessageDescriptor)initWithCoder:(id)coder;
- (TUMomentsRawVideoMessageDescriptor)initWithUUID:(id)d videoURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUMomentsRawVideoMessageDescriptor

- (TUMomentsRawVideoMessageDescriptor)initWithUUID:(id)d videoURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = TUMomentsRawVideoMessageDescriptor;
  v9 = [(TUMomentsRawVideoMessageDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    objc_storeStrong(&v10->_videoURL, l);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(TUMomentsRawVideoMessageDescriptor *)self uuid];
  v6 = NSStringFromSelector(sel_uuid);
  [coderCopy encodeObject:uuid forKey:v6];

  videoURL = [(TUMomentsRawVideoMessageDescriptor *)self videoURL];
  v7 = NSStringFromSelector(sel_videoURL);
  [coderCopy encodeObject:videoURL forKey:v7];
}

- (TUMomentsRawVideoMessageDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_uuid);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_videoURL);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  if (v7)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TUMomentsRawVideoMessageDescriptor *)self initWithUUID:v7 videoURL:v10];
    selfCopy = self;
  }

  return selfCopy;
}

@end