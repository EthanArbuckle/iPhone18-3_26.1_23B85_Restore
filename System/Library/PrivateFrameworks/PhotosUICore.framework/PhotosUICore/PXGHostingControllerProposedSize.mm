@interface PXGHostingControllerProposedSize
- (BOOL)accept;
- (CGSize)referenceSize;
- (PXGHostingController)hostingController;
- (PXGHostingControllerProposedSize)initWithReferenceSize:(CGSize)size shouldPreferAcceptingReferenceSize:(BOOL)referenceSize hostingController:(id)controller;
- (id)description;
- (void)willAccept;
@end

@implementation PXGHostingControllerProposedSize

- (PXGHostingController)hostingController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingController);

  return WeakRetained;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXGHostingControllerProposedSize *)self referenceSize];
  v6 = NSStringFromCGSize(v11);
  hostingController = [(PXGHostingControllerProposedSize *)self hostingController];
  v8 = [v3 stringWithFormat:@"<%@: %p referenceSize: %@ hostingController: %@>", v5, self, v6, hostingController];

  return v8;
}

- (BOOL)accept
{
  selfCopy = self;
  hostingController = [(PXGHostingControllerProposedSize *)self hostingController];
  [(PXGHostingControllerProposedSize *)selfCopy setHostingController:0];
  LOBYTE(selfCopy) = [hostingController layoutQueue_acceptSize:selfCopy];

  return selfCopy;
}

- (void)willAccept
{
  hostingController = [(PXGHostingControllerProposedSize *)self hostingController];
  [hostingController layoutQueue_skipFrameCount:1 forProposedSize:self];
}

- (PXGHostingControllerProposedSize)initWithReferenceSize:(CGSize)size shouldPreferAcceptingReferenceSize:(BOOL)referenceSize hostingController:(id)controller
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = PXGHostingControllerProposedSize;
  v10 = [(PXGHostingControllerProposedSize *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_referenceSize.width = width;
    v10->_referenceSize.height = height;
    v10->_shouldPreferAcceptingReferenceSize = referenceSize;
    objc_storeWeak(&v10->_hostingController, controllerCopy);
  }

  return v11;
}

@end