@interface UITextDropRequest
- (UITextDropRequest)initWithPosition:(id)position range:(id)range inSession:(id)session;
@end

@implementation UITextDropRequest

- (UITextDropRequest)initWithPosition:(id)position range:(id)range inSession:(id)session
{
  positionCopy = position;
  rangeCopy = range;
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = UITextDropRequest;
  v12 = [(UITextDropRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dropPosition, position);
    objc_storeStrong(&v13->_dropRange, range);
    objc_storeStrong(&v13->_dropSession, session);
  }

  return v13;
}

@end