@interface MRContextState
- (MRContextState)init;
- (void)dealloc;
@end

@implementation MRContextState

- (MRContextState)init
{
  v10.receiver = self;
  v10.super_class = MRContextState;
  v2 = [(MRContextState *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 41) = 0;
    *(v2 + 84) = 1065353216;
    __asm { FMOV            V0.4S, #1.0 }

    *(v2 + 424) = _Q0;
    *(v2 + 414) = 0;
    *(v2 + 417) = 0;
    *(v2 + 55) = 0;
    *(v2 + 56) = 0;
    *(v2 + 69) = objc_alloc_init(NSMutableDictionary);
    v3->_temporaryUniforms = objc_alloc_init(NSMutableDictionary);
  }

  return v3;
}

- (void)dealloc
{
  self->_vertexAttributes = 0;

  self->_temporaryUniforms = 0;
  self->_shaderID = 0;

  self->_shaderArguments = 0;
  v3.receiver = self;
  v3.super_class = MRContextState;
  [(MRContextState *)&v3 dealloc];
}

@end