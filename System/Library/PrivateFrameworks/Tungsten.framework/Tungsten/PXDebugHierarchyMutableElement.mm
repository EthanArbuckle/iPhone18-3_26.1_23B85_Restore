@interface PXDebugHierarchyMutableElement
- (CGRect)contentsRect;
- (CGRect)frame;
- (PXDebugHierarchyMutableElement)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)prepareForReuse;
@end

@implementation PXDebugHierarchyMutableElement

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(PXDebugHierarchyMutableElement *)self frame];
  [v4 setFrame:?];
  [(PXDebugHierarchyMutableElement *)self zPosition];
  [v4 setZPosition:?];
  [(PXDebugHierarchyMutableElement *)self alpha];
  [v4 setAlpha:?];
  [v4 setPreviewImage:{-[PXDebugHierarchyMutableElement previewImage](self, "previewImage")}];
  [(PXDebugHierarchyMutableElement *)self contentsRect];
  [v4 setContentsRect:?];
  v5 = [(PXDebugHierarchyMutableElement *)self contentsGravity];
  [v4 setContentsGravity:v5];

  [v4 setBackgroundColor:{-[PXDebugHierarchyMutableElement backgroundColor](self, "backgroundColor")}];
  v6 = [(PXDebugHierarchyMutableElement *)self name];
  [v4 setName:v6];

  [v4 setCanHaveChildren:{-[PXDebugHierarchyMutableElement canHaveChildren](self, "canHaveChildren")}];
  v4[2] = self->_identifier;
  [v4 setParentIdentifier:{-[PXDebugHierarchyMutableElement parentIdentifier](self, "parentIdentifier")}];
  return v4;
}

- (void)prepareForReuse
{
  [(PXDebugHierarchyMutableElement *)self setFrame:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  [(PXDebugHierarchyMutableElement *)self setZPosition:0.0];
  [(PXDebugHierarchyMutableElement *)self setAlpha:1.0];
  [(PXDebugHierarchyMutableElement *)self setPreviewImage:0];
  [(PXDebugHierarchyMutableElement *)self setContentsRect:*MEMORY[0x277D3CFC0], *(MEMORY[0x277D3CFC0] + 8), *(MEMORY[0x277D3CFC0] + 16), *(MEMORY[0x277D3CFC0] + 24)];
  [(PXDebugHierarchyMutableElement *)self setContentsGravity:*MEMORY[0x277CDA720]];
  [(PXDebugHierarchyMutableElement *)self setBackgroundColor:0];
  [(PXDebugHierarchyMutableElement *)self setName:0];
  [(PXDebugHierarchyMutableElement *)self setCanHaveChildren:0];
  self->_identifier = ++prepareForReuse_uniqueIdentifier;

  [(PXDebugHierarchyMutableElement *)self setParentIdentifier:0];
}

- (PXDebugHierarchyMutableElement)init
{
  v5.receiver = self;
  v5.super_class = PXDebugHierarchyMutableElement;
  v2 = [(PXDebugHierarchyMutableElement *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXDebugHierarchyMutableElement *)v2 prepareForReuse];
  }

  return v3;
}

@end