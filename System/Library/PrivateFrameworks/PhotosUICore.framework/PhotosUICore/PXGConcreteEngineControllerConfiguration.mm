@interface PXGConcreteEngineControllerConfiguration
- (CGSize)referenceSize;
- (NSString)description;
- (PXGConcreteEngineControllerConfiguration)init;
- (PXGConcreteEngineControllerConfiguration)initWithViewEnvironment:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setDeferReferenceSizeChanges:(BOOL)a3;
- (void)setDisplayScale:(double)a3;
- (void)setIsVisible:(BOOL)a3;
- (void)setMediaProvider:(id)a3;
- (void)setReferenceSize:(CGSize)a3;
- (void)setRootLayoutPromise:(id)a3;
- (void)setViewEnvironment:(id)a3;
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

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
    v5 = v6;
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  backgroundColor = self->_backgroundColor;
  if (backgroundColor != v4)
  {
    v9 = v4;
    v6 = [(UIColor *)backgroundColor isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v9 copy];
      v8 = self->_backgroundColor;
      self->_backgroundColor = v7;

      [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
      v4 = v9;
    }
  }
}

- (void)setDeferReferenceSizeChanges:(BOOL)a3
{
  if (self->_deferReferenceSizeChanges != a3)
  {
    self->_deferReferenceSizeChanges = a3;
    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
  }
}

- (void)setIsVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
  }
}

- (void)setDisplayScale:(double)a3
{
  if (a3 <= 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGConcreteEngineControllerConfiguration.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0 && !isnan(displayScale)"}];
  }

  if (self->_displayScale != a3)
  {
    self->_displayScale = a3;

    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
  }
}

- (void)setReferenceSize:(CGSize)a3
{
  if (self->_referenceSize.width != a3.width || self->_referenceSize.height != a3.height)
  {
    self->_referenceSize = a3;
    [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
  }
}

- (void)setViewEnvironment:(id)a3
{
  v4 = a3;
  viewEnvironment = self->_viewEnvironment;
  if (viewEnvironment != v4)
  {
    v9 = v4;
    v6 = [(PXGViewEnvironment *)viewEnvironment isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(PXGViewEnvironment *)v9 copy];
      v8 = self->_viewEnvironment;
      self->_viewEnvironment = v7;

      [(PXGConcreteEngineControllerConfiguration *)self _incrementVersion];
      v4 = v9;
    }
  }
}

- (void)setRootLayoutPromise:(id)a3
{
  aBlock = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXGConcreteEngineControllerConfiguration allocWithZone:a3];
  v5 = [(PXGConcreteEngineControllerConfiguration *)self viewEnvironment];
  v6 = [(PXGConcreteEngineControllerConfiguration *)v4 initWithViewEnvironment:v5];

  v7 = [(PXGConcreteEngineControllerConfiguration *)self rootLayoutPromise];
  [(PXGConcreteEngineControllerConfiguration *)v6 setRootLayoutPromise:v7];

  v8 = [(PXGConcreteEngineControllerConfiguration *)self viewEnvironment];
  [(PXGConcreteEngineControllerConfiguration *)v6 setViewEnvironment:v8];

  [(PXGConcreteEngineControllerConfiguration *)v6 setIsVisible:[(PXGConcreteEngineControllerConfiguration *)self isVisible]];
  [(PXGConcreteEngineControllerConfiguration *)v6 setDeferReferenceSizeChanges:[(PXGConcreteEngineControllerConfiguration *)self deferReferenceSizeChanges]];
  [(PXGConcreteEngineControllerConfiguration *)self referenceSize];
  [(PXGConcreteEngineControllerConfiguration *)v6 setReferenceSize:?];
  [(PXGConcreteEngineControllerConfiguration *)self displayScale];
  [(PXGConcreteEngineControllerConfiguration *)v6 setDisplayScale:?];
  v9 = [(PXGConcreteEngineControllerConfiguration *)self backgroundColor];
  [(PXGConcreteEngineControllerConfiguration *)v6 setBackgroundColor:v9];

  v10 = [(PXGConcreteEngineControllerConfiguration *)self mediaProvider];
  [(PXGConcreteEngineControllerConfiguration *)v6 setMediaProvider:v10];

  v6->_version = [(PXGConcreteEngineControllerConfiguration *)self version];
  return v6;
}

- (PXGConcreteEngineControllerConfiguration)initWithViewEnvironment:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXGConcreteEngineControllerConfiguration;
  v6 = [(PXGConcreteEngineControllerConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_displayScale = 1.0;
    objc_storeStrong(&v6->_viewEnvironment, a3);
    v8 = [MEMORY[0x1E69DC888] blackColor];
    backgroundColor = v7->_backgroundColor;
    v7->_backgroundColor = v8;
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