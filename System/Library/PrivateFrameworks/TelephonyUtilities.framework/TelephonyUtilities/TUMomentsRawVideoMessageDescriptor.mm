@interface TUMomentsRawVideoMessageDescriptor
- (TUMomentsRawVideoMessageDescriptor)initWithCoder:(id)a3;
- (TUMomentsRawVideoMessageDescriptor)initWithUUID:(id)a3 videoURL:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUMomentsRawVideoMessageDescriptor

- (TUMomentsRawVideoMessageDescriptor)initWithUUID:(id)a3 videoURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUMomentsRawVideoMessageDescriptor;
  v9 = [(TUMomentsRawVideoMessageDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, a3);
    objc_storeStrong(&v10->_videoURL, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsRawVideoMessageDescriptor *)self uuid];
  v6 = NSStringFromSelector(sel_uuid);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(TUMomentsRawVideoMessageDescriptor *)self videoURL];
  v7 = NSStringFromSelector(sel_videoURL);
  [v4 encodeObject:v8 forKey:v7];
}

- (TUMomentsRawVideoMessageDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_uuid);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_videoURL);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

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
    v12 = 0;
  }

  else
  {
    self = [(TUMomentsRawVideoMessageDescriptor *)self initWithUUID:v7 videoURL:v10];
    v12 = self;
  }

  return v12;
}

@end