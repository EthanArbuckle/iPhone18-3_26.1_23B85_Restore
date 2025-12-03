@interface TUMomentsMessageDescriptor
- (TUMomentsMessageDescriptor)initWithCoder:(id)coder;
- (TUMomentsMessageDescriptor)initWithMessageUUID:(id)d videoURL:(id)l thumbnailURL:(id)rL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUMomentsMessageDescriptor

- (TUMomentsMessageDescriptor)initWithMessageUUID:(id)d videoURL:(id)l thumbnailURL:(id)rL
{
  dCopy = d;
  lCopy = l;
  rLCopy = rL;
  v15.receiver = self;
  v15.super_class = TUMomentsMessageDescriptor;
  v12 = [(TUMomentsMessageDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageUUID, d);
    objc_storeStrong(&v13->_videoURL, l);
    objc_storeStrong(&v13->_thumbnailURL, rL);
  }

  return v13;
}

- (TUMomentsMessageDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_messageUUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_videoURL);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_thumbnailURL);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = [(TUMomentsMessageDescriptor *)self initWithMessageUUID:v7 videoURL:v10 thumbnailURL:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  messageUUID = [(TUMomentsMessageDescriptor *)self messageUUID];
  v6 = NSStringFromSelector(sel_messageUUID);
  [coderCopy encodeObject:messageUUID forKey:v6];

  videoURL = [(TUMomentsMessageDescriptor *)self videoURL];
  v8 = NSStringFromSelector(sel_videoURL);
  [coderCopy encodeObject:videoURL forKey:v8];

  thumbnailURL = [(TUMomentsMessageDescriptor *)self thumbnailURL];
  v9 = NSStringFromSelector(sel_thumbnailURL);
  [coderCopy encodeObject:thumbnailURL forKey:v9];
}

@end