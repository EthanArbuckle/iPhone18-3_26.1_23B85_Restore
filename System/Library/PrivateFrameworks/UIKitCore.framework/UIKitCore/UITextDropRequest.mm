@interface UITextDropRequest
- (UITextDropRequest)initWithPosition:(id)a3 range:(id)a4 inSession:(id)a5;
@end

@implementation UITextDropRequest

- (UITextDropRequest)initWithPosition:(id)a3 range:(id)a4 inSession:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = UITextDropRequest;
  v12 = [(UITextDropRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dropPosition, a3);
    objc_storeStrong(&v13->_dropRange, a4);
    objc_storeStrong(&v13->_dropSession, a5);
  }

  return v13;
}

@end