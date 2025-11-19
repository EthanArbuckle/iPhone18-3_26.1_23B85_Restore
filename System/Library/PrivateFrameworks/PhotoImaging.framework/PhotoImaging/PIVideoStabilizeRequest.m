@interface PIVideoStabilizeRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation PIVideoStabilizeRequest

- (id)newRenderJob
{
  v3 = [(NURenderJob *)[PIVideoStabilizeRenderJob alloc] initWithRequest:self];
  [(PIVideoStabilizeRequest *)self allowedCropFraction];
  [(PIVideoStabilizeRenderJob *)v3 setAllowedCropFraction:?];
  v4 = [(PIVideoStabilizeRequest *)self progressHandler];
  [(PIVideoStabilizeRenderJob *)v3 setProgressHandler:v4];

  [(PIVideoStabilizeRenderJob *)v3 setAllowedAnalysisTypes:[(PIVideoStabilizeRequest *)self allowedAnalysisTypes]];
  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PIVideoStabilizeRequest;
  v4 = [(NURenderRequest *)&v6 copyWithZone:a3];
  [v4 setAllowedCropFraction:self->_allowedCropFraction];
  [v4 setProgressHandler:self->_progressHandler];
  [v4 setAllowedAnalysisTypes:self->_allowedAnalysisTypes];
  return v4;
}

- (void)_commonInit
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PIVideoStabilizeRequest;
  [(NURenderRequest *)&v5 _commonInit];
  self->_allowedCropFraction = 0.1;
  self->_allowedAnalysisTypes = 3;
  v3 = +[PIPipelineFilters sourceFilterNoOrientation];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(NURenderRequest *)self setPipelineFilters:v4];
}

@end