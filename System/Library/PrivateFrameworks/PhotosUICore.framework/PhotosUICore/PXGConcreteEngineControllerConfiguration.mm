@interface PXGConcreteEngineControllerConfiguration
- (CGSize)referenceSize;
- (NSString)description;
- (PXGConcreteEngineControllerConfiguration)init;
- (PXGConcreteEngineControllerConfiguration)initWithViewEnvironment:(id)environment;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBackgroundColor:(id)color;
- (void)setDeferReferenceSizeChanges:(BOOL)changes;
- (void)setDisplayScale:(double)scale;
- (void)setIsVisible:(BOOL)visible;
- (void)setMediaProvider:(id)provider;
- (void)setReferenceSize:(CGSize)size;
- (void)setRootLayoutPromise:(id)promise;
- (void)setViewEnvironment:(id)environment;
@end

@implementation PXGConcreteEngineControllerConfiguration

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXGConcreteEngineControllerConfiguration *)self referenceSize];
  v6 = NSStringFromCGSize(v10);
  v7 = [v3 stringWithFormat:@"<%@: %p referenceSize: %@>", v5, self, v6];

  return v7;
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
    providerCopy = v6;
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundColor = self->_backgroundColor;
  if (backgroundColor != colorCopy)
  {
    v9 = colorCopy;
    v6 = [(UIColor *)backgroundColor isEqual:colorCopy];
    colorCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v9 copy];
      v8 = self->_backgroundColor;
      self->_backgroundColor = v7;

      [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
      colorCopy = v9;
    }
  }
}

- (void)setDeferReferenceSizeChanges:(BOOL)changes
{
  if (self->_deferReferenceSizeChanges != changes)
  {
    self->_deferReferenceSizeChanges = changes;
    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
  }
}

- (void)setIsVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    self->_isVisible = visible;
    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
  }
}

- (void)setDisplayScale:(double)scale
{
  if (scale <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGConcreteEngineControllerConfiguration.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0 && !isnan(displayScale)"}];
  }

  if (self->_displayScale != scale)
  {
    self->_displayScale = scale;

    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
  }
}

- (void)setReferenceSize:(CGSize)size
{
  if (self->_referenceSize.width != size.width || self->_referenceSize.height != size.height)
  {
    self->_referenceSize = size;
    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
  }
}

- (void)setViewEnvironment:(id)environment
{
  environmentCopy = environment;
  viewEnvironment = self->_viewEnvironment;
  if (viewEnvironment != environmentCopy)
  {
    v9 = environmentCopy;
    v6 = [(PXGViewEnvironment *)viewEnvironment isEqual:environmentCopy];
    environmentCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(PXGViewEnvironment *)v9 copy];
      v8 = self->_viewEnvironment;
      self->_viewEnvironment = v7;

      [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
      environmentCopy = v9;
    }
  }
}

- (void)setRootLayoutPromise:(id)promise
{
  aBlock = promise;
  v4 = _Block_copy(self->_rootLayoutPromise);
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v4 == v5)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = _Block_copy(aBlock);
      rootLayoutPromise = self->_rootLayoutPromise;
      self->_rootLayoutPromise = v8;

      [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXGConcreteEngineControllerConfiguration allocWithZone:zone];
  viewEnvironment = [(PXGConcreteEngineControllerConfiguration *)self viewEnvironment];
  v6 = [(PXGConcreteEngineControllerConfiguration *)v4 initWithViewEnvironment:viewEnvironment];

  rootLayoutPromise = [(PXGConcreteEngineControllerConfiguration *)self rootLayoutPromise];
  [(PXGConcreteEngineControllerConfiguration *)v6 setRootLayoutPromise:rootLayoutPromise];

  viewEnvironment2 = [(PXGConcreteEngineControllerConfiguration *)self viewEnvironment];
  [(PXGConcreteEngineControllerConfiguration *)v6 setViewEnvironment:viewEnvironment2];

  [(PXGConcreteEngineControllerConfiguration *)v6 setIsVisible:[(PXGConcreteEngineControllerConfiguration *)self isVisible]];
  [(PXGConcreteEngineControllerConfiguration *)v6 setDeferReferenceSizeChanges:[(PXGConcreteEngineControllerConfiguration *)self deferReferenceSizeChanges]];
  [(PXGConcreteEngineControllerConfiguration *)self referenceSize];
  [(PXGConcreteEngineControllerConfiguration *)v6 setReferenceSize:?];
  [(PXGConcreteEngineControllerConfiguration *)self displayScale];
  [(PXGConcreteEngineControllerConfiguration *)v6 setDisplayScale:?];
  backgroundColor = [(PXGConcreteEngineControllerConfiguration *)self backgroundColor];
  [(PXGConcreteEngineControllerConfiguration *)v6 setBackgroundColor:backgroundColor];

  mediaProvider = [(PXGConcreteEngineControllerConfiguration *)self mediaProvider];
  [(PXGConcreteEngineControllerConfiguration *)v6 setMediaProvider:mediaProvider];

  v6->_version = [(PXGConcreteEngineControllerConfiguration *)self version];
  return v6;
}

- (PXGConcreteEngineControllerConfiguration)initWithViewEnvironment:(id)environment
{
  environmentCopy = environment;
  v11.receiver = self;
  v11.super_class = PXGConcreteEngineControllerConfiguration;
  v6 = [(PXGConcreteEngineControllerConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_displayScale = 1.0;
    objc_storeStrong(&v6->_viewEnvironment, environment);
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    backgroundColor = v7->_backgroundColor;
    v7->_backgroundColor = blackColor;
  }

  return v7;
}

- (PXGConcreteEngineControllerConfiguration)init
{
  v3 = [off_1E7721720 alloc];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v5 = [v3 initWithView:v4 accessibilityEnabled:0 isBeingFullPageSnapshotted:0];

  v6 = [(PXGConcreteEngineControllerConfiguration *)self initWithViewEnvironment:v5];
  return v6;
}

@end