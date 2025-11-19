@interface PXGHostingControllerProposedSize
- (BOOL)accept;
- (CGSize)referenceSize;
- (PXGHostingController)hostingController;
- (PXGHostingControllerProposedSize)initWithReferenceSize:(CGSize)a3 shouldPreferAcceptingReferenceSize:(BOOL)a4 hostingController:(id)a5;
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
  v7 = [(PXGHostingControllerProposedSize *)self hostingController];
  v8 = [v3 stringWithFormat:@"<%@: %p referenceSize: %@ hostingController: %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)accept
{
  v2 = self;
  v3 = [(PXGHostingControllerProposedSize *)self hostingController];
  [(PXGHostingControllerProposedSize *)v2 setHostingController:0];
  LOBYTE(v2) = [v3 layoutQueue_acceptSize:v2];

  return v2;
}

- (void)willAccept
{
  v3 = [(PXGHostingControllerProposedSize *)self hostingController];
  [v3 layoutQueue_skipFrameCount:1 forProposedSize:self];
}

- (PXGHostingControllerProposedSize)initWithReferenceSize:(CGSize)a3 shouldPreferAcceptingReferenceSize:(BOOL)a4 hostingController:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PXGHostingControllerProposedSize;
  v10 = [(PXGHostingControllerProposedSize *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_referenceSize.width = width;
    v10->_referenceSize.height = height;
    v10->_shouldPreferAcceptingReferenceSize = a4;
    objc_storeWeak(&v10->_hostingController, v9);
  }

  return v11;
}

@end