@interface VFXMetalWireframeResource
- (void)dealloc;
@end

@implementation VFXMetalWireframeResource

- (void)dealloc
{
  CFRelease(self->material);
  CFRelease(self->program);
  programHashCode = self->programHashCode;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF20BEE8;
  block[3] = &unk_1E7A79EE8;
  block[4] = programHashCode;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v4.receiver = self;
  v4.super_class = VFXMetalWireframeResource;
  [(VFXMetalWireframeResource *)&v4 dealloc];
}

@end