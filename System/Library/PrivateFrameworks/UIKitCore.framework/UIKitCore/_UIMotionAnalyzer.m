@interface _UIMotionAnalyzer
- (_UIMotionAnalyzer)init;
- (_UIMotionAnalyzer)initWithSettings:(id)a3;
- (id)description;
@end

@implementation _UIMotionAnalyzer

- (_UIMotionAnalyzer)initWithSettings:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _UIMotionAnalyzer;
  v6 = [(_UIMotionAnalyzer *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    v8 = objc_alloc_init(_UIViewerRelativeDevicePose);
    viewerRelativeDevicePose = v7->_viewerRelativeDevicePose;
    v7->_viewerRelativeDevicePose = v8;

    v10 = v7;
  }

  return v7;
}

- (_UIMotionAnalyzer)init
{
  v3 = objc_alloc_init(_UIMotionAnalyzerSettings);
  v4 = [(_UIMotionAnalyzer *)self initWithSettings:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  settings = self->_settings;
  v7 = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  v8 = [v3 stringWithFormat:@"<%@: %p settings=%@ viewerRelativeDevicePose=%@>", v5, self, settings, v7];

  return v8;
}

@end