@interface TUMomentsMessageDescriptor
- (TUMomentsMessageDescriptor)initWithCoder:(id)a3;
- (TUMomentsMessageDescriptor)initWithMessageUUID:(id)a3 videoURL:(id)a4 thumbnailURL:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUMomentsMessageDescriptor

- (TUMomentsMessageDescriptor)initWithMessageUUID:(id)a3 videoURL:(id)a4 thumbnailURL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUMomentsMessageDescriptor;
  v12 = [(TUMomentsMessageDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageUUID, a3);
    objc_storeStrong(&v13->_videoURL, a4);
    objc_storeStrong(&v13->_thumbnailURL, a5);
  }

  return v13;
}

- (TUMomentsMessageDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_messageUUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_videoURL);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_thumbnailURL);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = [(TUMomentsMessageDescriptor *)self initWithMessageUUID:v7 videoURL:v10 thumbnailURL:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsMessageDescriptor *)self messageUUID];
  v6 = NSStringFromSelector(sel_messageUUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUMomentsMessageDescriptor *)self videoURL];
  v8 = NSStringFromSelector(sel_videoURL);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(TUMomentsMessageDescriptor *)self thumbnailURL];
  v9 = NSStringFromSelector(sel_thumbnailURL);
  [v4 encodeObject:v10 forKey:v9];
}

@end