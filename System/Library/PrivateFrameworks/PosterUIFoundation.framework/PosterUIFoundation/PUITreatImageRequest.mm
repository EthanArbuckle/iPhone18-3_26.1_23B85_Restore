@interface PUITreatImageRequest
+ (NSSet)secureCodableTreatmentClasses;
- (BOOL)configureState:(PUIRenderState *)state error:(id *)error;
- (CGSize)imagePixelSize;
- (CGSize)requestedOutputSizeInPixels;
- (CGSize)requestedOutputSizeInPointsAtScale:(double)scale;
- (PUITreatImageRequest)initWithCoder:(id)coder;
- (PUITreatImageRequest)initWithImage:(CGImage *)image scale:(double)scale downscaleFactor:(double)factor treatment:(id)treatment;
- (PUITreatImageRequest)initWithImage:(id)image downscaleFactor:(double)factor treatment:(id)treatment;
- (id)CIImage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)treatmentOptions;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)setIdentifier:(id)identifier;
@end

@implementation PUITreatImageRequest

+ (NSSet)secureCodableTreatmentClasses
{
  if (secureCodableTreatmentClasses_onceToken != -1)
  {
    +[PUITreatImageRequest secureCodableTreatmentClasses];
  }

  v3 = secureCodableTreatmentClasses_result;

  return v3;
}

void __53__PUITreatImageRequest_secureCodableTreatmentClasses__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:3];
  v2 = [v0 setWithArray:{v1, v4, v5}];
  v3 = secureCodableTreatmentClasses_result;
  secureCodableTreatmentClasses_result = v2;
}

- (PUITreatImageRequest)initWithImage:(CGImage *)image scale:(double)scale downscaleFactor:(double)factor treatment:(id)treatment
{
  treatmentCopy = treatment;
  v12 = [(PUITreatImageRequest *)self init];
  if (v12)
  {
    v12->_image = CGImageRetain(image);
    v12->_scale = scale;
    v12->_downscaleFactor = factor;
    objc_storeStrong(&v12->_treatment, treatment);
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"TreatImage(%@)", v15];
    identifier = v12->_identifier;
    v12->_identifier = v16;
  }

  return v12;
}

- (PUITreatImageRequest)initWithImage:(id)image downscaleFactor:(double)factor treatment:(id)treatment
{
  imageCopy = image;
  treatmentCopy = treatment;
  v11 = [(PUITreatImageRequest *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_codableImage, image);
    [imageCopy scale];
    v12->_scale = v13;
    v12->_image = CGImageRetain([imageCopy CGImage]);
    v12->_downscaleFactor = factor;
    objc_storeStrong(&v12->_treatment, treatment);
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"TreatImage(%@)", v16];
    identifier = v12->_identifier;
    v12->_identifier = v17;
  }

  return v12;
}

- (void)setIdentifier:(id)identifier
{
  if (identifier)
  {
    self->_identifier = [identifier copy];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    v6 = [v4 stringWithFormat:@"TreatImage(%@)", objc_claimAutoreleasedReturnValue()];
    identifier = self->_identifier;
    self->_identifier = v6;
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = PUITreatImageRequest;
  [(PUITreatImageRequest *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  codableImage = self->_codableImage;
  v6 = [PUITreatImageRequest allocWithZone:?];
  if (codableImage)
  {
    v7 = self->_codableImage;
    downscaleFactor = self->_downscaleFactor;
    v9 = [(PUIImageTreatment *)self->_treatment copyWithZone:zone];
    v10 = [(PUITreatImageRequest *)v6 initWithImage:v7 downscaleFactor:v9 treatment:downscaleFactor];
  }

  else
  {
    image = self->_image;
    scale = self->_scale;
    v13 = self->_downscaleFactor;
    v9 = [(PUIImageTreatment *)self->_treatment copyWithZone:zone];
    v10 = [(PUITreatImageRequest *)v6 initWithImage:image scale:v9 downscaleFactor:scale treatment:v13];
  }

  v14 = v10;

  return v14;
}

- (CGSize)requestedOutputSizeInPointsAtScale:(double)scale
{
  [(PUITreatImageRequest *)self requestedOutputSizeInPixels];
  v5 = v4 * scale;
  v7 = v6 * scale;
  result.height = v7;
  result.width = v5;
  return result;
}

- (CGSize)requestedOutputSizeInPixels
{
  [(PUITreatImageRequest *)self imagePixelSize];
  downscaleFactor = self->_downscaleFactor;
  v5 = v4 / downscaleFactor;
  v7 = v6 / downscaleFactor;
  result.height = v7;
  result.width = v5;
  return result;
}

- (CGSize)imagePixelSize
{
  Width = CGImageGetWidth(self->_image);
  Height = CGImageGetHeight(self->_image);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (id)CIImage
{
  image = self->_image;
  if (image)
  {
    v4 = [MEMORY[0x1E695F658] imageWithCGImage:image options:0];
    memset(&v8, 0, sizeof(v8));
    CGAffineTransformMakeScale(&v8, 1.0 / self->_downscaleFactor, 1.0 / self->_downscaleFactor);
    v7 = v8;
    v5 = [v4 imageByApplyingTransform:&v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)configureState:(PUIRenderState *)state error:(id *)error
{
  v7 = +[PUIImageContainerLayer layer];
  magentaColor = [MEMORY[0x1E69DC888] magentaColor];
  [v7 setBackgroundColor:{objc_msgSend(magentaColor, "CGColor")}];

  [v7 setDelegate:self];
  treatmentOptions = [(PUITreatImageRequest *)self treatmentOptions];
  imageLayer = [v7 imageLayer];
  [imageLayer setContents:self->_image];

  [v7 setNeedsLayout];
  v11 = [(PUITreatImageRequest *)self usesCoreImageForTreatment:self->_treatment];
  if (v11)
  {
    cIImage = [(PUITreatImageRequest *)self CIImage];
    treatment = self->_treatment;
    v31 = 0;
    v14 = [(PUIImageTreatment *)treatment applyToImage:cIImage options:treatmentOptions error:&v31];
    v15 = v31;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = self->_treatment;
  v30 = 0;
  v17 = [(PUIImageTreatment *)v16 commitToRenderingTree:v7 options:treatmentOptions error:&v30];
  v18 = v30;
  v19 = v18;
  if (v14)
  {
    v20 = v11;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v17;
  if ((v20 | v17))
  {
    [(PUITreatImageRequest *)self requestedOutputSizeInPixels];
    *&v26 = v22;
    *(&v26 + 1) = v23;
    [treatmentOptions reducedScale];
    v27 = v24;
    v28 = v7;
    v29 = v14;
    __copy_assignment_8_8_t0w24_s24_s32(state, &v26);
  }

  else if (error)
  {
    if (v15)
    {
      v18 = v15;
    }

    *error = v18;
  }

  return v21 & 1;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  superlayer = [layerCopy superlayer];
  v4 = superlayer;
  if (superlayer)
  {
    [superlayer bounds];
    [layerCopy setFrame:?];
  }
}

- (PUITreatImageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PUITreatImageRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    [coderCopy decodeDoubleForKey:@"DownscaleFactor"];
    v5->_downscaleFactor = v8;
    secureCodableTreatmentClasses = [objc_opt_class() secureCodableTreatmentClasses];
    v10 = [coderCopy decodeObjectOfClasses:secureCodableTreatmentClasses forKey:@"Treatment"];
    treatment = v5->_treatment;
    v5->_treatment = v10;

    if (!v5->_treatment || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Image"], v12 = objc_claimAutoreleasedReturnValue(), codableImage = v5->_codableImage, v5->_codableImage = v12, codableImage, (v14 = v5->_codableImage) == 0))
    {
      v16 = 0;
      goto LABEL_7;
    }

    [(PUICodableImage *)v14 scale];
    v5->_scale = v15;
    v5->_image = CGImageRetain([(PUICodableImage *)v5->_codableImage CGImage]);
  }

  v16 = v5;
LABEL_7:

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codableImage = self->_codableImage;
  v8 = coderCopy;
  if (!codableImage)
  {
    v6 = [[PUICodableImage alloc] initWithCGImage:self->_image scale:0 error:self->_scale];
    v7 = self->_codableImage;
    self->_codableImage = v6;

    coderCopy = v8;
    codableImage = self->_codableImage;
  }

  [coderCopy encodeObject:codableImage forKey:@"Image"];
  [v8 encodeObject:self->_treatment forKey:@"Treatment"];
  [v8 encodeDouble:@"DownscaleFactor" forKey:self->_downscaleFactor];
  [v8 encodeObject:self->_identifier forKey:@"Identifier"];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PUITreatImageRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  identifier = [(PUITreatImageRequest *)self identifier];
  [v4 appendString:identifier withName:@"identifier"];

  v6 = [v4 appendObject:-[PUITreatImageRequest image](self withName:{"image"), @"image"}];
  [(PUITreatImageRequest *)self scale];
  v7 = [v4 appendDouble:@"scale" withName:3 decimalPrecision:?];
  [(PUITreatImageRequest *)self downscaleFactor];
  v8 = [v4 appendDouble:@"downscaleFactor" withName:3 decimalPrecision:?];
  treatment = [(PUITreatImageRequest *)self treatment];
  v10 = [v4 appendObject:treatment withName:@"treatment"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PUITreatImageRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)treatmentOptions
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PUIImageTreatment *)self->_treatment canInterpolateToLowerScales])
  {
    v3 = [PUIImageTreatmentOptions alloc];
    if (v3)
    {
      scale = self->_scale;
      v3 = [(PUIImageTreatmentOptions *)v3 init];
      if (v3)
      {
        v5 = 1.0;
LABEL_8:
        v3->_originalScale = scale;
        v3->_reducedScale = v5;
      }
    }
  }

  else
  {
    v3 = [PUIImageTreatmentOptions alloc];
    if (v3)
    {
      scale = self->_scale;
      v3 = [(PUIImageTreatmentOptions *)v3 init];
      v5 = scale;
      if (v3)
      {
        goto LABEL_8;
      }
    }
  }

  return v3;
}

@end