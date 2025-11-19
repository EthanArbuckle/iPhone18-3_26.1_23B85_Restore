@interface ARSessionFrameObserver
- (void)session:(id)a3 didUpdateFrame:(id)a4;
@end

@implementation ARSessionFrameObserver

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 camera];
  [v8 transform];
  v14[0] = v9;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;

  f = self->_callback.__f_.__f_;
  if (f)
  {
    (*(*f + 48))(f, v14);
  }
}

@end