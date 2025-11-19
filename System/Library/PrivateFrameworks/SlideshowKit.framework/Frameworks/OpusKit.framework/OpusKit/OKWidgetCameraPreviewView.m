@interface OKWidgetCameraPreviewView
- (AVCaptureSession)session;
- (void)dealloc;
- (void)setSession:(id)a3;
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
  v2 = [(OKWidgetCameraPreviewView *)self layer];

  return [v2 session];
}

- (void)setSession:(id)a3
{
  v4 = [(OKWidgetCameraPreviewView *)self layer];

  [v4 setSession:a3];
}

@end