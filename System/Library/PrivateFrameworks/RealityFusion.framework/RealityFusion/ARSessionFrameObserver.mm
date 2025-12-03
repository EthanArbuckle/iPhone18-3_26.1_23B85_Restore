@interface ARSessionFrameObserver
- (void)session:(id)session didUpdateFrame:(id)frame;
@end

@implementation ARSessionFrameObserver

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  camera = [frameCopy camera];
  [camera transform];
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