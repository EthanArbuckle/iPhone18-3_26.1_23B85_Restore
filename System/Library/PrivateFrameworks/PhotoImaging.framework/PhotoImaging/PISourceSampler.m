@interface PISourceSampler
- (id)_pipelineFilters;
@end

@implementation PISourceSampler

- (id)_pipelineFilters
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[PIPipelineFilters sourceFilterNoOrientation];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end