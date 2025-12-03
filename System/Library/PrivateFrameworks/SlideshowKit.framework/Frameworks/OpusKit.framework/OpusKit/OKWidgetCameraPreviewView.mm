@interface OKWidgetCameraPreviewView
- (AVCaptureSession)session;
- (void)dealloc;
- (void)setSession:(id)session;
@end

@implementation OKWidgetCameraPreviewView

- (void)dealloc
{
  [(OKWidgetCameraPreviewView *)self setSession:0];
  v3.receiver = self;
  v3.super_class = OKWidgetCameraPreviewView;
  [(OFUIView *)&v3 dealloc];
}

- (AVCaptureSession)session
{
  layer = [(OKWidgetCameraPreviewView *)self layer];

  return [layer session];
}

- (void)setSession:(id)session
{
  layer = [(OKWidgetCameraPreviewView *)self layer];

  [layer setSession:session];
}

@end