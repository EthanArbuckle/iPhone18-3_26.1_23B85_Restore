@interface NTKKaleidoscopeQuad
+ (id)quadWithShaderType:(unint64_t)a3;
- (NTKKaleidoscopeQuad)initWithShaderType:(unint64_t)a3;
- (id)geomBuffer;
- (id)mtlPipelineBlend;
- (id)mtlPipelineOpaque;
- (void)dealloc;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)setupForQuadView:(id)a3;
@end

@implementation NTKKaleidoscopeQuad

- (NTKKaleidoscopeQuad)initWithShaderType:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NTKKaleidoscopeQuad;
  result = [(NTKKaleidoscopeQuad *)&v10 init];
  if (result)
  {
    result->_shaderType = a3;
    result->_alpha = 1.0;
    __asm { FMOV            V0.2S, #1.0 }

    *result->_aspect = _D0;
    result->_lineThickness = 0.01;
  }

  return result;
}

+ (id)quadWithShaderType:(unint64_t)a3
{
  v3 = [[NTKKaleidoscopeQuad alloc] initWithShaderType:a3];

  return v3;
}

- (void)dealloc
{
  [(NTKKaleidoscopeResourceManager *)self->_loader removeClient];
  loader = self->_loader;
  self->_loader = 0;

  v4.receiver = self;
  v4.super_class = NTKKaleidoscopeQuad;
  [(NTKKaleidoscopeQuad *)&v4 dealloc];
}

- (void)setupForQuadView:(id)a3
{
  v20 = a3;
  [v20 bounds];
  v5 = v4;
  v7 = v6;
  __asm { FMOV            V5.2S, #1.0 }

  LODWORD(v13) = LODWORD(_D5);
  if (v6 >= v4)
  {
    *&_D5 = v7 / v5;
    v14 = _D5;
  }

  else
  {
    *(&v13 + 1) = v5 / v7;
    v14 = v13;
  }

  *self->_aspect = v14;
  v15 = +[NTKKaleidoscopeResourceManager sharedInstanceWithPixelFormat:](NTKKaleidoscopeResourceManager, "sharedInstanceWithPixelFormat:", [v20 colorPixelFormat]);
  loader = self->_loader;
  self->_loader = v15;

  [(NTKKaleidoscopeResourceManager *)self->_loader addClient];
  geomBuffer = self->_geomBuffer;
  self->_geomBuffer = 0;

  mtlPipelineOpaque = self->_mtlPipelineOpaque;
  self->_mtlPipelineOpaque = 0;

  mtlPipelineBlend = self->_mtlPipelineBlend;
  self->_mtlPipelineBlend = 0;
}

- (id)geomBuffer
{
  geomBuffer = self->_geomBuffer;
  if (!geomBuffer)
  {
    v4 = [(NTKKaleidoscopeResourceManager *)self->_loader getGeometryBuffer];
    v5 = self->_geomBuffer;
    self->_geomBuffer = v4;

    geomBuffer = self->_geomBuffer;
  }

  return geomBuffer;
}

- (id)mtlPipelineOpaque
{
  mtlPipelineOpaque = self->_mtlPipelineOpaque;
  if (!mtlPipelineOpaque)
  {
    v4 = [(NTKKaleidoscopeResourceManager *)self->_loader getPipelineForShaderType:self->_shaderType blending:0];
    v5 = self->_mtlPipelineOpaque;
    self->_mtlPipelineOpaque = v4;

    mtlPipelineOpaque = self->_mtlPipelineOpaque;
  }

  return mtlPipelineOpaque;
}

- (id)mtlPipelineBlend
{
  mtlPipelineBlend = self->_mtlPipelineBlend;
  if (!mtlPipelineBlend)
  {
    v4 = [(NTKKaleidoscopeResourceManager *)self->_loader getPipelineForShaderType:self->_shaderType blending:1];
    v5 = self->_mtlPipelineBlend;
    self->_mtlPipelineBlend = v4;

    mtlPipelineBlend = self->_mtlPipelineBlend;
  }

  return mtlPipelineBlend;
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  v4 = a3;
  kdebug_trace();
  [(NTKKaleidoscopeQuad *)self alpha];
  v6 = v5;
  v32 = v5;
  if (([(NTKKaleidoscopeQuad *)self isOpaque]& 1) != 0 || v6 >= 1.0)
  {
    v8 = [(NTKKaleidoscopeQuad *)self mtlPipelineOpaque];
    [v4 setRenderPipelineState:v8];
  }

  else
  {
    v7 = [(NTKKaleidoscopeQuad *)self mtlPipelineBlend];
    [v4 setRenderPipelineState:v7];

    [v4 setFragmentBytes:&v32 length:4 atIndex:1];
  }

  v9 = [(NTKKaleidoscopeQuad *)self geomBuffer];
  [v4 setVertexBuffer:v9 offset:0 atIndex:0];

  v10 = [(NTKKaleidoscopeQuad *)self primaryLumaTexture];
  [v10 rect];
  [(NTKKaleidoscopeQuad *)self sampleRadius:v11];
  v27 = v13;
  [(NTKKaleidoscopeQuad *)self sampleCenter];
  v28 = v14;
  [(NTKKaleidoscopeQuad *)self rotation];
  v29 = v15;
  [(NTKKaleidoscopeQuad *)self dialRadius];
  v30 = v16;
  [(NTKKaleidoscopeQuad *)self lineThickness];
  v31 = v17;

  [v4 setFragmentBytes:&v26 length:48 atIndex:0];
  v18 = [(NTKKaleidoscopeQuad *)self primaryLumaTexture];
  v19 = [v18 atlas];
  [v19 bind:v4 slot:0];

  v20 = [(NTKKaleidoscopeQuad *)self primaryChromaTexture];
  v21 = [v20 atlas];
  [v21 bind:v4 slot:1];

  if (self->_secondaryTexture)
  {
    v22 = [(NTKKaleidoscopeQuad *)self secondaryTexture];
    v23 = [v22 atlas];
    [v23 bind:v4 slot:2];
  }

  [v4 setVertexBytes:self->_aspect length:8 atIndex:1];
  [v4 setVertexBytes:&self->_dialRadius length:4 atIndex:2];
  if (self->_shaderType == 3)
  {
    v24 = 0;
    v25 = 4;
  }

  else
  {
    v24 = 4;
    v25 = 12;
  }

  [v4 drawPrimitives:4 vertexStart:v24 vertexCount:v25];
  kdebug_trace();
}

@end