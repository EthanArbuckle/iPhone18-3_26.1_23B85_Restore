@interface PICompositionExporterVideoOptions
- (PICompositionExporterVideoOptions)init;
- (id)description;
@end

@implementation PICompositionExporterVideoOptions

- (id)description
{
  v13 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  priority = [(PICompositionExporterOptions *)self priority];
  colorSpace = [(PICompositionExporterOptions *)self colorSpace];
  scalePolicy = [(PICompositionExporterOptions *)self scalePolicy];
  videoCodecType = [(PICompositionExporterVideoOptions *)self videoCodecType];
  if ([(PICompositionExporterVideoOptions *)self bypassOutputSettingsIfNoComposition])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(PICompositionExporterVideoOptions *)self applyVideoOrientationAsMetadata])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(PICompositionExporterVideoOptions *)self requireHardwareEncoder])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v13 stringWithFormat:@"<%@:%p - priority: %@, color space: %@, scale policy: %@, video codec type: %@, bypass settings: %@, orientation as metadata: %@, hardware encoder: %@>", v3, self, priority, colorSpace, scalePolicy, videoCodecType, v8, v9, v10];

  return v11;
}

- (PICompositionExporterVideoOptions)init
{
  v4.receiver = self;
  v4.super_class = PICompositionExporterVideoOptions;
  v2 = [(PICompositionExporterOptions *)&v4 init];
  [(PICompositionExporterOptions *)v2 setColorSpace:0];
  return v2;
}

@end